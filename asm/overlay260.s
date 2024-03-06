    .include "macros/function.inc"
	.include "overlay260.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy260_21b2f80
ovy260_21b2f80: ; 0x021B2F80
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _021B2FCC ; =0x00000106
	add r4, r2, #0
	add r6, r1, #0
	add r7, r3, #0
	bl sub_0203CE0C
	ldr r0, [r4, #8]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _021B2FAC
	cmp r0, #1
	bne _021B2FBC
	add r2, r4, #0
	ldr r4, _021B2FD0 ; =0x021BFCE4
	add r0, r5, #0
	ldr r4, [r4]
	add r1, r6, #0
	add r3, r7, #0
	blx r4
	pop {r3, r4, r5, r6, r7, pc}
_021B2FAC:
	add r2, r4, #0
	ldr r4, _021B2FD4 ; =0x021BFCF0
	add r0, r5, #0
	ldr r4, [r4]
	add r1, r6, #0
	add r3, r7, #0
	blx r4
	pop {r3, r4, r5, r6, r7, pc}
_021B2FBC:
	ldr r0, _021B2FD8 ; =0x021BFE60
	ldr r2, _021B2FDC ; =0x021BFE64
	mov r1, #0
	bl sub_0203CB80
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021B2FCC: .word 0x00000106
_021B2FD0: .word 0x021BFCE4
_021B2FD4: .word 0x021BFCF0
_021B2FD8: .word 0x021BFE60
_021B2FDC: .word 0x021BFE64
	thumb_func_end ovy260_21b2f80

	thumb_func_start ovy260_21b2fe0
ovy260_21b2fe0: ; 0x021B2FE0
	push {r3, r4, r5, lr}
	ldr r5, [r2, #8]
	ldr r5, [r5, #8]
	cmp r5, #0
	beq _021B2FF8
	cmp r5, #1
	bne _021B2FFC
	ldr r4, _021B3014 ; =0x021BFCE4
_021B2FF0:
	ldr r4, [r4, #8]
	blx r4
	add r4, r0, #0
	b _021B3006
_021B2FF8:
	ldr r4, _021B3018 ; =0x021BFCF0
	b _021B2FF0
_021B2FFC:
	ldr r0, _021B301C ; =0x021BFE60
	ldr r2, _021B3020 ; =0x021BFE64
	mov r1, #0
	bl sub_0203CB80
_021B3006:
	bl sub_02006280
	ldr r0, _021B3024 ; =0x00000106
	bl sub_0203CDC8
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021B3014: .word 0x021BFCE4
_021B3018: .word 0x021BFCF0
_021B301C: .word 0x021BFE60
_021B3020: .word 0x021BFE64
_021B3024: .word 0x00000106
	thumb_func_end ovy260_21b2fe0

	thumb_func_start ovy260_21b3028
ovy260_21b3028: ; 0x021B3028
	push {r4, lr}
	ldr r4, [r2, #8]
	ldr r4, [r4, #8]
	cmp r4, #0
	beq _021B303E
	cmp r4, #1
	bne _021B3046
	ldr r4, _021B3054 ; =0x021BFCE4
	ldr r4, [r4, #4]
	blx r4
	pop {r4, pc}
_021B303E:
	ldr r4, _021B3058 ; =0x021BFCF0
	ldr r4, [r4, #4]
	blx r4
	pop {r4, pc}
_021B3046:
	ldr r0, _021B305C ; =0x021BFE60
	ldr r2, _021B3060 ; =0x021BFE64
	mov r1, #0
	bl sub_0203CB80
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
_021B3054: .word 0x021BFCE4
_021B3058: .word 0x021BFCF0
_021B305C: .word 0x021BFE60
_021B3060: .word 0x021BFE64
	thumb_func_end ovy260_21b3028

	thumb_func_start ovy260_21b3064
ovy260_21b3064: ; 0x021B3064
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, _021B319C ; =0x0000008B
	add r5, r2, #0
	bl sub_0203CE0C
	ldr r0, _021B31A0 ; =0x000000BD
	bl sub_0203CE0C
	mov r2, #0x35
	mov r0, #1
	mov r1, #0x57
	lsl r2, r2, #0xc
	mov r7, #0x57
	bl sub_0203A15C
	mov r6, #0x57
	add r6, #0xa9
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0x57
	bl sub_0203AAEC
	add r4, r0, #0
	mov r1, #0
	add r2, r6, #0
	blx MI_CpuFill8
	str r5, [r4, #0x40]
	mov r0, #1
	mov r1, #0x57
	bl sub_021C2560
	str r0, [r4]
	bl sub_021C2668
	mov r1, #2
	mov r2, #0x57
	bl sub_021C279C
	str r0, [r4, #4]
	ldr r0, [r5, #0x14]
	add r1, r4, #0
	bl ovy260_21b5504
	str r7, [sp]
	mov r0, #0x17
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_02022D58
	str r0, [r4, #8]
	mov r0, #0x57
	bl sub_02021998
	str r0, [r4, #0xc]
	ldr r2, _021B31A4 ; =0x000001A1
	mov r0, #0
	mov r1, #2
	mov r3, #0x57
	bl sub_0204875C
	str r0, [r4, #0x10]
	mov r0, #8
	mov r1, #0x40
	mov r2, #0x57
	bl sub_020241E4
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x40]
	ldr r1, [r5, #8]
	ldr r0, [r0, #0x3c]
	ldr r1, [r1]
	ldr r2, [r5, #0x1c]
	mov r3, #0x57
	bl ovy260_21b8cc8
	str r0, [r4, #0x30]
	ldr r0, [r4, #0xc]
	mov r1, #0xf
	str r0, [sp]
	ldr r0, [r4, #8]
	mov r2, #0xe
	str r0, [sp, #4]
	mov r0, #0
	mov r3, #0xa
	str r7, [sp, #8]
	bl sub_021C568C
	str r0, [r4, #0x24]
	ldr r1, _021B31A8 ; =ovy260_21b32f0
	add r0, r4, #0
	mov r2, #0x57
	bl sub_021C5C10
	str r0, [r4, #0x34]
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x57
	bl sub_021C5C10
	str r0, [r4, #0x38]
	ldr r0, [r4]
	bl sub_021C2668
	ldr r1, [r4, #4]
	mov r2, #0x57
	bl sub_021C4E44
	str r0, [r4, #0x20]
	mov r1, #0
	bl sub_021C4F30
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq _021B317A
	ldr r0, [r5]
	cmp r0, #0
	bne _021B315C
	add r0, r4, #0
	mov r1, #0
	b _021B3176
_021B315C:
	cmp r0, #1
	bne _021B317A
	cmp r1, #1
	bne _021B3172
	ldr r1, [r5, #8]
	ldr r2, [r5, #0x2c]
	ldr r0, [r5, #0x10]
	ldr r1, [r1, #4]
	ldr r2, [r2]
	bl ovy260_21b5390
_021B3172:
	add r0, r4, #0
	mov r1, #1
_021B3176:
	bl ovy260_21b5234
_021B317A:
	ldr r0, [r4, #0x30]
	mov r1, #1
	bl ovy260_21bc034
	ldr r0, [r5, #0xc]
	cmp r0, #1
	bne _021B3194
	ldr r1, [r4, #0x40]
	ldr r0, [r4, #0x30]
	ldr r1, [r1, #0x40]
	ldr r1, [r1]
	bl sub_021B93D8
_021B3194:
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021B319C: .word 0x0000008B
_021B31A0: .word 0x000000BD
_021B31A4: .word 0x000001A1
_021B31A8: .word ovy260_21b32f0
	thumb_func_end ovy260_21b3064

	thumb_func_start ovy260_21b31ac
ovy260_21b31ac: ; 0x021B31AC
	push {r3, r4, r5, lr}
	add r4, r3, #0
	add r5, r0, #0
	ldr r0, [r4, #0x30]
	mov r1, #0
	bl ovy260_21bc034
	ldr r0, [r4, #0x20]
	bl sub_021C4F14
	ldr r0, [r4, #0x38]
	bl sub_021C5C4C
	ldr r0, [r4, #0x34]
	bl sub_021C5C4C
	ldr r0, [r4, #0x24]
	bl sub_021C5750
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _021B31DC
	bl ovy260_21b8da4
_021B31DC:
	add r0, r4, #0
	bl ovy260_21b52b8
	add r0, r4, #0
	bl ovy260_21b5208
	add r0, r4, #0
	bl ovy260_21b5434
	ldr r0, [r4, #0x14]
	bl sub_02024274
	ldr r0, [r4, #0x10]
	bl sub_020487D4
	ldr r0, [r4, #0xc]
	bl sub_02021A18
	ldr r0, [r4, #8]
	bl sub_02022DA8
	ldr r0, [r4, #4]
	bl sub_021C2988
	ldr r0, [r4]
	bl sub_021C2600
	add r0, r5, #0
	bl sub_0203AB10
	mov r0, #0x57
	bl sub_0203A1D0
	ldr r0, _021B3230 ; =0x000000BD
	bl sub_0203CDC8
	ldr r0, _021B3234 ; =0x0000008B
	bl sub_0203CDC8
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_021B3230: .word 0x000000BD
_021B3234: .word 0x0000008B
	thumb_func_end ovy260_21b31ac

	thumb_func_start ovy260_21b3238
ovy260_21b3238: ; 0x021B3238
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r0, [r5]
	add r4, r3, #0
	cmp r0, #4
	bhi _021B32B4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021B3250: ; jump table
	.short _021B325A - _021B3250 - 2 ; case 0
	.short _021B326C - _021B3250 - 2 ; case 1
	.short _021B3278 - _021B3250 - 2 ; case 2
	.short _021B3298 - _021B3250 - 2 ; case 3
	.short _021B32A8 - _021B3250 - 2 ; case 4
_021B325A:
	mov r0, #3
	mov r1, #0x10
	mov r2, #0
	mov r3, #0
	bl sub_0204E060
	mov r0, #1
_021B3268:
	str r0, [r5]
	b _021B32B4
_021B326C:
	bl sub_0204E0E0
	cmp r0, #0
	bne _021B32B4
	mov r0, #2
	b _021B3268
_021B3278:
	ldr r0, [r4, #0x34]
	bl sub_021C5C54
	ldr r0, [r4, #0x34]
	bl sub_021C5C64
	cmp r0, #0
	beq _021B328C
	mov r0, #3
	str r0, [r5]
_021B328C:
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _021B32B4
	bl sub_021B8DD4
	b _021B32B4
_021B3298:
	mov r0, #3
	mov r1, #0
	mov r2, #0x10
	mov r3, #0
	bl sub_0204E060
	mov r0, #4
	b _021B3268
_021B32A8:
	bl sub_0204E0E0
	cmp r0, #0
	bne _021B32B4
	mov r0, #1
	pop {r3, r4, r5, pc}
_021B32B4:
	ldr r0, [r4]
	bl sub_021C2654
	ldr r0, [r4, #0xc]
	bl sub_02021A3C
	ldr r0, [r4, #0x24]
	bl sub_021C57A4
	ldr r0, [r4, #0x20]
	bl sub_021C4F2C
	ldr r0, [r4, #4]
	bl sub_021C2AA0
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _021B32DE
	ldr r1, [r4, #0xc]
	bl sub_021C35E4
_021B32DE:
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _021B32EA
	ldr r1, [r4, #0xc]
	bl sub_021C4898
_021B32EA:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy260_21b3238

	thumb_func_start ovy260_21b32f0
ovy260_21b32f0: ; 0x021B32F0
	push {r3, r4, r5, lr}
	ldr r4, [r2, #0x40]
	add r5, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #3
	bhi _021B3354
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021B3308: ; jump table
	.short _021B3310 - _021B3308 - 2 ; case 0
	.short _021B331E - _021B3308 - 2 ; case 1
	.short _021B3318 - _021B3308 - 2 ; case 2
	.short _021B333C - _021B3308 - 2 ; case 3
_021B3310:
	ldr r1, _021B3358 ; =ovy260_21b336c
	bl sub_021C5C74
	pop {r3, r4, r5, pc}
_021B3318:
	ldr r0, [r2, #0x30]
	bl ovy260_21b9274
_021B331E:
	ldr r0, [r4]
	cmp r0, #0
	bne _021B332E
	ldr r1, _021B335C ; =ovy260_21b3f24
	add r0, r5, #0
	bl sub_021C5C74
	pop {r3, r4, r5, pc}
_021B332E:
	cmp r0, #1
	bne _021B3354
	ldr r1, _021B3360 ; =ovy260_21b4c10
	add r0, r5, #0
	bl sub_021C5C74
	pop {r3, r4, r5, pc}
_021B333C:
	ldr r1, [r4]
	cmp r1, #0
	bne _021B334A
	ldr r1, _021B3364 ; =ovy260_21b42d0
	bl sub_021C5C74
	pop {r3, r4, r5, pc}
_021B334A:
	cmp r1, #1
	bne _021B3354
	ldr r1, _021B3368 ; =ovy260_21b4e6c
	bl sub_021C5C74
_021B3354:
	pop {r3, r4, r5, pc}
	nop
_021B3358: .word ovy260_21b336c
_021B335C: .word ovy260_21b3f24
_021B3360: .word ovy260_21b4c10
_021B3364: .word ovy260_21b42d0
_021B3368: .word ovy260_21b4e6c
	thumb_func_end ovy260_21b32f0

	thumb_func_start ovy260_21b336c
ovy260_21b336c: ; 0x021B336C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	str r0, [sp]
	add r5, r2, #0
	ldr r0, [r4]
	ldr r6, [r5, #0x40]
	cmp r0, #7
	bls _021B337E
	b _021B3486
_021B337E:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021B338A: ; jump table
	.short _021B339A - _021B338A - 2 ; case 0
	.short _021B33A8 - _021B338A - 2 ; case 1
	.short _021B33C2 - _021B338A - 2 ; case 2
	.short _021B33D0 - _021B338A - 2 ; case 3
	.short _021B341A - _021B338A - 2 ; case 4
	.short _021B3434 - _021B338A - 2 ; case 5
	.short _021B3442 - _021B338A - 2 ; case 6
	.short _021B3476 - _021B338A - 2 ; case 7
_021B339A:
	ldr r0, [r5, #0x20]
	mov r1, #0
	bl sub_021C4F30
	mov r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021B33A8:
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x10]
	mov r2, #0x19
	mov r3, #1
	bl sub_021C5888
	mov r0, #7
	str r0, [r4]
	ldr r0, [sp]
	mov r1, #2
	bl sub_021C5C88
	pop {r3, r4, r5, r6, r7, pc}
_021B33C2:
	add r0, r5, #0
	mov r1, #1
	bl ovy260_21b53bc
	mov r0, #3
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021B33D0:
	add r0, r5, #0
	bl ovy260_21b5448
	add r7, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r7, r0
	beq _021B3486
	add r0, r5, #0
	bl ovy260_21b5434
	cmp r7, #0
	beq _021B33F4
	cmp r7, #1
	beq _021B3402
	cmp r7, #2
	beq _021B3410
	pop {r3, r4, r5, r6, r7, pc}
_021B33F4:
	mov r0, #1
	str r0, [r6]
	ldr r0, [sp]
	ldr r1, _021B3488 ; =ovy260_21b45a4
	bl sub_021C5C74
	pop {r3, r4, r5, r6, r7, pc}
_021B3402:
	mov r0, #0
	str r0, [r6]
	ldr r0, [sp]
	ldr r1, _021B348C ; =ovy260_21b3494
	bl sub_021C5C74
	pop {r3, r4, r5, r6, r7, pc}
_021B3410:
	mov r0, #3
	str r0, [r6]
	mov r0, #4
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021B341A:
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x10]
	mov r2, #0x1e
	mov r3, #1
	bl sub_021C5888
	mov r0, #7
	str r0, [r4]
	ldr r0, [sp]
	mov r1, #5
	bl sub_021C5C88
	pop {r3, r4, r5, r6, r7, pc}
_021B3434:
	add r0, r5, #0
	mov r1, #0
	bl ovy260_21b53bc
	mov r0, #6
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021B3442:
	add r0, r5, #0
	bl ovy260_21b5448
	add r7, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r7, r0
	beq _021B3486
	add r0, r5, #0
	bl ovy260_21b5434
	cmp r7, #0
	beq _021B3462
	cmp r7, #1
	beq _021B3470
	pop {r3, r4, r5, r6, r7, pc}
_021B3462:
	mov r0, #0
	str r0, [r6, #4]
	ldr r0, [sp]
	ldr r1, _021B3490 ; =ovy260_21b5038
	bl sub_021C5C74
	pop {r3, r4, r5, r6, r7, pc}
_021B3470:
	mov r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021B3476:
	ldr r0, [r5, #0x24]
	bl sub_021C5A1C
	cmp r0, #0
	beq _021B3486
	ldr r0, [sp]
	bl sub_021C5C8C
_021B3486:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021B3488: .word ovy260_21b45a4
_021B348C: .word ovy260_21b3494
_021B3490: .word ovy260_21b5038
	thumb_func_end ovy260_21b336c

	thumb_func_start ovy260_21b3494
ovy260_21b3494: ; 0x021B3494
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r2, #0
	ldr r2, [r5]
	add r6, r0, #0
	ldr r1, [r4, #0x40]
	cmp r2, #0xe
	bhi _021B3590
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021B34B0: ; jump table
	.short _021B34CE - _021B34B0 - 2 ; case 0
	.short _021B34EE - _021B34B0 - 2 ; case 1
	.short _021B3508 - _021B34B0 - 2 ; case 2
	.short _021B3522 - _021B34B0 - 2 ; case 3
	.short _021B353A - _021B34B0 - 2 ; case 4
	.short _021B35AC - _021B34B0 - 2 ; case 5
	.short _021B35C0 - _021B34B0 - 2 ; case 6
	.short _021B36A6 - _021B34B0 - 2 ; case 7
	.short _021B36A6 - _021B34B0 - 2 ; case 8
	.short _021B35DA - _021B34B0 - 2 ; case 9
	.short _021B3614 - _021B34B0 - 2 ; case 10
	.short _021B366C - _021B34B0 - 2 ; case 11
	.short _021B3686 - _021B34B0 - 2 ; case 12
	.short _021B368E - _021B34B0 - 2 ; case 13
	.short _021B3696 - _021B34B0 - 2 ; case 14
_021B34CE:
	ldr r0, [r1, #8]
	ldr r0, [r0]
	bl sub_02017934
	bl sub_02009B50
	bl sub_020099F4
	cmp r0, #0
	beq _021B34E8
	mov r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B34E8:
	mov r0, #6
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B34EE:
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x10]
	mov r2, #0x29
	mov r3, #1
	bl sub_021C5888
	mov r0, #0xe
	str r0, [r5]
	add r0, r6, #0
	mov r1, #2
	bl sub_021C5C88
	pop {r3, r4, r5, r6, r7, pc}
_021B3508:
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x10]
	mov r2, #0x18
	mov r3, #2
	bl sub_021C5888
	mov r0, #0xe
	str r0, [r5]
	add r0, r6, #0
	mov r1, #3
	bl sub_021C5C88
	pop {r3, r4, r5, r6, r7, pc}
_021B3522:
	ldr r0, [r1, #0x30]
	mov r1, #0
	mov r2, #8
	blx MI_CpuFill8
	ldr r0, [r4, #0x30]
	mov r1, #0x57
	bl ovy260_21bb758
	mov r0, #4
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B353A:
	ldr r0, [r4, #0x30]
	bl ovy260_21bb7a0
	cmp r0, #3
	bhi _021B3590
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021B3550: ; jump table
	.short _021B36A6 - _021B3550 - 2 ; case 0
	.short _021B3558 - _021B3550 - 2 ; case 1
	.short _021B357E - _021B3550 - 2 ; case 2
	.short _021B3568 - _021B3550 - 2 ; case 3
_021B3558:
	ldr r1, [r4, #0x40]
	ldr r0, [r4, #0x30]
	ldr r1, [r1, #0x30]
	bl sub_021BB8C4
	mov r0, #5
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B3568:
	ldr r0, [r4, #0x40]
	mov r1, #0
	ldr r0, [r0, #0x30]
	mov r2, #8
	blx MI_CpuFill8
	ldr r1, _021B36A8 ; =ovy260_21b5010
	add r0, r6, #0
	bl sub_021C5C74
	pop {r3, r4, r5, r6, r7, pc}
_021B357E:
	ldr r0, [r4, #0x30]
	mov r1, #0
	mov r2, #0
	bl ovy260_21b8e08
	cmp r0, #1
	beq _021B359C
	cmp r0, #2
	beq _021B3592
_021B3590:
	b _021B36A6
_021B3592:
	ldr r1, _021B36A8 ; =ovy260_21b5010
	add r0, r6, #0
	bl sub_021C5C74
	pop {r3, r4, r5, r6, r7, pc}
_021B359C:
	add r0, r4, #0
	bl ovy260_21b5248
	ldr r1, _021B36AC ; =ovy260_21b336c
	add r0, r6, #0
	bl sub_021C5C74
	pop {r3, r4, r5, r6, r7, pc}
_021B35AC:
	ldr r0, [r1, #0x30]
	ldrb r0, [r0, #6]
	cmp r0, #0
	beq _021B35BA
	mov r0, #9
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B35BA:
	mov r0, #6
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B35C0:
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x10]
	mov r2, #0x37
	mov r3, #1
	bl sub_021C5888
	mov r0, #0xe
	str r0, [r5]
	add r0, r6, #0
	mov r1, #0xc
	bl sub_021C5C88
	pop {r3, r4, r5, r6, r7, pc}
_021B35DA:
	ldr r1, _021B36B0 ; =ovy260_21b505c
	add r0, r4, #0
	bl ovy260_21b55f4
	mov r0, #0xa
	str r0, [r5]
	ldr r0, [r4, #0x30]
	mov r1, #0
	mov r2, #0
	bl ovy260_21b8e08
	cmp r0, #1
	beq _021B35FA
	cmp r0, #2
	beq _021B360A
	pop {r3, r4, r5, r6, r7, pc}
_021B35FA:
	add r0, r4, #0
	bl ovy260_21b5248
	ldr r1, _021B36AC ; =ovy260_21b336c
	add r0, r6, #0
	bl sub_021C5C74
	pop {r3, r4, r5, r6, r7, pc}
_021B360A:
	ldr r1, _021B36A8 ; =ovy260_21b5010
	add r0, r6, #0
	bl sub_021C5C74
	pop {r3, r4, r5, r6, r7, pc}
_021B3614:
	add r0, r4, #0
	bl ovy260_21b5608
	add r7, r0, #0
	bne _021B3624
	mov r0, #0xd
_021B3620:
	str r0, [r5]
	b _021B3638
_021B3624:
	cmp r7, #1
	bne _021B362C
	mov r0, #0xb
	b _021B3620
_021B362C:
	cmp r7, #3
	bne _021B3638
	ldr r1, _021B36A8 ; =ovy260_21b5010
	add r0, r6, #0
	bl sub_021C5C74
_021B3638:
	ldr r0, _021B36B4 ; =0x0000FFFF
	cmp r7, r0
	beq _021B36A6
	ldr r0, [r4, #0x30]
	mov r1, #0
	mov r2, #0
	bl ovy260_21b8e08
	cmp r0, #1
	beq _021B3652
	cmp r0, #2
	beq _021B3662
	pop {r3, r4, r5, r6, r7, pc}
_021B3652:
	add r0, r4, #0
	bl ovy260_21b5248
	ldr r1, _021B36AC ; =ovy260_21b336c
	add r0, r6, #0
	bl sub_021C5C74
	pop {r3, r4, r5, r6, r7, pc}
_021B3662:
	ldr r1, _021B36A8 ; =ovy260_21b5010
	add r0, r6, #0
	bl sub_021C5C74
	pop {r3, r4, r5, r6, r7, pc}
_021B366C:
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x10]
	mov r2, #0x78
	mov r3, #1
	bl sub_021C5888
	mov r0, #0xe
	str r0, [r5]
	add r0, r6, #0
	mov r1, #0xc
	bl sub_021C5C88
	pop {r3, r4, r5, r6, r7, pc}
_021B3686:
	ldr r1, _021B36B8 ; =ovy260_21b5038
	bl sub_021C5C74
	pop {r3, r4, r5, r6, r7, pc}
_021B368E:
	ldr r1, _021B36BC ; =ovy260_21b36c0
	bl sub_021C5C74
	pop {r3, r4, r5, r6, r7, pc}
_021B3696:
	ldr r0, [r4, #0x24]
	bl sub_021C5A1C
	cmp r0, #0
	beq _021B36A6
	add r0, r6, #0
	bl sub_021C5C8C
_021B36A6:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021B36A8: .word ovy260_21b5010
_021B36AC: .word ovy260_21b336c
_021B36B0: .word ovy260_21b505c
_021B36B4: .word 0x0000FFFF
_021B36B8: .word ovy260_21b5038
_021B36BC: .word ovy260_21b36c0
	thumb_func_end ovy260_21b3494

	thumb_func_start ovy260_21b36c0
ovy260_21b36c0: ; 0x021B36C0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r1, [r5]
	add r4, r2, #0
	add r7, r0, #0
	ldr r6, [r4, #0x40]
	cmp r1, #0xb
	bhi _021B376C
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021B36DC: ; jump table
	.short _021B36F4 - _021B36DC - 2 ; case 0
	.short _021B370E - _021B36DC - 2 ; case 1
	.short _021B372A - _021B36DC - 2 ; case 2
	.short _021B37AC - _021B36DC - 2 ; case 3
	.short _021B37C8 - _021B36DC - 2 ; case 4
	.short _021B3818 - _021B36DC - 2 ; case 5
	.short _021B383C - _021B36DC - 2 ; case 6
	.short _021B3842 - _021B36DC - 2 ; case 7
	.short _021B3858 - _021B36DC - 2 ; case 8
	.short _021B3866 - _021B36DC - 2 ; case 9
	.short _021B3876 - _021B36DC - 2 ; case 10
	.short _021B387E - _021B36DC - 2 ; case 11
_021B36F4:
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x10]
	mov r2, #0x18
	mov r3, #2
	bl sub_021C5888
	add r0, r7, #0
	mov r1, #1
	bl sub_021C5C88
	mov r0, #0xb
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B370E:
	ldr r0, [r6, #0x20]
	ldr r0, [r0]
	cmp r0, #0
	bne _021B376C
	mov r1, #0
	ldr r0, [r4, #0x30]
	ldr r3, [r6, #0x38]
	mvn r1, r1
	mov r2, #0
	bl ovy260_21ba3b4
	mov r0, #2
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B372A:
	ldr r0, [r4, #0x30]
	bl ovy260_21ba488
	str r0, [sp]
	cmp r0, #1
	bne _021B3766
	ldr r0, [r4, #0x40]
	ldr r1, _021B3890 ; =0x00000708
	ldr r0, [r0, #0x20]
	add r2, r4, #0
	str r1, [r0]
	ldr r1, [r6, #8]
	ldr r0, [r6, #0x10]
	ldr r1, [r1, #4]
	bl ovy260_21b52d8
	add r1, r4, #0
	add r1, #0xf0
	str r0, [r1]
	ldr r0, [r6, #0x14]
	add r1, r4, #0
	bl ovy260_21b5590
	ldr r2, [r4, #0x40]
	ldr r0, [r2, #0x38]
	ldr r1, [r0, #0x54]
	ldr r0, [r2, #0x28]
	str r1, [r0]
	mov r0, #3
	str r0, [r5]
_021B3766:
	ldr r0, [sp]
	cmp r0, #0
	bne _021B376E
_021B376C:
	b _021B388E
_021B376E:
	ldr r0, [r4, #0x30]
	mov r1, #0
	mov r2, #0
	bl ovy260_21b8e08
	cmp r0, #1
	beq _021B3782
	cmp r0, #2
	beq _021B379A
	pop {r3, r4, r5, r6, r7, pc}
_021B3782:
	add r0, r4, #0
	bl ovy260_21b5248
	ldr r1, _021B3894 ; =ovy260_21b336c
	add r0, r7, #0
	bl sub_021C5C74
	ldr r0, [r4, #0x40]
	ldr r1, _021B3890 ; =0x00000708
	ldr r0, [r0, #0x20]
	str r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
_021B379A:
	ldr r1, _021B3898 ; =ovy260_21b5010
	add r0, r7, #0
	bl sub_021C5C74
	ldr r0, [r4, #0x40]
	ldr r1, _021B3890 ; =0x00000708
	ldr r0, [r0, #0x20]
	str r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
_021B37AC:
	ldr r0, [r4, #0x30]
	bl sub_021BB1B0
	cmp r0, #0
	bne _021B37C2
	ldr r0, [r4, #0x30]
	bl sub_021BAFC0
	mov r0, #4
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B37C2:
	mov r0, #5
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B37C8:
	ldr r0, [r4, #0x30]
	bl ovy260_21bafd0
	cmp r0, #1
	bne _021B37D6
	mov r1, #1
	str r1, [r5]
_021B37D6:
	cmp r0, #0
	beq _021B388E
	ldr r0, [r4, #0x30]
	mov r1, #0
	mov r2, #0
	bl ovy260_21b8e08
	cmp r0, #1
	beq _021B37EE
	cmp r0, #2
	beq _021B3806
	pop {r3, r4, r5, r6, r7, pc}
_021B37EE:
	add r0, r4, #0
	bl ovy260_21b5248
	ldr r1, _021B3894 ; =ovy260_21b336c
	add r0, r7, #0
	bl sub_021C5C74
	ldr r0, [r4, #0x40]
	ldr r1, _021B3890 ; =0x00000708
	ldr r0, [r0, #0x20]
	str r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
_021B3806:
	ldr r1, _021B3898 ; =ovy260_21b5010
	add r0, r7, #0
	bl sub_021C5C74
	ldr r0, [r4, #0x40]
	ldr r1, _021B3890 ; =0x00000708
	ldr r0, [r0, #0x20]
	str r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
_021B3818:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _021B3822
	mov r0, #8
	b _021B3832
_021B3822:
	add r0, r4, #0
	add r0, #0xf0
	ldr r0, [r0]
	cmp r0, #0
	beq _021B3830
	mov r0, #6
	b _021B3832
_021B3830:
	mov r0, #0xa
_021B3832:
	str r0, [r5]
	mov r0, #0
	add r4, #0xf0
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021B383C:
	mov r0, #7
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B3842:
	add r0, r4, #0
	bl sub_021B5228
	cmp r0, #0
	beq _021B388E
	add r0, r4, #0
	bl ovy260_21b5208
	mov r0, #8
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B3858:
	add r0, r4, #0
	mov r1, #0
	bl ovy260_21b5110
	mov r0, #9
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B3866:
	add r0, r4, #0
	bl sub_021B521C
	cmp r0, #0
	beq _021B388E
	mov r0, #0xa
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B3876:
	ldr r1, _021B389C ; =ovy260_21b38a0
	bl sub_021C5C74
	pop {r3, r4, r5, r6, r7, pc}
_021B387E:
	ldr r0, [r4, #0x24]
	bl sub_021C5A1C
	cmp r0, #0
	beq _021B388E
	add r0, r7, #0
	bl sub_021C5C8C
_021B388E:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021B3890: .word 0x00000708
_021B3894: .word ovy260_21b336c
_021B3898: .word ovy260_21b5010
_021B389C: .word ovy260_21b38a0
	thumb_func_end ovy260_21b36c0

	thumb_func_start ovy260_21b38a0
ovy260_21b38a0: ; 0x021B38A0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r4, r2, #0
	str r0, [sp, #8]
	ldr r0, [r4, #0x40]
	add r5, r1, #0
	str r0, [sp, #0x14]
	ldr r0, [r5]
	mov r6, #0
	mov r1, #0
	cmp r0, #2
	blt _021B38BE
	cmp r0, #8
	bge _021B38BE
	mov r1, #1
_021B38BE:
	cmp r0, #6
	blt _021B38C6
	cmp r0, #7
	ble _021B38CA
_021B38C6:
	mov r2, #1
	b _021B38CC
_021B38CA:
	mov r2, #0
_021B38CC:
	add r0, r4, #0
	bl ovy260_21b56c0
	cmp r0, #3
	bne _021B38DE
	mov r0, #0x16
	add sp, #0x34
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_021B38DE:
	ldr r1, [r5]
	cmp r1, #0x1e
	bls _021B38E6
	b _021B3E8A
_021B38E6:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021B38F2: ; jump table
	.short _021B3930 - _021B38F2 - 2 ; case 0
	.short _021B3952 - _021B38F2 - 2 ; case 1
	.short _021B39B0 - _021B38F2 - 2 ; case 2
	.short _021B3A10 - _021B38F2 - 2 ; case 3
	.short _021B3A34 - _021B38F2 - 2 ; case 4
	.short _021B3B32 - _021B38F2 - 2 ; case 5
	.short _021B3B54 - _021B38F2 - 2 ; case 6
	.short _021B3B64 - _021B38F2 - 2 ; case 7
	.short _021B3BAC - _021B38F2 - 2 ; case 8
	.short _021B3BC6 - _021B38F2 - 2 ; case 9
	.short _021B3BE0 - _021B38F2 - 2 ; case 10
	.short _021B3BF4 - _021B38F2 - 2 ; case 11
	.short _021B3C04 - _021B38F2 - 2 ; case 12
	.short _021B3C2C - _021B38F2 - 2 ; case 13
	.short _021B3C62 - _021B38F2 - 2 ; case 14
	.short _021B3C8C - _021B38F2 - 2 ; case 15
	.short _021B3CB0 - _021B38F2 - 2 ; case 16
	.short _021B3CF4 - _021B38F2 - 2 ; case 17
	.short _021B3D4E - _021B38F2 - 2 ; case 18
	.short _021B3D56 - _021B38F2 - 2 ; case 19
	.short _021B3D74 - _021B38F2 - 2 ; case 20
	.short _021B3DA2 - _021B38F2 - 2 ; case 21
	.short _021B3DCC - _021B38F2 - 2 ; case 22
	.short _021B3DE2 - _021B38F2 - 2 ; case 23
	.short _021B3DEE - _021B38F2 - 2 ; case 24
	.short _021B3E18 - _021B38F2 - 2 ; case 25
	.short _021B3E2E - _021B38F2 - 2 ; case 26
	.short _021B3E3A - _021B38F2 - 2 ; case 27
	.short _021B3E64 - _021B38F2 - 2 ; case 28
	.short _021B3E72 - _021B38F2 - 2 ; case 29
	.short _021B3E7A - _021B38F2 - 2 ; case 30
_021B3930:
	add r0, r4, #0
	mov r1, #0
	add r0, #0xe4
	str r1, [r0]
	ldr r0, [r4, #0x20]
	mov r1, #1
	mov r7, #1
	bl sub_021C4F30
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x10]
	mov r2, #0x21
	mov r3, #0
	bl sub_021C5888
_021B394E:
	str r7, [r5]
	b _021B3E8A
_021B3952:
	ldr r0, [r4, #0x30]
	mov r1, #0
	mov r2, #0
	mov r7, #0
	bl ovy260_21b8e08
	cmp r0, #1
	beq _021B3968
	cmp r0, #2
	beq _021B397C
	b _021B3990
_021B3968:
	ldr r0, [r4, #0x20]
	add r1, r7, #0
	bl sub_021C4F30
	ldr r0, [sp, #8]
	ldr r1, _021B3C70 ; =ovy260_21b336c
	bl sub_021C5C74
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
_021B397C:
	ldr r0, [r4, #0x20]
	add r1, r7, #0
	bl sub_021C4F30
	ldr r0, [sp, #8]
	ldr r1, _021B3C74 ; =ovy260_21b5010
	bl sub_021C5C74
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
_021B3990:
	add r7, sp, #0x24
	add r0, r7, #0
	add r1, r4, #0
	bl ovy260_21b545c
	str r7, [sp]
	ldr r3, [sp, #0x14]
	ldr r0, [r4, #0x30]
	ldr r3, [r3, #8]
	mov r1, #2
	ldr r3, [r3, #4]
	mov r2, #1
	mov r7, #2
	bl ovy260_21b8fd8
	b _021B394E
_021B39B0:
	ldr r0, [r4, #0x30]
	mov r1, #0
	mov r2, #0
	mov r7, #0
	bl ovy260_21b8e08
	cmp r0, #1
	beq _021B39C6
	cmp r0, #2
	beq _021B39E0
	b _021B39F4
_021B39C6:
	ldr r0, [r4, #0x20]
	add r1, r7, #0
	bl sub_021C4F30
	ldr r0, [sp, #8]
	ldr r1, _021B3C70 ; =ovy260_21b336c
	bl sub_021C5C74
	add r0, r4, #0
	bl sub_021B57CC
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
_021B39E0:
	ldr r0, [r4, #0x20]
	add r1, r7, #0
	bl sub_021C4F30
	ldr r0, [sp, #8]
	ldr r1, _021B3C74 ; =ovy260_21b5010
	bl sub_021C5C74
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
_021B39F4:
	ldr r0, [r4, #0x30]
	bl ovy260_21b90ec
	cmp r0, #1
	bne _021B3A08
	add r0, r4, #0
	add r0, #0xe8
	str r7, [r0]
	mov r0, #3
_021B3A06:
	b _021B3E5C
_021B3A08:
	cmp r0, #2
	bne _021B3A14
	mov r0, #1
	b _021B3A06
_021B3A10:
	cmp r0, #0
	beq _021B3A16
_021B3A14:
	b _021B3E8A
_021B3A16:
	ldr r1, [sp, #0x14]
	ldr r0, [r4, #0x30]
	ldr r1, [r1, #0x14]
	bl ovy260_21bb1bc
	cmp r0, #0
	beq _021B3A30
	add r0, r4, #0
	mov r1, #0
	add r0, #0xe8
	str r1, [r0]
	mov r0, #4
	str r0, [r5]
_021B3A30:
	mov r6, #1
	b _021B3E8A
_021B3A34:
	ldr r0, [r4, #0x30]
	add r1, sp, #0x20
	bl ovy260_21bb200
	cmp r0, #0
	beq _021B3B30
	ldr r0, [sp, #0x14]
	ldr r7, [r0, #0x18]
	bl sub_0201FCF8
	add r2, r0, #0
	ldr r0, [sp, #0x20]
	add r2, #0xd4
	add r1, r7, #0
	blx MI_CpuCopy8
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r6, #0
_021B3A5E:
	bl sub_020486F4
	lsl r1, r6, #1
	ldrh r1, [r7, r1]
	cmp r1, r0
	bne _021B3A6E
	mov r0, #0
	str r0, [sp, #0x10]
_021B3A6E:
	add r6, r6, #1
	cmp r6, #8
	blt _021B3A5E
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _021B3AAA
	ldr r0, [sp, #0xc]
	ldr r2, _021B3C78 ; =0x000001A1
	add r0, r0, #1
	str r0, [sp, #0xc]
	ldr r3, _021B3C7C ; =0x00008057
	mov r0, #0
	mov r1, #2
	bl sub_0204875C
	ldr r1, _021B3C7C ; =0x00008057
	add r6, r0, #0
	bl sub_0204898C
	str r0, [sp, #0x18]
	add r1, r7, #0
	mov r2, #8
	bl sub_020486B8
	ldr r0, [sp, #0x18]
	bl sub_02048564
	add r0, r6, #0
	bl sub_020487D4
_021B3AAA:
	ldrb r0, [r7, #0x1d]
	cmp r0, #0
	beq _021B3ABE
	cmp r0, #1
	beq _021B3ABE
	mov r0, #0
	strb r0, [r7, #0x1d]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
_021B3ABE:
	ldrb r0, [r7, #0x1c]
	cmp r0, #0x10
	blo _021B3AD8
	ldrb r0, [r7, #0x1d]
	cmp r0, #0
	bne _021B3ACE
	mov r0, #0
	b _021B3AD0
_021B3ACE:
	mov r0, #8
_021B3AD0:
	strb r0, [r7, #0x1c]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
_021B3AD8:
	ldrb r0, [r7, #0x18]
	ldrb r1, [r7, #0x19]
	ldrb r2, [r7, #0x1a]
	bl sub_0202B514
	cmp r0, #0
	bne _021B3AF2
	mov r0, #0
	strb r0, [r7, #0x18]
	strb r0, [r7, #0x19]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
_021B3AF2:
	add r0, r7, #0
	ldr r1, _021B3C7C ; =0x00008057
	add r0, #0x38
	bl sub_02029EF8
	cmp r0, #0
	bne _021B3B10
	add r7, #0x38
	add r0, r7, #0
	mov r1, #1
	bl sub_02029BC8
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
_021B3B10:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _021B3B24
	ldr r0, [sp, #0x14]
	ldr r0, [r0, #8]
	ldr r0, [r0]
	bl sub_02017934
	bl sub_0200A5E4
_021B3B24:
	add r0, r4, #0
	mov r1, #0
	add r0, #0xe8
	str r1, [r0]
	mov r0, #5
	str r0, [r5]
_021B3B30:
	b _021B3A30
_021B3B32:
	ldr r0, [sp, #0x14]
	mov r1, #0x57
	ldr r0, [r0, #0x18]
	bl ovy260_21b5628
	cmp r0, #0
	beq _021B3B44
	mov r0, #6
	b _021B3A06
_021B3B44:
	ldr r0, [r4, #0x30]
	bl ovy260_21b9274
	ldr r0, [sp, #8]
	ldr r1, _021B3C80 ; =ovy260_21b38a0
_021B3B4E:
	bl sub_021C5C74
	b _021B3E8A
_021B3B54:
	ldr r1, [sp, #0x14]
	ldr r0, [r4, #0x30]
	ldr r1, [r1, #0x18]
	mov r2, #0x57
	bl ovy260_21bba50
	mov r0, #7
	b _021B3A06
_021B3B64:
	ldr r0, [r4, #0x30]
	add r1, sp, #0x1c
	bl ovy260_21bbb14
	cmp r0, #0
	beq _021B3B7C
	ldr r0, [r4, #0x40]
	ldr r1, [sp, #0x1c]
	ldr r0, [r0, #0x40]
	str r1, [r0]
	mov r0, #8
	str r0, [r5]
_021B3B7C:
	ldr r0, [r4, #0x30]
	mov r1, #0
	mov r2, #1
	bl ovy260_21b8e08
	cmp r0, #1
	beq _021B3B92
	cmp r0, #2
	beq _021B3BAA
	cmp r0, #4
	bne _021B3BB0
_021B3B92:
	ldr r0, [r4, #0x20]
	mov r1, #0
	bl sub_021C4F30
	ldr r0, [sp, #8]
	ldr r1, _021B3C84 ; =ovy260_21b4348
	bl sub_021C5C74
	add r0, r4, #0
	bl sub_021B57CC
	b _021B3E8A
_021B3BAA:
	b _021B3D48
_021B3BAC:
	cmp r0, #0
	beq _021B3BB2
_021B3BB0:
	b _021B3E8A
_021B3BB2:
	ldr r0, [r4, #0x30]
	mov r1, #0x15
	bl ovy260_21b8dd8
	add r0, r4, #0
	mov r1, #0
	add r0, #0xe8
	str r1, [r0]
	mov r0, #9
	b _021B3A06
_021B3BC6:
	ldr r0, [r4, #0x30]
	bl sub_021B9364
	cmp r0, #0
	bne _021B3BDE
	ldr r0, [r4, #0x30]
	bl ovy260_21b8df0
	cmp r0, #0
	beq _021B3BDE
	mov r0, #0xa
	str r0, [r5]
_021B3BDE:
	b _021B3A30
_021B3BE0:
	ldr r0, [r4, #0x30]
	mov r1, #0x16
	bl ovy260_21b8dd8
	add r0, r4, #0
	mov r1, #0
	add r0, #0xe8
	str r1, [r0]
	mov r0, #0xb
	b _021B3A06
_021B3BF4:
	ldr r0, [r4, #0x30]
	bl ovy260_21b8df0
	cmp r0, #0
	beq _021B3C02
	mov r0, #0xc
	str r0, [r5]
_021B3C02:
	b _021B3A30
_021B3C04:
	ldr r0, [r4, #0x20]
	mov r1, #0
	bl sub_021C4F30
	ldr r0, _021B3C88 ; =0x0000063A
	bl sub_02006254
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x10]
	mov r2, #0x22
	mov r3, #1
	bl sub_021C5888
	mov r0, #0x1e
	str r0, [r5]
	ldr r0, [sp, #8]
	mov r1, #0xd
_021B3C26:
	bl sub_021C5C88
	b _021B3E8A
_021B3C2C:
	add r1, r4, #0
	add r1, #0xe0
	add r0, r4, #0
	ldr r1, [r1]
	add r0, #0xe0
	add r2, r1, #1
	add r1, r4, #0
	ldr r0, [r0]
	add r1, #0xe0
	str r2, [r1]
	cmp r0, #0x78
	bls _021B3D3C
	add r0, r4, #0
	mov r1, #0
	add r0, #0xe0
	str r1, [r0]
	ldr r1, [sp, #0x14]
	add r0, r4, #0
	ldr r1, [r1, #0x18]
	bl ovy260_21b5264
	mov r0, #0
	mov r1, #0
	bl sub_02044C98
	mov r0, #0xe
	b _021B3A06
_021B3C62:
	add r0, r4, #0
	bl sub_021B52CC
	cmp r0, #0
	beq _021B3D3C
	mov r0, #0xf
	b _021B3A06
	.align 2, 0
_021B3C70: .word ovy260_21b336c
_021B3C74: .word ovy260_21b5010
_021B3C78: .word 0x000001A1
_021B3C7C: .word 0x00008057
_021B3C80: .word ovy260_21b38a0
_021B3C84: .word ovy260_21b4348
_021B3C88: .word 0x0000063A
_021B3C8C:
	add r1, r4, #0
	add r1, #0xe0
	add r0, r4, #0
	ldr r1, [r1]
	add r0, #0xe0
	add r2, r1, #1
	add r1, r4, #0
	ldr r0, [r0]
	add r1, #0xe0
	str r2, [r1]
	cmp r0, #0
	beq _021B3D3C
	add r0, r4, #0
	mov r1, #0
	add r0, #0xe0
	str r1, [r0]
	mov r0, #0x10
	b _021B3A06
_021B3CB0:
	mov r7, #6
	lsl r7, r7, #0x10
	mov r0, #1
	mov r1, #0x86
	add r2, r7, #0
	bl sub_0203A15C
	mov r2, #0xfa
	mov r0, #9
	add r1, r7, #0
	lsl r2, r2, #2
	mov r3, #0x86
	bl sub_021520AC
	mov r0, #0x86
	bl sub_021521DC
	mov r7, #0
	str r7, [sp]
	str r7, [sp, #4]
	ldr r0, [r4, #0x30]
	mov r1, #0
	mov r2, #2
	mov r3, #0
	bl ovy260_21b9524
	add r0, r4, #0
	add r0, #0xfc
	str r7, [r0]
	add r0, r4, #0
	add r0, #0xf4
	str r7, [r0]
	mov r0, #0x11
	b _021B3A06
_021B3CF4:
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0]
	cmp r0, #0
	bne _021B3D0E
	add r1, r4, #0
	ldr r0, [r4, #0x30]
	add r1, #0xf4
	bl ovy260_21b9630
	add r1, r4, #0
	add r1, #0xfc
	str r0, [r1]
_021B3D0E:
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0]
	cmp r0, #1
	bne _021B3D1C
	mov r0, #0x12
	str r0, [r5]
_021B3D1C:
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0]
	cmp r0, #0
	beq _021B3D3C
	ldr r0, [r4, #0x30]
	mov r1, #0
	mov r2, #1
	bl ovy260_21b8e08
	cmp r0, #1
	beq _021B3D3E
	cmp r0, #2
	beq _021B3D44
	cmp r0, #4
	beq _021B3D44
_021B3D3C:
	b _021B3E8A
_021B3D3E:
	ldr r0, [r4, #0x30]
	bl ovy260_21b9274
_021B3D44:
	bl sub_02152158
_021B3D48:
	ldr r0, [sp, #8]
	ldr r1, _021B3F10 ; =ovy260_21b5010
	b _021B3B4E
_021B3D4E:
	bl sub_02152158
	mov r0, #0x13
	b _021B3A06
_021B3D56:
	mov r0, #0
	mov r1, #1
	bl sub_02044C98
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x10]
	mov r2, #0x24
	mov r3, #2
	bl sub_021C5888
	mov r0, #0x1e
	str r0, [r5]
	ldr r0, [sp, #8]
	mov r1, #0x14
	b _021B3C26
_021B3D74:
	add r1, r4, #0
	add r1, #0xe0
	add r0, r4, #0
	ldr r1, [r1]
	add r0, #0xe0
	add r2, r1, #1
	add r1, r4, #0
	ldr r0, [r0]
	add r1, #0xe0
	str r2, [r1]
	cmp r0, #0x3c
	bls _021B3E8A
	add r0, r4, #0
	mov r1, #0
	add r0, #0xe0
	str r1, [r0]
	ldr r0, [sp, #0x14]
	mov r1, #1
	str r1, [r0, #4]
	ldr r0, [sp, #8]
	bl sub_021C5C7C
	b _021B3E8A
_021B3DA2:
	ldr r0, [r4, #0x30]
	bl ovy260_21b9274
	ldr r0, [sp, #0x14]
	mov r1, #2
	str r1, [r0, #0xc]
	add r0, r4, #0
	add r0, #0xf4
	ldr r0, [r0]
	cmp r0, #0
	beq _021B3DC6
	add r0, r4, #0
	mov r1, #1
	add r0, #0xf8
	str r1, [r0]
	ldr r0, [sp, #8]
	ldr r1, _021B3F14 ; =ovy260_21b3f24
	b _021B3B4E
_021B3DC6:
	ldr r0, [sp, #8]
	ldr r1, _021B3F18 ; =ovy260_21b42d0
	b _021B3B4E
_021B3DCC:
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x10]
	mov r2, #0x27
	mov r3, #1
	bl sub_021C5888
	mov r0, #0x1e
	str r0, [r5]
	ldr r0, [sp, #8]
	mov r1, #0x17
	b _021B3C26
_021B3DE2:
	add r0, r4, #0
	mov r1, #0
	bl ovy260_21b53bc
	mov r0, #0x18
	b _021B3A06
_021B3DEE:
	add r0, r4, #0
	bl ovy260_21b5448
	add r7, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r7, r0
	beq _021B3E8A
	add r0, r4, #0
	bl ovy260_21b5434
	cmp r7, #0
	beq _021B3E0E
	cmp r7, #1
	beq _021B3E14
	b _021B3E8A
_021B3E0E:
	ldr r0, [sp, #8]
	ldr r1, _021B3F1C ; =ovy260_21b44bc
	b _021B3B4E
_021B3E14:
	mov r0, #0x19
	b _021B3A06
_021B3E18:
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x10]
	mov r2, #0x26
	mov r3, #1
	bl sub_021C5888
	mov r0, #0x1e
	str r0, [r5]
	ldr r0, [sp, #8]
	mov r1, #0x1a
	b _021B3C26
_021B3E2E:
	add r0, r4, #0
	mov r1, #0
	bl ovy260_21b53bc
	mov r0, #0x1b
	b _021B3A06
_021B3E3A:
	add r0, r4, #0
	bl ovy260_21b5448
	add r7, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r7, r0
	beq _021B3E8A
	add r0, r4, #0
	bl ovy260_21b5434
	cmp r7, #0
	beq _021B3E5A
	cmp r7, #1
	beq _021B3E60
	b _021B3E8A
_021B3E5A:
	mov r0, #0
_021B3E5C:
	str r0, [r5]
	b _021B3E8A
_021B3E60:
	mov r0, #0x16
	b _021B3A06
_021B3E64:
	ldr r0, [r4, #0x30]
	bl ovy260_21b933c
	cmp r0, #0
	beq _021B3E8A
	mov r0, #0x1d
	b _021B3A06
_021B3E72:
	ldr r0, [r4, #0x30]
	bl ovy260_21b9274
	b _021B3E5A
_021B3E7A:
	ldr r0, [r4, #0x24]
	bl sub_021C5A1C
	cmp r0, #0
	beq _021B3E8A
	ldr r0, [sp, #8]
	bl sub_021C5C8C
_021B3E8A:
	cmp r6, #0
	beq _021B3F0A
	add r1, r4, #0
	add r1, #0xe8
	add r0, r4, #0
	ldr r1, [r1]
	add r0, #0xe8
	add r2, r1, #1
	add r1, r4, #0
	ldr r0, [r0]
	add r1, #0xe8
	str r2, [r1]
	mov r1, #0x96
	lsl r1, r1, #4
	mov r6, #0
	cmp r0, r1
	bls _021B3EB4
	add r0, r4, #0
	add r0, #0xe8
	str r6, [r0]
	mov r6, #1
_021B3EB4:
	ldr r0, [r4, #0x30]
	bl sub_021B9364
	cmp r0, #0
	beq _021B3EC0
	mov r6, #1
_021B3EC0:
	cmp r6, #0
	beq _021B3EC8
	mov r0, #0x1c
	str r0, [r5]
_021B3EC8:
	ldr r0, [r4, #0x30]
	mov r1, #0
	mov r2, #1
	mov r5, #0
	bl ovy260_21b8e08
	cmp r0, #1
	beq _021B3EE0
	cmp r0, #2
	beq _021B3EFA
	cmp r0, #4
	bne _021B3F0A
_021B3EE0:
	ldr r0, [r4, #0x20]
	mov r1, #0
	bl sub_021C4F30
	ldr r0, [sp, #8]
	ldr r1, _021B3F20 ; =ovy260_21b4348
	bl sub_021C5C74
	add r0, r4, #0
	bl sub_021B57CC
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
_021B3EFA:
	ldr r0, [r4, #0x20]
	add r1, r5, #0
	bl sub_021C4F30
	ldr r0, [sp, #8]
	ldr r1, _021B3F10 ; =ovy260_21b5010
	bl sub_021C5C74
_021B3F0A:
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_021B3F10: .word ovy260_21b5010
_021B3F14: .word ovy260_21b3f24
_021B3F18: .word ovy260_21b42d0
_021B3F1C: .word ovy260_21b44bc
_021B3F20: .word ovy260_21b4348
	thumb_func_end ovy260_21b38a0

	thumb_func_start ovy260_21b3f24
ovy260_21b3f24: ; 0x021B3F24
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	add r5, r1, #0
	ldr r1, [r5]
	add r4, r2, #0
	add r7, r0, #0
	ldr r6, [r4, #0x40]
	cmp r1, #0x10
	bls _021B3F38
	b _021B42CA
_021B3F38:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021B3F44: ; jump table
	.short _021B3F66 - _021B3F44 - 2 ; case 0
	.short _021B3FB0 - _021B3F44 - 2 ; case 1
	.short _021B3FCC - _021B3F44 - 2 ; case 2
	.short _021B3FFE - _021B3F44 - 2 ; case 3
	.short _021B4086 - _021B3F44 - 2 ; case 4
	.short _021B40A4 - _021B3F44 - 2 ; case 5
	.short _021B40D4 - _021B3F44 - 2 ; case 6
	.short _021B410E - _021B3F44 - 2 ; case 7
	.short _021B4138 - _021B3F44 - 2 ; case 8
	.short _021B4194 - _021B3F44 - 2 ; case 9
	.short _021B41A6 - _021B3F44 - 2 ; case 10
	.short _021B41DA - _021B3F44 - 2 ; case 11
	.short _021B422A - _021B3F44 - 2 ; case 12
	.short _021B4246 - _021B3F44 - 2 ; case 13
	.short _021B426E - _021B3F44 - 2 ; case 14
	.short _021B427E - _021B3F44 - 2 ; case 15
	.short _021B42BA - _021B3F44 - 2 ; case 16
_021B3F66:
	ldr r1, [r6, #0xc]
	cmp r1, #2
	bne _021B3F80
	add r1, r4, #0
	add r1, #0xf8
	ldr r1, [r1]
	cmp r1, #0
	bne _021B3F80
	ldr r1, _021B42A0 ; =ovy260_21b42d0
	bl sub_021C5C74
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
_021B3F80:
	mov r6, #6
	lsl r6, r6, #0x10
	mov r0, #0
	add r4, #0xf8
	str r0, [r4]
	mov r0, #1
	mov r1, #0x86
	add r2, r6, #0
	mov r4, #1
	bl sub_0203A15C
	mov r2, #0xfa
	mov r0, #9
	add r1, r6, #0
	lsl r2, r2, #2
	mov r3, #0x86
	bl sub_021520AC
	mov r0, #0x86
	bl sub_021521DC
	add sp, #0x5c
	str r4, [r5]
	pop {r4, r5, r6, r7, pc}
_021B3FB0:
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x10]
	mov r2, #0x25
	mov r3, #2
	bl sub_021C5888
	mov r0, #0x10
	str r0, [r5]
	add r0, r7, #0
	mov r1, #2
	bl sub_021C5C88
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
_021B3FCC:
	ldr r0, [r6, #0xc]
	mov r1, #1
	cmp r0, #2
	beq _021B3FD6
	mov r1, #0
_021B3FD6:
	ldr r0, [r6, #0x2c]
	mov r2, #2
	str r0, [sp]
	str r1, [sp, #4]
	ldr r3, [r6, #8]
	ldr r0, [r4, #0x30]
	ldr r3, [r3, #4]
	mov r1, #1
	bl ovy260_21b9524
	add r0, r4, #0
	mov r1, #0
	add r0, #0xfc
	add r4, #0xf4
	str r1, [r0]
	str r1, [r4]
	mov r0, #3
	add sp, #0x5c
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_021B3FFE:
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0]
	cmp r0, #0
	bne _021B4032
	add r1, r4, #0
	ldr r0, [r4, #0x30]
	add r1, #0xf4
	bl ovy260_21b9630
	add r1, r4, #0
	add r1, #0xfc
	str r0, [r1]
	cmp r0, #0
	beq _021B4032
	add r0, r4, #0
	add r0, #0xf4
	ldr r0, [r0]
	cmp r0, #0
	beq _021B4032
	ldr r0, [r6, #8]
	ldr r1, [r6, #0x2c]
	ldr r0, [r0]
	ldr r1, [r1]
	bl sub_021C5C94
_021B4032:
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0]
	cmp r0, #1
	bne _021B404A
	ldr r0, [r4, #0x30]
	bl sub_021B9D24
	ldr r1, [r6, #0x2c]
	str r0, [r1, #0x14]
	mov r0, #4
	str r0, [r5]
_021B404A:
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0]
	cmp r0, #0
	bne _021B4056
	b _021B42CA
_021B4056:
	ldr r0, [r4, #0x30]
	mov r1, #0
	mov r2, #1
	bl ovy260_21b8e08
	cmp r0, #1
	beq _021B4070
	cmp r0, #2
	beq _021B4076
	cmp r0, #4
	beq _021B4076
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
_021B4070:
	ldr r0, [r4, #0x30]
	bl ovy260_21b9274
_021B4076:
	bl sub_02152158
	ldr r1, _021B42A4 ; =ovy260_21b5010
	add r0, r7, #0
	bl sub_021C5C74
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
_021B4086:
	bl sub_02152158
	ldr r0, [r6, #0xc]
	cmp r0, #2
	bne _021B409C
	ldr r1, _021B42A0 ; =ovy260_21b42d0
	add r0, r7, #0
	bl sub_021C5C74
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
_021B409C:
	mov r0, #5
	add sp, #0x5c
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_021B40A4:
	ldr r6, [r6, #0x18]
	add r0, r6, #0
	bl sub_02008BFC
	cmp r0, #0x16
	beq _021B40BA
	add r0, r6, #0
	bl sub_02008BFC
	cmp r0, #0x17
	bne _021B40CC
_021B40BA:
	ldr r0, [r4, #0x30]
	bl ovy260_21b9378
	cmp r0, #0
	beq _021B419C
	mov r0, #6
	add sp, #0x5c
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_021B40CC:
	mov r0, #7
	add sp, #0x5c
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_021B40D4:
	ldr r0, [r4, #0x30]
	bl sub_021B93C4
	cmp r0, #0
	beq _021B40E2
	mov r0, #7
	str r0, [r5]
_021B40E2:
	ldr r0, [r4, #0x30]
	mov r1, #0
	mov r2, #1
	bl ovy260_21b8e08
	cmp r0, #1
	beq _021B40FC
	cmp r0, #2
	beq _021B4102
	cmp r0, #4
	beq _021B4102
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
_021B40FC:
	ldr r0, [r4, #0x30]
	bl ovy260_21b9274
_021B4102:
	ldr r1, _021B42A4 ; =ovy260_21b5010
	add r0, r7, #0
	bl sub_021C5C74
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
_021B410E:
	ldr r0, [r6, #8]
	ldr r0, [r0]
	bl sub_02017934
	bl sub_0200F6F4
	add r7, r0, #0
	ldr r0, [r6, #0x18]
	bl sub_02008BD0
	add r1, r0, #0
	add r0, r7, #0
	bl sub_0200F700
	mov r0, #8
	str r0, [r5]
	ldr r0, [r4, #0x30]
	bl sub_021B928C
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
_021B4138:
	ldr r0, [r4, #0x30]
	bl ovy260_21b9298
	cmp r0, #0
	beq _021B416A
	ldr r0, [r4, #0x40]
	ldr r0, [r0, #0x20]
	ldr r0, [r0]
	cmp r0, #0
	bne _021B4152
	mov r0, #0xa
	str r0, [r5]
	b _021B416A
_021B4152:
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x10]
	mov r2, #0x2a
	mov r3, #2
	bl sub_021C5888
	mov r0, #0x10
	str r0, [r5]
	add r0, r7, #0
	mov r1, #9
	bl sub_021C5C88
_021B416A:
	ldr r0, [r4, #0x30]
	mov r1, #0
	mov r2, #1
	bl ovy260_21b8e08
	cmp r0, #1
	beq _021B4180
	cmp r0, #2
	beq _021B4188
	cmp r0, #4
	bne _021B419C
_021B4180:
	mov r0, #9
	add sp, #0x5c
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_021B4188:
	ldr r1, _021B42A4 ; =ovy260_21b5010
	add r0, r7, #0
	bl sub_021C5C74
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
_021B4194:
	ldr r0, [r6, #0x20]
	ldr r0, [r0]
	cmp r0, #0
	beq _021B419E
_021B419C:
	b _021B42CA
_021B419E:
	mov r0, #0xa
	add sp, #0x5c
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_021B41A6:
	add r6, sp, #8
	add r0, r6, #0
	mov r1, #0
	mov r2, #0x54
	blx MI_CpuFill8
	ldr r0, [r4, #0x40]
	mov r2, #0xa
	ldr r3, [r0, #0x24]
_021B41B8:
	ldmia r3!, {r0, r1}
	stmia r6!, {r0, r1}
	sub r2, r2, #1
	bne _021B41B8
	ldr r0, [r4, #0x40]
	mov r1, #3
	ldr r0, [r0, #0x28]
	add r2, sp, #8
	ldr r0, [r0]
	str r0, [sp, #0x58]
	ldr r0, [r4, #0x30]
	bl ovy260_21bac18
	mov r0, #0xb
	add sp, #0x5c
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_021B41DA:
	ldr r0, [r4, #0x30]
	bl ovy260_21badc4
	cmp r0, #1
	bne _021B41F0
	ldr r1, [r4, #0x40]
	ldr r2, _021B42A8 ; =0x00000708
	ldr r1, [r1, #0x20]
	str r2, [r1]
	mov r1, #0xc
	str r1, [r5]
_021B41F0:
	cmp r0, #0
	beq _021B42CA
	ldr r0, [r4, #0x30]
	mov r1, #0
	mov r2, #0
	bl ovy260_21b8e08
	cmp r0, #1
	beq _021B421A
	cmp r0, #2
	bne _021B42CA
	ldr r1, _021B42A4 ; =ovy260_21b5010
	add r0, r7, #0
	bl sub_021C5C74
	ldr r0, [r4, #0x40]
	ldr r1, _021B42A8 ; =0x00000708
	ldr r0, [r0, #0x20]
	add sp, #0x5c
	str r1, [r0]
	pop {r4, r5, r6, r7, pc}
_021B421A:
	ldr r0, [r4, #0x40]
	ldr r1, _021B42A8 ; =0x00000708
	ldr r0, [r0, #0x20]
	add sp, #0x5c
	str r1, [r0]
	mov r0, #0xc
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_021B422A:
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x10]
	mov r2, #0x58
	mov r3, #1
	bl sub_021C5888
	mov r0, #0x10
	str r0, [r5]
	add r0, r7, #0
	mov r1, #0xd
	bl sub_021C5C88
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
_021B4246:
	ldr r0, [r6, #8]
	ldr r1, [r6, #0x2c]
	ldr r0, [r0]
	ldr r1, [r1]
	bl sub_021C5CD4
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x10]
	mov r2, #0x28
	mov r3, #2
	bl sub_021C5888
	mov r0, #0x10
	str r0, [r5]
	add r0, r7, #0
	mov r1, #0xe
	bl sub_021C5C88
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
_021B426E:
	ldr r0, [r6, #8]
	ldr r0, [r0]
	bl sub_0201782C
	mov r0, #0xf
	add sp, #0x5c
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_021B427E:
	ldr r0, [r6, #8]
	ldr r0, [r0]
	bl sub_02017850
	cmp r0, #3
	bhi _021B42CA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021B4296: ; jump table
	.short _021B42CA - _021B4296 - 2 ; case 0
	.short _021B42CA - _021B4296 - 2 ; case 1
	.short _021B42AC - _021B4296 - 2 ; case 2
	.short _021B42AC - _021B4296 - 2 ; case 3
_021B42A0: .word ovy260_21b42d0
_021B42A4: .word ovy260_21b5010
_021B42A8: .word 0x00000708
_021B42AC:
	mov r0, #2
	str r0, [r6, #4]
	add r0, r7, #0
	bl sub_021C5C7C
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
_021B42BA:
	ldr r0, [r4, #0x24]
	bl sub_021C5A1C
	cmp r0, #0
	beq _021B42CA
	add r0, r7, #0
	bl sub_021C5C8C
_021B42CA:
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy260_21b3f24

	thumb_func_start ovy260_21b42d0
ovy260_21b42d0: ; 0x021B42D0
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r1, [r5]
	add r4, r0, #0
	cmp r1, #0
	beq _021B42E6
	cmp r1, #1
	beq _021B4324
	cmp r1, #2
	beq _021B432C
	pop {r4, r5, r6, pc}
_021B42E6:
	ldr r0, [r2, #0x30]
	mov r1, #0
	mov r2, #1
	mov r6, #1
	bl ovy260_21b8e08
	cmp r0, #4
	bhi _021B433C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021B4302: ; jump table
	.short _021B430C - _021B4302 - 2 ; case 0
	.short _021B4310 - _021B4302 - 2 ; case 1
	.short _021B431A - _021B4302 - 2 ; case 2
	.short _021B433C - _021B4302 - 2 ; case 3
	.short _021B4310 - _021B4302 - 2 ; case 4
_021B430C:
	str r6, [r5]
	pop {r4, r5, r6, pc}
_021B4310:
	ldr r1, _021B4340 ; =ovy260_21b4348
	add r0, r4, #0
	bl sub_021C5C74
	pop {r4, r5, r6, pc}
_021B431A:
	ldr r1, _021B4344 ; =ovy260_21b5010
	add r0, r4, #0
	bl sub_021C5C74
	pop {r4, r5, r6, pc}
_021B4324:
	ldr r1, _021B4340 ; =ovy260_21b4348
	bl sub_021C5C74
	pop {r4, r5, r6, pc}
_021B432C:
	ldr r0, [r2, #0x24]
	bl sub_021C5A1C
	cmp r0, #0
	beq _021B433C
	add r0, r4, #0
	bl sub_021C5C8C
_021B433C:
	pop {r4, r5, r6, pc}
	nop
_021B4340: .word ovy260_21b4348
_021B4344: .word ovy260_21b5010
	thumb_func_end ovy260_21b42d0

	thumb_func_start ovy260_21b4348
ovy260_21b4348: ; 0x021B4348
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5]
	add r4, r2, #0
	cmp r0, #4
	bhi _021B440C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021B4362: ; jump table
	.short _021B436C - _021B4362 - 2 ; case 0
	.short _021B43A0 - _021B4362 - 2 ; case 1
	.short _021B43BA - _021B4362 - 2 ; case 2
	.short _021B43C8 - _021B4362 - 2 ; case 3
	.short _021B43FC - _021B4362 - 2 ; case 4
_021B436C:
	ldr r0, [r4, #0x30]
	mov r1, #0
	mov r2, #1
	mov r4, #1
	bl ovy260_21b8e08
	cmp r0, #4
	bhi _021B440C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021B4388: ; jump table
	.short _021B4392 - _021B4388 - 2 ; case 0
	.short _021B4392 - _021B4388 - 2 ; case 1
	.short _021B4396 - _021B4388 - 2 ; case 2
	.short _021B440C - _021B4388 - 2 ; case 3
	.short _021B4392 - _021B4388 - 2 ; case 4
_021B4392:
	str r4, [r5]
	pop {r4, r5, r6, pc}
_021B4396:
	ldr r1, _021B4410 ; =ovy260_21b5010
	add r0, r6, #0
	bl sub_021C5C74
	pop {r4, r5, r6, pc}
_021B43A0:
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x10]
	mov r2, #0x26
	mov r3, #1
	bl sub_021C5888
	mov r0, #4
	str r0, [r5]
	add r0, r6, #0
	mov r1, #2
	bl sub_021C5C88
	pop {r4, r5, r6, pc}
_021B43BA:
	add r0, r4, #0
	mov r1, #0
	bl ovy260_21b53bc
	mov r0, #3
	str r0, [r5]
	pop {r4, r5, r6, pc}
_021B43C8:
	add r0, r4, #0
	bl ovy260_21b5448
	add r5, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	beq _021B440C
	add r0, r4, #0
	bl ovy260_21b5434
	cmp r5, #0
	beq _021B43E8
	cmp r5, #1
	beq _021B43F2
	pop {r4, r5, r6, pc}
_021B43E8:
	ldr r1, _021B4414 ; =ovy260_21b36c0
	add r0, r6, #0
	bl sub_021C5C74
	pop {r4, r5, r6, pc}
_021B43F2:
	ldr r1, _021B4418 ; =ovy260_21b441c
	add r0, r6, #0
	bl sub_021C5C74
	pop {r4, r5, r6, pc}
_021B43FC:
	ldr r0, [r4, #0x24]
	bl sub_021C5A1C
	cmp r0, #0
	beq _021B440C
	add r0, r6, #0
	bl sub_021C5C8C
_021B440C:
	pop {r4, r5, r6, pc}
	nop
_021B4410: .word ovy260_21b5010
_021B4414: .word ovy260_21b36c0
_021B4418: .word ovy260_21b441c
	thumb_func_end ovy260_21b4348

	thumb_func_start ovy260_21b441c
ovy260_21b441c: ; 0x021B441C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5]
	add r4, r2, #0
	cmp r0, #3
	bhi _021B44B0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021B4436: ; jump table
	.short _021B443E - _021B4436 - 2 ; case 0
	.short _021B4458 - _021B4436 - 2 ; case 1
	.short _021B4466 - _021B4436 - 2 ; case 2
	.short _021B44A0 - _021B4436 - 2 ; case 3
_021B443E:
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x10]
	mov r2, #0x27
	mov r3, #1
	bl sub_021C5888
	mov r0, #3
	str r0, [r5]
	add r0, r6, #0
	mov r1, #1
	bl sub_021C5C88
	pop {r4, r5, r6, pc}
_021B4458:
	add r0, r4, #0
	mov r1, #0
	bl ovy260_21b53bc
	mov r0, #2
	str r0, [r5]
	pop {r4, r5, r6, pc}
_021B4466:
	add r0, r4, #0
	bl ovy260_21b5448
	add r5, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	beq _021B44B0
	add r0, r4, #0
	bl ovy260_21b5434
	cmp r5, #0
	beq _021B4486
	cmp r5, #1
	beq _021B4496
	pop {r4, r5, r6, pc}
_021B4486:
	ldr r0, [r4, #0x30]
	bl ovy260_21b9274
	ldr r1, _021B44B4 ; =ovy260_21b44bc
	add r0, r6, #0
	bl sub_021C5C74
	pop {r4, r5, r6, pc}
_021B4496:
	ldr r1, _021B44B8 ; =ovy260_21b4348
	add r0, r6, #0
	bl sub_021C5C74
	pop {r4, r5, r6, pc}
_021B44A0:
	ldr r0, [r4, #0x24]
	bl sub_021C5A1C
	cmp r0, #0
	beq _021B44B0
	add r0, r6, #0
	bl sub_021C5C8C
_021B44B0:
	pop {r4, r5, r6, pc}
	nop
_021B44B4: .word ovy260_21b44bc
_021B44B8: .word ovy260_21b4348
	thumb_func_end ovy260_21b441c

	thumb_func_start ovy260_21b44bc
ovy260_21b44bc: ; 0x021B44BC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	add r4, r2, #0
	ldr r0, [r5]
	ldr r6, [r4, #0x40]
	cmp r0, #7
	bhi _021B459A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021B44D8: ; jump table
	.short _021B44E8 - _021B44D8 - 2 ; case 0
	.short _021B4502 - _021B44D8 - 2 ; case 1
	.short _021B4510 - _021B44D8 - 2 ; case 2
	.short _021B4522 - _021B44D8 - 2 ; case 3
	.short _021B453C - _021B44D8 - 2 ; case 4
	.short _021B4554 - _021B44D8 - 2 ; case 5
	.short _021B4576 - _021B44D8 - 2 ; case 6
	.short _021B458A - _021B44D8 - 2 ; case 7
_021B44E8:
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x10]
	mov r2, #0x28
	mov r3, #2
	bl sub_021C5888
	add r0, r7, #0
	mov r1, #1
	bl sub_021C5C88
	mov r0, #7
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B4502:
	ldr r0, [r6, #8]
	ldr r0, [r0]
	bl sub_0201782C
	mov r0, #2
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B4510:
	ldr r0, [r6, #8]
	ldr r0, [r0]
	bl sub_02017850
	cmp r0, #2
	bne _021B459A
	mov r0, #3
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B4522:
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x10]
	mov r2, #0x25
	mov r3, #2
	bl sub_021C5888
	mov r0, #7
	str r0, [r5]
	add r0, r7, #0
	mov r1, #4
	bl sub_021C5C88
	pop {r3, r4, r5, r6, r7, pc}
_021B453C:
	ldr r0, [r6, #0x20]
	ldr r0, [r0]
	cmp r0, #0
	bne _021B459A
	ldr r0, [r4, #0x30]
	mov r1, #2
	mov r2, #0
	bl ovy260_21bac18
	mov r0, #5
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B4554:
	ldr r0, [r4, #0x30]
	bl ovy260_21badc4
	cmp r0, #0
	beq _021B459A
	ldr r0, [r4, #0x40]
	ldr r1, _021B459C ; =0x00000708
	ldr r0, [r0, #0x20]
	mov r2, #0
	str r1, [r0]
	mov r0, #6
	str r0, [r5]
	ldr r0, [r4, #0x30]
	mov r1, #1
	bl ovy260_21b8e08
	pop {r3, r4, r5, r6, r7, pc}
_021B4576:
	ldr r0, [r4, #0x30]
	bl ovy260_21b9274
	mov r0, #0
	str r0, [r6, #4]
	ldr r1, _021B45A0 ; =ovy260_21b5038
	add r0, r7, #0
	bl sub_021C5C74
	pop {r3, r4, r5, r6, r7, pc}
_021B458A:
	ldr r0, [r4, #0x24]
	bl sub_021C5A1C
	cmp r0, #0
	beq _021B459A
	add r0, r7, #0
	bl sub_021C5C8C
_021B459A:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021B459C: .word 0x00000708
_021B45A0: .word ovy260_21b5038
	thumb_func_end ovy260_21b44bc

	thumb_func_start ovy260_21b45a4
ovy260_21b45a4: ; 0x021B45A4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5]
	add r4, r2, #0
	cmp r0, #7
	bls _021B45B4
	b _021B46D4
_021B45B4:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021B45C0: ; jump table
	.short _021B45D0 - _021B45C0 - 2 ; case 0
	.short _021B45EA - _021B45C0 - 2 ; case 1
	.short _021B45FA - _021B45C0 - 2 ; case 2
	.short _021B460A - _021B45C0 - 2 ; case 3
	.short _021B461C - _021B45C0 - 2 ; case 4
	.short _021B4656 - _021B45C0 - 2 ; case 5
	.short _021B46B0 - _021B45C0 - 2 ; case 6
	.short _021B46C2 - _021B45C0 - 2 ; case 7
_021B45D0:
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x10]
	mov r2, #0x1a
	mov r3, #1
	mov r6, #1
	bl sub_021C5888
	add r0, r4, #0
	mov r1, #1
	bl ovy260_21b5110
	str r6, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B45EA:
	add r0, r4, #0
	bl sub_021B521C
	cmp r0, #0
	beq _021B46D4
	mov r0, #2
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B45FA:
	ldr r0, [r4, #0x24]
	bl sub_021C5A1C
	cmp r0, #0
	beq _021B46D4
	mov r0, #3
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B460A:
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x10]
	mov r2, #0x18
	mov r3, #2
	bl sub_021C5888
	mov r0, #4
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B461C:
	ldr r1, _021B46D8 ; =ovy260_21b505c
	add r0, r4, #0
	bl ovy260_21b55f4
	mov r0, #5
	str r0, [r5]
	ldr r0, [r4, #0x30]
	mov r1, #0
	mov r2, #0
	bl ovy260_21b8e08
	cmp r0, #1
	beq _021B463C
	cmp r0, #2
	beq _021B464C
	pop {r3, r4, r5, r6, r7, pc}
_021B463C:
	add r0, r4, #0
	bl ovy260_21b5248
	ldr r1, _021B46DC ; =ovy260_21b336c
	add r0, r6, #0
	bl sub_021C5C74
	pop {r3, r4, r5, r6, r7, pc}
_021B464C:
	ldr r1, _021B46E0 ; =ovy260_21b5010
	add r0, r6, #0
	bl sub_021C5C74
	pop {r3, r4, r5, r6, r7, pc}
_021B4656:
	add r0, r4, #0
	bl ovy260_21b5608
	add r7, r0, #0
	bne _021B4666
	add r0, r6, #0
	ldr r1, _021B46E4 ; =ovy260_21b46f0
	b _021B4678
_021B4666:
	cmp r7, #1
	bne _021B4670
	mov r0, #6
	str r0, [r5]
	b _021B467C
_021B4670:
	cmp r7, #3
	bne _021B467C
	ldr r1, _021B46E0 ; =ovy260_21b5010
	add r0, r6, #0
_021B4678:
	bl sub_021C5C74
_021B467C:
	ldr r0, _021B46E8 ; =0x0000FFFF
	cmp r7, r0
	beq _021B46D4
	ldr r0, [r4, #0x30]
	mov r1, #0
	mov r2, #0
	bl ovy260_21b8e08
	cmp r0, #1
	beq _021B4696
	cmp r0, #2
	beq _021B46A6
	pop {r3, r4, r5, r6, r7, pc}
_021B4696:
	add r0, r4, #0
	bl ovy260_21b5248
	ldr r1, _021B46DC ; =ovy260_21b336c
	add r0, r6, #0
	bl sub_021C5C74
	pop {r3, r4, r5, r6, r7, pc}
_021B46A6:
	ldr r1, _021B46E0 ; =ovy260_21b5010
	add r0, r6, #0
	bl sub_021C5C74
	pop {r3, r4, r5, r6, r7, pc}
_021B46B0:
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x10]
	mov r2, #0x78
	mov r3, #1
	bl sub_021C5888
	mov r0, #7
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B46C2:
	ldr r0, [r4, #0x24]
	bl sub_021C5A1C
	cmp r0, #0
	beq _021B46D4
	ldr r1, _021B46EC ; =ovy260_21b5038
	add r0, r6, #0
	bl sub_021C5C74
_021B46D4:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021B46D8: .word ovy260_21b505c
_021B46DC: .word ovy260_21b336c
_021B46E0: .word ovy260_21b5010
_021B46E4: .word ovy260_21b46f0
_021B46E8: .word 0x0000FFFF
_021B46EC: .word ovy260_21b5038
	thumb_func_end ovy260_21b45a4

	thumb_func_start ovy260_21b46f0
ovy260_21b46f0: ; 0x021B46F0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r1, #0
	str r0, [sp, #4]
	add r4, r2, #0
	ldr r0, [r5]
	ldr r6, [r4, #0x40]
	mov r7, #0
	mov r1, #0
	cmp r0, #3
	blt _021B470C
	cmp r0, #0xd
	bge _021B470C
	mov r1, #1
_021B470C:
	cmp r0, #0xb
	blt _021B4714
	cmp r0, #0xc
	ble _021B4718
_021B4714:
	mov r2, #1
	b _021B471A
_021B4718:
	mov r2, #0
_021B471A:
	add r0, r4, #0
	bl ovy260_21b56c0
	cmp r0, #3
	bne _021B4730
	ldr r0, [sp, #4]
	ldr r1, _021B4A34 ; =ovy260_21b4f4c
	bl sub_021C5C74
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
_021B4730:
	ldr r1, [r5]
	cmp r1, #0x19
	bls _021B4738
	b _021B4B7E
_021B4738:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021B4744: ; jump table
	.short _021B4778 - _021B4744 - 2 ; case 0
	.short _021B4786 - _021B4744 - 2 ; case 1
	.short _021B47A6 - _021B4744 - 2 ; case 2
	.short _021B4800 - _021B4744 - 2 ; case 3
	.short _021B4B7E - _021B4744 - 2 ; case 4
	.short _021B4B7E - _021B4744 - 2 ; case 5
	.short _021B485E - _021B4744 - 2 ; case 6
	.short _021B4874 - _021B4744 - 2 ; case 7
	.short _021B488E - _021B4744 - 2 ; case 8
	.short _021B48AE - _021B4744 - 2 ; case 9
	.short _021B4974 - _021B4744 - 2 ; case 10
	.short _021B499C - _021B4744 - 2 ; case 11
	.short _021B49AA - _021B4744 - 2 ; case 12
	.short _021B4A00 - _021B4744 - 2 ; case 13
	.short _021B4A18 - _021B4744 - 2 ; case 14
	.short _021B4A50 - _021B4744 - 2 ; case 15
	.short _021B4A64 - _021B4744 - 2 ; case 16
	.short _021B4A76 - _021B4744 - 2 ; case 17
	.short _021B4AA4 - _021B4744 - 2 ; case 18
	.short _021B4AD8 - _021B4744 - 2 ; case 19
	.short _021B4AE6 - _021B4744 - 2 ; case 20
	.short _021B4B0E - _021B4744 - 2 ; case 21
	.short _021B4B2C - _021B4744 - 2 ; case 22
	.short _021B4B58 - _021B4744 - 2 ; case 23
	.short _021B4B66 - _021B4744 - 2 ; case 24
	.short _021B4B6E - _021B4744 - 2 ; case 25
_021B4778:
	ldr r0, [r6, #0x14]
	add r1, r4, #0
	bl ovy260_21b5590
_021B4780:
	mov r0, #1
_021B4782:
	str r0, [r5]
	b _021B4B7E
_021B4786:
	add r0, r4, #0
	mov r1, #0
	add r0, #0xe4
	str r1, [r0]
	ldr r0, [r4, #0x20]
	mov r1, #1
	bl sub_021C4F30
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x10]
	mov r2, #0x21
	mov r3, #0
	bl sub_021C5888
_021B47A2:
	mov r0, #2
_021B47A4:
	b _021B4782
_021B47A6:
	ldr r0, [r4, #0x30]
	mov r1, #0
	mov r2, #0
	bl ovy260_21b8e08
	cmp r0, #1
	beq _021B47BA
	cmp r0, #2
	beq _021B47CE
	b _021B47E2
_021B47BA:
	ldr r0, [r4, #0x20]
	mov r1, #0
	bl sub_021C4F30
	ldr r0, [sp, #4]
	ldr r1, _021B4A38 ; =ovy260_21b336c
	bl sub_021C5C74
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
_021B47CE:
	ldr r0, [r4, #0x20]
	mov r1, #0
	bl sub_021C4F30
	ldr r0, [sp, #4]
	ldr r1, _021B4A3C ; =ovy260_21b5010
	bl sub_021C5C74
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
_021B47E2:
	add r0, sp, #0x18
	add r1, r4, #0
	bl ovy260_21b545c
	add r0, sp, #0x18
	str r0, [sp]
	ldr r3, [r6, #8]
	ldr r0, [r4, #0x30]
	ldr r3, [r3, #4]
	mov r1, #3
	mov r2, #0
	bl ovy260_21b8fd8
	mov r0, #3
	b _021B47A4
_021B4800:
	ldr r0, [r4, #0x30]
	mov r1, #0
	mov r2, #0
	mov r6, #0
	bl ovy260_21b8e08
	cmp r0, #1
	beq _021B4816
	cmp r0, #2
	beq _021B4830
	b _021B4844
_021B4816:
	ldr r0, [r4, #0x20]
	add r1, r6, #0
	bl sub_021C4F30
	ldr r0, [sp, #4]
	ldr r1, _021B4A38 ; =ovy260_21b336c
	bl sub_021C5C74
	add r0, r4, #0
	bl sub_021B57CC
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
_021B4830:
	ldr r0, [r4, #0x20]
	add r1, r6, #0
	bl sub_021C4F30
	ldr r0, [sp, #4]
	ldr r1, _021B4A3C ; =ovy260_21b5010
	bl sub_021C5C74
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
_021B4844:
	ldr r0, [r4, #0x30]
	bl ovy260_21b90ec
	cmp r0, #1
	bne _021B4858
	add r0, r4, #0
	add r0, #0xe8
	str r6, [r0]
	mov r0, #6
	b _021B47A4
_021B4858:
	cmp r0, #2
	bne _021B4892
	b _021B47A2
_021B485E:
	ldr r0, [r4, #0x30]
	mov r1, #0x14
	bl ovy260_21b8dd8
	mov r0, #7
	str r0, [r5]
	add r0, r4, #0
	mov r1, #0
	add r0, #0xe8
	str r1, [r0]
	b _021B4B7E
_021B4874:
	ldr r0, [r4, #0x30]
	bl ovy260_21b8df0
	cmp r0, #0
	beq _021B488A
	add r0, r4, #0
	mov r1, #0
	add r0, #0xe8
	str r1, [r0]
	mov r0, #8
	str r0, [r5]
_021B488A:
	mov r7, #1
	b _021B4B7E
_021B488E:
	cmp r0, #0
	beq _021B4894
_021B4892:
	b _021B4B7E
_021B4894:
	ldr r0, [r4, #0x30]
	ldr r1, [r6, #0x14]
	bl ovy260_21bb1bc
	cmp r0, #0
	beq _021B48AC
	add r0, r4, #0
	mov r1, #0
	add r0, #0xe8
	str r1, [r0]
	mov r0, #9
	str r0, [r5]
_021B48AC:
	b _021B488A
_021B48AE:
	ldr r0, [r4, #0x30]
	add r1, sp, #0x14
	bl ovy260_21bb200
	cmp r0, #0
	beq _021B4972
	ldr r7, [r6, #0x18]
	bl sub_0201FCF8
	add r2, r0, #0
	ldr r0, [sp, #0x14]
	add r2, #0xd4
	add r1, r7, #0
	blx MI_CpuCopy8
	mov r0, #1
	str r0, [sp, #8]
	mov r6, #0
_021B48D2:
	bl sub_020486F4
	lsl r1, r6, #1
	ldrh r1, [r7, r1]
	cmp r1, r0
	bne _021B48E2
	mov r0, #0
	str r0, [sp, #8]
_021B48E2:
	add r6, r6, #1
	cmp r6, #8
	blt _021B48D2
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _021B4918
	ldr r2, _021B4A40 ; =0x000001A1
	ldr r3, _021B4A44 ; =0x00008057
	mov r0, #0
	mov r1, #2
	bl sub_0204875C
	ldr r1, _021B4A44 ; =0x00008057
	add r6, r0, #0
	bl sub_0204898C
	str r0, [sp, #0xc]
	add r1, r7, #0
	mov r2, #8
	bl sub_020486B8
	ldr r0, [sp, #0xc]
	bl sub_02048564
	add r0, r6, #0
	bl sub_020487D4
_021B4918:
	ldrb r0, [r7, #0x1d]
	cmp r0, #0
	beq _021B4926
	cmp r0, #1
	beq _021B4926
	mov r0, #0
	strb r0, [r7, #0x1d]
_021B4926:
	ldrb r0, [r7, #0x1c]
	cmp r0, #0x10
	blo _021B493A
	ldrb r0, [r7, #0x1d]
	cmp r0, #0
	bne _021B4936
	mov r0, #0
	b _021B4938
_021B4936:
	mov r0, #8
_021B4938:
	strb r0, [r7, #0x1c]
_021B493A:
	ldrb r0, [r7, #0x18]
	ldrb r1, [r7, #0x19]
	ldrb r2, [r7, #0x1a]
	bl sub_0202B514
	cmp r0, #0
	bne _021B494E
	mov r0, #0
	strb r0, [r7, #0x18]
	strb r0, [r7, #0x19]
_021B494E:
	add r0, r7, #0
	ldr r1, _021B4A44 ; =0x00008057
	add r0, #0x38
	bl sub_02029EF8
	cmp r0, #0
	bne _021B4966
	add r7, #0x38
	add r0, r7, #0
	mov r1, #1
	bl sub_02029BC8
_021B4966:
	add r0, r4, #0
	mov r1, #0
	add r0, #0xe8
	str r1, [r0]
	mov r0, #0xa
	str r0, [r5]
_021B4972:
	b _021B488A
_021B4974:
	ldr r0, [r6, #0x18]
	mov r1, #0x57
	bl ovy260_21b5628
	cmp r0, #0
	beq _021B4984
	mov r0, #0xb
	b _021B47A4
_021B4984:
	ldr r0, [r4, #0x30]
	bl ovy260_21b9274
	ldr r0, [r4, #0x20]
	mov r1, #0
	bl sub_021C4F30
	ldr r0, [sp, #4]
	ldr r1, _021B4A48 ; =ovy260_21b46f0
_021B4996:
	bl sub_021C5C74
	b _021B4B7E
_021B499C:
	ldr r0, [r4, #0x30]
	ldr r1, [r6, #0x18]
	mov r2, #0x57
	bl ovy260_21bba50
	mov r0, #0xc
	b _021B47A4
_021B49AA:
	ldr r0, [r4, #0x30]
	add r1, sp, #0x10
	bl ovy260_21bbb14
	cmp r0, #0
	beq _021B49C2
	ldr r0, [r4, #0x40]
	ldr r1, [sp, #0x10]
	ldr r0, [r0, #0x40]
	str r1, [r0]
	mov r0, #0xd
	str r0, [r5]
_021B49C2:
	ldr r0, [r4, #0x30]
	mov r1, #0
	mov r2, #1
	mov r6, #0
	bl ovy260_21b8e08
	cmp r0, #1
	beq _021B49DA
	cmp r0, #2
	beq _021B49F2
	cmp r0, #4
	bne _021B4A70
_021B49DA:
	ldr r0, [r4, #0x20]
	mov r1, #0
	bl sub_021C4F30
	ldr r0, [sp, #4]
	ldr r1, _021B4A4C ; =ovy260_21b4eb4
	bl sub_021C5C74
	add r0, r4, #0
	bl sub_021B57CC
	b _021B4B7E
_021B49F2:
	ldr r0, [r4, #0x20]
	add r1, r6, #0
	bl sub_021C4F30
	ldr r0, [sp, #4]
	ldr r1, _021B4A3C ; =ovy260_21b5010
	b _021B4996
_021B4A00:
	cmp r0, #0
	bne _021B4A70
	ldr r0, [r4, #0x30]
	mov r1, #0x15
	bl ovy260_21b8dd8
	add r0, r4, #0
	mov r1, #0
	add r0, #0xe8
	str r1, [r0]
	mov r0, #0xe
	b _021B47A4
_021B4A18:
	ldr r0, [r4, #0x30]
	bl sub_021B9364
	cmp r0, #0
	bne _021B4A30
	ldr r0, [r4, #0x30]
	bl ovy260_21b8df0
	cmp r0, #0
	beq _021B4A30
	mov r0, #0xf
	str r0, [r5]
_021B4A30:
	b _021B488A
	nop
_021B4A34: .word ovy260_21b4f4c
_021B4A38: .word ovy260_21b336c
_021B4A3C: .word ovy260_21b5010
_021B4A40: .word 0x000001A1
_021B4A44: .word 0x00008057
_021B4A48: .word ovy260_21b46f0
_021B4A4C: .word ovy260_21b4eb4
_021B4A50:
	ldr r0, [r4, #0x30]
	mov r1, #0x16
	bl ovy260_21b8dd8
	add r0, r4, #0
	mov r1, #0
	add r0, #0xe8
	str r1, [r0]
	mov r0, #0x10
	b _021B47A4
_021B4A64:
	ldr r0, [r4, #0x30]
	mov r7, #1
	bl ovy260_21b8df0
	cmp r0, #0
	bne _021B4A72
_021B4A70:
	b _021B4B7E
_021B4A72:
	mov r0, #0x11
	b _021B47A4
_021B4A76:
	ldr r0, [r4, #0x20]
	mov r1, #0
	bl sub_021C4F30
	ldr r0, _021B4C04 ; =0x0000063A
	bl sub_02006254
	add r0, r4, #0
	bl ovy260_21b5434
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x10]
	mov r2, #0x22
	mov r3, #1
	bl sub_021C5888
	mov r0, #0x19
	str r0, [r5]
	ldr r0, [sp, #4]
	mov r1, #0x12
_021B4A9E:
	bl sub_021C5C88
	b _021B4B7E
_021B4AA4:
	add r1, r4, #0
	add r1, #0xe0
	add r0, r4, #0
	ldr r1, [r1]
	add r0, #0xe0
	add r2, r1, #1
	add r1, r4, #0
	ldr r0, [r0]
	add r1, #0xe0
	str r2, [r1]
	cmp r0, #0x78
	bls _021B4B7E
	add r0, r4, #0
	mov r1, #0
	add r0, #0xe0
	str r1, [r0]
	ldr r1, [r6, #0x18]
	add r0, r4, #0
	bl ovy260_21b5264
	mov r0, #0
	mov r1, #0
	bl sub_02044C98
	mov r0, #0x13
	b _021B47A4
_021B4AD8:
	add r0, r4, #0
	bl sub_021B52CC
	cmp r0, #0
	beq _021B4B7E
	mov r0, #0x14
	b _021B47A4
_021B4AE6:
	add r1, r4, #0
	add r1, #0xe0
	add r0, r4, #0
	ldr r1, [r1]
	add r0, #0xe0
	add r2, r1, #1
	add r1, r4, #0
	ldr r0, [r0]
	add r1, #0xe0
	str r2, [r1]
	mov r1, #0x4b
	lsl r1, r1, #2
	cmp r0, r1
	bls _021B4B7E
	add r0, r4, #0
	mov r1, #0
	add r0, #0xe0
	str r1, [r0]
	mov r0, #0x15
	b _021B47A4
_021B4B0E:
	mov r0, #0
	mov r1, #1
	bl sub_02044C98
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x10]
	mov r2, #0x24
	mov r3, #2
	bl sub_021C5888
	mov r0, #0x19
	str r0, [r5]
	ldr r0, [sp, #4]
	mov r1, #0x16
	b _021B4A9E
_021B4B2C:
	add r1, r4, #0
	add r1, #0xe0
	add r0, r4, #0
	ldr r1, [r1]
	add r0, #0xe0
	add r2, r1, #1
	add r1, r4, #0
	ldr r0, [r0]
	add r1, #0xe0
	str r2, [r1]
	cmp r0, #0x3c
	bls _021B4B7E
	add r0, r4, #0
	mov r1, #0
	add r0, #0xe0
	str r1, [r0]
	mov r0, #1
	str r0, [r6, #4]
	ldr r0, [sp, #4]
	bl sub_021C5C7C
	b _021B4B7E
_021B4B58:
	ldr r0, [r4, #0x30]
	bl ovy260_21b933c
	cmp r0, #0
	beq _021B4B7E
	mov r0, #0x18
	b _021B47A4
_021B4B66:
	ldr r0, [r4, #0x30]
	bl ovy260_21b9274
	b _021B4780
_021B4B6E:
	ldr r0, [r4, #0x24]
	bl sub_021C5A1C
	cmp r0, #0
	beq _021B4B7E
	ldr r0, [sp, #4]
	bl sub_021C5C8C
_021B4B7E:
	cmp r7, #0
	beq _021B4BFE
	add r1, r4, #0
	add r1, #0xe8
	add r0, r4, #0
	ldr r1, [r1]
	add r0, #0xe8
	add r2, r1, #1
	add r1, r4, #0
	ldr r0, [r0]
	add r1, #0xe8
	str r2, [r1]
	mov r1, #0x96
	lsl r1, r1, #4
	mov r6, #0
	cmp r0, r1
	bls _021B4BA8
	add r0, r4, #0
	add r0, #0xe8
	str r6, [r0]
	mov r6, #1
_021B4BA8:
	ldr r0, [r4, #0x30]
	bl sub_021B9364
	cmp r0, #0
	beq _021B4BB4
	mov r6, #1
_021B4BB4:
	cmp r6, #0
	beq _021B4BBC
	mov r0, #0x17
	str r0, [r5]
_021B4BBC:
	ldr r0, [r4, #0x30]
	mov r1, #0
	mov r2, #1
	mov r5, #0
	bl ovy260_21b8e08
	cmp r0, #1
	beq _021B4BD4
	cmp r0, #2
	beq _021B4BEE
	cmp r0, #4
	bne _021B4BFE
_021B4BD4:
	ldr r0, [r4, #0x20]
	mov r1, #0
	bl sub_021C4F30
	ldr r0, [sp, #4]
	ldr r1, _021B4C08 ; =ovy260_21b4eb4
	bl sub_021C5C74
	add r0, r4, #0
	bl sub_021B57CC
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
_021B4BEE:
	ldr r0, [r4, #0x20]
	add r1, r5, #0
	bl sub_021C4F30
	ldr r0, [sp, #4]
	ldr r1, _021B4C0C ; =ovy260_21b5010
	bl sub_021C5C74
_021B4BFE:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021B4C04: .word 0x0000063A
_021B4C08: .word ovy260_21b4eb4
_021B4C0C: .word ovy260_21b5010
	thumb_func_end ovy260_21b46f0

	thumb_func_start ovy260_21b4c10
ovy260_21b4c10: ; 0x021B4C10
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r1, [r5]
	add r4, r2, #0
	add r7, r0, #0
	ldr r6, [r4, #0x40]
	cmp r1, #0xd
	bls _021B4C22
	b _021B4E60
_021B4C22:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021B4C2E: ; jump table
	.short _021B4C4A - _021B4C2E - 2 ; case 0
	.short _021B4C7E - _021B4C2E - 2 ; case 1
	.short _021B4C92 - _021B4C2E - 2 ; case 2
	.short _021B4CD6 - _021B4C2E - 2 ; case 3
	.short _021B4D02 - _021B4C2E - 2 ; case 4
	.short _021B4C5E - _021B4C2E - 2 ; case 5
	.short _021B4D44 - _021B4C2E - 2 ; case 6
	.short _021B4D78 - _021B4C2E - 2 ; case 7
	.short _021B4DC6 - _021B4C2E - 2 ; case 8
	.short _021B4DEA - _021B4C2E - 2 ; case 9
	.short _021B4DF0 - _021B4C2E - 2 ; case 10
	.short _021B4E16 - _021B4C2E - 2 ; case 11
	.short _021B4E24 - _021B4C2E - 2 ; case 12
	.short _021B4E50 - _021B4C2E - 2 ; case 13
_021B4C4A:
	ldr r1, [r6, #0xc]
	cmp r1, #2
	bne _021B4C58
	ldr r1, _021B4E64 ; =ovy260_21b4e6c
	bl sub_021C5C74
	pop {r3, r4, r5, r6, r7, pc}
_021B4C58:
	mov r0, #5
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B4C5E:
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x10]
	mov r2, #0x2b
	mov r3, #2
	bl sub_021C5888
	mov r0, #0xd
	str r0, [r5]
	add r0, r7, #0
	mov r1, #1
	bl sub_021C5C88
	mov r0, #0
	add r4, #0xe0
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021B4C7E:
	ldr r1, [r6, #0x2c]
	ldr r0, [r4, #0x30]
	add r1, #0x10
	bl ovy260_21bb2dc
	cmp r0, #0
	beq _021B4D28
	mov r0, #2
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B4C92:
	ldr r1, [r6, #0x2c]
	ldr r0, [r4, #0x30]
	add r1, #0x14
	bl ovy260_21bb2f4
	cmp r0, #0
	beq _021B4CA4
	mov r0, #3
	str r0, [r5]
_021B4CA4:
	ldr r0, [r4, #0x30]
	mov r1, #0
	mov r2, #1
	mov r6, #0
	bl ovy260_21b8e08
	cmp r0, #1
	beq _021B4CBC
	cmp r0, #2
	beq _021B4CC8
	cmp r0, #4
	bne _021B4D28
_021B4CBC:
	mov r0, #0
	add r4, #0xe0
	str r0, [r4]
	mov r0, #9
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B4CC8:
	ldr r1, _021B4E68 ; =ovy260_21b5010
	add r4, #0xe0
	add r0, r7, #0
	str r6, [r4]
	bl sub_021C5C74
	pop {r3, r4, r5, r6, r7, pc}
_021B4CD6:
	ldr r6, [r6, #0x18]
	add r0, r6, #0
	bl sub_02008BFC
	cmp r0, #0x16
	beq _021B4CEC
	add r0, r6, #0
	bl sub_02008BFC
	cmp r0, #0x17
	bne _021B4CFC
_021B4CEC:
	ldr r0, [r4, #0x30]
	bl ovy260_21b9378
	cmp r0, #0
	beq _021B4D28
	mov r0, #4
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B4CFC:
	mov r0, #6
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B4D02:
	ldr r0, [r4, #0x30]
	bl sub_021B93C4
	cmp r0, #0
	beq _021B4D10
	mov r0, #6
	str r0, [r5]
_021B4D10:
	ldr r0, [r4, #0x30]
	mov r1, #0
	mov r2, #1
	mov r6, #0
	bl ovy260_21b8e08
	cmp r0, #1
	beq _021B4D2A
	cmp r0, #2
	beq _021B4D36
	cmp r0, #4
	beq _021B4D2A
_021B4D28:
	b _021B4E60
_021B4D2A:
	mov r0, #0
	add r4, #0xe0
	str r0, [r4]
	mov r0, #9
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B4D36:
	ldr r1, _021B4E68 ; =ovy260_21b5010
	add r4, #0xe0
	add r0, r7, #0
	str r6, [r4]
	bl sub_021C5C74
	pop {r3, r4, r5, r6, r7, pc}
_021B4D44:
	ldr r0, [r6, #8]
	ldr r0, [r0]
	bl sub_02017934
	bl sub_0200F6F4
	add r7, r0, #0
	ldr r0, [r6, #0x18]
	bl sub_02008BD0
	add r1, r0, #0
	add r0, r7, #0
	bl sub_0200F700
	ldr r0, [r6, #8]
	ldr r1, [r6, #0x2c]
	ldr r0, [r0]
	ldr r1, [r1]
	bl sub_021C5C94
	ldr r0, [r4, #0x30]
	bl sub_021B928C
	mov r0, #7
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B4D78:
	add r0, r4, #0
	add r0, #0xe0
	ldr r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xe0
	str r1, [r0]
	ldr r0, [r4, #0x30]
	bl ovy260_21b9298
	cmp r0, #0
	beq _021B4D94
	mov r0, #8
	str r0, [r5]
_021B4D94:
	ldr r0, [r4, #0x30]
	mov r1, #0
	mov r2, #1
	mov r6, #0
	bl ovy260_21b8e08
	cmp r0, #1
	beq _021B4DAC
	cmp r0, #2
	beq _021B4DB8
	cmp r0, #4
	bne _021B4E60
_021B4DAC:
	mov r0, #0
	add r4, #0xe0
	str r0, [r4]
	mov r0, #9
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B4DB8:
	ldr r1, _021B4E68 ; =ovy260_21b5010
	add r4, #0xe0
	add r0, r7, #0
	str r6, [r4]
	bl sub_021C5C74
	pop {r3, r4, r5, r6, r7, pc}
_021B4DC6:
	add r0, r4, #0
	add r0, #0xe0
	ldr r2, [r0]
	add r0, r4, #0
	add r0, #0xe0
	ldr r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xe0
	str r1, [r0]
	cmp r2, #0x1e
	bls _021B4E60
	mov r0, #0
	add r4, #0xe0
	str r0, [r4]
	mov r0, #9
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B4DEA:
	mov r0, #0xa
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B4DF0:
	ldr r0, [r6, #8]
	ldr r1, [r6, #0x2c]
	ldr r0, [r0]
	ldr r1, [r1]
	bl sub_021C5CD4
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x10]
	mov r2, #0x28
	mov r3, #2
	bl sub_021C5888
	mov r0, #0xd
	str r0, [r5]
	add r0, r7, #0
	mov r1, #0xb
	bl sub_021C5C88
	pop {r3, r4, r5, r6, r7, pc}
_021B4E16:
	ldr r0, [r6, #8]
	ldr r0, [r0]
	bl sub_0201782C
	mov r0, #0xc
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B4E24:
	ldr r0, [r6, #8]
	ldr r0, [r0]
	bl sub_02017850
	cmp r0, #3
	bhi _021B4E60
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021B4E3C: ; jump table
	.short _021B4E60 - _021B4E3C - 2 ; case 0
	.short _021B4E60 - _021B4E3C - 2 ; case 1
	.short _021B4E44 - _021B4E3C - 2 ; case 2
	.short _021B4E44 - _021B4E3C - 2 ; case 3
_021B4E44:
	mov r0, #2
	str r0, [r6, #4]
	add r0, r7, #0
	bl sub_021C5C7C
	pop {r3, r4, r5, r6, r7, pc}
_021B4E50:
	ldr r0, [r4, #0x24]
	bl sub_021C5A1C
	cmp r0, #0
	beq _021B4E60
	add r0, r7, #0
	bl sub_021C5C8C
_021B4E60:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021B4E64: .word ovy260_21b4e6c
_021B4E68: .word ovy260_21b5010
	thumb_func_end ovy260_21b4c10

	thumb_func_start ovy260_21b4e6c
ovy260_21b4e6c: ; 0x021B4E6C
	push {r4, lr}
	ldr r3, [r1]
	add r4, r0, #0
	cmp r3, #3
	bhi _021B4EAE
	add r3, r3, r3
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_021B4E82: ; jump table
	.short _021B4E8A - _021B4E82 - 2 ; case 0
	.short _021B4E90 - _021B4E82 - 2 ; case 1
	.short _021B4E96 - _021B4E82 - 2 ; case 2
	.short _021B4E9E - _021B4E82 - 2 ; case 3
_021B4E8A:
	mov r0, #1
	str r0, [r1]
	pop {r4, pc}
_021B4E90:
	mov r0, #2
	str r0, [r1]
	pop {r4, pc}
_021B4E96:
	ldr r1, _021B4EB0 ; =ovy260_21b4eb4
	bl sub_021C5C74
	pop {r4, pc}
_021B4E9E:
	ldr r0, [r2, #0x24]
	bl sub_021C5A1C
	cmp r0, #0
	beq _021B4EAE
	add r0, r4, #0
	bl sub_021C5C8C
_021B4EAE:
	pop {r4, pc}
	.align 2, 0
_021B4EB0: .word ovy260_21b4eb4
	thumb_func_end ovy260_21b4e6c

	thumb_func_start ovy260_21b4eb4
ovy260_21b4eb4: ; 0x021B4EB4
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5]
	add r4, r2, #0
	cmp r0, #3
	bhi _021B4F42
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021B4ECE: ; jump table
	.short _021B4ED6 - _021B4ECE - 2 ; case 0
	.short _021B4EF0 - _021B4ECE - 2 ; case 1
	.short _021B4EFE - _021B4ECE - 2 ; case 2
	.short _021B4F32 - _021B4ECE - 2 ; case 3
_021B4ED6:
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x10]
	mov r2, #0x26
	mov r3, #1
	bl sub_021C5888
	mov r0, #3
	str r0, [r5]
	add r0, r6, #0
	mov r1, #1
	bl sub_021C5C88
	pop {r4, r5, r6, pc}
_021B4EF0:
	add r0, r4, #0
	mov r1, #0
	bl ovy260_21b53bc
	mov r0, #2
	str r0, [r5]
	pop {r4, r5, r6, pc}
_021B4EFE:
	add r0, r4, #0
	bl ovy260_21b5448
	add r5, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	beq _021B4F42
	add r0, r4, #0
	bl ovy260_21b5434
	cmp r5, #0
	beq _021B4F1E
	cmp r5, #1
	beq _021B4F28
	pop {r4, r5, r6, pc}
_021B4F1E:
	ldr r1, _021B4F44 ; =ovy260_21b46f0
	add r0, r6, #0
	bl sub_021C5C74
	pop {r4, r5, r6, pc}
_021B4F28:
	ldr r1, _021B4F48 ; =ovy260_21b4f4c
	add r0, r6, #0
	bl sub_021C5C74
	pop {r4, r5, r6, pc}
_021B4F32:
	ldr r0, [r4, #0x24]
	bl sub_021C5A1C
	cmp r0, #0
	beq _021B4F42
	add r0, r6, #0
	bl sub_021C5C8C
_021B4F42:
	pop {r4, r5, r6, pc}
	.align 2, 0
_021B4F44: .word ovy260_21b46f0
_021B4F48: .word ovy260_21b4f4c
	thumb_func_end ovy260_21b4eb4

	thumb_func_start ovy260_21b4f4c
ovy260_21b4f4c: ; 0x021B4F4C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r2, #0
	add r4, r1, #0
	ldr r1, [r5, #0x40]
	add r7, r0, #0
	str r1, [sp]
	ldr r1, [r4]
	cmp r1, #5
	bhi _021B5006
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021B4F6A: ; jump table
	.short _021B4F76 - _021B4F6A - 2 ; case 0
	.short _021B4F90 - _021B4F6A - 2 ; case 1
	.short _021B4F9E - _021B4F6A - 2 ; case 2
	.short _021B4FD4 - _021B4F6A - 2 ; case 3
	.short _021B4FEE - _021B4F6A - 2 ; case 4
	.short _021B4FF6 - _021B4F6A - 2 ; case 5
_021B4F76:
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x10]
	mov r2, #0x27
	mov r3, #1
	bl sub_021C5888
	mov r0, #5
	str r0, [r4]
	add r0, r7, #0
	mov r1, #1
	bl sub_021C5C88
	pop {r3, r4, r5, r6, r7, pc}
_021B4F90:
	add r0, r5, #0
	mov r1, #0
	bl ovy260_21b53bc
	mov r0, #2
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021B4F9E:
	add r0, r5, #0
	bl ovy260_21b5448
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _021B5006
	add r0, r5, #0
	bl ovy260_21b5434
	cmp r6, #0
	beq _021B4FBE
	cmp r6, #1
	beq _021B4FCA
	pop {r3, r4, r5, r6, r7, pc}
_021B4FBE:
	ldr r0, [sp]
	mov r1, #0
	str r1, [r0, #4]
	mov r0, #3
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021B4FCA:
	ldr r1, _021B5008 ; =ovy260_21b4eb4
	add r0, r7, #0
	bl sub_021C5C74
	pop {r3, r4, r5, r6, r7, pc}
_021B4FD4:
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x10]
	mov r2, #0x2b
	mov r3, #2
	bl sub_021C5888
	mov r0, #5
	str r0, [r4]
	add r0, r7, #0
	mov r1, #4
	bl sub_021C5C88
	pop {r3, r4, r5, r6, r7, pc}
_021B4FEE:
	ldr r1, _021B500C ; =ovy260_21b5038
	bl sub_021C5C74
	pop {r3, r4, r5, r6, r7, pc}
_021B4FF6:
	ldr r0, [r5, #0x24]
	bl sub_021C5A1C
	cmp r0, #0
	beq _021B5006
	add r0, r7, #0
	bl sub_021C5C8C
_021B5006:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021B5008: .word ovy260_21b4eb4
_021B500C: .word ovy260_21b5038
	thumb_func_end ovy260_21b4f4c

	thumb_func_start ovy260_21b5010
ovy260_21b5010: ; 0x021B5010
	push {r3, r4, r5, lr}
	add r4, r2, #0
	add r5, r0, #0
	ldr r0, [r4, #0x40]
	mov r1, #3
	str r1, [r0, #4]
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _021B502A
	bl ovy260_21b8da4
	mov r0, #0
	str r0, [r4, #0x30]
_021B502A:
	bl sub_02012154
	add r0, r5, #0
	bl sub_021C5C7C
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy260_21b5010

	thumb_func_start ovy260_21b5038
ovy260_21b5038: ; 0x021B5038
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r1]
	add r4, r2, #0
	cmp r0, #0
	bne _021B5058
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _021B5052
	bl ovy260_21b8da4
	mov r0, #0
	str r0, [r4, #0x30]
_021B5052:
	add r0, r5, #0
	bl sub_021C5C7C
_021B5058:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy260_21b5038

	thumb_func_start ovy260_21b505c
ovy260_21b505c: ; 0x021B505C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r2, #0
	ldr r1, [r5, #0x40]
	ldr r2, [r4]
	ldr r1, [r1, #0x14]
	cmp r2, #4
	bhi _021B510C
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021B5078: ; jump table
	.short _021B5082 - _021B5078 - 2 ; case 0
	.short _021B509C - _021B5078 - 2 ; case 1
	.short _021B50AE - _021B5078 - 2 ; case 2
	.short _021B50DE - _021B5078 - 2 ; case 3
	.short _021B5108 - _021B5078 - 2 ; case 4
_021B5082:
	add r0, r5, #0
	mov r1, #0
	add r0, #0xe0
	add r5, #0x44
	str r1, [r0]
	add r0, r5, #0
	mov r2, #0x9c
	blx MI_CpuFill8
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021B509C:
	ldr r0, [r5, #0x30]
	add r1, #0xd4
	mov r2, #1
	bl ovy260_21bbb80
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021B50AE:
	add r1, r5, #0
	ldr r0, [r5, #0x30]
	add r1, #0x44
	bl ovy260_21bbc50
	cmp r0, #1
	bne _021B50C2
	mov r0, #3
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021B50C2:
	cmp r0, #2
	bne _021B50D0
	mov r0, #2
	str r0, [r5, #0x3c]
	mov r0, #4
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021B50D0:
	cmp r0, #3
	bne _021B510C
	mov r0, #3
	str r0, [r5, #0x3c]
	mov r0, #4
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021B50DE:
	add r0, r5, #0
	add r0, #0x44
	ldrb r0, [r0]
	cmp r0, #0
	bne _021B50FE
	add r0, r5, #0
	add r0, #0x60
	add r1, #0x54
	mov r2, #0x80
	blx MI_CpuCopy8
	mov r0, #0
	str r0, [r5, #0x3c]
	mov r0, #4
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021B50FE:
	mov r0, #1
	str r0, [r5, #0x3c]
	mov r0, #4
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021B5108:
	bl sub_021C5C7C
_021B510C:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy260_21b505c

	thumb_func_start ovy260_21b5110
ovy260_21b5110: ; 0x021B5110
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	add r5, r1, #0
	cmp r0, #0
	bne _021B5200
	ldr r0, [r4, #0x40]
	ldr r0, [r0, #8]
	ldr r0, [r0]
	bl sub_0201736C
	add r7, r0, #0
	ldr r0, [r4]
	bl sub_021C2668
	str r0, [sp, #0x18]
	add r0, sp, #0x1c
	mov r1, #0
	mov r2, #0x14
	blx MI_CpuFill8
	cmp r5, #0
	bne _021B5198
	ldr r1, [r4, #0x40]
	mov r2, #0
	ldr r0, [r1, #8]
	mov r6, #1
	ldr r0, [r0, #4]
	str r0, [sp, #0x1c]
	ldr r0, [r1, #0x10]
	ldr r1, [r1, #8]
	ldr r1, [r1, #4]
	add r1, r1, #5
	bl sub_0200E870
	add r5, sp, #0x1c
	strh r0, [r5, #4]
	ldr r1, [r4, #0x40]
	mov r2, #1
	ldr r0, [r1, #0x10]
	ldr r1, [r1, #8]
	ldr r1, [r1, #4]
	add r1, r1, #5
	bl sub_0200E870
	strh r0, [r5, #0x10]
	ldr r1, [r4, #0x40]
	mov r2, #2
	ldr r0, [r1, #0x10]
	ldr r1, [r1, #8]
	ldr r1, [r1, #4]
	add r1, r1, #5
	bl sub_0200E870
	strh r0, [r5, #0x12]
	ldrh r1, [r5, #0x10]
	ldrh r0, [r5, #0x12]
	add r1, r1, r0
	str r1, [sp, #0x28]
	ldrh r0, [r5, #4]
	cmp r0, #0
	bne _021B51D2
	cmp r1, #0
	bne _021B51D2
	ldr r0, _021B5204 ; =0x000005DC
	strh r0, [r5, #4]
	b _021B51D2
_021B5198:
	cmp r5, #1
	bne _021B51D2
	ldr r1, [r4, #0x40]
	add r5, sp, #0x1c
	ldr r0, [r1, #8]
	mov r2, #1
	ldr r0, [r0, #4]
	mov r6, #0
	str r0, [sp, #0x1c]
	mov r0, #0
	strh r0, [r5, #4]
	ldr r0, [r1, #0x10]
	ldr r1, [r1, #8]
	ldr r1, [r1, #4]
	bl sub_0200E870
	strh r0, [r5, #0x10]
	ldr r1, [r4, #0x40]
	mov r2, #2
	ldr r0, [r1, #0x10]
	ldr r1, [r1, #8]
	ldr r1, [r1, #4]
	bl sub_0200E870
	strh r0, [r5, #0x12]
	ldrh r1, [r5, #0x10]
	ldrh r0, [r5, #0x12]
	add r0, r1, r0
	str r0, [sp, #0x28]
_021B51D2:
	add r0, r7, #0
	bl sub_02008BF4
	str r0, [sp, #0x24]
	ldr r0, [r4, #4]
	ldr r3, [sp, #0x18]
	str r0, [sp]
	ldr r0, [r4, #8]
	add r1, r6, #0
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	add r2, r7, #0
	str r0, [sp, #8]
	ldr r0, [r4, #0x10]
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	str r0, [sp, #0x10]
	mov r0, #0x57
	str r0, [sp, #0x14]
	add r0, sp, #0x1c
	bl sub_021C2D44
	str r0, [r4, #0x18]
_021B5200:
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021B5204: .word 0x000005DC
	thumb_func_end ovy260_21b5110

	thumb_func_start ovy260_21b5208
ovy260_21b5208: ; 0x021B5208
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _021B521A
	bl sub_021C2E64
	mov r0, #0
	str r0, [r4, #0x18]
_021B521A:
	pop {r4, pc}
	thumb_func_end ovy260_21b5208

	thumb_func_start sub_021B521C
sub_021B521C: ; 0x021B521C
	ldr r0, [r0, #0x18]
	ldr r3, _021B5224 ; =sub_021C35EC
	bx r3
	nop
_021B5224: .word sub_021C35EC
	thumb_func_end sub_021B521C

	thumb_func_start sub_021B5228
sub_021B5228: ; 0x021B5228
	ldr r0, [r0, #0x18]
	ldr r3, _021B5230 ; =sub_021C3720
	bx r3
	nop
_021B5230: .word sub_021C3720
	thumb_func_end sub_021B5228

	thumb_func_start ovy260_21b5234
ovy260_21b5234: ; 0x021B5234
	push {r4, lr}
	add r4, r0, #0
	bl ovy260_21b5110
_021B523C:
	add r0, r4, #0
	bl sub_021B521C
	cmp r0, #0
	beq _021B523C
	pop {r4, pc}
	thumb_func_end ovy260_21b5234

	thumb_func_start ovy260_21b5248
ovy260_21b5248: ; 0x021B5248
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _021B5262
_021B5252:
	add r0, r4, #0
	bl sub_021B5228
	cmp r0, #0
	beq _021B5252
	add r0, r4, #0
	bl ovy260_21b5208
_021B5262:
	pop {r4, pc}
	thumb_func_end ovy260_21b5248

	thumb_func_start ovy260_21b5264
ovy260_21b5264: ; 0x021B5264
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r0, [r5, #0x1c]
	add r7, r1, #0
	cmp r0, #0
	bne _021B52B4
	ldr r0, [r5]
	bl sub_021C2668
	add r1, r0, #0
	ldr r0, [r5, #0x40]
	ldr r0, [r0]
	cmp r0, #0
	bne _021B5288
	mov r4, #1
	mov r6, #2
	b _021B5290
_021B5288:
	cmp r0, #1
	bne _021B5290
	mov r4, #0
	mov r6, #3
_021B5290:
	ldr r0, [r5, #0xc]
	str r0, [sp]
	ldr r0, [r5, #0x10]
	str r0, [sp, #4]
	ldr r0, [r5, #0x14]
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	str r4, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	mov r0, #0x57
	str r0, [sp, #0x18]
	ldr r2, [r5, #4]
	ldr r3, [r5, #8]
	add r0, r7, #0
	bl sub_021C4644
	str r0, [r5, #0x1c]
_021B52B4:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy260_21b5264

	thumb_func_start ovy260_21b52b8
ovy260_21b52b8: ; 0x021B52B8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _021B52CA
	bl sub_021C4834
	mov r0, #0
	str r0, [r4, #0x1c]
_021B52CA:
	pop {r4, pc}
	thumb_func_end ovy260_21b52b8

	thumb_func_start sub_021B52CC
sub_021B52CC: ; 0x021B52CC
	ldr r0, [r0, #0x1c]
	ldr r3, _021B52D4 ; =sub_021C48A0
	bx r3
	nop
_021B52D4: .word sub_021C48A0
	thumb_func_end sub_021B52CC

	thumb_func_start ovy260_21b52d8
ovy260_21b52d8: ; 0x021B52D8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	str r0, [sp]
	cmp r4, #4
	bhi _021B5334
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021B52F0: ; jump table
	.short _021B52FA - _021B52F0 - 2 ; case 0
	.short _021B5306 - _021B52F0 - 2 ; case 1
	.short _021B5312 - _021B52F0 - 2 ; case 2
	.short _021B531E - _021B52F0 - 2 ; case 3
	.short _021B532A - _021B52F0 - 2 ; case 4
_021B52FA:
	ldr r0, [r2, #0x40]
	ldr r0, [r0, #0x38]
	ldr r7, [r0, #0xc]
	ldr r6, [r0, #0x40]
	ldr r5, [r0, #0x3c]
	b _021B5334
_021B5306:
	ldr r0, [r2, #0x40]
	ldr r0, [r0, #0x38]
	ldr r7, [r0]
	ldr r6, [r0, #0x28]
	ldr r5, [r0, #0x24]
	b _021B5334
_021B5312:
	ldr r0, [r2, #0x40]
	ldr r0, [r0, #0x38]
	ldr r7, [r0, #0x10]
	ldr r6, [r0, #0x48]
	ldr r5, [r0, #0x44]
	b _021B5334
_021B531E:
	ldr r0, [r2, #0x40]
	ldr r0, [r0, #0x38]
	ldr r7, [r0, #4]
	ldr r6, [r0, #0x30]
	ldr r5, [r0, #0x2c]
	b _021B5334
_021B532A:
	ldr r0, [r2, #0x40]
	ldr r0, [r0, #0x38]
	ldr r7, [r0, #8]
	ldr r6, [r0, #0x38]
	ldr r5, [r0, #0x34]
_021B5334:
	mov r2, #0
	str r2, [sp, #4]
	ldr r0, [sp]
	add r1, r4, #5
	mov r2, #0
	bl sub_0200E870
	cmp r7, r0
	bne _021B5362
	ldr r0, [sp]
	add r1, r4, #5
	mov r2, #1
	bl sub_0200E870
	cmp r6, r0
	bne _021B5362
	ldr r0, [sp]
	add r1, r4, #5
	mov r2, #2
	bl sub_0200E870
	cmp r5, r0
	beq _021B5366
_021B5362:
	mov r0, #1
	str r0, [sp, #4]
_021B5366:
	ldr r0, [sp]
	add r1, r4, #5
	mov r2, #0
	add r3, r7, #0
	bl sub_0200E87C
	ldr r0, [sp]
	add r1, r4, #5
	mov r2, #1
	add r3, r6, #0
	bl sub_0200E87C
	ldr r0, [sp]
	add r1, r4, #5
	mov r2, #2
	add r3, r5, #0
	bl sub_0200E87C
	ldr r0, [sp, #4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy260_21b52d8

	thumb_func_start ovy260_21b5390
ovy260_21b5390: ; 0x021B5390
	push {r3, lr}
	cmp r2, #4
	bhi _021B53BA
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021B53A2: ; jump table
	.short _021B53B4 - _021B53A2 - 2 ; case 0
	.short _021B53AC - _021B53A2 - 2 ; case 1
	.short _021B53BA - _021B53A2 - 2 ; case 2
	.short _021B53B4 - _021B53A2 - 2 ; case 3
	.short _021B53AC - _021B53A2 - 2 ; case 4
_021B53AC:
	mov r2, #1
	bl sub_0200E8A0
	pop {r3, pc}
_021B53B4:
	mov r2, #2
	bl sub_0200E8A0
_021B53BA:
	pop {r3, pc}
	thumb_func_end ovy260_21b5390

	thumb_func_start ovy260_21b53bc
ovy260_21b53bc: ; 0x021B53BC
	push {r4, r5, r6, lr}
	sub sp, #0x30
	add r5, r0, #0
	ldr r0, [r5, #0x28]
	add r4, r1, #0
	cmp r0, #0
	bne _021B542E
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x30
	mov r6, #0
	blx MI_CpuFill8
	ldr r0, [r5, #0x10]
	add r1, sp, #0
	str r0, [sp]
	ldr r0, [r5, #8]
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	str r0, [sp, #8]
	strh r6, [r1, #0x20]
	mov r0, #0xf
	strh r0, [r1, #0x22]
	mov r0, #0xd
	strh r0, [r1, #0x24]
	mov r0, #1
	strh r0, [r1, #0x26]
	cmp r4, #0
	beq _021B53FC
	cmp r4, #1
	beq _021B540C
	b _021B5422
_021B53FC:
	mov r2, #0x1f
	str r2, [sp, #0xc]
	mov r2, #0x20
	str r2, [sp, #0x10]
	mov r2, #2
	str r2, [sp, #0x1c]
	str r0, [sp, #0x28]
	b _021B5420
_021B540C:
	mov r2, #0x1b
	str r2, [sp, #0xc]
	mov r2, #0x1c
	str r2, [sp, #0x10]
	mov r2, #0x1d
	str r2, [sp, #0x14]
	mov r2, #3
	str r0, [sp, #0x28]
	str r2, [sp, #0x1c]
	mov r0, #2
_021B5420:
	strh r0, [r1, #0x2c]
_021B5422:
	add r0, sp, #0
	mov r1, #0x57
	str r4, [r5, #0x2c]
	bl sub_021C5A64
	str r0, [r5, #0x28]
_021B542E:
	add sp, #0x30
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy260_21b53bc

	thumb_func_start ovy260_21b5434
ovy260_21b5434: ; 0x021B5434
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _021B5446
	bl sub_021C5BA4
	mov r0, #0
	str r0, [r4, #0x28]
_021B5446:
	pop {r4, pc}
	thumb_func_end ovy260_21b5434

	thumb_func_start ovy260_21b5448
ovy260_21b5448: ; 0x021B5448
	push {r3, lr}
	ldr r0, [r0, #0x28]
	cmp r0, #0
	beq _021B5456
	bl sub_021C5BD4
	pop {r3, pc}
_021B5456:
	mov r0, #0
	mvn r0, r0
	pop {r3, pc}
	thumb_func_end ovy260_21b5448

	thumb_func_start ovy260_21b545c
ovy260_21b545c: ; 0x021B545C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	mov r1, #0
	mov r2, #0x10
	add r4, r0, #0
	mov r6, #0
	blx MI_CpuFill8
	ldr r0, [r5, #0x40]
	ldr r1, [r0, #0x38]
	ldr r1, [r1, #0x20]
	str r6, [r4, #8]
	str r1, [r4, #4]
	ldr r1, [r0, #0x38]
	ldr r5, [r1, #0x44]
	ldr r3, [r1, #0x34]
	str r5, [sp]
	ldr r5, [r1, #0x48]
	ldr r2, [r1, #0x38]
	str r5, [sp, #4]
	ldr r5, [r1, #0x24]
	ldr r6, [r1, #0x2c]
	str r5, [sp, #8]
	ldr r5, [r1, #0x28]
	ldr r7, [r1, #0x30]
	mov ip, r5
	ldr r5, [r1, #0x40]
	ldr r1, [r1, #0x3c]
	add r1, r5, r1
	mov r5, ip
	add r5, r5, r1
	ldr r1, [sp, #8]
	add r5, r1, r5
	ldr r1, [sp, #4]
	add r1, r1, r5
	ldr r5, [sp]
	add r1, r5, r1
	add r1, r7, r1
	add r1, r6, r1
	add r1, r2, r1
	add r1, r3, r1
	str r1, [r4, #0xc]
	ldr r1, [r0, #8]
	ldr r1, [r1, #4]
	cmp r1, #4
	bhi _021B54FE
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021B54C6: ; jump table
	.short _021B54D0 - _021B54C6 - 2 ; case 0
	.short _021B54DA - _021B54C6 - 2 ; case 1
	.short _021B54E4 - _021B54C6 - 2 ; case 2
	.short _021B54EE - _021B54C6 - 2 ; case 3
	.short _021B54F8 - _021B54C6 - 2 ; case 4
_021B54D0:
	ldr r0, [r0, #0x38]
	add sp, #0xc
	ldr r0, [r0, #0xc]
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021B54DA:
	ldr r0, [r0, #0x38]
	add sp, #0xc
	ldr r0, [r0]
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021B54E4:
	ldr r0, [r0, #0x38]
	add sp, #0xc
	ldr r0, [r0, #0x10]
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021B54EE:
	ldr r0, [r0, #0x38]
	add sp, #0xc
	ldr r0, [r0, #4]
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021B54F8:
	ldr r0, [r0, #0x38]
	ldr r0, [r0, #8]
	str r0, [r4]
_021B54FE:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy260_21b545c

	thumb_func_start ovy260_21b5504
ovy260_21b5504: ; 0x021B5504
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x40]
	ldr r0, [r0, #8]
	ldr r6, [r0]
	add r0, r6, #0
	bl sub_02017934
	add r7, r0, #0
	mov r0, #0x64
	str r0, [r5, #0x44]
	add r0, r6, #0
	bl sub_0201736C
	str r0, [sp]
	bl sub_02008B08
	add r2, r0, #0
	ldr r0, [sp]
	add r1, r5, #0
	blx MI_CpuCopy8
	add r0, r7, #0
	bl sub_0200EF7C
	add r2, r5, #0
	mov r1, #0
	add r2, #0x38
	bl sub_0200EF90
	ldr r1, [r4, #0x40]
	ldr r0, [r1]
	cmp r0, #0
	ldr r0, [r1, #0x10]
	bne _021B5566
	ldr r1, [r1, #8]
	mov r2, #1
	ldr r1, [r1, #4]
	add r1, r1, #5
	bl sub_0200E870
	str r0, [r5, #0x28]
	ldr r1, [r4, #0x40]
	ldr r0, [r1, #0x10]
	ldr r1, [r1, #8]
	ldr r1, [r1, #4]
	add r1, r1, #5
	b _021B557A
_021B5566:
	ldr r1, [r1, #8]
	mov r2, #1
	ldr r1, [r1, #4]
	bl sub_0200E870
	str r0, [r5, #0x28]
	ldr r1, [r4, #0x40]
	ldr r0, [r1, #0x10]
	ldr r1, [r1, #8]
	ldr r1, [r1, #4]
_021B557A:
	mov r2, #2
	bl sub_0200E870
	str r0, [r5, #0x2c]
	add r0, r6, #0
	bl sub_02017238
	bl sub_0200A3DC
	str r0, [r5, #0x48]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy260_21b5504

	thumb_func_start ovy260_21b5590
ovy260_21b5590: ; 0x021B5590
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [r4, #0x40]
	add r5, r0, #0
	ldr r0, [r1]
	cmp r0, #0
	ldr r0, [r1, #0x10]
	bne _021B55D4
	ldr r1, [r1, #8]
	mov r2, #1
	ldr r1, [r1, #4]
	add r1, r1, #5
	bl sub_0200E870
	str r0, [r5, #0x28]
	ldr r1, [r4, #0x40]
	mov r2, #2
	ldr r0, [r1, #0x10]
	ldr r1, [r1, #8]
	ldr r1, [r1, #4]
	add r1, r1, #5
	bl sub_0200E870
	str r0, [r5, #0x2c]
	ldr r1, [r4, #0x40]
	mov r2, #0
	ldr r0, [r1, #0x10]
	ldr r1, [r1, #8]
	ldr r1, [r1, #4]
	add r1, r1, #5
	bl sub_0200E870
	str r0, [r5, #0x34]
	pop {r3, r4, r5, pc}
_021B55D4:
	ldr r1, [r1, #8]
	mov r2, #1
	ldr r1, [r1, #4]
	bl sub_0200E870
	str r0, [r5, #0x28]
	ldr r1, [r4, #0x40]
	mov r2, #2
	ldr r0, [r1, #0x10]
	ldr r1, [r1, #8]
	ldr r1, [r1, #4]
	bl sub_0200E870
	str r0, [r5, #0x2c]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy260_21b5590

	thumb_func_start ovy260_21b55f4
ovy260_21b55f4: ; 0x021B55F4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x38]
	bl sub_021C5C74
	ldr r0, _021B5604 ; =0x0000FFFF
	str r0, [r4, #0x3c]
	pop {r4, pc}
	.align 2, 0
_021B5604: .word 0x0000FFFF
	thumb_func_end ovy260_21b55f4

	thumb_func_start ovy260_21b5608
ovy260_21b5608: ; 0x021B5608
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x38]
	bl sub_021C5C54
	ldr r0, [r4, #0x38]
	bl sub_021C5C64
	cmp r0, #0
	beq _021B5620
	ldr r0, [r4, #0x3c]
	pop {r4, pc}
_021B5620:
	ldr r0, _021B5624 ; =0x0000FFFF
	pop {r4, pc}
	.align 2, 0
_021B5624: .word 0x0000FFFF
	thumb_func_end ovy260_21b5608

	thumb_func_start ovy260_21b5628
ovy260_21b5628: ; 0x021B5628
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	str r0, [sp, #4]
	ldr r0, _021B56BC ; =0x00007FFF
	add r5, #0xd4
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	str r0, [sp, #8]
	bl sub_0201C2C8
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0201FDF8
	ldr r2, [sp, #8]
	add r1, r0, #0
	lsl r2, r2, #0x10
	add r0, r4, #0
	lsr r2, r2, #0x10
	bl sub_0219D458
	add r7, r0, #0
	add r0, r5, #0
	mov r4, #0
	bl sub_0201FDF8
	cmp r0, #0
	ble _021B568A
_021B5664:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0201FF08
	add r6, r0, #0
	bl sub_0201C2C8
	add r2, r0, #0
	add r0, r7, #0
	add r1, r6, #0
	add r3, r4, #0
	bl sub_0219D488
	add r0, r5, #0
	add r4, r4, #1
	bl sub_0201FDF8
	cmp r4, r0
	blt _021B5664
_021B568A:
	bl sub_0201C2C8
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0201FDF8
	add r2, r0, #0
	ldr r0, [sp, #8]
	ldr r3, [sp, #4]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	add r3, #0x54
	add r0, r7, #0
	add r1, r4, #0
	str r3, [sp, #4]
	bl sub_0219D410
	add r4, r0, #0
	add r0, r7, #0
	bl sub_0219D480
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021B56BC: .word 0x00007FFF
	thumb_func_end ovy260_21b5628

	thumb_func_start ovy260_21b56c0
ovy260_21b56c0: ; 0x021B56C0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r3, r4, #0
	add r3, #0xe4
	ldr r3, [r3]
	cmp r3, #7
	bhi _021B57C2
	add r3, r3, r3
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_021B56DA: ; jump table
	.short _021B56EA - _021B56DA - 2 ; case 0
	.short _021B570C - _021B56DA - 2 ; case 1
	.short _021B5726 - _021B56DA - 2 ; case 2
	.short _021B5732 - _021B56DA - 2 ; case 3
	.short _021B573A - _021B56DA - 2 ; case 4
	.short _021B5772 - _021B56DA - 2 ; case 5
	.short _021B577C - _021B56DA - 2 ; case 6
	.short _021B57B8 - _021B56DA - 2 ; case 7
_021B56EA:
	cmp r1, #0
	beq _021B5708
	bl sub_0203DEFC
	mov r1, #2
	tst r0, r1
	beq _021B5708
	ldr r0, _021B57C8 ; =0x00000547
	bl sub_02006254
_021B56FE:
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0]
	add r0, r0, #1
_021B5706:
	b _021B5720
_021B5708:
	mov r0, #0
	pop {r3, r4, r5, pc}
_021B570C:
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x10]
	mov r2, #0x23
	mov r3, #1
_021B5714:
	bl sub_021C5888
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0]
	add r0, r0, #1
_021B5720:
	add r4, #0xe4
	str r0, [r4]
	b _021B57C2
_021B5726:
	ldr r0, [r4, #0x24]
	bl sub_021C5A1C
	cmp r0, #0
	beq _021B57C2
	b _021B56FE
_021B5732:
	mov r1, #0
	bl ovy260_21b53bc
	b _021B56FE
_021B573A:
	bl ovy260_21b5448
	add r5, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	beq _021B57C2
	add r0, r4, #0
	bl ovy260_21b5434
	cmp r5, #0
	beq _021B5758
	cmp r5, #1
	beq _021B575C
	b _021B57C2
_021B5758:
	mov r0, #5
	b _021B5706
_021B575C:
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x10]
	mov r2, #0x21
	mov r3, #0
	mov r5, #0
	bl sub_021C5888
	add r4, #0xe4
	str r5, [r4]
	mov r0, #2
	pop {r3, r4, r5, pc}
_021B5772:
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x10]
	mov r2, #0x2b
	mov r3, #2
	b _021B5714
_021B577C:
	cmp r2, #0
	beq _021B57C2
	ldr r0, [r4, #0x30]
	bl ovy260_21b933c
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xe4
	str r1, [r0]
	ldr r0, [r4, #0x20]
	mov r1, #0
	bl sub_021C4F30
	ldr r0, [r4, #0x30]
	bl ovy260_21b9274
	bl sub_020120C8
	cmp r0, #0
	bne _021B57C2
	bl sub_02042788
	cmp r0, #0
	beq _021B57C2
	bl sub_02160170
	b _021B57C2
_021B57B8:
	mov r0, #0
	add r4, #0xe4
	str r0, [r4]
	mov r0, #3
	pop {r3, r4, r5, pc}
_021B57C2:
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_021B57C8: .word 0x00000547
	thumb_func_end ovy260_21b56c0

	thumb_func_start sub_021B57CC
sub_021B57CC: ; 0x021B57CC
	add r1, r0, #0
	ldr r3, _021B57D8 ; =ovy260_21b5434
	mov r2, #0
	add r1, #0xe4
	str r2, [r1]
	bx r3
	.align 2, 0
_021B57D8: .word ovy260_21b5434
	thumb_func_end sub_021B57CC

	thumb_func_start ovy260_21b57dc
ovy260_21b57dc: ; 0x021B57DC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, _021B5908 ; =0x0000008B
	add r5, r2, #0
	bl sub_0203CE0C
	ldr r0, _021B590C ; =0x000000BD
	bl sub_0203CE0C
	mov r2, #3
	mov r0, #1
	mov r1, #0x57
	lsl r2, r2, #0x10
	mov r7, #0x57
	bl sub_0203A15C
	mov r6, #0x27
	lsl r6, r6, #4
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0x57
	bl sub_0203AAEC
	mov r1, #0
	add r2, r6, #0
	add r4, r0, #0
	blx MI_CpuFill8
	mov r0, #0x57
	add r0, #0xad
	str r5, [r4, r0]
	ldr r0, [r5, #8]
	ldr r0, [r0]
	bl sub_02017934
	bl sub_0200BA78
	mov r1, #0
	bl sub_0200B8F4
	mov r1, #0x57
	add r1, #0xb1
	str r0, [r4, r1]
	mov r0, #1
	mov r1, #0x57
	bl sub_021C2560
	str r0, [r4]
	bl sub_021C2668
	mov r1, #0
	mov r2, #0x57
	bl sub_021C279C
	str r0, [r4, #4]
	str r7, [sp]
	mov r0, #0x17
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_02022D58
	str r0, [r4, #8]
	str r7, [sp]
	mov r0, #0x17
	mov r1, #3
	mov r2, #0
	mov r3, #0
	bl sub_02022D58
	str r0, [r4, #0xc]
	mov r0, #0x57
	bl sub_02021998
	sub r6, #0xcf
	str r0, [r4, #0x10]
	mov r0, #0
	mov r1, #2
	add r2, r6, #0
	mov r3, #0x57
	bl sub_0204875C
	str r0, [r4, #0x14]
	mov r0, #8
	mov r6, #0x40
	mov r1, #0x40
	mov r2, #0x57
	bl sub_020241E4
	str r0, [r4, #0x18]
	add r6, #0xc4
	ldr r0, [r4, r6]
	ldr r1, [r5, #8]
	ldr r0, [r0, #0x3c]
	ldr r1, [r1]
	ldr r2, [r5, #0x1c]
	mov r3, #0x57
	bl ovy260_21b8cc8
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x10]
	mov r1, #0xf
	str r0, [sp]
	ldr r0, [r4, #8]
	mov r2, #0xe
	str r0, [sp, #4]
	mov r0, #0
	mov r3, #0xa
	str r7, [sp, #8]
	bl sub_021C568C
	str r0, [r4, #0x2c]
	ldr r1, _021B5910 ; =ovy260_21b5a70
	add r0, r4, #0
	mov r2, #0x57
	bl sub_021C5C10
	str r0, [r4, #0x38]
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x57
	bl sub_021C5C10
	str r0, [r4, #0x3c]
	ldr r0, [r4]
	bl sub_021C2668
	ldr r1, [r4, #4]
	mov r2, #0x57
	bl sub_021C4E44
	mov r1, #0
	str r0, [r4, #0x28]
	bl sub_021C4F30
	mov r0, #0x57
	bl sub_0201FD00
	add r1, r4, #0
	add r1, #0xfc
	str r0, [r1]
	ldr r0, [r4, #0x34]
	mov r1, #1
	bl ovy260_21bc034
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021B5908: .word 0x0000008B
_021B590C: .word 0x000000BD
_021B5910: .word ovy260_21b5a70
	thumb_func_end ovy260_21b57dc

	thumb_func_start ovy260_21b5914
ovy260_21b5914: ; 0x021B5914
	push {r3, r4, r5, lr}
	add r4, r3, #0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0]
	bl sub_0203A24C
	ldr r0, [r4, #0x34]
	mov r1, #0
	bl ovy260_21bc034
	ldr r0, [r4, #0x28]
	bl sub_021C4F14
	ldr r0, [r4, #0x3c]
	bl sub_021C5C4C
	ldr r0, [r4, #0x38]
	bl sub_021C5C4C
	ldr r0, [r4, #0x2c]
	bl sub_021C5750
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _021B594E
	bl ovy260_21b8da4
_021B594E:
	add r0, r4, #0
	bl ovy260_21b87b0
	add r0, r4, #0
	bl ovy260_21b874c
	add r0, r4, #0
	bl ovy260_21b869c
	add r0, r4, #0
	bl ovy260_21b88ec
	ldr r0, [r4, #0x18]
	bl sub_02024274
	ldr r0, [r4, #0x14]
	bl sub_020487D4
	ldr r0, [r4, #0x10]
	bl sub_02021A18
	ldr r0, [r4, #0xc]
	bl sub_02022DA8
	ldr r0, [r4, #8]
	bl sub_02022DA8
	ldr r0, [r4, #4]
	bl sub_021C2988
	ldr r0, [r4]
	bl sub_021C2600
	add r0, r5, #0
	bl sub_0203AB10
	mov r0, #0x57
	bl sub_0203A1D0
	ldr r0, _021B59AC ; =0x000000BD
	bl sub_0203CDC8
	ldr r0, _021B59B0 ; =0x0000008B
	bl sub_0203CDC8
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_021B59AC: .word 0x000000BD
_021B59B0: .word 0x0000008B
	thumb_func_end ovy260_21b5914

	thumb_func_start ovy260_21b59b4
ovy260_21b59b4: ; 0x021B59B4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r0, [r5]
	add r4, r3, #0
	cmp r0, #4
	bhi _021B5A24
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021B59CC: ; jump table
	.short _021B59D6 - _021B59CC - 2 ; case 0
	.short _021B59E8 - _021B59CC - 2 ; case 1
	.short _021B59F4 - _021B59CC - 2 ; case 2
	.short _021B5A08 - _021B59CC - 2 ; case 3
	.short _021B5A18 - _021B59CC - 2 ; case 4
_021B59D6:
	mov r0, #3
	mov r1, #0x10
	mov r2, #0
	mov r3, #0
	bl sub_0204E060
	mov r0, #1
_021B59E4:
	str r0, [r5]
	b _021B5A24
_021B59E8:
	bl sub_0204E0E0
	cmp r0, #0
	bne _021B5A24
	mov r0, #2
	b _021B59E4
_021B59F4:
	ldr r0, [r4, #0x38]
	bl sub_021C5C54
	ldr r0, [r4, #0x38]
	bl sub_021C5C64
	cmp r0, #0
	beq _021B5A24
	mov r0, #3
	b _021B59E4
_021B5A08:
	mov r0, #3
	mov r1, #0
	mov r2, #0x10
	mov r3, #0
	bl sub_0204E060
	mov r0, #4
	b _021B59E4
_021B5A18:
	bl sub_0204E0E0
	cmp r0, #0
	bne _021B5A24
	mov r0, #1
	pop {r3, r4, r5, pc}
_021B5A24:
	ldr r0, [r4]
	bl sub_021C2654
	ldr r0, [r4, #0x10]
	bl sub_02021A3C
	ldr r0, [r4, #0x2c]
	bl sub_021C57A4
	ldr r0, [r4, #0x28]
	bl sub_021C4F2C
	ldr r0, [r4, #4]
	bl sub_021C2AA0
	ldr r0, [r4, #0x34]
	bl sub_021B8DD4
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _021B5A54
	ldr r1, [r4, #0x10]
	bl sub_021C35E4
_021B5A54:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _021B5A60
	ldr r1, [r4, #0x10]
	bl sub_021C4898
_021B5A60:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _021B5A6C
	ldr r1, [r4, #0x10]
	bl sub_021C561C
_021B5A6C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy260_21b59b4

	thumb_func_start ovy260_21b5a70
ovy260_21b5a70: ; 0x021B5A70
	push {r3, r4, r5, lr}
	mov r1, #0x41
	add r4, r2, #0
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r5, r0, #0
	ldr r1, [r1, #0xc]
	cmp r1, #3
	bhi _021B5AC2
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021B5A8E: ; jump table
	.short _021B5A96 - _021B5A8E - 2 ; case 0
	.short _021B5AA4 - _021B5A8E - 2 ; case 1
	.short _021B5A9E - _021B5A8E - 2 ; case 2
	.short _021B5AB4 - _021B5A8E - 2 ; case 3
_021B5A96:
	ldr r1, _021B5AC4 ; =ovy260_21b5ad0
	bl sub_021C5C74
	pop {r3, r4, r5, pc}
_021B5A9E:
	ldr r0, [r4, #0x34]
	bl ovy260_21b9274
_021B5AA4:
	add r0, r4, #0
	bl ovy260_21b86c8
	ldr r1, _021B5AC8 ; =ovy260_21b77e4
	add r0, r5, #0
	bl sub_021C5C74
	pop {r3, r4, r5, pc}
_021B5AB4:
	add r0, r4, #0
	bl ovy260_21b86c8
	ldr r1, _021B5ACC ; =ovy260_21b7aa4
	add r0, r5, #0
	bl sub_021C5C74
_021B5AC2:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021B5AC4: .word ovy260_21b5ad0
_021B5AC8: .word ovy260_21b77e4
_021B5ACC: .word ovy260_21b7aa4
	thumb_func_end ovy260_21b5a70

	thumb_func_start ovy260_21b5ad0
ovy260_21b5ad0: ; 0x021B5AD0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r2, #0
	mov r7, #0x41
	lsl r7, r7, #2
	ldr r2, [r4]
	add r6, r0, #0
	ldr r1, [r5, r7]
	cmp r2, #9
	bls _021B5AE6
	b _021B5C22
_021B5AE6:
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021B5AF2: ; jump table
	.short _021B5B06 - _021B5AF2 - 2 ; case 0
	.short _021B5B26 - _021B5AF2 - 2 ; case 1
	.short _021B5B38 - _021B5AF2 - 2 ; case 2
	.short _021B5B50 - _021B5AF2 - 2 ; case 3
	.short _021B5B98 - _021B5AF2 - 2 ; case 4
	.short _021B5BAC - _021B5AF2 - 2 ; case 5
	.short _021B5BBE - _021B5AF2 - 2 ; case 6
	.short _021B5BD2 - _021B5AF2 - 2 ; case 7
	.short _021B5BE6 - _021B5AF2 - 2 ; case 8
	.short _021B5C1C - _021B5AF2 - 2 ; case 9
_021B5B06:
	ldr r0, [r1, #8]
	ldr r0, [r0]
	bl sub_02017934
	bl sub_02009B50
	bl sub_020099F4
	cmp r0, #0
	beq _021B5B20
	mov r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021B5B20:
	mov r0, #5
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021B5B26:
	ldr r0, [r5, #0x2c]
	ldr r1, [r5, #0x14]
	mov r2, #0x36
	mov r5, #2
	mov r3, #2
	bl sub_021C5888
	str r5, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021B5B38:
	ldr r0, [r1, #0x30]
	mov r1, #0
	mov r2, #8
	blx MI_CpuFill8
	ldr r0, [r5, #0x34]
	mov r1, #0x57
	bl ovy260_21bb758
	mov r0, #3
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021B5B50:
	ldr r0, [r5, #0x34]
	bl ovy260_21bb7a0
	cmp r0, #1
	bne _021B5B6A
	ldr r1, [r5, r7]
	ldr r0, [r5, #0x34]
	ldr r1, [r1, #0x30]
	bl sub_021BB8C4
	mov r0, #4
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021B5B6A:
	cmp r0, #3
	bne _021B5B78
	ldr r1, _021B5C24 ; =ovy260_21b7f5c
	add r0, r6, #0
	bl sub_021C5C74
	pop {r3, r4, r5, r6, r7, pc}
_021B5B78:
	cmp r0, #0
	beq _021B5C22
	ldr r0, [r5, #0x34]
	mov r1, #1
	mov r2, #0
	bl ovy260_21b8e08
	cmp r0, #1
	beq _021B5B8E
	cmp r0, #2
	bne _021B5C22
_021B5B8E:
	ldr r1, _021B5C24 ; =ovy260_21b7f5c
	add r0, r6, #0
	bl sub_021C5C74
	pop {r3, r4, r5, r6, r7, pc}
_021B5B98:
	ldr r0, [r1, #0x30]
	ldrb r0, [r0, #6]
	cmp r0, #0
	beq _021B5BA6
	mov r0, #7
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021B5BA6:
	mov r0, #5
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021B5BAC:
	ldr r0, [r5, #0x2c]
	ldr r1, [r5, #0x14]
	mov r2, #0x37
	mov r3, #1
	bl sub_021C5888
	mov r0, #6
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021B5BBE:
	ldr r0, [r5, #0x2c]
	bl sub_021C5A1C
	cmp r0, #0
	beq _021B5C22
	ldr r1, _021B5C28 ; =0x021B7F55
	add r0, r6, #0
	bl sub_021C5C74
	pop {r3, r4, r5, r6, r7, pc}
_021B5BD2:
	ldr r0, [r1, #0x20]
	ldr r0, [r0]
	cmp r0, #0
	bne _021B5C22
	ldr r0, [r5, #0x34]
	bl sub_021B8F48
	mov r0, #8
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021B5BE6:
	ldr r0, [r5, #0x34]
	bl ovy260_21b8f58
	cmp r0, #1
	bne _021B5BFC
	ldr r2, [r5, r7]
	ldr r1, _021B5C2C ; =0x00000708
	ldr r2, [r2, #0x20]
	str r1, [r2]
	mov r1, #9
	str r1, [r4]
_021B5BFC:
	cmp r0, #0
	beq _021B5C22
	ldr r0, [r5, #0x34]
	mov r1, #1
	mov r2, #0
	bl ovy260_21b8e08
	cmp r0, #1
	beq _021B5C12
	cmp r0, #2
	bne _021B5C22
_021B5C12:
	ldr r1, _021B5C24 ; =ovy260_21b7f5c
	add r0, r6, #0
	bl sub_021C5C74
	pop {r3, r4, r5, r6, r7, pc}
_021B5C1C:
	ldr r1, _021B5C30 ; =ovy260_21b5c34
	bl sub_021C5C74
_021B5C22:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021B5C24: .word ovy260_21b7f5c
_021B5C28: .word 0x021B7F55
_021B5C2C: .word 0x00000708
_021B5C30: .word ovy260_21b5c34
	thumb_func_end ovy260_21b5ad0

	thumb_func_start ovy260_21b5c34
ovy260_21b5c34: ; 0x021B5C34
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	mov r7, #0x41
	lsl r7, r7, #2
	add r4, r1, #0
	add r5, r2, #0
	add r1, r7, #4
	ldr r1, [r5, r1]
	str r0, [sp]
	str r1, [sp, #4]
	ldr r1, [r4]
	ldr r6, [r5, r7]
	cmp r1, #0x38
	bls _021B5C54
	bl _021B6534
_021B5C54:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021B5C60: ; jump table
	.short _021B5CD2 - _021B5C60 - 2 ; case 0
	.short _021B5CEA - _021B5C60 - 2 ; case 1
	.short _021B5D22 - _021B5C60 - 2 ; case 2
	.short _021B5D64 - _021B5C60 - 2 ; case 3
	.short _021B5DA8 - _021B5C60 - 2 ; case 4
	.short _021B5DD2 - _021B5C60 - 2 ; case 5
	.short _021B5DEE - _021B5C60 - 2 ; case 6
	.short _021B5E0A - _021B5C60 - 2 ; case 7
	.short _021B5E48 - _021B5C60 - 2 ; case 8
	.short _021B5E8A - _021B5C60 - 2 ; case 9
	.short _021B5E92 - _021B5C60 - 2 ; case 10
	.short _021B5ECA - _021B5C60 - 2 ; case 11
	.short _021B5EE6 - _021B5C60 - 2 ; case 12
	.short _021B5EF8 - _021B5C60 - 2 ; case 13
	.short _021B6004 - _021B5C60 - 2 ; case 14
	.short _021B5F4C - _021B5C60 - 2 ; case 15
	.short _021B5F68 - _021B5C60 - 2 ; case 16
	.short _021B5F9C - _021B5C60 - 2 ; case 17
	.short _021B5FE8 - _021B5C60 - 2 ; case 18
	.short _021B6034 - _021B5C60 - 2 ; case 19
	.short _021B6050 - _021B5C60 - 2 ; case 20
	.short _021B6084 - _021B5C60 - 2 ; case 21
	.short _021B6098 - _021B5C60 - 2 ; case 22
	.short _021B60BE - _021B5C60 - 2 ; case 23
	.short _021B60DA - _021B5C60 - 2 ; case 24
	.short _021B60EA - _021B5C60 - 2 ; case 25
	.short _021B611C - _021B5C60 - 2 ; case 26
	.short _021B6138 - _021B5C60 - 2 ; case 27
	.short _021B6148 - _021B5C60 - 2 ; case 28
	.short _021B617A - _021B5C60 - 2 ; case 29
	.short _021B6196 - _021B5C60 - 2 ; case 30
	.short _021B61A6 - _021B5C60 - 2 ; case 31
	.short _021B61DA - _021B5C60 - 2 ; case 32
	.short _021B61F6 - _021B5C60 - 2 ; case 33
	.short _021B6206 - _021B5C60 - 2 ; case 34
	.short _021B6238 - _021B5C60 - 2 ; case 35
	.short _021B624A - _021B5C60 - 2 ; case 36
	.short _021B6258 - _021B5C60 - 2 ; case 37
	.short _021B6274 - _021B5C60 - 2 ; case 38
	.short _021B629E - _021B5C60 - 2 ; case 39
	.short _021B62D8 - _021B5C60 - 2 ; case 40
	.short _021B630C - _021B5C60 - 2 ; case 41
	.short _021B634C - _021B5C60 - 2 ; case 42
	.short _021B6368 - _021B5C60 - 2 ; case 43
	.short _021B63E6 - _021B5C60 - 2 ; case 44
	.short _021B6408 - _021B5C60 - 2 ; case 45
	.short _021B6424 - _021B5C60 - 2 ; case 46
	.short _021B6440 - _021B5C60 - 2 ; case 47
	.short _021B645E - _021B5C60 - 2 ; case 48
	.short _021B6496 - _021B5C60 - 2 ; case 49
	.short _021B64BA - _021B5C60 - 2 ; case 50
	.short _021B64D6 - _021B5C60 - 2 ; case 51
	.short _021B64EE - _021B5C60 - 2 ; case 52
	.short _021B6502 - _021B5C60 - 2 ; case 53
	.short _021B650C - _021B5C60 - 2 ; case 54
	.short _021B6516 - _021B5C60 - 2 ; case 55
	.short _021B6524 - _021B5C60 - 2 ; case 56
_021B5CD2:
	ldr r0, [r6, #0x30]
	ldrb r0, [r0, #4]
	cmp r0, #1
	bne _021B5CE2
	mov r0, #1
	add sp, #0x2c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021B5CE2:
	mov r0, #3
	add sp, #0x2c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021B5CEA:
	add r0, sp, #0x24
	mov r1, #0
	mov r2, #8
	mov r6, #0
	blx MI_CpuFill8
	add r0, sp, #0x14
	strb r6, [r0, #0x11]
	ldr r1, [r5, r7]
	ldr r1, [r1, #0x30]
	ldrb r1, [r1, #4]
	strb r1, [r0, #0x10]
	ldr r0, [r5, #0x34]
	bl sub_021BC04C
	str r0, [sp, #0x28]
	ldr r0, [r5, r7]
	add r1, sp, #0x24
	ldr r0, [r0, #0x30]
	mov r2, #0x57
	strb r6, [r0, #5]
	ldr r0, [r5, #0x34]
	bl ovy260_21bb8d8
	mov r0, #2
	add sp, #0x2c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021B5D22:
	ldr r0, [r5, #0x34]
	bl ovy260_21bb930
	add r6, r0, #0
	cmp r6, #1
	bne _021B5D34
	mov r0, #0xb
	str r0, [r4]
	b _021B5D40
_021B5D34:
	cmp r6, #3
	bne _021B5D40
	ldr r0, [sp]
	ldr r1, _021B5FD0 ; =ovy260_21b7f5c
	bl sub_021C5C74
_021B5D40:
	cmp r6, #0
	beq _021B5D56
	ldr r0, [r5, #0x34]
	mov r1, #1
	mov r2, #0
	bl ovy260_21b8e08
	cmp r0, #1
	beq _021B5D58
	cmp r0, #2
	beq _021B5D58
_021B5D56:
	b _021B6534
_021B5D58:
	ldr r0, [sp]
	ldr r1, _021B5FD0 ; =ovy260_21b7f5c
	bl sub_021C5C74
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
_021B5D64:
	ldr r0, [sp, #4]
	mov r1, #0xa
	mov r6, #0xa
	bl sub_0200B798
	ldr r1, [r5, r7]
	ldr r1, [r1, #0x30]
	ldrb r1, [r1, #5]
	cmp r1, r0
	bne _021B5D80
	mov r0, #4
	add sp, #0x2c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021B5D80:
	ldr r0, [sp, #4]
	add r1, r6, #0
	bl sub_0200B798
	cmp r0, #4
	beq _021B5D98
	ldr r0, [sp, #4]
	add r1, r6, #0
	bl sub_0200B798
	cmp r0, #5
	bne _021B5DA0
_021B5D98:
	mov r0, #7
	add sp, #0x2c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021B5DA0:
	mov r0, #4
	add sp, #0x2c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021B5DA8:
	ldr r0, [r6, #0x30]
	ldrb r0, [r0, #5]
	cmp r0, #3
	bne _021B5DB8
	mov r0, #5
	add sp, #0x2c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021B5DB8:
	add r0, #0xfc
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _021B5DCA
	mov r0, #6
	add sp, #0x2c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021B5DCA:
	mov r0, #0xb
	add sp, #0x2c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021B5DD2:
	ldr r0, [r5, #0x2c]
	ldr r1, [r5, #0x14]
	mov r2, #0x39
	mov r3, #1
	bl sub_021C5888
	ldr r0, [sp]
	mov r1, #0x2e
	bl sub_021C5C88
	mov r0, #0x38
	add sp, #0x2c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021B5DEE:
	ldr r0, [r5, #0x2c]
	ldr r1, [r5, #0x14]
	mov r2, #0x39
	mov r3, #1
	bl sub_021C5888
	ldr r0, [sp]
	mov r1, #0x2e
	bl sub_021C5C88
	mov r0, #0x38
	add sp, #0x2c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021B5E0A:
	add r0, sp, #0x1c
	mov r1, #0
	mov r2, #8
	mov r6, #8
	blx MI_CpuFill8
	ldr r0, [sp, #4]
	mov r1, #0xa
	bl sub_0200B798
	add r1, sp, #0x14
	strb r0, [r1, #9]
	ldr r0, [r5, #0x34]
	bl sub_021BC04C
	str r0, [sp, #0x20]
	ldr r0, [sp, #4]
	mov r1, #0xa
	bl sub_0200B798
	ldr r1, [r5, r7]
	mov r2, #0x57
	ldr r1, [r1, #0x30]
	strb r0, [r1, #5]
	ldr r0, [r5, #0x34]
	add r1, sp, #0x1c
	bl ovy260_21bb8d8
	add sp, #0x2c
	str r6, [r4]
	pop {r4, r5, r6, r7, pc}
_021B5E48:
	ldr r0, [r5, #0x34]
	bl ovy260_21bb930
	add r6, r0, #0
	cmp r6, #1
	bne _021B5E5A
	mov r0, #9
	str r0, [r4]
	b _021B5E66
_021B5E5A:
	cmp r6, #3
	bne _021B5E66
	ldr r0, [sp]
	ldr r1, _021B5FD0 ; =ovy260_21b7f5c
	bl sub_021C5C74
_021B5E66:
	cmp r6, #0
	beq _021B5E7C
	ldr r0, [r5, #0x34]
	mov r1, #1
	mov r2, #0
	bl ovy260_21b8e08
	cmp r0, #1
	beq _021B5E7E
	cmp r0, #2
	beq _021B5E7E
_021B5E7C:
	b _021B6534
_021B5E7E:
	ldr r0, [sp]
	ldr r1, _021B5FD0 ; =ovy260_21b7f5c
	bl sub_021C5C74
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
_021B5E8A:
	mov r0, #6
	add sp, #0x2c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021B5E92:
	ldr r0, [r5, #0x34]
	bl ovy260_21badc4
	cmp r0, #1
	bne _021B5EA8
	ldr r1, [r5, r7]
	ldr r2, _021B5FD4 ; =0x00000708
	ldr r1, [r1, #0x20]
	str r2, [r1]
	mov r1, #6
	str r1, [r4]
_021B5EA8:
	cmp r0, #0
	beq _021B5F7E
	ldr r0, [r5, #0x34]
	mov r1, #1
	mov r2, #0
	bl ovy260_21b8e08
	cmp r0, #1
	beq _021B5EBE
	cmp r0, #2
	bne _021B5F7E
_021B5EBE:
	ldr r0, [sp]
	ldr r1, _021B5FD0 ; =ovy260_21b7f5c
	bl sub_021C5C74
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
_021B5ECA:
	ldr r0, [r5, #0x2c]
	ldr r1, [r5, #0x14]
	mov r2, #0x5b
	mov r3, #2
	bl sub_021C5888
	ldr r0, [sp]
	mov r1, #0xc
	bl sub_021C5C88
	mov r0, #0x38
	add sp, #0x2c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021B5EE6:
	ldr r1, [r6, #0x30]
	ldr r0, [r5, #0x34]
	ldr r1, [r1]
	bl ovy260_21bb310
	mov r0, #0xd
	add sp, #0x2c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021B5EF8:
	ldr r0, [r5, #0x34]
	bl ovy260_21bb354
	add r6, r0, #0
	cmp r6, #1
	bne _021B5F22
	add r1, r7, #0
	add r1, #8
	ldr r0, [r5, #0x34]
	add r1, r5, r1
	bl sub_021BB68C
	add r7, #8
	add r0, r5, r7
	bl sub_0200B8C8
	cmp r0, #0
	beq _021B5F20
	mov r0, #0xe
	b _021B5F28
_021B5F20:
	b _021B5F26
_021B5F22:
	cmp r6, #2
	bne _021B5F2A
_021B5F26:
	mov r0, #0xf
_021B5F28:
	str r0, [r4]
_021B5F2A:
	cmp r6, #0
	beq _021B5F7E
	ldr r0, [r5, #0x34]
	mov r1, #1
	mov r2, #0
	bl ovy260_21b8e08
	cmp r0, #1
	beq _021B5F40
	cmp r0, #2
	bne _021B5F7E
_021B5F40:
	ldr r0, [sp]
	ldr r1, _021B5FD0 ; =ovy260_21b7f5c
	bl sub_021C5C74
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
_021B5F4C:
	ldr r0, [sp, #4]
	mov r1, #2
	bl sub_0200B798
	cmp r0, #0
	bne _021B5F60
	mov r0, #0x12
	add sp, #0x2c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021B5F60:
	mov r0, #0x10
	add sp, #0x2c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021B5F68:
	ldr r0, [r5, #0x34]
	mov r1, #1
	mov r2, #0
	bl ovy260_21b8e08
	cmp r0, #0
	beq _021B5F8C
	cmp r0, #1
	beq _021B5F80
	cmp r0, #2
	beq _021B5F80
_021B5F7E:
	b _021B6534
_021B5F80:
	ldr r0, [sp]
	ldr r1, _021B5FD0 ; =ovy260_21b7f5c
	bl sub_021C5C74
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
_021B5F8C:
	ldr r1, _021B5FD8 ; =ovy260_21b7f88
	add r0, r5, #0
	bl ovy260_21b8914
	mov r0, #0x11
	add sp, #0x2c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021B5F9C:
	add r0, r5, #0
	bl ovy260_21b8928
	ldr r1, _021B5FDC ; =0x0000FFFF
	cmp r0, r1
	beq _021B5FAC
	mov r1, #0x2e
	str r1, [r4]
_021B5FAC:
	cmp r0, #3
	bne _021B5FB8
	ldr r0, [sp]
	ldr r1, _021B5FD0 ; =ovy260_21b7f5c
	bl sub_021C5C74
_021B5FB8:
	ldr r0, [r5, #0x34]
	mov r1, #1
	mov r2, #0
	bl ovy260_21b8e08
	cmp r0, #1
	beq _021B5FCA
	cmp r0, #2
	bne _021B608E
_021B5FCA:
	ldr r0, [sp]
	ldr r1, _021B5FD0 ; =ovy260_21b7f5c
	b _021B5FE0
	.align 2, 0
_021B5FD0: .word ovy260_21b7f5c
_021B5FD4: .word 0x00000708
_021B5FD8: .word ovy260_21b7f88
_021B5FDC: .word 0x0000FFFF
_021B5FE0:
	bl sub_021C5C74
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
_021B5FE8:
	ldr r0, [r5, #0x2c]
	ldr r1, [r5, #0x14]
	mov r2, #0x3b
	mov r3, #1
	bl sub_021C5888
	ldr r0, [sp]
	mov r1, #0x37
	bl sub_021C5C88
	mov r0, #0x38
	add sp, #0x2c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021B6004:
	ldr r0, [r6, #0x30]
	ldrb r0, [r0, #5]
	cmp r0, #0
	bne _021B6014
	mov r0, #0x13
	add sp, #0x2c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021B6014:
	cmp r0, #1
	bne _021B6020
	mov r0, #0x35
	add sp, #0x2c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021B6020:
	cmp r0, #2
	bne _021B602C
	mov r0, #0x36
	add sp, #0x2c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021B602C:
	mov r0, #0x37
	add sp, #0x2c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021B6034:
	ldr r0, [sp, #4]
	mov r1, #2
	bl sub_0200B798
	cmp r0, #0
	bne _021B6048
	mov r0, #0x2a
	add sp, #0x2c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021B6048:
	mov r0, #0x14
	add sp, #0x2c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021B6050:
	add r0, r5, #0
	bl ovy260_21b8554
	ldr r0, [r6, #8]
	ldr r0, [r0]
	bl sub_02017934
	bl sub_0200C260
	mov r1, #1
	mov r6, #1
	bl sub_0200C394
	cmp r0, #0
	beq _021B6074
	add r0, r5, #0
	mov r1, #0
	b _021B6078
_021B6074:
	add r0, r5, #0
	add r1, r6, #0
_021B6078:
	bl ovy260_21b86dc
	mov r0, #0x15
	add sp, #0x2c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021B6084:
	add r0, r5, #0
	bl sub_021B86B0
	cmp r0, #0
	bne _021B6090
_021B608E:
	b _021B6534
_021B6090:
	mov r0, #0x16
	add sp, #0x2c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021B6098:
	ldr r0, [r6, #8]
	ldr r0, [r0]
	bl sub_02017934
	bl sub_0200C260
	mov r1, #1
	bl sub_0200C394
	cmp r0, #0
	beq _021B60B6
	mov r0, #0x17
	add sp, #0x2c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021B60B6:
	mov r0, #0x1d
	add sp, #0x2c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021B60BE:
	ldr r0, [r5, #0x2c]
	ldr r1, [r5, #0x14]
	mov r2, #0x3d
	mov r3, #1
	bl sub_021C5888
	ldr r0, [sp]
	mov r1, #0x18
	bl sub_021C5C88
	mov r0, #0x38
	add sp, #0x2c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021B60DA:
	add r0, r5, #0
	mov r1, #0
	bl ovy260_21b87dc
	mov r0, #0x19
	add sp, #0x2c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021B60EA:
	add r0, r5, #0
	bl ovy260_21b8900
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _021B61B6
	add r0, r5, #0
	bl ovy260_21b88ec
	cmp r6, #0
	beq _021B610C
	cmp r6, #1
	beq _021B6114
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
_021B610C:
	mov r0, #0x23
	add sp, #0x2c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021B6114:
	mov r0, #0x1a
	add sp, #0x2c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021B611C:
	ldr r0, [r5, #0x2c]
	ldr r1, [r5, #0x14]
	mov r2, #0x3e
	mov r3, #1
	bl sub_021C5888
	ldr r0, [sp]
	mov r1, #0x1b
	bl sub_021C5C88
	mov r0, #0x38
	add sp, #0x2c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021B6138:
	add r0, r5, #0
	mov r1, #0
	bl ovy260_21b87dc
	mov r0, #0x1c
	add sp, #0x2c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021B6148:
	add r0, r5, #0
	bl ovy260_21b8900
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _021B61B6
	add r0, r5, #0
	bl ovy260_21b88ec
	cmp r6, #0
	beq _021B616A
	cmp r6, #1
	beq _021B6172
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
_021B616A:
	mov r0, #0x37
	add sp, #0x2c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021B6172:
	mov r0, #0x17
	add sp, #0x2c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021B617A:
	ldr r0, [r5, #0x2c]
	ldr r1, [r5, #0x14]
	mov r2, #0x3c
	mov r3, #1
	bl sub_021C5888
	ldr r0, [sp]
	mov r1, #0x1e
	bl sub_021C5C88
	mov r0, #0x38
	add sp, #0x2c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021B6196:
	add r0, r5, #0
	mov r1, #0
	bl ovy260_21b87dc
	mov r0, #0x1f
	add sp, #0x2c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021B61A6:
	add r0, r5, #0
	bl ovy260_21b8900
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	bne _021B61B8
_021B61B6:
	b _021B6534
_021B61B8:
	add r0, r5, #0
	bl ovy260_21b88ec
	cmp r6, #0
	beq _021B61CA
	cmp r6, #1
	beq _021B61D2
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
_021B61CA:
	mov r0, #0x23
	add sp, #0x2c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021B61D2:
	mov r0, #0x20
	add sp, #0x2c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021B61DA:
	ldr r0, [r5, #0x2c]
	ldr r1, [r5, #0x14]
	mov r2, #0x3e
	mov r3, #1
	bl sub_021C5888
	ldr r0, [sp]
	mov r1, #0x21
	bl sub_021C5C88
	mov r0, #0x38
	add sp, #0x2c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021B61F6:
	add r0, r5, #0
	mov r1, #0
	bl ovy260_21b87dc
	mov r0, #0x22
	add sp, #0x2c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021B6206:
	add r0, r5, #0
	bl ovy260_21b8900
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _021B62CA
	add r0, r5, #0
	bl ovy260_21b88ec
	cmp r6, #0
	beq _021B6228
	cmp r6, #1
	beq _021B6230
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
_021B6228:
	mov r0, #0x37
	add sp, #0x2c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021B6230:
	mov r0, #0x1d
	add sp, #0x2c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021B6238:
	add r0, r5, #0
	bl sub_021B86BC
	cmp r0, #0
	beq _021B62CA
	mov r0, #0x24
	add sp, #0x2c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021B624A:
	add r0, r5, #0
	bl ovy260_21b869c
	mov r0, #0x2a
	add sp, #0x2c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021B6258:
	ldr r0, [r5, #0x2c]
	ldr r1, [r5, #0x14]
	mov r2, #0x46
	mov r3, #2
	bl sub_021C5888
	ldr r0, [sp]
	mov r1, #0x26
	bl sub_021C5C88
	mov r0, #0x38
	add sp, #0x2c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021B6274:
	ldr r0, [r6, #0x20]
	ldr r0, [r0]
	cmp r0, #0
	bne _021B62CA
	ldr r0, [r6, #0x34]
	ldr r2, _021B6538 ; =0x00000534
	add r0, #0x18
	mov r1, #0
	blx MI_CpuFill8
	ldr r2, [r5, r7]
	ldr r0, [r5, #0x34]
	ldr r2, [r2, #0x34]
	mov r1, #0
	add r2, #0x18
	bl ovy260_21bac18
	mov r0, #0x27
	add sp, #0x2c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021B629E:
	ldr r0, [r5, #0x34]
	bl ovy260_21badc4
	cmp r0, #1
	bne _021B62B4
	ldr r1, [r5, r7]
	ldr r2, _021B653C ; =0x00000708
	ldr r1, [r1, #0x20]
	str r2, [r1]
	mov r1, #0x28
	str r1, [r4]
_021B62B4:
	cmp r0, #0
	beq _021B62CA
	ldr r0, [r5, #0x34]
	mov r1, #1
	mov r2, #0
	bl ovy260_21b8e08
	cmp r0, #1
	beq _021B62CC
	cmp r0, #2
	beq _021B62CC
_021B62CA:
	b _021B6534
_021B62CC:
	ldr r0, [sp]
	ldr r1, _021B6540 ; =ovy260_21b7f5c
	bl sub_021C5C74
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
_021B62D8:
	add r0, sp, #0x14
	mov r1, #0
	mov r2, #8
	mov r6, #0
	blx MI_CpuFill8
	add r0, sp, #0x14
	strb r6, [r0]
	mov r6, #1
	strb r6, [r0, #1]
	ldr r0, [r5, #0x34]
	bl sub_021BC04C
	str r0, [sp, #0x18]
	ldr r0, [r5, r7]
	add r1, sp, #0x14
	ldr r0, [r0, #0x30]
	mov r2, #0x57
	strb r6, [r0, #5]
	ldr r0, [r5, #0x34]
	bl ovy260_21bb8d8
	mov r0, #0x29
	add sp, #0x2c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021B630C:
	ldr r0, [r5, #0x34]
	bl ovy260_21bb930
	add r6, r0, #0
	cmp r6, #1
	bne _021B631E
	mov r0, #0x35
	str r0, [r4]
	b _021B632A
_021B631E:
	cmp r6, #3
	bne _021B632A
	ldr r0, [sp]
	ldr r1, _021B6540 ; =ovy260_21b7f5c
	bl sub_021C5C74
_021B632A:
	cmp r6, #0
	beq _021B63FE
	ldr r0, [r5, #0x34]
	mov r1, #1
	mov r2, #0
	bl ovy260_21b8e08
	cmp r0, #1
	beq _021B6340
	cmp r0, #2
	bne _021B63FE
_021B6340:
	ldr r0, [sp]
	ldr r1, _021B6540 ; =ovy260_21b7f5c
	bl sub_021C5C74
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
_021B634C:
	ldr r0, [r5, #0x2c]
	ldr r1, [r5, #0x14]
	mov r2, #0x3a
	mov r3, #2
	bl sub_021C5888
	ldr r0, [sp]
	mov r1, #0x2b
	bl sub_021C5C88
	mov r0, #0x38
	add sp, #0x2c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021B6368:
	ldr r0, [r6, #8]
	ldr r0, [r0]
	bl sub_02017934
	str r0, [sp, #8]
	bl sub_0200C260
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	bl sub_0200BA78
	mov r1, #0
	bl sub_0200B924
	str r0, [sp, #0x10]
	add r0, r7, #0
	add r1, r7, #4
	add r0, #8
	add r2, r7, #0
	ldr r1, [r5, r1]
	add r0, r5, r0
	add r2, #0x5c
	blx MI_CpuCopy8
	ldr r0, [sp, #0xc]
	mov r1, #1
	bl sub_0200C370
	add r0, r7, #4
	ldr r0, [r5, r0]
	mov r1, #0xa
	mov r2, #1
	bl sub_0200B830
	ldr r0, [r6, #0x10]
	mov r1, #0xa
	mov r2, #0
	mov r3, #0
	bl sub_0200E87C
	ldr r0, [r6, #0x10]
	mov r1, #0xa
	mov r2, #1
	mov r3, #0
	bl sub_0200E87C
	ldr r0, [r6, #0x10]
	mov r1, #0xa
	mov r2, #2
	mov r3, #0
	bl sub_0200E87C
	ldr r0, [sp, #0x10]
	bl sub_0200B918
	ldr r0, [r6, #8]
	ldr r0, [r0]
	bl sub_0201782C
	mov r0, #0x2c
	add sp, #0x2c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021B63E6:
	ldr r0, [r6, #8]
	ldr r0, [r0]
	bl sub_02017850
	cmp r0, #2
	bne _021B63FA
	mov r0, #0x25
	add sp, #0x2c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021B63FA:
	cmp r0, #3
	beq _021B6400
_021B63FE:
	b _021B6534
_021B6400:
	mov r0, #0x2d
	add sp, #0x2c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021B6408:
	ldr r0, [r5, #0x2c]
	ldr r1, [r5, #0x14]
	mov r2, #0x40
	mov r3, #1
	bl sub_021C5888
	ldr r0, [sp]
	mov r1, #0x37
	bl sub_021C5C88
	mov r0, #0x38
	add sp, #0x2c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021B6424:
	ldr r0, [r5, #0x2c]
	ldr r1, [r5, #0x14]
	mov r2, #0x5a
	mov r3, #2
	bl sub_021C5888
	ldr r0, [sp]
	mov r1, #0x2f
	bl sub_021C5C88
	mov r0, #0x38
	add sp, #0x2c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021B6440:
	ldr r0, [r6, #0x20]
	ldr r0, [r0]
	cmp r0, #0
	bne _021B6534
	mov r1, #0
	ldr r0, [r5, #0x34]
	ldr r3, [r6, #0x34]
	mvn r1, r1
	mov r2, #1
	bl ovy260_21ba3b4
	mov r0, #0x30
	add sp, #0x2c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021B645E:
	ldr r0, [r5, #0x34]
	bl ovy260_21ba488
	cmp r0, #1
	bne _021B6474
	ldr r1, [r5, r7]
	ldr r2, _021B653C ; =0x00000708
	ldr r1, [r1, #0x20]
	str r2, [r1]
	mov r1, #0x31
	str r1, [r4]
_021B6474:
	cmp r0, #0
	beq _021B6534
	ldr r0, [r5, #0x34]
	mov r1, #1
	mov r2, #0
	bl ovy260_21b8e08
	cmp r0, #1
	beq _021B648A
	cmp r0, #2
	bne _021B6534
_021B648A:
	ldr r0, [sp]
	ldr r1, _021B6540 ; =ovy260_21b7f5c
	bl sub_021C5C74
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
_021B6496:
	ldr r0, [r6, #0x10]
	mov r1, #0xa
	mov r2, #0
	bl sub_0200E870
	ldr r1, [r5, r7]
	ldr r1, [r1, #0x34]
	ldr r1, [r1, #0x10]
	cmp r1, r0
	beq _021B64B2
	mov r0, #0x32
	add sp, #0x2c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021B64B2:
	mov r0, #0x37
	add sp, #0x2c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021B64BA:
	ldr r0, [r5, #0x2c]
	ldr r1, [r5, #0x14]
	mov r2, #0x3a
	mov r3, #2
	bl sub_021C5888
	ldr r0, [sp]
	mov r1, #0x33
	bl sub_021C5C88
	mov r0, #0x38
	add sp, #0x2c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021B64D6:
	ldr r1, [r6, #0x34]
	add r0, r5, #0
	bl ovy260_21b8c50
	ldr r0, [r6, #8]
	ldr r0, [r0]
	bl sub_0201782C
	mov r0, #0x34
	add sp, #0x2c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021B64EE:
	ldr r0, [r6, #8]
	ldr r0, [r0]
	bl sub_02017850
	cmp r0, #2
	bne _021B6534
	mov r0, #0x37
	add sp, #0x2c
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021B6502:
	ldr r1, _021B6544 ; =ovy260_21b6550
	bl sub_021C5C74
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
_021B650C:
	ldr r1, _021B6548 ; =ovy260_21b6a70
	bl sub_021C5C74
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
_021B6516:
	mov r1, #0
	str r1, [r6, #4]
	ldr r1, _021B654C ; =0x021B7F55
	bl sub_021C5C74
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
_021B6524:
	ldr r0, [r5, #0x2c]
	bl sub_021C5A1C
	cmp r0, #0
	beq _021B6534
	ldr r0, [sp]
	bl sub_021C5C8C
_021B6534:
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021B6538: .word 0x00000534
_021B653C: .word 0x00000708
_021B6540: .word ovy260_21b7f5c
_021B6544: .word ovy260_21b6550
_021B6548: .word ovy260_21b6a70
_021B654C: .word 0x021B7F55
	thumb_func_end ovy260_21b5c34

	thumb_func_start ovy260_21b6550
ovy260_21b6550: ; 0x021B6550
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r1, #0
	mov r1, #0x41
	add r4, r2, #0
	lsl r1, r1, #2
	ldr r5, [r4, r1]
	ldr r1, [r6]
	add r7, r0, #0
	cmp r1, #0x1e
	bls _021B6568
	b _021B6A58
_021B6568:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021B6574: ; jump table
	.short _021B65B2 - _021B6574 - 2 ; case 0
	.short _021B65CE - _021B6574 - 2 ; case 1
	.short _021B65EA - _021B6574 - 2 ; case 2
	.short _021B6606 - _021B6574 - 2 ; case 3
	.short _021B6616 - _021B6574 - 2 ; case 4
	.short _021B6648 - _021B6574 - 2 ; case 5
	.short _021B6664 - _021B6574 - 2 ; case 6
	.short _021B6674 - _021B6574 - 2 ; case 7
	.short _021B66A8 - _021B6574 - 2 ; case 8
	.short _021B66C4 - _021B6574 - 2 ; case 9
	.short _021B66D4 - _021B6574 - 2 ; case 10
	.short _021B6706 - _021B6574 - 2 ; case 11
	.short _021B671E - _021B6574 - 2 ; case 12
	.short _021B677C - _021B6574 - 2 ; case 13
	.short _021B6798 - _021B6574 - 2 ; case 14
	.short _021B67B4 - _021B6574 - 2 ; case 15
	.short _021B67CE - _021B6574 - 2 ; case 16
	.short _021B67EA - _021B6574 - 2 ; case 17
	.short _021B680A - _021B6574 - 2 ; case 18
	.short _021B6888 - _021B6574 - 2 ; case 19
	.short _021B68A4 - _021B6574 - 2 ; case 20
	.short _021B68C0 - _021B6574 - 2 ; case 21
	.short _021B690A - _021B6574 - 2 ; case 22
	.short _021B6960 - _021B6574 - 2 ; case 23
	.short _021B6970 - _021B6574 - 2 ; case 24
	.short _021B6990 - _021B6574 - 2 ; case 25
	.short _021B69C6 - _021B6574 - 2 ; case 26
	.short _021B6A0C - _021B6574 - 2 ; case 27
	.short _021B6A30 - _021B6574 - 2 ; case 28
	.short _021B6A3A - _021B6574 - 2 ; case 29
	.short _021B6A48 - _021B6574 - 2 ; case 30
_021B65B2:
	add r0, r4, #0
	bl ovy260_21b8554
	add r0, r4, #0
	mov r1, #2
	bl ovy260_21b86dc
	add r0, r4, #0
	bl ovy260_21b876c
	mov r0, #1
	add sp, #0x10
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021B65CE:
	mov r5, #1
	add r0, r4, #0
	bl sub_021B86B0
	and r5, r0
	add r0, r4, #0
	bl sub_021B87C4
	tst r0, r5
	beq _021B6684
	mov r0, #2
	add sp, #0x10
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021B65EA:
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0x14]
	mov r2, #0x41
	mov r3, #1
	bl sub_021C5888
	add r0, r7, #0
	mov r1, #3
	bl sub_021C5C88
	mov r0, #0x1e
	add sp, #0x10
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021B6606:
	add r0, r4, #0
	mov r1, #2
	bl ovy260_21b87dc
	mov r0, #4
	add sp, #0x10
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021B6616:
	add r0, r4, #0
	bl ovy260_21b8900
	add r5, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	beq _021B6684
	add r0, r4, #0
	bl ovy260_21b88ec
	cmp r5, #0
	beq _021B6638
	cmp r5, #1
	beq _021B6640
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021B6638:
	mov r0, #0xc
	add sp, #0x10
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021B6640:
	mov r0, #5
	add sp, #0x10
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021B6648:
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0x14]
	mov r2, #0x44
	mov r3, #1
	bl sub_021C5888
	add r0, r7, #0
	mov r1, #6
	bl sub_021C5C88
	mov r0, #0x1e
	add sp, #0x10
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021B6664:
	add r0, r4, #0
	mov r1, #0
	bl ovy260_21b87dc
	mov r0, #7
	add sp, #0x10
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021B6674:
	add r0, r4, #0
	bl ovy260_21b8900
	add r5, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	bne _021B6686
_021B6684:
	b _021B6A58
_021B6686:
	add r0, r4, #0
	bl ovy260_21b88ec
	cmp r5, #0
	beq _021B6698
	cmp r5, #1
	beq _021B66A0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021B6698:
	mov r0, #8
	add sp, #0x10
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021B66A0:
	mov r0, #2
	add sp, #0x10
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021B66A8:
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0x14]
	mov r2, #0x45
	mov r3, #1
	bl sub_021C5888
	add r0, r7, #0
	mov r1, #9
	bl sub_021C5C88
	mov r0, #0x1e
	add sp, #0x10
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021B66C4:
	add r0, r4, #0
	mov r1, #0
	bl ovy260_21b87dc
	mov r0, #0xa
	add sp, #0x10
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021B66D4:
	add r0, r4, #0
	bl ovy260_21b8900
	add r5, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	beq _021B67BE
	add r0, r4, #0
	bl ovy260_21b88ec
	cmp r5, #0
	beq _021B66F6
	cmp r5, #1
	beq _021B66FE
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021B66F6:
	mov r0, #0xb
	add sp, #0x10
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021B66FE:
	mov r0, #2
	add sp, #0x10
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021B6706:
	add r0, r4, #0
	bl sub_021B87D0
	cmp r0, #0
	beq _021B67BE
	add r0, r4, #0
	bl ovy260_21b87b0
	mov r0, #0x1d
	add sp, #0x10
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021B671E:
	ldr r5, [r5, #0x14]
	add r1, r4, #0
	add r0, r5, #0
	bl ovy260_21b8948
	add r0, r5, #0
	add r0, #0xd4
	bl sub_0201FE30
	cmp r0, #0
	bne _021B673C
	mov r0, #0xe
	add sp, #0x10
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021B673C:
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #0x41
	lsl r0, r0, #2
	add r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0200B530
	add r1, r5, #0
	add r1, #0xd4
	add r2, sp, #0xc
	add r7, r0, #0
	bl sub_0201F424
	add r5, #0xd4
	add r4, r0, #0
	add r0, r7, #0
	add r1, r5, #0
	bl sub_0201F6E8
	cmp r4, #0
	bne _021B6774
	cmp r0, #0
	bne _021B6774
	mov r0, #0xf
	add sp, #0x10
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021B6774:
	mov r0, #0xd
	add sp, #0x10
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021B677C:
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0x14]
	mov r2, #0x49
	mov r3, #1
	bl sub_021C5888
	add r0, r7, #0
	mov r1, #0x1d
	bl sub_021C5C88
	mov r0, #0x1e
	add sp, #0x10
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021B6798:
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0x14]
	mov r2, #0x61
	mov r3, #1
	bl sub_021C5888
	add r0, r7, #0
	mov r1, #0x1d
	bl sub_021C5C88
	mov r0, #0x1e
	add sp, #0x10
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021B67B4:
	add r0, r4, #0
	bl sub_021B87D0
	cmp r0, #0
	bne _021B67C0
_021B67BE:
	b _021B6A58
_021B67C0:
	add r0, r4, #0
	bl ovy260_21b87b0
	mov r0, #0x10
	add sp, #0x10
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021B67CE:
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0x14]
	mov r2, #0x46
	mov r3, #2
	bl sub_021C5888
	add r0, r7, #0
	mov r1, #0x11
	bl sub_021C5C88
	mov r0, #0x1e
	add sp, #0x10
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021B67EA:
	ldr r1, [r5, #0x14]
	ldr r0, [r4, #0x34]
	add r1, #0xd4
	mov r2, #1
	bl ovy260_21bbb80
	add r4, #0x44
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x9c
	blx MI_CpuFill8
	mov r0, #0x12
	add sp, #0x10
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021B680A:
	add r1, r4, #0
	ldr r0, [r4, #0x34]
	add r1, #0x44
	bl ovy260_21bbc50
	cmp r0, #1
	bne _021B6852
	ldr r0, [r5, #0x14]
	add r0, #0xd4
	bl sub_0201FDF8
	mov r2, #0
	mov r1, #0
	cmp r0, #0
	ble _021B683A
_021B6828:
	lsl r3, r1, #2
	add r3, r4, r3
	ldr r3, [r3, #0x48]
	cmp r3, #0
	bne _021B6834
	add r2, r2, #1
_021B6834:
	add r1, r1, #1
	cmp r1, r0
	blt _021B6828
_021B683A:
	add r1, r4, #0
	add r1, #0x44
	ldrb r1, [r1]
	cmp r1, #0
	bne _021B684E
	cmp r2, r0
	bne _021B684E
	mov r0, #0x14
_021B684A:
	str r0, [r6]
	b _021B685E
_021B684E:
	mov r0, #0x13
	b _021B684A
_021B6852:
	cmp r0, #3
	bne _021B685E
	ldr r1, _021B6A5C ; =ovy260_21b7f5c
	add r0, r7, #0
	bl sub_021C5C74
_021B685E:
	ldr r0, [r4, #0x34]
	mov r1, #0
	mov r2, #0
	mov r4, #0
	bl ovy260_21b8e08
	cmp r0, #1
	beq _021B6876
	cmp r0, #2
	beq _021B687C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021B6876:
	add sp, #0x10
	str r4, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021B687C:
	ldr r1, _021B6A5C ; =ovy260_21b7f5c
	add r0, r7, #0
	bl sub_021C5C74
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021B6888:
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0x14]
	mov r2, #0x47
	mov r3, #1
	bl sub_021C5888
	add r0, r7, #0
	mov r1, #0x1d
	bl sub_021C5C88
	mov r0, #0x1e
	add sp, #0x10
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021B68A4:
	ldr r0, [r5, #0x20]
	ldr r0, [r0]
	cmp r0, #0
	bne _021B68DE
	ldr r2, [r5, #0x14]
	ldr r0, [r4, #0x34]
	mov r1, #0
	add r2, #0xd4
	bl ovy260_21bac18
	mov r0, #0x15
	add sp, #0x10
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021B68C0:
	ldr r0, [r4, #0x34]
	bl ovy260_21badc4
	cmp r0, #1
	bne _021B68DA
	mov r2, #0x41
	lsl r2, r2, #2
	ldr r2, [r4, r2]
	ldr r1, _021B6A60 ; =0x00000708
	ldr r2, [r2, #0x20]
	str r1, [r2]
	mov r1, #0x16
	str r1, [r6]
_021B68DA:
	cmp r0, #0
	bne _021B68E0
_021B68DE:
	b _021B6A58
_021B68E0:
	ldr r0, [r4, #0x34]
	mov r1, #0
	mov r2, #0
	mov r4, #0
	bl ovy260_21b8e08
	cmp r0, #1
	beq _021B68F8
	cmp r0, #2
	beq _021B68FE
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021B68F8:
	add sp, #0x10
	str r4, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021B68FE:
	ldr r1, _021B6A5C ; =ovy260_21b7f5c
	add r0, r7, #0
	bl sub_021C5C74
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021B690A:
	ldr r0, [r5, #8]
	ldr r0, [r0]
	bl sub_02017934
	add r7, r0, #0
	bl sub_0200C260
	add r5, r0, #0
	add r0, r7, #0
	bl sub_0200BA78
	mov r1, #0
	bl sub_0200B924
	str r0, [sp]
	ldr r1, _021B6A64 ; =0x00008056
	add r0, r5, #0
	bl sub_0200C28C
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl sub_0200C360
	mov r0, #0x41
	lsl r0, r0, #2
	add r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0xa
	mov r2, #2
	bl sub_0200B830
	ldr r0, [sp]
	add r1, r7, #0
	bl sub_0200B9C4
	add r0, r7, #0
	bl sub_0203A24C
	mov r0, #0x17
	add sp, #0x10
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021B6960:
	ldr r0, [r5, #8]
	ldr r0, [r0]
	bl sub_0201782C
	mov r0, #0x18
	add sp, #0x10
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021B6970:
	ldr r0, [r5, #8]
	ldr r0, [r0]
	bl sub_02017850
	cmp r0, #2
	bne _021B6984
	mov r0, #0x19
	add sp, #0x10
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021B6984:
	cmp r0, #3
	bne _021B6A58
	mov r0, #0x1d
	add sp, #0x10
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021B6990:
	add r7, sp, #4
	add r0, r7, #0
	mov r1, #0
	mov r2, #8
	blx MI_CpuFill8
	mov r5, #2
	add r0, sp, #4
	strb r5, [r0, #1]
	ldr r0, [r4, #0x34]
	bl sub_021BC04C
	str r0, [sp, #8]
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r7, #0
	ldr r0, [r0, #0x30]
	mov r2, #0x57
	strb r5, [r0, #5]
	ldr r0, [r4, #0x34]
	bl ovy260_21bb8d8
	mov r0, #0x1a
	add sp, #0x10
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021B69C6:
	ldr r0, [r4, #0x34]
	bl ovy260_21bb930
	cmp r0, #1
	bne _021B69D6
	mov r0, #0x1b
	str r0, [r6]
	b _021B69E2
_021B69D6:
	cmp r0, #3
	bne _021B69E2
	ldr r1, _021B6A5C ; =ovy260_21b7f5c
	add r0, r7, #0
	bl sub_021C5C74
_021B69E2:
	ldr r0, [r4, #0x34]
	mov r1, #0
	mov r2, #0
	mov r4, #0
	bl ovy260_21b8e08
	cmp r0, #1
	beq _021B69FA
	cmp r0, #2
	beq _021B6A00
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021B69FA:
	add sp, #0x10
	str r4, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021B6A00:
	ldr r1, _021B6A5C ; =ovy260_21b7f5c
	add r0, r7, #0
	bl sub_021C5C74
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021B6A0C:
	add r0, r4, #0
	mov r1, #0
	bl ovy260_21b86dc
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0x14]
	mov r2, #0x48
	mov r3, #1
	bl sub_021C5888
	add r0, r7, #0
	mov r1, #0x1c
	bl sub_021C5C88
	mov r0, #0x1e
	add sp, #0x10
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021B6A30:
	ldr r1, _021B6A68 ; =ovy260_21b6a70
	bl sub_021C5C74
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021B6A3A:
	mov r1, #0
	str r1, [r5, #4]
	ldr r1, _021B6A6C ; =ovy260_21b7dc0
	bl sub_021C5C74
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021B6A48:
	ldr r0, [r4, #0x2c]
	bl sub_021C5A1C
	cmp r0, #0
	beq _021B6A58
	add r0, r7, #0
	bl sub_021C5C8C
_021B6A58:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021B6A5C: .word ovy260_21b7f5c
_021B6A60: .word 0x00000708
_021B6A64: .word 0x00008056
_021B6A68: .word ovy260_21b6a70
_021B6A6C: .word ovy260_21b7dc0
	thumb_func_end ovy260_21b6550

	thumb_func_start ovy260_21b6a70
ovy260_21b6a70: ; 0x021B6A70
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r2, #0
	mov r1, #0x41
	lsl r1, r1, #2
	ldr r2, [r4]
	add r6, r0, #0
	ldr r1, [r5, r1]
	cmp r2, #0x10
	bhi _021B6B4A
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021B6A90: ; jump table
	.short _021B6AB2 - _021B6A90 - 2 ; case 0
	.short _021B6ADA - _021B6A90 - 2 ; case 1
	.short _021B6AFA - _021B6A90 - 2 ; case 2
	.short _021B6B0A - _021B6A90 - 2 ; case 3
	.short _021B6B2C - _021B6A90 - 2 ; case 4
	.short _021B6B3A - _021B6A90 - 2 ; case 5
	.short _021B6B72 - _021B6A90 - 2 ; case 6
	.short _021B6B7A - _021B6A90 - 2 ; case 7
	.short _021B6B88 - _021B6A90 - 2 ; case 8
	.short _021B6BCA - _021B6A90 - 2 ; case 9
	.short _021B6BD2 - _021B6A90 - 2 ; case 10
	.short _021B6BF4 - _021B6A90 - 2 ; case 11
	.short _021B6C02 - _021B6A90 - 2 ; case 12
	.short _021B6C4C - _021B6A90 - 2 ; case 13
	.short _021B6C54 - _021B6A90 - 2 ; case 14
	.short _021B6C6E - _021B6A90 - 2 ; case 15
	.short _021B6C76 - _021B6A90 - 2 ; case 16
_021B6AB2:
	ldr r0, [r5, #0x34]
	mov r1, #0
	mov r2, #0
	bl ovy260_21b8e08
	cmp r0, #0
	beq _021B6ACA
	cmp r0, #1
	beq _021B6AD0
	cmp r0, #2
	beq _021B6AD0
	pop {r4, r5, r6, pc}
_021B6ACA:
	mov r0, #1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021B6AD0:
	ldr r1, _021B6C88 ; =ovy260_21b7f5c
	add r0, r6, #0
	bl sub_021C5C74
	pop {r4, r5, r6, pc}
_021B6ADA:
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	bne _021B6AF4
	add r0, r5, #0
	bl ovy260_21b8554
	add r0, r5, #0
	mov r1, #0
	bl ovy260_21b86dc
	mov r0, #2
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021B6AF4:
	mov r0, #3
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021B6AFA:
	add r0, r5, #0
	bl sub_021B86B0
	cmp r0, #0
	beq _021B6B4A
	mov r0, #3
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021B6B0A:
	mov r0, #0
	mov r1, #1
	bl sub_02044C98
	ldr r0, [r5, #0x2c]
	ldr r1, [r5, #0x14]
	mov r2, #0x4a
	mov r3, #1
	bl sub_021C5888
	add r0, r6, #0
	mov r1, #4
	bl sub_021C5C88
	mov r0, #0x10
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021B6B2C:
	add r0, r5, #0
	mov r1, #3
	bl ovy260_21b87dc
	mov r0, #5
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021B6B3A:
	add r0, r5, #0
	bl ovy260_21b8900
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	bne _021B6B4C
_021B6B4A:
	b _021B6C86
_021B6B4C:
	add r0, r5, #0
	bl ovy260_21b88ec
	cmp r6, #0
	beq _021B6B60
	cmp r6, #1
	beq _021B6B66
	cmp r6, #2
	beq _021B6B6C
	pop {r4, r5, r6, pc}
_021B6B60:
	mov r0, #0xa
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021B6B66:
	mov r0, #7
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021B6B6C:
	mov r0, #6
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021B6B72:
	ldr r1, _021B6C8C ; =ovy260_21b7d28
	bl sub_021C5C74
	pop {r4, r5, r6, pc}
_021B6B7A:
	ldr r1, _021B6C90 ; =ovy260_21b823c
	add r0, r5, #0
	bl ovy260_21b8914
	mov r0, #8
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021B6B88:
	add r0, r5, #0
	bl ovy260_21b8928
	sub r1, r0, #1
	cmp r1, #1
	bhi _021B6B9A
	mov r0, #1
_021B6B96:
	str r0, [r4]
	b _021B6BAE
_021B6B9A:
	cmp r0, #0
	bne _021B6BA2
	mov r0, #9
	b _021B6B96
_021B6BA2:
	cmp r0, #3
	bne _021B6BAE
	ldr r1, _021B6C88 ; =ovy260_21b7f5c
	add r0, r6, #0
	bl sub_021C5C74
_021B6BAE:
	ldr r0, [r5, #0x34]
	mov r1, #0
	mov r2, #0
	bl ovy260_21b8e08
	cmp r0, #1
	beq _021B6BC0
	cmp r0, #2
	bne _021B6C86
_021B6BC0:
	ldr r1, _021B6C88 ; =ovy260_21b7f5c
	add r0, r6, #0
	bl sub_021C5C74
	pop {r4, r5, r6, pc}
_021B6BCA:
	ldr r1, _021B6C94 ; =ovy260_21b7dc0
	bl sub_021C5C74
	pop {r4, r5, r6, pc}
_021B6BD2:
	ldr r0, [r1, #0x14]
	add r1, r5, #0
	bl ovy260_21b8948
	ldr r0, [r5, #0x2c]
	ldr r1, [r5, #0x14]
	mov r2, #0x18
	mov r3, #2
	bl sub_021C5888
	add r0, r6, #0
	mov r1, #0xb
	bl sub_021C5C88
	mov r0, #0x10
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021B6BF4:
	ldr r1, _021B6C98 ; =ovy260_21b84a8
	add r0, r5, #0
	bl ovy260_21b8914
	mov r0, #0xc
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021B6C02:
	add r0, r5, #0
	bl ovy260_21b8928
	cmp r0, #0
	bne _021B6C12
_021B6C0C:
	mov r0, #0xd
	str r0, [r4]
	b _021B6C24
_021B6C12:
	cmp r0, #1
	bne _021B6C18
	b _021B6C0C
_021B6C18:
	cmp r0, #3
	bne _021B6C24
	ldr r1, _021B6C88 ; =ovy260_21b7f5c
	add r0, r6, #0
	bl sub_021C5C74
_021B6C24:
	ldr r0, [r5, #0x34]
	mov r1, #0
	mov r2, #0
	bl ovy260_21b8e08
	cmp r0, #1
	beq _021B6C38
	cmp r0, #2
	beq _021B6C42
	pop {r4, r5, r6, pc}
_021B6C38:
	ldr r1, _021B6C9C ; =ovy260_21b6a70
	add r0, r6, #0
	bl sub_021C5C74
	pop {r4, r5, r6, pc}
_021B6C42:
	ldr r1, _021B6C88 ; =ovy260_21b7f5c
	add r0, r6, #0
	bl sub_021C5C74
	pop {r4, r5, r6, pc}
_021B6C4C:
	ldr r1, _021B6CA0 ; =ovy260_21b6ca4
	bl sub_021C5C74
	pop {r4, r5, r6, pc}
_021B6C54:
	ldr r0, [r5, #0x2c]
	ldr r1, [r5, #0x14]
	mov r2, #0x78
	mov r3, #1
	bl sub_021C5888
	mov r0, #0x10
	str r0, [r4]
	add r0, r6, #0
	mov r1, #0xf
	bl sub_021C5C88
	pop {r4, r5, r6, pc}
_021B6C6E:
	ldr r1, _021B6C94 ; =ovy260_21b7dc0
	bl sub_021C5C74
	pop {r4, r5, r6, pc}
_021B6C76:
	ldr r0, [r5, #0x2c]
	bl sub_021C5A1C
	cmp r0, #0
	beq _021B6C86
	add r0, r6, #0
	bl sub_021C5C8C
_021B6C86:
	pop {r4, r5, r6, pc}
	.align 2, 0
_021B6C88: .word ovy260_21b7f5c
_021B6C8C: .word ovy260_21b7d28
_021B6C90: .word ovy260_21b823c
_021B6C94: .word ovy260_21b7dc0
_021B6C98: .word ovy260_21b84a8
_021B6C9C: .word ovy260_21b6a70
_021B6CA0: .word ovy260_21b6ca4
	thumb_func_end ovy260_21b6a70

	thumb_func_start ovy260_21b6ca4
ovy260_21b6ca4: ; 0x021B6CA4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	str r0, [sp, #8]
	mov r0, #0x41
	add r4, r2, #0
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r5, r1, #0
	str r0, [sp, #0x18]
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [r5]
	mov r1, #0
	cmp r0, #0xc
	blt _021B6CC8
	cmp r0, #0x1b
	bge _021B6CC8
	mov r1, #1
_021B6CC8:
	cmp r0, #0x19
	blt _021B6CD0
	cmp r0, #0x1a
	ble _021B6CDC
_021B6CD0:
	cmp r0, #0x11
	blt _021B6CD8
	cmp r0, #0x12
	ble _021B6CDC
_021B6CD8:
	mov r2, #1
	b _021B6CDE
_021B6CDC:
	mov r2, #0
_021B6CDE:
	add r0, r4, #0
	bl ovy260_21b8b2c
	cmp r0, #3
	bne _021B6CF0
	mov r0, #0x28
	add sp, #0x4c
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_021B6CF0:
	ldr r1, [r5]
	cmp r1, #0x35
	bls _021B6CFA
	bl _021B773C
_021B6CFA:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021B6D06: ; jump table
	.short _021B6D72 - _021B6D06 - 2 ; case 0
	.short _021B6D8A - _021B6D06 - 2 ; case 1
	.short _021B6DCE - _021B6D06 - 2 ; case 2
	.short _021B6E0E - _021B6D06 - 2 ; case 3
	.short _021B6E14 - _021B6D06 - 2 ; case 4
	.short _021B6E34 - _021B6D06 - 2 ; case 5
	.short _021B6E94 - _021B6D06 - 2 ; case 6
	.short _021B6E98 - _021B6D06 - 2 ; case 7
	.short _021B6EAC - _021B6D06 - 2 ; case 8
	.short _021B6EB6 - _021B6D06 - 2 ; case 9
	.short _021B6EC8 - _021B6D06 - 2 ; case 10
	.short _021B6EF4 - _021B6D06 - 2 ; case 11
	.short _021B6F56 - _021B6D06 - 2 ; case 12
	.short _021B6FAC - _021B6D06 - 2 ; case 13
	.short _021B7002 - _021B6D06 - 2 ; case 14
	.short _021B711C - _021B6D06 - 2 ; case 15
	.short _021B719A - _021B6D06 - 2 ; case 16
	.short _021B71CC - _021B6D06 - 2 ; case 17
	.short _021B71F0 - _021B6D06 - 2 ; case 18
	.short _021B722C - _021B6D06 - 2 ; case 19
	.short _021B7238 - _021B6D06 - 2 ; case 20
	.short _021B7264 - _021B6D06 - 2 ; case 21
	.short _021B72B2 - _021B6D06 - 2 ; case 22
	.short _021B72F0 - _021B6D06 - 2 ; case 23
	.short _021B7304 - _021B6D06 - 2 ; case 24
	.short _021B7320 - _021B6D06 - 2 ; case 25
	.short _021B7330 - _021B6D06 - 2 ; case 26
	.short _021B7368 - _021B6D06 - 2 ; case 27
	.short _021B7382 - _021B6D06 - 2 ; case 28
	.short _021B739C - _021B6D06 - 2 ; case 29
	.short _021B73A8 - _021B6D06 - 2 ; case 30
	.short _021B73BC - _021B6D06 - 2 ; case 31
	.short _021B73EC - _021B6D06 - 2 ; case 32
	.short _021B7420 - _021B6D06 - 2 ; case 33
	.short _021B742E - _021B6D06 - 2 ; case 34
	.short _021B7452 - _021B6D06 - 2 ; case 35
	.short _021B749C - _021B6D06 - 2 ; case 36
	.short _021B7538 - _021B6D06 - 2 ; case 37
	.short _021B755A - _021B6D06 - 2 ; case 38
	.short _021B7588 - _021B6D06 - 2 ; case 39
	.short _021B75BA - _021B6D06 - 2 ; case 40
	.short _021B75D0 - _021B6D06 - 2 ; case 41
	.short _021B75DE - _021B6D06 - 2 ; case 42
	.short _021B760A - _021B6D06 - 2 ; case 43
	.short _021B7620 - _021B6D06 - 2 ; case 44
	.short _021B762E - _021B6D06 - 2 ; case 45
	.short _021B765A - _021B6D06 - 2 ; case 46
	.short _021B7660 - _021B6D06 - 2 ; case 47
	.short _021B7692 - _021B6D06 - 2 ; case 48
	.short _021B76F8 - _021B6D06 - 2 ; case 49
	.short _021B7708 - _021B6D06 - 2 ; case 50
	.short _021B7712 - _021B6D06 - 2 ; case 51
	.short _021B771C - _021B6D06 - 2 ; case 52
	.short _021B772C - _021B6D06 - 2 ; case 53
_021B6D72:
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0x14]
	mov r2, #0x18
	mov r3, #2
	bl sub_021C5888
	ldr r0, [sp, #8]
	mov r1, #1
	bl sub_021C5C88
	mov r0, #0x35
_021B6D88:
	b _021B6FA8
_021B6D8A:
	ldr r0, [r4, #0x34]
	mov r1, #0
	mov r2, #0
	bl ovy260_21b8e08
	cmp r0, #0
	beq _021B6DC2
	cmp r0, #1
	beq _021B6DA4
	cmp r0, #2
	beq _021B6DB6
	bl _021B773C
_021B6DA4:
	ldr r0, [sp, #8]
	ldr r1, _021B70A0 ; =ovy260_21b6a70
_021B6DA8:
	bl sub_021C5C74
	add r0, r4, #0
	bl sub_021B8C40
	bl _021B773C
_021B6DB6:
	ldr r0, [sp, #8]
	ldr r1, _021B70A4 ; =ovy260_21b7f5c
_021B6DBA:
	bl sub_021C5C74
	bl _021B773C
_021B6DC2:
	ldr r1, _021B70A8 ; =ovy260_21b7f88
	add r0, r4, #0
	bl ovy260_21b8914
	mov r0, #2
	b _021B6D88
_021B6DCE:
	add r0, r4, #0
	bl ovy260_21b8928
	cmp r0, #0
	bne _021B6DDE
	mov r0, #4
_021B6DDA:
	str r0, [r5]
	b _021B6DF4
_021B6DDE:
	sub r1, r0, #1
	cmp r1, #1
	bhi _021B6DE8
	mov r0, #3
	b _021B6DDA
_021B6DE8:
	cmp r0, #3
	bne _021B6DF4
	ldr r0, [sp, #8]
	ldr r1, _021B70A4 ; =ovy260_21b7f5c
	bl sub_021C5C74
_021B6DF4:
	ldr r0, [r4, #0x34]
	mov r1, #0
	mov r2, #0
	bl ovy260_21b8e08
	cmp r0, #1
	beq _021B6E0A
	cmp r0, #2
	beq _021B6E0C
	bl _021B773C
_021B6E0A:
	b _021B6DA4
_021B6E0C:
	b _021B6DB6
_021B6E0E:
	ldr r0, [sp, #8]
	ldr r1, _021B70AC ; =ovy260_21b7dc0
_021B6E12:
	b _021B6DBA
_021B6E14:
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r3, [r4, r0]
	ldr r0, [r3, #0x20]
	ldr r0, [r0]
	cmp r0, #0
	bne _021B6EC0
	mov r1, #0
	ldr r0, [r4, #0x34]
	ldr r3, [r3, #0x34]
	mvn r1, r1
	mov r2, #1
	bl ovy260_21ba3b4
	mov r0, #5
	b _021B6D88
_021B6E34:
	ldr r0, [r4, #0x34]
	bl ovy260_21ba488
	add r6, r0, #0
	cmp r6, #1
	bne _021B6E76
	mov r7, #0x41
	lsl r7, r7, #2
	ldr r0, [sp, #0x18]
	ldr r2, [r4, r7]
	ldr r0, [r0, #0x14]
	ldr r2, [r2, #0x20]
	mov r1, #0
	str r1, [r2]
	add r1, r4, #0
	bl ovy260_21b8994
	ldr r2, [r4, r7]
	ldr r0, [r2, #0x34]
	ldr r1, [r0, #0x14]
	ldr r0, [r2, #0x28]
	str r1, [r0]
	ldr r1, [r4, r7]
	add r0, r4, #0
	ldr r1, [r1, #0x34]
	bl ovy260_21b8c50
	cmp r0, #0
	beq _021B6E72
	mov r0, #6
	b _021B6E74
_021B6E72:
	mov r0, #0xa
_021B6E74:
	str r0, [r5]
_021B6E76:
	cmp r6, #0
	beq _021B6EC0
	ldr r0, [r4, #0x34]
	mov r1, #0
	mov r2, #0
	bl ovy260_21b8e08
	cmp r0, #1
	beq _021B6E90
	cmp r0, #2
	beq _021B6E92
	bl _021B773C
_021B6E90:
	b _021B6DA4
_021B6E92:
	b _021B6DB6
_021B6E94:
	mov r0, #7
	b _021B6D88
_021B6E98:
	add r0, r4, #0
	bl sub_021B86BC
	cmp r0, #0
	beq _021B6EC0
	add r0, r4, #0
	bl ovy260_21b869c
	mov r0, #8
	b _021B6D88
_021B6EAC:
	add r0, r4, #0
	bl ovy260_21b8554
	mov r0, #9
	b _021B6D88
_021B6EB6:
	add r0, r4, #0
	bl sub_021B86B0
	cmp r0, #0
	bne _021B6EC4
_021B6EC0:
	bl _021B773C
_021B6EC4:
	mov r0, #0xa
	b _021B6FA8
_021B6EC8:
	add r0, r4, #0
	mov r1, #0
	add r0, #0xec
	str r1, [r0]
	ldr r0, [r4, #0x28]
	mov r1, #1
	bl sub_021C4F30
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0x14]
	mov r2, #0x55
	mov r3, #0
	bl sub_021C5888
	mov r0, #0x35
	str r0, [r5]
	ldr r0, [sp, #8]
	mov r1, #0xb
_021B6EEC:
	bl sub_021C5C88
	bl _021B773C
_021B6EF4:
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r7, [r4, r0]
	add r0, sp, #0x3c
	mov r1, #0
	mov r2, #0x10
	mov r6, #0x10
	blx MI_CpuFill8
	mov r0, #0x10
	add r0, #0xf4
	ldr r1, [r4, r0]
	ldr r0, [r1, #0x34]
	ldr r0, [r0, #0x10]
	str r0, [sp, #0x3c]
	ldr r0, [r1, #0x34]
	mov r1, #2
	ldr r0, [r0, #4]
	str r0, [sp, #0x40]
	add r0, r7, #0
	bl sub_0200B798
	add r6, #0xf4
	str r0, [sp, #0x44]
	ldr r0, [r4, r6]
	ldr r3, [sp, #0x18]
	ldr r0, [r0, #0x34]
	mov r2, #0
	ldr r1, [r0, #8]
	ldr r0, [r0, #0xc]
	add r0, r1, r0
	str r0, [sp, #0x48]
	add r0, sp, #0x3c
	str r0, [sp]
	ldr r3, [r3, #8]
	ldr r0, [r4, #0x34]
	ldr r3, [r3, #4]
	mov r1, #0
	bl ovy260_21b8fd8
	add r1, r4, #0
	add r1, #0xe4
	mov r0, #0
	str r0, [r1]
	add r1, r4, #0
	add r1, #0xe8
	str r0, [r1]
	mov r0, #0xc
	b _021B6D88
_021B6F56:
	ldr r0, [r4, #0x34]
	mov r1, #0
	mov r2, #0
	mov r6, #0
	bl ovy260_21b8e08
	cmp r0, #1
	beq _021B6F6C
	cmp r0, #2
	beq _021B6F84
	b _021B6F94
_021B6F6C:
	ldr r0, [r4, #0x28]
	add r1, r6, #0
	bl sub_021C4F30
	ldr r0, [sp, #8]
	ldr r1, _021B70B0 ; =ovy260_21b7be8
	bl sub_021C5C74
	add r0, r4, #0
	bl sub_021B8C40
	b _021B6F94
_021B6F84:
	ldr r0, [r4, #0x28]
	add r1, r6, #0
	bl sub_021C4F30
	ldr r0, [sp, #8]
	ldr r1, _021B70A4 ; =ovy260_21b7f5c
	bl sub_021C5C74
_021B6F94:
	ldr r0, [r4, #0x34]
	bl ovy260_21b90ec
	cmp r0, #1
	bne _021B6FA2
	mov r0, #0xd
	b _021B6D88
_021B6FA2:
	cmp r0, #2
	bne _021B6FE2
_021B6FA6:
	mov r0, #0xb
_021B6FA8:
	str r0, [r5]
	b _021B773C
_021B6FAC:
	cmp r0, #0
	ldr r0, [r4, #0x34]
	bne _021B6FCC
	ldr r1, [sp, #0x18]
	ldr r1, [r1, #0x14]
	bl ovy260_21bb1bc
	cmp r0, #0
	beq _021B6FE2
	mov r0, #0xe
_021B6FC0:
	str r0, [r5]
	add r0, r4, #0
	mov r1, #0
	add r0, #0xf0
	str r1, [r0]
	b _021B773C
_021B6FCC:
	mov r1, #0
	mov r2, #1
	mov r6, #0
	bl ovy260_21b8e08
	cmp r0, #1
	beq _021B6FE4
	cmp r0, #2
	beq _021B7000
	cmp r0, #4
	beq _021B6FE4
_021B6FE2:
	b _021B773C
_021B6FE4:
	add r0, r4, #0
	mov r1, #0
	add r0, #0xec
	str r1, [r0]
	add r0, r4, #0
	bl ovy260_21b88ec
_021B6FF2:
	ldr r0, [r4, #0x28]
	mov r1, #0
	bl sub_021C4F30
	ldr r0, [sp, #8]
	ldr r1, _021B70B0 ; =ovy260_21b7be8
	b _021B6DA8
_021B7000:
	b _021B72E0
_021B7002:
	ldr r0, [r4, #0x34]
	add r1, sp, #0x38
	bl ovy260_21bb200
	cmp r0, #0
	bne _021B7010
	b _021B7116
_021B7010:
	bl sub_0201FCF8
	add r2, r0, #0
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x38]
	ldr r1, [r1, #0x18]
	add r2, #0xd4
	blx MI_CpuCopy8
	ldr r0, [sp, #0x18]
	mov r6, #0
	ldr r7, [r0, #0x18]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
_021B7030:
	bl sub_020486F4
	lsl r1, r6, #1
	ldrh r1, [r7, r1]
	cmp r1, r0
	bne _021B7040
	mov r0, #0
	str r0, [sp, #0x10]
_021B7040:
	add r6, r6, #1
	cmp r6, #8
	blt _021B7030
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _021B707C
	ldr r0, [sp, #0xc]
	ldr r2, _021B70B4 ; =0x000001A1
	add r0, r0, #1
	str r0, [sp, #0xc]
	ldr r3, _021B70B8 ; =0x00008057
	mov r0, #0
	mov r1, #2
	bl sub_0204875C
	ldr r1, _021B70B8 ; =0x00008057
	add r6, r0, #0
	bl sub_0204898C
	str r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #8
	bl sub_020486B8
	ldr r0, [sp, #0x1c]
	bl sub_02048564
	add r0, r6, #0
	bl sub_020487D4
_021B707C:
	ldrb r0, [r7, #0x1d]
	cmp r0, #0
	beq _021B7090
	cmp r0, #1
	beq _021B7090
	mov r0, #0
	strb r0, [r7, #0x1d]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
_021B7090:
	ldrb r0, [r7, #0x1c]
	cmp r0, #0x10
	blo _021B70C6
	ldrb r0, [r7, #0x1d]
	cmp r0, #0
	bne _021B70BC
	mov r0, #0
	b _021B70BE
	.align 2, 0
_021B70A0: .word ovy260_21b6a70
_021B70A4: .word ovy260_21b7f5c
_021B70A8: .word ovy260_21b7f88
_021B70AC: .word ovy260_21b7dc0
_021B70B0: .word ovy260_21b7be8
_021B70B4: .word 0x000001A1
_021B70B8: .word 0x00008057
_021B70BC:
	mov r0, #8
_021B70BE:
	strb r0, [r7, #0x1c]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
_021B70C6:
	ldrb r0, [r7, #0x18]
	ldrb r1, [r7, #0x19]
	ldrb r2, [r7, #0x1a]
	bl sub_0202B514
	cmp r0, #0
	bne _021B70E0
	mov r0, #0
	strb r0, [r7, #0x18]
	strb r0, [r7, #0x19]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
_021B70E0:
	add r0, r7, #0
	ldr r1, _021B73B8 ; =0x00008057
	add r0, #0x38
	bl sub_02029EF8
	cmp r0, #0
	bne _021B70FE
	add r7, #0x38
	add r0, r7, #0
	mov r1, #1
	bl sub_02029BC8
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
_021B70FE:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _021B7112
	ldr r0, [sp, #0x18]
	ldr r0, [r0, #8]
	ldr r0, [r0]
	bl sub_02017934
	bl sub_0200A5E4
_021B7112:
	mov r0, #0xf
	str r0, [r5]
_021B7116:
	mov r0, #1
	str r0, [sp, #0x14]
	b _021B773C
_021B711C:
	ldr r0, [sp, #0x18]
	add r1, sp, #0x28
	ldr r7, [r0, #0x14]
	mov r2, #8
	add r0, r7, #0
	bl sub_020508B8
	add r7, #0xd4
	add r0, r7, #0
	mov r6, #0
	bl sub_0201FDF8
	cmp r0, #0
	ble _021B714C
_021B7138:
	add r0, r7, #0
	add r1, r6, #0
	bl sub_0201FF08
	add r0, r7, #0
	add r6, r6, #1
	bl sub_0201FDF8
	cmp r6, r0
	blt _021B7138
_021B714C:
	ldr r0, [sp, #0x18]
	add r1, sp, #0x20
	ldr r7, [r0, #0x18]
	mov r2, #8
	add r0, r7, #0
	bl sub_020508B8
	add r7, #0xd4
	add r0, r7, #0
	mov r6, #0
	bl sub_0201FDF8
	cmp r0, #0
	ble _021B717C
_021B7168:
	add r0, r7, #0
	add r1, r6, #0
	bl sub_0201FF08
	add r0, r7, #0
	add r6, r6, #1
	bl sub_0201FDF8
	cmp r6, r0
	blt _021B7168
_021B717C:
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x18]
	ldr r0, [r0, #0x18]
	ldr r3, [r1, #0x14]
	ldr r1, [r0, #0x40]
	ldr r2, [r3, #0x40]
	cmp r2, r1
	bne _021B7198
	ldr r1, [r3, #0x50]
	ldr r0, [r0, #0x50]
	cmp r1, r0
	bne _021B7198
	mov r0, #0x10
	b _021B6D88
_021B7198:
	b _021B731C
_021B719A:
	mov r0, #0
	str r0, [sp, #0x34]
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200B530
	ldr r1, [sp, #0x18]
	add r2, sp, #0x34
	ldr r1, [r1, #0x18]
	add r1, #0xd4
	bl sub_0201F424
	cmp r0, #0
	bne _021B71BC
	mov r0, #0x11
	b _021B6D88
_021B71BC:
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xe4
	str r1, [r0]
	b _021B72AE
_021B71CC:
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	ldr r0, [r1, #0x20]
	ldr r0, [r0]
	cmp r0, #0
	bne _021B725E
	ldr r1, [r1, #0x18]
	add r3, r4, #0
	add r3, #0xfc
	ldr r0, [r4, #0x34]
	ldr r1, [r1, #0x4c]
	ldr r3, [r3]
	mov r2, #3
	bl ovy260_21ba3b4
	mov r0, #0x12
	b _021B6D88
_021B71F0:
	ldr r0, [r4, #0x34]
	bl ovy260_21ba488
	cmp r0, #1
	bne _021B720C
	mov r1, #0x41
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	mov r2, #0xe1
	ldr r1, [r1, #0x20]
	lsl r2, r2, #4
	str r2, [r1]
	mov r1, #0x13
	str r1, [r5]
_021B720C:
	cmp r0, #0
	beq _021B725E
	ldr r0, [r4, #0x34]
	mov r1, #0
	mov r2, #1
	mov r6, #0
	bl ovy260_21b8e08
	cmp r0, #1
	beq _021B7228
	cmp r0, #2
	beq _021B722A
	cmp r0, #4
	bne _021B725E
_021B7228:
	b _021B6FF2
_021B722A:
	b _021B7366
_021B722C:
	ldr r0, [r4, #0x34]
	mov r1, #0x17
	bl ovy260_21b8dd8
	mov r0, #0x14
	b _021B6D88
_021B7238:
	ldr r0, [r4, #0x34]
	bl ovy260_21b8df0
	cmp r0, #0
	beq _021B7246
	mov r0, #0x15
	str r0, [r5]
_021B7246:
	ldr r0, [r4, #0x34]
	mov r1, #0
	mov r2, #1
	mov r6, #0
	bl ovy260_21b8e08
	cmp r0, #1
	beq _021B7260
	cmp r0, #2
	beq _021B7262
	cmp r0, #4
	beq _021B7260
_021B725E:
	b _021B773C
_021B7260:
	b _021B6FF2
_021B7262:
	b _021B7366
_021B7264:
	mov r1, #0x41
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	add r0, #0xfc
	ldr r1, [r1, #0x18]
	ldr r0, [r0]
	add r1, #0xd4
	bl ovy260_21b8abc
	cmp r0, #0
	bne _021B728A
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xe4
	str r1, [r0]
_021B728A:
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r2, #0x57
	ldr r0, [r0, #0x18]
	add r1, r0, #0
	add r1, #0xd4
	bl ovy260_21b8a24
	cmp r0, #0
	bne _021B72AE
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xe4
	str r1, [r0]
_021B72AE:
	mov r0, #0x16
	b _021B6D88
_021B72B2:
	cmp r0, #0
	ldr r0, [r4, #0x34]
	bne _021B72C8
	add r1, r4, #0
	add r1, #0xe4
	bl ovy260_21bb284
	cmp r0, #0
	beq _021B736C
	mov r0, #0x17
	b _021B6FC0
_021B72C8:
	mov r1, #0
	mov r2, #1
	mov r6, #0
	bl ovy260_21b8e08
	cmp r0, #1
	beq _021B72DE
	cmp r0, #2
	beq _021B72E0
	cmp r0, #4
	bne _021B736C
_021B72DE:
	b _021B6FE4
_021B72E0:
	add r0, r4, #0
	bl ovy260_21b88ec
_021B72E6:
	ldr r0, [r4, #0x28]
	add r1, r6, #0
_021B72EA:
	bl sub_021C4F30
	b _021B6DB6
_021B72F0:
	add r1, r4, #0
	ldr r0, [r4, #0x34]
	add r1, #0xe8
	bl ovy260_21bb2bc
	cmp r0, #0
	beq _021B7302
	mov r0, #0x18
	b _021B6D88
_021B7302:
	b _021B7116
_021B7304:
	add r0, r4, #0
	add r0, #0xe8
	ldr r0, [r0]
	cmp r0, #0
	bne _021B731C
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0]
	cmp r0, #0
	bne _021B731C
	mov r0, #0x19
	b _021B6D88
_021B731C:
	mov r0, #0x33
	b _021B6D88
_021B7320:
	ldr r1, [sp, #0x18]
	ldr r0, [r4, #0x34]
	ldr r1, [r1, #0x18]
	mov r2, #0x57
	bl ovy260_21bba50
	mov r0, #0x1a
	b _021B6D88
_021B7330:
	ldr r0, [r4, #0x34]
	add r1, sp, #0x30
	bl ovy260_21bbb14
	cmp r0, #0
	beq _021B734C
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [sp, #0x30]
	ldr r0, [r0, #0x40]
	str r1, [r0]
	mov r0, #0x1b
	str r0, [r5]
_021B734C:
	ldr r0, [r4, #0x34]
	mov r1, #0
	mov r2, #1
	mov r6, #0
	bl ovy260_21b8e08
	cmp r0, #1
	beq _021B7364
	cmp r0, #2
	beq _021B7366
	cmp r0, #4
	bne _021B736C
_021B7364:
	b _021B6FF2
_021B7366:
	b _021B72E6
_021B7368:
	cmp r0, #0
	beq _021B736E
_021B736C:
	b _021B773C
_021B736E:
	ldr r0, [r4, #0x34]
	mov r1, #0x15
	bl ovy260_21b8dd8
	add r0, r4, #0
	mov r1, #0
	add r0, #0xf0
	str r1, [r0]
	mov r0, #0x1c
	b _021B6D88
_021B7382:
	ldr r0, [r4, #0x34]
	bl sub_021B9364
	cmp r0, #0
	bne _021B739A
	ldr r0, [r4, #0x34]
	bl ovy260_21b8df0
	cmp r0, #0
	beq _021B739A
	mov r0, #0x1d
	str r0, [r5]
_021B739A:
	b _021B7116
_021B739C:
	ldr r0, [r4, #0x34]
	mov r1, #0x16
	bl ovy260_21b8dd8
	mov r0, #0x1e
	b _021B6FC0
_021B73A8:
	ldr r0, [r4, #0x34]
	bl ovy260_21b8df0
	cmp r0, #0
	beq _021B73B6
	mov r0, #0x1f
	str r0, [r5]
_021B73B6:
	b _021B7116
	.align 2, 0
_021B73B8: .word 0x00008057
_021B73BC:
	ldr r0, [r4, #0x28]
	mov r1, #0
	mov r6, #0
	bl sub_021C4F30
	ldr r0, _021B76D4 ; =0x0000063A
	bl sub_02006254
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0x14]
	mov r2, #0x57
	mov r3, #1
	bl sub_021C5888
	mov r0, #0x35
	str r0, [r5]
	ldr r0, [sp, #8]
	mov r1, #0x20
	bl sub_021C5C88
	add r0, r4, #0
	add r0, #0xe0
_021B73E8:
	str r6, [r0]
	b _021B773C
_021B73EC:
	add r0, r4, #0
	add r0, #0xe0
	ldr r2, [r0]
	add r0, r4, #0
	add r0, #0xe0
	ldr r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xe0
	str r1, [r0]
	cmp r2, #0x78
	bls _021B74DE
	add r1, r4, #0
	mov r0, #0
	add r1, #0xe0
	str r0, [r1]
	mov r1, #0
	bl sub_02044C98
	ldr r1, [sp, #0x18]
	add r0, r4, #0
	ldr r1, [r1, #0x18]
	bl ovy260_21b86fc
	mov r0, #0x21
	b _021B6D88
_021B7420:
	add r0, r4, #0
	bl sub_021B8760
	cmp r0, #0
	beq _021B74DE
	mov r0, #0x22
	b _021B6D88
_021B742E:
	add r0, r4, #0
	add r0, #0xe0
	ldr r2, [r0]
	add r0, r4, #0
	add r0, #0xe0
	ldr r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xe0
	str r1, [r0]
	cmp r2, #0
	beq _021B74DE
	add r0, r4, #0
	mov r1, #0
	add r0, #0xe0
	str r1, [r0]
	mov r0, #0x23
	b _021B6D88
_021B7452:
	mov r6, #6
	lsl r6, r6, #0x10
	mov r0, #1
	mov r1, #0x86
	add r2, r6, #0
	bl sub_0203A15C
	mov r2, #0xfa
	mov r0, #9
	add r1, r6, #0
	lsl r2, r2, #2
	mov r3, #0x86
	bl sub_021520AC
	mov r0, #0x86
	bl sub_021521DC
	mov r6, #0
	str r6, [sp]
	str r6, [sp, #4]
	ldr r0, [r4, #0x34]
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl ovy260_21b9524
	add r0, r4, #0
	add r0, #0xf4
	str r6, [r0]
	mov r0, #0x24
	str r0, [r5]
	add r0, r4, #0
	add r0, #0xe0
	str r6, [r0]
	add r0, r4, #0
	add r0, #0xf8
	b _021B73E8
_021B749C:
	add r0, r4, #0
	add r0, #0xf8
	ldr r0, [r0]
	cmp r0, #0
	bne _021B74B6
	add r1, r4, #0
	ldr r0, [r4, #0x34]
	add r1, #0xf4
	bl ovy260_21b9630
	add r1, r4, #0
	add r1, #0xf8
	str r0, [r1]
_021B74B6:
	add r0, r4, #0
	add r0, #0xf8
	ldr r0, [r0]
	cmp r0, #1
	bne _021B74C4
	mov r0, #0x25
	str r0, [r5]
_021B74C4:
	add r0, r4, #0
	add r0, #0xf8
	ldr r0, [r0]
	cmp r0, #0
	beq _021B74DE
	ldr r0, [r4, #0x34]
	mov r1, #0
	mov r2, #1
	mov r6, #0
	bl ovy260_21b8e08
	cmp r0, #4
	bls _021B74E0
_021B74DE:
	b _021B773C
_021B74E0:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021B74EC: ; jump table
	.short _021B7506 - _021B74EC - 2 ; case 0
	.short _021B74F6 - _021B74EC - 2 ; case 1
	.short _021B74FC - _021B74EC - 2 ; case 2
	.short _021B773C - _021B74EC - 2 ; case 3
	.short _021B74FC - _021B74EC - 2 ; case 4
_021B74F6:
	ldr r0, [r4, #0x34]
	bl ovy260_21b9274
_021B74FC:
	bl sub_02152158
	ldr r0, [r4, #0x28]
	mov r1, #0
	b _021B72EA
_021B7506:
	add r0, r4, #0
	add r0, #0xf8
	ldr r0, [r0]
	cmp r0, #2
	bne _021B75FC
	add r1, r4, #0
	add r1, #0xe0
	add r0, r4, #0
	ldr r1, [r1]
	add r0, #0xe0
	add r2, r1, #1
	add r1, r4, #0
	ldr r0, [r0]
	add r1, #0xe0
	str r2, [r1]
	mov r1, #0xe1
	lsl r1, r1, #4
	cmp r0, r1
	bls _021B75FC
	ldr r0, _021B76D8 ; =0x021BFE68
	ldr r2, _021B76DC ; =0x021BFE6C
	add r1, r6, #0
	bl sub_0203CB80
	b _021B773C
_021B7538:
	bl sub_02152158
	mov r0, #0
	mov r1, #1
	bl sub_02044C98
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0x14]
	mov r2, #0x24
	mov r3, #2
	bl sub_021C5888
	mov r0, #0x35
	str r0, [r5]
	ldr r0, [sp, #8]
	mov r1, #0x26
	b _021B6EEC
_021B755A:
	add r0, r4, #0
	add r0, #0xe0
	ldr r2, [r0]
	add r0, r4, #0
	add r0, #0xe0
	ldr r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xe0
	str r1, [r0]
	cmp r2, #0x3c
	bls _021B75FC
	add r0, r4, #0
	mov r1, #0
	add r0, #0xe0
	str r1, [r0]
	ldr r0, [sp, #0x18]
	mov r1, #1
	str r1, [r0, #4]
	ldr r0, [sp, #8]
	bl sub_021C5C7C
	b _021B773C
_021B7588:
	ldr r0, [r4, #0x34]
	bl ovy260_21b9274
	ldr r0, [r4, #0x28]
	mov r1, #0
	bl sub_021C4F30
	ldr r0, [sp, #0x18]
	mov r1, #2
	str r1, [r0, #0xc]
	mov r0, #1
	mov r1, #1
	add r0, #0xff
	str r1, [r4, r0]
	add r0, r4, #0
	add r0, #0xf4
	ldr r0, [r0]
	cmp r0, #0
	beq _021B75B4
	ldr r0, [sp, #8]
	ldr r1, _021B76E0 ; =ovy260_21b77e4
	b _021B6E12
_021B75B4:
	ldr r0, [sp, #8]
	ldr r1, _021B76E4 ; =ovy260_21b7be8
	b _021B6E12
_021B75BA:
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0x14]
	mov r2, #0x4e
	mov r3, #1
	bl sub_021C5888
	mov r0, #0x35
	str r0, [r5]
	ldr r0, [sp, #8]
	mov r1, #0x29
	b _021B6EEC
_021B75D0:
	add r0, r4, #0
	mov r1, #0
	bl ovy260_21b87dc
	mov r0, #0x2a
	bl _021B6D88
_021B75DE:
	add r0, r4, #0
	bl ovy260_21b8900
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _021B75FC
	add r0, r4, #0
	bl ovy260_21b88ec
	cmp r6, #0
	beq _021B75FE
	cmp r6, #1
	beq _021B7604
_021B75FC:
	b _021B773C
_021B75FE:
	ldr r0, [sp, #8]
	ldr r1, _021B76E8 ; =ovy260_21b7ea0
	b _021B6E12
_021B7604:
	mov r0, #0x2b
	bl _021B6D88
_021B760A:
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0x14]
	mov r2, #0x26
	mov r3, #1
	bl sub_021C5888
	mov r0, #0x35
	str r0, [r5]
	ldr r0, [sp, #8]
	mov r1, #0x2c
	b _021B6EEC
_021B7620:
	add r0, r4, #0
	mov r1, #0
	bl ovy260_21b87dc
	mov r0, #0x2d
	bl _021B6D88
_021B762E:
	add r0, r4, #0
	bl ovy260_21b8900
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _021B773C
	add r0, r4, #0
	bl ovy260_21b88ec
	cmp r6, #0
	beq _021B764E
	cmp r6, #1
	beq _021B7654
	b _021B773C
_021B764E:
	mov r0, #0x2e
	bl _021B6D88
_021B7654:
	mov r0, #0x28
	bl _021B6D88
_021B765A:
	mov r0, #0x2f
	bl _021B6D88
_021B7660:
	ldr r0, [r4, #0x34]
	mov r1, #0
	mov r2, #0
	bl ovy260_21b8e08
	cmp r0, #0
	beq _021B7684
	cmp r0, #1
	beq _021B7678
	cmp r0, #2
	beq _021B7680
	b _021B773C
_021B7678:
	ldr r0, [sp, #8]
	ldr r1, _021B76EC ; =ovy260_21b6a70
	bl _021B6E12
_021B7680:
	bl _021B6DB6
_021B7684:
	ldr r1, _021B76F0 ; =ovy260_21b7f88
	add r0, r4, #0
	bl ovy260_21b8914
	mov r0, #0x30
	bl _021B6D88
_021B7692:
	add r0, r4, #0
	bl ovy260_21b8928
	cmp r0, #0
	bne _021B76A2
	mov r0, #0xa
_021B769E:
	str r0, [r5]
	b _021B76B8
_021B76A2:
	sub r1, r0, #1
	cmp r1, #1
	bhi _021B76AC
	mov r0, #3
	b _021B769E
_021B76AC:
	cmp r0, #3
	bne _021B76B8
	ldr r0, [sp, #8]
	ldr r1, _021B76F4 ; =ovy260_21b7f5c
	bl sub_021C5C74
_021B76B8:
	ldr r0, [r4, #0x34]
	mov r1, #0
	mov r2, #0
	bl ovy260_21b8e08
	cmp r0, #1
	beq _021B76CC
	cmp r0, #2
	beq _021B76D0
	b _021B773C
_021B76CC:
	bl _021B6DA4
_021B76D0:
	bl _021B6DB6
	.align 2, 0
_021B76D4: .word 0x0000063A
_021B76D8: .word 0x021BFE68
_021B76DC: .word 0x021BFE6C
_021B76E0: .word ovy260_21b77e4
_021B76E4: .word ovy260_21b7be8
_021B76E8: .word ovy260_21b7ea0
_021B76EC: .word ovy260_21b6a70
_021B76F0: .word ovy260_21b7f88
_021B76F4: .word ovy260_21b7f5c
_021B76F8:
	ldr r0, [r4, #0x34]
	bl ovy260_21b933c
	cmp r0, #0
	beq _021B773C
	mov r0, #0x32
	bl _021B6D88
_021B7708:
	ldr r0, [r4, #0x34]
	bl ovy260_21b9274
	bl _021B6EC4
_021B7712:
	ldr r0, [r4, #0x34]
	bl sub_021B928C
	mov r0, #0x34
	b _021B6FC0
_021B771C:
	mov r0, #1
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x34]
	bl ovy260_21b9298
	cmp r0, #0
	beq _021B773C
	b _021B6FA6
_021B772C:
	ldr r0, [r4, #0x2c]
	bl sub_021C5A1C
	cmp r0, #0
	beq _021B773C
	ldr r0, [sp, #8]
	bl sub_021C5C8C
_021B773C:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _021B77D8
	add r1, r4, #0
	add r1, #0xf0
	add r0, r4, #0
	ldr r1, [r1]
	add r0, #0xf0
	add r2, r1, #1
	add r1, r4, #0
	ldr r0, [r0]
	add r1, #0xf0
	str r2, [r1]
	mov r1, #0x4b
	lsl r1, r1, #4
	mov r6, #0
	cmp r0, r1
	bls _021B7768
	add r0, r4, #0
	add r0, #0xf0
	str r6, [r0]
	mov r6, #1
_021B7768:
	ldr r0, [r4, #0x34]
	bl sub_021B9364
	cmp r0, #0
	beq _021B7774
	mov r6, #1
_021B7774:
	cmp r6, #0
	beq _021B7796
	ldr r0, [r4, #0x34]
	bl ovy260_21b9274
	bl sub_020120C8
	cmp r0, #0
	bne _021B7792
	bl sub_02042788
	cmp r0, #0
	beq _021B7792
	bl sub_02160170
_021B7792:
	mov r0, #0xa
	str r0, [r5]
_021B7796:
	ldr r0, [r4, #0x34]
	mov r1, #0
	mov r2, #1
	mov r5, #0
	bl ovy260_21b8e08
	cmp r0, #1
	beq _021B77AE
	cmp r0, #2
	beq _021B77C8
	cmp r0, #4
	bne _021B77D8
_021B77AE:
	ldr r0, [r4, #0x28]
	mov r1, #0
	bl sub_021C4F30
	ldr r0, [sp, #8]
	ldr r1, _021B77DC ; =ovy260_21b7be8
	bl sub_021C5C74
	add r0, r4, #0
	bl sub_021B8C40
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
_021B77C8:
	ldr r0, [r4, #0x28]
	add r1, r5, #0
	bl sub_021C4F30
	ldr r0, [sp, #8]
	ldr r1, _021B77E0 ; =ovy260_21b7f5c
	bl sub_021C5C74
_021B77D8:
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021B77DC: .word ovy260_21b7be8
_021B77E0: .word ovy260_21b7f5c
	thumb_func_end ovy260_21b6ca4

	thumb_func_start ovy260_21b77e4
ovy260_21b77e4: ; 0x021B77E4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	add r6, r1, #0
	mov r1, #0x41
	add r4, r2, #0
	lsl r1, r1, #2
	ldr r5, [r4, r1]
	ldr r1, [r6]
	add r7, r0, #0
	cmp r1, #0xd
	bls _021B77FC
	b _021B7A90
_021B77FC:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021B7808: ; jump table
	.short _021B7824 - _021B7808 - 2 ; case 0
	.short _021B7872 - _021B7808 - 2 ; case 1
	.short _021B788E - _021B7808 - 2 ; case 2
	.short _021B78C0 - _021B7808 - 2 ; case 3
	.short _021B7948 - _021B7808 - 2 ; case 4
	.short _021B7966 - _021B7808 - 2 ; case 5
	.short _021B7990 - _021B7808 - 2 ; case 6
	.short _021B79C8 - _021B7808 - 2 ; case 7
	.short _021B7A0C - _021B7808 - 2 ; case 8
	.short _021B7A58 - _021B7808 - 2 ; case 9
	.short _021B7A74 - _021B7808 - 2 ; case 10
	.short _021B7A90 - _021B7808 - 2 ; case 11
	.short _021B7A90 - _021B7808 - 2 ; case 12
	.short _021B7A80 - _021B7808 - 2 ; case 13
_021B7824:
	ldr r1, [r5, #0xc]
	cmp r1, #2
	bne _021B7840
	mov r1, #0x41
	lsl r1, r1, #2
	sub r1, r1, #4
	ldr r1, [r4, r1]
	cmp r1, #0
	bne _021B7840
	ldr r1, _021B7A94 ; =ovy260_21b7aa4
	bl sub_021C5C74
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
_021B7840:
	mov r0, #1
	mov r5, #6
	lsl r5, r5, #0x10
	mov r1, #0
	lsl r0, r0, #8
	str r1, [r4, r0]
	mov r0, #1
	mov r1, #0x86
	add r2, r5, #0
	mov r4, #1
	bl sub_0203A15C
	mov r2, #0xfa
	mov r0, #9
	add r1, r5, #0
	lsl r2, r2, #2
	mov r3, #0x86
	bl sub_021520AC
	mov r0, #0x86
	bl sub_021521DC
	add sp, #0x5c
	str r4, [r6]
	pop {r4, r5, r6, r7, pc}
_021B7872:
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0x14]
	mov r2, #0x46
	mov r3, #2
	bl sub_021C5888
	mov r0, #0xd
	str r0, [r6]
	add r0, r7, #0
	mov r1, #2
	bl sub_021C5C88
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
_021B788E:
	ldr r0, [r5, #0xc]
	mov r1, #1
	cmp r0, #2
	beq _021B7898
	mov r1, #0
_021B7898:
	ldr r0, [r5, #0x2c]
	mov r2, #0
	str r0, [sp]
	str r1, [sp, #4]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x34]
	ldr r3, [r3, #4]
	mov r1, #1
	mov r7, #0
	bl ovy260_21b9524
	add r0, r4, #0
	add r0, #0xf8
	add r4, #0xf4
	str r7, [r0]
	str r7, [r4]
	mov r0, #3
	add sp, #0x5c
	str r0, [r6]
	pop {r4, r5, r6, r7, pc}
_021B78C0:
	add r0, r4, #0
	add r0, #0xf8
	ldr r0, [r0]
	cmp r0, #0
	bne _021B78F4
	add r1, r4, #0
	ldr r0, [r4, #0x34]
	add r1, #0xf4
	bl ovy260_21b9630
	add r1, r4, #0
	add r1, #0xf8
	str r0, [r1]
	cmp r0, #0
	beq _021B78F4
	add r0, r4, #0
	add r0, #0xf4
	ldr r0, [r0]
	cmp r0, #0
	beq _021B78F4
	ldr r0, [r5, #8]
	ldr r1, [r5, #0x2c]
	ldr r0, [r0]
	ldr r1, [r1]
	bl sub_021C5C94
_021B78F4:
	add r0, r4, #0
	add r0, #0xf8
	ldr r0, [r0]
	cmp r0, #1
	bne _021B790C
	ldr r0, [r4, #0x34]
	bl sub_021B9D24
	ldr r1, [r5, #0x2c]
	str r0, [r1, #0x14]
	mov r0, #4
	str r0, [r6]
_021B790C:
	add r0, r4, #0
	add r0, #0xf8
	ldr r0, [r0]
	cmp r0, #0
	bne _021B7918
	b _021B7A90
_021B7918:
	ldr r0, [r4, #0x34]
	mov r1, #0
	mov r2, #1
	bl ovy260_21b8e08
	cmp r0, #1
	beq _021B7932
	cmp r0, #2
	beq _021B7938
	cmp r0, #4
	beq _021B7938
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
_021B7932:
	ldr r0, [r4, #0x34]
	bl ovy260_21b9274
_021B7938:
	ldr r1, _021B7A98 ; =ovy260_21b7f5c
	add r0, r7, #0
	bl sub_021C5C74
	bl sub_02152158
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
_021B7948:
	bl sub_02152158
	ldr r0, [r5, #0xc]
	cmp r0, #2
	bne _021B795E
	ldr r1, _021B7A94 ; =ovy260_21b7aa4
	add r0, r7, #0
	bl sub_021C5C74
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
_021B795E:
	mov r0, #5
	add sp, #0x5c
	str r0, [r6]
	pop {r4, r5, r6, r7, pc}
_021B7966:
	ldr r0, [r5, #8]
	ldr r0, [r0]
	bl sub_02017934
	bl sub_0200F6F4
	add r7, r0, #0
	ldr r0, [r5, #0x18]
	bl sub_02008BD0
	add r1, r0, #0
	add r0, r7, #0
	bl sub_0200F700
	ldr r0, [r4, #0x34]
	bl sub_021B928C
	mov r0, #6
	add sp, #0x5c
	str r0, [r6]
	pop {r4, r5, r6, r7, pc}
_021B7990:
	ldr r0, [r4, #0x34]
	bl ovy260_21b9298
	cmp r0, #0
	beq _021B799E
	mov r0, #7
	str r0, [r6]
_021B799E:
	ldr r0, [r4, #0x34]
	mov r1, #0
	mov r2, #1
	bl ovy260_21b8e08
	cmp r0, #1
	beq _021B79B4
	cmp r0, #2
	beq _021B79BC
	cmp r0, #4
	bne _021B7A90
_021B79B4:
	mov r0, #7
	add sp, #0x5c
	str r0, [r6]
	pop {r4, r5, r6, r7, pc}
_021B79BC:
	ldr r1, _021B7A98 ; =ovy260_21b7f5c
	add r0, r7, #0
	bl sub_021C5C74
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
_021B79C8:
	ldr r0, [r5, #0x20]
	ldr r0, [r0]
	cmp r0, #0
	bne _021B7A90
	add r5, sp, #8
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x54
	blx MI_CpuFill8
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r2, #0xa
	ldr r3, [r0, #0x24]
_021B79E6:
	ldmia r3!, {r0, r1}
	stmia r5!, {r0, r1}
	sub r2, r2, #1
	bne _021B79E6
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #3
	ldr r0, [r0, #0x28]
	add r2, sp, #8
	ldr r0, [r0]
	str r0, [sp, #0x58]
	ldr r0, [r4, #0x34]
	bl ovy260_21bac18
	mov r0, #8
	add sp, #0x5c
	str r0, [r6]
	pop {r4, r5, r6, r7, pc}
_021B7A0C:
	ldr r0, [r4, #0x34]
	bl ovy260_21badc4
	cmp r0, #1
	bne _021B7A26
	mov r2, #0x41
	lsl r2, r2, #2
	ldr r2, [r4, r2]
	ldr r1, _021B7A9C ; =0x00000708
	ldr r2, [r2, #0x20]
	str r1, [r2]
	mov r1, #9
	str r1, [r6]
_021B7A26:
	cmp r0, #0
	beq _021B7A90
	ldr r0, [r4, #0x34]
	mov r1, #0
	mov r2, #0
	bl ovy260_21b8e08
	cmp r0, #1
	beq _021B7A40
	cmp r0, #2
	beq _021B7A4C
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
_021B7A40:
	ldr r1, _021B7AA0 ; =ovy260_21b7be8
	add r0, r7, #0
	bl sub_021C5C74
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
_021B7A4C:
	ldr r1, _021B7A98 ; =ovy260_21b7f5c
	add r0, r7, #0
	bl sub_021C5C74
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
_021B7A58:
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0x14]
	mov r2, #0x58
	mov r3, #1
	bl sub_021C5888
	mov r0, #0xd
	str r0, [r6]
	add r0, r7, #0
	mov r1, #0xa
	bl sub_021C5C88
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
_021B7A74:
	mov r1, #2
	str r1, [r5, #4]
	bl sub_021C5C7C
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
_021B7A80:
	ldr r0, [r4, #0x2c]
	bl sub_021C5A1C
	cmp r0, #0
	beq _021B7A90
	add r0, r7, #0
	bl sub_021C5C8C
_021B7A90:
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021B7A94: .word ovy260_21b7aa4
_021B7A98: .word ovy260_21b7f5c
_021B7A9C: .word 0x00000708
_021B7AA0: .word ovy260_21b7be8
	thumb_func_end ovy260_21b77e4

	thumb_func_start ovy260_21b7aa4
ovy260_21b7aa4: ; 0x021B7AA4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0x41
	add r7, r1, #0
	add r4, r2, #0
	lsl r0, r0, #2
	ldr r5, [r4, r0]
	ldr r0, [r7]
	cmp r0, #5
	bls _021B7ABA
	b _021B7BD4
_021B7ABA:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021B7AC6: ; jump table
	.short _021B7AD2 - _021B7AC6 - 2 ; case 0
	.short _021B7AEC - _021B7AC6 - 2 ; case 1
	.short _021B7B1A - _021B7AC6 - 2 ; case 2
	.short _021B7B3A - _021B7AC6 - 2 ; case 3
	.short _021B7B74 - _021B7AC6 - 2 ; case 4
	.short _021B7BC4 - _021B7AC6 - 2 ; case 5
_021B7AD2:
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0x14]
	mov r2, #0x28
	mov r3, #2
	bl sub_021C5888
	mov r0, #5
	str r0, [r7]
	add r0, r6, #0
	mov r1, #1
	bl sub_021C5C88
	pop {r3, r4, r5, r6, r7, pc}
_021B7AEC:
	ldr r0, [r5, #0xc]
	cmp r0, #2
	beq _021B7AFE
	ldr r0, [r5, #8]
	ldr r1, [r5, #0x2c]
	ldr r0, [r0]
	ldr r1, [r1]
	bl sub_021C5CD4
_021B7AFE:
	mov r1, #0x41
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	ldr r1, [r1, #0x34]
	bl ovy260_21b8c50
	ldr r0, [r5, #8]
	ldr r0, [r0]
	bl sub_0201782C
	mov r0, #2
	str r0, [r7]
	pop {r3, r4, r5, r6, r7, pc}
_021B7B1A:
	ldr r0, [r5, #8]
	ldr r0, [r0]
	bl sub_02017850
	cmp r0, #2
	bne _021B7B2C
	mov r0, #3
	str r0, [r7]
	pop {r3, r4, r5, r6, r7, pc}
_021B7B2C:
	cmp r0, #3
	bne _021B7BD4
	ldr r1, _021B7BD8 ; =ovy260_21b7dc0
	add r0, r6, #0
	bl sub_021C5C74
	pop {r3, r4, r5, r6, r7, pc}
_021B7B3A:
	ldr r0, [r4, #0x34]
	mov r1, #0
	mov r2, #0
	bl ovy260_21b8e08
	cmp r0, #0
	beq _021B7B66
	cmp r0, #1
	beq _021B7B52
	cmp r0, #2
	beq _021B7B5C
	pop {r3, r4, r5, r6, r7, pc}
_021B7B52:
	ldr r1, _021B7BDC ; =ovy260_21b7be8
	add r0, r6, #0
	bl sub_021C5C74
	pop {r3, r4, r5, r6, r7, pc}
_021B7B5C:
	ldr r1, _021B7BE0 ; =ovy260_21b7f5c
	add r0, r6, #0
	bl sub_021C5C74
	pop {r3, r4, r5, r6, r7, pc}
_021B7B66:
	ldr r1, _021B7BE4 ; =ovy260_21b7f88
	add r0, r4, #0
	bl ovy260_21b8914
	mov r0, #4
	str r0, [r7]
	pop {r3, r4, r5, r6, r7, pc}
_021B7B74:
	add r0, r4, #0
	bl ovy260_21b8928
	cmp r0, #0
	bne _021B7B84
	add r0, r6, #0
	ldr r1, _021B7BDC ; =ovy260_21b7be8
	b _021B7B98
_021B7B84:
	sub r1, r0, #1
	cmp r1, #1
	bhi _021B7B90
	add r0, r6, #0
	ldr r1, _021B7BD8 ; =ovy260_21b7dc0
	b _021B7B98
_021B7B90:
	cmp r0, #3
	bne _021B7B9C
	ldr r1, _021B7BE0 ; =ovy260_21b7f5c
	add r0, r6, #0
_021B7B98:
	bl sub_021C5C74
_021B7B9C:
	ldr r0, [r4, #0x34]
	mov r1, #0
	mov r2, #0
	bl ovy260_21b8e08
	cmp r0, #1
	beq _021B7BB0
	cmp r0, #2
	beq _021B7BBA
	pop {r3, r4, r5, r6, r7, pc}
_021B7BB0:
	ldr r1, _021B7BDC ; =ovy260_21b7be8
	add r0, r6, #0
	bl sub_021C5C74
	pop {r3, r4, r5, r6, r7, pc}
_021B7BBA:
	ldr r1, _021B7BE0 ; =ovy260_21b7f5c
	add r0, r6, #0
	bl sub_021C5C74
	pop {r3, r4, r5, r6, r7, pc}
_021B7BC4:
	ldr r0, [r4, #0x2c]
	bl sub_021C5A1C
	cmp r0, #0
	beq _021B7BD4
	add r0, r6, #0
	bl sub_021C5C8C
_021B7BD4:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021B7BD8: .word ovy260_21b7dc0
_021B7BDC: .word ovy260_21b7be8
_021B7BE0: .word ovy260_21b7f5c
_021B7BE4: .word ovy260_21b7f88
	thumb_func_end ovy260_21b7aa4

	thumb_func_start ovy260_21b7be8
ovy260_21b7be8: ; 0x021B7BE8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	ldr r1, [r4]
	add r7, r0, #0
	add r5, r2, #0
	cmp r1, #7
	bls _021B7BF8
	b _021B7D10
_021B7BF8:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021B7C04: ; jump table
	.short _021B7C14 - _021B7C04 - 2 ; case 0
	.short _021B7C48 - _021B7C04 - 2 ; case 1
	.short _021B7C6A - _021B7C04 - 2 ; case 2
	.short _021B7C78 - _021B7C04 - 2 ; case 3
	.short _021B7CB6 - _021B7C04 - 2 ; case 4
	.short _021B7CC4 - _021B7C04 - 2 ; case 5
	.short _021B7CF8 - _021B7C04 - 2 ; case 6
	.short _021B7D00 - _021B7C04 - 2 ; case 7
_021B7C14:
	ldr r0, [r5, #0x34]
	mov r1, #0
	mov r2, #1
	mov r5, #1
	bl ovy260_21b8e08
	cmp r0, #4
	bhi _021B7D10
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021B7C30: ; jump table
	.short _021B7C3A - _021B7C30 - 2 ; case 0
	.short _021B7C3A - _021B7C30 - 2 ; case 1
	.short _021B7C3E - _021B7C30 - 2 ; case 2
	.short _021B7D10 - _021B7C30 - 2 ; case 3
	.short _021B7C3A - _021B7C30 - 2 ; case 4
_021B7C3A:
	str r5, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021B7C3E:
	ldr r1, _021B7D14 ; =ovy260_21b7f5c
	add r0, r7, #0
	bl sub_021C5C74
	pop {r3, r4, r5, r6, r7, pc}
_021B7C48:
	mov r0, #0
	mov r1, #1
	bl sub_02044C98
	ldr r0, [r5, #0x2c]
	ldr r1, [r5, #0x14]
	mov r2, #0x5c
	mov r3, #1
	bl sub_021C5888
	mov r0, #7
	str r0, [r4]
	add r0, r7, #0
	mov r1, #2
	bl sub_021C5C88
	pop {r3, r4, r5, r6, r7, pc}
_021B7C6A:
	add r0, r5, #0
	mov r1, #4
	bl ovy260_21b87dc
	mov r0, #3
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021B7C78:
	add r0, r5, #0
	bl ovy260_21b8900
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _021B7D10
	add r0, r5, #0
	bl ovy260_21b88ec
	cmp r6, #0
	beq _021B7C9C
	cmp r6, #1
	beq _021B7CA6
	cmp r6, #2
	beq _021B7CAC
	pop {r3, r4, r5, r6, r7, pc}
_021B7C9C:
	ldr r1, _021B7D18 ; =ovy260_21b6ca4
	add r0, r7, #0
	bl sub_021C5C74
	pop {r3, r4, r5, r6, r7, pc}
_021B7CA6:
	mov r0, #4
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021B7CAC:
	ldr r1, _021B7D1C ; =ovy260_21b7d28
	add r0, r7, #0
	bl sub_021C5C74
	pop {r3, r4, r5, r6, r7, pc}
_021B7CB6:
	ldr r1, _021B7D20 ; =ovy260_21b823c
	add r0, r5, #0
	bl ovy260_21b8914
	mov r0, #5
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021B7CC4:
	add r0, r5, #0
	bl ovy260_21b8928
	sub r1, r0, #1
	cmp r1, #1
	bhi _021B7CD4
	mov r0, #1
	b _021B7CDA
_021B7CD4:
	cmp r0, #0
	bne _021B7CDC
	mov r0, #6
_021B7CDA:
	str r0, [r4]
_021B7CDC:
	ldr r0, [r5, #0x34]
	mov r1, #0
	mov r2, #0
	bl ovy260_21b8e08
	cmp r0, #1
	beq _021B7CEE
	cmp r0, #2
	bne _021B7D10
_021B7CEE:
	ldr r1, _021B7D14 ; =ovy260_21b7f5c
	add r0, r7, #0
	bl sub_021C5C74
	pop {r3, r4, r5, r6, r7, pc}
_021B7CF8:
	ldr r1, _021B7D24 ; =ovy260_21b7dc0
	bl sub_021C5C74
	pop {r3, r4, r5, r6, r7, pc}
_021B7D00:
	ldr r0, [r5, #0x2c]
	bl sub_021C5A1C
	cmp r0, #0
	beq _021B7D10
	add r0, r7, #0
	bl sub_021C5C8C
_021B7D10:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021B7D14: .word ovy260_21b7f5c
_021B7D18: .word ovy260_21b6ca4
_021B7D1C: .word ovy260_21b7d28
_021B7D20: .word ovy260_21b823c
_021B7D24: .word ovy260_21b7dc0
	thumb_func_end ovy260_21b7be8

	thumb_func_start ovy260_21b7d28
ovy260_21b7d28: ; 0x021B7D28
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5]
	add r4, r2, #0
	cmp r0, #3
	bhi _021B7DB6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021B7D42: ; jump table
	.short _021B7D4A - _021B7D42 - 2 ; case 0
	.short _021B7D64 - _021B7D42 - 2 ; case 1
	.short _021B7D72 - _021B7D42 - 2 ; case 2
	.short _021B7DA6 - _021B7D42 - 2 ; case 3
_021B7D4A:
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0x14]
	mov r2, #0x4e
	mov r3, #1
	bl sub_021C5888
	mov r0, #3
	str r0, [r5]
	add r0, r6, #0
	mov r1, #1
	bl sub_021C5C88
	pop {r4, r5, r6, pc}
_021B7D64:
	add r0, r4, #0
	mov r1, #0
	bl ovy260_21b87dc
	mov r0, #2
	str r0, [r5]
	pop {r4, r5, r6, pc}
_021B7D72:
	add r0, r4, #0
	bl ovy260_21b8900
	add r5, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	beq _021B7DB6
	add r0, r4, #0
	bl ovy260_21b88ec
	cmp r5, #0
	beq _021B7D92
	cmp r5, #1
	beq _021B7D9C
	pop {r4, r5, r6, pc}
_021B7D92:
	ldr r1, _021B7DB8 ; =ovy260_21b7ea0
	add r0, r6, #0
	bl sub_021C5C74
	pop {r4, r5, r6, pc}
_021B7D9C:
	ldr r1, _021B7DBC ; =ovy260_21b7be8
	add r0, r6, #0
	bl sub_021C5C74
	pop {r4, r5, r6, pc}
_021B7DA6:
	ldr r0, [r4, #0x2c]
	bl sub_021C5A1C
	cmp r0, #0
	beq _021B7DB6
	add r0, r6, #0
	bl sub_021C5C8C
_021B7DB6:
	pop {r4, r5, r6, pc}
	.align 2, 0
_021B7DB8: .word ovy260_21b7ea0
_021B7DBC: .word ovy260_21b7be8
	thumb_func_end ovy260_21b7d28

	thumb_func_start ovy260_21b7dc0
ovy260_21b7dc0: ; 0x021B7DC0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r2, #0
	mov r7, #0x41
	lsl r7, r7, #2
	ldr r2, [r4]
	add r6, r0, #0
	ldr r1, [r5, r7]
	cmp r2, #7
	bhi _021B7E96
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021B7DE0: ; jump table
	.short _021B7DF0 - _021B7DE0 - 2 ; case 0
	.short _021B7E0A - _021B7DE0 - 2 ; case 1
	.short _021B7E18 - _021B7DE0 - 2 ; case 2
	.short _021B7E2A - _021B7DE0 - 2 ; case 3
	.short _021B7E44 - _021B7DE0 - 2 ; case 4
	.short _021B7E5C - _021B7DE0 - 2 ; case 5
	.short _021B7E7E - _021B7DE0 - 2 ; case 6
	.short _021B7E86 - _021B7DE0 - 2 ; case 7
_021B7DF0:
	ldr r0, [r5, #0x2c]
	ldr r1, [r5, #0x14]
	mov r2, #0x28
	mov r3, #2
	bl sub_021C5888
	add r0, r6, #0
	mov r1, #1
	bl sub_021C5C88
	mov r0, #7
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021B7E0A:
	ldr r0, [r1, #8]
	ldr r0, [r0]
	bl sub_0201782C
	mov r0, #2
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021B7E18:
	ldr r0, [r1, #8]
	ldr r0, [r0]
	bl sub_02017850
	cmp r0, #2
	bne _021B7E96
	mov r0, #3
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021B7E2A:
	ldr r0, [r5, #0x2c]
	ldr r1, [r5, #0x14]
	mov r2, #0x25
	mov r3, #2
	bl sub_021C5888
	add r0, r6, #0
	mov r1, #4
	bl sub_021C5C88
	mov r0, #7
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021B7E44:
	ldr r0, [r1, #0x20]
	ldr r0, [r0]
	cmp r0, #0
	bne _021B7E96
	ldr r0, [r5, #0x34]
	mov r1, #2
	mov r2, #0
	bl ovy260_21bac18
	mov r0, #5
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021B7E5C:
	ldr r0, [r5, #0x34]
	bl ovy260_21badc4
	cmp r0, #0
	beq _021B7E96
	ldr r0, [r5, r7]
	ldr r1, _021B7E98 ; =0x00000708
	ldr r0, [r0, #0x20]
	mov r2, #0
	str r1, [r0]
	mov r0, #6
	str r0, [r4]
	ldr r0, [r5, #0x34]
	mov r1, #1
	bl ovy260_21b8e08
	pop {r3, r4, r5, r6, r7, pc}
_021B7E7E:
	ldr r1, _021B7E9C ; =0x021B7F55
	bl sub_021C5C74
	pop {r3, r4, r5, r6, r7, pc}
_021B7E86:
	ldr r0, [r5, #0x2c]
	bl sub_021C5A1C
	cmp r0, #0
	beq _021B7E96
	add r0, r6, #0
	bl sub_021C5C8C
_021B7E96:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021B7E98: .word 0x00000708
_021B7E9C: .word 0x021B7F55
	thumb_func_end ovy260_21b7dc0

	thumb_func_start ovy260_21b7ea0
ovy260_21b7ea0: ; 0x021B7EA0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r1, [r5]
	add r6, r0, #0
	add r4, r2, #0
	cmp r1, #3
	bhi _021B7F40
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021B7EBA: ; jump table
	.short _021B7EC2 - _021B7EBA - 2 ; case 0
	.short _021B7EF0 - _021B7EBA - 2 ; case 1
	.short _021B7F28 - _021B7EBA - 2 ; case 2
	.short _021B7F30 - _021B7EBA - 2 ; case 3
_021B7EC2:
	ldr r0, [r4, #0x34]
	mov r1, #1
	mov r2, #0
	mov r7, #1
	bl ovy260_21b8e08
	cmp r0, #0
	beq _021B7EE4
	cmp r0, #1
	beq _021B7EDA
	cmp r0, #2
	bne _021B7F40
_021B7EDA:
	ldr r1, _021B7F44 ; =ovy260_21b7f5c
	add r0, r6, #0
	bl sub_021C5C74
	pop {r3, r4, r5, r6, r7, pc}
_021B7EE4:
	ldr r1, _021B7F48 ; =ovy260_21b7f88
	add r0, r4, #0
	bl ovy260_21b8914
	str r7, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B7EF0:
	add r0, r4, #0
	bl ovy260_21b8928
	ldr r1, _021B7F4C ; =0x0000FFFF
	cmp r0, r1
	beq _021B7F00
	mov r1, #2
	str r1, [r5]
_021B7F00:
	cmp r0, #3
	bne _021B7F0C
	ldr r1, _021B7F44 ; =ovy260_21b7f5c
	add r0, r6, #0
	bl sub_021C5C74
_021B7F0C:
	ldr r0, [r4, #0x34]
	mov r1, #1
	mov r2, #0
	bl ovy260_21b8e08
	cmp r0, #1
	beq _021B7F1E
	cmp r0, #2
	bne _021B7F40
_021B7F1E:
	ldr r1, _021B7F44 ; =ovy260_21b7f5c
	add r0, r6, #0
	bl sub_021C5C74
	pop {r3, r4, r5, r6, r7, pc}
_021B7F28:
	ldr r1, _021B7F50 ; =ovy260_21b7dc0
	bl sub_021C5C74
	pop {r3, r4, r5, r6, r7, pc}
_021B7F30:
	ldr r0, [r4, #0x2c]
	bl sub_021C5A1C
	cmp r0, #0
	beq _021B7F40
	add r0, r6, #0
	bl sub_021C5C8C
_021B7F40:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021B7F44: .word ovy260_21b7f5c
_021B7F48: .word ovy260_21b7f88
_021B7F4C: .word 0x0000FFFF
_021B7F50: .word ovy260_21b7dc0
	thumb_func_end ovy260_21b7ea0
_021B7F54:
	.byte 0x00, 0x4B, 0x18, 0x47, 0x7D, 0x5C, 0x1C, 0x02

	thumb_func_start ovy260_21b7f5c
ovy260_21b7f5c: ; 0x021B7F5C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x41
	add r4, r2, #0
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #3
	str r1, [r0, #4]
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _021B7F7A
	bl ovy260_21b8da4
	mov r0, #0
	str r0, [r4, #0x34]
_021B7F7A:
	bl sub_02012154
	add r0, r5, #0
	bl sub_021C5C7C
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy260_21b7f5c

	thumb_func_start ovy260_21b7f88
ovy260_21b7f88: ; 0x021B7F88
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	add r4, r1, #0
	mov r1, #0x41
	add r5, r2, #0
	lsl r1, r1, #2
	ldr r6, [r5, r1]
	ldr r1, [r4]
	add r7, r0, #0
	cmp r1, #0xe
	bls _021B7FA0
	b _021B8236
_021B7FA0:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021B7FAC: ; jump table
	.short _021B7FCA - _021B7FAC - 2 ; case 0
	.short _021B7FD2 - _021B7FAC - 2 ; case 1
	.short _021B8098 - _021B7FAC - 2 ; case 2
	.short _021B80B4 - _021B7FAC - 2 ; case 3
	.short _021B80D0 - _021B7FAC - 2 ; case 4
	.short _021B80EE - _021B7FAC - 2 ; case 5
	.short _021B810A - _021B7FAC - 2 ; case 6
	.short _021B814C - _021B7FAC - 2 ; case 7
	.short _021B8160 - _021B7FAC - 2 ; case 8
	.short _021B8186 - _021B7FAC - 2 ; case 9
	.short _021B81AA - _021B7FAC - 2 ; case 10
	.short _021B81C6 - _021B7FAC - 2 ; case 11
	.short _021B81FC - _021B7FAC - 2 ; case 12
	.short _021B821E - _021B7FAC - 2 ; case 13
	.short _021B8226 - _021B7FAC - 2 ; case 14
_021B7FCA:
	mov r0, #1
	add sp, #0x48
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021B7FD2:
	mov r0, #0x41
	lsl r0, r0, #2
	add r0, r0, #4
	ldr r6, [r5, r0]
	bl sub_02042788
	cmp r0, #0
	bne _021B7FE6
	bl sub_02012028
_021B7FE6:
	add r0, sp, #0x18
	add r1, sp, #0xc
	bl sub_0215DDA8
	add r7, r0, #0
	beq _021B8006
	add r0, sp, #0x18
	add r1, sp, #0xc
	bl RTC_ConvertDateTimeToSecond
	add r2, r0, #0
	add r3, r1, #0
	add r0, sp, #0x18
	add r1, sp, #0xc
	bl RTC_ConvertSecondToDateTime
_021B8006:
	add r0, r6, #0
	mov r1, #4
	bl sub_0200B798
	str r0, [sp, #0x38]
	add r0, r6, #0
	mov r1, #5
	bl sub_0200B798
	str r0, [sp, #0x3c]
	add r0, r6, #0
	mov r1, #6
	bl sub_0200B798
	str r0, [sp, #0x40]
	mov r0, #0
	str r0, [sp, #0x44]
	add r0, r6, #0
	mov r1, #7
	bl sub_0200B798
	str r0, [sp, #0x28]
	add r0, r6, #0
	mov r1, #8
	bl sub_0200B798
	str r0, [sp, #0x2c]
	add r0, r6, #0
	mov r1, #9
	bl sub_0200B798
	str r0, [sp, #0x30]
	mov r0, #0
	str r0, [sp, #0x34]
	add r0, sp, #0x38
	bl RTC_ConvertDateToDay
	add r6, r0, #0
	add r0, sp, #0x28
	bl RTC_ConvertDateToDay
	str r0, [sp]
	add r0, sp, #0x18
	bl RTC_ConvertDateToDay
	cmp r7, #0
	beq _021B8072
	cmp r0, r6
	bge _021B8072
	mov r0, #2
	str r0, [r5, #0x40]
	add sp, #0x48
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021B8072:
	cmp r7, #0
	beq _021B808C
	cmp r6, r0
	bgt _021B808C
	ldr r1, [sp]
	cmp r0, r1
	bgt _021B808C
	mov r0, #0
	str r0, [r5, #0x40]
	mov r0, #0xd
	add sp, #0x48
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021B808C:
	mov r0, #1
	str r0, [r5, #0x40]
	mov r0, #3
	add sp, #0x48
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021B8098:
	ldr r0, [r5, #0x2c]
	ldr r1, [r5, #0x14]
	mov r2, #0x60
	mov r3, #1
	bl sub_021C5888
	mov r0, #0xe
	str r0, [r4]
	add r0, r7, #0
	mov r1, #0xd
	bl sub_021C5C88
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
_021B80B4:
	ldr r0, [r5, #0x2c]
	ldr r1, [r5, #0x14]
	mov r2, #0x50
	mov r3, #1
	bl sub_021C5888
	mov r0, #0xe
	str r0, [r4]
	add r0, r7, #0
	mov r1, #4
	bl sub_021C5C88
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
_021B80D0:
	ldr r0, [r6, #0x30]
	ldrb r0, [r0, #5]
	add r0, #0xff
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _021B80E6
	mov r0, #5
	add sp, #0x48
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021B80E6:
	mov r0, #0xd
	add sp, #0x48
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021B80EE:
	ldr r0, [r5, #0x2c]
	ldr r1, [r5, #0x14]
	mov r2, #0x28
	mov r3, #2
	bl sub_021C5888
	mov r0, #0xe
	str r0, [r4]
	add r0, r7, #0
	mov r1, #6
	bl sub_021C5C88
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
_021B810A:
	ldr r0, [r6, #8]
	ldr r0, [r0]
	bl sub_02017934
	bl sub_0200C260
	mov r1, #1
	add r7, r0, #0
	bl sub_0200C394
	mov r1, #0x9b
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r7, #0
	mov r1, #1
	bl sub_0200C370
	mov r0, #0x41
	lsl r0, r0, #2
	add r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0xa
	mov r2, #3
	bl sub_0200B830
	ldr r0, [r6, #8]
	ldr r0, [r0]
	bl sub_0201782C
	mov r0, #7
	add sp, #0x48
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021B814C:
	ldr r0, [r6, #8]
	ldr r0, [r0]
	bl sub_02017850
	cmp r0, #2
	bne _021B8236
	mov r0, #8
	add sp, #0x48
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021B8160:
	ldr r0, [r6, #8]
	ldr r0, [r0]
	bl sub_02017934
	bl sub_0200C260
	mov r0, #0x9b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021B817E
	mov r0, #9
	add sp, #0x48
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021B817E:
	mov r0, #0xa
	add sp, #0x48
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021B8186:
	add r0, r5, #0
	mov r1, #1
	bl ovy260_21b86dc
	ldr r0, [r5, #0x2c]
	ldr r1, [r5, #0x14]
	mov r2, #0x51
	mov r3, #1
	bl sub_021C5888
	mov r0, #0xe
	str r0, [r4]
	add r0, r7, #0
	mov r1, #0xa
	bl sub_021C5C88
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
_021B81AA:
	ldr r0, [r5, #0x2c]
	ldr r1, [r5, #0x14]
	mov r2, #0x46
	mov r3, #2
	bl sub_021C5888
	mov r0, #0xe
	str r0, [r4]
	add r0, r7, #0
	mov r1, #0xb
	bl sub_021C5C88
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
_021B81C6:
	add r7, sp, #4
	add r0, r7, #0
	mov r1, #0
	mov r2, #8
	blx MI_CpuFill8
	mov r6, #3
	add r0, sp, #4
	strb r6, [r0, #1]
	ldr r0, [r5, #0x34]
	bl sub_021BC04C
	str r0, [sp, #8]
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r7, #0
	ldr r0, [r0, #0x30]
	mov r2, #0x57
	strb r6, [r0, #5]
	ldr r0, [r5, #0x34]
	bl ovy260_21bb8d8
	mov r0, #0xc
	add sp, #0x48
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021B81FC:
	ldr r0, [r5, #0x34]
	bl ovy260_21bb930
	cmp r0, #1
	bne _021B820E
	mov r0, #0xd
	add sp, #0x48
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021B820E:
	cmp r0, #3
	bne _021B8236
	mov r0, #3
	str r0, [r5, #0x40]
	mov r0, #0xd
	add sp, #0x48
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021B821E:
	bl sub_021C5C7C
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
_021B8226:
	ldr r0, [r5, #0x2c]
	bl sub_021C5A1C
	cmp r0, #0
	beq _021B8236
	add r0, r7, #0
	bl sub_021C5C8C
_021B8236:
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy260_21b7f88

	thumb_func_start ovy260_21b823c
ovy260_21b823c: ; 0x021B823C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	mov r1, #0x41
	add r5, r2, #0
	lsl r1, r1, #2
	ldr r6, [r5, r1]
	ldr r1, [r4]
	add r7, r0, #0
	cmp r1, #0x10
	bls _021B8254
	b _021B84A4
_021B8254:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021B8260: ; jump table
	.short _021B8282 - _021B8260 - 2 ; case 0
	.short _021B82A8 - _021B8260 - 2 ; case 1
	.short _021B82C4 - _021B8260 - 2 ; case 2
	.short _021B82E0 - _021B8260 - 2 ; case 3
	.short _021B82F0 - _021B8260 - 2 ; case 4
	.short _021B8322 - _021B8260 - 2 ; case 5
	.short _021B833E - _021B8260 - 2 ; case 6
	.short _021B834E - _021B8260 - 2 ; case 7
	.short _021B8382 - _021B8260 - 2 ; case 8
	.short _021B839E - _021B8260 - 2 ; case 9
	.short _021B83D0 - _021B8260 - 2 ; case 10
	.short _021B83F4 - _021B8260 - 2 ; case 11
	.short _021B8418 - _021B8260 - 2 ; case 12
	.short _021B8434 - _021B8260 - 2 ; case 13
	.short _021B846A - _021B8260 - 2 ; case 14
	.short _021B848C - _021B8260 - 2 ; case 15
	.short _021B8494 - _021B8260 - 2 ; case 16
_021B8282:
	ldr r0, [r6, #0x30]
	ldrb r0, [r0, #5]
	add r0, #0xff
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _021B829C
	mov r0, #1
	str r0, [r5, #0x40]
	mov r0, #2
	add sp, #8
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021B829C:
	mov r0, #2
	str r0, [r5, #0x40]
	mov r0, #1
	add sp, #8
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021B82A8:
	ldr r0, [r5, #0x2c]
	ldr r1, [r5, #0x14]
	mov r2, #0x52
	mov r3, #1
	bl sub_021C5888
	mov r0, #0x10
	str r0, [r4]
	add r0, r7, #0
	mov r1, #0xf
	bl sub_021C5C88
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021B82C4:
	ldr r0, [r5, #0x2c]
	ldr r1, [r5, #0x14]
	mov r2, #0x53
	mov r3, #1
	bl sub_021C5888
	mov r0, #0x10
	str r0, [r4]
	add r0, r7, #0
	mov r1, #3
	bl sub_021C5C88
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021B82E0:
	add r0, r5, #0
	mov r1, #5
	bl ovy260_21b87dc
	mov r0, #4
	add sp, #8
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021B82F0:
	add r0, r5, #0
	bl ovy260_21b8900
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _021B835E
	add r0, r5, #0
	bl ovy260_21b88ec
	cmp r6, #0
	beq _021B8312
	cmp r6, #1
	beq _021B831A
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021B8312:
	mov r0, #5
	add sp, #8
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021B831A:
	mov r0, #0xf
	add sp, #8
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021B8322:
	ldr r0, [r5, #0x2c]
	ldr r1, [r5, #0x14]
	mov r2, #0x54
	mov r3, #1
	bl sub_021C5888
	mov r0, #0x10
	str r0, [r4]
	add r0, r7, #0
	mov r1, #6
	bl sub_021C5C88
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021B833E:
	add r0, r5, #0
	mov r1, #5
	bl ovy260_21b87dc
	mov r0, #7
	add sp, #8
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021B834E:
	add r0, r5, #0
	bl ovy260_21b8900
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	bne _021B8360
_021B835E:
	b _021B84A4
_021B8360:
	add r0, r5, #0
	bl ovy260_21b88ec
	cmp r6, #0
	beq _021B8372
	cmp r6, #1
	beq _021B837A
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021B8372:
	mov r0, #8
	add sp, #8
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021B837A:
	mov r0, #0xf
	add sp, #8
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021B8382:
	ldr r0, [r5, #0x2c]
	ldr r1, [r5, #0x14]
	mov r2, #0x28
	mov r3, #2
	bl sub_021C5888
	mov r0, #0x10
	str r0, [r4]
	add r0, r7, #0
	mov r1, #9
	bl sub_021C5C88
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021B839E:
	ldr r0, [r6, #8]
	ldr r0, [r0]
	bl sub_02017934
	bl sub_0200C260
	mov r1, #1
	bl sub_0200C370
	mov r0, #0x41
	lsl r0, r0, #2
	add r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0xa
	mov r2, #4
	mov r5, #0xa
	bl sub_0200B830
	ldr r0, [r6, #8]
	ldr r0, [r0]
	bl sub_0201782C
	add sp, #8
	str r5, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021B83D0:
	ldr r0, [r6, #8]
	ldr r0, [r0]
	bl sub_02017850
	cmp r0, #2
	bne _021B83E8
	mov r0, #0
	str r0, [r5, #0x40]
	mov r0, #0xb
	add sp, #8
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021B83E8:
	cmp r0, #3
	bne _021B84A4
	mov r0, #0xf
	add sp, #8
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021B83F4:
	add r0, r5, #0
	mov r1, #1
	bl ovy260_21b86dc
	ldr r0, [r5, #0x2c]
	ldr r1, [r5, #0x14]
	mov r2, #0x51
	mov r3, #1
	bl sub_021C5888
	mov r0, #0x10
	str r0, [r4]
	add r0, r7, #0
	mov r1, #0xc
	bl sub_021C5C88
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021B8418:
	ldr r0, [r5, #0x2c]
	ldr r1, [r5, #0x14]
	mov r2, #0x46
	mov r3, #2
	bl sub_021C5888
	mov r0, #0x10
	str r0, [r4]
	add r0, r7, #0
	mov r1, #0xd
	bl sub_021C5C88
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021B8434:
	add r7, sp, #0
	add r0, r7, #0
	mov r1, #0
	mov r2, #8
	blx MI_CpuFill8
	mov r6, #4
	add r0, sp, #0
	strb r6, [r0, #1]
	ldr r0, [r5, #0x34]
	bl sub_021BC04C
	str r0, [sp, #4]
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r7, #0
	ldr r0, [r0, #0x30]
	mov r2, #0x57
	strb r6, [r0, #5]
	ldr r0, [r5, #0x34]
	bl ovy260_21bb8d8
	mov r0, #0xe
	add sp, #8
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021B846A:
	ldr r0, [r5, #0x34]
	bl ovy260_21bb930
	cmp r0, #1
	bne _021B847C
	mov r0, #0xf
	add sp, #8
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021B847C:
	cmp r0, #3
	bne _021B84A4
	mov r0, #3
	str r0, [r5, #0x40]
	mov r0, #0xf
	add sp, #8
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021B848C:
	bl sub_021C5C7C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021B8494:
	ldr r0, [r5, #0x2c]
	bl sub_021C5A1C
	cmp r0, #0
	beq _021B84A4
	add r0, r7, #0
	bl sub_021C5C8C
_021B84A4:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy260_21b823c

	thumb_func_start ovy260_21b84a8
ovy260_21b84a8: ; 0x021B84A8
	push {r4, r5, r6, lr}
	add r4, r1, #0
	mov r1, #0x41
	add r5, r2, #0
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	ldr r6, [r1, #0x14]
	ldr r1, [r4]
	cmp r1, #4
	bhi _021B8552
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021B84C8: ; jump table
	.short _021B84D2 - _021B84C8 - 2 ; case 0
	.short _021B84D8 - _021B84C8 - 2 ; case 1
	.short _021B84F6 - _021B84C8 - 2 ; case 2
	.short _021B8526 - _021B84C8 - 2 ; case 3
	.short _021B854E - _021B84C8 - 2 ; case 4
_021B84D2:
	mov r0, #1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021B84D8:
	add r0, r5, #0
	add r0, #0x44
	mov r1, #0
	mov r2, #0x9c
	blx MI_CpuFill8
	add r6, #0xd4
	ldr r0, [r5, #0x34]
	add r1, r6, #0
	mov r2, #1
	bl ovy260_21bbb80
	mov r0, #2
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021B84F6:
	add r1, r5, #0
	ldr r0, [r5, #0x34]
	add r1, #0x44
	bl ovy260_21bbc50
	cmp r0, #1
	bne _021B850A
	mov r0, #3
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021B850A:
	cmp r0, #2
	bne _021B8518
	mov r0, #2
	str r0, [r5, #0x40]
	mov r0, #4
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021B8518:
	cmp r0, #3
	bne _021B8552
	mov r0, #3
	str r0, [r5, #0x40]
	mov r0, #4
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021B8526:
	add r0, r5, #0
	add r0, #0x44
	ldrb r0, [r0]
	cmp r0, #0
	bne _021B8544
	add r1, r5, #0
	add r0, r6, #0
	add r1, #0x44
	bl sub_021B8A10
	mov r0, #0
	str r0, [r5, #0x40]
	mov r0, #4
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021B8544:
	mov r0, #1
	str r0, [r5, #0x40]
	mov r0, #4
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021B854E:
	bl sub_021C5C7C
_021B8552:
	pop {r4, r5, r6, pc}
	thumb_func_end ovy260_21b84a8

	thumb_func_start ovy260_21b8554
ovy260_21b8554: ; 0x021B8554
	push {r4, r5, r6, r7, lr}
	sub sp, #0xdc
	add r5, r0, #0
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _021B8562
	b _021B8692
_021B8562:
	mov r6, #0x42
	lsl r6, r6, #2
	sub r0, r6, #4
	ldr r0, [r5, r0]
	ldr r4, [r5, r6]
	ldr r0, [r0, #8]
	ldr r0, [r0]
	bl sub_0201736C
	str r0, [sp, #0x28]
	ldr r0, [r5]
	bl sub_021C2668
	str r0, [sp, #0x24]
	sub r0, r6, #4
	ldr r0, [r5, r0]
	ldr r0, [r0, #8]
	ldr r0, [r0]
	bl sub_02017934
	bl sub_0200BA78
	mov r1, #0
	bl sub_0200B924
	add r6, sp, #0x30
	str r0, [sp, #0x20]
	add r0, r6, #0
	mov r1, #0
	mov r2, #0xac
	blx MI_CpuFill8
	add r0, r4, #0
	bl sub_0200B794
	add r1, r6, #0
	mov r2, #0x92
	blx MI_CpuCopy8
	add r0, r4, #0
	mov r1, #6
	bl sub_0200B798
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #5
	bl sub_0200B798
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #4
	bl sub_0200B798
	lsl r2, r0, #0x18
	lsl r0, r7, #0x18
	lsl r1, r6, #0x18
	lsr r0, r0, #8
	lsr r1, r1, #0x10
	orr r0, r2
	orr r0, r1
	str r0, [sp, #0xc4]
	add r0, r4, #0
	mov r1, #9
	bl sub_0200B798
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #8
	bl sub_0200B798
	str r0, [sp, #0x2c]
	add r0, r4, #0
	mov r1, #7
	mov r6, #7
	bl sub_0200B798
	ldr r2, [sp, #0x2c]
	lsl r1, r7, #0x18
	lsl r2, r2, #0x18
	lsl r0, r0, #0x18
	lsr r2, r2, #8
	lsr r1, r1, #0x10
	orr r0, r2
	orr r0, r1
	str r0, [sp, #0xc8]
	ldr r0, [sp, #0x28]
	bl sub_02008BF4
	add r6, #0xfd
	str r0, [sp, #0xcc]
	ldr r0, [r5, r6]
	mov r1, #0xa
	ldr r0, [r0, #0x10]
	mov r2, #0
	bl sub_0200E870
	add r7, sp, #0xb0
	strh r0, [r7, #0x20]
	mov r0, #0xa
	add r0, #0xfa
	ldr r0, [r5, r0]
	mov r1, #0xa
	ldr r0, [r0, #0x10]
	mov r2, #1
	bl sub_0200E870
	add r6, r0, #0
	mov r0, #0xa
	add r0, #0xfa
	ldr r0, [r5, r0]
	mov r1, #0xa
	ldr r0, [r0, #0x10]
	mov r2, #2
	bl sub_0200E870
	add r0, r6, r0
	str r0, [sp, #0xd4]
	add r0, r4, #0
	mov r1, #0xb
	bl sub_0200B798
	strh r0, [r7, #0x2a]
	ldr r0, [sp, #0xd4]
	cmp r0, #0
	bne _021B8666
	ldrh r0, [r7, #0x20]
	cmp r0, #0
	bne _021B8666
	ldr r0, _021B8698 ; =0x000005DC
	strh r0, [r7, #0x20]
_021B8666:
	ldr r0, [r5, #4]
	mov r1, #0
	str r0, [sp]
	ldr r0, [r5, #8]
	ldr r2, [sp, #0x28]
	str r0, [sp, #4]
	ldr r0, [r5, #0x10]
	ldr r3, [sp, #0x24]
	str r0, [sp, #8]
	ldr r0, [r5, #0x14]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x18]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x20]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	mov r0, #0x57
	str r0, [sp, #0x1c]
	add r0, sp, #0x30
	bl sub_021C2E8C
	str r0, [r5, #0x1c]
_021B8692:
	add sp, #0xdc
	pop {r4, r5, r6, r7, pc}
	nop
_021B8698: .word 0x000005DC
	thumb_func_end ovy260_21b8554

	thumb_func_start ovy260_21b869c
ovy260_21b869c: ; 0x021B869C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _021B86AE
	bl sub_021C301C
	mov r0, #0
	str r0, [r4, #0x1c]
_021B86AE:
	pop {r4, pc}
	thumb_func_end ovy260_21b869c

	thumb_func_start sub_021B86B0
sub_021B86B0: ; 0x021B86B0
	ldr r0, [r0, #0x1c]
	ldr r3, _021B86B8 ; =sub_021C35EC
	bx r3
	nop
_021B86B8: .word sub_021C35EC
	thumb_func_end sub_021B86B0

	thumb_func_start sub_021B86BC
sub_021B86BC: ; 0x021B86BC
	ldr r0, [r0, #0x1c]
	ldr r3, _021B86C4 ; =sub_021C3720
	bx r3
	nop
_021B86C4: .word sub_021C3720
	thumb_func_end sub_021B86BC

	thumb_func_start ovy260_21b86c8
ovy260_21b86c8: ; 0x021B86C8
	push {r4, lr}
	add r4, r0, #0
	bl ovy260_21b8554
_021B86D0:
	add r0, r4, #0
	bl sub_021B86B0
	cmp r0, #0
	beq _021B86D0
	pop {r4, pc}
	thumb_func_end ovy260_21b86c8

	thumb_func_start ovy260_21b86dc
ovy260_21b86dc: ; 0x021B86DC
	push {r3, lr}
	sub sp, #8
	add r3, r0, #0
	ldr r0, [r3, #0x1c]
	cmp r0, #0
	beq _021B86F8
	ldr r2, [r3, #8]
	str r2, [sp]
	mov r2, #0x57
	str r2, [sp, #4]
	ldr r2, [r3, #0x14]
	ldr r3, [r3, #0x10]
	bl sub_021C3048
_021B86F8:
	add sp, #8
	pop {r3, pc}
	thumb_func_end ovy260_21b86dc

	thumb_func_start ovy260_21b86fc
ovy260_21b86fc: ; 0x021B86FC
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	add r4, r1, #0
	cmp r0, #0
	bne _021B8746
	ldr r0, [r5]
	bl sub_021C2668
	add r6, r0, #0
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0xb
	bl sub_0200B798
	ldr r1, [r5, #0x10]
	str r1, [sp]
	ldr r1, [r5, #0x14]
	str r1, [sp, #4]
	ldr r1, [r5, #0x18]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	mov r1, #1
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	mov r0, #0x57
	str r0, [sp, #0x18]
	ldr r2, [r5, #4]
	ldr r3, [r5, #8]
	add r0, r4, #0
	add r1, r6, #0
	bl sub_021C4644
	str r0, [r5, #0x20]
_021B8746:
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy260_21b86fc

	thumb_func_start ovy260_21b874c
ovy260_21b874c: ; 0x021B874C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _021B875E
	bl sub_021C4834
	mov r0, #0
	str r0, [r4, #0x20]
_021B875E:
	pop {r4, pc}
	thumb_func_end ovy260_21b874c

	thumb_func_start sub_021B8760
sub_021B8760: ; 0x021B8760
	ldr r0, [r0, #0x20]
	ldr r3, _021B8768 ; =sub_021C48A0
	bx r3
	nop
_021B8768: .word sub_021C48A0
	thumb_func_end sub_021B8760

	thumb_func_start ovy260_21b876c
ovy260_21b876c: ; 0x021B876C
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #0x24]
	cmp r0, #0
	bne _021B87AA
	ldr r0, [r5]
	bl sub_021C2668
	add r4, r0, #0
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r0, [r0, #8]
	ldr r0, [r0]
	bl sub_02017934
	bl sub_0200C260
	ldr r1, [r5, #0x10]
	str r1, [sp]
	ldr r1, [r5, #0x14]
	str r1, [sp, #4]
	mov r1, #0x57
	str r1, [sp, #8]
	ldr r2, [r5, #4]
	ldr r3, [r5, #0xc]
	add r1, r4, #0
	bl sub_021C4F60
	str r0, [r5, #0x24]
_021B87AA:
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy260_21b876c

	thumb_func_start ovy260_21b87b0
ovy260_21b87b0: ; 0x021B87B0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _021B87C2
	bl sub_021C53E0
	mov r0, #0
	str r0, [r4, #0x24]
_021B87C2:
	pop {r4, pc}
	thumb_func_end ovy260_21b87b0

	thumb_func_start sub_021B87C4
sub_021B87C4: ; 0x021B87C4
	ldr r0, [r0, #0x24]
	ldr r3, _021B87CC ; =sub_021C545C
	bx r3
	nop
_021B87CC: .word sub_021C545C
	thumb_func_end sub_021B87C4

	thumb_func_start sub_021B87D0
sub_021B87D0: ; 0x021B87D0
	ldr r0, [r0, #0x24]
	ldr r3, _021B87D8 ; =sub_021C5544
	bx r3
	nop
_021B87D8: .word sub_021C5544
	thumb_func_end sub_021B87D0

	thumb_func_start ovy260_21b87dc
ovy260_21b87dc: ; 0x021B87DC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r4, r0, #0
	ldr r0, [r4, #0x30]
	add r5, r1, #0
	cmp r0, #0
	bne _021B88E8
	add r0, sp, #8
	mov r1, #0
	mov r2, #0x30
	mov r6, #0
	mov r7, #0x30
	blx MI_CpuFill8
	ldr r0, [r4, #0x14]
	mov r1, #0xf
	str r0, [sp, #8]
	ldr r0, [r4, #8]
	mov r2, #1
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x10]
	str r0, [sp, #0x10]
	add r0, sp, #8
	strh r6, [r0, #0x20]
	strh r1, [r0, #0x22]
	mov r1, #0xd
	strh r1, [r0, #0x24]
	strh r2, [r0, #0x26]
	cmp r5, #5
	bhi _021B88E8
	add r1, r5, r5
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021B8824: ; jump table
	.short _021B8832 - _021B8824 - 2 ; case 0
	.short _021B8854 - _021B8824 - 2 ; case 1
	.short _021B8876 - _021B8824 - 2 ; case 2
	.short _021B8894 - _021B8824 - 2 ; case 3
	.short _021B88C0 - _021B8824 - 2 ; case 4
	.short _021B8830 - _021B8824 - 2 ; case 5
_021B8830:
	strh r2, [r0, #0x2e]
_021B8832:
	mov r0, #0x34
	str r0, [sp, #0x14]
	mov r0, #0x35
	str r0, [sp, #0x18]
	mov r0, #2
	mov r1, #1
	str r0, [sp, #0x24]
	str r1, [sp, #0x30]
	add r0, sp, #8
	strh r1, [r0, #0x2c]
	add r0, sp, #8
	mov r1, #0x57
	bl sub_021C5A64
	add sp, #0x38
	str r0, [r4, #0x30]
	pop {r3, r4, r5, r6, r7, pc}
_021B8854:
	mov r1, #0x2f
	str r1, [sp, #0x14]
	mov r1, #0x31
	str r1, [sp, #0x1c]
	mov r1, #3
	str r1, [sp, #0x24]
	str r7, [sp, #0x18]
	str r2, [sp, #0x30]
	mov r1, #2
	strh r1, [r0, #0x2c]
	add r0, sp, #8
	mov r1, #0x57
	bl sub_021C5A64
	add sp, #0x38
	str r0, [r4, #0x30]
	pop {r3, r4, r5, r6, r7, pc}
_021B8876:
	mov r1, #0x42
	str r1, [sp, #0x14]
	mov r1, #0x43
	str r1, [sp, #0x18]
	mov r1, #2
	str r1, [sp, #0x24]
	str r2, [sp, #0x30]
	strh r2, [r0, #0x2c]
	add r0, sp, #8
	mov r1, #0x57
	bl sub_021C5A64
	add sp, #0x38
	str r0, [r4, #0x30]
	pop {r3, r4, r5, r6, r7, pc}
_021B8894:
	mov r1, #0x4b
	str r1, [sp, #0x14]
	mov r1, #0x4c
	str r1, [sp, #0x18]
	mov r1, #0x4d
	str r1, [sp, #0x1c]
	mov r1, #3
	str r2, [sp, #0x30]
	str r1, [sp, #0x24]
	mov r2, #2
	strh r2, [r0, #0x2c]
	mov r2, #6
	str r2, [sp]
	mov r0, #0x57
	str r0, [sp, #4]
	add r0, sp, #8
	mov r3, #0x1a
	bl sub_021C5A88
	add sp, #0x38
	str r0, [r4, #0x30]
	pop {r3, r4, r5, r6, r7, pc}
_021B88C0:
	mov r1, #0x5d
	str r1, [sp, #0x14]
	mov r1, #0x5e
	str r1, [sp, #0x18]
	mov r1, #0x5f
	str r1, [sp, #0x1c]
	mov r1, #3
	str r2, [sp, #0x30]
	str r1, [sp, #0x24]
	mov r2, #2
	strh r2, [r0, #0x2c]
	mov r2, #6
	str r2, [sp]
	mov r0, #0x57
	str r0, [sp, #4]
	add r0, sp, #8
	mov r3, #0x1a
	bl sub_021C5A88
	str r0, [r4, #0x30]
_021B88E8:
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy260_21b87dc

	thumb_func_start ovy260_21b88ec
ovy260_21b88ec: ; 0x021B88EC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _021B88FE
	bl sub_021C5BA4
	mov r0, #0
	str r0, [r4, #0x30]
_021B88FE:
	pop {r4, pc}
	thumb_func_end ovy260_21b88ec

	thumb_func_start ovy260_21b8900
ovy260_21b8900: ; 0x021B8900
	push {r3, lr}
	ldr r0, [r0, #0x30]
	cmp r0, #0
	beq _021B890E
	bl sub_021C5BD4
	pop {r3, pc}
_021B890E:
	mov r0, #0
	mvn r0, r0
	pop {r3, pc}
	thumb_func_end ovy260_21b8900

	thumb_func_start ovy260_21b8914
ovy260_21b8914: ; 0x021B8914
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x3c]
	bl sub_021C5C74
	ldr r0, _021B8924 ; =0x0000FFFF
	str r0, [r4, #0x40]
	pop {r4, pc}
	.align 2, 0
_021B8924: .word 0x0000FFFF
	thumb_func_end ovy260_21b8914

	thumb_func_start ovy260_21b8928
ovy260_21b8928: ; 0x021B8928
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x3c]
	bl sub_021C5C54
	ldr r0, [r4, #0x3c]
	bl sub_021C5C64
	cmp r0, #0
	beq _021B8940
	ldr r0, [r4, #0x40]
	pop {r4, pc}
_021B8940:
	ldr r0, _021B8944 ; =0x0000FFFF
	pop {r4, pc}
	.align 2, 0
_021B8944: .word 0x0000FFFF
	thumb_func_end ovy260_21b8928

	thumb_func_start ovy260_21b8948
ovy260_21b8948: ; 0x021B8948
	push {r4, r5, r6, lr}
	add r6, r1, #0
	mov r1, #0
	mov r4, #0xd4
	mov r2, #0xd4
	add r5, r0, #0
	blx MI_CpuFill8
	add r4, #0x30
	ldr r0, [r6, r4]
	ldr r0, [r0, #8]
	ldr r0, [r0]
	bl sub_02017934
	bl sub_0200C260
	mov r1, #0x57
	bl sub_0200C28C
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0xd4
	bl sub_0201FD28
	bl sub_0201FCF8
	add r1, r5, #0
	add r2, r0, #0
	add r0, r4, #0
	add r1, #0xd4
	blx MI_CpuCopy8
	add r0, r4, #0
	bl sub_0203A24C
	mov r0, #0x64
	str r0, [r5, #0x44]
	pop {r4, r5, r6, pc}
	thumb_func_end ovy260_21b8948

	thumb_func_start ovy260_21b8994
ovy260_21b8994: ; 0x021B8994
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0x41
	add r4, r1, #0
	lsl r6, r6, #2
	add r5, r0, #0
	ldr r0, [r4, r6]
	ldr r0, [r0, #8]
	ldr r0, [r0]
	bl sub_02017934
	add r7, r0, #0
	ldr r0, [r4, r6]
	ldr r0, [r0, #8]
	ldr r0, [r0]
	bl sub_0201736C
	add r1, r5, #0
	bl sub_02008B34
	add r0, r7, #0
	bl sub_0200EF7C
	add r2, r5, #0
	mov r1, #0
	add r2, #0x38
	bl sub_0200EF90
	ldr r0, [r4, r6]
	ldr r1, [r0, #0x34]
	ldr r1, [r1, #8]
	str r1, [r5, #0x28]
	ldr r1, [r0, #0x34]
	ldr r1, [r1, #0xc]
	str r1, [r5, #0x2c]
	ldr r0, [r0, #0x34]
	ldr r0, [r0, #0x10]
	str r0, [r5, #0x34]
	ldr r0, [r4, #0x34]
	bl sub_021BB1B0
	str r0, [r5, #0x4c]
	ldr r0, [r4, r6]
	ldr r0, [r0, #8]
	ldr r0, [r0]
	bl sub_02017238
	bl sub_0200A3DC
	str r0, [r5, #0x48]
	add r0, r6, #4
	ldr r4, [r4, r0]
	mov r1, #2
	add r0, r4, #0
	bl sub_0200B798
	str r0, [r5, #0x40]
	add r0, r4, #0
	bl sub_0200B8E4
	str r0, [r5, #0x50]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy260_21b8994

	thumb_func_start sub_021B8A10
sub_021B8A10: ; 0x021B8A10
	add r2, r0, #0
	add r1, #0x1c
	add r2, #0x54
	add r0, r1, #0
	add r1, r2, #0
	ldr r3, _021B8A20 ; =MI_CpuCopy8
	mov r2, #0x80
	bx r3
	.align 2, 0
_021B8A20: .word MI_CpuCopy8
	thumb_func_end sub_021B8A10

	thumb_func_start ovy260_21b8a24
ovy260_21b8a24: ; 0x021B8A24
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp, #4]
	add r5, r1, #0
	ldr r0, _021B8AB8 ; =0x00007FFF
	add r1, r2, #0
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	str r0, [sp, #8]
	bl sub_0201C2C8
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0201FDF8
	ldr r2, [sp, #8]
	add r1, r0, #0
	lsl r2, r2, #0x10
	add r0, r4, #0
	lsr r2, r2, #0x10
	bl sub_0219D458
	add r7, r0, #0
	add r0, r5, #0
	mov r4, #0
	bl sub_0201FDF8
	cmp r0, #0
	ble _021B8A86
_021B8A60:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0201FF08
	add r6, r0, #0
	bl sub_0201C2C8
	add r2, r0, #0
	add r0, r7, #0
	add r1, r6, #0
	add r3, r4, #0
	bl sub_0219D488
	add r0, r5, #0
	add r4, r4, #1
	bl sub_0201FDF8
	cmp r4, r0
	blt _021B8A60
_021B8A86:
	bl sub_0201C2C8
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0201FDF8
	add r2, r0, #0
	ldr r0, [sp, #8]
	ldr r3, [sp, #4]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	add r3, #0x54
	add r0, r7, #0
	add r1, r4, #0
	str r3, [sp, #4]
	bl sub_0219D410
	add r4, r0, #0
	add r0, r7, #0
	bl sub_0219D480
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021B8AB8: .word 0x00007FFF
	thumb_func_end ovy260_21b8a24

	thumb_func_start ovy260_21b8abc
ovy260_21b8abc: ; 0x021B8ABC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r1, [sp, #4]
	str r0, [sp]
	bl sub_0201FDF8
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	bl sub_0201FDF8
	ldr r1, [sp, #8]
	cmp r1, r0
	bne _021B8B26
	mov r5, #0
	add r0, r1, #0
	beq _021B8B20
_021B8ADC:
	ldr r0, [sp]
	add r1, r5, #0
	bl sub_0201FF08
	add r4, r0, #0
	ldr r0, [sp, #4]
	add r1, r5, #0
	bl sub_0201FF08
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0201D620
	add r7, r0, #0
	add r0, r6, #0
	bl sub_0201D620
	add r4, r0, #0
	bl sub_0201C2C4
	add r2, r0, #0
	add r0, r7, #0
	add r1, r4, #0
	bl sub_02043E98
	cmp r0, #0
	beq _021B8B18
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021B8B18:
	ldr r0, [sp, #8]
	add r5, r5, #1
	cmp r5, r0
	blo _021B8ADC
_021B8B20:
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021B8B26:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy260_21b8abc

	thumb_func_start ovy260_21b8b2c
ovy260_21b8b2c: ; 0x021B8B2C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r3, r4, #0
	add r3, #0xec
	ldr r3, [r3]
	cmp r3, #7
	bhi _021B8C2C
	add r3, r3, r3
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_021B8B46: ; jump table
	.short _021B8B56 - _021B8B46 - 2 ; case 0
	.short _021B8B74 - _021B8B46 - 2 ; case 1
	.short _021B8B90 - _021B8B46 - 2 ; case 2
	.short _021B8B9C - _021B8B46 - 2 ; case 3
	.short _021B8BA4 - _021B8B46 - 2 ; case 4
	.short _021B8BDC - _021B8B46 - 2 ; case 5
	.short _021B8BE6 - _021B8B46 - 2 ; case 6
	.short _021B8C22 - _021B8B46 - 2 ; case 7
_021B8B56:
	cmp r1, #0
	beq _021B8C2C
	bl sub_0203DEFC
	mov r1, #2
	tst r0, r1
	beq _021B8C2C
	ldr r0, _021B8C3C ; =0x00000547
	bl sub_02006254
_021B8B6A:
	add r0, r4, #0
	add r0, #0xec
	ldr r0, [r0]
	add r1, r0, #1
_021B8B72:
	b _021B8B88
_021B8B74:
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0x14]
	mov r2, #0x23
	mov r3, #1
_021B8B7C:
	bl sub_021C5888
	add r0, r4, #0
	add r0, #0xec
	ldr r0, [r0]
	add r1, r0, #1
_021B8B88:
	add r0, r4, #0
	add r0, #0xec
	str r1, [r0]
	b _021B8C2C
_021B8B90:
	ldr r0, [r4, #0x2c]
	bl sub_021C5A1C
	cmp r0, #0
	beq _021B8C2C
	b _021B8B6A
_021B8B9C:
	mov r1, #0
	bl ovy260_21b87dc
	b _021B8B6A
_021B8BA4:
	bl ovy260_21b8900
	add r5, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	beq _021B8C2C
	add r0, r4, #0
	bl ovy260_21b88ec
	cmp r5, #0
	beq _021B8BC2
	cmp r5, #1
	beq _021B8BC6
	b _021B8C2C
_021B8BC2:
	mov r1, #5
	b _021B8B72
_021B8BC6:
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0x14]
	mov r2, #0x21
	mov r3, #0
	mov r5, #0
	bl sub_021C5888
	add r4, #0xec
	str r5, [r4]
	mov r0, #2
	pop {r3, r4, r5, pc}
_021B8BDC:
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0x14]
	mov r2, #0x2b
	mov r3, #2
	b _021B8B7C
_021B8BE6:
	cmp r2, #0
	beq _021B8C2C
	ldr r0, [r4, #0x34]
	bl ovy260_21b933c
	add r0, r4, #0
	add r0, #0xec
	ldr r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xec
	str r1, [r0]
	ldr r0, [r4, #0x28]
	mov r1, #0
	bl sub_021C4F30
	ldr r0, [r4, #0x34]
	bl ovy260_21b9274
	bl sub_020120C8
	cmp r0, #0
	bne _021B8C2C
	bl sub_02042788
	cmp r0, #0
	beq _021B8C2C
	bl sub_02160170
	b _021B8C2C
_021B8C22:
	mov r0, #0
	add r4, #0xec
	str r0, [r4]
	mov r0, #3
	pop {r3, r4, r5, pc}
_021B8C2C:
	add r4, #0xec
	ldr r0, [r4]
	cmp r0, #0
	bne _021B8C38
	mov r0, #0
	pop {r3, r4, r5, pc}
_021B8C38:
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_021B8C3C: .word 0x00000547
	thumb_func_end ovy260_21b8b2c

	thumb_func_start sub_021B8C40
sub_021B8C40: ; 0x021B8C40
	add r1, r0, #0
	ldr r3, _021B8C4C ; =ovy260_21b88ec
	mov r2, #0
	add r1, #0xec
	str r2, [r1]
	bx r3
	.align 2, 0
_021B8C4C: .word ovy260_21b88ec
	thumb_func_end sub_021B8C40

	thumb_func_start ovy260_21b8c50
ovy260_21b8c50: ; 0x021B8C50
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0x41
	add r5, r0, #0
	lsl r7, r7, #2
	ldr r0, [r5, r7]
	add r4, r1, #0
	ldr r0, [r0, #0x10]
	mov r1, #0xa
	mov r2, #0
	mov r6, #0
	bl sub_0200E870
	ldr r1, [r4, #0x10]
	cmp r1, r0
	bne _021B8C92
	ldr r0, [r5, r7]
	mov r1, #0xa
	ldr r0, [r0, #0x10]
	mov r2, #1
	bl sub_0200E870
	ldr r1, [r4, #8]
	cmp r1, r0
	bne _021B8C92
	ldr r0, [r5, r7]
	mov r1, #0xa
	ldr r0, [r0, #0x10]
	mov r2, #2
	bl sub_0200E870
	ldr r1, [r4, #0xc]
	cmp r1, r0
	beq _021B8C94
_021B8C92:
	mov r6, #1
_021B8C94:
	mov r7, #0x41
	lsl r7, r7, #2
	ldr r0, [r5, r7]
	ldr r3, [r4, #0x10]
	ldr r0, [r0, #0x10]
	mov r1, #0xa
	mov r2, #0
	bl sub_0200E87C
	ldr r0, [r5, r7]
	ldr r3, [r4, #8]
	ldr r0, [r0, #0x10]
	mov r1, #0xa
	mov r2, #1
	bl sub_0200E87C
	ldr r0, [r5, r7]
	ldr r3, [r4, #0xc]
	ldr r0, [r0, #0x10]
	mov r1, #0xa
	mov r2, #2
	bl sub_0200E87C
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy260_21b8c50

	thumb_func_start ovy260_21b8cc8
ovy260_21b8cc8: ; 0x021B8CC8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r6, #0xaf
	str r3, [sp, #8]
	lsl r6, r6, #2
	add r4, r1, #0
	str r2, [sp, #4]
	str r6, [sp]
	add r7, r0, #0
	ldr r0, [sp, #8]
	ldr r1, _021B8D80 ; =0x00001568
	ldr r3, _021B8D84 ; =0x021BFF6C
	mov r2, #0
	bl sub_0203A1FC
	ldr r2, _021B8D80 ; =0x00001568
	mov r1, #0
	add r5, r0, #0
	blx MI_CpuFill8
	add r0, r4, #0
	bl sub_02017238
	str r0, [r5, #4]
	bl sub_02009F7C
	str r0, [r5]
	add r0, r4, #0
	bl sub_0201736C
	bl sub_02008BDC
	str r0, [r5, #0xc]
	str r4, [r5, #8]
	ldr r0, [sp, #4]
	mov r4, #0x1a
	str r0, [r5, #0x10]
	ldr r0, _021B8D88 ; =0x00001468
	lsl r4, r4, #4
	str r7, [r5, r0]
	ldr r0, _021B8D8C ; =0x00000573
	add r6, #0x10
	str r0, [r5, r4]
	str r6, [sp]
	add r6, r4, #0
	add r6, #0xc0
	ldr r0, [sp, #8]
	ldr r3, _021B8D84 ; =0x021BFF6C
	add r1, r6, #0
	mov r2, #0
	bl sub_0203A1FC
	add r1, r4, #0
	sub r1, #0xc
	str r0, [r5, r1]
	sub r4, #0xc
	ldr r0, [r5, r4]
	mov r1, #0
	add r2, r6, #0
	blx MI_CpuFill8
	bl sub_02042788
	cmp r0, #0
	bne _021B8D54
	ldr r0, _021B8D90 ; =0x021BFF84
	ldr r2, _021B8D94 ; =0x021BFF88
	mov r1, #0
	bl sub_0203CB80
_021B8D54:
	mov r0, #9
	ldr r1, _021B8D98 ; =0x021BFD00
	lsl r0, r0, #0xa
	mov r2, #7
	add r3, r5, #0
	bl sub_02040C20
	mov r0, #0
	bl sub_02042D8C
	ldr r0, _021B8D9C ; =ovy260_21bb5e4
	add r1, r5, #0
	bl sub_02152040
	ldr r0, _021B8DA0 ; =0x021BB615
	add r1, r5, #0
	bl sub_0215205C
	add r0, r5, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021B8D80: .word 0x00001568
_021B8D84: .word 0x021BFF6C
_021B8D88: .word 0x00001468
_021B8D8C: .word 0x00000573
_021B8D90: .word 0x021BFF84
_021B8D94: .word 0x021BFF88
_021B8D98: .word 0x021BFD00
	thumb_func_end ovy260_21b8cc8
_021B8D9C: .word ovy260_21bb5e4
_021B8DA0: .word 0x021BB615

	thumb_func_start ovy260_21b8da4
ovy260_21b8da4: ; 0x021B8DA4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	mov r1, #0
	bl sub_0215205C
	mov r0, #0
	mov r1, #0
	bl sub_02152040
	mov r0, #9
	lsl r0, r0, #0xa
	bl sub_02040C64
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0203A24C
	add r0, r4, #0
	bl sub_0203A24C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy260_21b8da4

	thumb_func_start sub_021B8DD4
sub_021B8DD4: ; 0x021B8DD4
	bx lr
	.align 2, 0
	thumb_func_end sub_021B8DD4

	thumb_func_start ovy260_21b8dd8
ovy260_21b8dd8: ; 0x021B8DD8
	push {r4, lr}
	add r4, r0, #0
	str r1, [r4, #0x14]
	bl sub_02040440
	ldr r1, [r4, #0x14]
	mov r2, #0x24
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_02040624
	pop {r4, pc}
	thumb_func_end ovy260_21b8dd8

	thumb_func_start ovy260_21b8df0
ovy260_21b8df0: ; 0x021B8DF0
	push {r4, lr}
	add r4, r0, #0
	bl sub_02040440
	ldr r1, [r4, #0x14]
	mov r2, #0x24
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_02040664
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy260_21b8df0

	thumb_func_start ovy260_21b8e08
ovy260_21b8e08: ; 0x021B8E08
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r6, #0
	add r7, r1, #0
	str r2, [sp]
	add r5, #0x18
	mov r4, #0
	bl sub_02042788
	cmp r0, #0
	beq _021B8E84
	bl sub_020120C8
	cmp r0, #0
	beq _021B8E4C
	add r0, r4, #0
	bl sub_02042E94
	add r0, r4, #0
	bl sub_02042E9C
	bl sub_02006280
	ldr r0, [r6, #8]
	bl sub_020178BC
	cmp r0, #0
	beq _021B8E4C
	ldr r0, [r6, #8]
	bl sub_02017884
	mov r0, #0x29
	bl sub_02011D04
_021B8E4C:
	ldr r1, [sp]
	add r0, r7, #0
	bl sub_02152404
	cmp r0, #4
	bhi _021B8E80
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021B8E64: ; jump table
	.short _021B8E6E - _021B8E64 - 2 ; case 0
	.short _021B8E72 - _021B8E64 - 2 ; case 1
	.short _021B8E76 - _021B8E64 - 2 ; case 2
	.short _021B8E7A - _021B8E64 - 2 ; case 3
	.short _021B8E7E - _021B8E64 - 2 ; case 4
_021B8E6E:
	mov r4, #0
	b _021B8E80
_021B8E72:
	mov r4, #1
	b _021B8E80
_021B8E76:
	mov r4, #2
	b _021B8E80
_021B8E7A:
	mov r4, #3
	b _021B8E80
_021B8E7E:
	mov r4, #4
_021B8E80:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_021B8E84:
	cmp r4, #0
	bne _021B8F40
	ldr r0, [r5, #0x1c]
	cmp r0, #5
	bhi _021B8EC8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021B8E9A: ; jump table
	.short _021B8EA6 - _021B8E9A - 2 ; case 0
	.short _021B8EA8 - _021B8E9A - 2 ; case 1
	.short _021B8EB2 - _021B8E9A - 2 ; case 2
	.short _021B8EBE - _021B8E9A - 2 ; case 3
	.short _021B8EBE - _021B8E9A - 2 ; case 4
	.short _021B8EC0 - _021B8E9A - 2 ; case 5
_021B8EA6:
	b _021B8ECA
_021B8EA8:
	ldr r0, [r5]
	bl ovy260_21bbe88
_021B8EAE:
	add r4, r0, #0
	b _021B8ECA
_021B8EB2:
	ldr r0, [r5, #4]
	ldr r1, [r5, #8]
	ldr r2, [r5, #0xc]
	bl sub_021BBF0C
	add r4, r0, #0
_021B8EBE:
	b _021B8ECA
_021B8EC0:
	ldr r0, [r5, #0x18]
	bl sub_021BC008
	b _021B8EAE
_021B8EC8:
	mov r4, #0
_021B8ECA:
	cmp r4, #0
	beq _021B8EF4
	mov r0, #0
	bl sub_02042E94
	mov r0, #0
	bl sub_02042E9C
	bl sub_02006280
	ldr r0, [r6, #8]
	bl sub_020178BC
	cmp r0, #0
	beq _021B8EF4
	ldr r0, [r6, #8]
	bl sub_02017884
	mov r0, #0x29
	bl sub_02011D04
_021B8EF4:
	cmp r4, #1
	beq _021B8F02
	cmp r4, #2
	beq _021B8F14
	cmp r4, #3
	beq _021B8F32
	b _021B8F36
_021B8F02:
	bl sub_02042478
	bl sub_020424E4
	bl sub_02011DE0
	bl sub_02012144
	b _021B8F36
_021B8F14:
	bl sub_020120C8
	cmp r0, #0
	bne _021B8F2C
	ldr r3, _021B8F44 ; =0x000003F7
	mov r0, #0
	mov r1, #0
	mov r2, #0
	bl sub_020424AC
	bl sub_02012050
_021B8F2C:
	bl sub_020120DC
	b _021B8F36
_021B8F32:
	bl sub_02012028
_021B8F36:
	cmp r4, #0
	beq _021B8F40
	add r0, r5, #0
	bl sub_021BC028
_021B8F40:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021B8F44: .word 0x000003F7
	thumb_func_end ovy260_21b8e08

	thumb_func_start sub_021B8F48
sub_021B8F48: ; 0x021B8F48
	mov r1, #0x4b
	mov r2, #0
	lsl r1, r1, #2
	str r2, [r0, r1]
	sub r1, r1, #4
	str r2, [r0, r1]
	bx lr
	.align 2, 0
	thumb_func_end sub_021B8F48

	thumb_func_start ovy260_21b8f58
ovy260_21b8f58: ; 0x021B8F58
	push {r3, r4, r5, lr}
	mov r5, #0x4a
	add r4, r0, #0
	lsl r5, r5, #2
	ldr r1, [r4, r5]
	cmp r1, #4
	bhi _021B8FD0
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021B8F72: ; jump table
	.short _021B8F7C - _021B8F72 - 2 ; case 0
	.short _021B8F8E - _021B8F72 - 2 ; case 1
	.short _021B8FB2 - _021B8F72 - 2 ; case 2
	.short _021B8FBA - _021B8F72 - 2 ; case 3
	.short _021B8FCC - _021B8F72 - 2 ; case 4
_021B8F7C:
	ldr r3, _021B8FD4 ; =0x00001468
	mov r1, #0
	ldr r3, [r4, r3]
	mvn r1, r1
	mov r2, #2
	bl ovy260_21ba3b4
	mov r0, #1
_021B8F8C:
	b _021B8FA2
_021B8F8E:
	bl ovy260_21ba488
	cmp r0, #1
	bne _021B8FAA
	ldr r0, _021B8FD4 ; =0x00001468
	ldr r0, [r4, r0]
	ldr r0, [r0]
	cmp r0, #0
	beq _021B8FA6
_021B8FA0:
	mov r0, #4
_021B8FA2:
	str r0, [r4, r5]
	b _021B8FD0
_021B8FA6:
	mov r0, #2
	b _021B8F8C
_021B8FAA:
	cmp r0, #2
	bne _021B8FD0
	mov r0, #2
	pop {r3, r4, r5, pc}
_021B8FB2:
	bl sub_021BAFC0
	mov r0, #3
	b _021B8F8C
_021B8FBA:
	bl ovy260_21bafd0
	cmp r0, #1
	bne _021B8FC4
	b _021B8FA0
_021B8FC4:
	cmp r0, #2
	bne _021B8FD0
	mov r0, #2
	pop {r3, r4, r5, pc}
_021B8FCC:
	mov r0, #1
	pop {r3, r4, r5, pc}
_021B8FD0:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021B8FD4: .word 0x00001468
	thumb_func_end ovy260_21b8f58

	thumb_func_start ovy260_21b8fd8
ovy260_21b8fd8: ; 0x021B8FD8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	add r4, r0, #0
	add r7, r6, #0
	str r3, [sp, #4]
	ldr r5, [sp, #0x20]
	cmp r6, #1
	bne _021B8FEC
	add r7, r7, r2
_021B8FEC:
	bl sub_02042788
	cmp r0, #0
	bne _021B8FF8
	bl sub_02012028
_021B8FF8:
	bl sub_02160170
	add r0, r4, #0
	mov r1, #0
	add r2, r7, #0
	bl ovy260_21b942c
	ldr r2, [sp, #4]
	add r0, r4, #0
	mov r1, #1
	bl ovy260_21b942c
	add r0, r4, #0
	mov r1, #2
	mov r2, #1
	bl ovy260_21b942c
	ldr r2, [r5]
	add r0, r4, #0
	mov r1, #3
	bl ovy260_21b942c
	ldr r2, [r5, #4]
	add r0, r4, #0
	mov r1, #5
	bl ovy260_21b942c
	ldr r2, [r5, #8]
	add r0, r4, #0
	mov r1, #4
	bl ovy260_21b942c
	ldr r2, [r5, #0xc]
	add r0, r4, #0
	mov r1, #6
	bl ovy260_21b942c
	ldr r2, _021B90CC ; =0x00020017
	add r0, r4, #0
	mov r1, #7
	bl ovy260_21b942c
	mov r0, #1
	str r0, [sp]
	add r0, r4, #0
	ldr r1, _021B90D0 ; =0x021BFF8C
	ldr r3, [sp, #4]
	add r0, #0x44
	add r2, r7, #0
	bl sub_020800E8
	mov r0, #0
	mov r2, #0x69
	lsl r2, r2, #2
	str r0, [r4, #0x40]
	str r0, [r4, r2]
	add r1, r2, #4
	str r0, [r4, r1]
	sub r2, #0x6c
	add r0, r4, r2
	mov r1, #0
	mov r2, #0x1c
	blx MI_CpuFill8
	cmp r6, #3
	bhi _021B90BC
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021B9088: ; jump table
	.short _021B9090 - _021B9088 - 2 ; case 0
	.short _021B909A - _021B9088 - 2 ; case 1
	.short _021B90A8 - _021B9088 - 2 ; case 2
	.short _021B90B2 - _021B9088 - 2 ; case 3
_021B9090:
	ldr r1, _021B90D4 ; =ovy260_21b946c
	ldr r0, _021B90D8 ; =0x0000121C
	add sp, #8
	str r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021B909A:
	ldr r0, _021B90DC ; =0x021BFF84
	ldr r2, _021B90E0 ; =0x021BFF88
	mov r1, #0
	bl sub_0203CB80
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021B90A8:
	ldr r1, _021B90E4 ; =0x021B945D
	ldr r0, _021B90D8 ; =0x0000121C
	add sp, #8
	str r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021B90B2:
	ldr r1, _021B90E8 ; =0x021B9465
	ldr r0, _021B90D8 ; =0x0000121C
	add sp, #8
	str r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021B90BC:
	ldr r0, _021B90DC ; =0x021BFF84
	ldr r2, _021B90E0 ; =0x021BFF88
	mov r1, #0
	bl sub_0203CB80
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021B90CC: .word 0x00020017
_021B90D0: .word 0x021BFF8C
_021B90D4: .word ovy260_21b946c
_021B90D8: .word 0x0000121C
_021B90DC: .word 0x021BFF84
_021B90E0: .word 0x021BFF88
_021B90E4: .word 0x021B945D
_021B90E8: .word 0x021B9465
	thumb_func_end ovy260_21b8fd8

	thumb_func_start ovy260_21b90ec
ovy260_21b90ec: ; 0x021B90EC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x40]
	cmp r1, #8
	bhi _021B9164
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021B9102: ; jump table
	.short _021B9114 - _021B9102 - 2 ; case 0
	.short _021B9142 - _021B9102 - 2 ; case 1
	.short _021B9146 - _021B9102 - 2 ; case 2
	.short _021B9184 - _021B9102 - 2 ; case 3
	.short _021B91C0 - _021B9102 - 2 ; case 4
	.short _021B91D6 - _021B9102 - 2 ; case 5
	.short _021B920E - _021B9102 - 2 ; case 6
	.short _021B9236 - _021B9102 - 2 ; case 7
	.short _021B9264 - _021B9102 - 2 ; case 8
_021B9114:
	ldr r2, _021B9270 ; =0x0000121C
	add r0, #0x44
	ldr r2, [r4, r2]
	mov r1, #2
	add r3, r4, #0
	mov r5, #2
	bl sub_02150A7C
	cmp r0, #0
	beq _021B9138
	bl sub_0204200C
	mov r0, #0
	bl sub_02151E40
	mov r0, #1
_021B9134:
	str r0, [r4, #0x40]
	b _021B926C
_021B9138:
	mov r0, #1
	bl sub_020421AC
	add r0, r5, #0
	pop {r3, r4, r5, pc}
_021B9142:
	mov r0, #2
	b _021B9134
_021B9146:
	bl sub_020420B4
	cmp r0, #0
	beq _021B9154
	cmp r0, #1
	beq _021B9168
	b _021B9182
_021B9154:
	bl sub_02042540
	ldr r1, [r0, #0xc]
	mov r0, #0x3f
	lsl r0, r0, #4
	sub r0, r1, r0
	cmp r0, #1
	bls _021B9166
_021B9164:
	b _021B926C
_021B9166:
	b _021B91AA
_021B9168:
	mov r0, #0x6a
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #3
	str r0, [r4, #0x40]
	mov r0, #1
	bl sub_02042E94
	mov r0, #1
	bl sub_02042E9C
	b _021B926C
_021B9182:
	b _021B91AA
_021B9184:
	bl sub_0203FFC4
	cmp r0, #0
	beq _021B91B4
	bl sub_02040504
	cmp r0, #0
	beq _021B9198
	mov r0, #4
	str r0, [r4, #0x40]
_021B9198:
	mov r0, #0x6a
	lsl r0, r0, #2
	ldr r2, [r4, r0]
	add r1, r2, #1
	str r1, [r4, r0]
	mov r0, #0xe1
	lsl r0, r0, #4
	cmp r2, r0
	bls _021B926C
_021B91AA:
	add r0, r4, #0
_021B91AC:
	bl sub_021B928C
	mov r0, #7
	b _021B9134
_021B91B4:
	mov r0, #0x6a
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #5
	b _021B9134
_021B91C0:
	bl sub_02040440
	mov r1, #0xf
	mov r2, #0x24
	bl sub_02040624
	mov r0, #0x6a
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	b _021B920A
_021B91D6:
	mov r5, #0x6a
	lsl r5, r5, #2
	ldr r2, [r4, r5]
	add r1, r2, #1
	str r1, [r4, r5]
	mov r1, #0xe1
	lsl r1, r1, #4
	cmp r2, r1
	bls _021B91EA
	b _021B9220
_021B91EA:
	bl sub_02040474
	cmp r0, #0
	beq _021B926C
	bl sub_02040504
	cmp r0, #0
	beq _021B926C
	bl sub_02040440
	mov r1, #0xf
	mov r2, #0x24
	bl sub_02040624
	mov r0, #0
	str r0, [r4, r5]
_021B920A:
	mov r0, #6
	b _021B9134
_021B920E:
	mov r1, #0x6a
	lsl r1, r1, #2
	ldr r3, [r4, r1]
	add r2, r3, #1
	str r2, [r4, r1]
	mov r1, #0xe1
	lsl r1, r1, #4
	cmp r3, r1
	bls _021B9222
_021B9220:
	b _021B91AC
_021B9222:
	bl sub_02040440
	mov r1, #0xf
	mov r2, #0x24
	bl sub_02040664
	cmp r0, #0
	beq _021B926C
	mov r0, #8
	b _021B9134
_021B9236:
	bl ovy260_21b9298
	cmp r0, #0
	beq _021B926C
	bl sub_02042540
	ldr r1, [r0, #0xc]
	mov r0, #0x3f
	lsl r0, r0, #4
	sub r0, r1, r0
	cmp r0, #1
	bhi _021B9260
	bl sub_020424E4
	bl sub_02042478
	bl sub_02012144
	mov r0, #1
	bl sub_020421AC
_021B9260:
	mov r0, #2
	pop {r3, r4, r5, pc}
_021B9264:
	bl sub_02042BC4
	mov r0, #1
	pop {r3, r4, r5, pc}
_021B926C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021B9270: .word 0x0000121C
	thumb_func_end ovy260_21b90ec

	thumb_func_start ovy260_21b9274
ovy260_21b9274: ; 0x021B9274
	push {r3, lr}
	mov r0, #0
	bl sub_02042E94
	mov r0, #0
	bl sub_02042E9C
	mov r0, #1
	bl sub_020421AC
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy260_21b9274

	thumb_func_start sub_021B928C
sub_021B928C: ; 0x021B928C
	mov r1, #0x56
	mov r2, #0
	lsl r1, r1, #2
	str r2, [r0, r1]
	bx lr
	.align 2, 0
	thumb_func_end sub_021B928C

	thumb_func_start ovy260_21b9298
ovy260_21b9298: ; 0x021B9298
	push {r4, r5, r6, lr}
	mov r5, #0x56
	add r4, r0, #0
	lsl r5, r5, #2
	ldr r1, [r4, r5]
	cmp r1, #5
	bhi _021B9338
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021B92B2: ; jump table
	.short _021B92BE - _021B92B2 - 2 ; case 0
	.short _021B92D4 - _021B92B2 - 2 ; case 1
	.short _021B92FC - _021B92B2 - 2 ; case 2
	.short _021B9312 - _021B92B2 - 2 ; case 3
	.short _021B932C - _021B92B2 - 2 ; case 4
	.short _021B9334 - _021B92B2 - 2 ; case 5
_021B92BE:
	mov r1, #0x18
	bl ovy260_21b8dd8
	add r0, r5, #0
	mov r1, #0
	add r0, #0x4c
	str r1, [r4, r0]
_021B92CC:
	ldr r0, [r4, r5]
	add r0, r0, #1
	str r0, [r4, r5]
	b _021B9338
_021B92D4:
	bl ovy260_21b8df0
	cmp r0, #0
	beq _021B92DE
	b _021B92CC
_021B92DE:
	add r0, r5, #0
	add r0, #0x4c
	ldr r2, [r4, r0]
	add r0, r5, #0
	add r0, #0x4c
	ldr r0, [r4, r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x4c
	str r1, [r4, r0]
	mov r0, #0x96
	lsl r0, r0, #2
	cmp r2, r0
	bls _021B9338
	b _021B92CC
_021B92FC:
	mov r0, #0
	mov r6, #0
	bl sub_02042E94
	mov r0, #0
	bl sub_02042E9C
	add r0, r5, #0
	sub r0, #0x24
	str r6, [r4, r0]
	b _021B92CC
_021B9312:
	add r0, r5, #0
	sub r0, #0x24
	ldr r2, [r4, r0]
	add r0, r5, #0
	sub r0, #0x24
	ldr r0, [r4, r0]
	add r1, r0, #1
	add r0, r5, #0
	sub r0, #0x24
	str r1, [r4, r0]
	cmp r2, #0x1e
	bls _021B9338
	b _021B92CC
_021B932C:
	mov r0, #1
	bl sub_020421AC
	b _021B92CC
_021B9334:
	mov r0, #1
	pop {r4, r5, r6, pc}
_021B9338:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy260_21b9298

	thumb_func_start ovy260_21b933c
ovy260_21b933c: ; 0x021B933C
	push {r3, lr}
	bl sub_02151F4C
	cmp r0, #0
	beq _021B9356
	bl sub_02040440
	ldr r1, _021B935C ; =0x00002402
	ldr r3, _021B9360 ; =0x021BFCFC
	mov r2, #4
	bl sub_02042BE8
	pop {r3, pc}
_021B9356:
	mov r0, #1
	pop {r3, pc}
	nop
_021B935C: .word 0x00002402
_021B9360: .word 0x021BFCFC
	thumb_func_end ovy260_21b933c

	thumb_func_start sub_021B9364
sub_021B9364: ; 0x021B9364
	mov r1, #5
	lsl r1, r1, #6
	ldr r3, [r0, r1]
	cmp r3, #0
	beq _021B9372
	mov r2, #0
	str r2, [r0, r1]
_021B9372:
	add r0, r3, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_021B9364

	thumb_func_start ovy260_21b9378
ovy260_21b9378: ; 0x021B9378
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	bl sub_02040440
	bl sub_02042A6C
	mov r4, #1
	cmp r0, #0
	beq _021B938E
	mov r4, #0
_021B938E:
	ldr r6, _021B93BC ; =0x000014A0
	ldr r1, [r5, #8]
	add r0, r5, r6
	bl sub_02036DC0
	bl sub_02040440
	add r1, r5, r6
	str r1, [sp]
	mov r2, #1
	str r2, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	lsl r1, r4, #0x18
	ldr r2, _021B93C0 ; =0x00002406
	lsr r1, r1, #0x18
	mov r3, #0xc4
	bl sub_02042C18
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_021B93BC: .word 0x000014A0
_021B93C0: .word 0x00002406
	thumb_func_end ovy260_21b9378

	thumb_func_start sub_021B93C4
sub_021B93C4: ; 0x021B93C4
	mov r1, #0x15
	lsl r1, r1, #4
	ldr r3, [r0, r1]
	cmp r3, #0
	beq _021B93D2
	mov r2, #0
	str r2, [r0, r1]
_021B93D2:
	add r0, r3, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_021B93C4

	thumb_func_start sub_021B93D8
sub_021B93D8: ; 0x021B93D8
	ldr r2, _021B93E0 ; =0x00001564
	str r1, [r0, r2]
	bx lr
	nop
_021B93E0: .word 0x00001564
	thumb_func_end sub_021B93D8

	thumb_func_start ovy260_21b93e4
ovy260_21b93e4: ; 0x021B93E4
	push {r3, r4, lr}
	sub sp, #0x1c
	add r4, r0, #0
	bl sub_02042788
	cmp r0, #0
	bne _021B93F6
	bl sub_02012028
_021B93F6:
	add r0, sp, #0xc
	add r1, sp, #0
	bl sub_0215DDA8
	cmp r0, #0
	bne _021B9406
	bl sub_02012028
_021B9406:
	add r0, r4, #0
	mov r1, #0
	mov r2, #6
	blx MI_CpuFill8
	ldr r0, [sp, #0xc]
	strb r0, [r4]
	ldr r0, [sp, #0x10]
	strb r0, [r4, #1]
	ldr r0, [sp, #0x14]
	strb r0, [r4, #2]
	ldr r0, [sp]
	strb r0, [r4, #3]
	ldr r0, [sp, #4]
	strb r0, [r4, #4]
	ldr r0, [sp, #8]
	strb r0, [r4, #5]
	add sp, #0x1c
	pop {r3, r4, pc}
	thumb_func_end ovy260_21b93e4

	thumb_func_start ovy260_21b942c
ovy260_21b942c: ; 0x021B942C
	push {r4, lr}
	mov r3, #0xc
	mul r3, r1
	add r0, #0xc4
	str r2, [r0, r3]
	add r4, r0, r3
	ldr r0, _021B9458 ; =0x021BFE9C
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	add r1, r4, #6
	mov r2, #3
	blx MI_CpuCopy8
	mov r0, #0
	strb r0, [r4, #9]
	ldrb r0, [r4, #4]
	add r1, r4, #6
	add r2, r4, #0
	bl sub_02160E10
	strb r0, [r4, #4]
	pop {r4, pc}
	.align 2, 0
_021B9458: .word 0x021BFE9C
	thumb_func_end ovy260_21b942c
_021B945C:
	.byte 0x00, 0x4B, 0x18, 0x47
	.byte 0x6D, 0x94, 0x1B, 0x02, 0xFA, 0x20, 0x80, 0x00, 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy260_21b946c
ovy260_21b946c: ; 0x021B946C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r2, #0
	add r5, r1, #0
	add r1, #0xee
	mvn r2, r2
	str r0, [sp]
	bl sub_02160F98
	ldr r4, _021B9520 ; =0x00000106
	add r7, r0, #0
	mov r2, #0
	ldr r0, [sp]
	add r1, r5, r4
	mvn r2, r2
	bl sub_02160F98
	str r0, [sp, #4]
	add r4, #0xc
	mov r2, #0
	ldr r0, [sp]
	add r1, r5, r4
	mvn r2, r2
	bl sub_02160F98
	add r6, r0, #0
	add r1, r5, #0
	mov r2, #0
	ldr r0, [sp]
	add r1, #0xfa
	mvn r2, r2
	bl sub_02160F98
	mov r1, #0
	mvn r1, r1
	cmp r7, r1
	bne _021B94CA
	ldr r2, [sp, #4]
	cmp r2, r1
	bne _021B94CA
	cmp r0, r1
	bne _021B94CA
	cmp r6, r1
	bne _021B94CA
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021B94CA:
	add r1, r5, #0
	add r1, #0xf4
	ldr r1, [r1]
	cmp r0, r1
	bne _021B951A
	ldr r1, [sp, #4]
	mov r4, #0x32
	add r0, r1, #0
	mul r0, r4
	add r1, r6, #5
	blx sub_0208D65C
	add r6, r0, #0
	mov r0, #0x32
	add r0, #0xce
	ldr r1, [r5, r0]
	add r0, r1, #0
	mul r0, r4
	add r4, #0xda
	ldr r1, [r5, r4]
	add r1, r1, #5
	blx sub_0208D65C
	add r5, #0xe8
	ldr r1, [r5]
	sub r1, r7, r1
	bpl _021B9502
	neg r1, r1
_021B9502:
	sub r2, r6, r0
	bpl _021B9508
	neg r2, r2
_021B9508:
	mov r0, #0xfa
	lsl r0, r0, #2
	sub r1, r0, r1
	lsl r0, r2, #5
	sub r0, r1, r0
	bpl _021B951C
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021B951A:
	mov r0, #0
_021B951C:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021B9520: .word 0x00000106
	thumb_func_end ovy260_21b946c

	thumb_func_start ovy260_21b9524
ovy260_21b9524: ; 0x021B9524
	push {r3, r4, r5, r6, r7, lr}
	add r6, r2, #0
	add r5, r0, #0
	add r0, r1, #0
	mov r4, #0x4b
	ldr r2, _021B960C ; =0x00001498
	mov r1, #0
	str r1, [r5, r2]
	lsl r4, r4, #2
	str r1, [r5, r4]
	add r1, r4, #0
	mov r2, #1
	add r1, #0x80
	str r2, [r5, r1]
	add r2, r4, #0
	str r3, [sp]
	add r2, #0x20
	mov r1, #0
	str r1, [r5, r2]
	add r2, r4, #0
	add r2, #0xc
	str r1, [r5, r2]
	add r1, r4, #0
	add r1, #0x84
	str r0, [r5, r1]
	add r1, r4, #0
	add r2, r4, #0
	ldr r3, [sp, #0x1c]
	add r1, #0x38
	str r3, [r5, r1]
	add r2, #0x3c
	mov r1, #0
	str r1, [r5, r2]
	add r2, r4, #0
	add r2, #0x40
	str r1, [r5, r2]
	add r2, r4, #0
	add r2, #0x44
	ldr r7, [sp, #0x18]
	str r1, [r5, r2]
	cmp r0, #0
	bne _021B959C
	cmp r6, #0
	beq _021B9582
	cmp r6, #2
	beq _021B958A
	b _021B9592
_021B9582:
	ldr r0, _021B9610 ; =0x021BA1A9
	add r4, #0x30
	str r0, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
_021B958A:
	ldr r0, _021B9614 ; =0x021BA199
	add r4, #0x30
	str r0, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
_021B9592:
	ldr r0, _021B9618 ; =0x021BFF84
	ldr r2, _021B961C ; =0x021BFF88
	bl sub_0203CB80
	pop {r3, r4, r5, r6, r7, pc}
_021B959C:
	cmp r0, #1
	bne _021B9608
	cmp r3, #0
	beq _021B95C8
	cmp r6, #0
	beq _021B95AE
	cmp r6, #2
	beq _021B95B6
	b _021B95BE
_021B95AE:
	ldr r0, _021B9620 ; =0x021BA1C9
	add r4, #0x30
	str r0, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
_021B95B6:
	ldr r0, _021B9624 ; =0x021BA1B9
	add r4, #0x30
	str r0, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
_021B95BE:
	ldr r0, _021B9618 ; =0x021BFF84
	ldr r2, _021B961C ; =0x021BFF88
	bl sub_0203CB80
	pop {r3, r4, r5, r6, r7, pc}
_021B95C8:
	bl sub_02042BC4
	add r1, r4, #0
	ldr r0, [sp]
	add r1, #0x58
	str r0, [r5, r1]
	add r0, r4, #0
	ldr r1, [r7]
	add r0, #0x5c
	str r1, [r5, r0]
	add r0, r4, #0
	add r0, #0x60
	ldr r1, [r7, #0x10]
	cmp r6, #0
	str r1, [r5, r0]
	beq _021B95EE
	cmp r6, #2
	beq _021B95F6
	b _021B95FE
_021B95EE:
	ldr r0, _021B9628 ; =ovy260_21ba0e0
	add r4, #0x30
	str r0, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
_021B95F6:
	ldr r0, _021B962C ; =ovy260_21b9f34
	add r4, #0x30
	str r0, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
_021B95FE:
	ldr r0, _021B9618 ; =0x021BFF84
	ldr r2, _021B961C ; =0x021BFF88
	mov r1, #0
	bl sub_0203CB80
_021B9608:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021B960C: .word 0x00001498
_021B9610: .word 0x021BA1A9
_021B9614: .word 0x021BA199
_021B9618: .word 0x021BFF84
_021B961C: .word 0x021BFF88
_021B9620: .word 0x021BA1C9
_021B9624: .word 0x021BA1B9
_021B9628: .word ovy260_21ba0e0
_021B962C: .word ovy260_21b9f34
	thumb_func_end ovy260_21b9524

	thumb_func_start ovy260_21b9630
ovy260_21b9630: ; 0x021B9630
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r0, #0
	cmp r1, #0
	beq _021B9642
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	str r0, [r1]
_021B9642:
	bl sub_02042540
	add r5, r0, #0
	mov r0, #0x3f
	ldr r1, [r5, #0xc]
	lsl r0, r0, #4
	sub r0, r1, r0
	cmp r0, #1
	bhi _021B965C
	mov r0, #0x59
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
_021B965C:
	bl sub_020120C8
	cmp r0, #1
	bne _021B967A
	ldr r0, [r5, #4]
	cmp r0, #6
	beq _021B966E
	cmp r0, #3
	bne _021B9698
_021B966E:
	add r0, r4, #0
	bl ovy260_21b9d90
	add sp, #0x10
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_021B967A:
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021B9698
	bl sub_020120C8
	cmp r0, #2
	bne _021B9698
	add r0, r4, #0
	bl ovy260_21b9d90
	add sp, #0x10
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_021B9698:
	mov r1, #0x59
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	cmp r0, #0
	beq _021B96D0
	add r0, r1, #0
	add r0, #0x4c
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021B96D0
	add r0, r1, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021B96D0
	add r0, r1, #0
	sub r0, #0x38
	ldr r0, [r4, r0]
	cmp r0, #7
	bls _021B96D0
	cmp r0, #0xa
	bhs _021B96D0
	add r0, r1, #0
	mov r2, #0
	add r0, #8
	str r2, [r4, r0]
	mov r0, #6
	sub r1, #0x38
	str r0, [r4, r1]
_021B96D0:
	mov r6, #0x4b
	lsl r6, r6, #2
	ldr r0, [r4, r6]
	cmp r0, #0x19
	bhi _021B97B4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021B96E6: ; jump table
	.short _021B971A - _021B96E6 - 2 ; case 0
	.short _021B973A - _021B96E6 - 2 ; case 1
	.short _021B9768 - _021B96E6 - 2 ; case 2
	.short _021B9790 - _021B96E6 - 2 ; case 3
	.short _021B97BA - _021B96E6 - 2 ; case 4
	.short _021B97EE - _021B96E6 - 2 ; case 5
	.short _021B9816 - _021B96E6 - 2 ; case 6
	.short _021B9870 - _021B96E6 - 2 ; case 7
	.short _021B98E6 - _021B96E6 - 2 ; case 8
	.short _021B9916 - _021B96E6 - 2 ; case 9
	.short _021B9932 - _021B96E6 - 2 ; case 10
	.short _021B99BE - _021B96E6 - 2 ; case 11
	.short _021B9A02 - _021B96E6 - 2 ; case 12
	.short _021B9A66 - _021B96E6 - 2 ; case 13
	.short _021B9A84 - _021B96E6 - 2 ; case 14
	.short _021B9AA2 - _021B96E6 - 2 ; case 15
	.short _021B9B34 - _021B96E6 - 2 ; case 16
	.short _021B9B90 - _021B96E6 - 2 ; case 17
	.short _021B9BA0 - _021B96E6 - 2 ; case 18
	.short _021B9BBE - _021B96E6 - 2 ; case 19
	.short _021B9C14 - _021B96E6 - 2 ; case 20
	.short _021B9C5E - _021B96E6 - 2 ; case 21
	.short _021B9CC4 - _021B96E6 - 2 ; case 22
	.short _021B9CD6 - _021B96E6 - 2 ; case 23
	.short _021B9CE6 - _021B96E6 - 2 ; case 24
	.short _021B9D02 - _021B96E6 - 2 ; case 25
_021B971A:
	add r0, r6, #0
	add r0, #0x38
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021B972A
_021B9724:
	mov r0, #4
_021B9726:
	str r0, [r4, r6]
	b _021B9D08
_021B972A:
	bl sub_02040440
	mov r1, #4
	mov r2, #0x24
	bl sub_02040624
	mov r0, #1
	b _021B9726
_021B973A:
	add r0, r6, #0
	add r0, #0x38
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021B9746
	b _021B9724
_021B9746:
	bl sub_02040440
	mov r1, #4
	mov r2, #0x24
	bl sub_02040664
	cmp r0, #0
	bne _021B975E
	add r6, #0x38
	ldr r0, [r4, r6]
	cmp r0, #0
	beq _021B97B4
_021B975E:
	mov r1, #2
_021B9760:
	mov r0, #0x4b
	lsl r0, r0, #2
_021B9764:
	str r1, [r4, r0]
	b _021B9D08
_021B9768:
	add r0, r6, #0
	add r0, #0x38
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021B9774
	b _021B9724
_021B9774:
	add r1, r6, #0
	add r1, #0x60
	add r0, r4, #0
	add r1, r4, r1
	bl ovy260_21bb2dc
	cmp r0, #0
	bne _021B978C
	add r6, #0x38
	ldr r0, [r4, r6]
	cmp r0, #0
	beq _021B97B4
_021B978C:
	mov r1, #3
	b _021B9760
_021B9790:
	add r0, r6, #0
	add r0, #0x38
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021B979C
	b _021B9724
_021B979C:
	add r1, r6, #0
	add r1, #0x64
	add r0, r4, #0
	add r1, r4, r1
	bl ovy260_21bb2f4
	cmp r0, #0
	bne _021B97B6
	add r6, #0x38
	ldr r0, [r4, r6]
	cmp r0, #0
	bne _021B97B6
_021B97B4:
	b _021B9D08
_021B97B6:
	mov r1, #4
	b _021B9760
_021B97BA:
	add r0, r6, #0
	mov r1, #0
	add r0, #8
	str r1, [r4, r0]
	add r0, r6, #0
	mov r2, #1
	add r0, #0x48
	str r2, [r4, r0]
	ldr r0, _021B9AD0 ; =0x00000B5F
	bl ovy260_21bd43c
	add r1, r0, #0
	beq _021B97EA
	add r0, r4, #0
	ldr r2, _021B9AD4 ; =0x00000791
	add r0, #0x18
	bl ovy260_21bbe4c
	add r0, r4, #0
	bl ovy260_21b9d90
	add sp, #0x10
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_021B97EA:
	mov r0, #5
	b _021B9726
_021B97EE:
	ldr r0, _021B9AD8 ; =0x00001468
	ldr r0, [r4, r0]
	add r0, r0, #4
	bl sub_021BD85C
	add r1, r0, #0
	beq _021B9812
	add r0, r4, #0
	ldr r2, _021B9ADC ; =0x000007A1
	add r0, #0x18
	bl ovy260_21bbe4c
	add r0, r4, #0
	bl ovy260_21b9d90
	add sp, #0x10
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_021B9812:
	mov r0, #6
	b _021B9726
_021B9816:
	bl sub_02042BC4
	cmp r0, #0
	bne _021B9828
	add r0, r6, #0
	add r0, #0x38
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021B986E
_021B9828:
	mov r5, #0x4d
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	mov r1, #0x64
	add r0, r0, #1
	str r0, [r4, r5]
	ldr r0, _021B9AE0 ; =0x021B9D2D
	add r2, r4, #0
	mov r6, #0x64
	bl ovy260_21bd57c
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #1
	add r0, #0x34
	str r2, [r4, r0]
	cmp r1, #0
	beq _021B9862
	add r0, r4, #0
	ldr r2, _021B9AE4 ; =0x000007B3
	add r0, #0x18
	bl ovy260_21bbe4c
	add r0, r4, #0
	bl ovy260_21b9d90
	add sp, #0x10
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_021B9862:
	mov r0, #0
	add r5, #0x70
	str r0, [r4, r5]
	mov r0, #7
	add r6, #0xc8
	b _021B9726
_021B986E:
	b _021B988C
_021B9870:
	add r0, r6, #0
	add r0, #8
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021B9890
	ldr r0, _021B9AD8 ; =0x00001468
	ldr r5, [r4, r0]
	add r5, #0xc
	bl sub_021BD6C0
	add r1, r5, #0
	mov r2, #0x28
	blx MI_CpuCopy8
_021B988C:
	mov r0, #8
	b _021B9726
_021B9890:
	add r1, r6, #0
	add r1, #0x78
	add r0, r6, #0
	ldr r1, [r4, r1]
	add r0, #0x78
	add r2, r1, #1
	add r1, r6, #0
	ldr r0, [r4, r0]
	add r1, #0x78
	str r2, [r4, r1]
	mov r1, #0xe1
	lsl r1, r1, #4
	cmp r0, r1
	bls _021B98C4
	add r0, r4, #0
	ldr r2, _021B9AE8 ; =0x000007CF
	add r0, #0x18
	mov r1, #1
	bl ovy260_21bbe30
	add r0, r4, #0
	bl ovy260_21b9d90
	add sp, #0x10
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_021B98C4:
	bl ovy260_21bd554
	add r6, #0x34
	ldr r1, [r4, r6]
	cmp r1, #0
	beq _021B9976
	add r0, r4, #0
	ldr r2, _021B9AEC ; =0x000007D7
	add r0, #0x18
	bl ovy260_21bbe4c
	add r0, r4, #0
	bl ovy260_21b9d90
	add sp, #0x10
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_021B98E6:
	add r0, r6, #0
	add r0, #0x38
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021B98F4
	mov r0, #0xb
	b _021B9726
_021B98F4:
	ldr r0, _021B9AD8 ; =0x00001468
	ldr r5, [r4, r0]
	add r5, #0x34
	bl sub_021BD6D0
	add r1, r5, #0
	mov r2, #0x28
	blx MI_CpuCopy8
	bl sub_02040440
	mov r1, #1
	mov r2, #0x24
	bl sub_02040624
	mov r0, #9
	b _021B9726
_021B9916:
	bl sub_02040440
	mov r1, #1
	mov r2, #0x24
	bl sub_02040664
	cmp r0, #0
	bne _021B992E
	add r6, #0x38
	ldr r0, [r4, r6]
	cmp r0, #0
	beq _021B9976
_021B992E:
	mov r1, #0xa
	b _021B9760
_021B9932:
	bl sub_02042BC4
	cmp r0, #0
	bne _021B9944
	add r0, r6, #0
	add r0, #0x38
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _021B996A
_021B9944:
	bl sub_02040440
	ldr r3, _021B9AD8 ; =0x00001468
	mov r1, #9
	ldr r3, [r4, r3]
	lsl r1, r1, #0xa
	mov r2, #0x68
	add r3, r3, #4
	mov r5, #0x68
	bl sub_02042BE8
	cmp r0, #0
	bne _021B9966
	add r5, #0xfc
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021B9976
_021B9966:
	mov r1, #0xb
	b _021B9760
_021B996A:
	add r6, #0xc
	ldr r0, [r4, r6]
	cmp r0, #0
	bne _021B9978
	cmp r1, #0
	bne _021B9978
_021B9976:
	b _021B9D08
_021B9978:
	mov r6, #0x4e
	ldr r5, _021B9AD8 ; =0x00001468
	mov r0, #0
	lsl r6, r6, #2
	str r0, [r4, r6]
	ldr r0, [r4, r5]
	add r0, #0x74
	bl ovy260_21bd698
	ldr r5, [r4, r5]
	add r7, r0, #0
	add r5, #0xc
	bl sub_021BD6C0
	add r1, r5, #0
	mov r2, #0x28
	blx MI_CpuCopy8
	cmp r7, #0
	beq _021B99B8
	add r0, r4, #0
	ldr r2, _021B9AF0 ; =0x0000080D
	add r0, #0x18
	add r1, r7, #0
	bl ovy260_21bbe4c
	add r0, r4, #0
	bl ovy260_21b9d90
	add sp, #0x10
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_021B99B8:
	mov r0, #0xb
	sub r6, #0xc
	b _021B9726
_021B99BE:
	add r0, r6, #0
	add r0, #8
	ldr r0, [r4, r0]
	mov r2, #0x64
	add r1, r0, #1
	add r0, r6, #0
	add r0, #8
	str r1, [r4, r0]
	add r0, r6, #0
	add r0, #0x80
	ldr r0, [r4, r0]
	ldr r1, _021B9AF4 ; =ovy260_21b9d44
	add r3, r4, #0
	bl ovy260_21bd5d4
	add r1, r0, #0
	beq _021B99F6
	add r0, r4, #0
	ldr r2, _021B9AF8 ; =0x0000081D
	add r0, #0x18
	bl ovy260_21bbe4c
	add r0, r4, #0
	bl ovy260_21b9d90
	add sp, #0x10
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_021B99F6:
	add r0, r6, #0
	mov r1, #0
	add r0, #0x78
	str r1, [r4, r0]
	mov r0, #0xc
	b _021B9726
_021B9A02:
	add r0, r6, #0
	add r0, #8
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021B9A10
	mov r0, #0xd
	b _021B9726
_021B9A10:
	add r1, r6, #0
	add r1, #0x78
	add r0, r6, #0
	ldr r1, [r4, r1]
	add r0, #0x78
	add r2, r1, #1
	add r1, r6, #0
	ldr r0, [r4, r0]
	add r1, #0x78
	str r2, [r4, r1]
	mov r1, #0xe1
	lsl r1, r1, #4
	cmp r0, r1
	bls _021B9A44
	add r0, r4, #0
	ldr r2, _021B9AFC ; =0x00000832
	add r0, #0x18
	mov r1, #1
	bl ovy260_21bbe30
	add r0, r4, #0
	bl ovy260_21b9d90
	add sp, #0x10
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_021B9A44:
	bl ovy260_21bd554
	add r6, #0x34
	ldr r1, [r4, r6]
	cmp r1, #0
	beq _021B9A9C
	add r0, r4, #0
	ldr r2, _021B9B00 ; =0x0000083A
	add r0, #0x18
	bl ovy260_21bbe4c
	add r0, r4, #0
	bl ovy260_21b9d90
	add sp, #0x10
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_021B9A66:
	add r0, r6, #0
	add r0, #0x38
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021B9A74
	mov r0, #0x13
	b _021B9726
_021B9A74:
	bl sub_02040440
	mov r1, #2
	mov r2, #0x24
	bl sub_02040624
	mov r0, #0xe
	b _021B9726
_021B9A84:
	bl sub_02040440
	mov r1, #2
	mov r2, #0x24
	bl sub_02040664
	cmp r0, #0
	bne _021B9A9E
	add r6, #0x38
	ldr r0, [r4, r6]
	cmp r0, #0
	bne _021B9A9E
_021B9A9C:
	b _021B9D08
_021B9A9E:
	mov r1, #0xf
	b _021B9760
_021B9AA2:
	bl sub_02042BC4
	cmp r0, #0
	beq _021B9B04
	bl sub_02040440
	ldr r3, _021B9AD8 ; =0x00001468
	mov r1, #9
	ldr r3, [r4, r3]
	lsl r1, r1, #0xa
	mov r2, #0x68
	add r3, r3, #4
	mov r5, #0x68
	bl sub_02042BE8
	cmp r0, #0
	bne _021B9ACC
	add r5, #0xfc
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021B9BB8
_021B9ACC:
	mov r1, #0x10
	b _021B9760
	.align 2, 0
_021B9AD0: .word 0x00000B5F
_021B9AD4: .word 0x00000791
_021B9AD8: .word 0x00001468
_021B9ADC: .word 0x000007A1
_021B9AE0: .word 0x021B9D2D
_021B9AE4: .word 0x000007B3
_021B9AE8: .word 0x000007CF
_021B9AEC: .word 0x000007D7
_021B9AF0: .word 0x0000080D
_021B9AF4: .word ovy260_21b9d44
_021B9AF8: .word 0x0000081D
_021B9AFC: .word 0x00000832
_021B9B00: .word 0x0000083A
_021B9B04:
	add r0, r6, #0
	add r0, #0xc
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021B9B16
	add r6, #0x38
	ldr r0, [r4, r6]
	cmp r0, #0
	beq _021B9BB8
_021B9B16:
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	bne _021B9B26
	mov r1, #1
	add r0, #8
	str r1, [r4, r0]
_021B9B26:
	mov r0, #0x4e
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r1, #0x10
_021B9B30:
	sub r0, #0xc
	b _021B9764
_021B9B34:
	bl sub_02042BC4
	cmp r0, #0
	bne _021B9B62
	bl sub_02040440
	ldr r3, _021B9D10 ; =0x00001468
	mov r1, #9
	ldr r3, [r4, r3]
	lsl r1, r1, #0xa
	mov r2, #0x68
	add r3, r3, #4
	mov r5, #0x68
	bl sub_02042BE8
	cmp r0, #0
	bne _021B9B5E
	add r5, #0xfc
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021B9BB8
_021B9B5E:
	mov r1, #0x11
	b _021B9760
_021B9B62:
	add r0, r6, #0
	add r0, #0xc
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021B9B74
	add r6, #0x38
	ldr r0, [r4, r6]
	cmp r0, #0
	beq _021B9BB8
_021B9B74:
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	bne _021B9B84
	mov r1, #1
	add r0, #8
	str r1, [r4, r0]
_021B9B84:
	mov r0, #0x4e
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r1, #0x11
	b _021B9B30
_021B9B90:
	bl sub_02040440
	mov r1, #3
	mov r2, #0x24
	bl sub_02040624
	mov r0, #0x12
	b _021B9726
_021B9BA0:
	bl sub_02040440
	mov r1, #3
	mov r2, #0x24
	bl sub_02040664
	cmp r0, #0
	bne _021B9BBA
	add r6, #0x38
	ldr r0, [r4, r6]
	cmp r0, #0
	bne _021B9BBA
_021B9BB8:
	b _021B9D08
_021B9BBA:
	mov r1, #0x13
	b _021B9760
_021B9BBE:
	ldr r0, _021B9D10 ; =0x00001468
	add r3, r6, #0
	ldr r1, [r4, r0]
	add r0, r6, #0
	add r0, #0x30
	ldr r0, [r4, r0]
	add r2, r6, #0
	str r0, [sp]
	add r0, r6, #0
	add r0, #0x38
	ldr r0, [r4, r0]
	add r2, #0x58
	str r0, [sp, #4]
	add r0, r6, #0
	add r0, #0x84
	ldr r0, [r4, r0]
	add r3, #0x80
	str r0, [sp, #8]
	add r0, r6, #0
	add r0, #0x40
	ldr r0, [r4, r0]
	add r2, r4, r2
	str r0, [sp, #0xc]
	add r0, r1, #4
	ldr r3, [r4, r3]
	add r1, #0x6c
	bl ovy260_21b9dcc
	add r1, r0, #0
	beq _021B9C10
	add r0, r4, #0
	ldr r2, _021B9D14 ; =0x000008AD
	add r0, #0x18
	bl ovy260_21bbe4c
	add r0, r4, #0
	bl ovy260_21b9d90
	add sp, #0x10
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_021B9C10:
	mov r0, #0x14
	b _021B9726
_021B9C14:
	add r0, r6, #0
	add r0, #8
	ldr r0, [r4, r0]
	ldr r2, _021B9D18 ; =0x021B9D79
	add r1, r0, #1
	add r0, r6, #0
	add r0, #8
	str r1, [r4, r0]
	add r1, r6, #0
	ldr r0, _021B9D10 ; =0x00001468
	str r4, [sp]
	ldr r0, [r4, r0]
	add r1, #0x80
	ldr r0, [r0, #8]
	ldr r1, [r4, r1]
	mov r3, #0x64
	bl ovy260_21bd634
	add r1, r0, #0
	beq _021B9C52
	add r0, r4, #0
	ldr r2, _021B9D1C ; =0x000008BC
	add r0, #0x18
	bl ovy260_21bbe4c
	add r0, r4, #0
	bl ovy260_21b9d90
	add sp, #0x10
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_021B9C52:
	add r0, r6, #0
	mov r1, #0
	add r0, #0x78
	str r1, [r4, r0]
	mov r0, #0x15
	b _021B9726
_021B9C5E:
	add r0, r6, #0
	add r0, #8
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021B9C6C
	mov r0, #0x16
	b _021B9726
_021B9C6C:
	add r1, r6, #0
	add r1, #0x78
	add r0, r6, #0
	ldr r1, [r4, r1]
	add r0, #0x78
	add r2, r1, #1
	add r1, r6, #0
	ldr r0, [r4, r0]
	add r1, #0x78
	str r2, [r4, r1]
	mov r1, #0xe1
	lsl r1, r1, #4
	cmp r0, r1
	bls _021B9CA2
	add r0, r4, #0
	mov r2, #0x8d
	add r0, #0x18
	mov r1, #1
	lsl r2, r2, #4
	bl ovy260_21bbe30
	add r0, r4, #0
	bl ovy260_21b9d90
	add sp, #0x10
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_021B9CA2:
	bl ovy260_21bd554
	add r6, #0x34
	ldr r1, [r4, r6]
	cmp r1, #0
	beq _021B9D08
	add r0, r4, #0
	ldr r2, _021B9D20 ; =0x000008D8
	add r0, #0x18
	bl ovy260_21bbe4c
	add r0, r4, #0
	bl ovy260_21b9d90
	add sp, #0x10
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_021B9CC4:
	add r0, r6, #0
	mov r1, #1
	add r0, #0x44
	str r1, [r4, r0]
	add r0, r4, #0
	bl ovy260_21b9d90
	mov r0, #0x17
	b _021B9726
_021B9CD6:
	bl sub_02040440
	mov r1, #5
	mov r2, #0x24
	bl sub_02040624
	mov r0, #0x18
	b _021B9726
_021B9CE6:
	bl sub_02040440
	mov r1, #5
	mov r2, #0x24
	bl sub_02040664
	cmp r0, #0
	bne _021B9CFE
	add r6, #0x38
	ldr r0, [r4, r6]
	cmp r0, #0
	beq _021B9D08
_021B9CFE:
	mov r1, #0x19
	b _021B9760
_021B9D02:
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021B9D08:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021B9D10: .word 0x00001468
_021B9D14: .word 0x000008AD
_021B9D18: .word 0x021B9D79
_021B9D1C: .word 0x000008BC
_021B9D20: .word 0x000008D8
	thumb_func_end ovy260_21b9630

	thumb_func_start sub_021B9D24
sub_021B9D24: ; 0x021B9D24
	mov r1, #0x55
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end sub_021B9D24
_021B9D2C:
	.byte 0x00, 0x28, 0x02, 0xD0
	.byte 0x16, 0x22, 0x12, 0x01, 0x88, 0x50, 0x4D, 0x20, 0x80, 0x00, 0x0A, 0x58, 0x52, 0x1E, 0x0A, 0x50
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy260_21b9d44
ovy260_21b9d44: ; 0x021B9D44
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, _021B9D74 ; =0x00001468
	cmp r0, #0
	ldr r5, [r4, r1]
	bne _021B9D60
	bl sub_021BD6D0
	add r1, r5, #4
	add r1, #0x30
	mov r2, #0x28
	blx MI_CpuCopy8
	b _021B9D66
_021B9D60:
	mov r1, #0x16
	lsl r1, r1, #4
	str r0, [r4, r1]
_021B9D66:
	mov r0, #0x4d
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
	pop {r3, r4, r5, pc}
	nop
_021B9D74: .word 0x00001468
	thumb_func_end ovy260_21b9d44
_021B9D78:
	.byte 0x00, 0x28, 0x02, 0xD0, 0x16, 0x22, 0x12, 0x01
	.byte 0x88, 0x50, 0x4D, 0x20, 0x80, 0x00, 0x0A, 0x58, 0x52, 0x1E, 0x0A, 0x50, 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy260_21b9d90
ovy260_21b9d90: ; 0x021B9D90
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #1
	bne _021B9DC6
	sub r0, #0x48
	ldr r0, [r4, r0]
	cmp r0, #0x13
	bls _021B9DB0
	ldr r0, _021B9DC8 ; =0x00001468
	ldr r0, [r4, r0]
	ldr r0, [r0, #8]
	bl ovy260_21bd838
_021B9DB0:
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #4
	blo _021B9DBE
	bl ovy260_21bd4f4
_021B9DBE:
	mov r0, #0x5d
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
_021B9DC6:
	pop {r4, pc}
	.align 2, 0
_021B9DC8: .word 0x00001468
	thumb_func_end ovy260_21b9d90

	thumb_func_start ovy260_21b9dcc
ovy260_21b9dcc: ; 0x021B9DCC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r0, #0
	str r1, [sp, #0xc]
	add r7, r2, #0
	str r3, [sp, #0x10]
	mov r0, #1
	mov r1, #2
	mov r2, #0
	add r3, r4, #4
	ldr r6, [sp, #0x34]
	bl ovy260_21bd6e0
	cmp r0, #0
	bne _021B9E08
	ldr r0, [r4, #4]
	bl ovy260_21bd718
	cmp r0, #0
	bne _021B9E08
	ldr r0, [r4, #4]
	bl ovy260_21bd738
	cmp r0, #0
	bne _021B9E08
	ldr r0, [r4, #4]
	bl ovy260_21bd778
	cmp r0, #0
	beq _021B9E0A
_021B9E08:
	b _021B9F28
_021B9E0A:
	cmp r6, #0
	bne _021B9E14
	ldr r0, [sp, #0x38]
	cmp r0, #0
	bne _021B9E18
_021B9E14:
	mov r5, #5
	b _021B9E4A
_021B9E18:
	ldr r3, [r7, #4]
	cmp r3, #4
	bhi _021B9E40
	add r0, r3, r3
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021B9E2A: ; jump table
	.short _021B9E38 - _021B9E2A - 2 ; case 0
	.short _021B9E34 - _021B9E2A - 2 ; case 1
	.short _021B9E3C - _021B9E2A - 2 ; case 2
	.short _021B9E38 - _021B9E2A - 2 ; case 3
	.short _021B9E34 - _021B9E2A - 2 ; case 4
_021B9E34:
	mov r5, #0
	b _021B9E4A
_021B9E38:
	mov r5, #1
	b _021B9E4A
_021B9E3C:
	mov r5, #2
	b _021B9E4A
_021B9E40:
	ldr r0, _021B9F2C ; =0x021BFF84
	ldr r2, _021B9F30 ; =0x021BFFAC
	mov r1, #0
	bl sub_0203CB94
_021B9E4A:
	str r5, [sp]
	ldr r0, [r4]
	add r2, r4, #0
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x58
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	mov r1, #0
	add r2, #0x30
	mov r3, #0
	bl ovy260_21bd798
	cmp r0, #0
	bne _021B9F28
	ldr r5, [sp, #0x30]
	add r0, r4, #0
	add r1, r7, #0
	mov r2, #1
	add r3, r6, #0
	blx r5
	cmp r0, #0
	bne _021B9F28
	ldr r0, [r4, #4]
	bl ovy260_21bd778
	cmp r0, #0
	bne _021B9F28
	ldr r0, [sp, #0x3c]
	cmp r0, #1
	bne _021B9F04
	ldr r0, [sp, #0x38]
	cmp r0, #0
	bne _021B9E94
	mov r0, #5
_021B9E90:
	str r0, [sp, #0x14]
	b _021B9ECE
_021B9E94:
	cmp r6, #0
	beq _021B9E9C
	mov r0, #3
	b _021B9E90
_021B9E9C:
	ldr r3, [r7, #4]
	cmp r3, #4
	bhi _021B9EC4
	add r0, r3, r3
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021B9EAE: ; jump table
	.short _021B9EBC - _021B9EAE - 2 ; case 0
	.short _021B9EB8 - _021B9EAE - 2 ; case 1
	.short _021B9EC0 - _021B9EAE - 2 ; case 2
	.short _021B9EBC - _021B9EAE - 2 ; case 3
	.short _021B9EB8 - _021B9EAE - 2 ; case 4
_021B9EB8:
	mov r0, #1
	b _021B9E90
_021B9EBC:
	mov r0, #0
	b _021B9E90
_021B9EC0:
	mov r0, #2
	b _021B9E90
_021B9EC4:
	ldr r0, _021B9F2C ; =0x021BFF84
	ldr r2, _021B9F30 ; =0x021BFFAC
	mov r1, #0
	bl sub_0203CB94
_021B9ECE:
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0xc]
	str r0, [sp]
	ldr r0, [sp, #0xc]
	mov r1, #1
	ldr r0, [r0]
	add r2, #0x30
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	mov r3, #0
	add r0, #0x58
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	str r2, [sp, #0xc]
	mov r5, #0
	bl ovy260_21bd798
	cmp r0, #0
	bne _021B9F28
	add r2, r5, #0
	ldr r5, [sp, #0x30]
	add r0, r4, #0
	add r1, r7, #0
	add r3, r6, #0
	blx r5
	cmp r0, #0
	bne _021B9F28
_021B9F04:
	ldr r0, [r4, #4]
	bl ovy260_21bd758
	cmp r0, #0
	bne _021B9F28
	cmp r6, #0
	ldr r0, [r4, #4]
	beq _021B9F20
	ldr r1, [sp, #0x10]
	mov r2, #1
	bl ovy260_21bd7cc
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021B9F20:
	ldr r1, [sp, #0x10]
	mov r2, #0
	bl ovy260_21bd7cc
_021B9F28:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021B9F2C: .word 0x021BFF84
_021B9F30: .word 0x021BFFAC
	thumb_func_end ovy260_21b9dcc

	thumb_func_start ovy260_21b9f34
ovy260_21b9f34: ; 0x021B9F34
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r0, r1, #0
	mov ip, r2
	ldr r2, [r0, #8]
	mov r3, #0
	mov r1, #0
	mov r7, #1
	cmp r2, #0
	bne _021B9F50
	ldr r2, [r0, #0xc]
	cmp r2, #0
	bne _021B9F50
	add r7, r3, #0
_021B9F50:
	ldr r2, [r0, #4]
	cmp r2, #6
	bhi _021B9F86
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021B9F62: ; jump table
	.short _021B9F70 - _021B9F62 - 2 ; case 0
	.short _021B9F78 - _021B9F62 - 2 ; case 1
	.short _021B9F7E - _021B9F62 - 2 ; case 2
	.short _021B9F70 - _021B9F62 - 2 ; case 3
	.short _021B9F78 - _021B9F62 - 2 ; case 4
	.short _021B9F86 - _021B9F62 - 2 ; case 5
	.short _021B9F86 - _021B9F62 - 2 ; case 6
_021B9F70:
	mov r6, #0
	mov r5, #1
_021B9F74:
	mov r3, #1
	b _021B9F8A
_021B9F78:
	mov r6, #1
	mov r5, #0
	b _021B9F74
_021B9F7E:
	mov r6, #0
	mov r5, #0
	mov r1, #1
	b _021B9F8A
_021B9F86:
	mov r6, #0
	mov r5, #0
_021B9F8A:
	mov r2, ip
	cmp r2, #0
	bne _021B9F9A
	cmp r3, #0
	beq _021B9F9A
	mov r2, #1
	eor r6, r2
	eor r5, r2
_021B9F9A:
	ldr r0, [r0]
	cmp r0, #4
	bls _021B9FA2
	b _021BA0AA
_021B9FA2:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021B9FAE: ; jump table
	.short _021B9FB8 - _021B9FAE - 2 ; case 0
	.short _021B9FEA - _021B9FAE - 2 ; case 1
	.short _021BA01A - _021B9FAE - 2 ; case 2
	.short _021BA04A - _021B9FAE - 2 ; case 3
	.short _021BA07A - _021B9FAE - 2 ; case 4
_021B9FB8:
	cmp r1, #0
	bne _021B9FCC
	ldr r0, [r4, #4]
	mov r1, #0xf
	mov r2, #1
	bl ovy260_21bd814
	cmp r0, #0
	beq _021B9FCC
	b _021BA0D4
_021B9FCC:
	ldr r0, [r4, #4]
	mov r1, #5
	add r2, r6, #0
	bl ovy260_21bd7f0
	cmp r0, #0
	bne _021BA0D4
	ldr r0, [r4, #4]
	mov r1, #6
	add r2, r5, #0
	bl ovy260_21bd7f0
	cmp r0, #0
	beq _021BA0B4
	pop {r3, r4, r5, r6, r7, pc}
_021B9FEA:
	cmp r1, #0
	bne _021B9FFC
	ldr r0, [r4, #4]
	mov r1, #0x10
	mov r2, #1
	bl ovy260_21bd814
	cmp r0, #0
	bne _021BA0D4
_021B9FFC:
	ldr r0, [r4, #4]
	mov r1, #8
	add r2, r6, #0
	bl ovy260_21bd7f0
	cmp r0, #0
	bne _021BA0D4
	ldr r0, [r4, #4]
	mov r1, #7
	add r2, r5, #0
	bl ovy260_21bd7f0
	cmp r0, #0
	beq _021BA0B4
	pop {r3, r4, r5, r6, r7, pc}
_021BA01A:
	cmp r1, #0
	bne _021BA02C
	ldr r0, [r4, #4]
	mov r1, #0x12
	mov r2, #1
	bl ovy260_21bd814
	cmp r0, #0
	bne _021BA0D4
_021BA02C:
	ldr r0, [r4, #4]
	mov r1, #0xb
	add r2, r6, #0
	bl ovy260_21bd7f0
	cmp r0, #0
	bne _021BA0D4
	ldr r0, [r4, #4]
	mov r1, #0xc
	add r2, r5, #0
	bl ovy260_21bd7f0
	cmp r0, #0
	beq _021BA0B4
	pop {r3, r4, r5, r6, r7, pc}
_021BA04A:
	cmp r1, #0
	bne _021BA05C
	ldr r0, [r4, #4]
	mov r1, #0x11
	mov r2, #1
	bl ovy260_21bd814
	cmp r0, #0
	bne _021BA0D4
_021BA05C:
	ldr r0, [r4, #4]
	mov r1, #9
	add r2, r6, #0
	bl ovy260_21bd7f0
	cmp r0, #0
	bne _021BA0D4
	ldr r0, [r4, #4]
	mov r1, #0xa
	add r2, r5, #0
	bl ovy260_21bd7f0
	cmp r0, #0
	beq _021BA0B4
	pop {r3, r4, r5, r6, r7, pc}
_021BA07A:
	cmp r1, #0
	bne _021BA08C
	ldr r0, [r4, #4]
	mov r1, #0x13
	mov r2, #1
	bl ovy260_21bd814
	cmp r0, #0
	bne _021BA0D4
_021BA08C:
	ldr r0, [r4, #4]
	mov r1, #0xd
	add r2, r6, #0
	bl ovy260_21bd7f0
	cmp r0, #0
	bne _021BA0D4
	ldr r0, [r4, #4]
	mov r1, #0xe
	add r2, r5, #0
	bl ovy260_21bd7f0
	cmp r0, #0
	beq _021BA0B4
	pop {r3, r4, r5, r6, r7, pc}
_021BA0AA:
	ldr r0, _021BA0D8 ; =0x021BFF84
	ldr r2, _021BA0DC ; =0x021BFF88
	mov r1, #0
	bl sub_0203CB80
_021BA0B4:
	mov r2, #1
	cmp r7, #0
	bne _021BA0BC
	mov r2, #0
_021BA0BC:
	ldr r0, [r4, #4]
	mov r1, #0x14
	bl ovy260_21bd7f0
	cmp r0, #0
	bne _021BA0D4
	mov r2, #0x1b
	ldr r0, [r4, #4]
	mov r1, #0x1b
	sub r2, #0x1c
	bl ovy260_21bd7f0
_021BA0D4:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021BA0D8: .word 0x021BFF84
_021BA0DC: .word 0x021BFF88
	thumb_func_end ovy260_21b9f34

	thumb_func_start ovy260_21ba0e0
ovy260_21ba0e0: ; 0x021BA0E0
	push {r3, r4, r5, r6, r7, lr}
	add r3, r1, #0
	mov ip, r2
	ldr r2, [r3, #8]
	add r4, r0, #0
	mov r0, #0
	mov r1, #0
	mov r7, #1
	cmp r2, #0
	bne _021BA0FC
	ldr r2, [r3, #0xc]
	cmp r2, #0
	bne _021BA0FC
	add r7, r0, #0
_021BA0FC:
	ldr r2, [r3, #4]
	cmp r2, #6
	bhi _021BA132
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021BA10E: ; jump table
	.short _021BA11C - _021BA10E - 2 ; case 0
	.short _021BA124 - _021BA10E - 2 ; case 1
	.short _021BA12A - _021BA10E - 2 ; case 2
	.short _021BA11C - _021BA10E - 2 ; case 3
	.short _021BA124 - _021BA10E - 2 ; case 4
	.short _021BA132 - _021BA10E - 2 ; case 5
	.short _021BA132 - _021BA10E - 2 ; case 6
_021BA11C:
	mov r6, #0
	mov r5, #1
_021BA120:
	mov r0, #1
	b _021BA136
_021BA124:
	mov r6, #1
	mov r5, #0
	b _021BA120
_021BA12A:
	mov r6, #0
	mov r5, #0
	mov r1, #1
	b _021BA136
_021BA132:
	mov r6, #0
	mov r5, #0
_021BA136:
	mov r2, ip
	cmp r2, #0
	bne _021BA146
	cmp r0, #0
	beq _021BA146
	mov r0, #1
	eor r6, r0
	eor r5, r0
_021BA146:
	cmp r1, #0
	bne _021BA158
	ldr r0, [r4, #4]
	mov r1, #0x15
	mov r2, #1
	bl ovy260_21bd814
	cmp r0, #0
	bne _021BA194
_021BA158:
	ldr r0, [r4, #4]
	mov r1, #0x16
	add r2, r6, #0
	bl ovy260_21bd7f0
	cmp r0, #0
	bne _021BA194
	ldr r0, [r4, #4]
	mov r1, #0x17
	add r2, r5, #0
	bl ovy260_21bd7f0
	cmp r0, #0
	bne _021BA194
	mov r2, #1
	cmp r7, #0
	bne _021BA17C
	mov r2, #0
_021BA17C:
	ldr r0, [r4, #4]
	mov r1, #0x18
	bl ovy260_21bd7f0
	cmp r0, #0
	bne _021BA194
	mov r2, #0x1c
	ldr r0, [r4, #4]
	mov r1, #0x1c
	sub r2, #0x1d
	bl ovy260_21bd7f0
_021BA194:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy260_21ba0e0
_021BA198:
	.byte 0x40, 0x68, 0x02, 0x4B, 0x1A, 0x21, 0x01, 0x22
	.byte 0x18, 0x47, 0xC0, 0x46, 0xF1, 0xD7, 0x1B, 0x02, 0x40, 0x68, 0x02, 0x4B, 0x19, 0x21, 0x01, 0x22
	.byte 0x18, 0x47, 0xC0, 0x46, 0xF1, 0xD7, 0x1B, 0x02, 0x1B, 0x22, 0x40, 0x68, 0x01, 0x4B, 0x1B, 0x21
	.byte 0x1C, 0x3A, 0x18, 0x47, 0xF1, 0xD7, 0x1B, 0x02, 0x1C, 0x22, 0x40, 0x68, 0x01, 0x4B, 0x1C, 0x21
	.byte 0x1D, 0x3A, 0x18, 0x47, 0xF1, 0xD7, 0x1B, 0x02

	thumb_func_start ovy260_21ba1d8
ovy260_21ba1d8: ; 0x021BA1D8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r3, #0
	bl sub_02040440
	ldr r1, [sp, #0x10]
	cmp r1, r0
	bne _021BA20C
	bl sub_02040440
	bl sub_02042A6C
	cmp r5, r0
	beq _021BA20C
	ldr r1, _021BA210 ; =0x00001468
	add r0, r6, #0
	ldr r1, [r4, r1]
	mov r2, #0x68
	add r1, #0x6c
	mov r5, #0x68
	blx MI_CpuCopy8
	mov r0, #1
	add r5, #0xd0
	str r0, [r4, r5]
_021BA20C:
	pop {r4, r5, r6, pc}
	nop
_021BA210: .word 0x00001468
	thumb_func_end ovy260_21ba1d8

	thumb_func_start ovy260_21ba214
ovy260_21ba214: ; 0x021BA214
	push {r3, r4, r5, r6, r7, lr}
	add r4, r3, #0
	add r5, r0, #0
	ldr r0, [r4, #8]
	add r1, r5, #0
	add r6, r2, #0
	bl sub_02017378
	add r7, r0, #0
	bl sub_02008B08
	add r2, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	blx MI_CpuCopy8
	bl sub_02040440
	ldr r1, [sp, #0x18]
	cmp r1, r0
	bne _021BA252
	bl sub_02040440
	bl sub_02042A6C
	cmp r5, r0
	beq _021BA252
	mov r0, #0x4f
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
_021BA252:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy260_21ba214

	thumb_func_start ovy260_21ba254
ovy260_21ba254: ; 0x021BA254
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02040440
	bl sub_02042A6C
	cmp r5, r0
	bne _021BA274
	ldr r0, _021BA27C ; =0x021BFF84
	ldr r2, _021BA280 ; =0x021BFF88
	mov r1, #0
	bl sub_0203CB80
	mov r0, #0
	pop {r3, r4, r5, pc}
_021BA274:
	mov r0, #0x87
	lsl r0, r0, #2
	add r0, r4, r0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021BA27C: .word 0x021BFF84
_021BA280: .word 0x021BFF88
	thumb_func_end ovy260_21ba254

	thumb_func_start ovy260_21ba284
ovy260_21ba284: ; 0x021BA284
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r3, #0
	bl sub_02040440
	ldr r1, [sp, #0x10]
	cmp r1, r0
	bne _021BA2A8
	bl sub_02040440
	bl sub_02042A6C
	cmp r5, r0
	beq _021BA2A8
	mov r0, #5
	mov r1, #1
	lsl r0, r0, #6
	str r1, [r4, r0]
_021BA2A8:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy260_21ba284

	thumb_func_start ovy260_21ba2ac
ovy260_21ba2ac: ; 0x021BA2AC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r3, #0
	bl sub_02040440
	ldr r1, [sp, #0x10]
	cmp r1, r0
	bne _021BA2D0
	bl sub_02040440
	bl sub_02042A6C
	cmp r5, r0
	beq _021BA2D0
	mov r0, #0x51
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
_021BA2D0:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy260_21ba2ac

	thumb_func_start ovy260_21ba2d4
ovy260_21ba2d4: ; 0x021BA2D4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r3, #0
	bl sub_02040440
	ldr r1, [sp, #0x10]
	cmp r1, r0
	bne _021BA2F8
	bl sub_02040440
	bl sub_02042A6C
	cmp r5, r0
	beq _021BA2F8
	mov r0, #0x52
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
_021BA2F8:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy260_21ba2d4

	thumb_func_start ovy260_21ba2fc
ovy260_21ba2fc: ; 0x021BA2FC
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r3, #0
	ldr r4, [r2]
	bl sub_02040440
	ldr r1, [sp, #0x10]
	cmp r1, r0
	bne _021BA326
	bl sub_02040440
	bl sub_02042A6C
	cmp r6, r0
	beq _021BA326
	mov r0, #0x55
	lsl r0, r0, #2
	str r4, [r5, r0]
	mov r1, #1
	sub r0, #8
	str r1, [r5, r0]
_021BA326:
	pop {r4, r5, r6, pc}
	thumb_func_end ovy260_21ba2fc

	thumb_func_start ovy260_21ba328
ovy260_21ba328: ; 0x021BA328
	push {r3, r4, r5, r6, r7, lr}
	add r4, r3, #0
	add r6, r0, #0
	ldr r0, [r4, #8]
	add r5, r2, #0
	bl sub_02017934
	bl sub_02010044
	str r0, [sp]
	bl sub_02040440
	ldr r1, [sp, #0x18]
	cmp r1, r0
	bne _021BA3AE
	bl sub_02040440
	bl sub_02042A6C
	cmp r6, r0
	beq _021BA3AE
	add r0, r5, #0
	mov r1, #0x1a
	mov r2, #1
	bl sub_020373EC
	ldr r0, _021BA3B0 ; =0x00001564
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021BA39A
	mov r3, #0x65
	add r3, #0xbf
	ldrh r3, [r4, r3]
	mov r0, #0
	mov r1, #2
	mov r2, #0x65
	bl sub_0204875C
	add r7, r0, #0
	mov r1, #0x19
	bl sub_0204898C
	add r6, r0, #0
	add r0, r7, #0
	bl sub_020487D4
	add r0, r6, #0
	bl sub_020486F0
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #4
	bl sub_020373EC
	add r0, r6, #0
	bl sub_02048564
_021BA39A:
	ldr r0, [sp]
	add r2, r5, #0
	ldr r1, [r4, #8]
	mov r3, #1
	mov r5, #1
	bl sub_02010078
	mov r0, #0x15
	lsl r0, r0, #4
	str r5, [r4, r0]
_021BA3AE:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BA3B0: .word 0x00001564
	thumb_func_end ovy260_21ba328

	thumb_func_start ovy260_21ba3b4
ovy260_21ba3b4: ; 0x021BA3B4
	push {r3, r4, r5, lr}
	mov r5, #0x4b
	add r4, r0, #0
	mov r0, #0
	lsl r5, r5, #2
	str r0, [r4, r5]
	add r0, r5, #0
	add r0, #0x50
	str r3, [r4, r0]
	add r0, r5, #0
	add r0, #0x88
	str r1, [r4, r0]
	cmp r2, #4
	bhi _021BA464
	add r0, r2, r2
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021BA3DC: ; jump table
	.short _021BA3E6 - _021BA3DC - 2 ; case 0
	.short _021BA402 - _021BA3DC - 2 ; case 1
	.short _021BA41E - _021BA3DC - 2 ; case 2
	.short _021BA436 - _021BA3DC - 2 ; case 3
	.short _021BA44E - _021BA3DC - 2 ; case 4
_021BA3E6:
	bl sub_021BC058
	add r1, r5, #0
	add r1, #0x6c
	str r0, [r4, r1]
	bl sub_021BC060
	add r1, r5, #0
	add r1, #0x70
	str r0, [r4, r1]
	ldr r0, _021BA468 ; =ovy260_21ba7d4
	add r5, #0x54
	str r0, [r4, r5]
	pop {r3, r4, r5, pc}
_021BA402:
	bl sub_021BC064
	add r1, r5, #0
	add r1, #0x6c
	str r0, [r4, r1]
	bl sub_021BC06C
	add r1, r5, #0
	add r1, #0x70
	str r0, [r4, r1]
	ldr r0, _021BA46C ; =ovy260_21baa14
	add r5, #0x54
	str r0, [r4, r5]
	pop {r3, r4, r5, pc}
_021BA41E:
	add r0, r5, #0
	ldr r1, _021BA470 ; =0x021BFE80
	add r0, #0x6c
	str r1, [r4, r0]
	add r0, r5, #0
	mov r1, #1
	add r0, #0x70
	str r1, [r4, r0]
	ldr r0, _021BA474 ; =ovy260_21bab14
	add r5, #0x54
	str r0, [r4, r5]
	pop {r3, r4, r5, pc}
_021BA436:
	add r0, r5, #0
	ldr r1, _021BA478 ; =0x021BFE78
	add r0, #0x6c
	str r1, [r4, r0]
	add r0, r5, #0
	mov r1, #1
	add r0, #0x70
	str r1, [r4, r0]
	ldr r0, _021BA47C ; =ovy260_21bab68
	add r5, #0x54
	str r0, [r4, r5]
	pop {r3, r4, r5, pc}
_021BA44E:
	add r0, r5, #0
	ldr r1, _021BA480 ; =0x021BFE7C
	add r0, #0x6c
	str r1, [r4, r0]
	add r0, r5, #0
	mov r1, #1
	add r0, #0x70
	str r1, [r4, r0]
	ldr r0, _021BA484 ; =ovy260_21babc0
	add r5, #0x54
	str r0, [r4, r5]
_021BA464:
	pop {r3, r4, r5, pc}
	nop
_021BA468: .word ovy260_21ba7d4
_021BA46C: .word ovy260_21baa14
_021BA470: .word 0x021BFE80
_021BA474: .word ovy260_21bab14
_021BA478: .word 0x021BFE78
_021BA47C: .word ovy260_21bab68
_021BA480: .word 0x021BFE7C
_021BA484: .word ovy260_21babc0
	thumb_func_end ovy260_21ba3b4

	thumb_func_start ovy260_21ba488
ovy260_21ba488: ; 0x021BA488
	push {r4, r5, lr}
	sub sp, #0xc
	mov r5, #0x4b
	add r4, r0, #0
	lsl r5, r5, #2
	ldr r1, [r4, r5]
	cmp r1, #8
	bls _021BA49A
	b _021BA682
_021BA49A:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021BA4A6: ; jump table
	.short _021BA4B8 - _021BA4A6 - 2 ; case 0
	.short _021BA4E2 - _021BA4A6 - 2 ; case 1
	.short _021BA560 - _021BA4A6 - 2 ; case 2
	.short _021BA5B4 - _021BA4A6 - 2 ; case 3
	.short _021BA5E8 - _021BA4A6 - 2 ; case 4
	.short _021BA5F0 - _021BA4A6 - 2 ; case 5
	.short _021BA5F6 - _021BA4A6 - 2 ; case 6
	.short _021BA620 - _021BA4A6 - 2 ; case 7
	.short _021BA678 - _021BA4A6 - 2 ; case 8
_021BA4B8:
	ldr r0, _021BA688 ; =0x00000B5F
	ldr r1, [r4]
	mov r2, #0
	bl ovy260_21beaa0
	add r1, r0, #0
	beq _021BA4DC
	add r0, r4, #0
	ldr r2, _021BA68C ; =0x00000E5A
	add r0, #0x18
	bl sub_021BBE68
	add r0, r4, #0
	bl sub_021BA6B4
	add sp, #0xc
	mov r0, #2
	pop {r4, r5, pc}
_021BA4DC:
	mov r0, #1
_021BA4DE:
	str r0, [r4, r5]
	b _021BA682
_021BA4E2:
	add r5, #0x70
	ldr r0, [r4, r5]
	cmp r0, #0x26
	blt _021BA4F4
	ldr r0, _021BA690 ; =0x021BFF84
	ldr r2, _021BA694 ; =0x021BFFC4
	mov r1, #0
	bl sub_0203CB80
_021BA4F4:
	mov r3, #0x6d
	lsl r3, r3, #2
	mov r0, #0
	ldr r1, [r4, r3]
	mvn r0, r0
	cmp r1, r0
	bne _021BA518
	add r1, r3, #0
	str r4, [sp]
	sub r1, #0x1c
	sub r3, #0x18
	ldr r2, [r4, r3]
	ldr r0, _021BA698 ; =0x021BFFF4
	ldr r1, [r4, r1]
	ldr r3, _021BA69C ; =ovy260_21ba740
	bl ovy260_21bee30
	b _021BA534
_021BA518:
	add r0, r3, #0
	sub r0, #0x18
	ldr r0, [r4, r0]
	add r1, r4, r3
	str r0, [sp]
	ldr r0, _021BA69C ; =ovy260_21ba740
	sub r3, #0x1c
	str r0, [sp, #4]
	str r4, [sp, #8]
	ldr r0, _021BA698 ; =0x021BFFF4
	ldr r3, [r4, r3]
	mov r2, #1
	bl ovy260_21beec0
_021BA534:
	add r1, r0, #0
	cmp r1, #0
	beq _021BA550
	add r0, r4, #0
	ldr r2, _021BA6A0 ; =0x00000E75
	add r0, #0x18
	bl sub_021BBE68
	add r0, r4, #0
	bl sub_021BA6B4
	add sp, #0xc
	mov r0, #2
	pop {r4, r5, pc}
_021BA550:
	mov r0, #0x4b
	mov r1, #2
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r1, #0
	add r0, #0x78
_021BA55C:
	str r1, [r4, r0]
	b _021BA682
_021BA560:
	add r1, r5, #0
	add r1, #0x78
	add r0, r5, #0
	ldr r1, [r4, r1]
	add r0, #0x78
	add r2, r1, #1
	add r1, r5, #0
	ldr r0, [r4, r0]
	add r1, #0x78
	str r2, [r4, r1]
	mov r2, #0xe1
	lsl r2, r2, #4
	cmp r0, r2
	bls _021BA58A
	add r0, r4, #0
	add r0, #0x18
	mov r1, #1
	add r2, #0x72
	bl ovy260_21bbe30
	b _021BA5C6
_021BA58A:
	bl ovy260_21becd4
	bl ovy260_21becec
	add r1, r0, #0
	beq _021BA59A
	cmp r1, #4
	bne _021BA5AC
_021BA59A:
	add r0, r4, #0
	ldr r2, _021BA6A4 ; =0x00000E91
	add r0, #0x18
	bl sub_021BBE70
	mov r0, #0x4b
	mov r1, #6
	lsl r0, r0, #2
	b _021BA55C
_021BA5AC:
	cmp r1, #1
	bne _021BA682
	mov r0, #3
	b _021BA4DE
_021BA5B4:
	bl sub_021BED04
	add r1, r0, #0
	bne _021BA5CA
	add r0, r4, #0
	ldr r2, _021BA6A8 ; =0x00000EA4
	add r0, #0x18
	bl sub_021BBE78
_021BA5C6:
	mov r0, #6
	b _021BA4DE
_021BA5CA:
	cmp r1, #1
	beq _021BA5E4
	add r0, r4, #0
	ldr r2, _021BA6AC ; =0x00000EAA
	add r0, #0x18
	bl sub_021BBE78
	add r0, r4, #0
	bl sub_021BA6B4
	add sp, #0xc
	mov r0, #2
	pop {r4, r5, pc}
_021BA5E4:
	mov r0, #4
	b _021BA4DE
_021BA5E8:
	bl sub_021BA6B4
	mov r0, #5
	b _021BA4DE
_021BA5F0:
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_021BA5F6:
	bl ovy260_21beb5c
	add r1, r0, #0
	bne _021BA60A
	add r0, r5, #0
	mov r1, #0
	add r0, #0x78
	str r1, [r4, r0]
	mov r0, #7
	b _021BA4DE
_021BA60A:
	add r0, r4, #0
	ldr r2, _021BA6B0 ; =0x00000EC9
	add r0, #0x18
	bl sub_021BBE68
	add r0, r4, #0
	bl sub_021BA6B4
	add sp, #0xc
	mov r0, #2
	pop {r4, r5, pc}
_021BA620:
	add r1, r5, #0
	add r1, #0x78
	add r0, r5, #0
	ldr r1, [r4, r1]
	add r0, #0x78
	add r2, r1, #1
	add r1, r5, #0
	ldr r0, [r4, r0]
	add r1, #0x78
	str r2, [r4, r1]
	mov r2, #0xe1
	lsl r2, r2, #4
	cmp r0, r2
	bls _021BA654
	add r0, r4, #0
	add r0, #0x18
	mov r1, #1
	add r2, #0xc5
	bl ovy260_21bbe30
	add r0, r4, #0
	bl sub_021BA6B4
	add sp, #0xc
	mov r0, #2
	pop {r4, r5, pc}
_021BA654:
	bl ovy260_21becd4
	bl ovy260_21becec
	cmp r0, #0
	beq _021BA664
	cmp r0, #4
	bne _021BA670
_021BA664:
	add r0, r4, #0
	bl sub_021BA6B4
	add sp, #0xc
	mov r0, #2
	pop {r4, r5, pc}
_021BA670:
	cmp r0, #1
	bne _021BA682
	mov r0, #8
	b _021BA4DE
_021BA678:
	bl sub_021BA6B4
	add sp, #0xc
	mov r0, #2
	pop {r4, r5, pc}
_021BA682:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_021BA688: .word 0x00000B5F
_021BA68C: .word 0x00000E5A
_021BA690: .word 0x021BFF84
_021BA694: .word 0x021BFFC4
_021BA698: .word 0x021BFFF4
_021BA69C: .word ovy260_21ba740
_021BA6A0: .word 0x00000E75
_021BA6A4: .word 0x00000E91
_021BA6A8: .word 0x00000EA4
_021BA6AC: .word 0x00000EAA
_021BA6B0: .word 0x00000EC9
	thumb_func_end ovy260_21ba488

	thumb_func_start sub_021BA6B4
sub_021BA6B4: ; 0x021BA6B4
	ldr r3, _021BA6B8 ; =ovy260_21bec44
	bx r3
	.align 2, 0
_021BA6B8: .word ovy260_21bec44
	thumb_func_end sub_021BA6B4

	thumb_func_start ovy260_21ba6bc
ovy260_21ba6bc: ; 0x021BA6BC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	bl sub_0201736C
	mov r4, #0x65
	lsl r4, r4, #2
	ldr r2, _021BA730 ; =0x021C0004
	ldr r1, [r5, r4]
	mov r6, #8
	str r2, [r1]
	ldr r1, [r5, r4]
	str r6, [r1, #4]
	ldr r1, [r5, r4]
	str r0, [r1, #8]
	ldr r0, [r5, r4]
	mov r1, #0x20
	str r1, [r0, #0xc]
	add r0, r5, #0
	add r0, #0x38
	bl ovy260_21b93e4
	ldr r1, _021BA734 ; =0x021C0010
	ldr r0, [r5, r4]
	str r1, [r0, #0x10]
	ldr r0, [r5, r4]
	add r1, r5, #0
	str r6, [r0, #0x14]
	ldr r0, [r5, r4]
	add r1, #0x38
	str r1, [r0, #0x18]
	ldr r0, [r5, r4]
	mov r1, #6
	str r1, [r0, #0x1c]
	ldr r1, _021BA738 ; =0x021C0024
	ldr r0, [r5, r4]
	str r1, [r0, #0x20]
	ldr r1, [r5, r4]
	mov r0, #2
	str r0, [r1, #0x24]
	ldr r2, [r5, #0xc]
	ldr r1, [r5, r4]
	str r2, [r1, #0x28]
	ldr r2, _021BA73C ; =0x021C0038
	ldr r1, [r5, r4]
	str r2, [r1, #0x30]
	ldr r1, [r5, r4]
	str r0, [r1, #0x34]
	add r0, r5, #0
	bl sub_021BC04C
	ldr r1, [r5, r4]
	add r4, #8
	str r0, [r1, #0x38]
	mov r0, #4
	str r0, [r5, r4]
	pop {r4, r5, r6, pc}
	nop
_021BA730: .word 0x021C0004
_021BA734: .word 0x021C0010
_021BA738: .word 0x021C0024
_021BA73C: .word 0x021C0038
	thumb_func_end ovy260_21ba6bc

	thumb_func_start ovy260_21ba740
ovy260_21ba740: ; 0x021BA740
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r2, #0
	mov r2, #0x5f
	lsl r2, r2, #2
	str r2, [sp, #0xc]
	ldr r3, [sp, #0xc]
	ldr r4, [sp, #0xc]
	add r3, #0x20
	add r4, r4, #4
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	ldr r4, [r5, r4]
	str r0, [sp]
	str r1, [sp, #4]
	blx r4
	ldr r0, [sp, #0xc]
	add r0, #0x38
	ldr r1, [r5, r0]
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	bne _021BA7C6
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp]
	cmp r0, #0
	ble _021BA7C6
	ldr r0, [sp, #0xc]
	str r0, [sp, #0x10]
	add r0, #0x20
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	add r0, #0x20
	str r0, [sp, #0xc]
_021BA786:
	ldr r0, [sp, #0xc]
	mov r4, #0
	ldr r0, [r5, r0]
	cmp r0, #0
	ble _021BA7BA
	ldr r0, [sp, #8]
	lsl r7, r0, #2
_021BA794:
	ldr r0, [sp, #4]
	ldr r1, [r0, r7]
	lsl r0, r4, #4
	add r6, r1, r0
	ldr r0, [r1, r0]
	ldr r1, _021BA7CC ; =0x021C0048
	bl sub_02043ED4
	cmp r0, #0
	bne _021BA7B0
	ldr r0, _021BA7D0 ; =0x00001468
	ldr r1, [r6, #8]
	ldr r0, [r5, r0]
	str r1, [r0]
_021BA7B0:
	ldr r0, [sp, #0x10]
	add r4, r4, #1
	ldr r0, [r5, r0]
	cmp r4, r0
	blt _021BA794
_021BA7BA:
	ldr r0, [sp, #8]
	add r1, r0, #1
	ldr r0, [sp]
	str r1, [sp, #8]
	cmp r1, r0
	blt _021BA786
_021BA7C6:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021BA7CC: .word 0x021C0048
_021BA7D0: .word 0x00001468
	thumb_func_end ovy260_21ba740

	thumb_func_start ovy260_21ba7d4
ovy260_21ba7d4: ; 0x021BA7D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp]
	add r5, r2, #0
	str r1, [sp, #4]
	str r3, [sp, #8]
	cmp r0, #0
	bgt _021BA7EC
	b _021BAA00
_021BA7EC:
	ldr r0, [sp, #8]
	mov r6, #0
	cmp r0, #0
	bgt _021BA7F6
	b _021BA9F2
_021BA7F6:
	ldr r0, [sp, #0xc]
	lsl r0, r0, #2
	str r0, [sp, #0x10]
_021BA7FC:
	ldr r1, [sp, #4]
	ldr r0, [sp, #0x10]
	ldr r7, [r1, r0]
	lsl r0, r6, #4
	str r0, [sp, #0x14]
	add r4, r7, r0
	mov r0, #9
	bl sub_021BC070
	add r1, r0, #0
	ldr r0, [sp, #0x14]
	ldr r0, [r7, r0]
	bl sub_02043ED4
	cmp r0, #0
	bne _021BA822
	ldr r0, [r4, #8]
	str r0, [r5, #0x40]
	b _021BA9E8
_021BA822:
	mov r0, #0xa
	bl sub_021BC070
	add r1, r0, #0
	ldr r0, [r4]
	bl sub_02043ED4
	cmp r0, #0
	bne _021BA83A
	ldr r0, [r4, #8]
	str r0, [r5, #0x3c]
	b _021BA9E8
_021BA83A:
	mov r0, #0xc
	bl sub_021BC070
	add r1, r0, #0
	ldr r0, [r4]
	bl sub_02043ED4
	cmp r0, #0
	bne _021BA852
	ldr r0, [r4, #8]
	str r0, [r5, #0x28]
	b _021BA9E8
_021BA852:
	mov r0, #0xb
	bl sub_021BC070
	add r1, r0, #0
	ldr r0, [r4]
	bl sub_02043ED4
	cmp r0, #0
	bne _021BA86A
	ldr r0, [r4, #8]
	str r0, [r5, #0x24]
	b _021BA9E8
_021BA86A:
	mov r0, #0xd
	bl sub_021BC070
	add r1, r0, #0
	ldr r0, [r4]
	bl sub_02043ED4
	cmp r0, #0
	bne _021BA882
	ldr r0, [r4, #8]
	str r0, [r5, #0x30]
	b _021BA9E8
_021BA882:
	mov r0, #0xe
	bl sub_021BC070
	add r1, r0, #0
	ldr r0, [r4]
	bl sub_02043ED4
	cmp r0, #0
	bne _021BA89A
	ldr r0, [r4, #8]
	str r0, [r5, #0x2c]
	b _021BA9E8
_021BA89A:
	mov r0, #0xf
	bl sub_021BC070
	add r1, r0, #0
	ldr r0, [r4]
	bl sub_02043ED4
	cmp r0, #0
	bne _021BA8B2
	ldr r0, [r4, #8]
	str r0, [r5, #0x48]
	b _021BA9E8
_021BA8B2:
	mov r0, #0x10
	bl sub_021BC070
	add r1, r0, #0
	ldr r0, [r4]
	bl sub_02043ED4
	cmp r0, #0
	bne _021BA8CA
	ldr r0, [r4, #8]
	str r0, [r5, #0x44]
	b _021BA9E8
_021BA8CA:
	mov r0, #0x11
	bl sub_021BC070
	add r1, r0, #0
	ldr r0, [r4]
	bl sub_02043ED4
	cmp r0, #0
	bne _021BA8E2
	ldr r0, [r4, #8]
	str r0, [r5, #0x38]
	b _021BA9E8
_021BA8E2:
	mov r0, #0x12
	bl sub_021BC070
	add r1, r0, #0
	ldr r0, [r4]
	bl sub_02043ED4
	cmp r0, #0
	bne _021BA8FA
	ldr r0, [r4, #8]
	str r0, [r5, #0x34]
	b _021BA9E8
_021BA8FA:
	mov r0, #0x13
	bl sub_021BC070
	add r1, r0, #0
	ldr r0, [r4]
	bl sub_02043ED4
	cmp r0, #0
	bne _021BA912
	ldr r0, [r4, #8]
	str r0, [r5, #0xc]
	b _021BA9E8
_021BA912:
	mov r0, #0x14
	bl sub_021BC070
	add r1, r0, #0
	ldr r0, [r4]
	bl sub_02043ED4
	cmp r0, #0
	bne _021BA92A
	ldr r0, [r4, #8]
	str r0, [r5]
	b _021BA9E8
_021BA92A:
	mov r0, #0x15
	bl sub_021BC070
	add r1, r0, #0
	ldr r0, [r4]
	bl sub_02043ED4
	cmp r0, #0
	bne _021BA942
	ldr r0, [r4, #8]
	str r0, [r5, #4]
	b _021BA9E8
_021BA942:
	mov r0, #0x16
	bl sub_021BC070
	add r1, r0, #0
	ldr r0, [r4]
	bl sub_02043ED4
	cmp r0, #0
	bne _021BA95A
	ldr r0, [r4, #8]
	str r0, [r5, #0x10]
	b _021BA9E8
_021BA95A:
	mov r0, #0x17
	bl sub_021BC070
	add r1, r0, #0
	ldr r0, [r4]
	bl sub_02043ED4
	cmp r0, #0
	bne _021BA972
	ldr r0, [r4, #8]
	str r0, [r5, #8]
	b _021BA9E8
_021BA972:
	mov r0, #3
	bl sub_021BC070
	add r1, r0, #0
	ldr r0, [r4]
	bl sub_02043ED4
	cmp r0, #0
	bne _021BA98A
	ldr r0, [r4, #8]
	str r0, [r5, #0x20]
	b _021BA9E8
_021BA98A:
	mov r0, #0x18
	bl sub_021BC070
	add r1, r0, #0
	ldr r0, [r4]
	bl sub_02043ED4
	cmp r0, #0
	bne _021BA9A2
	ldr r0, [r4, #8]
	str r0, [r5, #0x18]
	b _021BA9E8
_021BA9A2:
	ldr r0, [r4]
	ldr r1, _021BAA04 ; =0x021C0024
	bl sub_02043ED4
	cmp r0, #0
	bne _021BA9B4
	ldr r0, [r4, #8]
	str r0, [r5, #0x4c]
	b _021BA9E8
_021BA9B4:
	ldr r0, [r4]
	ldr r1, _021BAA08 ; =0x021C0038
	bl sub_02043ED4
	cmp r0, #0
	bne _021BA9C6
	ldr r0, [r4, #8]
	str r0, [r5, #0x50]
	b _021BA9E8
_021BA9C6:
	ldr r0, [r4]
	ldr r1, _021BAA0C ; =0x021C0054
	bl sub_02043ED4
	cmp r0, #0
	bne _021BA9D8
	ldr r0, [r4, #8]
	str r0, [r5, #0x54]
	b _021BA9E8
_021BA9D8:
	ldr r0, [r4]
	ldr r1, _021BAA10 ; =0x021C0048
	bl sub_02043ED4
	cmp r0, #0
	bne _021BA9E8
	ldr r0, [r4, #8]
	str r0, [r5, #0x58]
_021BA9E8:
	ldr r0, [sp, #8]
	add r6, r6, #1
	cmp r6, r0
	bge _021BA9F2
	b _021BA7FC
_021BA9F2:
	ldr r0, [sp, #0xc]
	add r1, r0, #1
	ldr r0, [sp]
	str r1, [sp, #0xc]
	cmp r1, r0
	bge _021BAA00
	b _021BA7EC
_021BAA00:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BAA04: .word 0x021C0024
_021BAA08: .word 0x021C0038
_021BAA0C: .word 0x021C0054
_021BAA10: .word 0x021C0048
	thumb_func_end ovy260_21ba7d4

	thumb_func_start ovy260_21baa14
ovy260_21baa14: ; 0x021BAA14
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp]
	add r5, r2, #0
	str r1, [sp, #4]
	str r3, [sp, #8]
	cmp r0, #0
	ble _021BAB06
_021BAA2A:
	ldr r0, [sp, #8]
	mov r6, #0
	cmp r0, #0
	ble _021BAAFA
	ldr r0, [sp, #0xc]
	lsl r0, r0, #2
	str r0, [sp, #0x10]
	add r0, r5, #0
	str r0, [sp, #0x18]
	add r0, #0x18
	str r0, [sp, #0x18]
_021BAA40:
	ldr r1, [sp, #4]
	ldr r0, [sp, #0x10]
	ldr r7, [r1, r0]
	lsl r0, r6, #4
	str r0, [sp, #0x14]
	add r4, r7, r0
	mov r0, #0x25
	bl sub_021BC070
	add r1, r0, #0
	ldr r0, [sp, #0x14]
	ldr r0, [r7, r0]
	bl sub_02043ED4
	cmp r0, #0
	bne _021BAA66
	ldr r0, [r4, #8]
	str r0, [r5, #8]
	b _021BAAF2
_021BAA66:
	mov r0, #0x26
	bl sub_021BC070
	add r1, r0, #0
	ldr r0, [r4]
	bl sub_02043ED4
	cmp r0, #0
	bne _021BAA7E
	ldr r0, [r4, #8]
	str r0, [r5, #0xc]
	b _021BAAF2
_021BAA7E:
	mov r0, #0x24
	bl sub_021BC070
	add r1, r0, #0
	ldr r0, [r4]
	bl sub_02043ED4
	cmp r0, #0
	bne _021BAA96
	ldr r0, [r4, #8]
	str r0, [r5, #0x10]
	b _021BAAF2
_021BAA96:
	mov r0, #0x28
	bl sub_021BC070
	add r1, r0, #0
	ldr r0, [r4]
	bl sub_02043ED4
	cmp r0, #0
	bne _021BAAAE
	ldr r0, [r4, #8]
	str r0, [r5, #4]
	b _021BAAF2
_021BAAAE:
	mov r0, #0x27
	bl sub_021BC070
	add r1, r0, #0
	ldr r0, [r4]
	bl sub_02043ED4
	cmp r0, #0
	bne _021BAAC6
	ldr r0, [r4, #8]
	str r0, [r5]
	b _021BAAF2
_021BAAC6:
	ldr r0, [r4]
	ldr r1, _021BAB0C ; =0x021C0054
	bl sub_02043ED4
	cmp r0, #0
	bne _021BAAD8
	ldr r0, [r4, #8]
	str r0, [r5, #0x14]
	b _021BAAF2
_021BAAD8:
	ldr r0, [r4]
	ldr r1, _021BAB10 ; =0x021C0064
	bl sub_02043ED4
	cmp r0, #0
	bne _021BAAF2
	add r2, r4, #0
	add r2, #8
	ldr r0, [r4, #8]
	ldr r1, [sp, #0x18]
	ldr r2, [r2, #4]
	blx MI_CpuCopy8
_021BAAF2:
	ldr r0, [sp, #8]
	add r6, r6, #1
	cmp r6, r0
	blt _021BAA40
_021BAAFA:
	ldr r0, [sp, #0xc]
	add r1, r0, #1
	ldr r0, [sp]
	str r1, [sp, #0xc]
	cmp r1, r0
	blt _021BAA2A
_021BAB06:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021BAB0C: .word 0x021C0054
_021BAB10: .word 0x021C0064
	thumb_func_end ovy260_21baa14

	thumb_func_start ovy260_21bab14
ovy260_21bab14: ; 0x021BAB14
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp]
	add r6, r3, #0
	str r1, [sp, #4]
	str r2, [sp, #8]
	cmp r0, #0
	ble _021BAB60
_021BAB2A:
	mov r4, #0
	cmp r6, #0
	ble _021BAB54
	ldr r0, [sp, #0xc]
	lsl r7, r0, #2
_021BAB34:
	ldr r0, [sp, #4]
	ldr r1, [r0, r7]
	lsl r0, r4, #4
	add r5, r1, r0
	ldr r0, [r1, r0]
	ldr r1, _021BAB64 ; =0x021C0048
	bl sub_02043ED4
	cmp r0, #0
	bne _021BAB4E
	ldr r1, [r5, #8]
	ldr r0, [sp, #8]
	str r1, [r0]
_021BAB4E:
	add r4, r4, #1
	cmp r4, r6
	blt _021BAB34
_021BAB54:
	ldr r0, [sp, #0xc]
	add r1, r0, #1
	ldr r0, [sp]
	str r1, [sp, #0xc]
	cmp r1, r0
	blt _021BAB2A
_021BAB60:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BAB64: .word 0x021C0048
	thumb_func_end ovy260_21bab14

	thumb_func_start ovy260_21bab68
ovy260_21bab68: ; 0x021BAB68
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp]
	add r6, r3, #0
	str r1, [sp, #4]
	str r2, [sp, #8]
	cmp r0, #0
	ble _021BABB8
_021BAB7E:
	mov r4, #0
	cmp r6, #0
	ble _021BABAC
	ldr r0, [sp, #0xc]
	lsl r7, r0, #2
_021BAB88:
	ldr r0, [sp, #4]
	ldr r1, [r0, r7]
	lsl r0, r4, #4
	add r5, r1, r0
	ldr r0, [r1, r0]
	ldr r1, _021BABBC ; =0x021C0064
	bl sub_02043ED4
	cmp r0, #0
	bne _021BABA6
	ldr r0, [r5, #8]
	ldr r1, [sp, #8]
	ldr r2, [r5, #0xc]
	blx MI_CpuCopy8
_021BABA6:
	add r4, r4, #1
	cmp r4, r6
	blt _021BAB88
_021BABAC:
	ldr r0, [sp, #0xc]
	add r1, r0, #1
	ldr r0, [sp]
	str r1, [sp, #0xc]
	cmp r1, r0
	blt _021BAB7E
_021BABB8:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BABBC: .word 0x021C0064
	thumb_func_end ovy260_21bab68

	thumb_func_start ovy260_21babc0
ovy260_21babc0: ; 0x021BABC0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp]
	add r6, r3, #0
	str r1, [sp, #4]
	str r2, [sp, #8]
	cmp r0, #0
	ble _021BAC10
_021BABD6:
	mov r4, #0
	cmp r6, #0
	ble _021BAC04
	ldr r0, [sp, #0xc]
	lsl r7, r0, #2
_021BABE0:
	ldr r0, [sp, #4]
	ldr r1, [r0, r7]
	lsl r0, r4, #4
	add r5, r1, r0
	ldr r0, [r1, r0]
	ldr r1, _021BAC14 ; =0x021C0010
	bl sub_02043ED4
	cmp r0, #0
	bne _021BABFE
	ldr r0, [r5, #8]
	ldr r1, [sp, #8]
	ldr r2, [r5, #0xc]
	blx MI_CpuCopy8
_021BABFE:
	add r4, r4, #1
	cmp r4, r6
	blt _021BABE0
_021BAC04:
	ldr r0, [sp, #0xc]
	add r1, r0, #1
	ldr r0, [sp]
	str r1, [sp, #0xc]
	cmp r1, r0
	blt _021BABD6
_021BAC10:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BAC14: .word 0x021C0010
	thumb_func_end ovy260_21babc0

	thumb_func_start ovy260_21bac18
ovy260_21bac18: ; 0x021BAC18
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	mov r0, #0x4b
	add r5, r1, #0
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r0, _021BADA4 ; =0x00001468
	add r6, r2, #0
	ldr r0, [r4, r0]
	ldr r0, [r0]
	cmp r0, #0
	bne _021BAC3A
	ldr r0, _021BADA8 ; =0x021BFF84
	ldr r2, _021BADAC ; =0x021C007C
	bl sub_0203CB80
_021BAC3A:
	cmp r5, #3
	bls _021BAC40
	b _021BADA0
_021BAC40:
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021BAC4C: ; jump table
	.short _021BAC54 - _021BAC4C - 2 ; case 0
	.short _021BACE4 - _021BAC4C - 2 ; case 1
	.short _021BAD1E - _021BAC4C - 2 ; case 2
	.short _021BAD26 - _021BAC4C - 2 ; case 3
_021BAC54:
	mov r0, #0x24
	bl sub_021BC070
	mov r5, #0x65
	lsl r5, r5, #2
	ldr r1, [r4, r5]
	ldr r7, _021BADB0 ; =0x000005DC
	str r0, [r1]
	ldr r1, [r4, r5]
	mov r0, #2
	str r0, [r1, #4]
	ldr r0, [r4, r5]
	str r7, [r0, #8]
	mov r0, #0x27
	bl sub_021BC070
	ldr r1, [r4, r5]
	str r0, [r1, #0x10]
	ldr r1, [r4, r5]
	mov r0, #2
	str r0, [r1, #0x14]
	ldr r1, [r4, r5]
	mov r0, #0
	str r0, [r1, #0x18]
	mov r0, #0x28
	bl sub_021BC070
	ldr r1, [r4, r5]
	str r0, [r1, #0x20]
	ldr r1, [r4, r5]
	mov r0, #2
	str r0, [r1, #0x24]
	ldr r1, [r4, r5]
	mov r0, #0
	str r0, [r1, #0x28]
	mov r0, #0x26
	bl sub_021BC070
	ldr r1, [r4, r5]
	str r0, [r1, #0x30]
	ldr r1, [r4, r5]
	mov r0, #2
	str r0, [r1, #0x34]
	ldr r1, [r4, r5]
	mov r0, #0
	str r0, [r1, #0x38]
	mov r0, #0x25
	bl sub_021BC070
	ldr r1, [r4, r5]
	sub r7, #0xa8
	str r0, [r1, #0x40]
	ldr r1, [r4, r5]
	mov r0, #2
	str r0, [r1, #0x44]
	ldr r1, [r4, r5]
	mov r0, #0
	str r0, [r1, #0x48]
	ldr r1, _021BADB4 ; =0x021C0064
	ldr r0, [r4, r5]
	str r1, [r0, #0x50]
	ldr r0, [r4, r5]
	mov r1, #8
	str r1, [r0, #0x54]
	ldr r0, [r4, r5]
	str r6, [r0, #0x58]
	ldr r0, [r4, r5]
	add r5, #8
	str r7, [r0, #0x5c]
	mov r0, #6
	str r0, [r4, r5]
	pop {r3, r4, r5, r6, r7, pc}
_021BACE4:
	add r0, r4, #0
	add r0, #0x38
	bl ovy260_21b93e4
	mov r1, #0x67
	mov r0, #1
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #0
	sub r0, #8
	ldr r2, _021BADB8 ; =0x021C0010
	ldr r0, [r4, r0]
	str r2, [r0]
	add r0, r1, #0
	sub r0, #8
	ldr r0, [r4, r0]
	mov r2, #8
	str r2, [r0, #4]
	add r0, r1, #0
	sub r0, #8
	add r2, r4, #0
	ldr r0, [r4, r0]
	add r2, #0x38
	str r2, [r0, #8]
	sub r1, #8
	ldr r0, [r4, r1]
	mov r2, #6
	str r2, [r0, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_021BAD1E:
	add r0, r4, #0
	bl ovy260_21ba6bc
	pop {r3, r4, r5, r6, r7, pc}
_021BAD26:
	mov r0, #0x72
	lsl r0, r0, #2
	add r3, r4, r0
	mov r2, #0xa
_021BAD2E:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021BAD2E
	ldr r0, [r6]
	mov r5, #0x67
	str r0, [r3]
	mov r0, #2
	lsl r5, r5, #2
	str r0, [r4, r5]
	add r0, r5, #0
	add r0, #0x7c
	ldr r0, [r4, r0]
	lsl r1, r0, #2
	ldr r0, _021BADBC ; =0x021BFE84
	ldr r1, [r0, r1]
	add r0, r5, #0
	sub r0, #8
	ldr r0, [r4, r0]
	str r1, [r0]
	add r0, r5, #0
	sub r0, #8
	ldr r0, [r4, r0]
	mov r1, #8
	str r1, [r0, #4]
	add r0, r5, #0
	add r0, #0x2c
	add r1, r4, r0
	add r0, r5, #0
	sub r0, #8
	ldr r0, [r4, r0]
	str r1, [r0, #8]
	add r0, r5, #0
	sub r0, #8
	ldr r0, [r4, r0]
	mov r1, #0x50
	str r1, [r0, #0xc]
	add r0, r5, #0
	sub r0, #8
	ldr r1, _021BADC0 ; =0x021C0054
	ldr r0, [r4, r0]
	str r1, [r0, #0x10]
	add r0, r5, #0
	sub r0, #8
	ldr r0, [r4, r0]
	mov r1, #0
	str r1, [r0, #0x14]
	add r0, r5, #0
	add r0, #0x7c
	ldr r0, [r4, r0]
	mov r1, #6
	add r0, r0, #1
	blx sub_0208D868
	sub r5, #8
	ldr r0, [r4, r5]
	strb r1, [r0, #0x18]
_021BADA0:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021BADA4: .word 0x00001468
_021BADA8: .word 0x021BFF84
_021BADAC: .word 0x021C007C
_021BADB0: .word 0x000005DC
_021BADB4: .word 0x021C0064
_021BADB8: .word 0x021C0010
_021BADBC: .word 0x021BFE84
_021BADC0: .word 0x021C0054
	thumb_func_end ovy260_21bac18

	thumb_func_start ovy260_21badc4
ovy260_21badc4: ; 0x021BADC4
	push {r4, r5, r6, lr}
	mov r5, #0x4b
	add r4, r0, #0
	lsl r5, r5, #2
	ldr r1, [r4, r5]
	cmp r1, #8
	bls _021BADD4
	b _021BAF86
_021BADD4:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021BADE0: ; jump table
	.short _021BADF2 - _021BADE0 - 2 ; case 0
	.short _021BAE1A - _021BADE0 - 2 ; case 1
	.short _021BAE6A - _021BADE0 - 2 ; case 2
	.short _021BAEC0 - _021BADE0 - 2 ; case 3
	.short _021BAEF6 - _021BADE0 - 2 ; case 4
	.short _021BAEFE - _021BADE0 - 2 ; case 5
	.short _021BAF02 - _021BADE0 - 2 ; case 6
	.short _021BAF2A - _021BADE0 - 2 ; case 7
	.short _021BAF7E - _021BADE0 - 2 ; case 8
_021BADF2:
	ldr r0, _021BAF8C ; =0x00000B5F
	ldr r1, [r4]
	mov r2, #0
	bl ovy260_21beaa0
	add r1, r0, #0
	beq _021BAE14
	add r0, r4, #0
	ldr r2, _021BAF90 ; =0x000011CC
	add r0, #0x18
	bl sub_021BBE68
	add r0, r4, #0
	bl sub_021BA6B4
	mov r0, #2
	pop {r4, r5, r6, pc}
_021BAE14:
	mov r0, #1
_021BAE16:
	str r0, [r4, r5]
	b _021BAF86
_021BAE1A:
	add r5, #0x70
	ldr r0, [r4, r5]
	cmp r0, #0x26
	blt _021BAE2C
	ldr r0, _021BAF94 ; =0x021BFF84
	ldr r2, _021BAF98 ; =0x021BFFC4
	mov r1, #0
	bl sub_0203CB80
_021BAE2C:
	ldr r1, _021BAF9C ; =0x00001468
	mov r5, #0x65
	lsl r5, r5, #2
	ldr r1, [r4, r1]
	add r3, r5, #0
	add r3, #8
	ldr r0, _021BAFA0 ; =0x021BFFF4
	ldr r1, [r1]
	ldr r2, [r4, r5]
	ldr r3, [r4, r3]
	bl ovy260_21beda0
	add r1, r0, #0
	beq _021BAE5C
	add r0, r4, #0
	ldr r2, _021BAFA4 ; =0x000011D9
	add r0, #0x18
	bl sub_021BBE68
	add r0, r4, #0
	bl sub_021BA6B4
	mov r0, #2
	pop {r4, r5, r6, pc}
_021BAE5C:
	add r0, r5, #0
	mov r1, #0
	add r0, #0x10
	str r1, [r4, r0]
	mov r0, #2
	sub r5, #0x68
	b _021BAE16
_021BAE6A:
	add r1, r5, #0
	add r1, #0x78
	add r0, r5, #0
	ldr r1, [r4, r1]
	add r0, #0x78
	add r2, r1, #1
	add r1, r5, #0
	ldr r0, [r4, r0]
	add r1, #0x78
	str r2, [r4, r1]
	mov r1, #0xe1
	lsl r1, r1, #4
	cmp r0, r1
	bls _021BAE94
	add r0, r4, #0
	ldr r2, _021BAFA8 ; =0x000011E6
	add r0, #0x18
	mov r1, #1
	bl ovy260_21bbe30
	b _021BAED4
_021BAE94:
	bl ovy260_21becd4
	bl ovy260_21becec
	add r1, r0, #0
	beq _021BAEA4
	cmp r1, #4
	bne _021BAEB8
_021BAEA4:
	add r0, r4, #0
	ldr r2, _021BAFAC ; =0x000011F1
	add r0, #0x18
	bl sub_021BBE70
	mov r0, #0x4b
	mov r1, #6
	lsl r0, r0, #2
	str r1, [r4, r0]
	b _021BAF86
_021BAEB8:
	cmp r1, #1
	bne _021BAF86
	mov r0, #3
	b _021BAE16
_021BAEC0:
	bl sub_021BED04
	add r6, r0, #0
	bne _021BAED8
	add r0, r4, #0
	ldr r2, _021BAFB0 ; =0x00001204
	add r0, #0x18
	add r1, r6, #0
	bl sub_021BBE78
_021BAED4:
	mov r0, #6
	b _021BAE16
_021BAED8:
	cmp r6, #1
	beq _021BAEF2
	add r0, r4, #0
	bl sub_021BA6B4
	add r4, #0x18
	ldr r2, _021BAFB4 ; =0x0000120B
	add r0, r4, #0
	add r1, r6, #0
	bl sub_021BBE78
	mov r0, #2
	pop {r4, r5, r6, pc}
_021BAEF2:
	mov r0, #4
	b _021BAE16
_021BAEF6:
	bl sub_021BA6B4
	mov r0, #5
	str r0, [r4, r5]
_021BAEFE:
	mov r0, #1
	pop {r4, r5, r6, pc}
_021BAF02:
	bl ovy260_21beb5c
	add r1, r0, #0
	bne _021BAF16
	add r0, r5, #0
	mov r1, #0
	add r0, #0x78
	str r1, [r4, r0]
	mov r0, #7
	b _021BAE16
_021BAF16:
	add r0, r4, #0
	ldr r2, _021BAFB8 ; =0x00001229
	add r0, #0x18
	bl sub_021BBE68
	add r0, r4, #0
	bl sub_021BA6B4
	mov r0, #2
	pop {r4, r5, r6, pc}
_021BAF2A:
	add r1, r5, #0
	add r1, #0x78
	add r0, r5, #0
	ldr r1, [r4, r1]
	add r0, #0x78
	add r2, r1, #1
	add r1, r5, #0
	ldr r0, [r4, r0]
	add r1, #0x78
	str r2, [r4, r1]
	mov r1, #0xe1
	lsl r1, r1, #4
	cmp r0, r1
	bls _021BAF5C
	add r0, r4, #0
	ldr r2, _021BAFBC ; =0x00001235
	add r0, #0x18
	mov r1, #1
	bl ovy260_21bbe30
	add r0, r4, #0
	bl sub_021BA6B4
	mov r0, #2
	pop {r4, r5, r6, pc}
_021BAF5C:
	bl ovy260_21becd4
	bl ovy260_21becec
	cmp r0, #0
	beq _021BAF6C
	cmp r0, #4
	bne _021BAF76
_021BAF6C:
	add r0, r4, #0
	bl sub_021BA6B4
	mov r0, #2
	pop {r4, r5, r6, pc}
_021BAF76:
	cmp r0, #1
	bne _021BAF86
	mov r0, #8
	b _021BAE16
_021BAF7E:
	bl sub_021BA6B4
	mov r0, #2
	pop {r4, r5, r6, pc}
_021BAF86:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_021BAF8C: .word 0x00000B5F
_021BAF90: .word 0x000011CC
_021BAF94: .word 0x021BFF84
_021BAF98: .word 0x021BFFC4
_021BAF9C: .word 0x00001468
_021BAFA0: .word 0x021BFFF4
_021BAFA4: .word 0x000011D9
_021BAFA8: .word 0x000011E6
_021BAFAC: .word 0x000011F1
_021BAFB0: .word 0x00001204
_021BAFB4: .word 0x0000120B
_021BAFB8: .word 0x00001229
_021BAFBC: .word 0x00001235
	thumb_func_end ovy260_21badc4

	thumb_func_start sub_021BAFC0
sub_021BAFC0: ; 0x021BAFC0
	mov r1, #0x4b
	ldr r3, _021BAFCC ; =ovy260_21ba6bc
	mov r2, #0
	lsl r1, r1, #2
	str r2, [r0, r1]
	bx r3
	.align 2, 0
_021BAFCC: .word ovy260_21ba6bc
	thumb_func_end sub_021BAFC0

	thumb_func_start ovy260_21bafd0
ovy260_21bafd0: ; 0x021BAFD0
	push {r4, r5, r6, lr}
	mov r5, #0x4b
	add r4, r0, #0
	lsl r5, r5, #2
	ldr r1, [r4, r5]
	cmp r1, #6
	bls _021BAFE0
	b _021BB17E
_021BAFE0:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021BAFEC: ; jump table
	.short _021BAFFA - _021BAFEC - 2 ; case 0
	.short _021BB01E - _021BAFEC - 2 ; case 1
	.short _021BB052 - _021BAFEC - 2 ; case 2
	.short _021BB0A8 - _021BAFEC - 2 ; case 3
	.short _021BB0FA - _021BAFEC - 2 ; case 4
	.short _021BB122 - _021BAFEC - 2 ; case 5
	.short _021BB176 - _021BAFEC - 2 ; case 6
_021BAFFA:
	ldr r0, _021BB184 ; =0x00000B5F
	ldr r1, [r4]
	mov r2, #0
	bl ovy260_21beaa0
	add r1, r0, #0
	beq _021BB018
	add r4, #0x18
	mov r2, #0x4a
	add r0, r4, #0
	lsl r2, r2, #6
	bl sub_021BBE68
	mov r0, #2
	pop {r4, r5, r6, pc}
_021BB018:
	mov r0, #1
_021BB01A:
	str r0, [r4, r5]
	b _021BB17E
_021BB01E:
	add r1, r5, #0
	add r2, r5, #0
	ldr r3, _021BB188 ; =0x00001468
	add r1, #0x68
	add r2, #0x70
	ldr r0, _021BB18C ; =0x021BFFF4
	ldr r1, [r4, r1]
	ldr r2, [r4, r2]
	ldr r3, [r4, r3]
	bl ovy260_21bed10
	add r1, r0, #0
	beq _021BB046
	add r4, #0x18
	ldr r2, _021BB190 ; =0x0000128E
	add r0, r4, #0
	bl sub_021BBE68
	mov r0, #2
	pop {r4, r5, r6, pc}
_021BB046:
	add r0, r5, #0
	mov r1, #0
	add r0, #0x78
	str r1, [r4, r0]
	mov r0, #2
	b _021BB01A
_021BB052:
	add r1, r5, #0
	add r1, #0x78
	add r0, r5, #0
	ldr r1, [r4, r1]
	add r0, #0x78
	add r2, r1, #1
	add r1, r5, #0
	ldr r0, [r4, r0]
	add r1, #0x78
	str r2, [r4, r1]
	mov r1, #0xe1
	lsl r1, r1, #4
	cmp r0, r1
	bls _021BB07C
	add r0, r4, #0
	ldr r2, _021BB194 ; =0x0000129A
	add r0, #0x18
	mov r1, #1
	bl ovy260_21bbe30
	b _021BB0BC
_021BB07C:
	bl ovy260_21becd4
	bl ovy260_21becec
	add r1, r0, #0
	beq _021BB08C
	cmp r1, #4
	bne _021BB0A0
_021BB08C:
	add r0, r4, #0
	ldr r2, _021BB198 ; =0x000012A6
	add r0, #0x18
	bl sub_021BBE70
	mov r0, #0x4b
	mov r1, #4
	lsl r0, r0, #2
	str r1, [r4, r0]
	b _021BB17E
_021BB0A0:
	cmp r1, #1
	bne _021BB17E
	mov r0, #3
	b _021BB01A
_021BB0A8:
	bl sub_021BED04
	add r6, r0, #0
	bne _021BB0C0
	add r0, r4, #0
	ldr r2, _021BB19C ; =0x000012BA
	add r0, #0x18
	add r1, r6, #0
	bl sub_021BBE78
_021BB0BC:
	mov r0, #4
	b _021BB01A
_021BB0C0:
	cmp r6, #1
	beq _021BB0DA
	add r0, r4, #0
	bl sub_021BA6B4
	add r4, #0x18
	ldr r2, _021BB1A0 ; =0x000012C1
	add r0, r4, #0
	add r1, r6, #0
	bl sub_021BBE78
	mov r0, #2
	pop {r4, r5, r6, pc}
_021BB0DA:
	ldr r0, _021BB188 ; =0x00001468
	ldr r0, [r4, r0]
	ldr r0, [r0]
	cmp r0, #0
	bne _021BB0F0
	add r0, r4, #0
	ldr r2, _021BB1A4 ; =0x000012C7
	add r0, #0x18
	mov r1, #2
	bl ovy260_21bbe30
_021BB0F0:
	add r0, r4, #0
	bl sub_021BA6B4
	mov r0, #1
	pop {r4, r5, r6, pc}
_021BB0FA:
	bl ovy260_21beb5c
	add r1, r0, #0
	bne _021BB10E
	add r0, r5, #0
	mov r1, #0
	add r0, #0x78
	str r1, [r4, r0]
	mov r0, #5
	b _021BB01A
_021BB10E:
	add r0, r4, #0
	ldr r2, _021BB1A8 ; =0x000012DA
	add r0, #0x18
	bl sub_021BBE68
	add r0, r4, #0
	bl sub_021BA6B4
	mov r0, #2
	pop {r4, r5, r6, pc}
_021BB122:
	add r1, r5, #0
	add r1, #0x78
	add r0, r5, #0
	ldr r1, [r4, r1]
	add r0, #0x78
	add r2, r1, #1
	add r1, r5, #0
	ldr r0, [r4, r0]
	add r1, #0x78
	str r2, [r4, r1]
	mov r1, #0xe1
	lsl r1, r1, #4
	cmp r0, r1
	bls _021BB154
	add r0, r4, #0
	ldr r2, _021BB1AC ; =0x000012E6
	add r0, #0x18
	mov r1, #1
	bl ovy260_21bbe30
	add r0, r4, #0
	bl sub_021BA6B4
	mov r0, #2
	pop {r4, r5, r6, pc}
_021BB154:
	bl ovy260_21becd4
	bl ovy260_21becec
	cmp r0, #0
	beq _021BB164
	cmp r0, #4
	bne _021BB16E
_021BB164:
	add r0, r4, #0
	bl sub_021BA6B4
	mov r0, #2
	pop {r4, r5, r6, pc}
_021BB16E:
	cmp r0, #1
	bne _021BB17E
	mov r0, #6
	b _021BB01A
_021BB176:
	bl sub_021BA6B4
	mov r0, #2
	pop {r4, r5, r6, pc}
_021BB17E:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_021BB184: .word 0x00000B5F
_021BB188: .word 0x00001468
_021BB18C: .word 0x021BFFF4
_021BB190: .word 0x0000128E
_021BB194: .word 0x0000129A
_021BB198: .word 0x000012A6
_021BB19C: .word 0x000012BA
_021BB1A0: .word 0x000012C1
_021BB1A4: .word 0x000012C7
_021BB1A8: .word 0x000012DA
_021BB1AC: .word 0x000012E6
	thumb_func_end ovy260_21bafd0

	thumb_func_start sub_021BB1B0
sub_021BB1B0: ; 0x021BB1B0
	ldr r1, _021BB1B8 ; =0x00001468
	ldr r0, [r0, r1]
	ldr r0, [r0]
	bx lr
	.align 2, 0
_021BB1B8: .word 0x00001468
	thumb_func_end sub_021BB1B0

	thumb_func_start ovy260_21bb1bc
ovy260_21bb1bc: ; 0x021BB1BC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r1, #0
	bl sub_02040440
	bl sub_02042A6C
	mov r4, #1
	cmp r0, #0
	beq _021BB1D2
	mov r4, #0
_021BB1D2:
	bl sub_02040440
	add r6, r0, #0
	bl sub_0201FCF8
	add r3, r0, #0
	lsl r1, r4, #0x18
	str r5, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r2, _021BB1FC ; =0x00002401
	add r0, r6, #0
	lsr r1, r1, #0x18
	add r3, #0xd4
	bl sub_02042C18
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_021BB1FC: .word 0x00002401
	thumb_func_end ovy260_21bb1bc

	thumb_func_start ovy260_21bb200
ovy260_21bb200: ; 0x021BB200
	push {r3, r4}
	mov r2, #0x4f
	lsl r2, r2, #2
	ldr r4, [r0, r2]
	cmp r4, #0
	beq _021BB216
	mov r3, #0
	str r3, [r0, r2]
	add r2, #0xe0
	add r0, r0, r2
	str r0, [r1]
_021BB216:
	add r0, r4, #0
	pop {r3, r4}
	bx lr
	thumb_func_end ovy260_21bb200

	thumb_func_start ovy260_21bb21c
ovy260_21bb21c: ; 0x021BB21C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r1, #0
	bl sub_02040440
	bl sub_02042A6C
	mov r4, #1
	cmp r0, #0
	beq _021BB232
	mov r4, #0
_021BB232:
	bl sub_02040440
	add r6, r0, #0
	bl sub_0201FCF8
	add r3, r0, #0
	lsl r1, r4, #0x18
	str r5, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r2, _021BB258 ; =0x00002403
	add r0, r6, #0
	lsr r1, r1, #0x18
	bl sub_02042C18
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
_021BB258: .word 0x00002403
	thumb_func_end ovy260_21bb21c

	thumb_func_start ovy260_21bb25c
ovy260_21bb25c: ; 0x021BB25C
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0x51
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r6, [r5, r4]
	add r7, r1, #0
	cmp r6, #0
	beq _021BB280
	mov r0, #0
	str r0, [r5, r4]
	bl sub_0201FCF8
	add r4, #0xd8
	add r2, r0, #0
	add r0, r5, r4
	add r1, r7, #0
	blx MI_CpuCopy8
_021BB280:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy260_21bb25c

	thumb_func_start ovy260_21bb284
ovy260_21bb284: ; 0x021BB284
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r1, #0
	bl sub_02040440
	bl sub_02042A6C
	mov r4, #1
	cmp r0, #0
	beq _021BB29A
	mov r4, #0
_021BB29A:
	bl sub_02040440
	str r5, [sp]
	mov r1, #1
	str r1, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	lsl r1, r4, #0x18
	ldr r2, _021BB2B8 ; =0x00002404
	lsr r1, r1, #0x18
	mov r3, #4
	bl sub_02042C18
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
_021BB2B8: .word 0x00002404
	thumb_func_end ovy260_21bb284

	thumb_func_start ovy260_21bb2bc
ovy260_21bb2bc: ; 0x021BB2BC
	push {r4, lr}
	mov r2, #0x52
	lsl r2, r2, #2
	ldr r4, [r0, r2]
	cmp r4, #0
	beq _021BB2D6
	mov r3, #0
	str r3, [r0, r2]
	add r2, #0xd4
	add r0, r0, r2
	mov r2, #4
	blx MI_CpuCopy8
_021BB2D6:
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy260_21bb2bc

	thumb_func_start ovy260_21bb2dc
ovy260_21bb2dc: ; 0x021BB2DC
	push {r4, lr}
	add r4, r1, #0
	bl sub_02040440
	ldr r1, _021BB2F0 ; =0x00002405
	mov r2, #4
	add r3, r4, #0
	bl sub_02042BE8
	pop {r4, pc}
	.align 2, 0
_021BB2F0: .word 0x00002405
	thumb_func_end ovy260_21bb2dc

	thumb_func_start ovy260_21bb2f4
ovy260_21bb2f4: ; 0x021BB2F4
	push {r3, r4}
	mov r2, #0x53
	lsl r2, r2, #2
	ldr r4, [r0, r2]
	cmp r4, #0
	beq _021BB30A
	mov r3, #0
	str r3, [r0, r2]
	add r2, #8
	ldr r0, [r0, r2]
	str r0, [r1]
_021BB30A:
	add r0, r4, #0
	pop {r3, r4}
	bx lr
	thumb_func_end ovy260_21bb2f4

	thumb_func_start ovy260_21bb310
ovy260_21bb310: ; 0x021BB310
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x4b
	add r6, r1, #0
	ldr r4, _021BB34C ; =0x0000145C
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r4, #0
	sub r0, #0xc
	str r1, [r5, r4]
	add r0, r5, r0
	mov r1, #0
	mov r2, #0xa
	blx MI_CpuFill8
	add r0, r4, #0
	sub r0, #0xc8
	add r0, r5, r0
	mov r1, #0
	mov r2, #0xb0
	blx MI_CpuFill8
	sub r4, #0xc
	ldr r1, _021BB350 ; =0x021C00A0
	add r0, r5, r4
	add r2, r6, #0
	bl sub_020800E8
	pop {r4, r5, r6, pc}
	.align 2, 0
_021BB34C: .word 0x0000145C
_021BB350: .word 0x021C00A0
	thumb_func_end ovy260_21bb310

	thumb_func_start ovy260_21bb354
ovy260_21bb354: ; 0x021BB354
	push {r3, r4, r5, r6, r7, lr}
	mov r5, #0x4b
	add r4, r0, #0
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	ldr r6, _021BB594 ; =0x021c1ca0
	cmp r0, #0x64
	bhi _021BB38A
	blo _021BB368
	b _021BB502
_021BB368:
	cmp r0, #8
	bhi _021BB392
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021BB378: ; jump table
	.short _021BB3A0 - _021BB378 - 2 ; case 0
	.short _021BB3C0 - _021BB378 - 2 ; case 1
	.short _021BB3D8 - _021BB378 - 2 ; case 2
	.short _021BB3F0 - _021BB378 - 2 ; case 3
	.short _021BB43A - _021BB378 - 2 ; case 4
	.short _021BB4CC - _021BB378 - 2 ; case 5
	.short _021BB4D0 - _021BB378 - 2 ; case 6
	.short _021BB4EE - _021BB378 - 2 ; case 7
	.short _021BB4F8 - _021BB378 - 2 ; case 8
_021BB38A:
	cmp r0, #0xc8
	bhi _021BB394
	bne _021BB392
	b _021BB566
_021BB392:
	b _021BB58E
_021BB394:
	mov r5, #0x4b
	lsl r5, r5, #2
	cmp r0, r5
	bne _021BB39E
	b _021BB576
_021BB39E:
	b _021BB58E
_021BB3A0:
	ldr r0, _021BB598 ; =ovy260_21bb71c
	ldr r1, _021BB59C ; =0x021C00A4
	ldr r2, _021BB5A0 ; =0x021C00AC
	bl sub_021A5674
	cmp r0, #0
	bne _021BB3B2
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_021BB3B2:
	ldr r0, _021BB5A4 ; =0x0000145C
	mov r1, #1
	str r1, [r4, r0]
	add r0, r4, #0
_021BB3BA:
	bl ovy260_21bb6a0
	b _021BB58E
_021BB3C0:
	ldr r1, _021BB5A8 ; =0x00001450
	ldr r0, _021BB5AC ; =0x021C00C0
	ldr r2, _021BB5B0 ; =0x021BFF84
	add r1, r4, r1
	bl sub_021A5830
	cmp r0, #0
	bne _021BB3D2
	b _021BB4AE
_021BB3D2:
	mov r0, #2
_021BB3D4:
	str r0, [r4, r5]
	b _021BB58E
_021BB3D8:
	ldr r0, _021BB5B4 ; =0x00001394
	mov r1, #0
	add r0, r4, r0
	mov r2, #1
	bl sub_021A5850
	cmp r0, #0
	bne _021BB3EA
	b _021BB4AE
_021BB3EA:
	add r0, r4, #0
	mov r1, #3
	b _021BB3BA
_021BB3F0:
	ldr r7, _021BB5B4 ; =0x00001394
	mov r1, #0xb0
	str r1, [sp]
	add r0, r4, r7
	mov r1, #0xb0
	bl sub_021BB5C8
	cmp r0, #0
	bne _021BB422
	ldr r1, _021BB5B8 ; =0x00001234
	ldr r2, [sp]
	add r0, r4, r7
	add r2, #0xb0
	add r1, r4, r1
	str r2, [sp]
	bl sub_021A58C8
	cmp r0, #0
	bne _021BB418
	b _021BB4AE
_021BB418:
	mov r0, #0
	strb r0, [r6]
	str r0, [r6, #4]
	mov r0, #4
	b _021BB3D4
_021BB422:
	bl sub_021A57DC
	cmp r0, #0
	bne _021BB434
	mov r0, #0
	add r7, #0xc8
	str r0, [r4, r7]
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_021BB434:
	add r0, r4, #0
	mov r1, #7
	b _021BB3BA
_021BB43A:
	bl sub_021A5768
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0x78
	add r0, #0x78
	ldr r1, [r4, r1]
	ldr r0, [r4, r0]
	add r1, r1, #1
	add r5, #0x78
	str r1, [r4, r5]
	ldr r1, _021BB5BC ; =0x00001C20
	cmp r0, r1
	bls _021BB46A
	ldr r3, _021BB5C0 ; =0x000003F7
	mov r0, #0
	mov r1, #0
	mov r2, #0
	bl sub_020424AC
	add r0, r4, #0
	mov r1, #8
	bl ovy260_21bb6f0
_021BB46A:
	ldrb r0, [r6]
	cmp r0, #0
	bne _021BB49E
	ldr r5, _021BB5C4 ; =0x00001448
	add r1, r5, #4
	add r0, r4, r5
	add r1, r4, r1
	bl sub_021A5980
	cmp r0, #1
	beq _021BB482
	b _021BB58E
_021BB482:
	ldr r1, [r4, r5]
	mov r0, #0x64
	mul r0, r1
	add r1, r5, #4
	ldr r1, [r4, r1]
	blx sub_0208D868
	sub r1, r5, #4
	ldr r1, [r4, r1]
	cmp r1, r0
	beq _021BB58E
	sub r1, r5, #4
	str r0, [r4, r1]
	b _021BB58E
_021BB49E:
	ldr r0, [r6, #4]
	cmp r0, #0
	beq _021BB4B4
	cmp r0, #8
	bne _021BB4AE
	bl sub_02012028
	b _021BB58E
_021BB4AE:
	add r0, r4, #0
	mov r1, #8
	b _021BB58A
_021BB4B4:
	bl sub_021A57DC
	cmp r0, #0
	bne _021BB4C6
	ldr r0, _021BB5A4 ; =0x0000145C
	mov r1, #0
	str r1, [r4, r0]
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_021BB4C6:
	add r0, r4, #0
	mov r1, #5
	b _021BB3BA
_021BB4CC:
	mov r0, #6
	b _021BB3D4
_021BB4D0:
	ldr r0, _021BB5B8 ; =0x00001234
	add r0, r4, r0
	bl sub_0200B8C8
	cmp r0, #0
	ldr r0, _021BB5A4 ; =0x0000145C
	beq _021BB4E6
	mov r1, #0
	str r1, [r4, r0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021BB4E6:
	mov r1, #0
	str r1, [r4, r0]
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_021BB4EE:
	ldr r0, _021BB5A4 ; =0x0000145C
	mov r1, #0
	str r1, [r4, r0]
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_021BB4F8:
	ldr r0, _021BB5A4 ; =0x0000145C
	mov r1, #0
	str r1, [r4, r0]
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_021BB502:
	bl sub_021A5768
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0x78
	add r0, #0x78
	ldr r1, [r4, r1]
	ldr r0, [r4, r0]
	add r1, r1, #1
	add r5, #0x78
	str r1, [r4, r5]
	ldr r1, _021BB5BC ; =0x00001C20
	cmp r0, r1
	bls _021BB532
	ldr r3, _021BB5C0 ; =0x000003F7
	mov r0, #0
	mov r1, #0
	mov r2, #0
	bl sub_020424AC
	add r0, r4, #0
	mov r1, #8
	bl ovy260_21bb6f0
_021BB532:
	ldr r0, [r6, #4]
	cmp r0, #0
	beq _021BB54A
	cmp r0, #8
	bne _021BB542
	bl sub_02012028
	b _021BB54A
_021BB542:
	add r0, r4, #0
	mov r1, #8
	bl ovy260_21bb6c4
_021BB54A:
	ldrb r0, [r6]
	cmp r0, #0
	beq _021BB58E
	mov r0, #0
	strb r0, [r6]
	ldr r0, [r6, #4]
	cmp r0, #0
	bne _021BB58E
_021BB55A:
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	sub r0, r0, #4
	str r1, [r4, r0]
	b _021BB58E
_021BB566:
	bl sub_021A5768
	ldrb r0, [r6, #1]
	cmp r0, #0
	beq _021BB58E
	mov r0, #0
	strb r0, [r6, #1]
	b _021BB55A
_021BB576:
	bl sub_021A5768
	ldrb r0, [r6]
	cmp r0, #0
	beq _021BB58E
	mov r0, #0
	strb r0, [r6]
	add r1, r5, #4
	ldr r1, [r4, r1]
	add r0, r4, #0
_021BB58A:
	bl ovy260_21bb6c4
_021BB58E:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021BB594: .word 0x021c1ca0
_021BB598: .word ovy260_21bb71c
_021BB59C: .word 0x021C00A4
_021BB5A0: .word 0x021C00AC
_021BB5A4: .word 0x0000145C
_021BB5A8: .word 0x00001450
_021BB5AC: .word 0x021C00C0
_021BB5B0: .word 0x021BFF84
_021BB5B4: .word 0x00001394
_021BB5B8: .word 0x00001234
_021BB5BC: .word 0x00001C20
_021BB5C0: .word 0x000003F7
_021BB5C4: .word 0x00001448
	thumb_func_end ovy260_21bb354

	thumb_func_start sub_021BB5C8
sub_021BB5C8: ; 0x021BB5C8
	mov r2, #0
	lsr r3, r1, #2
	beq _021BB5E0
_021BB5CE:
	lsl r1, r2, #2
	ldr r1, [r0, r1]
	cmp r1, #0
	beq _021BB5DA
	mov r0, #0
	bx lr
_021BB5DA:
	add r2, r2, #1
	cmp r2, r3
	blo _021BB5CE
_021BB5E0:
	mov r0, #1
	bx lr
	thumb_func_end sub_021BB5C8

	thumb_func_start ovy260_21bb5e4
ovy260_21bb5e4: ; 0x021BB5E4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	cmp r2, #3
	beq _021BB5F0
	cmp r2, #6
	bne _021BB60C
_021BB5F0:
	ldr r5, _021BB610 ; =0x00001220
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021BB606
	bl sub_0219D124
	ldr r0, [r4, r5]
	bl sub_0219D1F0
	mov r0, #0
	str r0, [r4, r5]
_021BB606:
	add r0, r4, #0
	bl ovy260_21b9d90
_021BB60C:
	pop {r3, r4, r5, pc}
	nop
_021BB610: .word 0x00001220
	thumb_func_end ovy260_21bb5e4
_021BB614:
	.byte 0x03, 0x2A, 0x01, 0xD0, 0x06, 0x2A, 0x02, 0xD1, 0x02, 0x49, 0x40, 0x58
	.byte 0x70, 0x47, 0x00, 0x20, 0x70, 0x47, 0xC0, 0x46, 0x5C, 0x14, 0x00, 0x00

	thumb_func_start ovy260_21bb62c
ovy260_21bb62c: ; 0x021BB62C
	push {r3, lr}
	cmp r0, #9
	bhi _021BB680
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021BB63E: ; jump table
	.short _021BB652 - _021BB63E - 2 ; case 0
	.short _021BB660 - _021BB63E - 2 ; case 1
	.short _021BB664 - _021BB63E - 2 ; case 2
	.short _021BB668 - _021BB63E - 2 ; case 3
	.short _021BB66C - _021BB63E - 2 ; case 4
	.short _021BB670 - _021BB63E - 2 ; case 5
	.short _021BB674 - _021BB63E - 2 ; case 6
	.short _021BB678 - _021BB63E - 2 ; case 7
	.short _021BB67C - _021BB63E - 2 ; case 8
	.short _021BB680 - _021BB63E - 2 ; case 9
_021BB652:
	ldr r0, _021BB684 ; =0x021BFF84
	ldr r2, _021BB688 ; =0x021BFF88
	mov r1, #0
	bl sub_0203CB80
	mov r0, #0
	pop {r3, pc}
_021BB660:
	mov r0, #0x34
	pop {r3, pc}
_021BB664:
	mov r0, #0x35
	pop {r3, pc}
_021BB668:
	mov r0, #0x36
	pop {r3, pc}
_021BB66C:
	mov r0, #0x37
	pop {r3, pc}
_021BB670:
	mov r0, #0x38
	pop {r3, pc}
_021BB674:
	mov r0, #0x39
	pop {r3, pc}
_021BB678:
	mov r0, #0x3a
	pop {r3, pc}
_021BB67C:
	mov r0, #0x3b
	pop {r3, pc}
_021BB680:
	mov r0, #0x3c
	pop {r3, pc}
	.align 2, 0
_021BB684: .word 0x021BFF84
_021BB688: .word 0x021BFF88
	thumb_func_end ovy260_21bb62c

	thumb_func_start sub_021BB68C
sub_021BB68C: ; 0x021BB68C
	ldr r2, _021BB698 ; =0x00001234
	ldr r3, _021BB69C ; =MI_CpuCopy8
	add r0, r0, r2
	mov r2, #0x16
	lsl r2, r2, #4
	bx r3
	.align 2, 0
_021BB698: .word 0x00001234
_021BB69C: .word MI_CpuCopy8
	thumb_func_end sub_021BB68C

	thumb_func_start ovy260_21bb6a0
ovy260_21bb6a0: ; 0x021BB6A0
	push {r3, r4}
	ldr r2, _021BB6C0 ; =0x021c1ca0
	mov r4, #0
	strb r4, [r2]
	str r4, [r2, #4]
	mov r2, #0x13
	lsl r2, r2, #4
	str r1, [r0, r2]
	mov r1, #0x64
	mov r3, #0x64
	add r1, #0xc8
	str r3, [r0, r1]
	add r2, #0x74
	str r4, [r0, r2]
	pop {r3, r4}
	bx lr
	.align 2, 0
_021BB6C0: .word 0x021c1ca0
	thumb_func_end ovy260_21bb6a0

	thumb_func_start ovy260_21bb6c4
ovy260_21bb6c4: ; 0x021BB6C4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r6, #0x13
	ldr r0, _021BB6EC ; =0x021c1ca0
	mov r1, #0
	strb r1, [r0]
	str r1, [r0, #4]
	lsl r6, r6, #4
	mov r0, #0xc8
	str r4, [r5, r6]
	mov r1, #0xc8
	add r0, #0x64
	str r1, [r5, r0]
	bl sub_021A57DC
	cmp r0, #0
	bne _021BB6EA
	str r4, [r5, r6]
_021BB6EA:
	pop {r4, r5, r6, pc}
	.align 2, 0
_021BB6EC: .word 0x021c1ca0
	thumb_func_end ovy260_21bb6c4

	thumb_func_start ovy260_21bb6f0
ovy260_21bb6f0: ; 0x021BB6F0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r6, #0x13
	ldr r0, _021BB718 ; =0x021c1ca0
	mov r1, #0
	strb r1, [r0]
	lsl r6, r6, #4
	str r1, [r0, #4]
	sub r1, r6, #4
	str r4, [r5, r6]
	add r0, r1, #0
	str r1, [r5, r0]
	bl sub_021A5938
	cmp r0, #0
	bne _021BB714
	str r4, [r5, r6]
_021BB714:
	pop {r4, r5, r6, pc}
	nop
_021BB718: .word 0x021c1ca0
	thumb_func_end ovy260_21bb6f0

	thumb_func_start ovy260_21bb71c
ovy260_21bb71c: ; 0x021BB71C
	push {r4, lr}
	add r4, r1, #0
	cmp r4, #8
	bhi _021BB746
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021BB730: ; jump table
	.short _021BB746 - _021BB730 - 2 ; case 0
	.short _021BB746 - _021BB730 - 2 ; case 1
	.short _021BB746 - _021BB730 - 2 ; case 2
	.short _021BB746 - _021BB730 - 2 ; case 3
	.short _021BB746 - _021BB730 - 2 ; case 4
	.short _021BB746 - _021BB730 - 2 ; case 5
	.short _021BB742 - _021BB730 - 2 ; case 6
	.short _021BB746 - _021BB730 - 2 ; case 7
	.short _021BB742 - _021BB730 - 2 ; case 8
_021BB742:
	bl sub_02012028
_021BB746:
	ldr r0, _021BB754 ; =0x021c1ca0
	mov r1, #1
	strb r1, [r0]
	str r4, [r0, #4]
	strb r1, [r0, #1]
	pop {r4, pc}
	nop
_021BB754: .word 0x021c1ca0
	thumb_func_end ovy260_21bb71c

	thumb_func_start ovy260_21bb758
ovy260_21bb758: ; 0x021BB758
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _021BB794 ; =0x00001220
	add r4, r1, #0
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021BB770
	ldr r0, _021BB798 ; =0x021BFF84
	ldr r2, _021BB79C ; =0x021C00CC
	mov r1, #0
	bl sub_0203CB80
_021BB770:
	mov r0, #0x4b
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
	ldr r0, [r5, #8]
	bl sub_0201736C
	bl sub_02008BDC
	add r1, r0, #0
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	bl sub_0219D1B8
	ldr r1, _021BB794 ; =0x00001220
	str r0, [r5, r1]
	pop {r3, r4, r5, pc}
	nop
_021BB794: .word 0x00001220
_021BB798: .word 0x021BFF84
_021BB79C: .word 0x021C00CC
	thumb_func_end ovy260_21bb758

	thumb_func_start ovy260_21bb7a0
ovy260_21bb7a0: ; 0x021BB7A0
	push {r3, r4, r5, r6, r7, lr}
	ldr r5, _021BB8C0 ; =0x00001220
	add r4, r0, #0
	ldr r1, [r4, r5]
	cmp r1, #0
	bne _021BB7B0
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_021BB7B0:
	mov r6, #0x4b
	lsl r6, r6, #2
	ldr r0, [r4, r6]
	cmp r0, #4
	bhi _021BB8BA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021BB7C6: ; jump table
	.short _021BB7D0 - _021BB7C6 - 2 ; case 0
	.short _021BB7E0 - _021BB7C6 - 2 ; case 1
	.short _021BB800 - _021BB7C6 - 2 ; case 2
	.short _021BB8A8 - _021BB7C6 - 2 ; case 3
	.short _021BB884 - _021BB7C6 - 2 ; case 4
_021BB7D0:
	mov r0, #5
	bl sub_0219D010
	cmp r0, #0
	beq _021BB8BA
	mov r0, #1
_021BB7DC:
	str r0, [r4, r6]
	b _021BB8BA
_021BB7E0:
	add r0, r1, #0
	bl sub_0219D0F8
	cmp r0, #0
	bne _021BB7EE
	mov r0, #2
	b _021BB7DC
_021BB7EE:
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021BB7FC
	bl sub_0219D1F0
	mov r0, #0
	str r0, [r4, r5]
_021BB7FC:
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_021BB800:
	add r0, r1, #0
	bl sub_0219D3A8
	add r7, r0, #0
	ldr r0, [r4, r5]
	bl sub_0219D140
	cmp r0, #0
	bne _021BB86E
	ldr r0, [r4, r5]
	bl sub_0219D1A4
	add r1, r6, #0
	add r1, #0xca
	cmp r7, r1
	beq _021BB836
	add r1, r6, #0
	add r1, #0xcb
	cmp r7, r1
	bne _021BB844
	mov r0, #4
	str r0, [r4, r6]
	mov r0, #0x3e
	bl sub_020120F0
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021BB836:
	mov r0, #4
	str r0, [r4, r6]
	mov r0, #0x3f
	bl sub_020120F0
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021BB844:
	add r1, r0, #0
	add r2, r0, #0
	add r1, #0x80
	add r2, #0x84
	ldr r3, [r2]
	add r2, r5, #4
	ldr r1, [r1]
	add r5, #8
	str r1, [r4, r2]
	str r3, [r4, r5]
	ldr r0, [r0]
	cmp r0, #0
	bne _021BB862
	mov r0, #3
	b _021BB7DC
_021BB862:
	bl ovy260_21bb62c
	bl sub_020120F0
	mov r0, #4
	b _021BB7DC
_021BB86E:
	cmp r0, #0xf
	beq _021BB8BA
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021BB880
	bl sub_0219D1F0
	mov r0, #0
	str r0, [r4, r5]
_021BB880:
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_021BB884:
	add r0, r5, #4
	add r0, r4, r0
	mov r1, #0
	mov r2, #8
	mov r6, #0
	blx MI_CpuFill8
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021BB8A4
	bl sub_0219D124
	ldr r0, [r4, r5]
	bl sub_0219D1F0
	str r6, [r4, r5]
_021BB8A4:
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_021BB8A8:
	cmp r1, #0
	beq _021BB8B6
	add r0, r1, #0
	bl sub_0219D1F0
	mov r0, #0
	str r0, [r4, r5]
_021BB8B6:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021BB8BA:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021BB8C0: .word 0x00001220
	thumb_func_end ovy260_21bb7a0

	thumb_func_start sub_021BB8C4
sub_021BB8C4: ; 0x021BB8C4
	ldr r2, _021BB8D4 ; =0x00001224
	ldr r3, [r0, r2]
	add r2, r2, #4
	ldr r0, [r0, r2]
	str r3, [r1]
	str r0, [r1, #4]
	bx lr
	nop
_021BB8D4: .word 0x00001224
	thumb_func_end sub_021BB8C4

	thumb_func_start ovy260_21bb8d8
ovy260_21bb8d8: ; 0x021BB8D8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _021BB924 ; =0x00001220
	add r4, r1, #0
	ldr r0, [r5, r0]
	add r6, r2, #0
	cmp r0, #0
	beq _021BB8F2
	ldr r0, _021BB928 ; =0x021BFF84
	ldr r2, _021BB92C ; =0x021C00CC
	mov r1, #0
	bl sub_0203CB80
_021BB8F2:
	ldr r0, [r5, #8]
	bl sub_0201736C
	bl sub_02008BDC
	add r1, r0, #0
	ldr r2, [r5, #0x10]
	add r0, r6, #0
	bl sub_0219D1B8
	ldr r1, _021BB924 ; =0x00001220
	ldr r3, [r4]
	str r0, [r5, r1]
	add r0, r1, #0
	add r0, #0xc
	str r3, [r5, r0]
	mov r0, #0x4b
	ldr r2, [r4, #4]
	add r1, #0x10
	str r2, [r5, r1]
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
	pop {r4, r5, r6, pc}
	nop
_021BB924: .word 0x00001220
_021BB928: .word 0x021BFF84
_021BB92C: .word 0x021C00CC
	thumb_func_end ovy260_21bb8d8

	thumb_func_start ovy260_21bb930
ovy260_21bb930: ; 0x021BB930
	push {r3, r4, r5, r6, r7, lr}
	ldr r5, _021BBA48 ; =0x00001220
	add r4, r0, #0
	ldr r1, [r4, r5]
	cmp r1, #0
	bne _021BB940
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_021BB940:
	mov r6, #0x4b
	lsl r6, r6, #2
	ldr r0, [r4, r6]
	cmp r0, #4
	bhi _021BBA44
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021BB956: ; jump table
	.short _021BB960 - _021BB956 - 2 ; case 0
	.short _021BB980 - _021BB956 - 2 ; case 1
	.short _021BB9A0 - _021BB956 - 2 ; case 2
	.short _021BBA1A - _021BB956 - 2 ; case 3
	.short _021BBA32 - _021BB956 - 2 ; case 4
_021BB960:
	mov r0, #6
	bl sub_0219D010
	cmp r0, #0
	beq _021BBA44
	ldr r0, [r4, r5]
	bl sub_0219D0EC
	add r5, #0xc
	add r1, r4, r5
	mov r2, #8
	bl sub_021A0854
	mov r0, #1
_021BB97C:
	str r0, [r4, r6]
	b _021BBA44
_021BB980:
	add r0, r1, #0
	bl sub_0219D0F8
	cmp r0, #0
	bne _021BB98E
	mov r0, #2
	b _021BB97C
_021BB98E:
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021BB99C
	bl sub_0219D1F0
	mov r0, #0
	str r0, [r4, r5]
_021BB99C:
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_021BB9A0:
	add r0, r1, #0
	bl sub_0219D3A8
	add r7, r0, #0
	ldr r0, [r4, r5]
	bl sub_0219D140
	add r1, r0, #0
	bne _021BB9FA
	ldr r0, [r4, r5]
	bl sub_0219D1A4
	add r1, r6, #0
	add r1, #0xca
	cmp r7, r1
	beq _021BB9D6
	add r1, r6, #0
	add r1, #0xcb
	cmp r7, r1
	bne _021BB9E4
	mov r0, #3
	str r0, [r4, r6]
	mov r0, #0x3e
	bl sub_020120F0
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021BB9D6:
	mov r0, #3
	str r0, [r4, r6]
	mov r0, #0x3f
	bl sub_020120F0
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021BB9E4:
	ldr r0, [r0]
	cmp r0, #0
	bne _021BB9EE
	mov r0, #4
	b _021BB97C
_021BB9EE:
	bl ovy260_21bb62c
	bl sub_020120F0
	mov r0, #3
	b _021BB97C
_021BB9FA:
	cmp r1, #0xf
	beq _021BBA44
	add r0, r4, #0
	ldr r2, _021BBA4C ; =0x0000170B
	add r0, #0x18
	bl sub_021BBE80
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021BBA16
	bl sub_0219D1F0
	mov r0, #0
	str r0, [r4, r5]
_021BBA16:
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_021BBA1A:
	cmp r1, #0
	beq _021BBA2E
	add r0, r1, #0
	bl sub_0219D124
	ldr r0, [r4, r5]
	bl sub_0219D1F0
	mov r0, #0
	str r0, [r4, r5]
_021BBA2E:
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_021BBA32:
	cmp r1, #0
	beq _021BBA40
	add r0, r1, #0
	bl sub_0219D1F0
	mov r0, #0
	str r0, [r4, r5]
_021BBA40:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021BBA44:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BBA48: .word 0x00001220
_021BBA4C: .word 0x0000170B
	thumb_func_end ovy260_21bb930

	thumb_func_start ovy260_21bba50
ovy260_21bba50: ; 0x021BBA50
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r0, _021BBB0C ; =0x00001494
	add r6, r2, #0
	str r0, [sp, #0x14]
	str r1, [r5, r0]
	add r0, r1, #0
	mov r1, #0x49
	lsl r1, r1, #2
	ldrh r1, [r5, r1]
	bl sub_02008BB0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	mov r1, #0
	sub r0, #0x28
	add r0, r5, r0
	mov r2, #0x28
	mov r4, #0
	blx MI_CpuFill8
	ldr r0, [sp, #0x14]
	sub r0, r0, #4
	strh r6, [r5, r0]
	ldr r0, [sp, #0x10]
	bl sub_020486F0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	bl sub_020485F8
	add r0, r0, #1
	beq _021BBACE
	ldr r0, [sp, #0x14]
	str r0, [sp, #0x18]
	sub r0, #0x28
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	sub r0, #0x28
	str r0, [sp, #0x14]
_021BBAA2:
	ldr r0, [sp, #0xc]
	lsl r6, r4, #1
	ldrh r7, [r0, r6]
	bl sub_020486F4
	cmp r7, r0
	bne _021BBABA
	ldr r0, [sp, #0x14]
	add r2, r5, r6
	mov r1, #0
	strh r1, [r2, r0]
	b _021BBAC0
_021BBABA:
	ldr r0, [sp, #0x18]
	add r1, r5, r6
	strh r7, [r1, r0]
_021BBAC0:
	ldr r0, [sp, #0x10]
	add r4, r4, #1
	bl sub_020485F8
	add r0, r0, #1
	cmp r4, r0
	blo _021BBAA2
_021BBACE:
	ldr r1, _021BBB10 ; =0x0000146C
	mov r3, #0
	add r0, r1, #0
	add r2, r5, r1
	add r0, #0x18
	str r2, [r5, r0]
	add r0, r1, #0
	mov r2, #0
	add r0, #0x20
	str r2, [r5, r0]
	add r0, r1, #0
	add r0, #0x1c
	add r0, r5, r0
	str r0, [sp]
	add r0, r1, #0
	add r0, #0x20
	add r0, r5, r0
	str r0, [sp, #4]
	mov r0, #0x80
	add r1, #0x18
	str r0, [sp, #8]
	add r0, r5, r1
	mov r1, #1
	bl sub_0216BEA4
	ldr r0, [sp, #0x10]
	bl sub_02048564
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021BBB0C: .word 0x00001494
_021BBB10: .word 0x0000146C
	thumb_func_end ovy260_21bba50

	thumb_func_start ovy260_21bbb14
ovy260_21bbb14: ; 0x021BBB14
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl sub_0216BED4
	mov r4, #1
	cmp r0, #2
	beq _021BBB26
	mov r4, #0
_021BBB26:
	cmp r4, #0
	beq _021BBB3A
	ldr r0, _021BBB78 ; =0x0000148C
	ldr r0, [r5, r0]
	cmp r0, #0
	ble _021BBB36
	mov r0, #1
	b _021BBB38
_021BBB36:
	mov r0, #0
_021BBB38:
	str r0, [r6]
_021BBB3A:
	cmp r4, #1
	bne _021BBB74
	ldr r0, [r6]
	cmp r0, #1
	bne _021BBB74
	mov r3, #0x65
	add r3, #0xbf
	ldrh r3, [r5, r3]
	mov r0, #0
	mov r1, #2
	mov r2, #0x65
	bl sub_0204875C
	add r7, r0, #0
	mov r1, #0x19
	bl sub_0204898C
	add r6, r0, #0
	add r0, r7, #0
	bl sub_020487D4
	ldr r0, _021BBB7C ; =0x00001494
	add r1, r6, #0
	ldr r0, [r5, r0]
	bl sub_02008B84
	add r0, r6, #0
	bl sub_02048564
_021BBB74:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BBB78: .word 0x0000148C
_021BBB7C: .word 0x00001494
	thumb_func_end ovy260_21bbb14

	thumb_func_start ovy260_21bbb80
ovy260_21bbb80: ; 0x021BBB80
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r7, #0x4b
	add r5, r0, #0
	mov r4, #0
	lsl r7, r7, #2
	str r4, [r5, r7]
	ldr r0, [r5, #8]
	add r6, r1, #0
	str r2, [sp]
	bl sub_0201736C
	bl sub_02008BDC
	add r1, r0, #0
	add r0, r7, #0
	sub r0, #8
	ldrh r0, [r5, r0]
	ldr r2, [r5, #0x10]
	bl sub_0219D1B8
	ldr r1, _021BBC4C ; =0x00001220
	str r0, [r5, r1]
	ldr r0, [sp]
	cmp r0, #0
	beq _021BBBBC
	cmp r0, #1
	beq _021BBBEC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021BBBBC:
	bl sub_0201C2C8
	add r1, r7, #0
	add r2, r0, #0
	ldr r0, _021BBC4C ; =0x00001220
	sub r1, #8
	ldrh r1, [r5, r1]
	ldr r0, [r5, r0]
	add r3, r4, #0
	bl sub_0219D258
	bl sub_0201C2C8
	add r2, r0, #0
	ldr r0, _021BBC4C ; =0x00001220
	add r1, r6, #0
	ldr r0, [r5, r0]
	bl sub_0219D290
	mov r0, #1
	add r7, #0x4c
	add sp, #8
	str r0, [r5, r7]
	pop {r3, r4, r5, r6, r7, pc}
_021BBBEC:
	bl sub_0201C2C8
	str r0, [sp, #4]
	add r0, r6, #0
	bl sub_0201FDF8
	add r2, r0, #0
	ldr r0, _021BBC4C ; =0x00001220
	sub r7, #8
	ldr r3, [sp, #4]
	ldrh r1, [r5, r7]
	mul r2, r3
	ldr r0, [r5, r0]
	add r3, r4, #0
	bl sub_0219D258
	add r0, r6, #0
	bl sub_0201FDF8
	cmp r0, #0
	ble _021BBC3C
_021BBC16:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0201FF08
	add r7, r0, #0
	bl sub_0201C2C8
	add r2, r0, #0
	ldr r0, _021BBC4C ; =0x00001220
	add r1, r7, #0
	ldr r0, [r5, r0]
	bl sub_0219D290
	add r0, r6, #0
	add r4, r4, #1
	bl sub_0201FDF8
	cmp r4, r0
	blt _021BBC16
_021BBC3C:
	add r0, r6, #0
	bl sub_0201FDF8
	mov r1, #0x5e
	lsl r1, r1, #2
	str r0, [r5, r1]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BBC4C: .word 0x00001220
	thumb_func_end ovy260_21bbb80

	thumb_func_start ovy260_21bbc50
ovy260_21bbc50: ; 0x021BBC50
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0x4b
	add r5, r0, #0
	lsl r6, r6, #2
	ldr r0, [r5, r6]
	add r7, r1, #0
	cmp r0, #0
	beq _021BBC6C
	cmp r0, #1
	beq _021BBCB0
	cmp r0, #2
	bne _021BBC6A
	b _021BBDBE
_021BBC6A:
	b _021BBE22
_021BBC6C:
	ldr r4, _021BBE28 ; =0x00001220
	ldr r0, [r5, r4]
	bl sub_0219D2B0
	cmp r0, #0
	ldr r0, [r5, r4]
	beq _021BBC9E
	bl sub_0219D0F8
	cmp r0, #0
	bne _021BBC8A
_021BBC82:
	ldr r0, [r5, r6]
	add r0, r0, #1
	str r0, [r5, r6]
	b _021BBE22
_021BBC8A:
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021BBC9A
	bl sub_0219D1F0
	mov r0, #0
	str r0, [r5, r4]
	str r0, [r5, r6]
_021BBC9A:
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_021BBC9E:
	cmp r0, #0
	beq _021BBCAC
	bl sub_0219D1F0
	mov r0, #0
	str r0, [r5, r4]
	str r0, [r5, r6]
_021BBCAC:
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_021BBCB0:
	ldr r4, _021BBE28 ; =0x00001220
	ldr r0, [r5, r4]
	bl sub_0219D3A8
	add r7, r0, #0
	ldr r0, [r5, r4]
	bl sub_0219D140
	add r1, r0, #0
	bne _021BBD96
	add r0, r6, #0
	add r0, #0x65
	cmp r7, r0
	bgt _021BBCEC
	add r0, r6, #0
	add r0, #0x64
	cmp r7, r0
	blt _021BBCE6
	add r0, r6, #0
	add r0, #0x64
	cmp r7, r0
	beq _021BBCF6
	add r0, r6, #0
	add r0, #0x65
	cmp r7, r0
	beq _021BBD1C
	b _021BBD68
_021BBCE6:
	cmp r7, #0xc8
	beq _021BBD94
	b _021BBD68
_021BBCEC:
	add r0, r6, #0
	add r0, #0x6c
	cmp r7, r0
	beq _021BBD42
	b _021BBD68
_021BBCF6:
	mov r0, #0x41
	bl sub_020120F0
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021BBD18
	bl sub_0219D384
	ldr r0, [r5, r4]
	bl sub_0219D1F0
	ldr r0, [r5, r4]
	bl sub_0219D124
	mov r0, #0
	str r0, [r5, r4]
	str r0, [r5, r6]
_021BBD18:
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_021BBD1C:
	mov r0, #0x42
	bl sub_020120F0
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021BBD3E
	bl sub_0219D384
	ldr r0, [r5, r4]
	bl sub_0219D1F0
	ldr r0, [r5, r4]
	bl sub_0219D124
	mov r0, #0
	str r0, [r5, r4]
	str r0, [r5, r6]
_021BBD3E:
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_021BBD42:
	mov r0, #0x44
	bl sub_020120F0
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021BBD64
	bl sub_0219D384
	ldr r0, [r5, r4]
	bl sub_0219D1F0
	ldr r0, [r5, r4]
	bl sub_0219D124
	mov r0, #0
	str r0, [r5, r4]
	str r0, [r5, r6]
_021BBD64:
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_021BBD68:
	mov r0, #0x43
	mov r4, #0x43
	bl sub_020120F0
	ldr r6, _021BBE28 ; =0x00001220
	ldr r0, [r5, r6]
	cmp r0, #0
	beq _021BBD90
	bl sub_0219D384
	ldr r0, [r5, r6]
	bl sub_0219D1F0
	ldr r0, [r5, r6]
	bl sub_0219D124
	mov r0, #0
	str r0, [r5, r6]
	add r4, #0xe9
	str r0, [r5, r4]
_021BBD90:
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_021BBD94:
	b _021BBC82
_021BBD96:
	cmp r1, #0xf
	beq _021BBE22
	add r0, r5, #0
	ldr r2, _021BBE2C ; =0x0000180F
	add r0, #0x18
	bl sub_021BBE80
	ldr r0, [r5, r4]
	bl sub_0219D384
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021BBDBA
	bl sub_0219D1F0
	mov r0, #0
	str r0, [r5, r4]
	str r0, [r5, r6]
_021BBDBA:
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_021BBDBE:
	ldr r0, _021BBE28 ; =0x00001220
	ldr r0, [r5, r0]
	bl sub_0219D1A4
	str r0, [sp]
	bl sub_0219D3E4
	strb r0, [r7]
	add r0, r6, #0
	add r0, #0x4c
	ldr r1, [r5, r0]
	mov r4, #0
	cmp r1, #0
	bls _021BBDF2
	add r6, #0x4c
_021BBDDC:
	ldr r0, [sp]
	add r1, r4, #0
	bl sub_0219D3E8
	lsl r1, r4, #2
	add r1, r7, r1
	str r0, [r1, #4]
	ldr r1, [r5, r6]
	add r4, r4, #1
	cmp r4, r1
	blo _021BBDDC
_021BBDF2:
	ldrb r0, [r7]
	cmp r0, #0
	bne _021BBE08
	ldr r0, [sp]
	bl sub_0219D408
	add r7, #0x1c
	add r1, r7, #0
	mov r2, #0x80
	blx MI_CpuCopy8
_021BBE08:
	ldr r4, _021BBE28 ; =0x00001220
	ldr r0, [r5, r4]
	bl sub_0219D384
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021BBE1E
	bl sub_0219D1F0
	mov r0, #0
	str r0, [r5, r4]
_021BBE1E:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021BBE22:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021BBE28: .word 0x00001220
_021BBE2C: .word 0x0000180F
	thumb_func_end ovy260_21bbc50

	thumb_func_start ovy260_21bbe30
ovy260_21bbe30: ; 0x021BBE30
	push {r3, lr}
	str r1, [r0, #0x18]
	mov r1, #5
	str r1, [r0, #0x1c]
	ldr r3, _021BBE48 ; =0x000003F5
	mov r0, #0
	mov r1, #0
	mov r2, #0
	bl sub_020424AC
	pop {r3, pc}
	nop
_021BBE48: .word 0x000003F5
	thumb_func_end ovy260_21bbe30

	thumb_func_start ovy260_21bbe4c
ovy260_21bbe4c: ; 0x021BBE4C
	push {r3, lr}
	str r1, [r0]
	mov r1, #1
	str r1, [r0, #0x1c]
	ldr r3, _021BBE64 ; =0x000003F7
	mov r0, #0
	mov r1, #0
	mov r2, #0
	bl sub_020424AC
	pop {r3, pc}
	nop
_021BBE64: .word 0x000003F7
	thumb_func_end ovy260_21bbe4c

	thumb_func_start sub_021BBE68
sub_021BBE68: ; 0x021BBE68
	str r1, [r0, #4]
	mov r1, #2
	str r1, [r0, #0x1c]
	bx lr
	thumb_func_end sub_021BBE68

	thumb_func_start sub_021BBE70
sub_021BBE70: ; 0x021BBE70
	str r1, [r0, #8]
	mov r1, #2
	str r1, [r0, #0x1c]
	bx lr
	thumb_func_end sub_021BBE70

	thumb_func_start sub_021BBE78
sub_021BBE78: ; 0x021BBE78
	str r1, [r0, #0xc]
	mov r1, #2
	str r1, [r0, #0x1c]
	bx lr
	thumb_func_end sub_021BBE78

	thumb_func_start sub_021BBE80
sub_021BBE80: ; 0x021BBE80
	str r1, [r0, #0x14]
	mov r1, #4
	str r1, [r0, #0x1c]
	bx lr
	thumb_func_end sub_021BBE80

	thumb_func_start ovy260_21bbe88
ovy260_21bbe88: ; 0x021BBE88
	push {r3, lr}
	cmp r0, #0xe
	bhi _021BBEF4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021BBE9A: ; jump table
	.short _021BBEB8 - _021BBE9A - 2 ; case 0
	.short _021BBEBC - _021BBE9A - 2 ; case 1
	.short _021BBEC0 - _021BBE9A - 2 ; case 2
	.short _021BBEC4 - _021BBE9A - 2 ; case 3
	.short _021BBEC8 - _021BBE9A - 2 ; case 4
	.short _021BBECC - _021BBE9A - 2 ; case 5
	.short _021BBED0 - _021BBE9A - 2 ; case 6
	.short _021BBED4 - _021BBE9A - 2 ; case 7
	.short _021BBED8 - _021BBE9A - 2 ; case 8
	.short _021BBEDC - _021BBE9A - 2 ; case 9
	.short _021BBEE0 - _021BBE9A - 2 ; case 10
	.short _021BBEE4 - _021BBE9A - 2 ; case 11
	.short _021BBEE8 - _021BBE9A - 2 ; case 12
	.short _021BBEEC - _021BBE9A - 2 ; case 13
	.short _021BBEF0 - _021BBE9A - 2 ; case 14
_021BBEB8:
	mov r0, #0
	pop {r3, pc}
_021BBEBC:
	mov r0, #2
	pop {r3, pc}
_021BBEC0:
	mov r0, #2
	pop {r3, pc}
_021BBEC4:
	mov r0, #2
	pop {r3, pc}
_021BBEC8:
	mov r0, #2
	pop {r3, pc}
_021BBECC:
	mov r0, #2
	pop {r3, pc}
_021BBED0:
	mov r0, #2
	pop {r3, pc}
_021BBED4:
	mov r0, #2
	pop {r3, pc}
_021BBED8:
	mov r0, #2
	pop {r3, pc}
_021BBEDC:
	mov r0, #2
	pop {r3, pc}
_021BBEE0:
	mov r0, #2
	pop {r3, pc}
_021BBEE4:
	mov r0, #2
	pop {r3, pc}
_021BBEE8:
	mov r0, #2
	pop {r3, pc}
_021BBEEC:
	mov r0, #2
	pop {r3, pc}
_021BBEF0:
	mov r0, #2
	pop {r3, pc}
_021BBEF4:
	ldr r0, _021BBF04 ; =0x021BFF84
	ldr r2, _021BBF08 ; =0x021BFF88
	mov r1, #0
	bl sub_0203CB80
	mov r0, #0
	pop {r3, pc}
	nop
_021BBF04: .word 0x021BFF84
_021BBF08: .word 0x021BFF88
	thumb_func_end ovy260_21bbe88

	thumb_func_start sub_021BBF0C
sub_021BBF0C: ; 0x021BBF0C
	cmp r0, #0x16
	bhi _021BBF5E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021BBF1C: ; jump table
	.short _021BBF5E - _021BBF1C - 2 ; case 0
	.short _021BBF4A - _021BBF1C - 2 ; case 1
	.short _021BBF4A - _021BBF1C - 2 ; case 2
	.short _021BBF4A - _021BBF1C - 2 ; case 3
	.short _021BBF4A - _021BBF1C - 2 ; case 4
	.short _021BBF4A - _021BBF1C - 2 ; case 5
	.short _021BBF4E - _021BBF1C - 2 ; case 6
	.short _021BBF4E - _021BBF1C - 2 ; case 7
	.short _021BBF4E - _021BBF1C - 2 ; case 8
	.short _021BBF4E - _021BBF1C - 2 ; case 9
	.short _021BBF4E - _021BBF1C - 2 ; case 10
	.short _021BBF4E - _021BBF1C - 2 ; case 11
	.short _021BBF4E - _021BBF1C - 2 ; case 12
	.short _021BBF4E - _021BBF1C - 2 ; case 13
	.short _021BBF4E - _021BBF1C - 2 ; case 14
	.short _021BBF4E - _021BBF1C - 2 ; case 15
	.short _021BBF4E - _021BBF1C - 2 ; case 16
	.short _021BBF52 - _021BBF1C - 2 ; case 17
	.short _021BBF52 - _021BBF1C - 2 ; case 18
	.short _021BBF56 - _021BBF1C - 2 ; case 19
	.short _021BBF5E - _021BBF1C - 2 ; case 20
	.short _021BBF5A - _021BBF1C - 2 ; case 21
	.short _021BBF5A - _021BBF1C - 2 ; case 22
_021BBF4A:
	mov r0, #2
	bx lr
_021BBF4E:
	mov r0, #1
	bx lr
_021BBF52:
	mov r0, #2
	bx lr
_021BBF56:
	mov r0, #1
	bx lr
_021BBF5A:
	mov r0, #2
	bx lr
_021BBF5E:
	cmp r1, #4
	bhi _021BBF80
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021BBF6E: ; jump table
	.short _021BBF78 - _021BBF6E - 2 ; case 0
	.short _021BBF80 - _021BBF6E - 2 ; case 1
	.short _021BBF80 - _021BBF6E - 2 ; case 2
	.short _021BBF80 - _021BBF6E - 2 ; case 3
	.short _021BBF7C - _021BBF6E - 2 ; case 4
_021BBF78:
	mov r0, #1
	bx lr
_021BBF7C:
	mov r0, #2
	bx lr
_021BBF80:
	cmp r2, #0x1f
	bhi _021BC004
	add r0, r2, r2
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021BBF90: ; jump table
	.short _021BC004 - _021BBF90 - 2 ; case 0
	.short _021BC004 - _021BBF90 - 2 ; case 1
	.short _021BBFD0 - _021BBF90 - 2 ; case 2
	.short _021BBFD4 - _021BBF90 - 2 ; case 3
	.short _021BBFD8 - _021BBF90 - 2 ; case 4
	.short _021BBFDC - _021BBF90 - 2 ; case 5
	.short _021BBFE0 - _021BBF90 - 2 ; case 6
	.short _021BBFE4 - _021BBF90 - 2 ; case 7
	.short _021BBFE8 - _021BBF90 - 2 ; case 8
	.short _021BBFE8 - _021BBF90 - 2 ; case 9
	.short _021BBFE8 - _021BBF90 - 2 ; case 10
	.short _021BBFEC - _021BBF90 - 2 ; case 11
	.short _021BBFEC - _021BBF90 - 2 ; case 12
	.short _021BBFEC - _021BBF90 - 2 ; case 13
	.short _021BBFEC - _021BBF90 - 2 ; case 14
	.short _021BBFEC - _021BBF90 - 2 ; case 15
	.short _021BBFEC - _021BBF90 - 2 ; case 16
	.short _021BBFF0 - _021BBF90 - 2 ; case 17
	.short _021BBFF0 - _021BBF90 - 2 ; case 18
	.short _021BBFF0 - _021BBF90 - 2 ; case 19
	.short _021BBFF0 - _021BBF90 - 2 ; case 20
	.short _021BBFF0 - _021BBF90 - 2 ; case 21
	.short _021BBFF4 - _021BBF90 - 2 ; case 22
	.short _021BBFF8 - _021BBF90 - 2 ; case 23
	.short _021BBFF8 - _021BBF90 - 2 ; case 24
	.short _021BBFF8 - _021BBF90 - 2 ; case 25
	.short _021BBFF8 - _021BBF90 - 2 ; case 26
	.short _021BBFF8 - _021BBF90 - 2 ; case 27
	.short _021BBFFC - _021BBF90 - 2 ; case 28
	.short _021BBFFC - _021BBF90 - 2 ; case 29
	.short _021BC000 - _021BBF90 - 2 ; case 30
	.short _021BC000 - _021BBF90 - 2 ; case 31
_021BBFD0:
	mov r0, #2
	bx lr
_021BBFD4:
	mov r0, #2
	bx lr
_021BBFD8:
	mov r0, #1
	bx lr
_021BBFDC:
	mov r0, #2
	bx lr
_021BBFE0:
	mov r0, #2
	bx lr
_021BBFE4:
	mov r0, #2
	bx lr
_021BBFE8:
	mov r0, #2
	bx lr
_021BBFEC:
	mov r0, #1
	bx lr
_021BBFF0:
	mov r0, #1
	bx lr
_021BBFF4:
	mov r0, #2
	bx lr
_021BBFF8:
	mov r0, #1
	bx lr
_021BBFFC:
	mov r0, #2
	bx lr
_021BC000:
	mov r0, #2
	bx lr
_021BC004:
	mov r0, #0
	bx lr
	thumb_func_end sub_021BBF0C

	thumb_func_start sub_021BC008
sub_021BC008: ; 0x021BC008
	cmp r0, #0
	beq _021BC016
	cmp r0, #1
	beq _021BC01A
	cmp r0, #2
	beq _021BC01E
	b _021BC022
_021BC016:
	mov r0, #0
	bx lr
_021BC01A:
	mov r0, #1
	bx lr
_021BC01E:
	mov r0, #2
	bx lr
_021BC022:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_021BC008

	thumb_func_start sub_021BC028
sub_021BC028: ; 0x021BC028
	ldr r3, _021BC030 ; =MI_CpuFill8
	mov r1, #0
	mov r2, #0x20
	bx r3
	.align 2, 0
_021BC030: .word MI_CpuFill8
	thumb_func_end sub_021BC028

	thumb_func_start ovy260_21bc034
ovy260_21bc034: ; 0x021BC034
	push {r3, lr}
	add r2, r0, #0
	cmp r1, #0
	beq _021BC048
	mov r1, #0x49
	lsl r1, r1, #2
	ldrh r1, [r2, r1]
	mov r0, #1
	bl sub_02042BA8
_021BC048:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy260_21bc034

	thumb_func_start sub_021BC04C
sub_021BC04C: ; 0x021BC04C
	ldr r0, [r0, #4]
	ldr r3, _021BC054 ; =sub_0200A3DC
	bx r3
	nop
_021BC054: .word sub_0200A3DC
	thumb_func_end sub_021BC04C

	thumb_func_start sub_021BC058
sub_021BC058: ; 0x021BC058
	ldr r0, _021BC05C ; =0x021C0384
	bx lr
	.align 2, 0
_021BC05C: .word 0x021C0384
	thumb_func_end sub_021BC058

	thumb_func_start sub_021BC060
sub_021BC060: ; 0x021BC060
	mov r0, #0x15
	bx lr
	thumb_func_end sub_021BC060

	thumb_func_start sub_021BC064
sub_021BC064: ; 0x021BC064
	ldr r0, _021BC068 ; =0x021C0364
	bx lr
	.align 2, 0
_021BC068: .word 0x021C0364
	thumb_func_end sub_021BC064

	thumb_func_start sub_021BC06C
sub_021BC06C: ; 0x021BC06C
	mov r0, #8
	bx lr
	thumb_func_end sub_021BC06C

	thumb_func_start sub_021BC070
sub_021BC070: ; 0x021BC070
	cmp r0, #0
	bgt _021BC078
	ldr r0, _021BC18C ; =0x021C03D8
	bx lr
_021BC078:
	cmp r0, #0x1e
	bne _021BC080
	ldr r0, _021BC190 ; =0x021C03DC
	bx lr
_021BC080:
	cmp r0, #0x14
	bne _021BC088
	ldr r0, _021BC194 ; =0x021C03F4
	bx lr
_021BC088:
	cmp r0, #0x15
	bne _021BC090
	ldr r0, _021BC198 ; =0x021C0410
	bx lr
_021BC090:
	cmp r0, #0x17
	bne _021BC098
	ldr r0, _021BC19C ; =0x021C042C
	bx lr
_021BC098:
	cmp r0, #0x13
	bne _021BC0A0
	ldr r0, _021BC1A0 ; =0x021C044C
	bx lr
_021BC0A0:
	cmp r0, #0x16
	bne _021BC0A8
	ldr r0, _021BC1A4 ; =0x021C0468
	bx lr
_021BC0A8:
	cmp r0, #0x24
	bne _021BC0B0
	ldr r0, _021BC1A8 ; =0x021C0484
	bx lr
_021BC0B0:
	cmp r0, #0x19
	bne _021BC0B8
	ldr r0, _021BC1AC ; =0x021C04A4
	bx lr
_021BC0B8:
	cmp r0, #0x1a
	bne _021BC0C0
	ldr r0, _021BC1B0 ; =0x021C04C4
	bx lr
_021BC0C0:
	cmp r0, #0x1c
	bne _021BC0C8
	ldr r0, _021BC1B4 ; =0x021C04E4
	bx lr
_021BC0C8:
	cmp r0, #0x23
	bne _021BC0D0
	ldr r0, _021BC1B8 ; =0x021C04FC
	bx lr
_021BC0D0:
	cmp r0, #0x1d
	bne _021BC0D8
	ldr r0, _021BC1BC ; =0x021C0514
	bx lr
_021BC0D8:
	cmp r0, #0x1f
	bne _021BC0E0
	ldr r0, _021BC1C0 ; =0x021C052C
	bx lr
_021BC0E0:
	cmp r0, #0x20
	bne _021BC0E8
	ldr r0, _021BC1C4 ; =0x021C0544
	bx lr
_021BC0E8:
	cmp r0, #0x21
	bne _021BC0F0
	ldr r0, _021BC1C8 ; =0x021C055C
	bx lr
_021BC0F0:
	cmp r0, #0x1b
	bne _021BC0F8
	ldr r0, _021BC1CC ; =0x021C0574
	bx lr
_021BC0F8:
	cmp r0, #0x18
	bne _021BC100
	ldr r0, _021BC1D0 ; =0x021C0590
	bx lr
_021BC100:
	cmp r0, #0x27
	bne _021BC108
	ldr r0, _021BC1D4 ; =0x021C05A0
	bx lr
_021BC108:
	cmp r0, #4
	bne _021BC110
	ldr r0, _021BC1D8 ; =0x021C05B8
	bx lr
_021BC110:
	cmp r0, #3
	bne _021BC118
	ldr r0, _021BC1DC ; =0x021C05D4
	bx lr
_021BC118:
	cmp r0, #0x28
	bne _021BC120
	ldr r0, _021BC1E0 ; =0x021C05E8
	bx lr
_021BC120:
	cmp r0, #0xb
	bne _021BC128
	ldr r0, _021BC1E4 ; =0x021C0604
	bx lr
_021BC128:
	cmp r0, #0xc
	bne _021BC130
	ldr r0, _021BC1E8 ; =0x021C061C
	bx lr
_021BC130:
	cmp r0, #0xe
	bne _021BC138
	ldr r0, _021BC1EC ; =0x021C0634
	bx lr
_021BC138:
	cmp r0, #0xd
	bne _021BC140
	ldr r0, _021BC1F0 ; =0x021C064C
	bx lr
_021BC140:
	cmp r0, #0x12
	bne _021BC148
	ldr r0, _021BC1F4 ; =0x021C0664
	bx lr
_021BC148:
	cmp r0, #0x11
	bne _021BC150
	ldr r0, _021BC1F8 ; =0x021C0680
	bx lr
_021BC150:
	cmp r0, #0xa
	bne _021BC158
	ldr r0, _021BC1FC ; =0x021C0698
	bx lr
_021BC158:
	cmp r0, #9
	bne _021BC160
	ldr r0, _021BC200 ; =0x021C06B0
	bx lr
_021BC160:
	cmp r0, #0x10
	bne _021BC168
	ldr r0, _021BC204 ; =0x021C06C8
	bx lr
_021BC168:
	cmp r0, #0xf
	bne _021BC170
	ldr r0, _021BC208 ; =0x021C06E0
	bx lr
_021BC170:
	cmp r0, #0x26
	bne _021BC178
	ldr r0, _021BC20C ; =0x021C06F8
	bx lr
_021BC178:
	cmp r0, #0x25
	bne _021BC180
	ldr r0, _021BC210 ; =0x021C0714
	bx lr
_021BC180:
	cmp r0, #0x22
	bne _021BC188
	ldr r0, _021BC214 ; =0x021C072C
	bx lr
_021BC188:
	ldr r0, _021BC18C ; =0x021C03D8
	bx lr
	.align 2, 0
_021BC18C: .word 0x021C03D8
_021BC190: .word 0x021C03DC
_021BC194: .word 0x021C03F4
_021BC198: .word 0x021C0410
_021BC19C: .word 0x021C042C
_021BC1A0: .word 0x021C044C
_021BC1A4: .word 0x021C0468
_021BC1A8: .word 0x021C0484
_021BC1AC: .word 0x021C04A4
_021BC1B0: .word 0x021C04C4
_021BC1B4: .word 0x021C04E4
_021BC1B8: .word 0x021C04FC
_021BC1BC: .word 0x021C0514
_021BC1C0: .word 0x021C052C
_021BC1C4: .word 0x021C0544
_021BC1C8: .word 0x021C055C
_021BC1CC: .word 0x021C0574
_021BC1D0: .word 0x021C0590
_021BC1D4: .word 0x021C05A0
_021BC1D8: .word 0x021C05B8
_021BC1DC: .word 0x021C05D4
_021BC1E0: .word 0x021C05E8
_021BC1E4: .word 0x021C0604
_021BC1E8: .word 0x021C061C
_021BC1EC: .word 0x021C0634
_021BC1F0: .word 0x021C064C
_021BC1F4: .word 0x021C0664
_021BC1F8: .word 0x021C0680
_021BC1FC: .word 0x021C0698
_021BC200: .word 0x021C06B0
_021BC204: .word 0x021C06C8
_021BC208: .word 0x021C06E0
_021BC20C: .word 0x021C06F8
_021BC210: .word 0x021C0714
_021BC214: .word 0x021C072C
	thumb_func_end sub_021BC070

	thumb_func_start ovy260_21bc218
ovy260_21bc218: ; 0x021BC218
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _021BC254 ; =0x02190698
	ldr r0, [r0]
	cmp r0, #1
	beq _021BC228
	mov r0, #1
	pop {r4, r5, r6, pc}
_021BC228:
	bl sub_0216C9F4
	cmp r0, #0
	beq _021BC234
	mov r0, #2
	pop {r4, r5, r6, pc}
_021BC234:
	mov r0, #0x4c
	mov r6, #0x4c
	bl sub_0216DDDC
	add r4, r0, #0
	bne _021BC244
	mov r0, #3
	pop {r4, r5, r6, pc}
_021BC244:
	mov r1, #0
	add r2, r6, #0
	blx sub_020839D0
	str r4, [r5]
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_021BC254: .word 0x02190698
	thumb_func_end ovy260_21bc218

	thumb_func_start sub_021BC258
sub_021BC258: ; 0x021BC258
	ldr r3, _021BC25C ; =sub_0216DDFC
	bx r3
	.align 2, 0
_021BC25C: .word sub_0216DDFC
	thumb_func_end sub_021BC258

	thumb_func_start ovy260_21bc260
ovy260_21bc260: ; 0x021BC260
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, r5, #4
	add r4, r2, #0
	add r6, r3, #0
	blx sub_02085DB8
	add r0, r5, #0
	add r0, #0x18
	add r1, r6, #0
	blx sub_02085DB8
	mov r0, #1
	str r4, [r5, #0x14]
	str r0, [r5]
	pop {r4, r5, r6, pc}
	thumb_func_end ovy260_21bc260

	thumb_func_start ovy260_21bc280
ovy260_21bc280: ; 0x021BC280
	push {r3, r4}
	add r4, r0, #0
	str r1, [r0, #0x28]
	add r4, #0x2c
	mov r3, #0x19
_021BC28A:
	ldrb r1, [r2]
	add r2, r2, #1
	strb r1, [r4]
	add r4, r4, #1
	sub r3, r3, #1
	bne _021BC28A
	mov r1, #1
	str r1, [r0, #0x24]
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ovy260_21bc280

	thumb_func_start sub_021BC2A0
sub_021BC2A0: ; 0x021BC2A0
	ldr r0, [r0, #0x48]
	bx lr
	thumb_func_end sub_021BC2A0

	thumb_func_start ovy260_21bc2a4
ovy260_21bc2a4: ; 0x021BC2A4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r1, #0
	add r4, r2, #0
	str r3, [sp]
	ldr r1, [sp, #0x18]
	add r2, r6, #0
	add r3, r4, #0
	add r5, r0, #0
	bl ovy260_21bc478
	add r4, r0, #0
	bne _021BC2C4
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_021BC2C4:
	ldr r1, [sp, #0x1c]
	blx r1
	str r0, [r5, #0x48]
	cmp r0, #0
	beq _021BC2DA
	add r0, r4, #0
	bl sub_021BC4D4
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_021BC2DA:
	add r0, r4, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ovy260_21bc2a4

	thumb_func_start ovy260_21bc2e0
ovy260_21bc2e0: ; 0x021BC2E0
	push {r3, lr}
	cmp r0, #0
	beq _021BC2F6
	cmp r1, #0
	beq _021BC2F6
	ldr r0, [r1, #0x20]
	cmp r0, #0
	beq _021BC2F6
	ldr r0, [r0, #0x24]
	cmp r0, #0
	bne _021BC2FA
_021BC2F6:
	mov r0, #3
	pop {r3, pc}
_021BC2FA:
	bl sub_0216CA68
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy260_21bc2e0

	thumb_func_start ovy260_21bc304
ovy260_21bc304: ; 0x021BC304
	push {r4, lr}
	sub sp, #8
	mov r4, #0
	str r4, [sp]
	ldr r4, _021BC318 ; =0x021BCB41
	str r4, [sp, #4]
	bl ovy260_21bc2a4
	add sp, #8
	pop {r4, pc}
	.align 2, 0
_021BC318: .word 0x021BCB41
	thumb_func_end ovy260_21bc304

	thumb_func_start ovy260_21bc31c
ovy260_21bc31c: ; 0x021BC31C
	push {r4, lr}
	sub sp, #8
	mov r4, #1
	str r4, [sp]
	ldr r4, _021BC330 ; =0x021BCBB5
	str r4, [sp, #4]
	bl ovy260_21bc2a4
	add sp, #8
	pop {r4, pc}
	.align 2, 0
_021BC330: .word 0x021BCBB5
	thumb_func_end ovy260_21bc31c

	thumb_func_start ovy260_21bc334
ovy260_21bc334: ; 0x021BC334
	push {r4, lr}
	sub sp, #8
	mov r4, #4
	str r4, [sp]
	ldr r4, _021BC348 ; =0x021BD2BD
	str r4, [sp, #4]
	bl ovy260_21bc2a4
	add sp, #8
	pop {r4, pc}
	.align 2, 0
_021BC348: .word 0x021BD2BD
	thumb_func_end ovy260_21bc334

	thumb_func_start ovy260_21bc34c
ovy260_21bc34c: ; 0x021BC34C
	push {r4, lr}
	sub sp, #8
	mov r4, #5
	str r4, [sp]
	ldr r4, _021BC360 ; =0x021BD365
	str r4, [sp, #4]
	bl ovy260_21bc2a4
	add sp, #8
	pop {r4, pc}
	.align 2, 0
_021BC360: .word 0x021BD365
	thumb_func_end ovy260_21bc34c

	thumb_func_start ovy260_21bc364
ovy260_21bc364: ; 0x021BC364
	push {r3, lr}
	cmp r0, #0
	beq _021BC36E
	cmp r1, #0
	bne _021BC372
_021BC36E:
	mov r0, #0
	pop {r3, pc}
_021BC372:
	ldr r0, _021BC37C ; =0x021C1CA8
	blx sub_02085DB8
	mov r0, #1
	pop {r3, pc}
	.align 2, 0
_021BC37C: .word 0x021C1CA8
	thumb_func_end ovy260_21bc364

	thumb_func_start ovy260_21bc380
ovy260_21bc380: ; 0x021BC380
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	beq _021BC398
	cmp r2, #0
	beq _021BC398
	ldr r0, [r4]
	cmp r0, #0
	beq _021BC398
	ldr r0, [r4, #0x24]
	cmp r0, #0
	bne _021BC39E
_021BC398:
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, pc}
_021BC39E:
	ldr r3, _021BC3E0 ; =0x021C1CA8
	mov r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	str r1, [sp]
	beq _021BC3BA
	ldr r0, [r4, #0x14]
	mov r1, #0x80
	str r0, [sp, #4]
	ldr r0, [r4, #0x28]
	str r0, [sp, #8]
	add r0, r2, #0
	ldr r2, _021BC3E4 ; =0x021C0750
	b _021BC3CA
_021BC3BA:
	ldr r0, [r4, #0x14]
	mov r1, #0x80
	str r0, [sp, #4]
	ldr r0, [r4, #0x28]
	add r3, r4, #4
	str r0, [sp, #8]
	add r0, r2, #0
	ldr r2, _021BC3E8 ; =0x021C0770
_021BC3CA:
	bl OS_SNPrintf
	cmp r0, #0
	bge _021BC3D8
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, pc}
_021BC3D8:
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_021BC3E0: .word 0x021C1CA8
_021BC3E4: .word 0x021C0750
_021BC3E8: .word 0x021C0770
	thumb_func_end ovy260_21bc380

	thumb_func_start ovy260_21bc3ec
ovy260_21bc3ec: ; 0x021BC3EC
	push {r3, lr}
	cmp r0, #0
	beq _021BC3F6
	cmp r1, #0
	bne _021BC3FA
_021BC3F6:
	mov r0, #0
	pop {r3, pc}
_021BC3FA:
	ldr r0, _021BC404 ; =0x021C1D28
	blx sub_02085DB8
	mov r0, #1
	pop {r3, pc}
	.align 2, 0
_021BC404: .word 0x021C1D28
	thumb_func_end ovy260_21bc3ec

	thumb_func_start ovy260_21bc408
ovy260_21bc408: ; 0x021BC408
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	beq _021BC420
	cmp r1, #0
	beq _021BC420
	ldr r0, [r4]
	cmp r0, #0
	beq _021BC420
	ldr r0, [r4, #0x24]
	cmp r0, #0
	bne _021BC426
_021BC420:
	add sp, #8
	mov r0, #0
	pop {r4, pc}
_021BC426:
	ldr r3, _021BC464 ; =0x021C1D28
	mov r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	ldr r0, [r4, #0x14]
	beq _021BC440
	str r0, [sp]
	ldr r0, [r4, #0x28]
	ldr r2, _021BC468 ; =0x021C07C4
	str r0, [sp, #4]
	add r0, r1, #0
	mov r1, #0x80
	b _021BC44E
_021BC440:
	str r0, [sp]
	ldr r0, [r4, #0x28]
	ldr r2, _021BC46C ; =0x021C07D8
	str r0, [sp, #4]
	add r0, r1, #0
	mov r1, #0x80
	add r3, r4, #4
_021BC44E:
	bl OS_SNPrintf
	cmp r0, #0
	bge _021BC45C
	add sp, #8
	mov r0, #0
	pop {r4, pc}
_021BC45C:
	mov r0, #1
	add sp, #8
	pop {r4, pc}
	nop
_021BC464: .word 0x021C1D28
_021BC468: .word 0x021C07C4
_021BC46C: .word 0x021C07D8
	thumb_func_end ovy260_21bc408

	thumb_func_start sub_021BC470
sub_021BC470: ; 0x021BC470
	ldr r3, _021BC474 ; =ovy260_21bc2e0
	bx r3
	.align 2, 0
_021BC474: .word ovy260_21bc2e0
	thumb_func_end sub_021BC470

	thumb_func_start ovy260_21bc478
ovy260_21bc478: ; 0x021BC478
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _021BC4D0 ; =0x00000000
	add r7, r1, #0
	add r6, r2, #0
	str r3, [sp]
	str r0, [r5, #0x48]
	bne _021BC490
	mov r0, #3
	str r0, [r5, #0x48]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021BC490:
	ldr r0, [r5]
	cmp r0, #0
	beq _021BC49C
	ldr r0, [r5, #0x24]
	cmp r0, #0
	bne _021BC4A4
_021BC49C:
	mov r0, #1
	str r0, [r5, #0x48]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021BC4A4:
	mov r0, #0x24
	bl sub_0216DDDC
	add r4, r0, #0
	bne _021BC4B6
	mov r0, #2
	str r0, [r5, #0x48]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021BC4B6:
	mov r1, #0
	mov r2, #0x24
	blx sub_020839D0
	str r5, [r4]
	str r7, [r4, #4]
	ldr r0, [sp]
	str r6, [r4, #8]
	str r0, [r4, #0x10]
	ldr r0, [sp, #0x18]
	str r0, [r4, #0x14]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BC4D0: .word 0x00000000
	thumb_func_end ovy260_21bc478

	thumb_func_start sub_021BC4D4
sub_021BC4D4: ; 0x021BC4D4
	ldr r3, _021BC4D8 ; =sub_0216DDFC
	bx r3
	.align 2, 0
_021BC4D8: .word sub_0216DDFC
	thumb_func_end sub_021BC4D4

	thumb_func_start sub_021BC4DC
sub_021BC4DC: ; 0x021BC4DC
	cmp r0, #0
	beq _021BC4EA
	cmp r0, #1
	beq _021BC4EE
	cmp r0, #0x12
	beq _021BC4F2
	b _021BC4F6
_021BC4EA:
	mov r0, #0
	bx lr
_021BC4EE:
	mov r0, #6
	bx lr
_021BC4F2:
	mov r0, #0x17
	bx lr
_021BC4F6:
	mov r0, #4
	bx lr
	.align 2, 0
	thumb_func_end sub_021BC4DC

	thumb_func_start ovy260_21bc4fc
ovy260_21bc4fc: ; 0x021BC4FC
	push {r4, lr}
	ldr r1, _021BC624 ; =0x021C0844
	add r4, r0, #0
	blx sub_02085F00
	cmp r0, #0
	bne _021BC50E
	mov r0, #0
	pop {r4, pc}
_021BC50E:
	ldr r1, _021BC628 ; =0x021C084C
	add r0, r4, #0
	blx sub_02085F00
	cmp r0, #0
	bne _021BC51E
	mov r0, #1
	pop {r4, pc}
_021BC51E:
	ldr r1, _021BC62C ; =0x021C0860
	add r0, r4, #0
	blx sub_02085F00
	cmp r0, #0
	bne _021BC52E
	mov r0, #2
	pop {r4, pc}
_021BC52E:
	ldr r1, _021BC630 ; =0x021C0870
	add r0, r4, #0
	blx sub_02085F00
	cmp r0, #0
	bne _021BC53E
	mov r0, #7
	pop {r4, pc}
_021BC53E:
	ldr r1, _021BC634 ; =0x021C0884
	add r0, r4, #0
	blx sub_02085F00
	cmp r0, #0
	bne _021BC54E
	mov r0, #8
	pop {r4, pc}
_021BC54E:
	ldr r1, _021BC638 ; =0x021C0898
	add r0, r4, #0
	blx sub_02085F00
	cmp r0, #0
	bne _021BC55E
	mov r0, #9
	pop {r4, pc}
_021BC55E:
	ldr r1, _021BC63C ; =0x021C08AC
	add r0, r4, #0
	blx sub_02085F00
	cmp r0, #0
	bne _021BC56E
	mov r0, #0xa
	pop {r4, pc}
_021BC56E:
	ldr r1, _021BC640 ; =0x021C08BC
	add r0, r4, #0
	blx sub_02085F00
	cmp r0, #0
	bne _021BC57E
	mov r0, #0xb
	pop {r4, pc}
_021BC57E:
	ldr r1, _021BC644 ; =0x021C08CC
	add r0, r4, #0
	blx sub_02085F00
	cmp r0, #0
	bne _021BC58E
	mov r0, #0xc
	pop {r4, pc}
_021BC58E:
	ldr r1, _021BC648 ; =0x021C08DC
	add r0, r4, #0
	blx sub_02085F00
	cmp r0, #0
	bne _021BC59E
	mov r0, #0xd
	pop {r4, pc}
_021BC59E:
	ldr r1, _021BC64C ; =0x021C08F0
	add r0, r4, #0
	blx sub_02085F00
	cmp r0, #0
	bne _021BC5AE
	mov r0, #0xe
	pop {r4, pc}
_021BC5AE:
	ldr r1, _021BC650 ; =0x021C0900
	add r0, r4, #0
	blx sub_02085F00
	cmp r0, #0
	bne _021BC5BE
	mov r0, #0xf
	pop {r4, pc}
_021BC5BE:
	ldr r1, _021BC654 ; =0x021C0914
	add r0, r4, #0
	blx sub_02085F00
	cmp r0, #0
	bne _021BC5CE
	mov r0, #0x10
	pop {r4, pc}
_021BC5CE:
	ldr r1, _021BC658 ; =0x021C0924
	add r0, r4, #0
	blx sub_02085F00
	cmp r0, #0
	bne _021BC5DE
	mov r0, #0x11
	pop {r4, pc}
_021BC5DE:
	ldr r1, _021BC65C ; =0x021C0930
	add r0, r4, #0
	blx sub_02085F00
	cmp r0, #0
	bne _021BC5EE
	mov r0, #0x12
	pop {r4, pc}
_021BC5EE:
	ldr r1, _021BC660 ; =0x021C093C
	add r0, r4, #0
	blx sub_02085F00
	cmp r0, #0
	bne _021BC5FE
	mov r0, #0x13
	pop {r4, pc}
_021BC5FE:
	ldr r1, _021BC664 ; =0x021C094C
	add r0, r4, #0
	blx sub_02085F00
	cmp r0, #0
	bne _021BC60E
	mov r0, #0x14
	pop {r4, pc}
_021BC60E:
	ldr r1, _021BC668 ; =0x021C0958
	add r0, r4, #0
	blx sub_02085F00
	cmp r0, #0
	bne _021BC61E
	mov r0, #0x15
	pop {r4, pc}
_021BC61E:
	mov r0, #0x16
	pop {r4, pc}
	nop
_021BC624: .word 0x021C0844
_021BC628: .word 0x021C084C
_021BC62C: .word 0x021C0860
_021BC630: .word 0x021C0870
_021BC634: .word 0x021C0884
_021BC638: .word 0x021C0898
_021BC63C: .word 0x021C08AC
_021BC640: .word 0x021C08BC
_021BC644: .word 0x021C08CC
_021BC648: .word 0x021C08DC
_021BC64C: .word 0x021C08F0
_021BC650: .word 0x021C0900
_021BC654: .word 0x021C0914
_021BC658: .word 0x021C0924
_021BC65C: .word 0x021C0930
_021BC660: .word 0x021C093C
_021BC664: .word 0x021C094C
_021BC668: .word 0x021C0958
	thumb_func_end ovy260_21bc4fc

	thumb_func_start ovy260_21bc66c
ovy260_21bc66c: ; 0x021BC66C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r2, #0
	add r4, r3, #0
	ldr r6, _021BC720 ; =0x00000000
	beq _021BC71C
	ldr r1, [r4]
	cmp r1, #0
	beq _021BC71C
	ldr r1, [r4, #0x20]
	cmp r1, #0
	beq _021BC71C
	bl sub_021BC4DC
	add r2, r0, #0
	bne _021BC6EC
	add r0, r5, #0
	bl sub_02170D18
	cmp r0, #0
	beq _021BC6B8
	ldr r1, [r4, #0x20]
	add r0, r5, #0
	ldr r1, [r1, #0xc]
	bl sub_02170D28
	cmp r0, #0
	beq _021BC6B8
	ldr r1, [r4, #0x20]
	add r7, sp, #8
	ldr r1, [r1, #0x10]
	add r0, r5, #0
	add r2, r7, #0
	mov r3, #0x20
	bl sub_02170E90
	cmp r0, #0
	bne _021BC6BC
_021BC6B8:
	mov r2, #5
	b _021BC6EC
_021BC6BC:
	add r0, r7, #0
	bl ovy260_21bc4fc
	add r2, r0, #0
	bne _021BC6EC
	ldr r0, [r4, #0x20]
	ldr r0, [r0]
	cmp r0, #0
	beq _021BC6EC
	bl sub_0216DDDC
	str r0, [r4, #0xc]
	cmp r0, #0
	beq _021BC6EA
	ldr r1, [r4, #0x20]
	str r5, [r4, #0x1c]
	ldr r1, [r1, #0x1c]
	add r0, r4, #0
	blx r1
	add r2, r0, #0
	bne _021BC6EC
	ldr r6, [r4, #0xc]
	b _021BC6EC
_021BC6EA:
	mov r2, #6
_021BC6EC:
	ldr r5, [r4, #0x10]
	cmp r5, #0
	beq _021BC700
	str r6, [sp]
	ldr r0, [r4, #0x14]
	add r1, r4, #0
	str r0, [sp, #4]
	ldr r0, [r4]
	ldr r3, [r4, #8]
	blx r5
_021BC700:
	ldr r0, [r4, #0x20]
	ldr r1, [r0, #0x20]
	cmp r1, #0
	beq _021BC70C
	add r0, r4, #0
	blx r1
_021BC70C:
	ldr r0, [r4, #0xc]
	bl sub_0216DDFC
	mov r0, #0
	str r0, [r4, #0xc]
	add r0, r4, #0
	bl sub_021BC4D4
_021BC71C:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BC720: .word 0x00000000
	thumb_func_end ovy260_21bc66c

	thumb_func_start ovy260_21bc724
ovy260_21bc724: ; 0x021BC724
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r4, [r5, #0x20]
	ldr r1, [r4, #0x14]
	blx r1
	cmp r0, #0
	bne _021BC7AE
	ldr r0, _021BC7B0 ; =0x021C0820
	mov r1, #1
	bl sub_0216FBF8
	str r0, [r5, #0x18]
	cmp r0, #0
	bne _021BC744
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_021BC744:
	ldr r2, [r5, #0x20]
	ldr r7, _021BC7B4 ; =0x021C096C
	ldr r2, [r2, #4]
	add r1, r7, #0
	bl sub_02170614
	ldr r3, [r5]
	ldr r0, [r5, #0x18]
	ldr r2, _021BC7B8 ; =0x021C0970
	ldr r3, [r3, #0x14]
	add r1, r7, #0
	bl sub_02170818
	ldr r3, [r5]
	ldr r0, [r5, #0x18]
	ldr r2, _021BC7BC ; =0x021C0978
	add r1, r7, #0
	add r3, #0x18
	bl sub_021706B8
	ldr r3, [r5]
	ldr r0, [r5, #0x18]
	ldr r2, _021BC7C0 ; =0x021C0984
	add r1, r7, #0
	add r3, #0x2c
	bl sub_021706B8
	ldr r1, [r4, #0x18]
	add r0, r5, #0
	blx r1
	add r6, r0, #0
	ldr r0, [r5, #0x18]
	beq _021BC79C
	bl sub_0216FE64
	mov r0, #0
	str r0, [r5, #0x18]
	ldr r1, [r4, #0x20]
	cmp r1, #0
	beq _021BC798
	add r0, r5, #0
	blx r1
_021BC798:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_021BC79C:
	ldr r2, [r5, #0x20]
	add r1, r7, #0
	ldr r2, [r2, #4]
	bl sub_02170660
	ldr r0, [r5, #0x18]
	bl sub_0216FEA8
	mov r0, #0
_021BC7AE:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BC7B0: .word 0x021C0820
_021BC7B4: .word 0x021C096C
_021BC7B8: .word 0x021C0970
_021BC7BC: .word 0x021C0978
_021BC7C0: .word 0x021C0984
	thumb_func_end ovy260_21bc724

	thumb_func_start ovy260_21bc7c4
ovy260_21bc7c4: ; 0x021BC7C4
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, _021BC808 ; =0x021C1DA8
	mov r1, #0
	ldrsb r1, [r0, r1]
	cmp r1, #0
	bne _021BC7E0
	ldr r3, [r4]
	ldr r2, _021BC80C ; =0x021C0990
	mov r1, #0x80
	add r3, r3, #4
	bl OS_SNPrintf
_021BC7E0:
	str r4, [sp]
	ldr r1, [r4, #0x20]
	ldr r0, _021BC808 ; =0x021C1DA8
	ldr r1, [r1, #8]
	ldr r2, [r4, #0x18]
	ldr r3, _021BC810 ; =ovy260_21bc66c
	bl sub_0216EA4C
	cmp r0, #0
	beq _021BC7FE
	ldr r1, [r0, #0x24]
	ldr r0, [r4, #0x20]
	add sp, #4
	str r1, [r0, #0x24]
	pop {r3, r4, pc}
_021BC7FE:
	mov r1, #0
	ldr r0, [r4, #0x20]
	str r1, [r0, #0x24]
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_021BC808: .word 0x021C1DA8
_021BC80C: .word 0x021C0990
_021BC810: .word ovy260_21bc66c
	thumb_func_end ovy260_21bc7c4

	thumb_func_start ovy260_21bc814
ovy260_21bc814: ; 0x021BC814
	push {r4, lr}
	add r4, r0, #0
	str r1, [r4, #0x20]
	bl ovy260_21bc724
	cmp r0, #0
	bne _021BC82A
	add r0, r4, #0
	bl ovy260_21bc7c4
	mov r0, #0
_021BC82A:
	pop {r4, pc}
	thumb_func_end ovy260_21bc814

	thumb_func_start ovy260_21bc82c
ovy260_21bc82c: ; 0x021BC82C
	push {r3, r4, r5, r6}
	mov r2, #0
	cmp r1, #0
	ble _021BC89E
	add r4, r2, #0
_021BC836:
	lsl r5, r2, #4
	add r3, r0, r5
	ldr r5, [r0, r5]
	cmp r5, #0
	beq _021BC846
	ldrsb r5, [r5, r4]
	cmp r5, #0
	bne _021BC84C
_021BC846:
	mov r0, #7
	pop {r3, r4, r5, r6}
	bx lr
_021BC84C:
	ldr r6, [r3, #4]
	cmp r6, #0xa
	blt _021BC858
	mov r0, #8
	pop {r3, r4, r5, r6}
	bx lr
_021BC858:
	cmp r6, #4
	bne _021BC868
	ldr r5, [r3, #8]
	cmp r5, #0
	bne _021BC868
	mov r0, #9
	pop {r3, r4, r5, r6}
	bx lr
_021BC868:
	cmp r6, #5
	bne _021BC878
	ldr r5, [r3, #8]
	cmp r5, #0
	bne _021BC878
	mov r0, #9
	pop {r3, r4, r5, r6}
	bx lr
_021BC878:
	cmp r6, #8
	bne _021BC898
	ldr r5, [r3, #0xc]
	cmp r5, #0
	bge _021BC888
	mov r0, #9
	pop {r3, r4, r5, r6}
	bx lr
_021BC888:
	ldr r3, [r3, #8]
	cmp r3, #0
	bne _021BC898
	cmp r5, #0
	ble _021BC898
	mov r0, #9
	pop {r3, r4, r5, r6}
	bx lr
_021BC898:
	add r2, r2, #1
	cmp r2, r1
	blt _021BC836
_021BC89E:
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end ovy260_21bc82c

	thumb_func_start ovy260_21bc8a4
ovy260_21bc8a4: ; 0x021BC8A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r0, #0
	str r2, [sp, #8]
	ldr r5, _021BCA90 ; =0x021C0BA0
	str r1, [sp, #4]
	ldr r0, [r4, #0x18]
	ldr r2, _021BCA94 ; =0x021C0BA4
	add r1, r5, #0
	bl sub_02170614
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	cmp r0, #0
	bgt _021BC8C6
	b _021BCA80
_021BC8C6:
	ldr r0, [r4, #0x18]
	ldr r2, _021BCA98 ; =0x021C0BAC
	add r1, r5, #0
	bl sub_02170614
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #4]
	lsl r0, r0, #4
	mov ip, r0
	add r7, r1, r0
	ldr r3, [sp, #4]
	mov r6, ip
	ldr r0, [r4, #0x18]
	ldr r2, _021BCA9C ; =0x021C0BB8
	ldr r3, [r3, r6]
	add r1, r5, #0
	bl sub_021706B8
	ldr r0, [r4, #0x18]
	ldr r2, _021BCAA0 ; =0x021C0BC0
	add r1, r5, #0
	bl sub_02170614
	ldr r0, [r7, #4]
	cmp r0, #0
	bne _021BC918
	ldr r0, [r4, #0x18]
	ldr r2, _021BCAA4 ; =0x021C0BC8
	add r1, r5, #0
	bl sub_02170614
	ldrb r3, [r7, #8]
	ldr r0, [r4, #0x18]
	ldr r2, _021BCAA0 ; =0x021C0BC0
	add r1, r5, #0
	bl sub_02170818
	ldr r0, [r4, #0x18]
	add r1, r5, #0
	ldr r2, _021BCAA4 ; =0x021C0BC8
	b _021BCA5A
_021BC918:
	cmp r0, #1
	bne _021BC93C
	ldr r0, [r4, #0x18]
	ldr r2, _021BCAA8 ; =0x021C0BD4
	add r1, r5, #0
	bl sub_02170614
	mov r3, #8
	ldrsh r3, [r7, r3]
	ldr r0, [r4, #0x18]
	ldr r2, _021BCAA0 ; =0x021C0BC0
	add r1, r5, #0
	bl sub_02170818
	ldr r0, [r4, #0x18]
	add r1, r5, #0
	ldr r2, _021BCAA8 ; =0x021C0BD4
	b _021BCA5A
_021BC93C:
	cmp r0, #2
	bne _021BC95E
	ldr r0, [r4, #0x18]
	ldr r2, _021BCAAC ; =0x021C0BE0
	add r1, r5, #0
	bl sub_02170614
	ldr r0, [r4, #0x18]
	ldr r2, _021BCAA0 ; =0x021C0BC0
	ldr r3, [r7, #8]
	add r1, r5, #0
	bl sub_02170818
	ldr r0, [r4, #0x18]
	add r1, r5, #0
	ldr r2, _021BCAAC ; =0x021C0BE0
	b _021BCA5A
_021BC95E:
	cmp r0, #9
	bne _021BC984
	ldr r0, [r4, #0x18]
	ldr r2, _021BCAB0 ; =0x021C0BEC
	add r1, r5, #0
	bl sub_02170614
	ldr r3, [r7, #8]
	ldr r6, [r7, #0xc]
	ldr r2, _021BCAA0 ; =0x021C0BC0
	str r6, [sp]
	ldr r0, [r4, #0x18]
	add r1, r5, #0
	bl sub_02170868
	ldr r0, [r4, #0x18]
	add r1, r5, #0
	ldr r2, _021BCAB0 ; =0x021C0BEC
	b _021BCA5A
_021BC984:
	cmp r0, #3
	bne _021BC9A6
	ldr r0, [r4, #0x18]
	ldr r2, _021BCAB4 ; =0x021C0BF8
	add r1, r5, #0
	bl sub_02170614
	ldr r0, [r4, #0x18]
	ldr r2, _021BCAA0 ; =0x021C0BC0
	ldr r3, [r7, #8]
	add r1, r5, #0
	bl sub_021708B4
	ldr r0, [r4, #0x18]
	add r1, r5, #0
	ldr r2, _021BCAB4 ; =0x021C0BF8
	b _021BCA5A
_021BC9A6:
	cmp r0, #4
	bne _021BC9C8
	ldr r0, [r4, #0x18]
	ldr r2, _021BCAB8 ; =0x021C0C04
	add r1, r5, #0
	bl sub_02170614
	ldr r0, [r4, #0x18]
	ldr r2, _021BCAA0 ; =0x021C0BC0
	ldr r3, [r7, #8]
	add r1, r5, #0
	bl sub_021706B8
	ldr r0, [r4, #0x18]
	add r1, r5, #0
	ldr r2, _021BCAB8 ; =0x021C0C04
	b _021BCA5A
_021BC9C8:
	cmp r0, #5
	bne _021BC9EA
	ldr r0, [r4, #0x18]
	ldr r2, _021BCABC ; =0x021C0C18
	add r1, r5, #0
	bl sub_02170614
	ldr r0, [r4, #0x18]
	ldr r2, _021BCAA0 ; =0x021C0BC0
	ldr r3, [r7, #8]
	add r1, r5, #0
	bl sub_02170780
	ldr r0, [r4, #0x18]
	add r1, r5, #0
	ldr r2, _021BCABC ; =0x021C0C18
	b _021BCA5A
_021BC9EA:
	cmp r0, #6
	bne _021BCA14
	ldr r0, [r4, #0x18]
	ldr r2, _021BCAC0 ; =0x021C0C2C
	add r1, r5, #0
	bl sub_02170614
	ldr r0, [r7, #8]
	mov r3, #1
	cmp r0, #0
	bne _021BCA02
	mov r3, #0
_021BCA02:
	ldr r0, [r4, #0x18]
	ldr r2, _021BCAA0 ; =0x021C0BC0
	add r1, r5, #0
	bl sub_02170818
	ldr r0, [r4, #0x18]
	add r1, r5, #0
	ldr r2, _021BCAC0 ; =0x021C0C2C
	b _021BCA5A
_021BCA14:
	cmp r0, #7
	bne _021BCA36
	ldr r0, [r4, #0x18]
	ldr r2, _021BCAC4 ; =0x021C0C3C
	add r1, r5, #0
	bl sub_02170614
	ldr r0, [r4, #0x18]
	ldr r2, _021BCAA0 ; =0x021C0BC0
	ldr r3, [r7, #8]
	add r1, r5, #0
	bl sub_02170A00
	ldr r0, [r4, #0x18]
	add r1, r5, #0
	ldr r2, _021BCAC4 ; =0x021C0C3C
	b _021BCA5A
_021BCA36:
	cmp r0, #8
	bne _021BCA5E
	ldr r0, [r4, #0x18]
	ldr r2, _021BCAC8 ; =0x021C0C50
	add r1, r5, #0
	bl sub_02170614
	ldr r0, [r7, #0xc]
	ldr r2, _021BCAA0 ; =0x021C0BC0
	str r0, [sp]
	ldr r0, [r4, #0x18]
	ldr r3, [r7, #8]
	add r1, r5, #0
	bl sub_0217098C
	ldr r0, [r4, #0x18]
	ldr r2, _021BCAC8 ; =0x021C0C50
	add r1, r5, #0
_021BCA5A:
	bl sub_02170660
_021BCA5E:
	ldr r0, [r4, #0x18]
	ldr r2, _021BCAA0 ; =0x021C0BC0
	add r1, r5, #0
	bl sub_02170660
	ldr r0, [r4, #0x18]
	ldr r2, _021BCA98 ; =0x021C0BAC
	add r1, r5, #0
	bl sub_02170660
	ldr r0, [sp, #0xc]
	add r1, r0, #1
	ldr r0, [sp, #8]
	str r1, [sp, #0xc]
	cmp r1, r0
	bge _021BCA80
	b _021BC8C6
_021BCA80:
	ldr r0, [r4, #0x18]
	ldr r1, _021BCA90 ; =0x021C0BA0
	ldr r2, _021BCA94 ; =0x021C0BA4
	bl sub_02170660
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021BCA90: .word 0x021C0BA0
_021BCA94: .word 0x021C0BA4
_021BCA98: .word 0x021C0BAC
_021BCA9C: .word 0x021C0BB8
_021BCAA0: .word 0x021C0BC0
_021BCAA4: .word 0x021C0BC8
_021BCAA8: .word 0x021C0BD4
_021BCAAC: .word 0x021C0BE0
_021BCAB0: .word 0x021C0BEC
_021BCAB4: .word 0x021C0BF8
_021BCAB8: .word 0x021C0C04
_021BCABC: .word 0x021C0C18
_021BCAC0: .word 0x021C0C2C
_021BCAC4: .word 0x021C0C3C
_021BCAC8: .word 0x021C0C50
	thumb_func_end ovy260_21bc8a4

	thumb_func_start ovy260_21bcacc
ovy260_21bcacc: ; 0x021BCACC
	push {r3, lr}
	ldr r2, [r0, #8]
	ldr r0, [r2]
	cmp r0, #0
	bne _021BCADA
	mov r0, #4
	pop {r3, pc}
_021BCADA:
	ldr r1, [r2, #8]
	cmp r1, #0
	bge _021BCAE4
	mov r0, #6
	pop {r3, pc}
_021BCAE4:
	ldr r0, [r2, #4]
	cmp r0, #0
	bne _021BCAF2
	cmp r1, #0
	ble _021BCAF2
	mov r0, #5
	pop {r3, pc}
_021BCAF2:
	bl ovy260_21bc82c
	pop {r3, pc}
	thumb_func_end ovy260_21bcacc

	thumb_func_start ovy260_21bcaf8
ovy260_21bcaf8: ; 0x021BCAF8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r4, [r5, #8]
	ldr r0, [r5, #0x18]
	ldr r1, _021BCB18 ; =0x021C0BA0
	ldr r2, _021BCB1C ; =0x021C0C60
	ldr r3, [r4]
	bl sub_021706B8
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	add r0, r5, #0
	bl ovy260_21bc8a4
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021BCB18: .word 0x021C0BA0
_021BCB1C: .word 0x021C0C60
	thumb_func_end ovy260_21bcaf8

	thumb_func_start ovy260_21bcb20
ovy260_21bcb20: ; 0x021BCB20
	push {r3, lr}
	add r2, r0, #0
	ldr r0, [r2, #0x1c]
	ldr r1, _021BCB3C ; =0x021C0C68
	ldr r2, [r2, #0xc]
	bl sub_02171090
	cmp r0, #0
	bne _021BCB36
	mov r0, #5
	pop {r3, pc}
_021BCB36:
	mov r0, #0
	pop {r3, pc}
	nop
_021BCB3C: .word 0x021C0C68
	thumb_func_end ovy260_21bcb20
_021BCB40:
	.byte 0x01, 0x49, 0x02, 0x4B, 0x18, 0x47, 0xC0, 0x46, 0xB4, 0x0A, 0x1C, 0x02, 0x15, 0xC8, 0x1B, 0x02

	thumb_func_start ovy260_21bcb50
ovy260_21bcb50: ; 0x021BCB50
	push {r3, lr}
	ldr r2, [r0, #8]
	ldr r0, [r2]
	cmp r0, #0
	bne _021BCB5E
	mov r0, #4
	pop {r3, pc}
_021BCB5E:
	ldr r1, [r2, #0xc]
	cmp r1, #0
	bgt _021BCB68
	mov r0, #6
	pop {r3, pc}
_021BCB68:
	ldr r0, [r2, #8]
	cmp r0, #0
	beq _021BCB74
	bl ovy260_21bc82c
	pop {r3, pc}
_021BCB74:
	mov r0, #5
	pop {r3, pc}
	thumb_func_end ovy260_21bcb50

	thumb_func_start ovy260_21bcb78
ovy260_21bcb78: ; 0x021BCB78
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r4, [r5, #8]
	ldr r6, _021BCBA8 ; =0x021C0BA0
	ldr r0, [r5, #0x18]
	ldr r2, _021BCBAC ; =0x021C0C60
	ldr r3, [r4]
	add r1, r6, #0
	bl sub_021706B8
	ldr r0, [r5, #0x18]
	ldr r2, _021BCBB0 ; =0x021C0C68
	ldr r3, [r4, #4]
	add r1, r6, #0
	bl sub_02170818
	ldr r1, [r4, #8]
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	bl ovy260_21bc8a4
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_021BCBA8: .word 0x021C0BA0
_021BCBAC: .word 0x021C0C60
_021BCBB0: .word 0x021C0C68
	thumb_func_end ovy260_21bcb78
_021BCBB4:
	.byte 0x01, 0x49, 0x02, 0x4B, 0x18, 0x47, 0xC0, 0x46, 0x8C, 0x0A, 0x1C, 0x02
	.byte 0x15, 0xC8, 0x1B, 0x02, 0x80, 0x68, 0x00, 0x68, 0x00, 0x28, 0x01, 0xD0, 0x00, 0x20, 0x70, 0x47
	.byte 0x04, 0x20, 0x70, 0x47

	thumb_func_start ovy260_21bcbd4
ovy260_21bcbd4: ; 0x021BCBD4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r4, [r5, #8]
	ldr r6, _021BCBF8 ; =0x021C0BA0
	ldr r0, [r5, #0x18]
	ldr r2, _021BCBFC ; =0x021C0C60
	ldr r3, [r4]
	add r1, r6, #0
	bl sub_021706B8
	ldr r0, [r5, #0x18]
	ldr r2, _021BCC00 ; =0x021C0C68
	ldr r3, [r4, #4]
	add r1, r6, #0
	bl sub_02170818
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_021BCBF8: .word 0x021C0BA0
_021BCBFC: .word 0x021C0C60
_021BCC00: .word 0x021C0C68
	thumb_func_end ovy260_21bcbd4

	thumb_func_start ovy260_21bcc04
ovy260_21bcc04: ; 0x021BCC04
	push {r3, r4}
	mov r4, #0
	cmp r1, #0
	ble _021BCC28
	add r2, r4, #0
_021BCC0E:
	lsl r3, r4, #2
	ldr r3, [r0, r3]
	cmp r3, #0
	beq _021BCC1C
	ldrsb r3, [r3, r2]
	cmp r3, #0
	bne _021BCC22
_021BCC1C:
	mov r0, #7
	pop {r3, r4}
	bx lr
_021BCC22:
	add r4, r4, #1
	cmp r4, r1
	blt _021BCC0E
_021BCC28:
	mov r0, #0
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ovy260_21bcc04

	thumb_func_start ovy260_21bcc30
ovy260_21bcc30: ; 0x021BCC30
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	add r6, r2, #0
	ldr r0, [r5, #0x18]
	ldr r1, _021BCC68 ; =0x021C0F0C
	ldr r2, _021BCC6C ; =0x021C0F10
	bl sub_02170614
	mov r4, #0
	cmp r6, #0
	ble _021BCC5C
_021BCC48:
	lsl r3, r4, #2
	ldr r0, [r5, #0x18]
	ldr r1, _021BCC68 ; =0x021C0F0C
	ldr r2, _021BCC70 ; =0x021C0F18
	ldr r3, [r7, r3]
	bl sub_021706B8
	add r4, r4, #1
	cmp r4, r6
	blt _021BCC48
_021BCC5C:
	ldr r0, [r5, #0x18]
	ldr r1, _021BCC68 ; =0x021C0F0C
	ldr r2, _021BCC6C ; =0x021C0F10
	bl sub_02170660
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BCC68: .word 0x021C0F0C
_021BCC6C: .word 0x021C0F10
_021BCC70: .word 0x021C0F18
	thumb_func_end ovy260_21bcc30

	thumb_func_start ovy260_21bcc74
ovy260_21bcc74: ; 0x021BCC74
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	add r6, r2, #0
	ldr r0, [r5, #0x18]
	ldr r1, _021BCCAC ; =0x021C0F0C
	ldr r2, _021BCCB0 ; =0x021C0F20
	bl sub_02170614
	mov r4, #0
	cmp r6, #0
	ble _021BCCA0
_021BCC8C:
	lsl r3, r4, #2
	ldr r0, [r5, #0x18]
	ldr r1, _021BCCAC ; =0x021C0F0C
	ldr r2, _021BCCB4 ; =0x021C0F2C
	ldr r3, [r7, r3]
	bl sub_02170818
	add r4, r4, #1
	cmp r4, r6
	blt _021BCC8C
_021BCCA0:
	ldr r0, [r5, #0x18]
	ldr r1, _021BCCAC ; =0x021C0F0C
	ldr r2, _021BCCB0 ; =0x021C0F20
	bl sub_02170660
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BCCAC: .word 0x021C0F0C
_021BCCB0: .word 0x021C0F20
_021BCCB4: .word 0x021C0F2C
	thumb_func_end ovy260_21bcc74

	thumb_func_start ovy260_21bccb8
ovy260_21bccb8: ; 0x021BCCB8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	add r6, r2, #0
	ldr r0, [r5, #0x18]
	ldr r1, _021BCCF0 ; =0x021C0F0C
	ldr r2, _021BCCF4 ; =0x021C0F30
	bl sub_02170614
	mov r4, #0
	cmp r6, #0
	ble _021BCCE4
_021BCCD0:
	lsl r3, r4, #2
	ldr r0, [r5, #0x18]
	ldr r1, _021BCCF0 ; =0x021C0F0C
	ldr r2, _021BCCF8 ; =0x021C0F2C
	ldr r3, [r7, r3]
	bl sub_02170818
	add r4, r4, #1
	cmp r4, r6
	blt _021BCCD0
_021BCCE4:
	ldr r0, [r5, #0x18]
	ldr r1, _021BCCF0 ; =0x021C0F0C
	ldr r2, _021BCCF4 ; =0x021C0F30
	bl sub_02170660
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BCCF0: .word 0x021C0F0C
_021BCCF4: .word 0x021C0F30
_021BCCF8: .word 0x021C0F2C
	thumb_func_end ovy260_21bccb8

	thumb_func_start ovy260_21bccfc
ovy260_21bccfc: ; 0x021BCCFC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x54
	add r5, r0, #0
	ldr r0, [sp, #0x68]
	add r4, r1, #0
	str r0, [sp, #0x68]
	ldr r0, [r5, #0x1c]
	ldr r1, _021BCFA8 ; =0x021C0F3C
	str r2, [sp]
	str r3, [sp, #4]
	bl sub_02170DB8
	cmp r0, #0
	bne _021BCD1E
	add sp, #0x54
	mov r0, #5
	pop {r4, r5, r6, r7, pc}
_021BCD1E:
	ldr r0, [r5, #0x1c]
	ldr r1, _021BCFAC ; =0x021C0F44
	bl sub_02171390
	ldr r1, [sp]
	cmp r0, #0
	str r0, [r1]
	bne _021BCD36
	mov r0, #0
	add sp, #0x54
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021BCD36:
	lsl r6, r0, #2
	add r0, r6, #0
	bl sub_0216DDDC
	str r0, [sp, #0x18]
	cmp r0, #0
	bne _021BCD4A
	add sp, #0x54
	mov r0, #6
	pop {r4, r5, r6, r7, pc}
_021BCD4A:
	mov r1, #0
	str r1, [sp, #0x10]
	mov r1, #0
	add r2, r6, #0
	blx sub_020839D0
	ldr r0, [sp, #0x18]
	str r0, [r4]
	ldr r0, [sp]
	ldr r0, [r0]
	cmp r0, #0
	bgt _021BCD64
	b _021BD06E
_021BCD64:
	ldr r0, [sp, #4]
	lsl r0, r0, #4
	str r0, [sp, #8]
_021BCD6A:
	ldr r0, [r5, #0x1c]
	ldr r1, _021BCFAC ; =0x021C0F44
	bl sub_02170D28
	cmp r0, #0
	bne _021BCD7C
	add sp, #0x54
	mov r0, #5
	pop {r4, r5, r6, r7, pc}
_021BCD7C:
	ldr r0, [sp, #8]
	bl sub_0216DDDC
	str r0, [sp, #0x14]
	cmp r0, #0
	bne _021BCD8E
	add sp, #0x54
	mov r0, #6
	pop {r4, r5, r6, r7, pc}
_021BCD8E:
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r2, [sp, #8]
	mov r1, #0
	blx sub_020839D0
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsl r2, r0, #2
	ldr r0, [sp, #0x18]
	str r1, [r0, r2]
	ldr r0, [r5, #0x1c]
	ldr r1, _021BCFB0 ; =0x021C0F58
	bl sub_02171390
	ldr r1, [sp, #4]
	cmp r1, r0
	beq _021BCDB8
	add sp, #0x54
	mov r0, #5
	pop {r4, r5, r6, r7, pc}
_021BCDB8:
	add r0, r1, #0
	cmp r0, #0
	bgt _021BCDC0
	b _021BD05C
_021BCDC0:
	ldr r6, _021BCFB4 ; =0x021C0F70
_021BCDC2:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x14]
	lsl r0, r0, #4
	add r4, r1, r0
	ldr r1, [sp, #0xc]
	lsl r2, r1, #2
	ldr r1, [sp, #0x68]
	ldr r2, [r1, r2]
	ldr r1, [sp, #0x14]
	str r2, [r1, r0]
	ldr r0, [r5, #0x1c]
	ldr r1, _021BCFB0 ; =0x021C0F58
	bl sub_02170D28
	cmp r0, #0
	bne _021BCDE8
	add sp, #0x54
	mov r0, #5
	pop {r4, r5, r6, r7, pc}
_021BCDE8:
	ldr r0, [r5, #0x1c]
	ldr r1, _021BCFB8 ; =0x021C0F64
	bl sub_02170DB8
	cmp r0, #0
	ldr r0, [r5, #0x1c]
	beq _021BCE12
	add r1, r6, #0
	add r2, sp, #0x50
	bl sub_02171090
	cmp r0, #0
	bne _021BCE08
	add sp, #0x54
	mov r0, #5
	pop {r4, r5, r6, r7, pc}
_021BCE08:
	mov r0, #0
	str r0, [r4, #4]
	ldr r0, [sp, #0x50]
	strb r0, [r4, #8]
	b _021BD04E
_021BCE12:
	ldr r1, _021BCFBC ; =0x021C0F78
	bl sub_02170DB8
	cmp r0, #0
	ldr r0, [r5, #0x1c]
	beq _021BCE3A
	add r1, r6, #0
	add r2, sp, #0x4c
	bl sub_02171090
	cmp r0, #0
	bne _021BCE30
	add sp, #0x54
	mov r0, #5
	pop {r4, r5, r6, r7, pc}
_021BCE30:
	mov r0, #1
	str r0, [r4, #4]
	ldr r0, [sp, #0x4c]
	strh r0, [r4, #8]
	b _021BD04E
_021BCE3A:
	ldr r1, _021BCFC0 ; =0x021C0F84
	bl sub_02170DB8
	cmp r0, #0
	ldr r0, [r5, #0x1c]
	beq _021BCE62
	add r1, r6, #0
	add r2, sp, #0x48
	bl sub_02171090
	cmp r0, #0
	bne _021BCE58
	add sp, #0x54
	mov r0, #5
	pop {r4, r5, r6, r7, pc}
_021BCE58:
	mov r0, #2
	str r0, [r4, #4]
	ldr r0, [sp, #0x48]
_021BCE5E:
	str r0, [r4, #8]
	b _021BD04E
_021BCE62:
	ldr r1, _021BCFC4 ; =0x021C0F90
	bl sub_02170DB8
	cmp r0, #0
	ldr r0, [r5, #0x1c]
	beq _021BCE8E
	add r1, r6, #0
	add r2, sp, #0x40
	bl sub_02171108
	cmp r0, #0
	bne _021BCE80
	add sp, #0x54
	mov r0, #5
	pop {r4, r5, r6, r7, pc}
_021BCE80:
	mov r0, #9
	str r0, [r4, #4]
	add r0, sp, #0x40
	add r4, #8
	ldmia r0!, {r2, r3}
	stmia r4!, {r2, r3}
	b _021BD04E
_021BCE8E:
	ldr r1, _021BCFC8 ; =0x021C0F9C
	bl sub_02170DB8
	cmp r0, #0
	ldr r0, [r5, #0x1c]
	beq _021BCEB4
	add r1, r6, #0
	add r2, sp, #0x3c
	bl sub_0217123C
	cmp r0, #0
	bne _021BCEAC
	add sp, #0x54
	mov r0, #5
	pop {r4, r5, r6, r7, pc}
_021BCEAC:
	mov r0, #3
	str r0, [r4, #4]
	ldr r0, [sp, #0x3c]
	b _021BCE5E
_021BCEB4:
	ldr r1, _021BCFCC ; =0x021C0FA8
	bl sub_02170DB8
	cmp r0, #0
	ldr r0, [r5, #0x1c]
	beq _021BCEEE
	add r1, r6, #0
	add r2, sp, #0x38
	add r3, sp, #0x34
	bl sub_02170E14
	cmp r0, #0
	bne _021BCED4
	add sp, #0x54
	mov r0, #5
	pop {r4, r5, r6, r7, pc}
_021BCED4:
	ldr r2, [sp, #0x38]
	cmp r2, #0
	beq _021BCEE2
	ldr r1, [sp, #0x34]
	mov r0, #0
	strb r0, [r2, r1]
	b _021BCEE6
_021BCEE2:
	ldr r0, _021BCFD0 ; =0x021C0FBC
	str r0, [sp, #0x38]
_021BCEE6:
	mov r0, #4
	str r0, [r4, #4]
	ldr r0, [sp, #0x38]
	b _021BCE5E
_021BCEEE:
	ldr r1, _021BCFD4 ; =0x021C0FC0
	bl sub_02170DB8
	cmp r0, #0
	ldr r0, [r5, #0x1c]
	beq _021BCF36
	add r1, r6, #0
	add r2, sp, #0x30
	add r3, sp, #0x2c
	bl sub_02170E14
	cmp r0, #0
	bne _021BCF0E
	add sp, #0x54
	mov r0, #5
	pop {r4, r5, r6, r7, pc}
_021BCF0E:
	ldr r2, [sp, #0x30]
	cmp r2, #0
	beq _021BCF1C
	ldr r1, [sp, #0x2c]
	mov r0, #0
	strb r0, [r2, r1]
	b _021BCF20
_021BCF1C:
	ldr r0, _021BCFD0 ; =0x021C0FBC
	str r0, [sp, #0x30]
_021BCF20:
	ldr r0, [sp, #0x30]
	bl sub_0216EDD0
	cmp r0, #0
	bne _021BCF30
	add sp, #0x54
	mov r0, #6
	pop {r4, r5, r6, r7, pc}
_021BCF30:
	mov r1, #5
	str r1, [r4, #4]
	b _021BCE5E
_021BCF36:
	ldr r1, _021BCFD8 ; =0x021C0FD4
	bl sub_02170DB8
	cmp r0, #0
	ldr r0, [r5, #0x1c]
	beq _021BCF7C
	add r1, r6, #0
	add r2, sp, #0x28
	add r3, sp, #0x24
	bl sub_02170E14
	cmp r0, #0
	bne _021BCF56
	add sp, #0x54
	mov r0, #5
	pop {r4, r5, r6, r7, pc}
_021BCF56:
	ldr r2, [sp, #0x28]
	cmp r2, #0
	beq _021BCF72
	ldr r1, [sp, #0x24]
	mov r0, #0
	strb r0, [r2, r1]
	ldr r0, [sp, #0x28]
	ldr r1, _021BCFDC ; =0x021C0FE4
	blx sub_02085F00
	mov r1, #1
	cmp r0, #0
	beq _021BCF74
	b _021BCF72
_021BCF72:
	mov r1, #0
_021BCF74:
	mov r0, #6
	str r0, [r4, #4]
	str r1, [r4, #8]
	b _021BD04E
_021BCF7C:
	ldr r1, _021BCFE0 ; =0x021C0FEC
	bl sub_02170DB8
	cmp r0, #0
	ldr r0, [r5, #0x1c]
	beq _021BCFA2
	add r1, r6, #0
	add r2, sp, #0x20
	bl sub_02171184
	cmp r0, #0
	bne _021BCF9A
	add sp, #0x54
	mov r0, #5
	pop {r4, r5, r6, r7, pc}
_021BCF9A:
	mov r0, #7
	str r0, [r4, #4]
	ldr r0, [sp, #0x20]
	b _021BCE5E
_021BCFA2:
	ldr r1, _021BCFE4 ; =0x021C1000
	b _021BCFE8
	nop
_021BCFA8: .word 0x021C0F3C
_021BCFAC: .word 0x021C0F44
_021BCFB0: .word 0x021C0F58
_021BCFB4: .word 0x021C0F70
_021BCFB8: .word 0x021C0F64
_021BCFBC: .word 0x021C0F78
_021BCFC0: .word 0x021C0F84
_021BCFC4: .word 0x021C0F90
_021BCFC8: .word 0x021C0F9C
_021BCFCC: .word 0x021C0FA8
_021BCFD0: .word 0x021C0FBC
_021BCFD4: .word 0x021C0FC0
_021BCFD8: .word 0x021C0FD4
_021BCFDC: .word 0x021C0FE4
_021BCFE0: .word 0x021C0FEC
_021BCFE4: .word 0x021C1000
_021BCFE8:
	bl sub_02170DB8
	cmp r0, #0
	beq _021BD048
	ldr r0, [r5, #0x1c]
	add r1, r6, #0
	mov r2, #0
	add r3, sp, #0x1c
	bl sub_02170FEC
	cmp r0, #0
	bne _021BD006
	add sp, #0x54
	mov r0, #5
	pop {r4, r5, r6, r7, pc}
_021BD006:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	ble _021BD036
	bl sub_0216DDDC
	add r7, r0, #0
	bne _021BD01A
	add sp, #0x54
	mov r0, #6
	pop {r4, r5, r6, r7, pc}
_021BD01A:
	ldr r0, [r5, #0x1c]
	add r1, r6, #0
	add r2, r7, #0
	add r3, sp, #0x1c
	bl sub_02170FEC
	cmp r0, #0
	bne _021BD03C
	add r0, r7, #0
	bl sub_0216DDFC
	add sp, #0x54
	mov r0, #5
	pop {r4, r5, r6, r7, pc}
_021BD036:
	mov r0, #0
	mov r7, #0
	str r0, [sp, #0x1c]
_021BD03C:
	mov r0, #8
	str r0, [r4, #4]
	ldr r0, [sp, #0x1c]
	str r0, [r4, #0xc]
	str r7, [r4, #8]
	b _021BD04E
_021BD048:
	add sp, #0x54
	mov r0, #0x16
	pop {r4, r5, r6, r7, pc}
_021BD04E:
	ldr r0, [sp, #0xc]
	add r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [sp, #0xc]
	cmp r1, r0
	bge _021BD05C
	b _021BCDC2
_021BD05C:
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
	ldr r0, [sp]
	ldr r1, [r0]
	ldr r0, [sp, #0x10]
	cmp r0, r1
	bge _021BD06E
	b _021BCD6A
_021BD06E:
	mov r0, #0
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy260_21bccfc

	thumb_func_start ovy260_21bd074
ovy260_21bd074: ; 0x021BD074
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	beq _021BD0AE
	mov r4, #0
	cmp r6, #0
	ble _021BD0A8
_021BD082:
	lsl r0, r4, #4
	add r5, r7, r0
	ldr r0, [r5, #4]
	cmp r0, #8
	bne _021BD096
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _021BD096
	bl sub_0216DDFC
_021BD096:
	ldr r0, [r5, #4]
	cmp r0, #5
	bne _021BD0A2
	ldr r0, [r5, #8]
	bl sub_0216DDFC
_021BD0A2:
	add r4, r4, #1
	cmp r4, r6
	blt _021BD082
_021BD0A8:
	add r0, r7, #0
	bl sub_0216DDFC
_021BD0AE:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy260_21bd074

	thumb_func_start ovy260_21bd0b0
ovy260_21bd0b0: ; 0x021BD0B0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	str r1, [sp, #4]
	add r5, r2, #0
	beq _021BD126
	mov r0, #0
	str r0, [sp, #8]
	add r0, r1, #0
	cmp r0, #0
	ble _021BD120
_021BD0C6:
	ldr r0, [sp, #8]
	lsl r6, r0, #2
	ldr r0, [r5, r6]
	cmp r0, #0
	beq _021BD114
	ldr r0, [sp]
	mov r4, #0
	cmp r0, #0
	ble _021BD106
_021BD0D8:
	ldr r0, [r5, r6]
	lsl r7, r4, #4
	add r1, r0, r7
	ldr r0, [r1, #4]
	cmp r0, #8
	bne _021BD0EE
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _021BD0EE
	bl sub_0216DDFC
_021BD0EE:
	ldr r0, [r5, r6]
	add r1, r0, r7
	ldr r0, [r1, #4]
	cmp r0, #5
	bne _021BD0FE
	ldr r0, [r1, #8]
	bl sub_0216DDFC
_021BD0FE:
	ldr r0, [sp]
	add r4, r4, #1
	cmp r4, r0
	blt _021BD0D8
_021BD106:
	ldr r0, [sp, #8]
	lsl r4, r0, #2
	ldr r0, [r5, r4]
	bl sub_0216DDFC
	mov r0, #0
	str r0, [r5, r4]
_021BD114:
	ldr r0, [sp, #8]
	add r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [sp, #8]
	cmp r1, r0
	blt _021BD0C6
_021BD120:
	add r0, r5, #0
	bl sub_0216DDFC
_021BD126:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy260_21bd0b0

	thumb_func_start ovy260_21bd12c
ovy260_21bd12c: ; 0x021BD12C
	push {r3, lr}
	ldr r3, [r0, #8]
	ldr r0, [r3]
	cmp r0, #0
	bne _021BD13A
	mov r0, #4
	pop {r3, pc}
_021BD13A:
	ldr r1, [r3, #8]
	cmp r1, #0
	bgt _021BD144
	mov r0, #6
	pop {r3, pc}
_021BD144:
	ldr r0, [r3, #4]
	cmp r0, #0
	bne _021BD14E
	mov r0, #5
	pop {r3, pc}
_021BD14E:
	ldr r2, [r3, #0x14]
	cmp r2, #0
	bge _021BD158
	mov r0, #0xa
	pop {r3, pc}
_021BD158:
	ldr r2, [r3, #0x18]
	cmp r2, #0
	bgt _021BD162
	mov r0, #0xb
	pop {r3, pc}
_021BD162:
	bl ovy260_21bcc04
	pop {r3, pc}
	thumb_func_end ovy260_21bd12c

	thumb_func_start ovy260_21bd168
ovy260_21bd168: ; 0x021BD168
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r4, [r5, #8]
	ldr r6, _021BD1F8 ; =0x021C0F0C
	ldr r0, [r5, #0x18]
	ldr r2, _021BD1FC ; =0x021C1010
	ldr r3, [r4]
	add r1, r6, #0
	bl sub_021706B8
	ldr r3, [r4, #0xc]
	cmp r3, #0
	beq _021BD18C
	ldr r0, [r5, #0x18]
	ldr r2, _021BD200 ; =0x021C1018
	add r1, r6, #0
	bl sub_021706B8
_021BD18C:
	ldr r3, [r4, #0x10]
	cmp r3, #0
	beq _021BD19C
	ldr r0, [r5, #0x18]
	ldr r1, _021BD1F8 ; =0x021C0F0C
	ldr r2, _021BD204 ; =0x021C1020
	bl sub_021706B8
_021BD19C:
	ldr r6, _021BD1F8 ; =0x021C0F0C
	ldr r0, [r5, #0x18]
	ldr r2, _021BD208 ; =0x021C1028
	ldr r3, [r4, #0x14]
	add r1, r6, #0
	bl sub_02170818
	ldr r0, [r5, #0x18]
	ldr r2, _021BD20C ; =0x021C1030
	ldr r3, [r4, #0x18]
	add r1, r6, #0
	bl sub_02170818
	ldr r3, [r4, #0x1c]
	cmp r3, #0
	beq _021BD1C6
	ldr r0, [r5, #0x18]
	ldr r2, _021BD210 ; =0x021C1034
	add r1, r6, #0
	bl sub_021706B8
_021BD1C6:
	ldr r6, _021BD1F8 ; =0x021C0F0C
	ldr r0, [r5, #0x18]
	ldr r2, _021BD214 ; =0x021C1044
	ldr r3, [r4, #0x20]
	add r1, r6, #0
	bl sub_02170818
	ldr r1, [r4, #0x24]
	ldr r2, [r4, #0x28]
	add r0, r5, #0
	bl ovy260_21bccb8
	ldr r0, [r5, #0x18]
	ldr r2, _021BD218 ; =0x021C1050
	ldr r3, [r4, #0x2c]
	add r1, r6, #0
	bl sub_02170818
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	add r0, r5, #0
	bl ovy260_21bcc30
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_021BD1F8: .word 0x021C0F0C
_021BD1FC: .word 0x021C1010
_021BD200: .word 0x021C1018
_021BD204: .word 0x021C1020
_021BD208: .word 0x021C1028
_021BD20C: .word 0x021C1030
_021BD210: .word 0x021C1034
_021BD214: .word 0x021C1044
_021BD218: .word 0x021C1050
	thumb_func_end ovy260_21bd168

	thumb_func_start ovy260_21bd21c
ovy260_21bd21c: ; 0x021BD21C
	push {r3, lr}
	ldr r3, [r0, #8]
	ldr r2, [r0, #0xc]
	ldr r1, [r3, #4]
	str r1, [sp]
	ldr r3, [r3, #8]
	add r1, r2, #4
	bl ovy260_21bccfc
	pop {r3, pc}
	thumb_func_end ovy260_21bd21c

	thumb_func_start ovy260_21bd230
ovy260_21bd230: ; 0x021BD230
	push {r3, lr}
	ldr r2, [r0, #0xc]
	ldr r1, [r0, #8]
	cmp r2, #0
	beq _021BD242
	ldr r0, [r1, #8]
	ldmia r2!, {r1, r2}
	bl ovy260_21bd0b0
_021BD242:
	pop {r3, pc}
	thumb_func_end ovy260_21bd230

	thumb_func_start ovy260_21bd244
ovy260_21bd244: ; 0x021BD244
	push {r3, lr}
	ldr r2, [r0, #8]
	ldr r0, [r2]
	cmp r0, #0
	bne _021BD252
	mov r0, #4
	pop {r3, pc}
_021BD252:
	ldr r1, [r2, #8]
	cmp r1, #0
	bgt _021BD25C
	mov r0, #6
	pop {r3, pc}
_021BD25C:
	ldr r0, [r2, #4]
	cmp r0, #0
	beq _021BD268
	bl ovy260_21bcc04
	pop {r3, pc}
_021BD268:
	mov r0, #5
	pop {r3, pc}
	thumb_func_end ovy260_21bd244

	thumb_func_start ovy260_21bd26c
ovy260_21bd26c: ; 0x021BD26C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r4, [r5, #8]
	ldr r0, [r5, #0x18]
	ldr r1, _021BD28C ; =0x021C0F0C
	ldr r2, _021BD290 ; =0x021C1010
	ldr r3, [r4]
	bl sub_021706B8
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	add r0, r5, #0
	bl ovy260_21bcc30
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021BD28C: .word 0x021C0F0C
_021BD290: .word 0x021C1010
	thumb_func_end ovy260_21bd26c

	thumb_func_start ovy260_21bd294
ovy260_21bd294: ; 0x021BD294
	push {r3, lr}
	ldr r3, [r0, #8]
	ldr r2, [r0, #0xc]
	ldr r1, [r3, #4]
	str r1, [sp]
	ldr r3, [r3, #8]
	add r1, r2, #4
	bl ovy260_21bccfc
	pop {r3, pc}
	thumb_func_end ovy260_21bd294

	thumb_func_start ovy260_21bd2a8
ovy260_21bd2a8: ; 0x021BD2A8
	push {r3, lr}
	ldr r2, [r0, #0xc]
	ldr r1, [r0, #8]
	cmp r2, #0
	beq _021BD2BA
	ldr r0, [r1, #8]
	ldmia r2!, {r1, r2}
	bl ovy260_21bd0b0
_021BD2BA:
	pop {r3, pc}
	thumb_func_end ovy260_21bd2a8
_021BD2BC:
	.byte 0x01, 0x49, 0x02, 0x4B
	.byte 0x18, 0x47, 0xC0, 0x46, 0xB4, 0x0D, 0x1C, 0x02, 0x15, 0xC8, 0x1B, 0x02

	thumb_func_start ovy260_21bd2cc
ovy260_21bd2cc: ; 0x021BD2CC
	push {r3, lr}
	ldr r2, [r0, #8]
	ldr r0, [r2]
	cmp r0, #0
	bne _021BD2DA
	mov r0, #4
	pop {r3, pc}
_021BD2DA:
	ldr r0, [r2, #8]
	cmp r0, #0
	bgt _021BD2E4
	mov r0, #0xd
	pop {r3, pc}
_021BD2E4:
	ldr r0, [r2, #4]
	cmp r0, #0
	bne _021BD2EE
	mov r0, #0xc
	pop {r3, pc}
_021BD2EE:
	ldr r1, [r2, #0x10]
	cmp r1, #0
	bgt _021BD2F8
	mov r0, #6
	pop {r3, pc}
_021BD2F8:
	ldr r0, [r2, #0xc]
	cmp r0, #0
	beq _021BD304
	bl ovy260_21bcc04
	pop {r3, pc}
_021BD304:
	mov r0, #5
	pop {r3, pc}
	thumb_func_end ovy260_21bd2cc

	thumb_func_start ovy260_21bd308
ovy260_21bd308: ; 0x021BD308
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r4, [r5, #8]
	ldr r0, [r5, #0x18]
	ldr r1, _021BD334 ; =0x021C0F0C
	ldr r2, _021BD338 ; =0x021C1010
	ldr r3, [r4]
	bl sub_021706B8
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	add r0, r5, #0
	bl ovy260_21bcc74
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #0x10]
	add r0, r5, #0
	bl ovy260_21bcc30
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021BD334: .word 0x021C0F0C
_021BD338: .word 0x021C1010
	thumb_func_end ovy260_21bd308

	thumb_func_start ovy260_21bd33c
ovy260_21bd33c: ; 0x021BD33C
	push {r3, lr}
	ldr r3, [r0, #8]
	ldr r2, [r0, #0xc]
	ldr r1, [r3, #0xc]
	str r1, [sp]
	ldr r3, [r3, #0x10]
	add r1, r2, #4
	bl ovy260_21bccfc
	pop {r3, pc}
	thumb_func_end ovy260_21bd33c

	thumb_func_start ovy260_21bd350
ovy260_21bd350: ; 0x021BD350
	push {r3, lr}
	ldr r2, [r0, #0xc]
	ldr r1, [r0, #8]
	cmp r2, #0
	beq _021BD362
	ldr r0, [r1, #0x10]
	ldmia r2!, {r1, r2}
	bl ovy260_21bd0b0
_021BD362:
	pop {r3, pc}
	thumb_func_end ovy260_21bd350
_021BD364:
	.byte 0x01, 0x49, 0x02, 0x4B, 0x18, 0x47, 0xC0, 0x46, 0x8C, 0x0D, 0x1C, 0x02
	.byte 0x15, 0xC8, 0x1B, 0x02

	thumb_func_start ovy260_21bd374
ovy260_21bd374: ; 0x021BD374
	push {r3, lr}
	ldr r2, [r0, #8]
	ldr r0, [r2]
	cmp r0, #0
	bne _021BD382
	mov r0, #4
	pop {r3, pc}
_021BD382:
	ldr r1, [r2, #8]
	cmp r1, #0
	bgt _021BD38C
	mov r0, #6
	pop {r3, pc}
_021BD38C:
	ldr r0, [r2, #4]
	cmp r0, #0
	beq _021BD398
	bl ovy260_21bcc04
	pop {r3, pc}
_021BD398:
	mov r0, #5
	pop {r3, pc}
	thumb_func_end ovy260_21bd374

	thumb_func_start ovy260_21bd39c
ovy260_21bd39c: ; 0x021BD39C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r4, [r5, #8]
	ldr r6, _021BD3DC ; =0x021C0F0C
	ldr r0, [r5, #0x18]
	ldr r2, _021BD3E0 ; =0x021C1010
	ldr r3, [r4]
	add r1, r6, #0
	bl sub_021706B8
	ldr r3, [r4, #0xc]
	cmp r3, #0
	beq _021BD3C0
	ldr r0, [r5, #0x18]
	ldr r2, _021BD3E4 ; =0x021C1018
	add r1, r6, #0
	bl sub_021706B8
_021BD3C0:
	ldr r0, [r5, #0x18]
	ldr r1, _021BD3DC ; =0x021C0F0C
	ldr r2, _021BD3E8 ; =0x021C1030
	mov r3, #1
	bl sub_02170818
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	add r0, r5, #0
	bl ovy260_21bcc30
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_021BD3DC: .word 0x021C0F0C
_021BD3E0: .word 0x021C1010
_021BD3E4: .word 0x021C1018
_021BD3E8: .word 0x021C1030
	thumb_func_end ovy260_21bd39c

	thumb_func_start ovy260_21bd3ec
ovy260_21bd3ec: ; 0x021BD3EC
	push {r4, r5, lr}
	sub sp, #0xc
	ldr r3, [r0, #8]
	ldr r4, [r0, #0xc]
	ldr r1, [r3, #4]
	add r2, sp, #4
	str r1, [sp]
	ldr r3, [r3, #8]
	add r1, sp, #8
	bl ovy260_21bccfc
	add r5, r0, #0
	bne _021BD41A
	ldr r1, [sp, #8]
	cmp r1, #0
	beq _021BD416
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _021BD416
	ldr r0, [r1]
	b _021BD418
_021BD416:
	mov r0, #0
_021BD418:
	str r0, [r4]
_021BD41A:
	ldr r0, [sp, #8]
	bl sub_0216DDFC
	add r0, r5, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy260_21bd3ec

	thumb_func_start ovy260_21bd428
ovy260_21bd428: ; 0x021BD428
	push {r3, lr}
	ldr r1, [r0, #0xc]
	ldr r2, [r0, #8]
	cmp r1, #0
	beq _021BD43A
	ldr r0, [r2, #8]
	ldr r1, [r1]
	bl ovy260_21bd074
_021BD43A:
	pop {r3, pc}
	thumb_func_end ovy260_21bd428

	thumb_func_start ovy260_21bd43c
ovy260_21bd43c: ; 0x021BD43C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r7, r0, #0
	bl sub_0216C77C
	add r0, r4, #0
	bl ovy260_21bda1c
	add r0, sp, #0xc
	add r1, sp, #8
	bl sub_0215F9B4
	ldr r4, _021BD4E4 ; =0x021C1E28
	mov r5, #0
	ldr r0, _021BD4E8 ; =ovy260_21bd8a4
	str r5, [r4]
	str r0, [sp]
	str r5, [sp, #4]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	mov r0, #0
	add r1, r7, #0
	bl ovy260_21bf7dc
	add r2, r0, #0
	beq _021BD490
	ldr r1, _021BD4EC ; =0x021C105C
	mov r0, #0x8e
	bl ovy260_21bd868
	mov r0, #1
	add r1, r5, #0
	bl sub_021BD988
	add r1, r0, #0
	mov r0, #0x14
	blx sub_020584CC
	add sp, #0x10
	mov r0, #7
	pop {r3, r4, r5, r6, r7, pc}
_021BD490:
	ldr r0, [r4]
	cmp r0, #0
	bne _021BD4AC
	mov r5, #0xa
	mov r6, #0
_021BD49A:
	add r0, r5, #0
	bl OS_Sleep
	add r0, r6, #0
	bl sub_0216C910
	ldr r0, [r4]
	cmp r0, #0
	beq _021BD49A
_021BD4AC:
	mov r0, #0
	blx sub_02058390
	cmp r0, #0
	beq _021BD4BC
	add sp, #0x10
	mov r0, #7
	pop {r3, r4, r5, r6, r7, pc}
_021BD4BC:
	ldr r1, _021BD4F0 ; =0x021C1E2C
	add r0, r7, #0
	bl ovy260_21bdbdc
	add r5, r0, #0
	beq _021BD4DE
	bl sub_021BD94C
	add r4, r0, #0
	mov r0, #2
	add r1, r5, #0
	bl sub_021BD988
	add r1, r0, #0
	add r0, r4, #0
	blx sub_020584CC
_021BD4DE:
	add r0, r5, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BD4E4: .word 0x021C1E28
_021BD4E8: .word ovy260_21bd8a4
_021BD4EC: .word 0x021C105C
_021BD4F0: .word 0x021C1E2C
	thumb_func_end ovy260_21bd43c

	thumb_func_start ovy260_21bd4f4
ovy260_21bd4f4: ; 0x021BD4F4
	push {r3, r4, r5, lr}
	ldr r0, _021BD53C ; =0x021C1E28
	ldr r0, [r0, #4]
	bl ovy260_21bdc18
	add r4, r0, #0
	beq _021BD518
	bl sub_021BD94C
	add r5, r0, #0
	mov r0, #3
	add r1, r4, #0
	bl sub_021BD988
	add r1, r0, #0
	add r0, r5, #0
	blx sub_020584CC
_021BD518:
	bl ovy260_21bd540
	bl sub_0216C998
	mov r0, #0
	mov r5, #0
	bl sub_0216C910
	bl sub_0216C9F4
	cmp r0, #2
	beq _021BD536
	add r0, r5, #0
	bl sub_0216C910
_021BD536:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021BD53C: .word 0x021C1E28
	thumb_func_end ovy260_21bd4f4

	thumb_func_start ovy260_21bd540
ovy260_21bd540: ; 0x021BD540
	push {r3, lr}
	bl ovy260_21bf674
	bl sub_021A1178
	bl sub_021BDE80
	bl sub_021A1178
	pop {r3, pc}
	thumb_func_end ovy260_21bd540

	thumb_func_start ovy260_21bd554
ovy260_21bd554: ; 0x021BD554
	push {r4, lr}
	ldr r0, _021BD578 ; =0x021C1E28
	ldr r0, [r0, #4]
	bl ovy260_21bdc38
	add r4, r0, #0
	beq _021BD572
	mov r0, #4
	add r1, r4, #0
	bl sub_021BD988
	add r1, r0, #0
	mov r0, #8
	blx sub_020584CC
_021BD572:
	add r0, r4, #0
	pop {r4, pc}
	nop
_021BD578: .word 0x021C1E28
	thumb_func_end ovy260_21bd554

	thumb_func_start ovy260_21bd57c
ovy260_21bd57c: ; 0x021BD57C
	push {r4, lr}
	sub sp, #8
	ldr r3, _021BD5B0 ; =0x021C1E28
	str r0, [r3, #8]
	str r1, [sp]
	str r2, [sp, #4]
	ldr r0, [r3, #4]
	ldr r1, _021BD5B4 ; =0x021C2054
	ldr r2, _021BD5B8 ; =0x021C1E3C
	ldr r3, _021BD5BC ; =ovy260_21bd5c0
	bl ovy260_21bdc68
	add r4, r0, #0
	beq _021BD5A8
	mov r0, #5
	add r1, r4, #0
	bl sub_021BD988
	add r1, r0, #0
	mov r0, #8
	blx sub_020584CC
_021BD5A8:
	add r0, r4, #0
	add sp, #8
	pop {r4, pc}
	nop
_021BD5B0: .word 0x021C1E28
_021BD5B4: .word 0x021C2054
_021BD5B8: .word 0x021C1E3C
_021BD5BC: .word ovy260_21bd5c0
	thumb_func_end ovy260_21bd57c

	thumb_func_start ovy260_21bd5c0
ovy260_21bd5c0: ; 0x021BD5C0
	push {r3, lr}
	add r0, r2, #0
	ldr r2, _021BD5D0 ; =0x021C1E28
	add r1, r3, #0
	ldr r2, [r2, #8]
	blx r2
	pop {r3, pc}
	nop
_021BD5D0: .word 0x021C1E28
	thumb_func_end ovy260_21bd5c0

	thumb_func_start ovy260_21bd5d4
ovy260_21bd5d4: ; 0x021BD5D4
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, _021BD610 ; =0x021C1E28
	str r1, [r0, #0xc]
	ldr r1, _021BD614 ; =0x021C1E3C
	str r1, [sp]
	ldr r1, _021BD618 ; =ovy260_21bd620
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	ldr r0, [r0, #4]
	ldr r3, _021BD61C ; =0x021C2054
	mov r1, #0
	add r2, r4, #0
	bl ovy260_21bdca0
	add r4, r0, #0
	beq _021BD60A
	mov r0, #7
	add r1, r4, #0
	bl sub_021BD988
	add r1, r0, #0
	mov r0, #8
	blx sub_020584CC
_021BD60A:
	add r0, r4, #0
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
_021BD610: .word 0x021C1E28
_021BD614: .word 0x021C1E3C
_021BD618: .word ovy260_21bd620
_021BD61C: .word 0x021C2054
	thumb_func_end ovy260_21bd5d4

	thumb_func_start ovy260_21bd620
ovy260_21bd620: ; 0x021BD620
	push {r3, lr}
	add r0, r2, #0
	ldr r2, _021BD630 ; =0x021C1E28
	add r1, r3, #0
	ldr r2, [r2, #0xc]
	blx r2
	pop {r3, pc}
	nop
_021BD630: .word 0x021C1E28
	thumb_func_end ovy260_21bd620

	thumb_func_start ovy260_21bd634
ovy260_21bd634: ; 0x021BD634
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, _021BD674 ; =0x021C1E28
	add r4, r1, #0
	str r2, [r0, #0x10]
	ldr r1, _021BD678 ; =0x021C1E3C
	add r2, r4, #0
	str r1, [sp]
	ldr r1, _021BD67C ; =ovy260_21bd684
	str r1, [sp, #4]
	str r3, [sp, #8]
	ldr r1, [sp, #0x20]
	ldr r3, _021BD680 ; =0x021C2054
	str r1, [sp, #0xc]
	ldr r0, [r0, #4]
	add r1, r5, #0
	bl ovy260_21bdd04
	add r4, r0, #0
	beq _021BD66E
	mov r0, #0xb
	add r1, r4, #0
	bl sub_021BD988
	add r1, r0, #0
	mov r0, #8
	blx sub_020584CC
_021BD66E:
	add r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
_021BD674: .word 0x021C1E28
_021BD678: .word 0x021C1E3C
_021BD67C: .word ovy260_21bd684
_021BD680: .word 0x021C2054
	thumb_func_end ovy260_21bd634

	thumb_func_start ovy260_21bd684
ovy260_21bd684: ; 0x021BD684
	push {r3, lr}
	add r0, r2, #0
	ldr r2, _021BD694 ; =0x021C1E28
	add r1, r3, #0
	ldr r2, [r2, #0x10]
	blx r2
	pop {r3, pc}
	nop
_021BD694: .word 0x021C1E28
	thumb_func_end ovy260_21bd684

	thumb_func_start ovy260_21bd698
ovy260_21bd698: ; 0x021BD698
	push {r4, lr}
	add r1, r0, #0
	ldr r0, _021BD6BC ; =0x021C1E28
	ldr r0, [r0, #4]
	bl ovy260_21bdc5c
	add r4, r0, #0
	beq _021BD6B8
	mov r0, #8
	add r1, r4, #0
	bl sub_021BD988
	add r1, r0, #0
	mov r0, #8
	blx sub_020584CC
_021BD6B8:
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
_021BD6BC: .word 0x021C1E28
	thumb_func_end ovy260_21bd698

	thumb_func_start sub_021BD6C0
sub_021BD6C0: ; 0x021BD6C0
	ldr r0, _021BD6C8 ; =0x021C1E28
	ldr r3, _021BD6CC ; =sub_021BDC54
	ldr r0, [r0, #4]
	bx r3
	.align 2, 0
_021BD6C8: .word 0x021C1E28
_021BD6CC: .word sub_021BDC54
	thumb_func_end sub_021BD6C0

	thumb_func_start sub_021BD6D0
sub_021BD6D0: ; 0x021BD6D0
	ldr r0, _021BD6D8 ; =0x021C1E28
	ldr r3, _021BD6DC ; =sub_021BDC58
	ldr r0, [r0, #4]
	bx r3
	.align 2, 0
_021BD6D8: .word 0x021C1E28
_021BD6DC: .word sub_021BDC58
	thumb_func_end sub_021BD6D0

	thumb_func_start ovy260_21bd6e0
ovy260_21bd6e0: ; 0x021BD6E0
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r0, #0
	ldr r0, _021BD714 ; =0x021C1E28
	str r3, [sp]
	add r5, r1, #0
	add r4, r2, #0
	ldr r0, [r0, #4]
	add r1, r6, #0
	add r2, r5, #0
	add r3, r4, #0
	bl ovy260_21bdd88
	add r4, r0, #0
	beq _021BD70E
	mov r0, #9
	add r1, r4, #0
	bl sub_021BD988
	add r1, r0, #0
	mov r0, #8
	blx sub_020584CC
_021BD70E:
	add r0, r4, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021BD714: .word 0x021C1E28
	thumb_func_end ovy260_21bd6e0

	thumb_func_start ovy260_21bd718
ovy260_21bd718: ; 0x021BD718
	push {r4, lr}
	bl sub_021BDDC0
	add r4, r0, #0
	beq _021BD732
	mov r0, #0xa
	add r1, r4, #0
	bl sub_021BD988
	add r1, r0, #0
	mov r0, #8
	blx sub_020584CC
_021BD732:
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy260_21bd718

	thumb_func_start ovy260_21bd738
ovy260_21bd738: ; 0x021BD738
	push {r4, lr}
	bl sub_021BDDC8
	add r4, r0, #0
	beq _021BD752
	mov r0, #0xa
	add r1, r4, #0
	bl sub_021BD988
	add r1, r0, #0
	mov r0, #8
	blx sub_020584CC
_021BD752:
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy260_21bd738

	thumb_func_start ovy260_21bd758
ovy260_21bd758: ; 0x021BD758
	push {r4, lr}
	bl sub_021BDDD0
	add r4, r0, #0
	beq _021BD772
	mov r0, #0xa
	add r1, r4, #0
	bl sub_021BD988
	add r1, r0, #0
	mov r0, #8
	blx sub_020584CC
_021BD772:
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy260_21bd758

	thumb_func_start ovy260_21bd778
ovy260_21bd778: ; 0x021BD778
	push {r4, lr}
	bl sub_021BDDD8
	add r4, r0, #0
	beq _021BD792
	mov r0, #0xa
	add r1, r4, #0
	bl sub_021BD988
	add r1, r0, #0
	mov r0, #8
	blx sub_020584CC
_021BD792:
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy260_21bd778

	thumb_func_start ovy260_21bd798
ovy260_21bd798: ; 0x021BD798
	push {r3, r4, r5, lr}
	sub sp, #0x10
	ldr r4, [sp, #0x20]
	ldr r5, [sp, #0x24]
	str r4, [sp]
	ldr r4, [r5, #0x18]
	str r4, [sp, #4]
	ldr r4, [sp, #0x28]
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	bl ovy260_21bdde8
	add r4, r0, #0
	beq _021BD7C4
	mov r0, #0xa
	add r1, r4, #0
	bl sub_021BD988
	add r1, r0, #0
	mov r0, #8
	blx sub_020584CC
_021BD7C4:
	add r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy260_21bd798

	thumb_func_start ovy260_21bd7cc
ovy260_21bd7cc: ; 0x021BD7CC
	push {r3, r4, r5, lr}
	bl sub_021BDDE0
	add r5, r0, #0
	beq _021BD7EC
	bl sub_021BD94C
	add r4, r0, #0
	mov r0, #0xa
	add r1, r5, #0
	bl sub_021BD988
	add r1, r0, #0
	add r0, r4, #0
	blx sub_020584CC
_021BD7EC:
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy260_21bd7cc

	thumb_func_start ovy260_21bd7f0
ovy260_21bd7f0: ; 0x021BD7F0
	push {r3, r4, r5, lr}
	bl sub_021BDE68
	add r5, r0, #0
	beq _021BD810
	bl sub_021BD94C
	add r4, r0, #0
	mov r0, #0xa
	add r1, r5, #0
	bl sub_021BD988
	add r1, r0, #0
	add r0, r4, #0
	blx sub_020584CC
_021BD810:
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy260_21bd7f0

	thumb_func_start ovy260_21bd814
ovy260_21bd814: ; 0x021BD814
	push {r3, r4, r5, lr}
	bl sub_021BDE70
	add r5, r0, #0
	beq _021BD834
	bl sub_021BD94C
	add r4, r0, #0
	mov r0, #0xa
	add r1, r5, #0
	bl sub_021BD988
	add r1, r0, #0
	add r0, r4, #0
	blx sub_020584CC
_021BD834:
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy260_21bd814

	thumb_func_start ovy260_21bd838
ovy260_21bd838: ; 0x021BD838
	push {r3, r4, r5, lr}
	bl sub_021BDE78
	add r5, r0, #0
	beq _021BD858
	bl sub_021BD94C
	add r4, r0, #0
	mov r0, #0xd
	add r1, r5, #0
	bl sub_021BD988
	add r1, r0, #0
	add r0, r4, #0
	blx sub_020584CC
_021BD858:
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy260_21bd838

	thumb_func_start sub_021BD85C
sub_021BD85C: ; 0x021BD85C
	ldr r1, _021BD864 ; =0x021C2054
	str r1, [r0]
	mov r0, #0
	bx lr
	.align 2, 0
_021BD864: .word 0x021C2054
	thumb_func_end sub_021BD85C

	thumb_func_start ovy260_21bd868
ovy260_21bd868: ; 0x021BD868
	push {r0, r1, r2, r3}
	thumb_func_end ovy260_21bd868

	non_word_aligned_thumb_func_start ovy260_21bd86a
ovy260_21bd86a: ; 0x021BD86A
	push {r3, r4, r5, lr}
	sub sp, #0x100
	mov r4, #1
	lsl r4, r4, #8
	add r5, sp, #0
	add r3, r0, #0
	ldr r2, _021BD8A0 ; =0x021C107C
	add r0, r5, #0
	add r1, r4, #0
	bl OS_SNPrintf
	add r1, r0, #0
	add r0, r5, r1
	sub r1, r4, r1
	add r4, sp, #0x114
	mov r3, #3
	bic r4, r3
	ldr r2, [sp, #0x114]
	add r3, r4, #4
	bl OS_VSNPrintf
	add sp, #0x100
	pop {r3, r4, r5}
	pop {r3}
	add sp, #0x10
	bx r3
	nop
_021BD8A0: .word 0x021C107C
	thumb_func_end ovy260_21bd86a

	thumb_func_start ovy260_21bd8a4
ovy260_21bd8a4: ; 0x021BD8A4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	cmp r4, #0
	beq _021BD8E2
	ldr r0, _021BD92C ; =0x00000315
	ldr r1, _021BD930 ; =0x021C1088
	add r2, r4, #0
	bl ovy260_21bd868
	cmp r4, #1
	bne _021BD8CA
	mov r0, #1
	mov r1, #5
	bl sub_021BD988
	add r1, r0, #0
	mov r0, #9
	b _021BD8D6
_021BD8CA:
	mov r0, #1
	mov r1, #7
	bl sub_021BD988
	add r1, r0, #0
	mov r0, #0x14
_021BD8D6:
	blx sub_020584CC
	add r0, r4, #0
	bl sub_021A13A0
	b _021BD924
_021BD8E2:
	ldr r2, [r5]
	cmp r2, #0
	beq _021BD8F8
	ldr r0, _021BD934 ; =0x00000323
	ldr r1, _021BD938 ; =0x021C10B4
	bl ovy260_21bd868
	ldr r0, [r5]
	bl ovy260_21bd998
	b _021BD924
_021BD8F8:
	mov r4, #0xe
	lsl r4, r4, #6
	ldr r0, _021BD93C ; =0x021C2054
	add r1, #8
	add r2, r4, #0
	blx sub_02083964
	add r1, r4, #0
	add r1, #8
	mov r2, #0x86
	ldr r0, _021BD940 ; =0x021C1E3C
	add r1, r5, r1
	lsl r2, r2, #2
	blx sub_02083964
	sub r4, #0x55
	add r5, #0x47
	ldr r1, _021BD944 ; =0x021C10E0
	add r0, r4, #0
	add r2, r5, #0
	bl ovy260_21bd868
_021BD924:
	ldr r0, _021BD948 ; =0x021C1E28
	mov r1, #1
	str r1, [r0]
	pop {r3, r4, r5, pc}
	.align 2, 0
_021BD92C: .word 0x00000315
_021BD930: .word 0x021C1088
_021BD934: .word 0x00000323
_021BD938: .word 0x021C10B4
_021BD93C: .word 0x021C2054
_021BD940: .word 0x021C1E3C
_021BD944: .word 0x021C10E0
_021BD948: .word 0x021C1E28
	thumb_func_end ovy260_21bd8a4

	thumb_func_start sub_021BD94C
sub_021BD94C: ; 0x021BD94C
	cmp r0, #0xe
	bhi _021BD982
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021BD95C: ; jump table
	.short _021BD97A - _021BD95C - 2 ; case 0
	.short _021BD982 - _021BD95C - 2 ; case 1
	.short _021BD982 - _021BD95C - 2 ; case 2
	.short _021BD982 - _021BD95C - 2 ; case 3
	.short _021BD982 - _021BD95C - 2 ; case 4
	.short _021BD97E - _021BD95C - 2 ; case 5
	.short _021BD982 - _021BD95C - 2 ; case 6
	.short _021BD982 - _021BD95C - 2 ; case 7
	.short _021BD982 - _021BD95C - 2 ; case 8
	.short _021BD982 - _021BD95C - 2 ; case 9
	.short _021BD982 - _021BD95C - 2 ; case 10
	.short _021BD982 - _021BD95C - 2 ; case 11
	.short _021BD982 - _021BD95C - 2 ; case 12
	.short _021BD982 - _021BD95C - 2 ; case 13
	.short _021BD982 - _021BD95C - 2 ; case 14
_021BD97A:
	mov r0, #0
	bx lr
_021BD97E:
	mov r0, #9
	bx lr
_021BD982:
	mov r0, #0x14
	bx lr
	.align 2, 0
	thumb_func_end sub_021BD94C

	thumb_func_start sub_021BD988
sub_021BD988: ; 0x021BD988
	mov r2, #0x64
	mul r2, r0
	ldr r0, _021BD994 ; =0xFFFF5808
	add r1, r1, r2
	sub r0, r0, r1
	bx lr
	.align 2, 0
_021BD994: .word 0xFFFF5808
	thumb_func_end sub_021BD988

	thumb_func_start ovy260_21bd998
ovy260_21bd998: ; 0x021BD998
	push {r4, lr}
	add r4, r0, #0
	ldr r1, _021BDA14 ; =0xFFFF5808
	ldr r0, _021BDA18 ; =0x00000014
	bne _021BD9A6
	mov r0, #0
	pop {r4, pc}
_021BD9A6:
	cmp r4, #0x66
	bgt _021BD9D8
	bge _021BD9FE
	cmp r4, #0x64
	bgt _021BD9D2
	bge _021BD9FE
	cmp r4, #7
	bhi _021BDA08
	add r2, r4, r4
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021BD9C2: ; jump table
	.short _021BDA08 - _021BD9C2 - 2 ; case 0
	.short _021BD9FE - _021BD9C2 - 2 ; case 1
	.short _021BD9FE - _021BD9C2 - 2 ; case 2
	.short _021BD9FE - _021BD9C2 - 2 ; case 3
	.short _021BD9FE - _021BD9C2 - 2 ; case 4
	.short _021BD9FE - _021BD9C2 - 2 ; case 5
	.short _021BD9FE - _021BD9C2 - 2 ; case 6
	.short _021BD9FE - _021BD9C2 - 2 ; case 7
_021BD9D2:
	cmp r4, #0x65
	beq _021BD9FE
	b _021BDA08
_021BD9D8:
	cmp r4, #0x68
	bgt _021BD9E4
	bge _021BDA02
	cmp r4, #0x67
	beq _021BD9FE
	b _021BDA08
_021BD9E4:
	cmp r4, #0x69
	bgt _021BD9EC
	beq _021BD9FE
	b _021BDA08
_021BD9EC:
	cmp r4, #0x6c
	bgt _021BDA08
	cmp r4, #0x6a
	blt _021BDA08
	beq _021BD9FE
	cmp r4, #0x6b
	beq _021BD9FE
	cmp r4, #0x6c
	bne _021BDA08
_021BD9FE:
	sub r1, #8
	b _021BDA0A
_021BDA02:
	mov r0, #9
	sub r1, r1, #6
	b _021BDA0A
_021BDA08:
	sub r1, #0xf
_021BDA0A:
	blx sub_020584CC
	add r0, r4, #0
	pop {r4, pc}
	nop
_021BDA14: .word 0xFFFF5808
_021BDA18: .word 0x00000014
	thumb_func_end ovy260_21bd998

	thumb_func_start ovy260_21bda1c
ovy260_21bda1c: ; 0x021BDA1C
	push {r3, r4, r5, lr}
	cmp r0, #0
	beq _021BDA52
	cmp r0, #1
	bne _021BDA52
	ldr r4, _021BDA80 ; =0x021C23D4
	ldr r5, _021BDA84 ; =0x021917BC
	ldr r2, _021BDA88 ; =0x021C10FC
	add r0, r4, #0
	mov r1, #0x80
	add r3, r5, #0
	bl OS_SNPrintf
	add r0, r4, #0
	bl sub_021A1160
	ldr r4, _021BDA8C ; =0x021C24DC
	ldr r2, _021BDA90 ; =0x021C1154
	add r0, r4, #0
	mov r1, #0x80
	add r3, r5, #0
	bl OS_SNPrintf
	add r0, r4, #0
	bl sub_021A1160
	pop {r3, r4, r5, pc}
_021BDA52:
	ldr r4, _021BDA80 ; =0x021C23D4
	ldr r5, _021BDA84 ; =0x021917BC
	ldr r2, _021BDA94 ; =0x021C11A0
	add r0, r4, #0
	mov r1, #0x80
	add r3, r5, #0
	bl OS_SNPrintf
	add r0, r4, #0
	bl sub_021A1160
	ldr r4, _021BDA8C ; =0x021C24DC
	ldr r2, _021BDA98 ; =0x021C11F8
	add r0, r4, #0
	mov r1, #0x80
	add r3, r5, #0
	bl OS_SNPrintf
	add r0, r4, #0
	bl sub_021A1160
	pop {r3, r4, r5, pc}
	nop
_021BDA80: .word 0x021C23D4
_021BDA84: .word 0x021917BC
_021BDA88: .word 0x021C10FC
_021BDA8C: .word 0x021C24DC
_021BDA90: .word 0x021C1154
_021BDA94: .word 0x021C11A0
_021BDA98: .word 0x021C11F8
	thumb_func_end ovy260_21bda1c

	thumb_func_start ovy260_21bda9c
ovy260_21bda9c: ; 0x021BDA9C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _021BDAE0 ; =0x02190698
	ldr r0, [r0]
	cmp r0, #1
	bne _021BDABE
	ldr r0, _021BDAE4 ; =0x021C23D4
	mov r1, #0
	ldrsb r1, [r0, r1]
	cmp r1, #0
	bne _021BDAC2
	ldr r2, _021BDAE8 ; =0x021C1240
	ldr r3, _021BDAEC ; =0x0219069C
	mov r1, #0x80
	bl OS_SNPrintf
	b _021BDAC2
_021BDABE:
	mov r0, #1
	pop {r3, r4, r5, pc}
_021BDAC2:
	mov r0, #0xac
	mov r5, #0xac
	bl sub_0216DDDC
	str r0, [r4]
	cmp r0, #0
	bne _021BDAD4
	mov r0, #5
	pop {r3, r4, r5, pc}
_021BDAD4:
	mov r1, #0
	add r2, r5, #0
	blx sub_020839D0
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021BDAE0: .word 0x02190698
_021BDAE4: .word 0x021C23D4
_021BDAE8: .word 0x021C1240
_021BDAEC: .word 0x0219069C
	thumb_func_end ovy260_21bda9c

	thumb_func_start ovy260_21bdaf0
ovy260_21bdaf0: ; 0x021BDAF0
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	bl ovy260_21be474
	cmp r0, #0
	bne _021BDB1C
	add r0, r4, #0
	add r0, #0x5c
	mov r1, #0
	mov r2, #0x28
	blx sub_020839D0
	add r0, r4, #0
	add r0, #0x84
	mov r1, #0
	mov r2, #0x28
	blx sub_020839D0
	mov r0, #1
	str r0, [r4, #0x50]
	mov r0, #0
_021BDB1C:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy260_21bdaf0

	thumb_func_start ovy260_21bdb20
ovy260_21bdb20: ; 0x021BDB20
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_021BE4A4
	add r0, r5, #0
	add r0, #0x5c
	mov r1, #0
	mov r2, #0x28
	mov r4, #0
	blx sub_020839D0
	add r0, r5, #0
	add r0, #0x84
	mov r1, #0
	mov r2, #0x28
	blx sub_020839D0
	add r0, r5, #0
	mov r2, #0xde
	add r0, #0x5c
	strb r2, [r0]
	add r0, r5, #0
	mov r1, #0xad
	add r0, #0x5d
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x84
	strb r2, [r0]
	add r0, r5, #0
	add r0, #0x85
	strb r1, [r0]
	str r4, [r5, #0x50]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy260_21bdb20

	thumb_func_start ovy260_21bdb64
ovy260_21bdb64: ; 0x021BDB64
	push {r3, lr}
	cmp r1, #0
	bne _021BDB72
	mov r1, #0
	add r0, #0x5c
	strb r1, [r0]
	pop {r3, pc}
_021BDB72:
	add r0, #0x5c
	blx sub_02085DB8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy260_21bdb64

	thumb_func_start ovy260_21bdb7c
ovy260_21bdb7c: ; 0x021BDB7C
	push {r3, lr}
	cmp r1, #0
	bne _021BDB8A
	mov r1, #0
	add r0, #0x84
	strb r1, [r0]
	pop {r3, pc}
_021BDB8A:
	add r0, #0x84
	blx sub_02085DB8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy260_21bdb7c

	thumb_func_start ovy260_21bdb94
ovy260_21bdb94: ; 0x021BDB94
	push {r3, lr}
	ldr r0, _021BDBC8 ; =0x02190698
	ldr r0, [r0]
	cmp r0, #1
	bne _021BDBB6
	ldr r0, _021BDBCC ; =0x021C23D4
	mov r1, #0
	ldrsb r1, [r0, r1]
	cmp r1, #0
	bne _021BDBB2
	ldr r2, _021BDBD0 ; =0x021C1240
	ldr r3, _021BDBD4 ; =0x0219069C
	mov r1, #0x80
	bl OS_SNPrintf
_021BDBB2:
	ldr r0, _021BDBCC ; =0x021C23D4
	pop {r3, pc}
_021BDBB6:
	ldr r3, _021BDBD8 ; =0x021C1298
	mov r0, #0
	mov r1, #3
	mov r2, #1
	bl sub_0216CCA8
	mov r0, #0
	pop {r3, pc}
	nop
_021BDBC8: .word 0x02190698
_021BDBCC: .word 0x021C23D4
_021BDBD0: .word 0x021C1240
_021BDBD4: .word 0x0219069C
_021BDBD8: .word 0x021C1298
	thumb_func_end ovy260_21bdb94

	thumb_func_start ovy260_21bdbdc
ovy260_21bdbdc: ; 0x021BDBDC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	ldr r6, _021BDC14 ; =0x00000000
	add r5, r0, #0
	add r4, r1, #0
	str r6, [sp]
	bne _021BDBF0
	add sp, #4
	mov r0, #2
	pop {r3, r4, r5, r6, pc}
_021BDBF0:
	add r0, sp, #0
	str r6, [r4]
	bl ovy260_21bda9c
	cmp r0, #0
	bne _021BDC10
	ldr r0, [sp]
	bl ovy260_21bdaf0
	cmp r0, #0
	bne _021BDC10
	ldr r0, [sp]
	str r5, [r0, #0x4c]
	ldr r0, [sp]
	str r0, [r4]
	add r0, r6, #0
_021BDC10:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021BDC14: .word 0x00000000
	thumb_func_end ovy260_21bdbdc

	thumb_func_start ovy260_21bdc18
ovy260_21bdc18: ; 0x021BDC18
	push {r4, lr}
	add r4, r0, #0
	bne _021BDC22
	mov r0, #2
	pop {r4, pc}
_021BDC22:
	ldr r1, [r4, #0x50]
	cmp r1, #0
	beq _021BDC32
	bl ovy260_21bdb20
	add r0, r4, #0
	bl sub_0216DDFC
_021BDC32:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy260_21bdc18

	thumb_func_start ovy260_21bdc38
ovy260_21bdc38: ; 0x021BDC38
	push {r3, lr}
	cmp r0, #0
	bne _021BDC42
	mov r0, #2
	pop {r3, pc}
_021BDC42:
	ldr r1, [r0, #0x50]
	cmp r1, #0
	bne _021BDC4C
	mov r0, #3
	pop {r3, pc}
_021BDC4C:
	bl sub_021BE4C0
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ovy260_21bdc38

	thumb_func_start sub_021BDC54
sub_021BDC54: ; 0x021BDC54
	add r0, #0x5c
	bx lr
	thumb_func_end sub_021BDC54

	thumb_func_start sub_021BDC58
sub_021BDC58: ; 0x021BDC58
	add r0, #0x84
	bx lr
	thumb_func_end sub_021BDC58

	thumb_func_start ovy260_21bdc5c
ovy260_21bdc5c: ; 0x021BDC5C
	push {r3, lr}
	bl ovy260_21bdb64
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy260_21bdc5c

	thumb_func_start ovy260_21bdc68
ovy260_21bdc68: ; 0x021BDC68
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	add r7, r2, #0
	add r4, r3, #0
	bl ovy260_21bf8fc
	cmp r0, #0
	beq _021BDC98
	ldr r0, [sp, #0x20]
	str r4, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x24]
	add r2, r5, #0
	str r0, [sp, #8]
	ldr r1, [r6, #0x4c]
	add r0, r6, #0
	add r3, r7, #0
	bl ovy260_21be4cc
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021BDC98:
	mov r0, #2
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy260_21bdc68

	thumb_func_start ovy260_21bdca0
ovy260_21bdca0: ; 0x021BDCA0
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r6, r2, #0
	add r4, r3, #0
	cmp r5, #0
	bne _021BDCB4
	add sp, #0x18
	mov r0, #2
	pop {r4, r5, r6, pc}
_021BDCB4:
	cmp r4, #0
	bne _021BDCBE
	add sp, #0x18
	mov r0, #2
	pop {r4, r5, r6, pc}
_021BDCBE:
	ldr r2, [sp, #0x28]
	cmp r2, #0
	bne _021BDCCA
	add sp, #0x18
	mov r0, #2
	pop {r4, r5, r6, pc}
_021BDCCA:
	ldr r2, [r5, #0x50]
	cmp r2, #0
	bne _021BDCD6
	add sp, #0x18
	mov r0, #3
	pop {r4, r5, r6, pc}
_021BDCD6:
	bl ovy260_21bdb7c
	str r6, [sp]
	ldr r0, [sp, #0x28]
	str r4, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x2c]
	add r2, r5, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x30]
	add r2, #0x5c
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x34]
	str r0, [sp, #0x14]
	add r0, r5, #0
	ldr r1, [r5, #0x4c]
	add r5, #0x84
	add r3, r5, #0
	bl ovy260_21be6b0
	add sp, #0x18
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy260_21bdca0

	thumb_func_start ovy260_21bdd04
ovy260_21bdd04: ; 0x021BDD04
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x78
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r5, #0
	bne _021BDD1A
	add sp, #0x78
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_021BDD1A:
	ldr r0, [r5, #0x50]
	cmp r0, #0
	bne _021BDD26
	add sp, #0x78
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_021BDD26:
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r2, [r4, r0]
	mov r1, #0x10
	str r2, [sp, #0x1c]
	add r2, #8
	mov r0, #0
_021BDD34:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021BDD34
	add r0, sp, #0x20
	bl sub_021719FC
	mov r2, #0x49
	lsl r2, r2, #2
	ldr r1, [r4, r2]
	sub r2, r2, #4
	ldr r2, [r4, r2]
	add r0, sp, #0x20
	bl sub_02171A24
	ldr r0, [sp, #0x1c]
	add r1, sp, #0x20
	add r0, #8
	str r0, [sp, #0x1c]
	bl sub_02171A9C
	str r4, [sp]
	str r6, [sp, #4]
	add r2, r5, #0
	ldr r0, [sp, #0x90]
	str r7, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x94]
	add r2, #0x5c
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x98]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x9c]
	str r0, [sp, #0x18]
	add r0, r5, #0
	ldr r1, [r5, #0x4c]
	add r5, #0x84
	add r3, r5, #0
	bl ovy260_21be8b4
	add sp, #0x78
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy260_21bdd04

	thumb_func_start ovy260_21bdd88
ovy260_21bdd88: ; 0x021BDD88
	push {r4, lr}
	sub sp, #8
	mov r4, #0
	str r4, [sp, #4]
	cmp r0, #0
	bne _021BDD9A
	add sp, #8
	mov r0, #2
	pop {r4, pc}
_021BDD9A:
	ldr r4, [sp, #0x10]
	cmp r4, #0
	bne _021BDDA6
	add sp, #8
	mov r0, #2
	pop {r4, pc}
_021BDDA6:
	add r4, sp, #4
	add r0, #0x5c
	str r4, [sp]
	bl ovy260_21bde88
	cmp r0, #0
	bne _021BDDBA
	ldr r2, [sp, #4]
	ldr r1, [sp, #0x10]
	str r2, [r1]
_021BDDBA:
	add sp, #8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy260_21bdd88

	thumb_func_start sub_021BDDC0
sub_021BDDC0: ; 0x021BDDC0
	ldr r3, _021BDDC4 ; =ovy260_21be030
	bx r3
	.align 2, 0
_021BDDC4: .word ovy260_21be030
	thumb_func_end sub_021BDDC0

	thumb_func_start sub_021BDDC8
sub_021BDDC8: ; 0x021BDDC8
	ldr r3, _021BDDCC ; =sub_021BE054
	bx r3
	.align 2, 0
_021BDDCC: .word sub_021BE054
	thumb_func_end sub_021BDDC8

	thumb_func_start sub_021BDDD0
sub_021BDDD0: ; 0x021BDDD0
	ldr r3, _021BDDD4 ; =sub_021BE05C
	bx r3
	.align 2, 0
_021BDDD4: .word sub_021BE05C
	thumb_func_end sub_021BDDD0

	thumb_func_start sub_021BDDD8
sub_021BDDD8: ; 0x021BDDD8
	ldr r3, _021BDDDC ; =ovy260_21bdffc
	bx r3
	.align 2, 0
_021BDDDC: .word ovy260_21bdffc
	thumb_func_end sub_021BDDD8

	thumb_func_start sub_021BDDE0
sub_021BDDE0: ; 0x021BDDE0
	ldr r3, _021BDDE4 ; =ovy260_21be068
	bx r3
	.align 2, 0
_021BDDE4: .word ovy260_21be068
	thumb_func_end sub_021BDDE0

	thumb_func_start ovy260_21bdde8
ovy260_21bdde8: ; 0x021BDDE8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	mov ip, r2
	ldr r2, [r4, #0x10]
	add r7, r1, #0
	add r5, r3, #0
	mov r0, #0
	mov r6, #1
	mov r1, #0
	cmp r2, #0
	bls _021BDE12
_021BDDFE:
	lsl r3, r1, #2
	add r3, r4, r3
	ldr r3, [r3, #0x14]
	cmp r5, r3
	bne _021BDE0C
	mov r6, #0
	b _021BDE12
_021BDE0C:
	add r1, r1, #1
	cmp r1, r2
	blo _021BDDFE
_021BDE12:
	cmp r6, #0
	beq _021BDE2C
	ldr r1, [r4, #0x10]
	add r1, r1, #1
	str r1, [r4, #0x10]
	cmp r1, #0x40
	bls _021BDE24
	mov r0, #5
	pop {r3, r4, r5, r6, r7, pc}
_021BDE24:
	sub r1, r1, #1
	lsl r1, r1, #2
	add r1, r4, r1
	str r5, [r1, #0x14]
_021BDE2C:
	cmp r0, #0
	bne _021BDE3A
	add r0, r4, #0
	add r1, r7, #0
	mov r2, ip
	bl ovy260_21bdf9c
_021BDE3A:
	cmp r0, #0
	bne _021BDE48
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ovy260_21bdfb8
_021BDE48:
	cmp r0, #0
	bne _021BDE56
	ldr r2, [sp, #0x18]
	add r0, r4, #0
	add r1, r7, #0
	bl ovy260_21bdfd8
_021BDE56:
	cmp r0, #0
	bne _021BDE66
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x24]
	add r0, r4, #0
	add r1, r7, #0
	bl sub_021BDFF8
_021BDE66:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy260_21bdde8

	thumb_func_start sub_021BDE68
sub_021BDE68: ; 0x021BDE68
	ldr r3, _021BDE6C ; =ovy260_21be1f8
	bx r3
	.align 2, 0
_021BDE6C: .word ovy260_21be1f8
	thumb_func_end sub_021BDE68

	thumb_func_start sub_021BDE70
sub_021BDE70: ; 0x021BDE70
	ldr r3, _021BDE74 ; =ovy260_21be29c
	bx r3
	.align 2, 0
_021BDE74: .word ovy260_21be29c
	thumb_func_end sub_021BDE70

	thumb_func_start sub_021BDE78
sub_021BDE78: ; 0x021BDE78
	ldr r3, _021BDE7C ; =ovy260_21bdf64
	bx r3
	.align 2, 0
_021BDE7C: .word ovy260_21bdf64
	thumb_func_end sub_021BDE78

	thumb_func_start sub_021BDE80
sub_021BDE80: ; 0x021BDE80
	ldr r3, _021BDE84 ; =ovy260_21bdb94
	bx r3
	.align 2, 0
_021BDE84: .word ovy260_21bdb94
	thumb_func_end sub_021BDE80

	thumb_func_start ovy260_21bde88
ovy260_21bde88: ; 0x021BDE88
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r2, #0
	add r6, r1, #0
	lsl r0, r7, #4
	lsl r1, r7, #2
	str r0, [sp, #4]
	add r0, r0, r1
	str r0, [sp, #8]
	mov r0, #0x4a
	lsl r0, r0, #2
	str r3, [sp]
	str r0, [sp, #0xc]
	bl sub_0216DDDC
	add r5, r0, #0
	bne _021BDEB0
	add sp, #0x14
	mov r0, #5
	pop {r4, r5, r6, r7, pc}
_021BDEB0:
	ldr r2, [sp, #0xc]
	mov r1, #0
	blx sub_020839D0
	mov r0, #1
	lsl r0, r0, #0x10
	bl sub_0216DDDC
	add r4, r0, #0
	bne _021BDED0
	add r0, r5, #0
	bl sub_0216DDFC
	add sp, #0x14
	mov r0, #5
	pop {r4, r5, r6, r7, pc}
_021BDED0:
	mov r2, #1
	mov r1, #0
	lsl r2, r2, #0x10
	blx sub_020839D0
	ldr r1, [sp, #0xc]
	mov r2, #0x44
	str r2, [sp, #0x10]
	sub r1, #0x14
	mov r0, #0
	str r0, [r5, r1]
	ldr r0, [sp, #0xc]
	mov r1, #1
	sub r0, #0xc
	lsl r1, r1, #0x10
	str r1, [r5, r0]
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x44
	blx sub_020839D0
	mov r0, #1
	lsl r0, r0, #0x19
	str r0, [r4]
	mov r0, #0xff
	mov r2, #0xff
	lsl r2, r2, #0x18
	lsl r1, r6, #0x18
	lsl r0, r0, #0x18
	and r0, r1
	mov r1, #0xff
	lsl r1, r1, #0x18
	mov ip, r0
	lsl r0, r6, #8
	lsr r1, r1, #8
	and r1, r0
	lsr r0, r6, #0x18
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	lsr r0, r6, #8
	lsr r2, r2, #0x10
	and r0, r2
	orr r0, r3
	orr r1, r0
	mov r0, ip
	orr r0, r1
	str r0, [r4, #4]
	ldr r0, [sp, #8]
	mov r1, #1
	str r0, [r4, #0x2c]
	ldr r0, [sp, #4]
	str r0, [r4, #0x30]
	ldr r0, [sp]
	add r0, r7, r0
	lsl r0, r0, #2
	str r0, [r4, #0x34]
	ldr r0, [sp]
	strh r7, [r4, #0x20]
	strh r0, [r4, #0x22]
	ldr r0, [sp, #0x10]
	str r1, [r5]
	add r0, #0xe0
	str r0, [sp, #0x10]
	str r4, [r5, r0]
	sub r0, r1, #2
	str r0, [r5, #4]
	mov r0, #0
	str r0, [r5, #0x10]
	ldr r0, [sp, #0x28]
	str r5, [r0]
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy260_21bde88

	thumb_func_start ovy260_21bdf64
ovy260_21bdf64: ; 0x021BDF64
	push {r4, r5, r6, lr}
	mov r6, #0x49
	add r5, r0, #0
	mov r4, #0
	str r4, [r5]
	strh r4, [r5, #8]
	str r4, [r5, #4]
	str r4, [r5, #0x10]
	str r4, [r5, #0xc]
	lsl r6, r6, #2
	ldr r0, [r5, r6]
	bl sub_0216DDFC
	add r0, r6, #0
	str r4, [r5, r6]
	sub r0, #8
	str r4, [r5, r0]
	add r0, r6, #0
	sub r0, #0xc
	str r4, [r5, r0]
	sub r0, r6, #4
	str r4, [r5, r0]
	add r0, r5, #0
	bl sub_0216DDFC
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy260_21bdf64

	thumb_func_start ovy260_21bdf9c
ovy260_21bdf9c: ; 0x021BDF9C
	push {r4, lr}
	mov r3, #0x14
	mov r4, #0x44
	mul r3, r1
	add r1, r4, r3
	add r4, #0xe0
	ldr r0, [r0, r4]
	add r0, r0, r1
	add r1, r2, #0
	bl ovy260_21be3b8
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy260_21bdf9c

	thumb_func_start ovy260_21bdfb8
ovy260_21bdfb8: ; 0x021BDFB8
	push {r4, lr}
	mov r4, #0x14
	mul r4, r1
	mov r1, #0x44
	add r1, #0xe0
	mov r3, #0x44
	ldr r1, [r0, r1]
	add r0, r3, r4
	add r0, #0x10
	add r0, r1, r0
	add r1, r2, #0
	bl ovy260_21be378
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy260_21bdfb8

	thumb_func_start ovy260_21bdfd8
ovy260_21bdfd8: ; 0x021BDFD8
	push {r4, lr}
	mov r3, #0x49
	lsl r3, r3, #2
	ldr r0, [r0, r3]
	lsl r1, r1, #2
	ldr r4, [r0, #0x2c]
	ldr r3, [r0, #0x30]
	add r4, #0x44
	add r3, r4, r3
	add r1, r3, r1
	add r0, r0, r1
	add r1, r2, #0
	bl ovy260_21be378
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy260_21bdfd8

	thumb_func_start sub_021BDFF8
sub_021BDFF8: ; 0x021BDFF8
	mov r0, #0
	bx lr
	thumb_func_end sub_021BDFF8

	thumb_func_start ovy260_21bdffc
ovy260_21bdffc: ; 0x021BDFFC
	push {r4, lr}
	mov r2, #0x49
	add r1, r0, #0
	lsl r2, r2, #2
	ldr r4, [r1, r2]
	mov r0, #0
	strh r0, [r1, #8]
	sub r0, r2, #4
	ldr r0, [r1, r0]
	sub r3, r2, #4
	str r0, [r1, #4]
	ldr r3, [r1, r3]
	sub r2, r2, #4
	add r3, r3, #2
	str r3, [r1, r2]
	mov r2, #8
	ldrsh r1, [r1, r2]
	add r0, r4, r0
	bl ovy260_21be348
	ldr r0, [r4, #0x3c]
	add r0, r0, #2
	str r0, [r4, #0x3c]
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy260_21bdffc

	thumb_func_start ovy260_21be030
ovy260_21be030: ; 0x021BE030
	push {r4, r5}
	mov r1, #0x49
	lsl r1, r1, #2
	ldr r5, [r0, r1]
	mov r2, #2
	str r2, [r0]
	ldr r3, [r5, #0x2c]
	ldr r2, [r5, #0x30]
	add r3, #0x44
	ldr r4, [r5, #0x34]
	add r2, r3, r2
	add r2, r4, r2
	sub r1, r1, #4
	str r2, [r0, r1]
	mov r0, #0
	pop {r4, r5}
	bx lr
	.align 2, 0
	thumb_func_end ovy260_21be030

	thumb_func_start sub_021BE054
sub_021BE054: ; 0x021BE054
	mov r1, #3
	str r1, [r0]
	mov r0, #0
	bx lr
	thumb_func_end sub_021BE054

	thumb_func_start sub_021BE05C
sub_021BE05C: ; 0x021BE05C
	mov r1, #4
	str r1, [r0]
	mov r0, #0
	bx lr
	thumb_func_end sub_021BE05C

	thumb_func_start sub_021BE064
sub_021BE064: ; 0x021BE064
	mov r0, #0
	bx lr
	thumb_func_end sub_021BE064

	thumb_func_start ovy260_21be068
ovy260_21be068: ; 0x021BE068
	push {r4, r5, r6, lr}
	add r6, r1, #0
	mov r1, #0x49
	lsl r1, r1, #2
	add r5, r2, #0
	ldr r4, [r0, r1]
	bl sub_021BE064
	cmp r6, #0
	beq _021BE084
	ldr r1, [r4, #0x1c]
	mov r0, #1
	orr r0, r1
	str r0, [r4, #0x1c]
_021BE084:
	mov r0, #0xff
	lsl r1, r5, #0x18
	lsl r0, r0, #0x18
	add r3, r1, #0
	lsl r2, r5, #8
	lsr r1, r0, #8
	and r2, r1
	lsr r1, r5, #0x18
	lsl r1, r1, #0x18
	lsr r6, r5, #8
	lsr r5, r0, #0x10
	lsr r1, r1, #0x18
	and r5, r6
	orr r1, r5
	and r3, r0
	orr r1, r2
	orr r1, r3
	str r1, [r4, #0x18]
	ldr r5, [r4, #0x1c]
	lsl r1, r5, #0x18
	add r3, r1, #0
	lsl r2, r5, #8
	lsr r1, r0, #8
	and r2, r1
	lsr r1, r5, #0x18
	lsl r1, r1, #0x18
	lsr r6, r5, #8
	lsr r5, r0, #0x10
	lsr r1, r1, #0x18
	and r5, r6
	orr r1, r5
	and r3, r0
	orr r1, r2
	orr r1, r3
	str r1, [r4, #0x1c]
	ldrh r2, [r4, #0x20]
	asr r1, r2, #8
	lsl r1, r1, #0x18
	lsr r3, r1, #0x18
	lsl r2, r2, #8
	lsr r1, r0, #0x10
	and r1, r2
	orr r1, r3
	strh r1, [r4, #0x20]
	ldrh r2, [r4, #0x22]
	asr r1, r2, #8
	lsl r1, r1, #0x18
	lsr r3, r1, #0x18
	lsl r2, r2, #8
	lsr r1, r0, #0x10
	and r1, r2
	orr r1, r3
	strh r1, [r4, #0x22]
	mov r1, #0
	strh r1, [r4, #0x2a]
	ldrh r2, [r4, #0x24]
	asr r1, r2, #8
	lsl r1, r1, #0x18
	lsr r3, r1, #0x18
	lsl r2, r2, #8
	lsr r1, r0, #0x10
	and r1, r2
	orr r1, r3
	strh r1, [r4, #0x24]
	ldrh r2, [r4, #0x26]
	asr r1, r2, #8
	lsl r1, r1, #0x18
	lsr r3, r1, #0x18
	lsl r2, r2, #8
	lsr r1, r0, #0x10
	and r1, r2
	orr r1, r3
	strh r1, [r4, #0x26]
	ldrh r2, [r4, #0x28]
	asr r1, r2, #8
	lsl r1, r1, #0x18
	lsr r3, r1, #0x18
	lsl r2, r2, #8
	lsr r1, r0, #0x10
	and r1, r2
	orr r1, r3
	strh r1, [r4, #0x28]
	ldr r5, [r4, #0x2c]
	lsl r1, r5, #0x18
	add r3, r1, #0
	lsl r2, r5, #8
	lsr r1, r0, #8
	and r2, r1
	lsr r1, r5, #0x18
	lsl r1, r1, #0x18
	lsr r6, r5, #8
	lsr r5, r0, #0x10
	lsr r1, r1, #0x18
	and r5, r6
	orr r1, r5
	and r3, r0
	orr r1, r2
	orr r1, r3
	str r1, [r4, #0x2c]
	ldr r5, [r4, #0x30]
	lsl r1, r5, #0x18
	add r3, r1, #0
	lsl r2, r5, #8
	lsr r1, r0, #8
	and r2, r1
	lsr r1, r5, #0x18
	lsl r1, r1, #0x18
	lsr r6, r5, #8
	lsr r5, r0, #0x10
	lsr r1, r1, #0x18
	and r5, r6
	orr r1, r5
	and r3, r0
	orr r1, r2
	orr r1, r3
	str r1, [r4, #0x30]
	ldr r5, [r4, #0x34]
	lsl r1, r5, #0x18
	add r3, r1, #0
	lsl r2, r5, #8
	lsr r1, r0, #8
	and r2, r1
	lsr r1, r5, #0x18
	lsl r1, r1, #0x18
	lsr r6, r5, #8
	lsr r5, r0, #0x10
	lsr r1, r1, #0x18
	and r5, r6
	orr r1, r5
	and r3, r0
	orr r1, r2
	orr r1, r3
	str r1, [r4, #0x34]
	ldr r5, [r4, #0x38]
	lsl r1, r5, #0x18
	add r3, r1, #0
	lsl r2, r5, #8
	lsr r1, r0, #8
	and r2, r1
	lsr r1, r5, #0x18
	lsl r1, r1, #0x18
	lsr r6, r5, #8
	lsr r5, r0, #0x10
	lsr r1, r1, #0x18
	and r5, r6
	orr r1, r5
	and r3, r0
	orr r1, r2
	orr r1, r3
	str r1, [r4, #0x38]
	ldr r5, [r4, #0x3c]
	lsl r1, r5, #0x18
	add r3, r1, #0
	lsl r2, r5, #8
	lsr r1, r0, #8
	and r2, r1
	lsr r1, r5, #0x18
	lsl r1, r1, #0x18
	lsr r6, r5, #8
	lsr r5, r0, #0x10
	lsr r1, r1, #0x18
	and r5, r6
	orr r1, r5
	and r3, r0
	orr r1, r2
	orr r1, r3
	str r1, [r4, #0x3c]
	ldr r5, [r4, #0x40]
	lsl r1, r5, #0x18
	add r3, r1, #0
	lsl r2, r5, #8
	lsr r1, r0, #8
	and r2, r1
	lsr r1, r5, #0x18
	and r3, r0
	lsl r1, r1, #0x18
	lsr r5, r5, #8
	lsr r0, r0, #0x10
	lsr r1, r1, #0x18
	and r0, r5
	orr r0, r1
	orr r0, r2
	orr r0, r3
	str r0, [r4, #0x40]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy260_21be068

	thumb_func_start ovy260_21be1f8
ovy260_21be1f8: ; 0x021BE1F8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	mov r1, #0x49
	lsl r1, r1, #2
	ldr r2, [r5]
	ldr r0, [r5, r1]
	cmp r2, #2
	bne _021BE21A
	ldrh r1, [r0, #0x24]
	add r1, r1, #1
	strh r1, [r0, #0x24]
	ldr r1, [r0, #0x38]
	add r1, #8
	str r1, [r0, #0x38]
	b _021BE250
_021BE21A:
	cmp r2, #3
	bne _021BE22C
	ldrh r2, [r0, #0x26]
	add r2, r2, #1
	strh r2, [r0, #0x26]
	ldr r2, [r0, #0x3c]
	add r2, #8
	str r2, [r0, #0x3c]
	b _021BE23C
_021BE22C:
	cmp r2, #4
	bne _021BE250
	ldrh r2, [r0, #0x28]
	add r2, r2, #1
	strh r2, [r0, #0x28]
	ldr r2, [r0, #0x40]
	add r2, #8
	str r2, [r0, #0x40]
_021BE23C:
	ldrh r0, [r5, #8]
	add r0, r0, #1
	strh r0, [r5, #8]
	ldr r1, [r5, r1]
	ldr r0, [r5, #4]
	add r0, r1, r0
	mov r1, #8
	ldrsh r1, [r5, r1]
	bl ovy260_21be348
_021BE250:
	mov r4, #0x49
	lsl r4, r4, #2
	sub r0, r4, #4
	ldr r1, [r5, r4]
	ldr r0, [r5, r0]
	add r0, r1, r0
	lsl r1, r6, #0x10
	asr r1, r1, #0x10
	bl ovy260_21be348
	sub r0, r4, #4
	ldr r0, [r5, r0]
	add r1, r0, #2
	sub r0, r4, #4
	str r1, [r5, r0]
	ldr r0, [r5, r4]
	add r0, r0, r1
	mov r1, #0
	bl ovy260_21be348
	sub r0, r4, #4
	ldr r0, [r5, r0]
	add r1, r0, #2
	sub r0, r4, #4
	str r1, [r5, r0]
	ldr r0, [r5, r4]
	add r0, r0, r1
	add r1, r7, #0
	bl ovy260_21be378
	sub r0, r4, #4
	ldr r0, [r5, r0]
	add r1, r0, #4
	sub r0, r4, #4
	str r1, [r5, r0]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy260_21be1f8

	thumb_func_start ovy260_21be29c
ovy260_21be29c: ; 0x021BE29C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	mov r1, #0x49
	lsl r1, r1, #2
	ldr r2, [r5]
	ldr r0, [r5, r1]
	cmp r2, #2
	bne _021BE2BE
	ldrh r1, [r0, #0x24]
	add r1, r1, #1
	strh r1, [r0, #0x24]
	ldr r1, [r0, #0x38]
	add r1, r1, #5
	str r1, [r0, #0x38]
	b _021BE2F4
_021BE2BE:
	cmp r2, #3
	bne _021BE2D0
	ldrh r2, [r0, #0x26]
	add r2, r2, #1
	strh r2, [r0, #0x26]
	ldr r2, [r0, #0x3c]
	add r2, r2, #5
	str r2, [r0, #0x3c]
	b _021BE2E0
_021BE2D0:
	cmp r2, #4
	bne _021BE2F4
	ldrh r2, [r0, #0x28]
	add r2, r2, #1
	strh r2, [r0, #0x28]
	ldr r2, [r0, #0x40]
	add r2, r2, #5
	str r2, [r0, #0x40]
_021BE2E0:
	ldrh r0, [r5, #8]
	add r0, r0, #1
	strh r0, [r5, #8]
	ldr r1, [r5, r1]
	ldr r0, [r5, #4]
	add r0, r1, r0
	mov r1, #8
	ldrsh r1, [r5, r1]
	bl ovy260_21be348
_021BE2F4:
	mov r4, #0x49
	lsl r4, r4, #2
	sub r0, r4, #4
	ldr r1, [r5, r4]
	ldr r0, [r5, r0]
	add r0, r1, r0
	lsl r1, r6, #0x10
	asr r1, r1, #0x10
	bl ovy260_21be348
	sub r0, r4, #4
	ldr r0, [r5, r0]
	add r1, r0, #2
	sub r0, r4, #4
	str r1, [r5, r0]
	ldr r0, [r5, r4]
	add r0, r0, r1
	mov r1, #2
	bl ovy260_21be348
	sub r0, r4, #4
	ldr r0, [r5, r0]
	add r1, r0, #2
	sub r0, r4, #4
	str r1, [r5, r0]
	ldr r0, [r5, r4]
	add r0, r0, r1
	add r1, r7, #0
	bl sub_021BE340
	sub r0, r4, #4
	ldr r0, [r5, r0]
	add r1, r0, #1
	sub r0, r4, #4
	str r1, [r5, r0]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy260_21be29c

	thumb_func_start sub_021BE340
sub_021BE340: ; 0x021BE340
	strb r1, [r0]
	add r0, r0, #1
	bx lr
	.align 2, 0
	thumb_func_end sub_021BE340

	thumb_func_start ovy260_21be348
ovy260_21be348: ; 0x021BE348
	push {r3}
	sub sp, #4
	lsl r1, r1, #0x10
	lsr r2, r1, #0x10
	asr r1, r2, #8
	lsl r1, r1, #0x18
	lsr r3, r1, #0x18
	mov r1, #0xff
	lsl r2, r2, #8
	lsl r1, r1, #8
	and r1, r2
	add r2, r3, #0
	orr r2, r1
	add r1, sp, #0
	strh r2, [r1]
	add r2, sp, #0
	ldrb r1, [r2]
	strb r1, [r0]
	ldrb r1, [r2, #1]
	strb r1, [r0, #1]
	add r0, r0, #2
	add sp, #4
	pop {r3}
	bx lr
	thumb_func_end ovy260_21be348

	thumb_func_start ovy260_21be378
ovy260_21be378: ; 0x021BE378
	push {r3, r4, r5, r6}
	mov r5, #0xff
	lsl r2, r1, #0x18
	lsl r5, r5, #0x18
	add r4, r2, #0
	lsl r3, r1, #8
	lsr r2, r5, #8
	and r3, r2
	lsr r2, r1, #0x18
	lsl r2, r2, #0x18
	lsr r6, r1, #8
	lsr r1, r5, #0x10
	lsr r2, r2, #0x18
	and r1, r6
	orr r1, r2
	and r4, r5
	orr r1, r3
	orr r1, r4
	add r2, sp, #0
	str r1, [sp]
	ldrb r1, [r2]
	strb r1, [r0]
	ldrb r1, [r2, #1]
	strb r1, [r0, #1]
	ldrb r1, [r2, #2]
	strb r1, [r0, #2]
	ldrb r1, [r2, #3]
	strb r1, [r0, #3]
	add r0, r0, #4
	pop {r3, r4, r5, r6}
	bx lr
	.align 2, 0
	thumb_func_end ovy260_21be378

	thumb_func_start ovy260_21be3b8
ovy260_21be3b8: ; 0x021BE3B8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r4, r1, #0
	mov r5, #0
	add r7, r0, #0
	ldr r1, _021BE464 ; =0x021C12AC
	add r0, r4, #0
	add r2, sp, #0x20
	str r5, [sp, #0x20]
	str r5, [sp, #0x1c]
	str r5, [sp, #0x18]
	bl sub_0207FA4C
	ldr r6, _021BE468 ; =0x021C12B0
	add r0, r4, #0
	add r0, #9
	add r1, r6, #0
	add r2, sp, #0x1c
	bl sub_0207FA4C
	add r0, r4, #0
	add r0, #0xe
	add r1, r6, #0
	add r2, sp, #0x18
	bl sub_0207FA4C
	add r0, r4, #0
	add r6, sp, #0x24
	ldr r1, _021BE46C ; =0x021C12B4
	add r0, #0x13
	add r2, r6, #0
	bl sub_0207FA4C
	add r0, r4, #0
	ldr r1, _021BE46C ; =0x021C12B4
	add r0, #0x15
	add r2, sp, #0x28
	bl sub_0207FA4C
	add r0, sp, #0x34
	str r0, [sp]
	add r0, sp, #0x38
	str r0, [sp, #4]
	add r0, sp, #0x3c
	str r0, [sp, #8]
	add r0, sp, #0x40
	add r4, #0x18
	str r0, [sp, #0xc]
	ldr r1, _021BE470 ; =0x021C12B8
	add r0, r4, #0
	add r2, sp, #0x2c
	add r3, sp, #0x30
	bl sub_0207FA4C
	add r4, sp, #0x10
_021BE426:
	lsl r0, r5, #2
	ldr r0, [r6, r0]
	strb r0, [r4, r5]
	add r5, r5, #1
	cmp r5, #8
	blt _021BE426
	ldr r1, [sp, #0x20]
	add r0, r7, #0
	bl ovy260_21be378
	ldr r1, [sp, #0x1c]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	bl ovy260_21be348
	ldr r1, [sp, #0x18]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	bl ovy260_21be348
	add r3, r0, #0
	mov r2, #8
_021BE452:
	ldrb r1, [r4]
	add r4, r4, #1
	strb r1, [r3]
	add r3, r3, #1
	sub r2, r2, #1
	bne _021BE452
	add r0, #8
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021BE464: .word 0x021C12AC
_021BE468: .word 0x021C12B0
_021BE46C: .word 0x021C12B4
_021BE470: .word 0x021C12B8
	thumb_func_end ovy260_21be3b8

	thumb_func_start ovy260_21be474
ovy260_21be474: ; 0x021BE474
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	bl sub_0216C9F4
	cmp r0, #0
	beq _021BE486
	mov r0, #4
	pop {r3, r4, r5, pc}
_021BE486:
	mov r0, #0
	mov r1, #1
	str r5, [r4]
	str r0, [r4, #4]
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	str r0, [r4, #0x2c]
	str r0, [r4, #0x28]
	str r0, [r4, #0x30]
	str r0, [r4, #0x14]
	str r0, [r4, #0x10]
	str r0, [r4, #0x18]
	str r1, [r4, #0x48]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy260_21be474

	thumb_func_start sub_021BE4A4
sub_021BE4A4: ; 0x021BE4A4
	mov r1, #0
	str r1, [r0, #0x48]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x2c]
	str r1, [r0, #0x28]
	str r1, [r0, #0x30]
	str r1, [r0, #0x14]
	str r1, [r0, #0x10]
	str r1, [r0, #0x18]
	str r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_021BE4A4

	thumb_func_start sub_021BE4C0
sub_021BE4C0: ; 0x021BE4C0
	ldr r3, _021BE4C8 ; =sub_0216C910
	mov r0, #0
	bx r3
	nop
_021BE4C8: .word sub_0216C910
	thumb_func_end sub_021BE4C0

	thumb_func_start ovy260_21be4cc
ovy260_21be4cc: ; 0x021BE4CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0x14]
	str r1, [sp, #4]
	add r7, r2, #0
	add r6, r3, #0
	cmp r0, #0
	beq _021BE4E4
	add sp, #8
	mov r0, #6
	pop {r3, r4, r5, r6, r7, pc}
_021BE4E4:
	ldr r0, _021BE598 ; =0x021C12CC
	mov r1, #1
	bl sub_0216FBF8
	add r4, r0, #0
	bne _021BE4F6
	add sp, #8
	mov r0, #5
	pop {r3, r4, r5, r6, r7, pc}
_021BE4F6:
	ldr r1, _021BE59C ; =0x021C12F8
	ldr r2, _021BE5A0 ; =0x021C12FC
	bl sub_02170614
	cmp r0, #0
	beq _021BE56C
	ldr r1, _021BE59C ; =0x021C12F8
	ldr r2, _021BE5A4 ; =0x021C130C
	add r0, r4, #0
	bl sub_02170614
	cmp r0, #0
	beq _021BE56C
	ldr r1, _021BE59C ; =0x021C12F8
	add r0, r7, #0
	add r2, r4, #0
	bl ovy260_21bfa34
	cmp r0, #0
	beq _021BE56C
	ldr r1, _021BE59C ; =0x021C12F8
	ldr r2, _021BE5A4 ; =0x021C130C
	add r0, r4, #0
	bl sub_02170660
	cmp r0, #0
	beq _021BE56C
	mov r3, #0x82
	mov r0, #0x10
	lsl r3, r3, #2
	str r0, [sp]
	ldr r1, _021BE59C ; =0x021C12F8
	ldr r2, _021BE5A8 ; =0x021C1318
	add r0, r4, #0
	add r3, r6, r3
	bl sub_0217090C
	cmp r0, #0
	beq _021BE56C
	ldr r1, _021BE59C ; =0x021C12F8
	ldr r2, _021BE5AC ; =0x021C1320
	ldr r3, [sp, #4]
	add r0, r4, #0
	bl sub_02170818
	cmp r0, #0
	beq _021BE56C
	ldr r1, _021BE59C ; =0x021C12F8
	ldr r2, _021BE5A0 ; =0x021C12FC
	add r0, r4, #0
	bl sub_02170660
	cmp r0, #0
	beq _021BE56C
	add r0, r4, #0
	bl sub_0216FEA8
	cmp r0, #0
	bne _021BE578
_021BE56C:
	add r0, r4, #0
	bl sub_0216FE64
	add sp, #8
	mov r0, #7
	pop {r3, r4, r5, r6, r7, pc}
_021BE578:
	ldr r0, [sp, #0x20]
	ldr r1, _021BE5B0 ; =0x021C1328
	str r0, [r5, #4]
	ldr r0, [sp, #0x28]
	ldr r3, _021BE5B4 ; =ovy260_21be5bc
	str r0, [r5, #0x2c]
	mov r0, #1
	str r0, [r5, #0x14]
	ldr r0, _021BE5B8 ; =0x021C23D4
	add r2, r4, #0
	str r5, [sp]
	bl sub_0216EA4C
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BE598: .word 0x021C12CC
_021BE59C: .word 0x021C12F8
_021BE5A0: .word 0x021C12FC
_021BE5A4: .word 0x021C130C
_021BE5A8: .word 0x021C1318
_021BE5AC: .word 0x021C1320
_021BE5B0: .word 0x021C1328
_021BE5B4: .word ovy260_21be5bc
_021BE5B8: .word 0x021C23D4
	thumb_func_end ovy260_21be4cc

	thumb_func_start ovy260_21be5bc
ovy260_21be5bc: ; 0x021BE5BC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #8
	add r5, r3, #0
	add r7, r0, #0
	ldr r0, [r5, #0x48]
	add r6, r2, #0
	mov r4, #7
	cmp r0, #0
	beq _021BE68C
	cmp r7, #0
	bne _021BE672
	mov r0, #0
	str r0, [sp]
	add r0, r6, #0
	bl sub_02170D18
	cmp r0, #0
	bne _021BE5E4
	b _021BE5FC
_021BE5E4:
	ldr r1, _021BE694 ; =0x021C1364
	add r0, r6, #0
	bl sub_02170D28
	cmp r0, #0
	bne _021BE5FE
	ldr r1, _021BE698 ; =0x021C137C
	add r0, r6, #0
	bl sub_02170D28
	cmp r0, #0
	bne _021BE5FE
_021BE5FC:
	mov r4, #9
_021BE5FE:
	ldr r1, _021BE69C ; =0x021C139C
	add r0, r6, #0
	bl sub_02170D28
	cmp r0, #0
	bne _021BE618
	ldr r1, _021BE6A0 ; =0x021C13B0
	add r0, r6, #0
	bl sub_02170D28
	cmp r0, #0
	bne _021BE618
	mov r4, #9
_021BE618:
	ldr r1, _021BE6A4 ; =0x021C13D0
	add r0, r6, #0
	add r2, sp, #0
	bl sub_02171090
	cmp r0, #0
	bne _021BE628
	b _021BE670
_021BE628:
	cmp r4, #9
	beq _021BE672
	ldr r0, [sp]
	cmp r0, #0
	bne _021BE670
	add r2, sp, #0x100
	ldr r1, _021BE6A8 ; =0x021C13D8
	add r0, r6, #0
	add r2, #3
	mov r3, #0xff
	mov r4, #0xff
	bl sub_02170E90
	cmp r0, #0
	beq _021BE658
	add r0, r6, #0
	add r6, sp, #4
	ldr r1, _021BE6AC ; =0x021C13E0
	add r2, r6, #0
	add r3, r4, #0
	bl sub_02170E90
	cmp r0, #0
	bne _021BE65A
_021BE658:
	b _021BE670
_021BE65A:
	add r1, sp, #0x100
	ldr r0, [r5]
	add r1, #3
	bl ovy260_21bdb64
	ldr r0, [r5]
	add r1, r6, #0
	bl ovy260_21bdb7c
	mov r4, #0
	b _021BE672
_021BE670:
	mov r4, #9
_021BE672:
	ldr r6, [r5, #4]
	mov r0, #0
	str r0, [r5, #0x14]
	cmp r6, #0
	beq _021BE68C
	ldr r0, [r5]
	ldr r3, [r5, #0x2c]
	add r1, r7, #0
	add r2, r4, #0
	blx r6
	mov r0, #0
	str r0, [r5, #0x2c]
	str r0, [r5, #4]
_021BE68C:
	add sp, #0x1fc
	add sp, #8
	pop {r4, r5, r6, r7, pc}
	nop
_021BE694: .word 0x021C1364
_021BE698: .word 0x021C137C
_021BE69C: .word 0x021C139C
_021BE6A0: .word 0x021C13B0
_021BE6A4: .word 0x021C13D0
_021BE6A8: .word 0x021C13D8
_021BE6AC: .word 0x021C13E0
	thumb_func_end ovy260_21be5bc

	thumb_func_start ovy260_21be6b0
ovy260_21be6b0: ; 0x021BE6B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	cmp r0, #0
	beq _021BE6C8
	add sp, #0x10
	mov r0, #6
	pop {r3, r4, r5, r6, r7, pc}
_021BE6C8:
	ldr r0, _021BE7BC ; =0x021C12CC
	mov r1, #1
	mov r7, #1
	bl sub_0216FBF8
	add r4, r0, #0
	bne _021BE6DC
	add sp, #0x10
	mov r0, #5
	pop {r3, r4, r5, r6, r7, pc}
_021BE6DC:
	ldr r1, _021BE7C0 ; =0x021C12F8
	ldr r2, _021BE7C4 ; =0x021C13E8
	bl sub_02170614
	cmp r0, #0
	beq _021BE790
	ldr r6, _021BE7C8 ; =0x021C130C
	ldr r1, _021BE7C0 ; =0x021C12F8
	add r0, r4, #0
	add r2, r6, #0
	bl sub_02170614
	cmp r0, #0
	beq _021BE790
	ldr r0, [sp, #0x2c]
	ldr r1, _021BE7C0 ; =0x021C12F8
	add r2, r4, #0
	bl ovy260_21bfa34
	cmp r0, #0
	beq _021BE790
	ldr r1, _021BE7C0 ; =0x021C12F8
	add r0, r4, #0
	add r2, r6, #0
	bl sub_02170660
	cmp r0, #0
	beq _021BE790
	mov r3, #0x82
	mov r0, #0x10
	str r0, [sp]
	ldr r6, [sp, #0x30]
	lsl r3, r3, #2
	ldr r1, _021BE7C0 ; =0x021C12F8
	ldr r2, _021BE7CC ; =0x021C1318
	add r0, r4, #0
	add r3, r6, r3
	bl sub_0217090C
	cmp r0, #0
	beq _021BE790
	ldr r1, _021BE7C0 ; =0x021C12F8
	ldr r2, _021BE7D0 ; =0x021C13D8
	ldr r3, [sp, #8]
	add r0, r4, #0
	bl sub_021706B8
	cmp r0, #0
	beq _021BE790
	ldr r1, _021BE7C0 ; =0x021C12F8
	ldr r2, _021BE7D4 ; =0x021C13E0
	ldr r3, [sp, #0xc]
	add r0, r4, #0
	bl sub_021706B8
	cmp r0, #0
	beq _021BE790
	ldr r1, _021BE7C0 ; =0x021C12F8
	ldr r2, _021BE7D8 ; =0x021C1320
	ldr r3, [sp, #4]
	add r0, r4, #0
	bl sub_02170818
	cmp r0, #0
	beq _021BE790
	ldr r0, [sp, #0x28]
	cmp r0, #0
	bne _021BE766
	mov r7, #0
_021BE766:
	ldr r6, _021BE7C0 ; =0x021C12F8
	ldr r2, _021BE7DC ; =0x021C13FC
	add r0, r4, #0
	add r1, r6, #0
	add r3, r7, #0
	bl sub_02170818
	cmp r0, #0
	beq _021BE790
	ldr r2, _021BE7C4 ; =0x021C13E8
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02170660
	cmp r0, #0
	beq _021BE790
	add r0, r4, #0
	bl sub_0216FEA8
	cmp r0, #0
	bne _021BE79C
_021BE790:
	add r0, r4, #0
	bl sub_0216FE64
	add sp, #0x10
	mov r0, #7
	pop {r3, r4, r5, r6, r7, pc}
_021BE79C:
	ldr r0, [sp, #0x34]
	ldr r1, _021BE7E0 ; =0x021C140C
	str r0, [r5, #8]
	ldr r0, [sp, #0x3c]
	ldr r3, _021BE7E4 ; =ovy260_21be7ec
	str r0, [r5, #0x28]
	mov r0, #1
	str r0, [r5, #0x10]
	ldr r0, _021BE7E8 ; =0x021C23D4
	add r2, r4, #0
	str r5, [sp]
	bl sub_0216EA4C
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BE7BC: .word 0x021C12CC
_021BE7C0: .word 0x021C12F8
_021BE7C4: .word 0x021C13E8
_021BE7C8: .word 0x021C130C
_021BE7CC: .word 0x021C1318
_021BE7D0: .word 0x021C13D8
_021BE7D4: .word 0x021C13E0
_021BE7D8: .word 0x021C1320
_021BE7DC: .word 0x021C13FC
_021BE7E0: .word 0x021C140C
_021BE7E4: .word ovy260_21be7ec
_021BE7E8: .word 0x021C23D4
	thumb_func_end ovy260_21be6b0

	thumb_func_start ovy260_21be7ec
ovy260_21be7ec: ; 0x021BE7EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x104
	add r4, r3, #0
	add r7, r0, #0
	ldr r0, [r4, #0x48]
	add r5, r2, #0
	cmp r0, #0
	beq _021BE87A
	cmp r7, #0
	bne _021BE85E
	mov r6, #0
	add r0, r5, #0
	str r6, [sp]
	bl sub_02170D18
	cmp r0, #0
	beq _021BE846
	ldr r1, _021BE880 ; =0x021C144C
	add r0, r5, #0
	bl sub_02170D28
	cmp r0, #0
	beq _021BE846
	ldr r1, _021BE884 ; =0x021C1468
	add r0, r5, #0
	bl sub_02170D28
	cmp r0, #0
	beq _021BE846
	ldr r1, _021BE888 ; =0x021C13D0
	add r0, r5, #0
	add r2, sp, #0
	bl sub_02171090
	cmp r0, #0
	beq _021BE846
	add r0, r5, #0
	add r5, sp, #4
	ldr r1, _021BE88C ; =0x021C13E0
	add r2, r5, #0
	mov r3, #0xff
	bl sub_02170E90
	cmp r0, #0
	bne _021BE84A
_021BE846:
	mov r6, #9
	b _021BE860
_021BE84A:
	ldr r0, [sp]
	cmp r0, #0
	bne _021BE85A
	ldr r0, [r4]
	add r1, r5, #0
	bl ovy260_21bdb7c
	b _021BE860
_021BE85A:
	mov r6, #8
	b _021BE860
_021BE85E:
	mov r6, #7
_021BE860:
	ldr r5, [r4, #8]
	mov r0, #0
	str r0, [r4, #0x10]
	cmp r5, #0
	beq _021BE87A
	ldr r0, [r4]
	ldr r3, [r4, #0x28]
	add r1, r7, #0
	add r2, r6, #0
	blx r5
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #8]
_021BE87A:
	add sp, #0x104
	pop {r4, r5, r6, r7, pc}
	nop
_021BE880: .word 0x021C144C
_021BE884: .word 0x021C1468
_021BE888: .word 0x021C13D0
_021BE88C: .word 0x021C13E0
	thumb_func_end ovy260_21be7ec

	thumb_func_start ovy260_21be890
ovy260_21be890: ; 0x021BE890
	push {r3, lr}
	sub sp, #8
	add r3, r1, #0
	ldr r1, _021BE8AC ; =0x021C1484
	ldr r2, _021BE8B0 ; =0x021C148C
	str r1, [sp]
	str r2, [sp, #4]
	ldr r2, [r3, #0x40]
	ldr r3, [r3, #0x44]
	bl sub_021A3148
	add sp, #8
	pop {r3, pc}
	nop
_021BE8AC: .word 0x021C1484
_021BE8B0: .word 0x021C148C
	thumb_func_end ovy260_21be890

	thumb_func_start ovy260_21be8b4
ovy260_21be8b4: ; 0x021BE8B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, [r5, #0x18]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r6, [sp, #0x30]
	cmp r0, #0
	beq _021BE8CE
	add sp, #0x18
	mov r0, #6
	pop {r3, r4, r5, r6, r7, pc}
_021BE8CE:
	mov r7, #0x12
	lsl r7, r7, #4
	ldr r0, [r6, r7]
	cmp r0, #0x44
	bhs _021BE8DE
	add sp, #0x18
	mov r0, #0xc
	pop {r3, r4, r5, r6, r7, pc}
_021BE8DE:
	mov r1, #1
	str r1, [sp, #0x14]
	ldr r0, _021BE9E4 ; =0x021C12CC
	mov r1, #1
	bl sub_0216FBF8
	add r4, r0, #0
	bne _021BE8F4
	add sp, #0x18
	mov r0, #5
	pop {r3, r4, r5, r6, r7, pc}
_021BE8F4:
	ldr r1, _021BE9E8 ; =0x021C12F8
	ldr r2, _021BE9EC ; =0x021C149C
	bl sub_02170614
	cmp r0, #0
	beq _021BE9A6
	ldr r1, _021BE9E8 ; =0x021C12F8
	ldr r2, _021BE9F0 ; =0x021C130C
	add r0, r4, #0
	bl sub_02170614
	cmp r0, #0
	beq _021BE9A6
	ldr r0, [sp, #0x38]
	ldr r1, _021BE9E8 ; =0x021C12F8
	add r2, r4, #0
	bl ovy260_21bfa34
	cmp r0, #0
	beq _021BE9A6
	ldr r1, _021BE9E8 ; =0x021C12F8
	ldr r2, _021BE9F0 ; =0x021C130C
	add r0, r4, #0
	bl sub_02170660
	cmp r0, #0
	beq _021BE9A6
	ldr r3, [sp, #0x3c]
	mov r0, #0x10
	add r7, #0xe8
	str r0, [sp]
	ldr r1, _021BE9E8 ; =0x021C12F8
	ldr r2, _021BE9F4 ; =0x021C1318
	add r0, r4, #0
	add r3, r3, r7
	bl sub_0217090C
	cmp r0, #0
	beq _021BE9A6
	ldr r1, _021BE9E8 ; =0x021C12F8
	ldr r2, _021BE9F8 ; =0x021C13D8
	ldr r3, [sp, #0xc]
	add r0, r4, #0
	bl sub_021706B8
	cmp r0, #0
	beq _021BE9A6
	ldr r1, _021BE9E8 ; =0x021C12F8
	ldr r2, _021BE9FC ; =0x021C13E0
	ldr r3, [sp, #0x10]
	add r0, r4, #0
	bl sub_021706B8
	cmp r0, #0
	beq _021BE9A6
	ldr r1, _021BE9E8 ; =0x021C12F8
	ldr r2, _021BEA00 ; =0x021C1320
	ldr r3, [sp, #8]
	add r0, r4, #0
	bl sub_02170818
	cmp r0, #0
	beq _021BE9A6
	ldr r0, [sp, #0x34]
	cmp r0, #0
	bne _021BE97C
	mov r0, #0
	str r0, [sp, #0x14]
_021BE97C:
	ldr r7, _021BE9E8 ; =0x021C12F8
	ldr r2, _021BEA04 ; =0x021C13FC
	ldr r3, [sp, #0x14]
	add r0, r4, #0
	add r1, r7, #0
	bl sub_02170818
	cmp r0, #0
	beq _021BE9A6
	ldr r2, _021BE9EC ; =0x021C149C
	add r0, r4, #0
	add r1, r7, #0
	bl sub_02170660
	cmp r0, #0
	beq _021BE9A6
	add r0, r4, #0
	bl sub_0216FEA8
	cmp r0, #0
	bne _021BE9B2
_021BE9A6:
	add r0, r4, #0
	bl sub_0216FE64
	add sp, #0x18
	mov r0, #5
	pop {r3, r4, r5, r6, r7, pc}
_021BE9B2:
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r1, [r6, r0]
	sub r0, r0, #4
	str r1, [r5, #0x40]
	ldr r0, [r6, r0]
	ldr r1, _021BEA08 ; =0x021C14AC
	str r0, [r5, #0x44]
	ldr r0, [sp, #0x40]
	ldr r3, _021BEA0C ; =ovy260_21bea18
	str r0, [r5, #0xc]
	ldr r0, [sp, #0x48]
	add r2, r4, #0
	str r0, [r5, #0x30]
	mov r0, #1
	str r0, [r5, #0x18]
	ldr r0, _021BEA10 ; =ovy260_21be890
	str r0, [sp]
	ldr r0, _021BEA14 ; =0x021C23D4
	str r5, [sp, #4]
	bl sub_0216EAE0
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BE9E4: .word 0x021C12CC
_021BE9E8: .word 0x021C12F8
_021BE9EC: .word 0x021C149C
_021BE9F0: .word 0x021C130C
_021BE9F4: .word 0x021C1318
_021BE9F8: .word 0x021C13D8
_021BE9FC: .word 0x021C13E0
_021BEA00: .word 0x021C1320
_021BEA04: .word 0x021C13FC
_021BEA08: .word 0x021C14AC
_021BEA0C: .word ovy260_21bea18
_021BEA10: .word ovy260_21be890
_021BEA14: .word 0x021C23D4
	thumb_func_end ovy260_21be8b4

	thumb_func_start ovy260_21bea18
ovy260_21bea18: ; 0x021BEA18
	push {r3, r4, r5, r6, r7, lr}
	add r5, r3, #0
	add r7, r0, #0
	ldr r0, [r5, #0x48]
	add r6, r2, #0
	cmp r0, #0
	beq _021BEA90
	cmp r7, #0
	bne _021BEA74
	mov r4, #0
	add r0, r6, #0
	str r4, [sp]
	bl sub_02170D18
	cmp r0, #0
	beq _021BEA5E
	ldr r1, _021BEA94 ; =0x021C14E8
	add r0, r6, #0
	bl sub_02170D28
	cmp r0, #0
	beq _021BEA5E
	ldr r1, _021BEA98 ; =0x021C1500
	add r0, r6, #0
	bl sub_02170D28
	cmp r0, #0
	beq _021BEA5E
	ldr r1, _021BEA9C ; =0x021C13D0
	add r0, r6, #0
	add r2, sp, #0
	bl sub_02171090
	cmp r0, #0
	bne _021BEA62
_021BEA5E:
	mov r4, #9
	b _021BEA76
_021BEA62:
	ldr r0, [sp]
	cmp r0, #0
	beq _021BEA76
	cmp r0, #7
	bne _021BEA70
	mov r4, #0xc
	b _021BEA76
_021BEA70:
	mov r4, #8
	b _021BEA76
_021BEA74:
	mov r4, #7
_021BEA76:
	ldr r6, [r5, #0xc]
	mov r0, #0
	str r0, [r5, #0x18]
	cmp r6, #0
	beq _021BEA90
	ldr r0, [r5]
	ldr r3, [r5, #0x30]
	add r1, r7, #0
	add r2, r4, #0
	blx r6
	mov r0, #0
	str r0, [r5, #0x30]
	str r0, [r5, #0xc]
_021BEA90:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021BEA94: .word 0x021C14E8
_021BEA98: .word 0x021C1500
_021BEA9C: .word 0x021C13D0
	thumb_func_end ovy260_21bea18

	thumb_func_start ovy260_21beaa0
ovy260_21beaa0: ; 0x021BEAA0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	ldr r4, _021BEB3C ; =0x021C2454
	add r7, r0, #0
	ldr r0, [r4, #8]
	add r5, r1, #0
	str r2, [sp]
	cmp r0, #0
	beq _021BEAB8
	add sp, #0x20
	mov r0, #0x12
	pop {r3, r4, r5, r6, r7, pc}
_021BEAB8:
	add r0, sp, #4
	bl sub_0215F9E0
	cmp r0, #0
	bne _021BEAE0
	ldr r0, _021BEB40 ; =0x0000011A
	ldr r1, _021BEB44 ; =0x021C1620
	bl ovy260_21bef58
	mov r0, #1
	mov r1, #4
	bl sub_021BF3D0
	add r1, r0, #0
	mov r0, #8
	blx sub_020584CC
	add sp, #0x20
	mov r0, #4
	pop {r3, r4, r5, r6, r7, pc}
_021BEAE0:
	bl sub_0216C77C
	ldr r0, _021BEB48 ; =0x021C2458
	bl ovy260_21bc218
	add r6, r0, #0
	beq _021BEB06
	ldr r0, _021BEB4C ; =0x00000127
	ldr r1, _021BEB50 ; =0x021C1640
	add r2, r6, #0
	bl ovy260_21bef58
	bl ovy260_21bf030
	add r0, r6, #0
	bl ovy260_21bf3e0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_021BEB06:
	ldr r0, [r4, #4]
	ldr r1, _021BEB54 ; =0x021917BC
	ldr r3, _021BEB58 ; =0x021918BC
	add r2, r7, #0
	bl ovy260_21bc260
	ldr r0, [r4, #4]
	ldr r1, [r5, #0x1c]
	add r2, sp, #4
	bl ovy260_21bc280
	ldr r0, [sp]
	bl ovy260_21bf578
	mov r0, #0
	mov r5, #0
	bl sub_021A118C
	mov r0, #1
	str r0, [r4, #8]
	str r5, [r4, #0x10]
	str r5, [r4, #0xc]
	str r5, [r4, #0x14]
	mov r0, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021BEB3C: .word 0x021C2454
_021BEB40: .word 0x0000011A
_021BEB44: .word 0x021C1620
_021BEB48: .word 0x021C2458
_021BEB4C: .word 0x00000127
_021BEB50: .word 0x021C1640
_021BEB54: .word 0x021917BC
_021BEB58: .word 0x021918BC
	thumb_func_end ovy260_21beaa0

	thumb_func_start ovy260_21beb5c
ovy260_21beb5c: ; 0x021BEB5C
	push {r4, r5, r6, lr}
	ldr r4, _021BEC24 ; =0x021C2454
	ldr r5, _021BEC28 ; =0x021C246C
	ldr r0, [r4, #8]
	cmp r0, #2
	beq _021BEB74
	ldr r0, _021BEC2C ; =0x0000014F
	ldr r1, _021BEC30 ; =0x021C165C
	bl ovy260_21bef58
	mov r0, #0x11
	pop {r4, r5, r6, pc}
_021BEB74:
	mov r0, #3
	str r0, [r4, #8]
	ldr r2, [r4, #0xc]
	cmp r2, #0xd
	bhi _021BEC16
	add r0, r2, r2
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021BEB8A: ; jump table
	.short _021BEC16 - _021BEB8A - 2 ; case 0
	.short _021BEC16 - _021BEB8A - 2 ; case 1
	.short _021BEBA6 - _021BEB8A - 2 ; case 2
	.short _021BEBB6 - _021BEB8A - 2 ; case 3
	.short _021BEBB8 - _021BEB8A - 2 ; case 4
	.short _021BEBC8 - _021BEB8A - 2 ; case 5
	.short _021BEBEE - _021BEB8A - 2 ; case 6
	.short _021BEBBA - _021BEB8A - 2 ; case 7
	.short _021BEBBC - _021BEB8A - 2 ; case 8
	.short _021BEBBE - _021BEB8A - 2 ; case 9
	.short _021BEBC0 - _021BEB8A - 2 ; case 10
	.short _021BEBC2 - _021BEB8A - 2 ; case 11
	.short _021BEBC4 - _021BEB8A - 2 ; case 12
	.short _021BEBC6 - _021BEB8A - 2 ; case 13
_021BEBA6:
	ldr r2, [r4, #0x14]
	mov r1, #0x38
	mul r1, r2
	ldr r0, [r4, #4]
	ldr r1, [r5, r1]
	bl sub_021BC470
	b _021BEC1E
_021BEBB6:
	b _021BEBA6
_021BEBB8:
	b _021BEBA6
_021BEBBA:
	b _021BEBA6
_021BEBBC:
	b _021BEBA6
_021BEBBE:
	b _021BEBA6
_021BEBC0:
	b _021BEBA6
_021BEBC2:
	b _021BEBA6
_021BEBC4:
	b _021BEBA6
_021BEBC6:
	b _021BEBA6
_021BEBC8:
	ldr r0, [r4, #0x14]
	mov r6, #0x38
	add r1, r0, #0
	mul r1, r6
	ldr r0, [r5, r1]
	bl sub_021A3014
	add r2, r0, #0
	ldr r0, _021BEC34 ; =0x00000181
	ldr r1, _021BEC38 ; =0x021C1674
	bl ovy260_21bef58
	ldr r0, [r4, #0x14]
	add r1, r0, #0
	mul r1, r6
	ldr r0, [r5, r1]
_021BEBE8:
	bl sub_021A2FF4
	b _021BEC1E
_021BEBEE:
	ldr r0, [r4, #0x14]
	mov r6, #0x38
	add r1, r0, #0
	mul r1, r6
	add r0, r5, r1
	ldr r0, [r0, #4]
	bl sub_021A3014
	add r2, r0, #0
	mov r0, #0x62
	ldr r1, _021BEC38 ; =0x021C1674
	lsl r0, r0, #2
	bl ovy260_21bef58
	ldr r0, [r4, #0x14]
	add r1, r0, #0
	mul r1, r6
	add r0, r5, r1
	ldr r0, [r0, #4]
	b _021BEBE8
_021BEC16:
	ldr r0, _021BEC3C ; =0x0000018F
	ldr r1, _021BEC40 ; =0x021C1690
	bl ovy260_21bef58
_021BEC1E:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_021BEC24: .word 0x021C2454
_021BEC28: .word 0x021C246C
_021BEC2C: .word 0x0000014F
_021BEC30: .word 0x021C165C
_021BEC34: .word 0x00000181
_021BEC38: .word 0x021C1674
_021BEC3C: .word 0x0000018F
_021BEC40: .word 0x021C1690
	thumb_func_end ovy260_21beb5c

	thumb_func_start ovy260_21bec44
ovy260_21bec44: ; 0x021BEC44
	push {r4, lr}
	ldr r4, _021BEC84 ; =0x021C2454
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _021BEC5A
	ldr r0, _021BEC88 ; =0x000001A6
	ldr r1, _021BEC8C ; =0x021C16A8
	bl ovy260_21bef58
	mov r0, #0x13
	pop {r4, pc}
_021BEC5A:
	cmp r0, #2
	bne _021BEC6A
	ldr r0, _021BEC90 ; =0x000001AB
	ldr r1, _021BEC94 ; =0x021C16BC
	bl ovy260_21bef58
	mov r0, #0x14
	pop {r4, pc}
_021BEC6A:
	bl ovy260_21bec98
	mov r0, #0
	str r0, [r4, #8]
	bl sub_021A11A4
	ldr r0, [r4, #4]
	bl sub_021BC258
	bl ovy260_21bf030
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
_021BEC84: .word 0x021C2454
_021BEC88: .word 0x000001A6
_021BEC8C: .word 0x021C16A8
_021BEC90: .word 0x000001AB
_021BEC94: .word 0x021C16BC
	thumb_func_end ovy260_21bec44

	thumb_func_start ovy260_21bec98
ovy260_21bec98: ; 0x021BEC98
	push {r3, r4, r5, lr}
	sub sp, #0x100
	ldr r0, _021BECCC ; =0x021C1DA8
	bl sub_021A1178
	ldr r4, _021BECD0 ; =0x021C2454
	add r5, sp, #0x80
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl ovy260_21bc408
	add r0, r5, #0
	bl sub_021A1178
	ldr r0, [r4, #4]
	add r4, sp, #0
	mov r1, #1
	add r2, r4, #0
	bl ovy260_21bc380
	add r0, r4, #0
	bl sub_021A1178
	add sp, #0x100
	pop {r3, r4, r5, pc}
	nop
_021BECCC: .word 0x021C1DA8
_021BECD0: .word 0x021C2454
	thumb_func_end ovy260_21bec98

	thumb_func_start ovy260_21becd4
ovy260_21becd4: ; 0x021BECD4
	push {r3, lr}
	bl sub_0216C9F4
	cmp r0, #2
	beq _021BECE4
	mov r0, #0
	bl sub_0216C910
_021BECE4:
	bl sub_021A11CC
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy260_21becd4

	thumb_func_start ovy260_21becec
ovy260_21becec: ; 0x021BECEC
	push {r3, lr}
	blx sub_020584B0
	cmp r0, #0
	beq _021BECFA
	mov r0, #4
	pop {r3, pc}
_021BECFA:
	ldr r0, _021BED00 ; =0x021C2454
	ldr r0, [r0, #8]
	pop {r3, pc}
	.align 2, 0
_021BED00: .word 0x021C2454
	thumb_func_end ovy260_21becec

	thumb_func_start sub_021BED04
sub_021BED04: ; 0x021BED04
	ldr r0, _021BED0C ; =0x021C2454
	ldr r0, [r0, #0x10]
	bx lr
	nop
_021BED0C: .word 0x021C2454
	thumb_func_end sub_021BED04

	thumb_func_start ovy260_21bed10
ovy260_21bed10: ; 0x021BED10
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, sp, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ovy260_21bef94
	cmp r0, #0
	beq _021BED28
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
_021BED28:
	bl sub_021BF560
	ldr r0, _021BED8C ; =0x021C2454
	mov r3, #0
	ldr r1, [r0, #0x14]
	mov r0, #0x38
	add r2, r1, #0
	mul r2, r0
	ldr r0, _021BED90 ; =0x021C246C
	add r1, r0, r2
	str r5, [r1, #4]
	str r4, [r1, #8]
	str r6, [r1, #0xc]
	str r7, [r1, #0x10]
	ldr r0, _021BED8C ; =0x021C2454
	ldr r2, _021BED94 ; =ovy260_21bf050
	ldr r0, [r0, #4]
	add r1, r1, #4
	mov r4, #0
	bl ovy260_21bc304
	cmp r0, #0
	bne _021BED74
	ldr r0, _021BED8C ; =0x021C2454
	ldr r0, [r0, #4]
	bl sub_021BC2A0
	add r4, r0, #0
	ldr r0, _021BED98 ; =0x0000022F
	ldr r1, _021BED9C ; =0x021C16D0
	add r2, r4, #0
	bl ovy260_21bef58
	mov r0, #2
	add r1, r4, #0
	bl ovy260_21bf418
	pop {r3, r4, r5, r6, r7, pc}
_021BED74:
	ldr r1, _021BED8C ; =0x021C2454
	ldr r2, [r1, #0x14]
	mov r1, #0x38
	add r3, r2, #0
	mul r3, r1
	ldr r1, _021BED90 ; =0x021C246C
	str r0, [r1, r3]
	mov r0, #2
	bl sub_021BF54C
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BED8C: .word 0x021C2454
_021BED90: .word 0x021C246C
_021BED94: .word ovy260_21bf050
_021BED98: .word 0x0000022F
_021BED9C: .word 0x021C16D0
	thumb_func_end ovy260_21bed10

	thumb_func_start ovy260_21beda0
ovy260_21beda0: ; 0x021BEDA0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, sp, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ovy260_21bef94
	cmp r0, #0
	beq _021BEDB8
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
_021BEDB8:
	bl sub_021BF560
	ldr r0, _021BEE20 ; =0x021C2454
	mov r3, #0
	ldr r1, [r0, #0x14]
	mov r0, #0x38
	add r2, r1, #0
	mul r2, r0
	ldr r0, _021BEE24 ; =0x021C246C
	add r1, r0, r2
	str r5, [r1, #4]
	str r4, [r1, #8]
	str r6, [r1, #0xc]
	str r7, [r1, #0x10]
	ldr r0, _021BEE20 ; =0x021C2454
	ldr r2, _021BEE28 ; =ovy260_21bf050
	ldr r0, [r0, #4]
	add r1, r1, #4
	mov r4, #0
	bl ovy260_21bc31c
	cmp r0, #0
	bne _021BEE06
	ldr r0, _021BEE20 ; =0x021C2454
	ldr r0, [r0, #4]
	bl sub_021BC2A0
	add r4, r0, #0
	mov r0, #0xa7
	ldr r1, _021BEE2C ; =0x021C16F0
	lsl r0, r0, #2
	add r2, r4, #0
	bl ovy260_21bef58
	mov r0, #4
	add r1, r4, #0
	bl ovy260_21bf418
	pop {r3, r4, r5, r6, r7, pc}
_021BEE06:
	ldr r1, _021BEE20 ; =0x021C2454
	ldr r2, [r1, #0x14]
	mov r1, #0x38
	add r3, r2, #0
	mul r3, r1
	ldr r1, _021BEE24 ; =0x021C246C
	str r0, [r1, r3]
	mov r0, #4
	bl sub_021BF54C
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021BEE20: .word 0x021C2454
_021BEE24: .word 0x021C246C
_021BEE28: .word ovy260_21bf050
_021BEE2C: .word 0x021C16F0
	thumb_func_end ovy260_21beda0

	thumb_func_start ovy260_21bee30
ovy260_21bee30: ; 0x021BEE30
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, sp, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ovy260_21bef94
	cmp r0, #0
	beq _021BEE48
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
_021BEE48:
	bl sub_021BF560
	ldr r0, _021BEEAC ; =0x021C2454
	ldr r3, [sp, #0x18]
	ldr r1, [r0, #0x14]
	mov r0, #0x38
	add r2, r1, #0
	mul r2, r0
	ldr r0, _021BEEB0 ; =0x021C246C
	add r1, r0, r2
	str r5, [r1, #4]
	str r4, [r1, #8]
	str r6, [r1, #0xc]
	str r7, [r1, #0x10]
	ldr r0, _021BEEAC ; =0x021C2454
	ldr r2, _021BEEB4 ; =ovy260_21bf050
	ldr r0, [r0, #4]
	add r1, r1, #4
	bl ovy260_21bc334
	cmp r0, #0
	bne _021BEE92
	ldr r0, _021BEEAC ; =0x021C2454
	ldr r0, [r0, #4]
	bl sub_021BC2A0
	add r4, r0, #0
	ldr r0, _021BEEB8 ; =0x0000035B
	ldr r1, _021BEEBC ; =0x021C1710
	add r2, r4, #0
	bl ovy260_21bef58
	mov r0, #7
	add r1, r4, #0
	bl ovy260_21bf418
	pop {r3, r4, r5, r6, r7, pc}
_021BEE92:
	ldr r1, _021BEEAC ; =0x021C2454
	ldr r2, [r1, #0x14]
	mov r1, #0x38
	add r3, r2, #0
	mul r3, r1
	ldr r1, _021BEEB0 ; =0x021C246C
	str r0, [r1, r3]
	mov r0, #7
	bl sub_021BF54C
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021BEEAC: .word 0x021C2454
_021BEEB0: .word 0x021C246C
_021BEEB4: .word ovy260_21bf050
_021BEEB8: .word 0x0000035B
_021BEEBC: .word 0x021C1710
	thumb_func_end ovy260_21bee30

	thumb_func_start ovy260_21beec0
ovy260_21beec0: ; 0x021BEEC0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, sp, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ovy260_21bef94
	cmp r0, #0
	beq _021BEED8
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
_021BEED8:
	bl sub_021BF560
	ldr r0, _021BEF44 ; =0x021C2454
	ldr r3, [sp, #0x20]
	ldr r1, [r0, #0x14]
	mov r0, #0x38
	add r2, r1, #0
	mul r2, r0
	ldr r0, _021BEF48 ; =0x021C246C
	add r1, r0, r2
	str r5, [r1, #4]
	str r4, [r1, #8]
	str r6, [r1, #0xc]
	ldr r0, [sp, #0x18]
	str r7, [r1, #0x10]
	str r0, [r1, #0x14]
	ldr r0, [sp, #0x1c]
	ldr r2, _021BEF4C ; =ovy260_21bf050
	str r0, [r1, #0x18]
	ldr r0, _021BEF44 ; =0x021C2454
	add r1, r1, #4
	ldr r0, [r0, #4]
	bl ovy260_21bc34c
	cmp r0, #0
	bne _021BEF2A
	ldr r0, _021BEF44 ; =0x021C2454
	ldr r0, [r0, #4]
	bl sub_021BC2A0
	add r4, r0, #0
	ldr r0, _021BEF50 ; =0x000003CA
	ldr r1, _021BEF54 ; =0x021C1730
	add r2, r4, #0
	bl ovy260_21bef58
	mov r0, #9
	add r1, r4, #0
	bl ovy260_21bf418
	pop {r3, r4, r5, r6, r7, pc}
_021BEF2A:
	ldr r1, _021BEF44 ; =0x021C2454
	ldr r2, [r1, #0x14]
	mov r1, #0x38
	add r3, r2, #0
	mul r3, r1
	ldr r1, _021BEF48 ; =0x021C246C
	str r0, [r1, r3]
	mov r0, #9
	bl sub_021BF54C
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021BEF44: .word 0x021C2454
_021BEF48: .word 0x021C246C
_021BEF4C: .word ovy260_21bf050
_021BEF50: .word 0x000003CA
_021BEF54: .word 0x021C1730
	thumb_func_end ovy260_21beec0

	thumb_func_start ovy260_21bef58
ovy260_21bef58: ; 0x021BEF58
	push {r0, r1, r2, r3}
	thumb_func_end ovy260_21bef58

	non_word_aligned_thumb_func_start ovy260_21bef5a
ovy260_21bef5a: ; 0x021BEF5A
	push {r3, r4, r5, lr}
	sub sp, #0x100
	mov r4, #1
	lsl r4, r4, #8
	add r5, sp, #0
	add r3, r0, #0
	ldr r2, _021BEF90 ; =0x021C1754
	add r0, r5, #0
	add r1, r4, #0
	bl OS_SNPrintf
	add r1, r0, #0
	add r0, r5, r1
	sub r1, r4, r1
	add r4, sp, #0x114
	mov r3, #3
	bic r4, r3
	ldr r2, [sp, #0x114]
	add r3, r4, #4
	bl OS_VSNPrintf
	add sp, #0x100
	pop {r3, r4, r5}
	pop {r3}
	add sp, #0x10
	bx r3
	nop
_021BEF90: .word 0x021C1754
	thumb_func_end ovy260_21bef5a

	thumb_func_start ovy260_21bef94
ovy260_21bef94: ; 0x021BEF94
	push {r4, lr}
	add r4, r0, #0
	blx sub_020584B0
	cmp r0, #0
	beq _021BEFBC
	mov r0, #0
	blx sub_02058390
	add r2, r0, #0
	ldr r0, _021BF010 ; =0x00000568
	ldr r1, _021BF014 ; =0x021C1760
	bl ovy260_21bef58
	cmp r4, #0
	beq _021BEFB8
	mov r0, #0x16
	str r0, [r4]
_021BEFB8:
	mov r0, #1
	pop {r4, pc}
_021BEFBC:
	ldr r0, _021BF018 ; =0x021C2454
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _021BEFCE
	cmp r0, #2
	beq _021BEFE4
	cmp r0, #3
	beq _021BEFF8
	b _021BF00C
_021BEFCE:
	mov r0, #0x57
	ldr r1, _021BF01C ; =0x021C16A8
	lsl r0, r0, #4
	bl ovy260_21bef58
	cmp r4, #0
	beq _021BEFE0
	mov r0, #0x13
	str r0, [r4]
_021BEFE0:
	mov r0, #1
	pop {r4, pc}
_021BEFE4:
	ldr r0, _021BF020 ; =0x00000575
	ldr r1, _021BF024 ; =0x021C16BC
	bl ovy260_21bef58
	cmp r4, #0
	beq _021BEFF4
	mov r0, #0x14
	str r0, [r4]
_021BEFF4:
	mov r0, #1
	pop {r4, pc}
_021BEFF8:
	ldr r0, _021BF028 ; =0x0000057A
	ldr r1, _021BF02C ; =0x021C1774
	bl ovy260_21bef58
	cmp r4, #0
	beq _021BF008
	mov r0, #0x17
	str r0, [r4]
_021BF008:
	mov r0, #1
	pop {r4, pc}
_021BF00C:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
_021BF010: .word 0x00000568
_021BF014: .word 0x021C1760
_021BF018: .word 0x021C2454
_021BF01C: .word 0x021C16A8
_021BF020: .word 0x00000575
_021BF024: .word 0x021C16BC
_021BF028: .word 0x0000057A
_021BF02C: .word 0x021C1774
	thumb_func_end ovy260_21bef94

	thumb_func_start ovy260_21bf030
ovy260_21bf030: ; 0x021BF030
	push {r4, lr}
	bl sub_0216C998
	mov r0, #0
	mov r4, #0
	bl sub_0216C910
	bl sub_0216C9F4
	cmp r0, #2
	beq _021BF04C
	add r0, r4, #0
	bl sub_0216C910
_021BF04C:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy260_21bf030

	thumb_func_start ovy260_21bf050
ovy260_21bf050: ; 0x021BF050
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r0, _021BF2A8 ; =0x021C2454
	add r5, r2, #0
	ldr r2, [r0, #0xc]
	ldr r0, [r0, #8]
	ldr r7, _021BF2AC ; =0x021C246C
	ldr r3, _021BF2B0 ; =0x021C15E8
	ldr r4, [sp, #0x20]
	ldr r6, [sp, #0x24]
	cmp r0, #2
	beq _021BF06E
	cmp r0, #3
	beq _021BF06E
	b _021BF2A4
_021BF06E:
	cmp r5, #0
	beq _021BF074
	b _021BF25A
_021BF074:
	ldr r0, _021BF2A8 ; =0x021C2454
	mov r1, #1
	str r1, [r0, #0x10]
	str r1, [r0, #8]
	mov r1, #0
	str r1, [r0, #0xc]
	cmp r2, #0xd
	bls _021BF086
	b _021BF24E
_021BF086:
	add r1, r2, r2
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021BF092: ; jump table
	.short _021BF24E - _021BF092 - 2 ; case 0
	.short _021BF24E - _021BF092 - 2 ; case 1
	.short _021BF0AE - _021BF092 - 2 ; case 2
	.short _021BF0DA - _021BF092 - 2 ; case 3
	.short _021BF0FA - _021BF092 - 2 ; case 4
	.short _021BF24E - _021BF092 - 2 ; case 5
	.short _021BF24E - _021BF092 - 2 ; case 6
	.short _021BF11E - _021BF092 - 2 ; case 7
	.short _021BF144 - _021BF092 - 2 ; case 8
	.short _021BF178 - _021BF092 - 2 ; case 9
	.short _021BF19E - _021BF092 - 2 ; case 10
	.short _021BF1C2 - _021BF092 - 2 ; case 11
	.short _021BF1E8 - _021BF092 - 2 ; case 12
	.short _021BF22C - _021BF092 - 2 ; case 13
_021BF0AE:
	ldr r5, [r0, #0x14]
	mov r0, #0x38
	ldr r1, _021BF2AC ; =0x021C246C
	mul r0, r5
	add r5, r1, r0
	ldr r1, [r4]
	ldr r0, [r5, #0x10]
	lsl r2, r2, #2
	str r1, [r0]
	ldr r0, [r5, #0xc]
	ldr r1, _021BF2B4 ; =0x021C1788
	str r0, [sp]
	ldr r0, [r5, #0x10]
	ldr r0, [r0]
	str r0, [sp, #4]
	ldr r2, [r3, r2]
	ldr r0, _021BF2B8 ; =0x000005AF
	ldr r3, [r5, #4]
	bl ovy260_21bef58
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021BF0DA:
	ldr r1, [r0, #0x14]
	mov r0, #0x38
	mul r0, r1
	ldr r4, _021BF2AC ; =0x021C246C
	lsl r2, r2, #2
	add r4, r4, r0
	ldr r0, [r4, #8]
	ldr r1, _021BF2BC ; =0x021C17B4
	str r0, [sp]
	ldr r2, [r3, r2]
	ldr r0, _021BF2C0 ; =0x000005B8
	ldr r3, [r4, #4]
	bl ovy260_21bef58
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021BF0FA:
	ldr r1, [r0, #0x14]
	mov r0, #0x38
	mul r0, r1
	ldr r4, _021BF2AC ; =0x021C246C
	lsl r2, r2, #2
	add r4, r4, r0
	ldr r0, [r4, #8]
	ldr r1, _021BF2C4 ; =0x021C17D0
	str r0, [sp]
	ldr r0, [r4, #0x10]
	str r0, [sp, #4]
	ldr r2, [r3, r2]
	ldr r0, _021BF2C8 ; =0x000005C2
	ldr r3, [r4, #4]
	bl ovy260_21bef58
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021BF11E:
	ldr r5, [r0, #0x14]
	mov r0, #0x38
	lsl r2, r2, #2
	ldr r2, [r3, r2]
	ldr r1, _021BF2AC ; =0x021C246C
	mul r0, r5
	add r5, r1, r0
	ldr r0, _021BF2CC ; =0x000005CB
	ldr r1, _021BF2D0 ; =0x021C17FC
	ldr r3, [r4]
	bl ovy260_21bef58
	ldr r0, [r4]
	ldr r1, [r4, #4]
	ldr r3, [r5, #0x10]
	add r2, r6, #0
	blx r3
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021BF144:
	ldr r5, [r0, #0x14]
	mov r0, #0x38
	ldr r1, _021BF2AC ; =0x021C246C
	mul r0, r5
	add r5, r1, r0
	ldr r1, [r4]
	ldr r0, [r5, #8]
	lsl r2, r2, #2
	str r1, [r0]
	ldr r1, [r4, #4]
	ldr r0, [r5, #0xc]
	str r1, [r0]
	ldr r0, [r5, #8]
	ldr r1, _021BF2D4 ; =0x021C1814
	ldr r0, [r0]
	str r0, [sp]
	ldr r0, [r5, #0xc]
	ldr r0, [r0]
	str r0, [sp, #4]
	ldr r2, [r3, r2]
	ldr r0, _021BF2D8 ; =0x000005D8
	ldr r3, [r5, #4]
	bl ovy260_21bef58
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021BF178:
	ldr r5, [r0, #0x14]
	mov r0, #0x38
	lsl r2, r2, #2
	ldr r2, [r3, r2]
	ldr r1, _021BF2AC ; =0x021C246C
	mul r0, r5
	add r5, r1, r0
	ldr r0, _021BF2DC ; =0x000005E1
	ldr r1, _021BF2D0 ; =0x021C17FC
	ldr r3, [r4]
	bl ovy260_21bef58
	ldr r0, [r4]
	ldr r1, [r4, #4]
	ldr r3, [r5, #0x18]
	add r2, r6, #0
	blx r3
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021BF19E:
	ldr r1, [r0, #0x14]
	mov r0, #0x38
	mul r0, r1
	ldr r4, _021BF2AC ; =0x021C246C
	lsl r2, r2, #2
	add r4, r4, r0
	ldr r0, [r4, #8]
	ldr r1, _021BF2E0 ; =0x021C1840
	str r0, [sp]
	ldrb r0, [r4, #0xc]
	str r0, [sp, #4]
	ldr r2, [r3, r2]
	ldr r0, _021BF2E4 ; =0x000005EC
	ldr r3, [r4, #4]
	bl ovy260_21bef58
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021BF1C2:
	ldr r5, [r0, #0x14]
	mov r0, #0x38
	lsl r2, r2, #2
	ldr r2, [r3, r2]
	ldr r1, _021BF2AC ; =0x021C246C
	mul r0, r5
	add r5, r1, r0
	ldr r0, _021BF2E8 ; =0x000005F5
	ldr r1, _021BF2D0 ; =0x021C17FC
	ldr r3, [r4]
	bl ovy260_21bef58
	ldr r0, [r4]
	ldr r1, [r4, #4]
	ldr r3, [r5, #0x34]
	add r2, r6, #0
	blx r3
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021BF1E8:
	ldr r5, [r0, #0x14]
	mov r0, #0x38
	ldr r1, _021BF2AC ; =0x021C246C
	mul r0, r5
	add r5, r1, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _021BF212
	lsl r2, r2, #2
	ldr r0, _021BF2EC ; =0x000005FF
	ldr r1, _021BF2F0 ; =0x021C1868
	ldr r2, [r3, r2]
	bl ovy260_21bef58
	ldr r3, [r5, #0x14]
	mov r0, #1
	add r1, r4, #0
	add r2, r6, #0
	blx r3
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021BF212:
	lsl r2, r2, #2
	ldr r0, _021BF2F4 ; =0x00000604
	ldr r1, _021BF2F8 ; =0x021C187C
	ldr r2, [r3, r2]
	bl ovy260_21bef58
	ldr r3, [r5, #0x14]
	mov r0, #0
	mov r1, #0
	add r2, r6, #0
	blx r3
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021BF22C:
	ldr r1, [r0, #0x14]
	mov r0, #0x38
	mul r0, r1
	add r5, r7, r0
	ldr r1, [r4]
	ldr r0, [r5, #0x10]
	lsl r2, r2, #2
	str r1, [r0]
	ldr r2, [r3, r2]
	ldr r3, [r5, #0x10]
	ldr r0, _021BF2FC ; =0x0000060D
	ldr r1, _021BF300 ; =0x021C1890
	ldr r3, [r3]
	bl ovy260_21bef58
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021BF24E:
	ldr r0, _021BF304 ; =0x00000613
	ldr r1, _021BF308 ; =0x021C1690
	bl ovy260_21bef58
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021BF25A:
	cmp r5, #0x17
	bne _021BF280
	ldr r4, _021BF2A8 ; =0x021C2454
	ldr r0, _021BF30C ; =0x0000061A
	ldr r2, [r4, #0xc]
	ldr r1, _021BF310 ; =0x021C18A0
	lsl r2, r2, #2
	ldr r2, [r3, r2]
	add r3, r5, #0
	bl ovy260_21bef58
	mov r0, #0x20
	str r0, [r4, #0x10]
	mov r0, #1
	str r0, [r4, #8]
	mov r0, #0
	add sp, #8
	str r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_021BF280:
	ldr r4, _021BF2A8 ; =0x021C2454
	ldr r0, _021BF314 ; =0x00000621
	ldr r2, [r4, #0xc]
	ldr r1, _021BF318 ; =0x021C18B4
	lsl r2, r2, #2
	ldr r2, [r3, r2]
	add r3, r5, #0
	bl ovy260_21bef58
	ldr r0, [r4, #0xc]
	add r1, r5, #0
	bl ovy260_21bf514
	str r0, [r4, #0x10]
	mov r0, #1
	str r0, [r4, #8]
	mov r0, #0
	str r0, [r4, #0xc]
_021BF2A4:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BF2A8: .word 0x021C2454
_021BF2AC: .word 0x021C246C
_021BF2B0: .word 0x021C15E8
_021BF2B4: .word 0x021C1788
_021BF2B8: .word 0x000005AF
_021BF2BC: .word 0x021C17B4
_021BF2C0: .word 0x000005B8
_021BF2C4: .word 0x021C17D0
_021BF2C8: .word 0x000005C2
_021BF2CC: .word 0x000005CB
_021BF2D0: .word 0x021C17FC
_021BF2D4: .word 0x021C1814
_021BF2D8: .word 0x000005D8
_021BF2DC: .word 0x000005E1
_021BF2E0: .word 0x021C1840
_021BF2E4: .word 0x000005EC
_021BF2E8: .word 0x000005F5
_021BF2EC: .word 0x000005FF
_021BF2F0: .word 0x021C1868
_021BF2F4: .word 0x00000604
_021BF2F8: .word 0x021C187C
_021BF2FC: .word 0x0000060D
_021BF300: .word 0x021C1890
_021BF304: .word 0x00000613
_021BF308: .word 0x021C1690
_021BF30C: .word 0x0000061A
_021BF310: .word 0x021C18A0
_021BF314: .word 0x00000621
_021BF318: .word 0x021C18B4
	thumb_func_end ovy260_21bf050

	thumb_func_start sub_021BF31C
sub_021BF31C: ; 0x021BF31C
	cmp r0, #3
	bhi _021BF352
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021BF32C: ; jump table
	.short _021BF334 - _021BF32C - 2 ; case 0
	.short _021BF33A - _021BF32C - 2 ; case 1
	.short _021BF342 - _021BF32C - 2 ; case 2
	.short _021BF34A - _021BF32C - 2 ; case 3
_021BF334:
	mov r0, #0
	str r0, [r1]
	bx lr
_021BF33A:
	mov r0, #8
	str r0, [r1]
	mov r0, #2
	bx lr
_021BF342:
	mov r0, #8
	str r0, [r1]
	mov r0, #3
	bx lr
_021BF34A:
	mov r0, #9
	str r0, [r1]
	mov r0, #1
	bx lr
_021BF352:
	mov r0, #0x11
	bx lr
	.align 2, 0
	thumb_func_end sub_021BF31C

	thumb_func_start sub_021BF358
sub_021BF358: ; 0x021BF358
	mov r2, #0x13
	str r2, [r1]
	cmp r0, #0xe
	bhi _021BF3CC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021BF36C: ; jump table
	.short _021BF38A - _021BF36C - 2 ; case 0
	.short _021BF390 - _021BF36C - 2 ; case 1
	.short _021BF394 - _021BF36C - 2 ; case 2
	.short _021BF39C - _021BF36C - 2 ; case 3
	.short _021BF3A0 - _021BF36C - 2 ; case 4
	.short _021BF3A4 - _021BF36C - 2 ; case 5
	.short _021BF3A8 - _021BF36C - 2 ; case 6
	.short _021BF3AC - _021BF36C - 2 ; case 7
	.short _021BF3B0 - _021BF36C - 2 ; case 8
	.short _021BF3B4 - _021BF36C - 2 ; case 9
	.short _021BF3B8 - _021BF36C - 2 ; case 10
	.short _021BF3BC - _021BF36C - 2 ; case 11
	.short _021BF3C0 - _021BF36C - 2 ; case 12
	.short _021BF3C4 - _021BF36C - 2 ; case 13
	.short _021BF3C8 - _021BF36C - 2 ; case 14
_021BF38A:
	mov r0, #0
	str r0, [r1]
	bx lr
_021BF390:
	mov r0, #5
	bx lr
_021BF394:
	mov r0, #9
	str r0, [r1]
	mov r0, #1
	bx lr
_021BF39C:
	mov r0, #6
	bx lr
_021BF3A0:
	mov r0, #7
	bx lr
_021BF3A4:
	mov r0, #8
	bx lr
_021BF3A8:
	mov r0, #9
	bx lr
_021BF3AC:
	mov r0, #0xa
	bx lr
_021BF3B0:
	mov r0, #0xb
	bx lr
_021BF3B4:
	mov r0, #0xc
	bx lr
_021BF3B8:
	mov r0, #0xd
	bx lr
_021BF3BC:
	mov r0, #0xe
	bx lr
_021BF3C0:
	mov r0, #0xf
	bx lr
_021BF3C4:
	mov r0, #0x10
	bx lr
_021BF3C8:
	mov r0, #0x11
	bx lr
_021BF3CC:
	mov r0, #0x11
	bx lr
	thumb_func_end sub_021BF358

	thumb_func_start sub_021BF3D0
sub_021BF3D0: ; 0x021BF3D0
	mov r2, #0x64
	mul r2, r0
	ldr r0, _021BF3DC ; =0xFFFF63C0
	add r1, r1, r2
	sub r0, r0, r1
	bx lr
	.align 2, 0
_021BF3DC: .word 0xFFFF63C0
	thumb_func_end sub_021BF3D0

	thumb_func_start ovy260_21bf3e0
ovy260_21bf3e0: ; 0x021BF3E0
	push {r3, r4, lr}
	sub sp, #4
	add r1, sp, #0
	bl sub_021BF31C
	add r4, r0, #0
	beq _021BF408
	ldr r0, _021BF410 ; =0x000006DB
	ldr r1, _021BF414 ; =0x021C18C4
	add r2, r4, #0
	bl ovy260_21bef58
	mov r0, #1
	add r1, r4, #0
	bl sub_021BF3D0
	add r1, r0, #0
	ldr r0, [sp]
	blx sub_020584CC
_021BF408:
	add r0, r4, #0
	add sp, #4
	pop {r3, r4, pc}
	nop
_021BF410: .word 0x000006DB
_021BF414: .word 0x021C18C4
	thumb_func_end ovy260_21bf3e0

	thumb_func_start ovy260_21bf418
ovy260_21bf418: ; 0x021BF418
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	add r1, sp, #0
	bl sub_021BF358
	add r4, r0, #0
	beq _021BF442
	ldr r0, _021BF448 ; =0x000006EC
	ldr r1, _021BF44C ; =0x021C18C4
	add r2, r4, #0
	bl ovy260_21bef58
	add r0, r5, #0
	add r1, r4, #0
	bl sub_021BF3D0
	add r1, r0, #0
	ldr r0, [sp]
	blx sub_020584CC
_021BF442:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021BF448: .word 0x000006EC
_021BF44C: .word 0x021C18C4
	thumb_func_end ovy260_21bf418

	thumb_func_start sub_021BF450
sub_021BF450: ; 0x021BF450
	mov r2, #0x13
	str r2, [r1]
	cmp r0, #0x17
	bhi _021BF4FC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021BF464: ; jump table
	.short _021BF494 - _021BF464 - 2 ; case 0
	.short _021BF49C - _021BF464 - 2 ; case 1
	.short _021BF4A0 - _021BF464 - 2 ; case 2
	.short _021BF4A4 - _021BF464 - 2 ; case 3
	.short _021BF4A8 - _021BF464 - 2 ; case 4
	.short _021BF4AC - _021BF464 - 2 ; case 5
	.short _021BF4B0 - _021BF464 - 2 ; case 6
	.short _021BF4B8 - _021BF464 - 2 ; case 7
	.short _021BF4BC - _021BF464 - 2 ; case 8
	.short _021BF4C0 - _021BF464 - 2 ; case 9
	.short _021BF4C4 - _021BF464 - 2 ; case 10
	.short _021BF4C8 - _021BF464 - 2 ; case 11
	.short _021BF4CC - _021BF464 - 2 ; case 12
	.short _021BF4D0 - _021BF464 - 2 ; case 13
	.short _021BF4D4 - _021BF464 - 2 ; case 14
	.short _021BF4D8 - _021BF464 - 2 ; case 15
	.short _021BF4DC - _021BF464 - 2 ; case 16
	.short _021BF4E0 - _021BF464 - 2 ; case 17
	.short _021BF4E4 - _021BF464 - 2 ; case 18
	.short _021BF4E8 - _021BF464 - 2 ; case 19
	.short _021BF4EC - _021BF464 - 2 ; case 20
	.short _021BF4F0 - _021BF464 - 2 ; case 21
	.short _021BF4F8 - _021BF464 - 2 ; case 22
	.short _021BF4F4 - _021BF464 - 2 ; case 23
_021BF494:
	mov r0, #0
	str r0, [r1]
	mov r0, #1
	bx lr
_021BF49C:
	mov r0, #2
	bx lr
_021BF4A0:
	mov r0, #3
	bx lr
_021BF4A4:
	mov r0, #4
	bx lr
_021BF4A8:
	mov r0, #5
	bx lr
_021BF4AC:
	mov r0, #6
	bx lr
_021BF4B0:
	mov r0, #9
	str r0, [r1]
	mov r0, #7
	bx lr
_021BF4B8:
	mov r0, #8
	bx lr
_021BF4BC:
	mov r0, #9
	bx lr
_021BF4C0:
	mov r0, #0xa
	bx lr
_021BF4C4:
	mov r0, #0xb
	bx lr
_021BF4C8:
	mov r0, #0xc
	bx lr
_021BF4CC:
	mov r0, #0xd
	bx lr
_021BF4D0:
	mov r0, #0xe
	bx lr
_021BF4D4:
	mov r0, #0xf
	bx lr
_021BF4D8:
	mov r0, #0x10
	bx lr
_021BF4DC:
	mov r0, #0x11
	bx lr
_021BF4E0:
	mov r0, #0x12
	bx lr
_021BF4E4:
	add r0, r2, #0
	bx lr
_021BF4E8:
	mov r0, #0x14
	bx lr
_021BF4EC:
	mov r0, #0x15
	bx lr
_021BF4F0:
	mov r0, #0x1e
	bx lr
_021BF4F4:
	mov r0, #0x20
	bx lr
_021BF4F8:
	mov r0, #0x16
	bx lr
_021BF4FC:
	mov r0, #0x16
	bx lr
	thumb_func_end sub_021BF450

	thumb_func_start sub_021BF500
sub_021BF500: ; 0x021BF500
	mov r2, #0x64
	mul r2, r0
	add r1, r1, r2
	ldr r0, _021BF510 ; =0xFFFF63C0
	add r1, #0x32
	sub r0, r0, r1
	bx lr
	nop
_021BF510: .word 0xFFFF63C0
	thumb_func_end sub_021BF500

	thumb_func_start ovy260_21bf514
ovy260_21bf514: ; 0x021BF514
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	add r1, sp, #0
	bl sub_021BF450
	add r4, r0, #0
	cmp r4, #1
	beq _021BF540
	ldr r0, _021BF544 ; =0x0000075B
	ldr r1, _021BF548 ; =0x021C18D8
	add r2, r4, #0
	bl ovy260_21bef58
	add r0, r5, #0
	add r1, r4, #0
	bl sub_021BF500
	add r1, r0, #0
	ldr r0, [sp]
	blx sub_020584CC
_021BF540:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021BF544: .word 0x0000075B
_021BF548: .word 0x021C18D8
	thumb_func_end ovy260_21bf514

	thumb_func_start sub_021BF54C
sub_021BF54C: ; 0x021BF54C
	ldr r1, _021BF55C ; =0x021C2454
	mov r2, #2
	str r2, [r1, #8]
	str r0, [r1, #0xc]
	mov r0, #0
	str r0, [r1, #0x10]
	bx lr
	nop
_021BF55C: .word 0x021C2454
	thumb_func_end sub_021BF54C

	thumb_func_start sub_021BF560
sub_021BF560: ; 0x021BF560
	ldr r0, _021BF574 ; =0x021C2454
	ldr r1, [r0, #0x14]
	cmp r1, #0
	bne _021BF56E
	mov r1, #1
	str r1, [r0, #0x14]
	bx lr
_021BF56E:
	mov r1, #0
	str r1, [r0, #0x14]
	bx lr
	.align 2, 0
_021BF574: .word 0x021C2454
	thumb_func_end sub_021BF560

	thumb_func_start ovy260_21bf578
ovy260_21bf578: ; 0x021BF578
	push {r3, r4, r5, lr}
	sub sp, #0x100
	cmp r0, #0
	beq _021BF5C4
	cmp r0, #1
	bne _021BF5C4
	ldr r5, _021BF618 ; =0x021C1DA8
	ldr r4, _021BF61C ; =0x021917BC
	ldr r2, _021BF620 ; =0x021C18F0
	add r0, r5, #0
	mov r1, #0x80
	add r3, r4, #0
	bl OS_SNPrintf
	add r0, r5, #0
	bl sub_021A1160
	add r5, sp, #0x80
	ldr r2, _021BF624 ; =0x021C1944
	add r0, r5, #0
	mov r1, #0x80
	add r3, r4, #0
	bl OS_SNPrintf
	add r0, r5, #0
	bl sub_021A1160
	add r5, sp, #0
	ldr r2, _021BF628 ; =0x021C198C
	add r0, r5, #0
	mov r1, #0x80
	add r3, r4, #0
	bl OS_SNPrintf
	add r0, r5, #0
	bl sub_021A1160
	b _021BF602
_021BF5C4:
	ldr r5, _021BF618 ; =0x021C1DA8
	ldr r4, _021BF61C ; =0x021917BC
	ldr r2, _021BF62C ; =0x021C19D8
	add r0, r5, #0
	mov r1, #0x80
	add r3, r4, #0
	bl OS_SNPrintf
	add r0, r5, #0
	bl sub_021A1160
	add r5, sp, #0x80
	ldr r2, _021BF630 ; =0x021C1A28
	add r0, r5, #0
	mov r1, #0x80
	add r3, r4, #0
	bl OS_SNPrintf
	add r0, r5, #0
	bl sub_021A1160
	add r5, sp, #0
	ldr r2, _021BF634 ; =0x021C1A70
	add r0, r5, #0
	mov r1, #0x80
	add r3, r4, #0
	bl OS_SNPrintf
	add r0, r5, #0
	bl sub_021A1160
_021BF602:
	ldr r4, _021BF638 ; =0x021C2454
	add r1, sp, #0x80
	ldr r0, [r4, #4]
	bl ovy260_21bc3ec
	ldr r0, [r4, #4]
	add r1, sp, #0
	bl ovy260_21bc364
	add sp, #0x100
	pop {r3, r4, r5, pc}
	.align 2, 0
_021BF618: .word 0x021C1DA8
_021BF61C: .word 0x021917BC
_021BF620: .word 0x021C18F0
_021BF624: .word 0x021C1944
_021BF628: .word 0x021C198C
_021BF62C: .word 0x021C19D8
_021BF630: .word 0x021C1A28
_021BF634: .word 0x021C1A70
_021BF638: .word 0x021C2454
	thumb_func_end ovy260_21bf578

	thumb_func_start ovy260_21bf63c
ovy260_21bf63c: ; 0x021BF63C
	push {r3, lr}
	ldr r0, _021BF664 ; =0x02190698
	ldr r0, [r0]
	cmp r0, #1
	bne _021BF65E
	ldr r0, _021BF668 ; =0x021C24DC
	mov r1, #0
	ldrsb r1, [r0, r1]
	cmp r1, #0
	bne _021BF65A
	ldr r2, _021BF66C ; =0x021C1AE4
	ldr r3, _021BF670 ; =0x0219069C
	mov r1, #0x80
	bl OS_SNPrintf
_021BF65A:
	mov r0, #1
	pop {r3, pc}
_021BF65E:
	mov r0, #0
	pop {r3, pc}
	nop
_021BF664: .word 0x02190698
_021BF668: .word 0x021C24DC
_021BF66C: .word 0x021C1AE4
_021BF670: .word 0x0219069C
	thumb_func_end ovy260_21bf63c

	thumb_func_start ovy260_21bf674
ovy260_21bf674: ; 0x021BF674
	push {r3, lr}
	ldr r0, _021BF6A8 ; =0x02190698
	ldr r0, [r0]
	cmp r0, #1
	bne _021BF696
	ldr r0, _021BF6AC ; =0x021C24DC
	mov r1, #0
	ldrsb r1, [r0, r1]
	cmp r1, #0
	bne _021BF692
	ldr r2, _021BF6B0 ; =0x021C1AE4
	ldr r3, _021BF6B4 ; =0x0219069C
	mov r1, #0x80
	bl OS_SNPrintf
_021BF692:
	ldr r0, _021BF6AC ; =0x021C24DC
	pop {r3, pc}
_021BF696:
	ldr r3, _021BF6B8 ; =0x021C1B2C
	mov r0, #0
	mov r1, #3
	mov r2, #1
	bl sub_0216CCA8
	mov r0, #0
	pop {r3, pc}
	nop
_021BF6A8: .word 0x02190698
_021BF6AC: .word 0x021C24DC
_021BF6B0: .word 0x021C1AE4
_021BF6B4: .word 0x0219069C
_021BF6B8: .word 0x021C1B2C
	thumb_func_end ovy260_21bf674

	thumb_func_start ovy260_21bf6bc
ovy260_21bf6bc: ; 0x021BF6BC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0xc
	add r7, r0, #0
	mov r6, #0x2d
	add r4, r2, #0
	str r3, [sp]
	mov r0, #0
	add r1, sp, #0x64
	str r0, [r1]
	add r5, sp, #0x5c
	mov r1, #0
	mov r2, #0
	mov r3, #0
	mov ip, r6
_021BF6DE:
	stmia r5!, {r0, r1, r2, r3}
	mov r6, ip
	sub r6, r6, #1
	stmia r5!, {r0, r1, r2, r3}
	mov ip, r6
	bne _021BF6DE
	str r0, [r5]
	cmp r7, #0
	bne _021BF794
	add r0, r4, #0
	bl sub_02170D18
	cmp r0, #0
	beq _021BF706
	ldr r1, _021BF7C4 ; =0x021C1BA8
	add r0, r4, #0
	bl sub_02170D28
	cmp r0, #0
	bne _021BF708
_021BF706:
	b _021BF756
_021BF708:
	ldr r1, _021BF7C8 ; =0x021C1B40
	add r0, r4, #0
	add r2, sp, #0x60
	bl sub_02171090
	cmp r0, #0
	bne _021BF718
	b _021BF756
_021BF718:
	ldr r0, [sp, #0x60]
	cmp r0, #0
	beq _021BF722
	mov r0, #7
	b _021BF79E
_021BF722:
	ldr r1, _021BF7CC ; =0x021C1B50
	add r0, r4, #0
	bl sub_02170DB8
	cmp r0, #0
	beq _021BF756
	add r0, sp, #0x64
	add r1, r4, #0
	bl ovy260_21bfb74
	cmp r0, #0
	beq _021BF756
	add r0, r4, #0
	bl sub_02170D70
	cmp r0, #0
	beq _021BF756
	add r0, r4, #0
	ldr r4, _021BF7D0 ; =0x000004E8
	ldr r1, _021BF7D4 ; =0x021C1B5C
	add r4, sp
	add r2, r4, #0
	bl sub_02171330
	cmp r0, #0
	bne _021BF75A
_021BF756:
	mov r0, #0x65
	b _021BF79E
_021BF75A:
	add r1, sp, #0x64
	mov r2, #0x41
	add r0, sp, #0x3e4
	add r1, #0x78
	lsl r2, r2, #2
	blx sub_02083964
	add r5, sp, #4
	add r0, r5, #0
	bl sub_021719FC
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0216DD04
	ldr r0, _021BF7D8 ; =0x000005EC
	add r1, r5, #0
	add r0, sp
	bl sub_02171A9C
	add r0, sp, #0x64
	bl ovy260_21bf8fc
	add r1, sp, #0x64
	str r0, [r1]
	cmp r0, #0
	bne _021BF7A0
	mov r0, #0x66
	b _021BF79E
_021BF794:
	cmp r7, #0x12
	bne _021BF79C
	mov r0, #0x6b
	b _021BF79E
_021BF79C:
	mov r0, #0x64
_021BF79E:
	str r0, [sp, #0x5c]
_021BF7A0:
	ldr r0, [sp]
	ldr r3, [r0]
	cmp r3, #0
	beq _021BF7B2
	ldr r2, [sp]
	add r0, r7, #0
	ldr r2, [r2, #4]
	add r1, sp, #0x5c
	blx r3
_021BF7B2:
	ldr r0, [sp]
	bl sub_0216DDFC
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0xc
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021BF7C4: .word 0x021C1BA8
_021BF7C8: .word 0x021C1B40
_021BF7CC: .word 0x021C1B50
_021BF7D0: .word 0x000004E8
_021BF7D4: .word 0x021C1B5C
_021BF7D8: .word 0x000005EC
	thumb_func_end ovy260_21bf6bc

	thumb_func_start ovy260_21bf7dc
ovy260_21bf7dc: ; 0x021BF7DC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	add r7, r1, #0
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl ovy260_21bf63c
	cmp r0, #0
	bne _021BF7F6
	add sp, #0xc
	mov r0, #0x6a
	pop {r4, r5, r6, r7, pc}
_021BF7F6:
	mov r0, #8
	bl sub_0216DDDC
	add r4, r0, #0
	bne _021BF806
	add sp, #0xc
	mov r0, #0x68
	pop {r4, r5, r6, r7, pc}
_021BF806:
	ldr r0, [sp, #0x20]
	mov r1, #1
	str r0, [r4]
	ldr r0, [sp, #0x24]
	str r0, [r4, #4]
	ldr r0, _021BF8CC ; =0x021C1AB8
	bl sub_0216FBF8
	add r5, r0, #0
	bne _021BF820
	add sp, #0xc
	mov r0, #0x68
	pop {r4, r5, r6, r7, pc}
_021BF820:
	ldr r1, _021BF8D0 ; =0x021C1B6C
	ldr r2, _021BF8D4 ; =0x021C1BC0
	bl sub_02170614
	cmp r0, #0
	beq _021BF894
	ldr r1, _021BF8D0 ; =0x021C1B6C
	ldr r2, _021BF8D8 ; =0x021C1B70
	add r0, r5, #0
	mov r3, #1
	bl sub_02170818
	cmp r0, #0
	beq _021BF894
	ldr r1, _021BF8D0 ; =0x021C1B6C
	ldr r2, _021BF8DC ; =0x021C1B78
	add r0, r5, #0
	add r3, r6, #0
	bl sub_02170818
	cmp r0, #0
	beq _021BF894
	ldr r1, _021BF8D0 ; =0x021C1B6C
	ldr r2, _021BF8E0 ; =0x021C1B84
	add r0, r5, #0
	add r3, r7, #0
	bl sub_02170818
	cmp r0, #0
	beq _021BF894
	ldr r1, _021BF8D0 ; =0x021C1B6C
	ldr r2, _021BF8E4 ; =0x021C1BD0
	ldr r3, [sp, #4]
	add r0, r5, #0
	bl sub_021706B8
	cmp r0, #0
	beq _021BF894
	ldr r1, _021BF8D0 ; =0x021C1B6C
	ldr r2, _021BF8E8 ; =0x021C1BDC
	ldr r3, [sp, #8]
	add r0, r5, #0
	bl sub_021706B8
	cmp r0, #0
	beq _021BF894
	ldr r1, _021BF8D0 ; =0x021C1B6C
	ldr r2, _021BF8D4 ; =0x021C1BC0
	add r0, r5, #0
	bl sub_02170660
	cmp r0, #0
	beq _021BF894
	add r0, r5, #0
	bl sub_0216FEA8
	cmp r0, #0
	bne _021BF8A0
_021BF894:
	add r0, r5, #0
	bl sub_0216FE64
	add sp, #0xc
	mov r0, #0x68
	pop {r4, r5, r6, r7, pc}
_021BF8A0:
	ldr r0, _021BF8EC ; =0x021C24DC
	ldr r1, _021BF8F0 ; =0x021C1BE8
	ldr r3, _021BF8F4 ; =ovy260_21bf6bc
	add r2, r5, #0
	str r4, [sp]
	bl sub_0216EA4C
	cmp r0, #0
	bne _021BF8C4
	add r0, r5, #0
	bl sub_0216FE64
	add r0, r4, #0
	bl sub_0216DDFC
	add sp, #0xc
	mov r0, #0x68
	pop {r4, r5, r6, r7, pc}
_021BF8C4:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021BF8CC: .word 0x021C1AB8
_021BF8D0: .word 0x021C1B6C
_021BF8D4: .word 0x021C1BC0
_021BF8D8: .word 0x021C1B70
_021BF8DC: .word 0x021C1B78
_021BF8E0: .word 0x021C1B84
_021BF8E4: .word 0x021C1BD0
_021BF8E8: .word 0x021C1BDC
_021BF8EC: .word 0x021C24DC
_021BF8F0: .word 0x021C1BE8
_021BF8F4: .word ovy260_21bf6bc
	thumb_func_end ovy260_21bf7dc

	thumb_func_start sub_021BF8F8
sub_021BF8F8: ; 0x021BF8F8
	bx lr
	.align 2, 0
	thumb_func_end sub_021BF8F8

	thumb_func_start ovy260_21bf8fc
ovy260_21bf8fc: ; 0x021BF8FC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x7c
	add r7, sp, #0x18
	add r5, r0, #0
	add r0, r7, #0
	bl sub_021719FC
	ldr r0, [r5, #4]
	bl sub_021BF8F8
	add r4, sp, #4
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #4
	bl sub_02171A24
	ldr r0, [r5, #8]
	bl sub_021BF8F8
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #4
	bl sub_02171A24
	ldr r0, [r5, #0xc]
	bl sub_021BF8F8
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #4
	bl sub_02171A24
	ldr r0, [r5, #0x10]
	bl sub_021BF8F8
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #4
	bl sub_02171A24
	ldr r0, [r5, #0x14]
	bl sub_021BF8F8
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #4
	bl sub_02171A24
	ldr r0, [r5, #0x18]
	bl sub_021BF8F8
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #4
	bl sub_02171A24
	ldr r0, [r5, #0x1c]
	bl sub_021BF8F8
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #4
	bl sub_02171A24
	add r0, r5, #0
	add r0, #0x20
	blx sub_02085D9C
	add r1, r5, #0
	add r2, r0, #0
	add r0, r7, #0
	add r1, #0x20
	bl sub_02171A24
	add r0, r5, #0
	add r0, #0x3f
	blx sub_02085D9C
	add r1, r5, #0
	add r2, r0, #0
	add r0, r7, #0
	add r1, #0x3f
	bl sub_02171A24
	add r0, r5, #0
	add r0, #0x54
	blx sub_02085D9C
	add r1, r5, #0
	add r2, r0, #0
	add r0, r7, #0
	add r1, #0x54
	bl sub_02171A24
	add r0, r5, #0
	add r0, #0x78
	add r1, r7, #0
	bl sub_0216DD04
	mov r0, #0x5f
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, r7, #0
	bl sub_0216DD04
	mov r4, #3
	lsl r4, r4, #8
	add r0, r7, #0
	add r1, r5, r4
	mov r2, #0x80
	mov r6, #0x80
	bl sub_02171A24
	add r0, sp, #8
	add r1, r7, #0
	bl sub_02171A9C
	add r7, sp, #0x70
	ldr r1, _021BFA2C ; =0x021BFD40
	add r0, r7, #0
	bl sub_0216DC38
	ldr r1, _021BFA30 ; =0x021BFD38
	add r0, sp, #0x174
	bl sub_0216DC38
	sub r4, #0x80
	add r0, r7, #0
	add r1, sp, #8
	mov r2, #0x10
	add r3, r5, r4
	str r6, [sp]
	bl sub_0216CAC0
	cmp r0, #0
	bne _021BFA24
	add sp, #0x1fc
	add sp, #0x7c
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021BFA24:
	mov r0, #0
	add sp, #0x1fc
	add sp, #0x7c
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BFA2C: .word 0x021BFD40
_021BFA30: .word 0x021BFD38
	thumb_func_end ovy260_21bf8fc

	thumb_func_start ovy260_21bfa34
ovy260_21bfa34: ; 0x021BFA34
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	ldr r2, _021BFB3C ; =0x021C1C28
	ldr r3, [r5, #4]
	add r0, r6, #0
	add r4, r1, #0
	bl sub_02170818
	cmp r0, #0
	beq _021BFB34
	ldr r2, _021BFB40 ; =0x021C1B70
	ldr r3, [r5, #8]
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02170818
	cmp r0, #0
	beq _021BFB34
	ldr r2, _021BFB44 ; =0x021C1B78
	ldr r3, [r5, #0xc]
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02170818
	cmp r0, #0
	beq _021BFB34
	ldr r2, _021BFB48 ; =0x021C1B84
	ldr r3, [r5, #0x10]
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02170818
	cmp r0, #0
	beq _021BFB34
	ldr r2, _021BFB4C ; =0x021C1C30
	ldr r3, [r5, #0x14]
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02170818
	cmp r0, #0
	beq _021BFB34
	ldr r2, _021BFB50 ; =0x021C1C38
	ldr r3, [r5, #0x18]
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02170818
	cmp r0, #0
	beq _021BFB34
	ldr r2, _021BFB54 ; =0x021C1C44
	ldr r3, [r5, #0x1c]
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02170818
	cmp r0, #0
	beq _021BFB34
	add r3, r5, #0
	ldr r2, _021BFB58 ; =0x021C1B90
	add r0, r6, #0
	add r1, r4, #0
	add r3, #0x20
	bl sub_0217071C
	cmp r0, #0
	beq _021BFB34
	add r3, r5, #0
	ldr r2, _021BFB5C ; =0x021C1B9C
	add r0, r6, #0
	add r1, r4, #0
	add r3, #0x3f
	bl sub_0217071C
	cmp r0, #0
	beq _021BFB34
	add r3, r5, #0
	ldr r2, _021BFB60 ; =0x021C1C50
	add r0, r6, #0
	add r1, r4, #0
	add r3, #0x54
	bl sub_0217071C
	cmp r0, #0
	beq _021BFB34
	add r3, r5, #0
	ldr r2, _021BFB64 ; =0x021C1C5C
	add r0, r6, #0
	add r1, r4, #0
	add r3, #0x78
	bl sub_02170A80
	cmp r0, #0
	beq _021BFB34
	mov r3, #0x5f
	lsl r3, r3, #2
	ldr r2, _021BFB68 ; =0x021C1C6C
	add r0, r6, #0
	add r1, r4, #0
	add r3, r5, r3
	bl sub_02170A80
	cmp r0, #0
	beq _021BFB34
	mov r7, #3
	mov r0, #0x80
	lsl r7, r7, #8
	str r0, [sp]
	ldr r2, _021BFB6C ; =0x021C1C7C
	add r0, r6, #0
	add r1, r4, #0
	add r3, r5, r7
	bl sub_0217090C
	cmp r0, #0
	beq _021BFB34
	mov r0, #0x80
	sub r7, #0x80
	str r0, [sp]
	ldr r2, _021BFB70 ; =0x021C1C88
	add r0, r6, #0
	add r1, r4, #0
	add r3, r5, r7
	bl sub_0217090C
	cmp r0, #0
	bne _021BFB38
_021BFB34:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021BFB38:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BFB3C: .word 0x021C1C28
_021BFB40: .word 0x021C1B70
_021BFB44: .word 0x021C1B78
_021BFB48: .word 0x021C1B84
_021BFB4C: .word 0x021C1C30
_021BFB50: .word 0x021C1C38
_021BFB54: .word 0x021C1C44
_021BFB58: .word 0x021C1B90
_021BFB5C: .word 0x021C1B9C
_021BFB60: .word 0x021C1C50
_021BFB64: .word 0x021C1C5C
_021BFB68: .word 0x021C1C6C
_021BFB6C: .word 0x021C1C7C
_021BFB70: .word 0x021C1C88
	thumb_func_end ovy260_21bfa34

	thumb_func_start ovy260_21bfb74
ovy260_21bfb74: ; 0x021BFB74
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10c
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, _021BFCA0 ; =0x021C1C28
	add r0, r4, #0
	add r2, r5, #4
	bl sub_02171090
	cmp r0, #0
	bne _021BFB8C
	b _021BFC92
_021BFB8C:
	add r2, r5, #0
	ldr r1, _021BFCA4 ; =0x021C1B70
	add r0, r4, #0
	add r2, #8
	bl sub_02171090
	cmp r0, #0
	beq _021BFC92
	add r2, r5, #0
	ldr r1, _021BFCA8 ; =0x021C1B78
	add r0, r4, #0
	add r2, #0xc
	bl sub_02171090
	cmp r0, #0
	beq _021BFC92
	add r2, r5, #0
	ldr r1, _021BFCAC ; =0x021C1B84
	add r0, r4, #0
	add r2, #0x10
	bl sub_02171090
	cmp r0, #0
	beq _021BFC92
	add r2, r5, #0
	ldr r1, _021BFCB0 ; =0x021C1C30
	add r0, r4, #0
	add r2, #0x14
	bl sub_02171090
	cmp r0, #0
	beq _021BFC92
	add r2, r5, #0
	ldr r1, _021BFCB4 ; =0x021C1C38
	add r0, r4, #0
	add r2, #0x18
	bl sub_02171090
	cmp r0, #0
	beq _021BFC92
	add r2, r5, #0
	ldr r1, _021BFCB8 ; =0x021C1C44
	add r0, r4, #0
	add r2, #0x1c
	bl sub_02171090
	cmp r0, #0
	beq _021BFC92
	add r2, r5, #0
	ldr r1, _021BFCBC ; =0x021C1B90
	add r0, r4, #0
	add r2, #0x20
	mov r3, #0x1f
	bl sub_02170E90
	cmp r0, #0
	beq _021BFC92
	add r2, r5, #0
	ldr r1, _021BFCC0 ; =0x021C1B9C
	add r0, r4, #0
	add r2, #0x3f
	mov r3, #0x15
	bl sub_02170E90
	cmp r0, #0
	beq _021BFC92
	add r2, r5, #0
	ldr r1, _021BFCC4 ; =0x021C1C50
	add r0, r4, #0
	add r2, #0x54
	mov r3, #0x21
	mov r6, #0x21
	bl sub_02170E90
	cmp r0, #0
	beq _021BFC92
	add r7, sp, #8
	add r6, #0xe0
	ldr r1, _021BFCC8 ; =0x021C1C5C
	add r0, r4, #0
	add r2, r7, #0
	add r3, r6, #0
	bl sub_02170E90
	cmp r0, #0
	beq _021BFC92
	add r0, r5, #0
	add r0, #0x78
	add r1, r7, #0
	bl sub_0216DC38
	cmp r0, #0
	beq _021BFC92
	ldr r1, _021BFCCC ; =0x021C1C6C
	add r0, r4, #0
	add r2, r7, #0
	add r3, r6, #0
	bl sub_02170E90
	cmp r0, #0
	beq _021BFC92
	mov r0, #0x5f
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, r7, #0
	bl sub_0216DC38
	cmp r0, #0
	beq _021BFC92
	mov r6, #3
	lsl r6, r6, #8
	add r7, sp, #4
	ldr r1, _021BFCD0 ; =0x021C1C7C
	add r0, r4, #0
	add r2, r5, r6
	mov r3, #0x80
	str r7, [sp]
	bl sub_02170ED8
	cmp r0, #0
	beq _021BFC92
	sub r6, #0x80
	ldr r1, _021BFCD4 ; =0x021C1C88
	add r0, r4, #0
	add r2, r5, r6
	mov r3, #0x80
	str r7, [sp]
	bl sub_02170ED8
	cmp r0, #0
	bne _021BFC98
_021BFC92:
	add sp, #0x10c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021BFC98:
	mov r0, #1
	add sp, #0x10c
	pop {r4, r5, r6, r7, pc}
	nop
_021BFCA0: .word 0x021C1C28
_021BFCA4: .word 0x021C1B70
_021BFCA8: .word 0x021C1B78
_021BFCAC: .word 0x021C1B84
_021BFCB0: .word 0x021C1C30
_021BFCB4: .word 0x021C1C38
_021BFCB8: .word 0x021C1C44
_021BFCBC: .word 0x021C1B90
_021BFCC0: .word 0x021C1B9C
_021BFCC4: .word 0x021C1C50
_021BFCC8: .word 0x021C1C5C
_021BFCCC: .word 0x021C1C6C
_021BFCD0: .word 0x021C1C7C
_021BFCD4: .word 0x021C1C88
	thumb_func_end ovy260_21bfb74
_021BFCD8:
	.byte 0x81, 0x2F, 0x1B, 0x02, 0x29, 0x30, 0x1B, 0x02
	.byte 0xE1, 0x2F, 0x1B, 0x02, 0x65, 0x30, 0x1B, 0x02, 0x39, 0x32, 0x1B, 0x02, 0xAD, 0x31, 0x1B, 0x02
	.byte 0xDD, 0x57, 0x1B, 0x02, 0xB5, 0x59, 0x1B, 0x02, 0x15, 0x59, 0x1B, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0xD9, 0xA1, 0x1B, 0x02, 0x00, 0x00, 0x00, 0x00, 0x15, 0xA2, 0x1B, 0x02, 0x55, 0xA2, 0x1B, 0x02
	.byte 0x85, 0xA2, 0x1B, 0x02, 0x00, 0x00, 0x00, 0x00, 0xAD, 0xA2, 0x1B, 0x02, 0x55, 0xA2, 0x1B, 0x02
	.byte 0xD5, 0xA2, 0x1B, 0x02, 0x55, 0xA2, 0x1B, 0x02, 0xFD, 0xA2, 0x1B, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x29, 0xA3, 0x1B, 0x02, 0x55, 0xA2, 0x1B, 0x02, 0x30, 0x31, 0x30, 0x30, 0x30, 0x31, 0x00, 0x00
	.byte 0x42, 0x46, 0x30, 0x35, 0x44, 0x36, 0x33, 0x45, 0x39, 0x33, 0x37, 0x35, 0x31, 0x41, 0x44, 0x34
	.byte 0x41, 0x35, 0x39, 0x41, 0x34, 0x41, 0x37, 0x33, 0x38, 0x39, 0x43, 0x46, 0x30, 0x42, 0x45, 0x38
	.byte 0x41, 0x32, 0x32, 0x43, 0x43, 0x44, 0x45, 0x45, 0x41, 0x31, 0x45, 0x37, 0x46, 0x31, 0x32, 0x43
	.byte 0x30, 0x36, 0x32, 0x44, 0x36, 0x45, 0x31, 0x39, 0x34, 0x34, 0x37, 0x32, 0x45, 0x46, 0x44, 0x41
	.byte 0x35, 0x31, 0x38, 0x34, 0x43, 0x43, 0x45, 0x43, 0x45, 0x42, 0x34, 0x46, 0x42, 0x41, 0x44, 0x46
	.byte 0x35, 0x45, 0x42, 0x31, 0x44, 0x37, 0x41, 0x42, 0x46, 0x45, 0x39, 0x31, 0x31, 0x38, 0x31, 0x34
	.byte 0x35, 0x33, 0x39, 0x37, 0x32, 0x41, 0x41, 0x39, 0x37, 0x31, 0x46, 0x36, 0x32, 0x34, 0x41, 0x46
	.byte 0x39, 0x42, 0x41, 0x38, 0x46, 0x30, 0x46, 0x38, 0x32, 0x45, 0x32, 0x38, 0x36, 0x39, 0x46, 0x42
	.byte 0x37, 0x44, 0x34, 0x34, 0x42, 0x44, 0x45, 0x38, 0x44, 0x35, 0x36, 0x45, 0x45, 0x35, 0x30, 0x39
	.byte 0x37, 0x37, 0x38, 0x39, 0x38, 0x46, 0x33, 0x46, 0x45, 0x45, 0x37, 0x35, 0x38, 0x36, 0x39, 0x36
	.byte 0x32, 0x32, 0x43, 0x34, 0x39, 0x38, 0x31, 0x46, 0x30, 0x37, 0x35, 0x30, 0x36, 0x32, 0x34, 0x38
	.byte 0x42, 0x44, 0x33, 0x44, 0x30, 0x39, 0x32, 0x45, 0x38, 0x45, 0x41, 0x30, 0x35, 0x43, 0x31, 0x32
	.byte 0x42, 0x32, 0x46, 0x41, 0x33, 0x37, 0x38, 0x38, 0x31, 0x31, 0x37, 0x36, 0x30, 0x38, 0x34, 0x43
	.byte 0x38, 0x46, 0x38, 0x42, 0x38, 0x37, 0x35, 0x36, 0x43, 0x34, 0x37, 0x32, 0x32, 0x43, 0x44, 0x43
	.byte 0x35, 0x37, 0x44, 0x32, 0x41, 0x44, 0x32, 0x38, 0x41, 0x43, 0x44, 0x33, 0x41, 0x44, 0x38, 0x35
	.byte 0x39, 0x33, 0x34, 0x46, 0x42, 0x34, 0x38, 0x44, 0x36, 0x42, 0x32, 0x44, 0x32, 0x30, 0x32, 0x37
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00
	.byte 0x76, 0x65, 0x72, 0x00, 0x64, 0x69, 0x73, 0x00, 0x54, 0xFF, 0x1B, 0x02, 0x40, 0xFF, 0x1B, 0x02
	.byte 0xD4, 0xFE, 0x1B, 0x02, 0x30, 0xFF, 0x1B, 0x02, 0xE0, 0xFE, 0x1B, 0x02, 0x00, 0xFF, 0x1B, 0x02
	.byte 0xF0, 0xFE, 0x1B, 0x02, 0x10, 0xFF, 0x1B, 0x02, 0x20, 0xFF, 0x1B, 0x02, 0xC4, 0xFE, 0x1B, 0x02
	.byte 0xD0, 0xFE, 0x1B, 0x02, 0xCC, 0xFE, 0x1B, 0x02, 0xC8, 0xFE, 0x1B, 0x02, 0xC0, 0xFE, 0x1B, 0x02
	.byte 0x74, 0xFE, 0x1B, 0x02, 0xBC, 0xFE, 0x1B, 0x02, 0x70, 0xFE, 0x1B, 0x02, 0x63, 0x6E, 0x74, 0x00
	.byte 0x63, 0x75, 0x70, 0x00, 0x6D, 0x6F, 0x64, 0x00, 0x72, 0x61, 0x74, 0x00, 0x64, 0x65, 0x62, 0x00
	.byte 0x72, 0x75, 0x6C, 0x00, 0x72, 0x65, 0x63, 0x6F, 0x72, 0x64, 0x69, 0x64, 0x00, 0x00, 0x00, 0x00
	.byte 0x52, 0x45, 0x43, 0x4F, 0x52, 0x44, 0x5F, 0x44, 0x41, 0x54, 0x41, 0x5F, 0x30, 0x32, 0x00, 0x00
	.byte 0x52, 0x45, 0x43, 0x4F, 0x52, 0x44, 0x5F, 0x44, 0x41, 0x54, 0x41, 0x5F, 0x30, 0x34, 0x00, 0x00
	.byte 0x52, 0x45, 0x43, 0x4F, 0x52, 0x44, 0x5F, 0x44, 0x41, 0x54, 0x41, 0x5F, 0x30, 0x33, 0x00, 0x00
	.byte 0x52, 0x45, 0x43, 0x4F, 0x52, 0x44, 0x5F, 0x44, 0x41, 0x54, 0x41, 0x5F, 0x30, 0x35, 0x00, 0x00
	.byte 0x52, 0x45, 0x43, 0x4F, 0x52, 0x44, 0x5F, 0x44, 0x41, 0x54, 0x41, 0x5F, 0x30, 0x36, 0x00, 0x00
	.byte 0x52, 0x45, 0x43, 0x4F, 0x52, 0x44, 0x5F, 0x44, 0x41, 0x54, 0x41, 0x5F, 0x30, 0x31, 0x00, 0x00
	.byte 0x4C, 0x41, 0x53, 0x54, 0x5F, 0x4C, 0x4F, 0x47, 0x49, 0x4E, 0x5F, 0x44, 0x41, 0x54, 0x45, 0x54
	.byte 0x49, 0x4D, 0x45, 0x00, 0x57, 0x49, 0x46, 0x49, 0x43, 0x55, 0x50, 0x5F, 0x50, 0x4F, 0x4B, 0x45
	.byte 0x4D, 0x4F, 0x4E, 0x5F, 0x50, 0x41, 0x52, 0x54, 0x59, 0x00, 0x00, 0x00, 0x77, 0x69, 0x66, 0x69
	.byte 0x62, 0x61, 0x74, 0x74, 0x6C, 0x65, 0x6D, 0x61, 0x74, 0x63, 0x68, 0x5F, 0x6E, 0x65, 0x74, 0x2E
	.byte 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00, 0x6D, 0x6F, 0x64, 0x3D
	.byte 0x25, 0x64, 0x20, 0x41, 0x6E, 0x64, 0x20, 0x72, 0x75, 0x6C, 0x3D, 0x25, 0x64, 0x20, 0x41, 0x6E
	.byte 0x64, 0x20, 0x64, 0x65, 0x62, 0x3D, 0x25, 0x64, 0x00, 0x00, 0x00, 0x00, 0x83, 0x6F, 0x83, 0x67
	.byte 0x83, 0x8B, 0x8C, 0x8B, 0x89, 0xCA, 0x95, 0x73, 0x90, 0xB3, 0x92, 0x6C, 0x20, 0x25, 0x64, 0x0A
	.byte 0x00, 0x00, 0x00, 0x00, 0x70, 0x5F, 0x77, 0x6B, 0x2D, 0x3E, 0x74, 0x61, 0x62, 0x6C, 0x65, 0x5F
	.byte 0x6E, 0x61, 0x6D, 0x65, 0x5F, 0x6E, 0x75, 0x6D, 0x20, 0x3C, 0x20, 0x57, 0x42, 0x4D, 0x5F, 0x47
	.byte 0x44, 0x42, 0x5F, 0x46, 0x49, 0x45, 0x4C, 0x44, 0x5F, 0x54, 0x41, 0x42, 0x4C, 0x45, 0x5F, 0x4D
	.byte 0x41, 0x58, 0x00, 0x00, 0x50, 0x6C, 0x61, 0x79, 0x65, 0x72, 0x53, 0x74, 0x61, 0x74, 0x73, 0x5F
	.byte 0x76, 0x31, 0x00, 0x00, 0x4D, 0x59, 0x53, 0x54, 0x41, 0x54, 0x55, 0x53, 0x00, 0x00, 0x00, 0x00
	.byte 0x4C, 0x41, 0x53, 0x54, 0x5F, 0x4C, 0x4F, 0x47, 0x49, 0x4E, 0x5F, 0x44, 0x41, 0x54, 0x45, 0x54
	.byte 0x49, 0x4D, 0x45, 0x00, 0x49, 0x4E, 0x49, 0x54, 0x49, 0x41, 0x4C, 0x5F, 0x50, 0x52, 0x4F, 0x46
	.byte 0x49, 0x4C, 0x45, 0x5F, 0x49, 0x44, 0x00, 0x00, 0x4E, 0x4F, 0x57, 0x5F, 0x50, 0x52, 0x4F, 0x46
	.byte 0x49, 0x4C, 0x45, 0x5F, 0x49, 0x44, 0x00, 0x00, 0x72, 0x65, 0x63, 0x6F, 0x72, 0x64, 0x69, 0x64
	.byte 0x00, 0x00, 0x00, 0x00, 0x52, 0x45, 0x43, 0x4F, 0x52, 0x44, 0x5F, 0x53, 0x41, 0x56, 0x45, 0x5F
	.byte 0x49, 0x44, 0x58, 0x00, 0x57, 0x49, 0x46, 0x49, 0x43, 0x55, 0x50, 0x5F, 0x50, 0x4F, 0x4B, 0x45
	.byte 0x4D, 0x4F, 0x4E, 0x5F, 0x50, 0x41, 0x52, 0x54, 0x59, 0x00, 0x00, 0x00, 0x70, 0x5F, 0x77, 0x6B
	.byte 0x2D, 0x3E, 0x70, 0x5F, 0x64, 0x61, 0x74, 0x61, 0x2D, 0x3E, 0x73, 0x61, 0x6B, 0x65, 0x5F, 0x72
	.byte 0x65, 0x63, 0x6F, 0x72, 0x64, 0x49, 0x44, 0x20, 0x21, 0x3D, 0x20, 0x30, 0x00, 0x00, 0x00, 0x00
	.byte 0x25, 0x64, 0x00, 0x00, 0x49, 0x52, 0x41, 0x4F, 0x00, 0x00, 0x00, 0x00, 0x57, 0x58, 0x39, 0x78
	.byte 0x37, 0x5A, 0x68, 0x36, 0x4A, 0x33, 0x61, 0x42, 0x43, 0x34, 0x7A, 0x51, 0x00, 0x00, 0x00, 0x00
	.byte 0x52, 0x45, 0x47, 0x43, 0x41, 0x52, 0x44, 0x5F, 0x45, 0x00, 0x00, 0x00, 0x70, 0x5F, 0x77, 0x6B
	.byte 0x2D, 0x3E, 0x70, 0x5F, 0x6E, 0x68, 0x74, 0x74, 0x70, 0x20, 0x3D, 0x3D, 0x20, 0x4E, 0x55, 0x4C
	.byte 0x4C, 0x00, 0x00, 0x00, 0x72, 0x65, 0x63, 0x6F, 0x72, 0x64, 0x69, 0x64, 0x00, 0x00, 0x00, 0x00
	.byte 0x43, 0x48, 0x45, 0x41, 0x54, 0x53, 0x5F, 0x43, 0x4F, 0x55, 0x4E, 0x54, 0x45, 0x52, 0x00, 0x00
	.byte 0x52, 0x45, 0x43, 0x4F, 0x52, 0x44, 0x5F, 0x53, 0x41, 0x56, 0x45, 0x5F, 0x49, 0x44, 0x58, 0x00
	.byte 0x44, 0x49, 0x53, 0x43, 0x4F, 0x4E, 0x4E, 0x45, 0x43, 0x54, 0x53, 0x5F, 0x43, 0x4F, 0x55, 0x4E
	.byte 0x54, 0x45, 0x52, 0x00, 0x57, 0x49, 0x46, 0x49, 0x43, 0x55, 0x50, 0x5F, 0x50, 0x4F, 0x4B, 0x45
	.byte 0x4D, 0x4F, 0x4E, 0x5F, 0x50, 0x41, 0x52, 0x54, 0x59, 0x00, 0x00, 0x00, 0x43, 0x48, 0x45, 0x41
	.byte 0x54, 0x53, 0x5F, 0x57, 0x49, 0x46, 0x49, 0x43, 0x55, 0x50, 0x5F, 0x43, 0x4F, 0x55, 0x4E, 0x54
	.byte 0x45, 0x52, 0x00, 0x00, 0x4E, 0x55, 0x4D, 0x5F, 0x53, 0x49, 0x4E, 0x47, 0x4C, 0x45, 0x5F, 0x57
	.byte 0x49, 0x4E, 0x5F, 0x43, 0x4F, 0x55, 0x4E, 0x54, 0x45, 0x52, 0x00, 0x00, 0x4E, 0x55, 0x4D, 0x5F
	.byte 0x54, 0x52, 0x49, 0x50, 0x4C, 0x45, 0x5F, 0x57, 0x49, 0x4E, 0x5F, 0x43, 0x4F, 0x55, 0x4E, 0x54
	.byte 0x45, 0x52, 0x00, 0x00, 0x4E, 0x55, 0x4D, 0x5F, 0x44, 0x4F, 0x55, 0x42, 0x4C, 0x45, 0x5F, 0x57
	.byte 0x49, 0x4E, 0x5F, 0x43, 0x4F, 0x55, 0x4E, 0x54, 0x45, 0x52, 0x00, 0x00, 0x4E, 0x55, 0x4D, 0x5F
	.byte 0x52, 0x4F, 0x54, 0x41, 0x54, 0x45, 0x5F, 0x57, 0x49, 0x4E, 0x5F, 0x43, 0x4F, 0x55, 0x4E, 0x54
	.byte 0x45, 0x52, 0x00, 0x00, 0x4E, 0x55, 0x4D, 0x5F, 0x57, 0x49, 0x46, 0x49, 0x43, 0x55, 0x50, 0x5F
	.byte 0x57, 0x49, 0x4E, 0x5F, 0x43, 0x4F, 0x55, 0x4E, 0x54, 0x45, 0x52, 0x00, 0x4E, 0x55, 0x4D, 0x5F
	.byte 0x54, 0x52, 0x49, 0x50, 0x4C, 0x45, 0x5F, 0x4C, 0x4F, 0x53, 0x45, 0x5F, 0x43, 0x4F, 0x55, 0x4E
	.byte 0x54, 0x45, 0x52, 0x00, 0x4E, 0x55, 0x4D, 0x5F, 0x53, 0x48, 0x4F, 0x4F, 0x54, 0x45, 0x52, 0x5F
	.byte 0x57, 0x49, 0x4E, 0x5F, 0x43, 0x4F, 0x55, 0x4E, 0x54, 0x45, 0x52, 0x00, 0x4E, 0x55, 0x4D, 0x5F
	.byte 0x44, 0x4F, 0x55, 0x42, 0x4C, 0x45, 0x5F, 0x4C, 0x4F, 0x53, 0x45, 0x5F, 0x43, 0x4F, 0x55, 0x4E
	.byte 0x54, 0x45, 0x52, 0x00, 0x4E, 0x55, 0x4D, 0x5F, 0x52, 0x4F, 0x54, 0x41, 0x54, 0x45, 0x5F, 0x4C
	.byte 0x4F, 0x53, 0x45, 0x5F, 0x43, 0x4F, 0x55, 0x4E, 0x54, 0x45, 0x52, 0x00, 0x4E, 0x55, 0x4D, 0x5F
	.byte 0x53, 0x49, 0x4E, 0x47, 0x4C, 0x45, 0x5F, 0x4C, 0x4F, 0x53, 0x45, 0x5F, 0x43, 0x4F, 0x55, 0x4E
	.byte 0x54, 0x45, 0x52, 0x00, 0x4E, 0x55, 0x4D, 0x5F, 0x53, 0x48, 0x4F, 0x4F, 0x54, 0x45, 0x52, 0x5F
	.byte 0x4C, 0x4F, 0x53, 0x45, 0x5F, 0x43, 0x4F, 0x55, 0x4E, 0x54, 0x45, 0x52, 0x00, 0x00, 0x00, 0x00
	.byte 0x43, 0x4F, 0x4D, 0x50, 0x4C, 0x45, 0x54, 0x45, 0x5F, 0x4D, 0x41, 0x54, 0x43, 0x48, 0x45, 0x53
	.byte 0x5F, 0x43, 0x4F, 0x55, 0x4E, 0x54, 0x45, 0x52, 0x00, 0x00, 0x00, 0x00, 0x4E, 0x55, 0x4D, 0x5F
	.byte 0x57, 0x49, 0x46, 0x49, 0x43, 0x55, 0x50, 0x5F, 0x4C, 0x4F, 0x53, 0x45, 0x5F, 0x43, 0x4F, 0x55
	.byte 0x4E, 0x54, 0x45, 0x52, 0x00, 0x00, 0x00, 0x00, 0x41, 0x52, 0x45, 0x4E, 0x41, 0x5F, 0x45, 0x4C
	.byte 0x4F, 0x5F, 0x52, 0x41, 0x54, 0x49, 0x4E, 0x47, 0x5F, 0x31, 0x56, 0x31, 0x5F, 0x44, 0x4F, 0x55
	.byte 0x42, 0x4C, 0x45, 0x00, 0x41, 0x52, 0x45, 0x4E, 0x41, 0x5F, 0x45, 0x4C, 0x4F, 0x5F, 0x52, 0x41
	.byte 0x54, 0x49, 0x4E, 0x47, 0x5F, 0x31, 0x56, 0x31, 0x5F, 0x52, 0x4F, 0x54, 0x41, 0x54, 0x45, 0x00
	.byte 0x41, 0x52, 0x45, 0x4E, 0x41, 0x5F, 0x45, 0x4C, 0x4F, 0x5F, 0x52, 0x41, 0x54, 0x49, 0x4E, 0x47
	.byte 0x5F, 0x31, 0x56, 0x31, 0x5F, 0x53, 0x49, 0x4E, 0x47, 0x4C, 0x45, 0x00, 0x41, 0x52, 0x45, 0x4E
	.byte 0x41, 0x5F, 0x45, 0x4C, 0x4F, 0x5F, 0x52, 0x41, 0x54, 0x49, 0x4E, 0x47, 0x5F, 0x31, 0x56, 0x31
	.byte 0x5F, 0x54, 0x52, 0x49, 0x50, 0x4C, 0x45, 0x00, 0x44, 0x49, 0x53, 0x43, 0x4F, 0x4E, 0x4E, 0x45
	.byte 0x43, 0x54, 0x53, 0x5F, 0x57, 0x49, 0x46, 0x49, 0x43, 0x55, 0x50, 0x5F, 0x43, 0x4F, 0x55, 0x4E
	.byte 0x54, 0x45, 0x52, 0x00, 0x41, 0x52, 0x45, 0x4E, 0x41, 0x5F, 0x45, 0x4C, 0x4F, 0x5F, 0x52, 0x41
	.byte 0x54, 0x49, 0x4E, 0x47, 0x5F, 0x31, 0x56, 0x31, 0x5F, 0x53, 0x48, 0x4F, 0x4F, 0x54, 0x45, 0x52
	.byte 0x00, 0x00, 0x00, 0x00, 0x41, 0x52, 0x45, 0x4E, 0x41, 0x5F, 0x45, 0x4C, 0x4F, 0x5F, 0x52, 0x41
	.byte 0x54, 0x49, 0x4E, 0x47, 0x5F, 0x31, 0x56, 0x31, 0x5F, 0x57, 0x49, 0x46, 0x49, 0x43, 0x55, 0x50
	.byte 0x00, 0x00, 0x00, 0x00, 0x44, 0x03, 0x1C, 0x02, 0x3C, 0x01, 0x1C, 0x02, 0x08, 0x03, 0x1C, 0x02
	.byte 0x7C, 0x02, 0x1C, 0x02, 0xB4, 0x01, 0x1C, 0x02, 0x00, 0x01, 0x1C, 0x02, 0xE4, 0x00, 0x1C, 0x02
	.byte 0x24, 0x01, 0x1C, 0x02, 0x98, 0x02, 0x1C, 0x02, 0xB4, 0x02, 0x1C, 0x02, 0x24, 0x03, 0x1C, 0x02
	.byte 0xD0, 0x02, 0x1C, 0x02, 0xEC, 0x02, 0x1C, 0x02, 0x44, 0x03, 0x1C, 0x02, 0xF0, 0x00, 0x1C, 0x02
	.byte 0x60, 0x02, 0x1C, 0x02, 0x10, 0x01, 0x1C, 0x02, 0xFC, 0x01, 0x1C, 0x02, 0x84, 0x01, 0x1C, 0x02
	.byte 0x14, 0x02, 0x1C, 0x02, 0x9C, 0x01, 0x1C, 0x02, 0x44, 0x02, 0x1C, 0x02, 0xE4, 0x01, 0x1C, 0x02
	.byte 0x2C, 0x02, 0x1C, 0x02, 0x54, 0x01, 0x1C, 0x02, 0xCC, 0x01, 0x1C, 0x02, 0x6C, 0x01, 0x1C, 0x02
	.byte 0x00, 0x01, 0x1C, 0x02, 0xE4, 0x00, 0x1C, 0x02, 0x00, 0x00, 0x00, 0x00, 0x41, 0x52, 0x45, 0x4E
	.byte 0x41, 0x5F, 0x41, 0x44, 0x56, 0x41, 0x4E, 0x43, 0x45, 0x44, 0x5F, 0x4D, 0x4F, 0x44, 0x49, 0x46
	.byte 0x49, 0x45, 0x52, 0x00, 0x41, 0x52, 0x45, 0x4E, 0x41, 0x5F, 0x45, 0x4C, 0x4F, 0x5F, 0x52, 0x41
	.byte 0x54, 0x49, 0x4E, 0x47, 0x5F, 0x31, 0x56, 0x31, 0x5F, 0x44, 0x4F, 0x55, 0x42, 0x4C, 0x45, 0x00
	.byte 0x41, 0x52, 0x45, 0x4E, 0x41, 0x5F, 0x45, 0x4C, 0x4F, 0x5F, 0x52, 0x41, 0x54, 0x49, 0x4E, 0x47
	.byte 0x5F, 0x31, 0x56, 0x31, 0x5F, 0x52, 0x4F, 0x54, 0x41, 0x54, 0x45, 0x00, 0x41, 0x52, 0x45, 0x4E
	.byte 0x41, 0x5F, 0x45, 0x4C, 0x4F, 0x5F, 0x52, 0x41, 0x54, 0x49, 0x4E, 0x47, 0x5F, 0x31, 0x56, 0x31
	.byte 0x5F, 0x53, 0x48, 0x4F, 0x4F, 0x54, 0x45, 0x52, 0x00, 0x00, 0x00, 0x00, 0x41, 0x52, 0x45, 0x4E
	.byte 0x41, 0x5F, 0x45, 0x4C, 0x4F, 0x5F, 0x52, 0x41, 0x54, 0x49, 0x4E, 0x47, 0x5F, 0x31, 0x56, 0x31
	.byte 0x5F, 0x53, 0x49, 0x4E, 0x47, 0x4C, 0x45, 0x00, 0x41, 0x52, 0x45, 0x4E, 0x41, 0x5F, 0x45, 0x4C
	.byte 0x4F, 0x5F, 0x52, 0x41, 0x54, 0x49, 0x4E, 0x47, 0x5F, 0x31, 0x56, 0x31, 0x5F, 0x54, 0x52, 0x49
	.byte 0x50, 0x4C, 0x45, 0x00, 0x41, 0x52, 0x45, 0x4E, 0x41, 0x5F, 0x45, 0x4C, 0x4F, 0x5F, 0x52, 0x41
	.byte 0x54, 0x49, 0x4E, 0x47, 0x5F, 0x31, 0x56, 0x31, 0x5F, 0x57, 0x49, 0x46, 0x49, 0x43, 0x55, 0x50
	.byte 0x00, 0x00, 0x00, 0x00, 0x41, 0x52, 0x45, 0x4E, 0x41, 0x5F, 0x45, 0x4C, 0x4F, 0x5F, 0x52, 0x41
	.byte 0x54, 0x49, 0x4E, 0x47, 0x5F, 0x4D, 0x41, 0x58, 0x49, 0x4D, 0x55, 0x4D, 0x5F, 0x53, 0x54, 0x41
	.byte 0x54, 0x00, 0x00, 0x00, 0x41, 0x52, 0x45, 0x4E, 0x41, 0x5F, 0x45, 0x4C, 0x4F, 0x5F, 0x52, 0x41
	.byte 0x54, 0x49, 0x4E, 0x47, 0x5F, 0x4D, 0x49, 0x4E, 0x49, 0x4D, 0x55, 0x4D, 0x5F, 0x53, 0x54, 0x41
	.byte 0x54, 0x00, 0x00, 0x00, 0x41, 0x52, 0x45, 0x4E, 0x41, 0x5F, 0x46, 0x4C, 0x4F, 0x4F, 0x52, 0x5F
	.byte 0x4D, 0x4F, 0x44, 0x49, 0x46, 0x49, 0x45, 0x52, 0x00, 0x00, 0x00, 0x00, 0x41, 0x52, 0x45, 0x4E
	.byte 0x41, 0x5F, 0x49, 0x4E, 0x49, 0x54, 0x49, 0x41, 0x4C, 0x5F, 0x52, 0x41, 0x54, 0x49, 0x4E, 0x47
	.byte 0x00, 0x00, 0x00, 0x00, 0x41, 0x52, 0x45, 0x4E, 0x41, 0x5F, 0x49, 0x4E, 0x54, 0x45, 0x52, 0x4D
	.byte 0x45, 0x44, 0x5F, 0x4D, 0x4F, 0x44, 0x49, 0x46, 0x49, 0x45, 0x52, 0x00, 0x41, 0x52, 0x45, 0x4E
	.byte 0x41, 0x5F, 0x4D, 0x41, 0x53, 0x54, 0x45, 0x52, 0x5F, 0x4D, 0x4F, 0x44, 0x49, 0x46, 0x49, 0x45
	.byte 0x52, 0x00, 0x00, 0x00, 0x41, 0x52, 0x45, 0x4E, 0x41, 0x5F, 0x52, 0x41, 0x54, 0x49, 0x4E, 0x47
	.byte 0x5F, 0x44, 0x49, 0x46, 0x46, 0x5F, 0x48, 0x49, 0x47, 0x48, 0x00, 0x00, 0x41, 0x52, 0x45, 0x4E
	.byte 0x41, 0x5F, 0x52, 0x41, 0x54, 0x49, 0x4E, 0x47, 0x5F, 0x44, 0x49, 0x46, 0x46, 0x5F, 0x4C, 0x4F
	.byte 0x57, 0x00, 0x00, 0x00, 0x41, 0x52, 0x45, 0x4E, 0x41, 0x5F, 0x53, 0x43, 0x4F, 0x52, 0x45, 0x5F
	.byte 0x57, 0x45, 0x49, 0x47, 0x48, 0x54, 0x5F, 0x4E, 0x4F, 0x52, 0x4D, 0x41, 0x4C, 0x00, 0x00, 0x00
	.byte 0x43, 0x48, 0x45, 0x41, 0x54, 0x53, 0x5F, 0x43, 0x4F, 0x55, 0x4E, 0x54, 0x45, 0x52, 0x00, 0x00
	.byte 0x43, 0x48, 0x45, 0x41, 0x54, 0x53, 0x5F, 0x57, 0x49, 0x46, 0x49, 0x43, 0x55, 0x50, 0x5F, 0x43
	.byte 0x4F, 0x55, 0x4E, 0x54, 0x45, 0x52, 0x00, 0x00, 0x43, 0x4F, 0x4D, 0x50, 0x4C, 0x45, 0x54, 0x45
	.byte 0x5F, 0x4D, 0x41, 0x54, 0x43, 0x48, 0x45, 0x53, 0x5F, 0x43, 0x4F, 0x55, 0x4E, 0x54, 0x45, 0x52
	.byte 0x00, 0x00, 0x00, 0x00, 0x44, 0x49, 0x53, 0x43, 0x4F, 0x4E, 0x4E, 0x45, 0x43, 0x54, 0x53, 0x5F
	.byte 0x43, 0x4F, 0x55, 0x4E, 0x54, 0x45, 0x52, 0x00, 0x44, 0x49, 0x53, 0x43, 0x4F, 0x4E, 0x4E, 0x45
	.byte 0x43, 0x54, 0x53, 0x5F, 0x57, 0x49, 0x46, 0x49, 0x43, 0x55, 0x50, 0x5F, 0x43, 0x4F, 0x55, 0x4E
	.byte 0x54, 0x45, 0x52, 0x00, 0x4E, 0x55, 0x4D, 0x5F, 0x44, 0x4F, 0x55, 0x42, 0x4C, 0x45, 0x5F, 0x4C
	.byte 0x4F, 0x53, 0x45, 0x5F, 0x43, 0x4F, 0x55, 0x4E, 0x54, 0x45, 0x52, 0x00, 0x4E, 0x55, 0x4D, 0x5F
	.byte 0x44, 0x4F, 0x55, 0x42, 0x4C, 0x45, 0x5F, 0x57, 0x49, 0x4E, 0x5F, 0x43, 0x4F, 0x55, 0x4E, 0x54
	.byte 0x45, 0x52, 0x00, 0x00, 0x4E, 0x55, 0x4D, 0x5F, 0x52, 0x4F, 0x54, 0x41, 0x54, 0x45, 0x5F, 0x4C
	.byte 0x4F, 0x53, 0x45, 0x5F, 0x43, 0x4F, 0x55, 0x4E, 0x54, 0x45, 0x52, 0x00, 0x4E, 0x55, 0x4D, 0x5F
	.byte 0x52, 0x4F, 0x54, 0x41, 0x54, 0x45, 0x5F, 0x57, 0x49, 0x4E, 0x5F, 0x43, 0x4F, 0x55, 0x4E, 0x54
	.byte 0x45, 0x52, 0x00, 0x00, 0x4E, 0x55, 0x4D, 0x5F, 0x53, 0x48, 0x4F, 0x4F, 0x54, 0x45, 0x52, 0x5F
	.byte 0x4C, 0x4F, 0x53, 0x45, 0x5F, 0x43, 0x4F, 0x55, 0x4E, 0x54, 0x45, 0x52, 0x00, 0x00, 0x00, 0x00
	.byte 0x4E, 0x55, 0x4D, 0x5F, 0x53, 0x48, 0x4F, 0x4F, 0x54, 0x45, 0x52, 0x5F, 0x57, 0x49, 0x4E, 0x5F
	.byte 0x43, 0x4F, 0x55, 0x4E, 0x54, 0x45, 0x52, 0x00, 0x4E, 0x55, 0x4D, 0x5F, 0x53, 0x49, 0x4E, 0x47
	.byte 0x4C, 0x45, 0x5F, 0x4C, 0x4F, 0x53, 0x45, 0x5F, 0x43, 0x4F, 0x55, 0x4E, 0x54, 0x45, 0x52, 0x00
	.byte 0x4E, 0x55, 0x4D, 0x5F, 0x53, 0x49, 0x4E, 0x47, 0x4C, 0x45, 0x5F, 0x57, 0x49, 0x4E, 0x5F, 0x43
	.byte 0x4F, 0x55, 0x4E, 0x54, 0x45, 0x52, 0x00, 0x00, 0x4E, 0x55, 0x4D, 0x5F, 0x54, 0x52, 0x49, 0x50
	.byte 0x4C, 0x45, 0x5F, 0x4C, 0x4F, 0x53, 0x45, 0x5F, 0x43, 0x4F, 0x55, 0x4E, 0x54, 0x45, 0x52, 0x00
	.byte 0x4E, 0x55, 0x4D, 0x5F, 0x54, 0x52, 0x49, 0x50, 0x4C, 0x45, 0x5F, 0x57, 0x49, 0x4E, 0x5F, 0x43
	.byte 0x4F, 0x55, 0x4E, 0x54, 0x45, 0x52, 0x00, 0x00, 0x4E, 0x55, 0x4D, 0x5F, 0x57, 0x49, 0x46, 0x49
	.byte 0x43, 0x55, 0x50, 0x5F, 0x4C, 0x4F, 0x53, 0x45, 0x5F, 0x43, 0x4F, 0x55, 0x4E, 0x54, 0x45, 0x52
	.byte 0x00, 0x00, 0x00, 0x00, 0x4E, 0x55, 0x4D, 0x5F, 0x57, 0x49, 0x46, 0x49, 0x43, 0x55, 0x50, 0x5F
	.byte 0x57, 0x49, 0x4E, 0x5F, 0x43, 0x4F, 0x55, 0x4E, 0x54, 0x45, 0x52, 0x00, 0x4E, 0x55, 0x4D, 0x5F
	.byte 0x57, 0x49, 0x4E, 0x4C, 0x4F, 0x53, 0x45, 0x5F, 0x43, 0x4F, 0x55, 0x4E, 0x54, 0x45, 0x52, 0x5F
	.byte 0x4D, 0x49, 0x4E, 0x49, 0x4D, 0x55, 0x4D, 0x5F, 0x53, 0x54, 0x41, 0x54, 0x00, 0x00, 0x00, 0x00
	.byte 0x25, 0x73, 0x3F, 0x66, 0x69, 0x6C, 0x65, 0x69, 0x64, 0x3D, 0x25, 0x64, 0x26, 0x67, 0x61, 0x6D
	.byte 0x65, 0x69, 0x64, 0x3D, 0x25, 0x64, 0x26, 0x70, 0x69, 0x64, 0x3D, 0x25, 0x64, 0x00, 0x00, 0x00
	.byte 0x68, 0x74, 0x74, 0x70, 0x3A, 0x2F, 0x2F, 0x25, 0x73, 0x2E, 0x73, 0x61, 0x6B, 0x65, 0x2E, 0x67
	.byte 0x61, 0x6D, 0x65, 0x73, 0x70, 0x79, 0x2E, 0x63, 0x6F, 0x6D, 0x2F, 0x53, 0x61, 0x6B, 0x65, 0x46
	.byte 0x69, 0x6C, 0x65, 0x53, 0x65, 0x72, 0x76, 0x65, 0x72, 0x2F, 0x64, 0x6F, 0x77, 0x6E, 0x6C, 0x6F
	.byte 0x61, 0x64, 0x2E, 0x61, 0x73, 0x70, 0x78, 0x3F, 0x66, 0x69, 0x6C, 0x65, 0x69, 0x64, 0x3D, 0x25
	.byte 0x64, 0x26, 0x67, 0x61, 0x6D, 0x65, 0x69, 0x64, 0x3D, 0x25, 0x64, 0x26, 0x70, 0x69, 0x64, 0x3D
	.byte 0x25, 0x64, 0x00, 0x00, 0x25, 0x73, 0x3F, 0x67, 0x61, 0x6D, 0x65, 0x69, 0x64, 0x3D, 0x25, 0x64
	.byte 0x26, 0x70, 0x69, 0x64, 0x3D, 0x25, 0x64, 0x00, 0x68, 0x74, 0x74, 0x70, 0x3A, 0x2F, 0x2F, 0x25
	.byte 0x73, 0x2E, 0x73, 0x61, 0x6B, 0x65, 0x2E, 0x67, 0x61, 0x6D, 0x65, 0x73, 0x70, 0x79, 0x2E, 0x63
	.byte 0x6F, 0x6D, 0x2F, 0x53, 0x61, 0x6B, 0x65, 0x46, 0x69, 0x6C, 0x65, 0x53, 0x65, 0x72, 0x76, 0x65
	.byte 0x72, 0x2F, 0x75, 0x70, 0x6C, 0x6F, 0x61, 0x64, 0x2E, 0x61, 0x73, 0x70, 0x78, 0x3F, 0x67, 0x61
	.byte 0x6D, 0x65, 0x69, 0x64, 0x3D, 0x25, 0x64, 0x26, 0x70, 0x69, 0x64, 0x3D, 0x25, 0x64, 0x00, 0x00
	.byte 0x24, 0x08, 0x1C, 0x02, 0x6E, 0x73, 0x31, 0x3D, 0x22, 0x68, 0x74, 0x74, 0x70, 0x3A, 0x2F, 0x2F
	.byte 0x67, 0x61, 0x6D, 0x65, 0x73, 0x70, 0x79, 0x2E, 0x6E, 0x65, 0x74, 0x2F, 0x73, 0x61, 0x6B, 0x65
	.byte 0x22, 0x00, 0x00, 0x00, 0x53, 0x75, 0x63, 0x63, 0x65, 0x73, 0x73, 0x00, 0x53, 0x65, 0x63, 0x72
	.byte 0x65, 0x74, 0x4B, 0x65, 0x79, 0x49, 0x6E, 0x76, 0x61, 0x6C, 0x69, 0x64, 0x00, 0x00, 0x00, 0x00
	.byte 0x53, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x44, 0x69, 0x73, 0x61, 0x62, 0x6C, 0x65, 0x64, 0x00
	.byte 0x44, 0x61, 0x74, 0x61, 0x62, 0x61, 0x73, 0x65, 0x55, 0x6E, 0x61, 0x76, 0x61, 0x69, 0x6C, 0x61
	.byte 0x62, 0x6C, 0x65, 0x00, 0x4C, 0x6F, 0x67, 0x69, 0x6E, 0x54, 0x69, 0x63, 0x6B, 0x65, 0x74, 0x49
	.byte 0x6E, 0x76, 0x61, 0x6C, 0x69, 0x64, 0x00, 0x00, 0x4C, 0x6F, 0x67, 0x69, 0x6E, 0x54, 0x69, 0x63
	.byte 0x6B, 0x65, 0x74, 0x45, 0x78, 0x70, 0x69, 0x72, 0x65, 0x64, 0x00, 0x00, 0x54, 0x61, 0x62, 0x6C
	.byte 0x65, 0x4E, 0x6F, 0x74, 0x46, 0x6F, 0x75, 0x6E, 0x64, 0x00, 0x00, 0x00, 0x52, 0x65, 0x63, 0x6F
	.byte 0x72, 0x64, 0x4E, 0x6F, 0x74, 0x46, 0x6F, 0x75, 0x6E, 0x64, 0x00, 0x00, 0x46, 0x69, 0x65, 0x6C
	.byte 0x64, 0x4E, 0x6F, 0x74, 0x46, 0x6F, 0x75, 0x6E, 0x64, 0x00, 0x00, 0x00, 0x46, 0x69, 0x65, 0x6C
	.byte 0x64, 0x54, 0x79, 0x70, 0x65, 0x49, 0x6E, 0x76, 0x61, 0x6C, 0x69, 0x64, 0x00, 0x00, 0x00, 0x00
	.byte 0x4E, 0x6F, 0x50, 0x65, 0x72, 0x6D, 0x69, 0x73, 0x73, 0x69, 0x6F, 0x6E, 0x00, 0x00, 0x00, 0x00
	.byte 0x52, 0x65, 0x63, 0x6F, 0x72, 0x64, 0x4C, 0x69, 0x6D, 0x69, 0x74, 0x52, 0x65, 0x61, 0x63, 0x68
	.byte 0x65, 0x64, 0x00, 0x00, 0x41, 0x6C, 0x72, 0x65, 0x61, 0x64, 0x79, 0x52, 0x61, 0x74, 0x65, 0x64
	.byte 0x00, 0x00, 0x00, 0x00, 0x4E, 0x6F, 0x74, 0x52, 0x61, 0x74, 0x65, 0x61, 0x62, 0x6C, 0x65, 0x00
	.byte 0x4E, 0x6F, 0x74, 0x4F, 0x77, 0x6E, 0x65, 0x64, 0x00, 0x00, 0x00, 0x00, 0x46, 0x69, 0x6C, 0x74
	.byte 0x65, 0x72, 0x49, 0x6E, 0x76, 0x61, 0x6C, 0x69, 0x64, 0x00, 0x00, 0x00, 0x53, 0x6F, 0x72, 0x74
	.byte 0x49, 0x6E, 0x76, 0x61, 0x6C, 0x69, 0x64, 0x00, 0x54, 0x61, 0x72, 0x67, 0x65, 0x74, 0x46, 0x69
	.byte 0x6C, 0x74, 0x65, 0x72, 0x49, 0x6E, 0x76, 0x61, 0x6C, 0x69, 0x64, 0x00, 0x6E, 0x73, 0x31, 0x00
	.byte 0x67, 0x61, 0x6D, 0x65, 0x69, 0x64, 0x00, 0x00, 0x73, 0x65, 0x63, 0x72, 0x65, 0x74, 0x4B, 0x65
	.byte 0x79, 0x00, 0x00, 0x00, 0x6C, 0x6F, 0x67, 0x69, 0x6E, 0x54, 0x69, 0x63, 0x6B, 0x65, 0x74, 0x00
	.byte 0x68, 0x74, 0x74, 0x70, 0x3A, 0x2F, 0x2F, 0x25, 0x73, 0x2E, 0x73, 0x61, 0x6B, 0x65, 0x2E, 0x67
	.byte 0x73, 0x2E, 0x6E, 0x69, 0x6E, 0x74, 0x65, 0x6E, 0x64, 0x6F, 0x77, 0x69, 0x66, 0x69, 0x2E, 0x6E
	.byte 0x65, 0x74, 0x2F, 0x53, 0x61, 0x6B, 0x65, 0x53, 0x74, 0x6F, 0x72, 0x61, 0x67, 0x65, 0x53, 0x65
	.byte 0x72, 0x76, 0x65, 0x72, 0x2F, 0x53, 0x74, 0x6F, 0x72, 0x61, 0x67, 0x65, 0x53, 0x65, 0x72, 0x76
	.byte 0x65, 0x72, 0x2E, 0x61, 0x73, 0x6D, 0x78, 0x00, 0x44, 0x65, 0x6C, 0x65, 0x74, 0x65, 0x52, 0x65
	.byte 0x63, 0x6F, 0x72, 0x64, 0x00, 0x00, 0x00, 0x00, 0x43, 0x72, 0x65, 0x61, 0x74, 0x65, 0x52, 0x65
	.byte 0x63, 0x6F, 0x72, 0x64, 0x00, 0x00, 0x00, 0x00, 0x55, 0x70, 0x64, 0x61, 0x74, 0x65, 0x52, 0x65
	.byte 0x63, 0x6F, 0x72, 0x64, 0x00, 0x00, 0x00, 0x00, 0x55, 0x70, 0x64, 0x61, 0x74, 0x65, 0x52, 0x65
	.byte 0x63, 0x6F, 0x72, 0x64, 0x52, 0x65, 0x73, 0x75, 0x6C, 0x74, 0x00, 0x00, 0x44, 0x65, 0x6C, 0x65
	.byte 0x74, 0x65, 0x52, 0x65, 0x63, 0x6F, 0x72, 0x64, 0x52, 0x65, 0x73, 0x75, 0x6C, 0x74, 0x00, 0x00
	.byte 0x43, 0x72, 0x65, 0x61, 0x74, 0x65, 0x52, 0x65, 0x63, 0x6F, 0x72, 0x64, 0x52, 0x65, 0x73, 0x75
	.byte 0x6C, 0x74, 0x00, 0x00, 0x44, 0x65, 0x6C, 0x65, 0x74, 0x65, 0x52, 0x65, 0x63, 0x6F, 0x72, 0x64
	.byte 0x52, 0x65, 0x73, 0x70, 0x6F, 0x6E, 0x73, 0x65, 0x00, 0x00, 0x00, 0x00, 0x43, 0x72, 0x65, 0x61
	.byte 0x74, 0x65, 0x52, 0x65, 0x63, 0x6F, 0x72, 0x64, 0x52, 0x65, 0x73, 0x70, 0x6F, 0x6E, 0x73, 0x65
	.byte 0x00, 0x00, 0x00, 0x00, 0x55, 0x70, 0x64, 0x61, 0x74, 0x65, 0x52, 0x65, 0x63, 0x6F, 0x72, 0x64
	.byte 0x52, 0x65, 0x73, 0x70, 0x6F, 0x6E, 0x73, 0x65, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xF8, 0x09, 0x1C, 0x02, 0x38, 0x0B, 0x1C, 0x02, 0x74, 0x0A, 0x1C, 0x02, 0x08, 0x0A, 0x1C, 0x02
	.byte 0x51, 0xCB, 0x1B, 0x02, 0x79, 0xCB, 0x1B, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0xE8, 0x09, 0x1C, 0x02, 0x04, 0x0B, 0x1C, 0x02
	.byte 0x5C, 0x0A, 0x1C, 0x02, 0x30, 0x0A, 0x1C, 0x02, 0xCD, 0xCA, 0x1B, 0x02, 0xF9, 0xCA, 0x1B, 0x02
	.byte 0x21, 0xCB, 0x1B, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xD8, 0x09, 0x1C, 0x02, 0x6C, 0x0B, 0x1C, 0x02, 0x44, 0x0A, 0x1C, 0x02, 0x1C, 0x0A, 0x1C, 0x02
	.byte 0xC5, 0xCB, 0x1B, 0x02, 0xD5, 0xCB, 0x1B, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x53, 0x4F, 0x41, 0x50, 0x41, 0x63, 0x74, 0x69, 0x6F, 0x6E, 0x3A, 0x20
	.byte 0x22, 0x68, 0x74, 0x74, 0x70, 0x3A, 0x2F, 0x2F, 0x67, 0x61, 0x6D, 0x65, 0x73, 0x70, 0x79, 0x2E
	.byte 0x6E, 0x65, 0x74, 0x2F, 0x73, 0x61, 0x6B, 0x65, 0x2F, 0x43, 0x72, 0x65, 0x61, 0x74, 0x65, 0x52
	.byte 0x65, 0x63, 0x6F, 0x72, 0x64, 0x22, 0x00, 0x00, 0x53, 0x4F, 0x41, 0x50, 0x41, 0x63, 0x74, 0x69
	.byte 0x6F, 0x6E, 0x3A, 0x20, 0x22, 0x68, 0x74, 0x74, 0x70, 0x3A, 0x2F, 0x2F, 0x67, 0x61, 0x6D, 0x65
	.byte 0x73, 0x70, 0x79, 0x2E, 0x6E, 0x65, 0x74, 0x2F, 0x73, 0x61, 0x6B, 0x65, 0x2F, 0x55, 0x70, 0x64
	.byte 0x61, 0x74, 0x65, 0x52, 0x65, 0x63, 0x6F, 0x72, 0x64, 0x22, 0x00, 0x00, 0x53, 0x4F, 0x41, 0x50
	.byte 0x41, 0x63, 0x74, 0x69, 0x6F, 0x6E, 0x3A, 0x20, 0x22, 0x68, 0x74, 0x74, 0x70, 0x3A, 0x2F, 0x2F
	.byte 0x67, 0x61, 0x6D, 0x65, 0x73, 0x70, 0x79, 0x2E, 0x6E, 0x65, 0x74, 0x2F, 0x73, 0x61, 0x6B, 0x65
	.byte 0x2F, 0x44, 0x65, 0x6C, 0x65, 0x74, 0x65, 0x52, 0x65, 0x63, 0x6F, 0x72, 0x64, 0x22, 0x00, 0x00
	.byte 0x6E, 0x73, 0x31, 0x00, 0x76, 0x61, 0x6C, 0x75, 0x65, 0x73, 0x00, 0x00, 0x52, 0x65, 0x63, 0x6F
	.byte 0x72, 0x64, 0x46, 0x69, 0x65, 0x6C, 0x64, 0x00, 0x6E, 0x61, 0x6D, 0x65, 0x00, 0x00, 0x00, 0x00
	.byte 0x76, 0x61, 0x6C, 0x75, 0x65, 0x00, 0x00, 0x00, 0x62, 0x79, 0x74, 0x65, 0x56, 0x61, 0x6C, 0x75
	.byte 0x65, 0x00, 0x00, 0x00, 0x73, 0x68, 0x6F, 0x72, 0x74, 0x56, 0x61, 0x6C, 0x75, 0x65, 0x00, 0x00
	.byte 0x69, 0x6E, 0x74, 0x56, 0x61, 0x6C, 0x75, 0x65, 0x00, 0x00, 0x00, 0x00, 0x69, 0x6E, 0x74, 0x36
	.byte 0x34, 0x56, 0x61, 0x6C, 0x75, 0x65, 0x00, 0x00, 0x66, 0x6C, 0x6F, 0x61, 0x74, 0x56, 0x61, 0x6C
	.byte 0x75, 0x65, 0x00, 0x00, 0x61, 0x73, 0x63, 0x69, 0x69, 0x53, 0x74, 0x72, 0x69, 0x6E, 0x67, 0x56
	.byte 0x61, 0x6C, 0x75, 0x65, 0x00, 0x00, 0x00, 0x00, 0x75, 0x6E, 0x69, 0x63, 0x6F, 0x64, 0x65, 0x53
	.byte 0x74, 0x72, 0x69, 0x6E, 0x67, 0x56, 0x61, 0x6C, 0x75, 0x65, 0x00, 0x00, 0x62, 0x6F, 0x6F, 0x6C
	.byte 0x65, 0x61, 0x6E, 0x56, 0x61, 0x6C, 0x75, 0x65, 0x00, 0x00, 0x00, 0x00, 0x64, 0x61, 0x74, 0x65
	.byte 0x41, 0x6E, 0x64, 0x54, 0x69, 0x6D, 0x65, 0x56, 0x61, 0x6C, 0x75, 0x65, 0x00, 0x00, 0x00, 0x00
	.byte 0x62, 0x69, 0x6E, 0x61, 0x72, 0x79, 0x44, 0x61, 0x74, 0x61, 0x56, 0x61, 0x6C, 0x75, 0x65, 0x00
	.byte 0x74, 0x61, 0x62, 0x6C, 0x65, 0x69, 0x64, 0x00, 0x72, 0x65, 0x63, 0x6F, 0x72, 0x64, 0x69, 0x64
	.byte 0x00, 0x00, 0x00, 0x00, 0x47, 0x65, 0x74, 0x4D, 0x79, 0x52, 0x65, 0x63, 0x6F, 0x72, 0x64, 0x73
	.byte 0x00, 0x00, 0x00, 0x00, 0x53, 0x65, 0x61, 0x72, 0x63, 0x68, 0x46, 0x6F, 0x72, 0x52, 0x65, 0x63
	.byte 0x6F, 0x72, 0x64, 0x73, 0x00, 0x00, 0x00, 0x00, 0x47, 0x65, 0x74, 0x52, 0x61, 0x6E, 0x64, 0x6F
	.byte 0x6D, 0x52, 0x65, 0x63, 0x6F, 0x72, 0x64, 0x73, 0x00, 0x00, 0x00, 0x00, 0x47, 0x65, 0x74, 0x53
	.byte 0x70, 0x65, 0x63, 0x69, 0x66, 0x69, 0x63, 0x52, 0x65, 0x63, 0x6F, 0x72, 0x64, 0x73, 0x00, 0x00
	.byte 0x47, 0x65, 0x74, 0x4D, 0x79, 0x52, 0x65, 0x63, 0x6F, 0x72, 0x64, 0x73, 0x52, 0x65, 0x73, 0x75
	.byte 0x6C, 0x74, 0x00, 0x00, 0x47, 0x65, 0x74, 0x4D, 0x79, 0x52, 0x65, 0x63, 0x6F, 0x72, 0x64, 0x73
	.byte 0x52, 0x65, 0x73, 0x70, 0x6F, 0x6E, 0x73, 0x65, 0x00, 0x00, 0x00, 0x00, 0x47, 0x65, 0x74, 0x52
	.byte 0x61, 0x6E, 0x64, 0x6F, 0x6D, 0x52, 0x65, 0x63, 0x6F, 0x72, 0x64, 0x73, 0x52, 0x65, 0x73, 0x75
	.byte 0x6C, 0x74, 0x00, 0x00, 0x53, 0x65, 0x61, 0x72, 0x63, 0x68, 0x46, 0x6F, 0x72, 0x52, 0x65, 0x63
	.byte 0x6F, 0x72, 0x64, 0x73, 0x52, 0x65, 0x73, 0x75, 0x6C, 0x74, 0x00, 0x00, 0x47, 0x65, 0x74, 0x52
	.byte 0x61, 0x6E, 0x64, 0x6F, 0x6D, 0x52, 0x65, 0x63, 0x6F, 0x72, 0x64, 0x73, 0x52, 0x65, 0x73, 0x70
	.byte 0x6F, 0x6E, 0x73, 0x65, 0x00, 0x00, 0x00, 0x00, 0x47, 0x65, 0x74, 0x53, 0x70, 0x65, 0x63, 0x69
	.byte 0x66, 0x69, 0x63, 0x52, 0x65, 0x63, 0x6F, 0x72, 0x64, 0x73, 0x52, 0x65, 0x73, 0x75, 0x6C, 0x74
	.byte 0x00, 0x00, 0x00, 0x00, 0x53, 0x65, 0x61, 0x72, 0x63, 0x68, 0x46, 0x6F, 0x72, 0x52, 0x65, 0x63
	.byte 0x6F, 0x72, 0x64, 0x73, 0x52, 0x65, 0x73, 0x70, 0x6F, 0x6E, 0x73, 0x65, 0x00, 0x00, 0x00, 0x00
	.byte 0x47, 0x65, 0x74, 0x53, 0x70, 0x65, 0x63, 0x69, 0x66, 0x69, 0x63, 0x52, 0x65, 0x63, 0x6F, 0x72
	.byte 0x64, 0x73, 0x52, 0x65, 0x73, 0x70, 0x6F, 0x6E, 0x73, 0x65, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0xAC, 0x0C, 0x1C, 0x02, 0xD0, 0x0E, 0x1C, 0x02, 0x70, 0x0D, 0x1C, 0x02, 0x38, 0x0D, 0x1C, 0x02
	.byte 0xCD, 0xD2, 0x1B, 0x02, 0x09, 0xD3, 0x1B, 0x02, 0x3D, 0xD3, 0x1B, 0x02, 0x51, 0xD3, 0x1B, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x74, 0x0C, 0x1C, 0x02, 0x2C, 0x0E, 0x1C, 0x02
	.byte 0xD4, 0x0C, 0x1C, 0x02, 0xC0, 0x0C, 0x1C, 0x02, 0x45, 0xD2, 0x1B, 0x02, 0x6D, 0xD2, 0x1B, 0x02
	.byte 0x95, 0xD2, 0x1B, 0x02, 0xA9, 0xD2, 0x1B, 0x02, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x98, 0x0C, 0x1C, 0x02, 0x98, 0x0E, 0x1C, 0x02, 0x1C, 0x0D, 0x1C, 0x02, 0xEC, 0x0C, 0x1C, 0x02
	.byte 0x75, 0xD3, 0x1B, 0x02, 0x9D, 0xD3, 0x1B, 0x02, 0xED, 0xD3, 0x1B, 0x02, 0x29, 0xD4, 0x1B, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x84, 0x0C, 0x1C, 0x02, 0x60, 0x0E, 0x1C, 0x02
	.byte 0x54, 0x0D, 0x1C, 0x02, 0x04, 0x0D, 0x1C, 0x02, 0x2D, 0xD1, 0x1B, 0x02, 0x69, 0xD1, 0x1B, 0x02
	.byte 0x1D, 0xD2, 0x1B, 0x02, 0x31, 0xD2, 0x1B, 0x02, 0x00, 0x00, 0x00, 0x00, 0x53, 0x4F, 0x41, 0x50
	.byte 0x41, 0x63, 0x74, 0x69, 0x6F, 0x6E, 0x3A, 0x20, 0x22, 0x68, 0x74, 0x74, 0x70, 0x3A, 0x2F, 0x2F
	.byte 0x67, 0x61, 0x6D, 0x65, 0x73, 0x70, 0x79, 0x2E, 0x6E, 0x65, 0x74, 0x2F, 0x73, 0x61, 0x6B, 0x65
	.byte 0x2F, 0x47, 0x65, 0x74, 0x4D, 0x79, 0x52, 0x65, 0x63, 0x6F, 0x72, 0x64, 0x73, 0x22, 0x00, 0x00
	.byte 0x53, 0x4F, 0x41, 0x50, 0x41, 0x63, 0x74, 0x69, 0x6F, 0x6E, 0x3A, 0x20, 0x22, 0x68, 0x74, 0x74
	.byte 0x70, 0x3A, 0x2F, 0x2F, 0x67, 0x61, 0x6D, 0x65, 0x73, 0x70, 0x79, 0x2E, 0x6E, 0x65, 0x74, 0x2F
	.byte 0x73, 0x61, 0x6B, 0x65, 0x2F, 0x53, 0x65, 0x61, 0x72, 0x63, 0x68, 0x46, 0x6F, 0x72, 0x52, 0x65
	.byte 0x63, 0x6F, 0x72, 0x64, 0x73, 0x22, 0x00, 0x00, 0x53, 0x4F, 0x41, 0x50, 0x41, 0x63, 0x74, 0x69
	.byte 0x6F, 0x6E, 0x3A, 0x20, 0x22, 0x68, 0x74, 0x74, 0x70, 0x3A, 0x2F, 0x2F, 0x67, 0x61, 0x6D, 0x65
	.byte 0x73, 0x70, 0x79, 0x2E, 0x6E, 0x65, 0x74, 0x2F, 0x73, 0x61, 0x6B, 0x65, 0x2F, 0x47, 0x65, 0x74
	.byte 0x52, 0x61, 0x6E, 0x64, 0x6F, 0x6D, 0x52, 0x65, 0x63, 0x6F, 0x72, 0x64, 0x73, 0x22, 0x00, 0x00
	.byte 0x53, 0x4F, 0x41, 0x50, 0x41, 0x63, 0x74, 0x69, 0x6F, 0x6E, 0x3A, 0x20, 0x22, 0x68, 0x74, 0x74
	.byte 0x70, 0x3A, 0x2F, 0x2F, 0x67, 0x61, 0x6D, 0x65, 0x73, 0x70, 0x79, 0x2E, 0x6E, 0x65, 0x74, 0x2F
	.byte 0x73, 0x61, 0x6B, 0x65, 0x2F, 0x47, 0x65, 0x74, 0x53, 0x70, 0x65, 0x63, 0x69, 0x66, 0x69, 0x63
	.byte 0x52, 0x65, 0x63, 0x6F, 0x72, 0x64, 0x73, 0x22, 0x00, 0x00, 0x00, 0x00, 0x6E, 0x73, 0x31, 0x00
	.byte 0x66, 0x69, 0x65, 0x6C, 0x64, 0x73, 0x00, 0x00, 0x73, 0x74, 0x72, 0x69, 0x6E, 0x67, 0x00, 0x00
	.byte 0x72, 0x65, 0x63, 0x6F, 0x72, 0x64, 0x69, 0x64, 0x73, 0x00, 0x00, 0x00, 0x69, 0x6E, 0x74, 0x00
	.byte 0x6F, 0x77, 0x6E, 0x65, 0x72, 0x69, 0x64, 0x73, 0x00, 0x00, 0x00, 0x00, 0x76, 0x61, 0x6C, 0x75
	.byte 0x65, 0x73, 0x00, 0x00, 0x41, 0x72, 0x72, 0x61, 0x79, 0x4F, 0x66, 0x52, 0x65, 0x63, 0x6F, 0x72
	.byte 0x64, 0x56, 0x61, 0x6C, 0x75, 0x65, 0x00, 0x00, 0x52, 0x65, 0x63, 0x6F, 0x72, 0x64, 0x56, 0x61
	.byte 0x6C, 0x75, 0x65, 0x00, 0x62, 0x79, 0x74, 0x65, 0x56, 0x61, 0x6C, 0x75, 0x65, 0x00, 0x00, 0x00
	.byte 0x76, 0x61, 0x6C, 0x75, 0x65, 0x00, 0x00, 0x00, 0x73, 0x68, 0x6F, 0x72, 0x74, 0x56, 0x61, 0x6C
	.byte 0x75, 0x65, 0x00, 0x00, 0x69, 0x6E, 0x74, 0x56, 0x61, 0x6C, 0x75, 0x65, 0x00, 0x00, 0x00, 0x00
	.byte 0x69, 0x6E, 0x74, 0x36, 0x34, 0x56, 0x61, 0x6C, 0x75, 0x65, 0x00, 0x00, 0x66, 0x6C, 0x6F, 0x61
	.byte 0x74, 0x56, 0x61, 0x6C, 0x75, 0x65, 0x00, 0x00, 0x61, 0x73, 0x63, 0x69, 0x69, 0x53, 0x74, 0x72
	.byte 0x69, 0x6E, 0x67, 0x56, 0x61, 0x6C, 0x75, 0x65, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x75, 0x6E, 0x69, 0x63, 0x6F, 0x64, 0x65, 0x53, 0x74, 0x72, 0x69, 0x6E, 0x67, 0x56, 0x61, 0x6C
	.byte 0x75, 0x65, 0x00, 0x00, 0x62, 0x6F, 0x6F, 0x6C, 0x65, 0x61, 0x6E, 0x56, 0x61, 0x6C, 0x75, 0x65
	.byte 0x00, 0x00, 0x00, 0x00, 0x74, 0x72, 0x75, 0x65, 0x00, 0x00, 0x00, 0x00, 0x64, 0x61, 0x74, 0x65
	.byte 0x41, 0x6E, 0x64, 0x54, 0x69, 0x6D, 0x65, 0x56, 0x61, 0x6C, 0x75, 0x65, 0x00, 0x00, 0x00, 0x00
	.byte 0x62, 0x69, 0x6E, 0x61, 0x72, 0x79, 0x44, 0x61, 0x74, 0x61, 0x56, 0x61, 0x6C, 0x75, 0x65, 0x00
	.byte 0x74, 0x61, 0x62, 0x6C, 0x65, 0x69, 0x64, 0x00, 0x66, 0x69, 0x6C, 0x74, 0x65, 0x72, 0x00, 0x00
	.byte 0x73, 0x6F, 0x72, 0x74, 0x00, 0x00, 0x00, 0x00, 0x6F, 0x66, 0x66, 0x73, 0x65, 0x74, 0x00, 0x00
	.byte 0x6D, 0x61, 0x78, 0x00, 0x74, 0x61, 0x72, 0x67, 0x65, 0x74, 0x66, 0x69, 0x6C, 0x74, 0x65, 0x72
	.byte 0x00, 0x00, 0x00, 0x00, 0x73, 0x75, 0x72, 0x72, 0x6F, 0x75, 0x6E, 0x64, 0x69, 0x6E, 0x67, 0x00
	.byte 0x63, 0x61, 0x63, 0x68, 0x65, 0x46, 0x6C, 0x61, 0x67, 0x00, 0x00, 0x00, 0x46, 0x61, 0x69, 0x6C
	.byte 0x64, 0x20, 0x6F, 0x6E, 0x20, 0x77, 0x73, 0x4C, 0x6F, 0x67, 0x69, 0x6E, 0x52, 0x65, 0x6D, 0x6F
	.byte 0x74, 0x65, 0x41, 0x75, 0x74, 0x68, 0x5B, 0x25, 0x64, 0x5D, 0x0A, 0x00, 0x53, 0x63, 0x5B, 0x25
	.byte 0x64, 0x5D, 0x3E, 0x20, 0x00, 0x00, 0x00, 0x00, 0x46, 0x61, 0x69, 0x6C, 0x65, 0x64, 0x20, 0x6F
	.byte 0x6E, 0x20, 0x70, 0x6C, 0x61, 0x79, 0x65, 0x72, 0x20, 0x6C, 0x6F, 0x67, 0x69, 0x6E, 0x2C, 0x20
	.byte 0x47, 0x48, 0x54, 0x54, 0x50, 0x20, 0x65, 0x72, 0x72, 0x6F, 0x72, 0x3A, 0x20, 0x25, 0x64, 0x0A
	.byte 0x00, 0x00, 0x00, 0x00, 0x46, 0x61, 0x69, 0x6C, 0x65, 0x64, 0x20, 0x6F, 0x6E, 0x20, 0x70, 0x6C
	.byte 0x61, 0x79, 0x65, 0x72, 0x20, 0x6C, 0x6F, 0x67, 0x69, 0x6E, 0x2C, 0x20, 0x4C, 0x6F, 0x67, 0x69
	.byte 0x6E, 0x20, 0x72, 0x65, 0x73, 0x75, 0x6C, 0x74, 0x3A, 0x20, 0x25, 0x64, 0x0A, 0x00, 0x00, 0x00
	.byte 0x50, 0x6C, 0x61, 0x79, 0x65, 0x72, 0x20, 0x27, 0x25, 0x73, 0x27, 0x20, 0x6C, 0x6F, 0x67, 0x67
	.byte 0x65, 0x64, 0x20, 0x69, 0x6E, 0x2E, 0x0D, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x68, 0x74, 0x74, 0x70
	.byte 0x73, 0x3A, 0x2F, 0x2F, 0x25, 0x73, 0x2E, 0x73, 0x65, 0x63, 0x75, 0x72, 0x65, 0x32, 0x2E, 0x61
	.byte 0x74, 0x6C, 0x61, 0x73, 0x2E, 0x67, 0x73, 0x2E, 0x6E, 0x69, 0x6E, 0x74, 0x65, 0x6E, 0x64, 0x6F
	.byte 0x77, 0x69, 0x66, 0x69, 0x2E, 0x6E, 0x65, 0x74, 0x2F, 0x43, 0x6F, 0x6D, 0x70, 0x65, 0x74, 0x69
	.byte 0x74, 0x69, 0x6F, 0x6E, 0x53, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x2F, 0x43, 0x6F, 0x6D, 0x70
	.byte 0x65, 0x74, 0x69, 0x74, 0x69, 0x6F, 0x6E, 0x53, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x2E, 0x61
	.byte 0x73, 0x6D, 0x78, 0x00, 0x68, 0x74, 0x74, 0x70, 0x73, 0x3A, 0x2F, 0x2F, 0x25, 0x73, 0x2E, 0x73
	.byte 0x65, 0x63, 0x75, 0x72, 0x65, 0x32, 0x2E, 0x61, 0x75, 0x74, 0x68, 0x2E, 0x67, 0x73, 0x2E, 0x6E
	.byte 0x69, 0x6E, 0x74, 0x65, 0x6E, 0x64, 0x6F, 0x77, 0x69, 0x66, 0x69, 0x2E, 0x6E, 0x65, 0x74, 0x2F
	.byte 0x41, 0x75, 0x74, 0x68, 0x53, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x2F, 0x41, 0x75, 0x74, 0x68
	.byte 0x53, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x2E, 0x61, 0x73, 0x6D, 0x78, 0x00, 0x00, 0x00, 0x00
	.byte 0x68, 0x74, 0x74, 0x70, 0x73, 0x3A, 0x2F, 0x2F, 0x25, 0x73, 0x2E, 0x73, 0x65, 0x63, 0x75, 0x72
	.byte 0x65, 0x2E, 0x61, 0x74, 0x6C, 0x61, 0x73, 0x2E, 0x67, 0x73, 0x2E, 0x6E, 0x69, 0x6E, 0x74, 0x65
	.byte 0x6E, 0x64, 0x6F, 0x77, 0x69, 0x66, 0x69, 0x2E, 0x6E, 0x65, 0x74, 0x2F, 0x43, 0x6F, 0x6D, 0x70
	.byte 0x65, 0x74, 0x69, 0x74, 0x69, 0x6F, 0x6E, 0x53, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x2F, 0x43
	.byte 0x6F, 0x6D, 0x70, 0x65, 0x74, 0x69, 0x74, 0x69, 0x6F, 0x6E, 0x53, 0x65, 0x72, 0x76, 0x69, 0x63
	.byte 0x65, 0x2E, 0x61, 0x73, 0x6D, 0x78, 0x00, 0x00, 0x68, 0x74, 0x74, 0x70, 0x73, 0x3A, 0x2F, 0x2F
	.byte 0x25, 0x73, 0x2E, 0x73, 0x65, 0x63, 0x75, 0x72, 0x65, 0x2E, 0x61, 0x75, 0x74, 0x68, 0x2E, 0x67
	.byte 0x73, 0x2E, 0x6E, 0x69, 0x6E, 0x74, 0x65, 0x6E, 0x64, 0x6F, 0x77, 0x69, 0x66, 0x69, 0x2E, 0x6E
	.byte 0x65, 0x74, 0x2F, 0x41, 0x75, 0x74, 0x68, 0x53, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x2F, 0x41
	.byte 0x75, 0x74, 0x68, 0x53, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x2E, 0x61, 0x73, 0x6D, 0x78, 0x00
	.byte 0x68, 0x74, 0x74, 0x70, 0x3A, 0x2F, 0x2F, 0x25, 0x73, 0x2E, 0x63, 0x6F, 0x6D, 0x70, 0x2E, 0x70
	.byte 0x75, 0x62, 0x73, 0x76, 0x73, 0x2E, 0x67, 0x73, 0x2E, 0x6E, 0x69, 0x6E, 0x74, 0x65, 0x6E, 0x64
	.byte 0x6F, 0x77, 0x69, 0x66, 0x69, 0x2E, 0x6E, 0x65, 0x74, 0x2F, 0x43, 0x6F, 0x6D, 0x70, 0x65, 0x74
	.byte 0x69, 0x74, 0x69, 0x6F, 0x6E, 0x53, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x2F, 0x43, 0x6F, 0x6D
	.byte 0x70, 0x65, 0x74, 0x69, 0x74, 0x69, 0x6F, 0x6E, 0x53, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x2E
	.byte 0x61, 0x73, 0x6D, 0x78, 0x00, 0x00, 0x00, 0x00, 0x4E, 0x6F, 0x20, 0x61, 0x76, 0x61, 0x69, 0x6C
	.byte 0x61, 0x62, 0x69, 0x6C, 0x69, 0x74, 0x79, 0x0D, 0x0A, 0x00, 0x00, 0x00, 0x25, 0x38, 0x78, 0x00
	.byte 0x25, 0x34, 0x78, 0x00, 0x25, 0x32, 0x78, 0x00, 0x25, 0x32, 0x78, 0x25, 0x32, 0x78, 0x25, 0x32
	.byte 0x78, 0x25, 0x32, 0x78, 0x25, 0x32, 0x78, 0x25, 0x32, 0x78, 0x00, 0x00, 0xD0, 0x12, 0x1C, 0x02
	.byte 0x67, 0x73, 0x63, 0x3D, 0x22, 0x68, 0x74, 0x74, 0x70, 0x3A, 0x2F, 0x2F, 0x67, 0x61, 0x6D, 0x65
	.byte 0x73, 0x70, 0x79, 0x2E, 0x6E, 0x65, 0x74, 0x2F, 0x63, 0x6F, 0x6D, 0x70, 0x65, 0x74, 0x69, 0x74
	.byte 0x69, 0x6F, 0x6E, 0x2F, 0x22, 0x00, 0x00, 0x00, 0x67, 0x73, 0x63, 0x00, 0x43, 0x72, 0x65, 0x61
	.byte 0x74, 0x65, 0x53, 0x65, 0x73, 0x73, 0x69, 0x6F, 0x6E, 0x00, 0x00, 0x00, 0x63, 0x65, 0x72, 0x74
	.byte 0x69, 0x66, 0x69, 0x63, 0x61, 0x74, 0x65, 0x00, 0x70, 0x72, 0x6F, 0x6F, 0x66, 0x00, 0x00, 0x00
	.byte 0x67, 0x61, 0x6D, 0x65, 0x69, 0x64, 0x00, 0x00, 0x53, 0x4F, 0x41, 0x50, 0x41, 0x63, 0x74, 0x69
	.byte 0x6F, 0x6E, 0x3A, 0x20, 0x22, 0x68, 0x74, 0x74, 0x70, 0x3A, 0x2F, 0x2F, 0x67, 0x61, 0x6D, 0x65
	.byte 0x73, 0x70, 0x79, 0x2E, 0x6E, 0x65, 0x74, 0x2F, 0x63, 0x6F, 0x6D, 0x70, 0x65, 0x74, 0x69, 0x74
	.byte 0x69, 0x6F, 0x6E, 0x2F, 0x43, 0x72, 0x65, 0x61, 0x74, 0x65, 0x53, 0x65, 0x73, 0x73, 0x69, 0x6F
	.byte 0x6E, 0x22, 0x00, 0x00, 0x43, 0x72, 0x65, 0x61, 0x74, 0x65, 0x53, 0x65, 0x73, 0x73, 0x69, 0x6F
	.byte 0x6E, 0x52, 0x65, 0x73, 0x70, 0x6F, 0x6E, 0x73, 0x65, 0x00, 0x00, 0x00, 0x43, 0x72, 0x65, 0x61
	.byte 0x74, 0x65, 0x4D, 0x61, 0x74, 0x63, 0x68, 0x6C, 0x65, 0x73, 0x73, 0x53, 0x65, 0x73, 0x73, 0x69
	.byte 0x6F, 0x6E, 0x52, 0x65, 0x73, 0x70, 0x6F, 0x6E, 0x73, 0x65, 0x00, 0x00, 0x43, 0x72, 0x65, 0x61
	.byte 0x74, 0x65, 0x53, 0x65, 0x73, 0x73, 0x69, 0x6F, 0x6E, 0x52, 0x65, 0x73, 0x75, 0x6C, 0x74, 0x00
	.byte 0x43, 0x72, 0x65, 0x61, 0x74, 0x65, 0x4D, 0x61, 0x74, 0x63, 0x68, 0x6C, 0x65, 0x73, 0x73, 0x53
	.byte 0x65, 0x73, 0x73, 0x69, 0x6F, 0x6E, 0x52, 0x65, 0x73, 0x75, 0x6C, 0x74, 0x00, 0x00, 0x00, 0x00
	.byte 0x72, 0x65, 0x73, 0x75, 0x6C, 0x74, 0x00, 0x00, 0x63, 0x73, 0x69, 0x64, 0x00, 0x00, 0x00, 0x00
	.byte 0x63, 0x63, 0x69, 0x64, 0x00, 0x00, 0x00, 0x00, 0x53, 0x65, 0x74, 0x52, 0x65, 0x70, 0x6F, 0x72
	.byte 0x74, 0x49, 0x6E, 0x74, 0x65, 0x6E, 0x74, 0x69, 0x6F, 0x6E, 0x00, 0x00, 0x61, 0x75, 0x74, 0x68
	.byte 0x6F, 0x72, 0x69, 0x74, 0x61, 0x74, 0x69, 0x76, 0x65, 0x00, 0x00, 0x00, 0x53, 0x4F, 0x41, 0x50
	.byte 0x41, 0x63, 0x74, 0x69, 0x6F, 0x6E, 0x3A, 0x20, 0x22, 0x68, 0x74, 0x74, 0x70, 0x3A, 0x2F, 0x2F
	.byte 0x67, 0x61, 0x6D, 0x65, 0x73, 0x70, 0x79, 0x2E, 0x6E, 0x65, 0x74, 0x2F, 0x63, 0x6F, 0x6D, 0x70
	.byte 0x65, 0x74, 0x69, 0x74, 0x69, 0x6F, 0x6E, 0x2F, 0x53, 0x65, 0x74, 0x52, 0x65, 0x70, 0x6F, 0x72
	.byte 0x74, 0x49, 0x6E, 0x74, 0x65, 0x6E, 0x74, 0x69, 0x6F, 0x6E, 0x22, 0x00, 0x53, 0x65, 0x74, 0x52
	.byte 0x65, 0x70, 0x6F, 0x72, 0x74, 0x49, 0x6E, 0x74, 0x65, 0x6E, 0x74, 0x69, 0x6F, 0x6E, 0x52, 0x65
	.byte 0x73, 0x70, 0x6F, 0x6E, 0x73, 0x65, 0x00, 0x00, 0x53, 0x65, 0x74, 0x52, 0x65, 0x70, 0x6F, 0x72
	.byte 0x74, 0x49, 0x6E, 0x74, 0x65, 0x6E, 0x74, 0x69, 0x6F, 0x6E, 0x52, 0x65, 0x73, 0x75, 0x6C, 0x74
	.byte 0x00, 0x00, 0x00, 0x00, 0x72, 0x65, 0x70, 0x6F, 0x72, 0x74, 0x00, 0x00, 0x61, 0x70, 0x70, 0x6C
	.byte 0x69, 0x63, 0x61, 0x74, 0x69, 0x6F, 0x6E, 0x2F, 0x62, 0x69, 0x6E, 0x00, 0x53, 0x75, 0x62, 0x6D
	.byte 0x69, 0x74, 0x52, 0x65, 0x70, 0x6F, 0x72, 0x74, 0x00, 0x00, 0x00, 0x00, 0x53, 0x4F, 0x41, 0x50
	.byte 0x41, 0x63, 0x74, 0x69, 0x6F, 0x6E, 0x3A, 0x20, 0x22, 0x68, 0x74, 0x74, 0x70, 0x3A, 0x2F, 0x2F
	.byte 0x67, 0x61, 0x6D, 0x65, 0x73, 0x70, 0x79, 0x2E, 0x6E, 0x65, 0x74, 0x2F, 0x63, 0x6F, 0x6D, 0x70
	.byte 0x65, 0x74, 0x69, 0x74, 0x69, 0x6F, 0x6E, 0x2F, 0x53, 0x75, 0x62, 0x6D, 0x69, 0x74, 0x52, 0x65
	.byte 0x70, 0x6F, 0x72, 0x74, 0x22, 0x00, 0x00, 0x00, 0x53, 0x75, 0x62, 0x6D, 0x69, 0x74, 0x52, 0x65
	.byte 0x70, 0x6F, 0x72, 0x74, 0x52, 0x65, 0x73, 0x70, 0x6F, 0x6E, 0x73, 0x65, 0x00, 0x00, 0x00, 0x00
	.byte 0x53, 0x75, 0x62, 0x6D, 0x69, 0x74, 0x52, 0x65, 0x70, 0x6F, 0x72, 0x74, 0x52, 0x65, 0x73, 0x75
	.byte 0x6C, 0x74, 0x00, 0x00, 0x6E, 0x6F, 0x6E, 0x65, 0x00, 0x00, 0x00, 0x00, 0x69, 0x6E, 0x69, 0x74
	.byte 0x69, 0x61, 0x6C, 0x69, 0x7A, 0x65, 0x00, 0x00, 0x67, 0x65, 0x74, 0x20, 0x72, 0x65, 0x63, 0x6F
	.byte 0x72, 0x64, 0x73, 0x00, 0x72, 0x61, 0x74, 0x65, 0x20, 0x72, 0x65, 0x63, 0x6F, 0x72, 0x64, 0x00
	.byte 0x75, 0x70, 0x6C, 0x6F, 0x61, 0x64, 0x20, 0x66, 0x69, 0x6C, 0x65, 0x00, 0x63, 0x72, 0x65, 0x61
	.byte 0x74, 0x65, 0x20, 0x72, 0x65, 0x63, 0x6F, 0x72, 0x64, 0x00, 0x00, 0x00, 0x75, 0x70, 0x64, 0x61
	.byte 0x74, 0x65, 0x20, 0x72, 0x65, 0x63, 0x6F, 0x72, 0x64, 0x00, 0x00, 0x00, 0x64, 0x65, 0x6C, 0x65
	.byte 0x74, 0x65, 0x20, 0x72, 0x65, 0x63, 0x6F, 0x72, 0x64, 0x00, 0x00, 0x00, 0x64, 0x6F, 0x77, 0x6E
	.byte 0x6C, 0x6F, 0x61, 0x64, 0x20, 0x66, 0x69, 0x6C, 0x65, 0x00, 0x00, 0x00, 0x73, 0x65, 0x61, 0x72
	.byte 0x63, 0x68, 0x20, 0x72, 0x65, 0x63, 0x6F, 0x72, 0x64, 0x73, 0x00, 0x00, 0x67, 0x65, 0x74, 0x20
	.byte 0x6D, 0x79, 0x20, 0x72, 0x65, 0x63, 0x6F, 0x72, 0x64, 0x73, 0x00, 0x00, 0x67, 0x65, 0x74, 0x20
	.byte 0x72, 0x65, 0x63, 0x6F, 0x72, 0x64, 0x20, 0x63, 0x6F, 0x75, 0x6E, 0x74, 0x00, 0x00, 0x00, 0x00
	.byte 0x67, 0x65, 0x74, 0x20, 0x72, 0x65, 0x63, 0x6F, 0x72, 0x64, 0x20, 0x6C, 0x69, 0x6D, 0x69, 0x74
	.byte 0x00, 0x00, 0x00, 0x00, 0x67, 0x65, 0x74, 0x20, 0x72, 0x61, 0x6E, 0x64, 0x6F, 0x6D, 0x20, 0x72
	.byte 0x65, 0x63, 0x6F, 0x72, 0x64, 0x00, 0x00, 0x00, 0x14, 0x15, 0x1C, 0x02, 0x1C, 0x15, 0x1C, 0x02
	.byte 0x4C, 0x15, 0x1C, 0x02, 0x6C, 0x15, 0x1C, 0x02, 0x5C, 0x15, 0x1C, 0x02, 0x7C, 0x15, 0x1C, 0x02
	.byte 0x40, 0x15, 0x1C, 0x02, 0x9C, 0x15, 0x1C, 0x02, 0xC0, 0x15, 0x1C, 0x02, 0x28, 0x15, 0x1C, 0x02
	.byte 0x34, 0x15, 0x1C, 0x02, 0x8C, 0x15, 0x1C, 0x02, 0xD4, 0x15, 0x1C, 0x02, 0xAC, 0x15, 0x1C, 0x02
	.byte 0x44, 0x57, 0x43, 0x69, 0x5F, 0x47, 0x65, 0x74, 0x4C, 0x6F, 0x67, 0x69, 0x6E, 0x54, 0x69, 0x63
	.byte 0x6B, 0x65, 0x74, 0x20, 0x66, 0x61, 0x69, 0x6C, 0x65, 0x64, 0x2E, 0x0A, 0x00, 0x00, 0x00, 0x00
	.byte 0x73, 0x61, 0x6B, 0x65, 0x53, 0x74, 0x61, 0x72, 0x74, 0x75, 0x70, 0x20, 0x66, 0x61, 0x69, 0x6C
	.byte 0x65, 0x64, 0x2E, 0x5B, 0x25, 0x64, 0x5D, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x6E, 0x6F, 0x74, 0x20
	.byte 0x69, 0x6E, 0x20, 0x61, 0x73, 0x79, 0x6E, 0x63, 0x20, 0x70, 0x72, 0x6F, 0x63, 0x65, 0x73, 0x73
	.byte 0x2E, 0x0A, 0x00, 0x00, 0x63, 0x61, 0x6E, 0x63, 0x65, 0x6C, 0x20, 0x67, 0x68, 0x74, 0x74, 0x70
	.byte 0x2E, 0x20, 0x73, 0x74, 0x61, 0x74, 0x65, 0x5B, 0x25, 0x64, 0x5D, 0x0A, 0x00, 0x00, 0x00, 0x00
	.byte 0x69, 0x6C, 0x6C, 0x65, 0x67, 0x61, 0x6C, 0x20, 0x70, 0x72, 0x6F, 0x63, 0x65, 0x73, 0x73, 0x5B
	.byte 0x25, 0x64, 0x5D, 0x2E, 0x0A, 0x00, 0x00, 0x00, 0x6E, 0x6F, 0x74, 0x20, 0x69, 0x6E, 0x69, 0x74
	.byte 0x69, 0x61, 0x6C, 0x69, 0x7A, 0x65, 0x64, 0x2E, 0x0A, 0x00, 0x00, 0x00, 0x69, 0x6E, 0x20, 0x61
	.byte 0x73, 0x79, 0x6E, 0x63, 0x20, 0x70, 0x72, 0x6F, 0x63, 0x65, 0x73, 0x73, 0x2E, 0x0A, 0x00, 0x00
	.byte 0x73, 0x61, 0x6B, 0x65, 0x43, 0x72, 0x65, 0x61, 0x74, 0x65, 0x52, 0x65, 0x63, 0x6F, 0x72, 0x64
	.byte 0x20, 0x66, 0x61, 0x69, 0x6C, 0x65, 0x64, 0x2E, 0x5B, 0x25, 0x64, 0x5D, 0x0A, 0x00, 0x00, 0x00
	.byte 0x73, 0x61, 0x6B, 0x65, 0x55, 0x70, 0x64, 0x61, 0x74, 0x65, 0x52, 0x65, 0x63, 0x6F, 0x72, 0x64
	.byte 0x20, 0x66, 0x61, 0x69, 0x6C, 0x65, 0x64, 0x2E, 0x5B, 0x25, 0x64, 0x5D, 0x0A, 0x00, 0x00, 0x00
	.byte 0x73, 0x61, 0x6B, 0x65, 0x47, 0x65, 0x74, 0x4D, 0x79, 0x52, 0x65, 0x63, 0x6F, 0x72, 0x64, 0x73
	.byte 0x20, 0x66, 0x61, 0x69, 0x6C, 0x65, 0x64, 0x2E, 0x5B, 0x25, 0x64, 0x5D, 0x0A, 0x00, 0x00, 0x00
	.byte 0x73, 0x61, 0x6B, 0x65, 0x47, 0x65, 0x74, 0x53, 0x70, 0x65, 0x63, 0x69, 0x66, 0x69, 0x63, 0x52
	.byte 0x65, 0x63, 0x6F, 0x72, 0x64, 0x73, 0x20, 0x66, 0x61, 0x69, 0x6C, 0x65, 0x64, 0x2E, 0x5B, 0x25
	.byte 0x64, 0x5D, 0x0A, 0x00, 0x47, 0x64, 0x62, 0x5B, 0x25, 0x64, 0x5D, 0x3E, 0x20, 0x00, 0x00, 0x00
	.byte 0x69, 0x6E, 0x20, 0x64, 0x77, 0x63, 0x20, 0x65, 0x72, 0x72, 0x6F, 0x72, 0x2E, 0x5B, 0x25, 0x64
	.byte 0x5D, 0x0A, 0x00, 0x00, 0x69, 0x6E, 0x20, 0x63, 0x61, 0x6E, 0x63, 0x65, 0x6C, 0x20, 0x70, 0x72
	.byte 0x6F, 0x63, 0x65, 0x73, 0x73, 0x2E, 0x0A, 0x00, 0x25, 0x73, 0x5B, 0x67, 0x64, 0x62, 0x3D, 0x3E
	.byte 0x25, 0x73, 0x20, 0x66, 0x69, 0x65, 0x6C, 0x64, 0x5F, 0x6E, 0x75, 0x6D, 0x3D, 0x3E, 0x25, 0x64
	.byte 0x20, 0x72, 0x65, 0x63, 0x6F, 0x72, 0x64, 0x5F, 0x69, 0x64, 0x3D, 0x3E, 0x25, 0x64, 0x5D, 0x2E
	.byte 0x0A, 0x00, 0x00, 0x00, 0x25, 0x73, 0x5B, 0x67, 0x64, 0x62, 0x3D, 0x3E, 0x25, 0x73, 0x20, 0x72
	.byte 0x65, 0x63, 0x6F, 0x72, 0x64, 0x5F, 0x69, 0x64, 0x3D, 0x3E, 0x25, 0x64, 0x5D, 0x2E, 0x0A, 0x00
	.byte 0x25, 0x73, 0x5B, 0x67, 0x64, 0x62, 0x3D, 0x3E, 0x25, 0x73, 0x20, 0x72, 0x65, 0x63, 0x6F, 0x72
	.byte 0x64, 0x5F, 0x69, 0x64, 0x3D, 0x3E, 0x25, 0x64, 0x20, 0x66, 0x69, 0x65, 0x6C, 0x64, 0x5F, 0x6E
	.byte 0x75, 0x6D, 0x3D, 0x3E, 0x25, 0x64, 0x5D, 0x2E, 0x0A, 0x00, 0x00, 0x00, 0x25, 0x73, 0x5B, 0x72
	.byte 0x65, 0x63, 0x6F, 0x72, 0x64, 0x5F, 0x6E, 0x75, 0x6D, 0x3D, 0x3E, 0x25, 0x64, 0x5D, 0x2E, 0x0A
	.byte 0x00, 0x00, 0x00, 0x00, 0x25, 0x73, 0x5B, 0x67, 0x64, 0x62, 0x3D, 0x3E, 0x25, 0x73, 0x20, 0x6C
	.byte 0x69, 0x6D, 0x69, 0x74, 0x5F, 0x6E, 0x75, 0x6D, 0x3D, 0x3E, 0x25, 0x64, 0x20, 0x6F, 0x77, 0x6E
	.byte 0x65, 0x64, 0x5F, 0x6E, 0x75, 0x6D, 0x3D, 0x3E, 0x25, 0x64, 0x5D, 0x2E, 0x0A, 0x00, 0x00, 0x00
	.byte 0x25, 0x73, 0x5B, 0x67, 0x64, 0x62, 0x3D, 0x3E, 0x25, 0x73, 0x20, 0x72, 0x65, 0x63, 0x6F, 0x72
	.byte 0x64, 0x5F, 0x69, 0x64, 0x3D, 0x3E, 0x25, 0x64, 0x20, 0x72, 0x61, 0x74, 0x69, 0x6E, 0x67, 0x3D
	.byte 0x3E, 0x25, 0x64, 0x5D, 0x2E, 0x0A, 0x00, 0x00, 0x25, 0x73, 0x5B, 0x72, 0x65, 0x63, 0x6F, 0x72
	.byte 0x64, 0x5F, 0x6E, 0x75, 0x6D, 0x3D, 0x3E, 0x31, 0x5D, 0x2E, 0x0A, 0x00, 0x25, 0x73, 0x5B, 0x72
	.byte 0x65, 0x63, 0x6F, 0x72, 0x64, 0x5F, 0x6E, 0x75, 0x6D, 0x3D, 0x3E, 0x30, 0x5D, 0x2E, 0x0A, 0x00
	.byte 0x25, 0x73, 0x5B, 0x63, 0x6F, 0x75, 0x6E, 0x74, 0x3D, 0x3E, 0x25, 0x64, 0x5D, 0x2E, 0x0A, 0x00
	.byte 0x25, 0x73, 0x20, 0x63, 0x61, 0x6E, 0x63, 0x65, 0x6C, 0x65, 0x64, 0x2E, 0x5B, 0x25, 0x64, 0x5D
	.byte 0x0A, 0x00, 0x00, 0x00, 0x25, 0x73, 0x20, 0x66, 0x61, 0x69, 0x6C, 0x65, 0x64, 0x2E, 0x5B, 0x25
	.byte 0x64, 0x5D, 0x0A, 0x00, 0x44, 0x57, 0x43, 0x47, 0x64, 0x62, 0x45, 0x72, 0x72, 0x6F, 0x72, 0x5B
	.byte 0x25, 0x64, 0x5D, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x44, 0x57, 0x43, 0x47, 0x64, 0x62, 0x41, 0x73
	.byte 0x79, 0x6E, 0x63, 0x52, 0x65, 0x73, 0x75, 0x6C, 0x74, 0x5B, 0x25, 0x64, 0x5D, 0x0A, 0x00, 0x00
	.byte 0x68, 0x74, 0x74, 0x70, 0x73, 0x3A, 0x2F, 0x2F, 0x25, 0x73, 0x2E, 0x73, 0x65, 0x63, 0x75, 0x72
	.byte 0x65, 0x32, 0x2E, 0x73, 0x61, 0x6B, 0x65, 0x2E, 0x67, 0x73, 0x2E, 0x6E, 0x69, 0x6E, 0x74, 0x65
	.byte 0x6E, 0x64, 0x6F, 0x77, 0x69, 0x66, 0x69, 0x2E, 0x6E, 0x65, 0x74, 0x2F, 0x53, 0x61, 0x6B, 0x65
	.byte 0x53, 0x74, 0x6F, 0x72, 0x61, 0x67, 0x65, 0x53, 0x65, 0x72, 0x76, 0x65, 0x72, 0x2F, 0x53, 0x74
	.byte 0x6F, 0x72, 0x61, 0x67, 0x65, 0x53, 0x65, 0x72, 0x76, 0x65, 0x72, 0x2E, 0x61, 0x73, 0x6D, 0x78
	.byte 0x00, 0x00, 0x00, 0x00, 0x68, 0x74, 0x74, 0x70, 0x73, 0x3A, 0x2F, 0x2F, 0x25, 0x73, 0x2E, 0x73
	.byte 0x65, 0x63, 0x75, 0x72, 0x65, 0x32, 0x2E, 0x73, 0x61, 0x6B, 0x65, 0x2E, 0x67, 0x73, 0x2E, 0x6E
	.byte 0x69, 0x6E, 0x74, 0x65, 0x6E, 0x64, 0x6F, 0x77, 0x69, 0x66, 0x69, 0x2E, 0x6E, 0x65, 0x74, 0x2F
	.byte 0x53, 0x61, 0x6B, 0x65, 0x46, 0x69, 0x6C, 0x65, 0x53, 0x65, 0x72, 0x76, 0x65, 0x72, 0x2F, 0x75
	.byte 0x70, 0x6C, 0x6F, 0x61, 0x64, 0x2E, 0x61, 0x73, 0x70, 0x78, 0x00, 0x00, 0x68, 0x74, 0x74, 0x70
	.byte 0x73, 0x3A, 0x2F, 0x2F, 0x25, 0x73, 0x2E, 0x73, 0x65, 0x63, 0x75, 0x72, 0x65, 0x32, 0x2E, 0x73
	.byte 0x61, 0x6B, 0x65, 0x2E, 0x67, 0x73, 0x2E, 0x6E, 0x69, 0x6E, 0x74, 0x65, 0x6E, 0x64, 0x6F, 0x77
	.byte 0x69, 0x66, 0x69, 0x2E, 0x6E, 0x65, 0x74, 0x2F, 0x53, 0x61, 0x6B, 0x65, 0x46, 0x69, 0x6C, 0x65
	.byte 0x53, 0x65, 0x72, 0x76, 0x65, 0x72, 0x2F, 0x64, 0x6F, 0x77, 0x6E, 0x6C, 0x6F, 0x61, 0x64, 0x2E
	.byte 0x61, 0x73, 0x70, 0x78, 0x00, 0x00, 0x00, 0x00, 0x68, 0x74, 0x74, 0x70, 0x73, 0x3A, 0x2F, 0x2F
	.byte 0x25, 0x73, 0x2E, 0x73, 0x65, 0x63, 0x75, 0x72, 0x65, 0x2E, 0x73, 0x61, 0x6B, 0x65, 0x2E, 0x67
	.byte 0x73, 0x2E, 0x6E, 0x69, 0x6E, 0x74, 0x65, 0x6E, 0x64, 0x6F, 0x77, 0x69, 0x66, 0x69, 0x2E, 0x6E
	.byte 0x65, 0x74, 0x2F, 0x53, 0x61, 0x6B, 0x65, 0x53, 0x74, 0x6F, 0x72, 0x61, 0x67, 0x65, 0x53, 0x65
	.byte 0x72, 0x76, 0x65, 0x72, 0x2F, 0x53, 0x74, 0x6F, 0x72, 0x61, 0x67, 0x65, 0x53, 0x65, 0x72, 0x76
	.byte 0x65, 0x72, 0x2E, 0x61, 0x73, 0x6D, 0x78, 0x00, 0x68, 0x74, 0x74, 0x70, 0x73, 0x3A, 0x2F, 0x2F
	.byte 0x25, 0x73, 0x2E, 0x73, 0x65, 0x63, 0x75, 0x72, 0x65, 0x2E, 0x73, 0x61, 0x6B, 0x65, 0x2E, 0x67
	.byte 0x73, 0x2E, 0x6E, 0x69, 0x6E, 0x74, 0x65, 0x6E, 0x64, 0x6F, 0x77, 0x69, 0x66, 0x69, 0x2E, 0x6E
	.byte 0x65, 0x74, 0x2F, 0x53, 0x61, 0x6B, 0x65, 0x46, 0x69, 0x6C, 0x65, 0x53, 0x65, 0x72, 0x76, 0x65
	.byte 0x72, 0x2F, 0x75, 0x70, 0x6C, 0x6F, 0x61, 0x64, 0x2E, 0x61, 0x73, 0x70, 0x78, 0x00, 0x00, 0x00
	.byte 0x68, 0x74, 0x74, 0x70, 0x73, 0x3A, 0x2F, 0x2F, 0x25, 0x73, 0x2E, 0x73, 0x65, 0x63, 0x75, 0x72
	.byte 0x65, 0x2E, 0x73, 0x61, 0x6B, 0x65, 0x2E, 0x67, 0x73, 0x2E, 0x6E, 0x69, 0x6E, 0x74, 0x65, 0x6E
	.byte 0x64, 0x6F, 0x77, 0x69, 0x66, 0x69, 0x2E, 0x6E, 0x65, 0x74, 0x2F, 0x53, 0x61, 0x6B, 0x65, 0x46
	.byte 0x69, 0x6C, 0x65, 0x53, 0x65, 0x72, 0x76, 0x65, 0x72, 0x2F, 0x64, 0x6F, 0x77, 0x6E, 0x6C, 0x6F
	.byte 0x61, 0x64, 0x2E, 0x61, 0x73, 0x70, 0x78, 0x00, 0xBC, 0x1A, 0x1C, 0x02, 0x6E, 0x73, 0x31, 0x3D
	.byte 0x22, 0x68, 0x74, 0x74, 0x70, 0x3A, 0x2F, 0x2F, 0x67, 0x61, 0x6D, 0x65, 0x73, 0x70, 0x79, 0x2E
	.byte 0x6E, 0x65, 0x74, 0x2F, 0x41, 0x75, 0x74, 0x68, 0x53, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x2F
	.byte 0x22, 0x00, 0x00, 0x00, 0x68, 0x74, 0x74, 0x70, 0x73, 0x3A, 0x2F, 0x2F, 0x25, 0x73, 0x2E, 0x61
	.byte 0x75, 0x74, 0x68, 0x2E, 0x70, 0x75, 0x62, 0x73, 0x76, 0x73, 0x2E, 0x67, 0x73, 0x2E, 0x6E, 0x69
	.byte 0x6E, 0x74, 0x65, 0x6E, 0x64, 0x6F, 0x77, 0x69, 0x66, 0x69, 0x2E, 0x6E, 0x65, 0x74, 0x2F, 0x41
	.byte 0x75, 0x74, 0x68, 0x53, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x2F, 0x41, 0x75, 0x74, 0x68, 0x53
	.byte 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x2E, 0x61, 0x73, 0x6D, 0x78, 0x00, 0x4E, 0x6F, 0x20, 0x61
	.byte 0x76, 0x61, 0x69, 0x6C, 0x61, 0x62, 0x69, 0x6C, 0x69, 0x74, 0x79, 0x0D, 0x0A, 0x00, 0x00, 0x00
	.byte 0x72, 0x65, 0x73, 0x70, 0x6F, 0x6E, 0x73, 0x65, 0x43, 0x6F, 0x64, 0x65, 0x00, 0x00, 0x00, 0x00
	.byte 0x63, 0x65, 0x72, 0x74, 0x69, 0x66, 0x69, 0x63, 0x61, 0x74, 0x65, 0x00, 0x70, 0x65, 0x65, 0x72
	.byte 0x6B, 0x65, 0x79, 0x70, 0x72, 0x69, 0x76, 0x61, 0x74, 0x65, 0x00, 0x00, 0x6E, 0x73, 0x31, 0x00
	.byte 0x76, 0x65, 0x72, 0x73, 0x69, 0x6F, 0x6E, 0x00, 0x70, 0x61, 0x72, 0x74, 0x6E, 0x65, 0x72, 0x63
	.byte 0x6F, 0x64, 0x65, 0x00, 0x6E, 0x61, 0x6D, 0x65, 0x73, 0x70, 0x61, 0x63, 0x65, 0x69, 0x64, 0x00
	.byte 0x70, 0x72, 0x6F, 0x66, 0x69, 0x6C, 0x65, 0x6E, 0x69, 0x63, 0x6B, 0x00, 0x75, 0x6E, 0x69, 0x71
	.byte 0x75, 0x65, 0x6E, 0x69, 0x63, 0x6B, 0x00, 0x00, 0x4C, 0x6F, 0x67, 0x69, 0x6E, 0x52, 0x65, 0x6D
	.byte 0x6F, 0x74, 0x65, 0x41, 0x75, 0x74, 0x68, 0x52, 0x65, 0x73, 0x75, 0x6C, 0x74, 0x00, 0x00, 0x00
	.byte 0x4C, 0x6F, 0x67, 0x69, 0x6E, 0x52, 0x65, 0x6D, 0x6F, 0x74, 0x65, 0x41, 0x75, 0x74, 0x68, 0x00
	.byte 0x61, 0x75, 0x74, 0x68, 0x74, 0x6F, 0x6B, 0x65, 0x6E, 0x00, 0x00, 0x00, 0x63, 0x68, 0x61, 0x6C
	.byte 0x6C, 0x65, 0x6E, 0x67, 0x65, 0x00, 0x00, 0x00, 0x53, 0x4F, 0x41, 0x50, 0x41, 0x63, 0x74, 0x69
	.byte 0x6F, 0x6E, 0x3A, 0x20, 0x22, 0x68, 0x74, 0x74, 0x70, 0x3A, 0x2F, 0x2F, 0x67, 0x61, 0x6D, 0x65
	.byte 0x73, 0x70, 0x79, 0x2E, 0x6E, 0x65, 0x74, 0x2F, 0x41, 0x75, 0x74, 0x68, 0x53, 0x65, 0x72, 0x76
	.byte 0x69, 0x63, 0x65, 0x2F, 0x4C, 0x6F, 0x67, 0x69, 0x6E, 0x52, 0x65, 0x6D, 0x6F, 0x74, 0x65, 0x41
	.byte 0x75, 0x74, 0x68, 0x22, 0x00, 0x00, 0x00, 0x00, 0x6C, 0x65, 0x6E, 0x67, 0x74, 0x68, 0x00, 0x00
	.byte 0x75, 0x73, 0x65, 0x72, 0x69, 0x64, 0x00, 0x00, 0x70, 0x72, 0x6F, 0x66, 0x69, 0x6C, 0x65, 0x69
	.byte 0x64, 0x00, 0x00, 0x00, 0x65, 0x78, 0x70, 0x69, 0x72, 0x65, 0x74, 0x69, 0x6D, 0x65, 0x00, 0x00
	.byte 0x63, 0x64, 0x6B, 0x65, 0x79, 0x68, 0x61, 0x73, 0x68, 0x00, 0x00, 0x00, 0x70, 0x65, 0x65, 0x72
	.byte 0x6B, 0x65, 0x79, 0x6D, 0x6F, 0x64, 0x75, 0x6C, 0x75, 0x73, 0x00, 0x00, 0x70, 0x65, 0x65, 0x72
	.byte 0x6B, 0x65, 0x79, 0x65, 0x78, 0x70, 0x6F, 0x6E, 0x65, 0x6E, 0x74, 0x00, 0x73, 0x65, 0x72, 0x76
	.byte 0x65, 0x72, 0x64, 0x61, 0x74, 0x61, 0x00, 0x00, 0x73, 0x69, 0x67, 0x6E, 0x61, 0x74, 0x75, 0x72
	.byte 0x65, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021BFCD8
