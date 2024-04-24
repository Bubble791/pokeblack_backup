    .include "macros/function.inc"
	.include "overlay168.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy168_21dda60
ovy168_21dda60: ; 0x021DDA60
	push {r4, r5}
	mov r5, #0x42
	mul r5, r1
	add r1, r0, r5
	lsl r0, r2, #2
	add r2, r1, r0
	ldr r0, _021DDA8C ; =0x0000FFFF
	mov r3, #0
	mov r4, #1
_021DDA72:
	lsl r1, r4, #4
	add r1, r2, r1
	ldrh r1, [r1, #2]
	cmp r1, r0
	beq _021DDA7E
	add r3, r3, #1
_021DDA7E:
	add r4, r4, #1
	cmp r4, #4
	blt _021DDA72
	add r0, r3, #0
	pop {r4, r5}
	bx lr
	nop
_021DDA8C: .word 0x0000FFFF
	thumb_func_end ovy168_21dda60

	thumb_func_start ovy168_21dda90
ovy168_21dda90: ; 0x021DDA90
	push {r3, r4, r5, lr}
	mov r3, #0xc
	add r4, r1, #0
	mul r4, r3
	mov r3, #0x3c
	mul r3, r1
	ldr r1, _021DDAC0 ; =0x021F2F54
	ldr r5, [r1, r4]
	add r1, r0, r3
	str r5, [r1, #0x34]
	ldr r5, _021DDAC4 ; =0x021F2F58
	add r0, #0x4c
	ldr r5, [r5, r4]
	add r0, r0, r3
	str r5, [r1, #0x38]
	ldr r5, _021DDAC8 ; =0x021F2F5C
	ldr r4, [r5, r4]
	str r4, [r1, #0x3c]
	str r2, [r1, #0x40]
	str r2, [r1, #0x44]
	str r2, [r1, #0x48]
	blx MTX_Identity33_
	pop {r3, r4, r5, pc}
	.align 2, 0
_021DDAC0: .word 0x021F2F54
_021DDAC4: .word 0x021F2F58
_021DDAC8: .word 0x021F2F5C
	thumb_func_end ovy168_21dda90

	thumb_func_start ovy168_21ddacc
ovy168_21ddacc: ; 0x021DDACC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r0, [sp, #4]
	str r2, [sp, #0xc]
	add r5, r3, #0
	mov r0, #0x9c
	str r1, [sp, #8]
	str r0, [sp]
	ldr r3, _021DDE20 ; =0x021F3F20
	add r0, r5, #0
	mov r1, #0xc4
	mov r2, #1
	bl GFL_HeapAllocate
	add r4, r0, #0
	ldr r2, _021DDE24 ; =0x00007FFF
	add r3, r5, #0
	and r3, r2
	add r2, r2, #1
	orr r2, r3
	lsl r2, r2, #0x10
	mov r0, #0x97
	mov r1, #2
	lsr r2, r2, #0x10
	bl sub_0204A934
	str r0, [sp, #0x24]
	add r0, r4, #0
	add r0, #0xc0
	strh r5, [r0]
	ldr r0, [sp, #0x40]
	sub r0, r0, #1
	cmp r0, #1
	bhi _021DDB14
	mov r0, #0x1b
	str r0, [sp, #8]
_021DDB14:
	ldr r0, [sp, #4]
	cmp r0, #3
	bne _021DDB32
	ldr r5, _021DDE28 ; =0x00000161
	mov r0, #0xb
	add r1, r5, #0
	bl sub_02049344
	str r0, [r4]
	mov r0, #0xb
	add r1, r5, #0
_021DDB2A:
	bl sub_02049344
	str r0, [r4, #4]
	b _021DDB7C
_021DDB32:
	ldr r0, [sp, #8]
	mov r1, #0x42
	add r6, r0, #0
	ldr r0, [sp, #0x24]
	mul r6, r1
	add r0, r0, #2
	add r5, r0, r6
	ldr r0, [sp, #0xc]
	lsl r7, r0, #1
	lsl r0, r7, #1
	ldrh r1, [r5, r0]
	ldr r0, _021DDE2C ; =0x0000FFFF
	cmp r1, r0
	beq _021DDB60
	mov r0, #0xb
	bl sub_02049344
	add r1, r7, #1
	str r0, [r4]
	lsl r1, r1, #1
	mov r0, #0xb
	ldrh r1, [r5, r1]
	b _021DDB2A
_021DDB60:
	ldrh r1, [r5]
	mov r0, #0xb
	bl sub_02049344
	ldr r1, [sp, #0x24]
	str r0, [r4]
	add r1, r1, r6
	ldrh r1, [r1, #4]
	mov r0, #0xb
	bl sub_02049344
	str r0, [r4, #4]
	mov r0, #0
	str r0, [sp, #0xc]
_021DDB7C:
	ldr r0, [r4]
	bl sub_020494AC
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	bl ovy168_21dda60
	strh r0, [r4, #8]
	ldr r0, [r4]
	mov r1, #0
	str r1, [sp, #0x20]
	mov r1, #0
	add r2, r0, #0
	bl sub_0204972C
	str r0, [r4, #0x24]
	ldr r0, [r4, #4]
	mov r1, #0
	add r2, r0, #0
	bl sub_0204972C
	str r0, [r4, #0x28]
	ldr r0, [sp, #4]
	cmp r0, #3
	bne _021DDC42
	mov r0, #1
	strh r0, [r4, #8]
	strh r0, [r4, #0xa]
	mov r5, #0xd6
	add r0, r4, #0
	str r5, [sp]
	add r0, #0xc0
	ldrh r0, [r0]
	ldr r3, _021DDE20 ; =0x021F3F20
	mov r1, #0xc
	mov r2, #1
	bl GFL_HeapAllocate
	add r5, #0x8c
	str r0, [r4, #0x14]
	mov r0, #0xb
	add r1, r5, #0
	bl sub_02049344
	ldr r1, [r4, #0x14]
	mov r6, #1
	str r0, [r1]
	mov r7, #0
_021DDBDE:
	ldr r0, [sp, #0x20]
	ldr r3, _021DDE20 ; =0x021F3F20
	lsl r0, r0, #2
	add r5, r4, r0
	mov r0, #0xdb
	str r0, [sp]
	add r0, r4, #0
	add r0, #0xc0
	ldrh r0, [r0]
	mov r1, #0xc
	add r2, r6, #0
	bl GFL_HeapAllocate
	str r0, [r5, #0x1c]
	mov r0, #0xdc
	str r0, [sp]
	add r0, r4, #0
	add r0, #0xc0
	ldrh r0, [r0]
	ldr r3, _021DDE20 ; =0x021F3F20
	mov r1, #0x10
	add r2, r6, #0
	bl GFL_HeapAllocate
	str r0, [r5, #0xc]
	ldr r1, [r4, #0x14]
	ldr r0, [r5, #0x24]
	ldr r1, [r1]
	add r2, r7, #0
	bl sub_0204980C
	ldr r1, [r5, #0x1c]
	str r0, [r1]
	ldr r0, [r5, #0xc]
	str r6, [r0]
	ldrh r2, [r4, #8]
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x1c]
	bl sub_020498B8
	add r1, r7, #0
	str r0, [r5, #0x2c]
	bl sub_02049974
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	str r0, [sp, #0x20]
	cmp r0, #2
	blt _021DDBDE
	b _021DDD6E
_021DDC42:
	ldrh r0, [r4, #8]
	cmp r0, #0
	bne _021DDC4A
	b _021DDD56
_021DDC4A:
	mov r0, #2
	ldr r5, [sp, #0x20]
	strh r0, [r4, #0xa]
	mov r6, #0xed
	mov r7, #0xc
_021DDC54:
	add r0, r4, #0
	str r6, [sp]
	add r0, #0xc0
	ldrh r0, [r0]
	ldr r3, _021DDE20 ; =0x021F3F20
	add r1, r7, #0
	mov r2, #1
	bl GFL_HeapAllocate
	lsl r1, r5, #2
	add r1, r4, r1
	add r5, r5, #1
	str r0, [r1, #0x14]
	cmp r5, #2
	blt _021DDC54
	mov r0, #1
	ldr r7, _021DDE20 ; =0x021F3F20
	mov r5, #0
	str r0, [sp, #0x10]
_021DDC7A:
	lsl r0, r5, #2
	add r6, r4, r0
	mov r0, #0xf3
	str r0, [sp]
	add r0, r4, #0
	add r0, #0xc0
	ldrh r0, [r0]
	ldr r2, [sp, #0x10]
	mov r1, #0xc
	add r3, r7, #0
	bl GFL_HeapAllocate
	str r0, [r6, #0x1c]
	mov r0, #0xf4
	str r0, [sp]
	add r0, r4, #0
	add r0, #0xc0
	ldrh r0, [r0]
	ldr r2, [sp, #0x10]
	mov r1, #0x30
	add r3, r7, #0
	bl GFL_HeapAllocate
	add r5, r5, #1
	str r0, [r6, #0xc]
	cmp r5, #2
	blt _021DDC7A
	ldr r0, [sp, #8]
	mov r1, #0x42
	mul r1, r0
	ldr r0, [sp, #0x24]
	add r1, r0, r1
	ldr r0, [sp, #0xc]
	lsl r0, r0, #2
	add r0, r1, r0
	str r0, [sp, #0x1c]
_021DDCC2:
	ldr r0, [sp, #0x10]
	lsl r1, r0, #4
	ldr r0, [sp, #0x1c]
	add r0, r0, r1
	ldrh r1, [r0, #2]
	str r0, [sp, #0x18]
	ldr r0, _021DDE2C ; =0x0000FFFF
	cmp r1, r0
	beq _021DDD18
	ldr r0, [sp, #0x20]
	mov r6, #0
	lsl r7, r0, #2
	lsl r0, r0, #4
	str r0, [sp, #0x14]
_021DDCDE:
	ldr r1, [sp, #0x18]
	lsl r2, r6, #1
	add r1, r1, r2
	ldrh r1, [r1, #2]
	lsl r0, r6, #2
	add r5, r4, r0
	mov r0, #0xb
	bl sub_02049344
	ldr r1, [r5, #0x14]
	mov r2, #0
	str r0, [r7, r1]
	ldr r1, [r5, #0x14]
	ldr r0, [r5, #0x24]
	ldr r1, [r7, r1]
	bl sub_0204980C
	ldr r1, [r5, #0x1c]
	add r6, r6, #1
	str r0, [r7, r1]
	mov r1, #0
	ldr r2, [r5, #0xc]
	ldr r0, [sp, #0x14]
	cmp r6, #2
	str r1, [r0, r2]
	blt _021DDCDE
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	str r0, [sp, #0x20]
_021DDD18:
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #3
	ble _021DDCC2
	mov r7, #0
_021DDD24:
	lsl r0, r7, #2
	add r6, r4, r0
	ldrh r2, [r4, #8]
	ldr r0, [r6, #0x24]
	ldr r1, [r6, #0x1c]
	bl sub_020498B8
	str r0, [r6, #0x2c]
	ldrh r0, [r4, #8]
	mov r5, #0
	cmp r0, #0
	ble _021DDD4E
_021DDD3C:
	lsl r1, r5, #0x10
	ldr r0, [r6, #0x2c]
	lsr r1, r1, #0x10
	bl sub_02049974
	ldrh r0, [r4, #8]
	add r5, r5, #1
	cmp r5, r0
	blt _021DDD3C
_021DDD4E:
	add r7, r7, #1
	cmp r7, #2
	blt _021DDD24
	b _021DDD6E
_021DDD56:
	ldr r1, [sp, #0x20]
	ldr r0, [r4, #0x24]
	add r2, r1, #0
	bl sub_020498B8
	ldr r1, [sp, #0x20]
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x28]
	add r2, r1, #0
	bl sub_020498B8
	str r0, [r4, #0x30]
_021DDD6E:
	ldr r0, [r4]
	bl sub_02049430
	bl sub_02068664
	ldrh r0, [r0, #0x30]
	mov r6, #0x12
	lsl r6, r6, #4
	lsl r5, r0, #3
	add r0, r4, #0
	str r6, [sp]
	add r0, #0xc0
	ldrh r0, [r0]
	ldr r3, _021DDE20 ; =0x021F3F20
	mov r1, #4
	mov r2, #1
	mov r7, #1
	bl GFL_HeapAllocate
	add r1, r4, #0
	add r1, #0xac
	str r0, [r1]
	add r0, r6, #1
	str r0, [sp]
	add r0, r4, #0
	add r0, #0xc0
	ldrh r0, [r0]
	ldr r3, _021DDE20 ; =0x021F3F20
	mov r1, #4
	mov r2, #1
	bl GFL_HeapAllocate
	add r1, r4, #0
	add r1, #0xb0
	str r0, [r1]
	add r0, r4, #0
	add r0, #0xac
	ldr r1, [r4]
	ldr r0, [r0]
	ldr r3, _021DDE20 ; =0x021F3F20
	str r1, [r0]
	add r0, r6, #4
	str r0, [sp]
	add r0, r4, #0
	add r0, #0xc0
	ldrh r0, [r0]
	add r1, r5, #0
	mov r2, #1
	bl GFL_HeapAllocate
	add r1, r4, #0
	add r1, #0xb0
	ldr r1, [r1]
	lsl r5, r7, #0xc
	str r0, [r1]
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb4
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0xb5
	strb r7, [r0]
	ldr r0, [sp, #4]
	cmp r0, #2
	bne _021DDDF6
	mov r5, #6
	lsl r5, r5, #0xa
	b _021DDDFC
_021DDDF6:
	cmp r0, #1
	bne _021DDDFC
	ldr r5, _021DDE30 ; =0x00001333
_021DDDFC:
	add r0, r4, #0
	mov r1, #0
	add r2, r5, #0
	bl ovy168_21dda90
	add r0, r4, #0
	mov r1, #1
	add r2, r5, #0
	bl ovy168_21dda90
	ldr r0, [sp, #4]
	cmp r0, #3
	bne _021DDE3A
	mov r0, #0xa
	lsl r0, r0, #0xc
	str r0, [r4, #0x3c]
	ldr r0, _021DDE34 ; =0xFFFF1000
	b _021DDE38
	.align 2, 0
_021DDE20: .word 0x021F3F20
_021DDE24: .word 0x00007FFF
_021DDE28: .word 0x00000161
_021DDE2C: .word 0x0000FFFF
_021DDE30: .word 0x00001333
_021DDE34: .word 0xFFFF1000
_021DDE38:
	str r0, [r4, #0x78]
_021DDE3A:
	ldr r0, [sp, #8]
	mov r1, #0x42
	mul r1, r0
	ldr r0, [sp, #0x24]
	add r0, r0, r1
	bl G3X_SetEdgeColorTable
	ldr r0, [sp, #0x24]
	bl GFL_HeapFree
	add r0, r4, #0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy168_21ddacc

	thumb_func_start ovy168_21dde54
ovy168_21dde54: ; 0x021DDE54
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldrh r0, [r4, #8]
	cmp r0, #0
	beq _021DDED2
	mov r7, #0
_021DDE60:
	mov r5, #0
	lsl r6, r7, #2
_021DDE64:
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r0, [r0, #0x1c]
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _021DDE74
	bl sub_02049888
_021DDE74:
	add r5, r5, #1
	cmp r5, #2
	blt _021DDE64
	ldrh r0, [r4, #0xa]
	mov r5, #0
	cmp r0, #0
	ble _021DDE9A
_021DDE82:
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r0, [r0, #0x14]
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _021DDE92
	bl sub_02049404
_021DDE92:
	ldrh r0, [r4, #0xa]
	add r5, r5, #1
	cmp r5, r0
	blt _021DDE82
_021DDE9A:
	add r7, r7, #1
	cmp r7, #3
	blt _021DDE60
	mov r5, #0
_021DDEA2:
	lsl r0, r5, #2
	add r6, r4, r0
	ldr r0, [r6, #0x1c]
	bl GFL_HeapFree
	ldr r0, [r6, #0xc]
	bl GFL_HeapFree
	add r5, r5, #1
	cmp r5, #2
	blt _021DDEA2
	ldrh r0, [r4, #0xa]
	mov r5, #0
	cmp r0, #0
	ble _021DDED2
_021DDEC0:
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r0, [r0, #0x14]
	bl GFL_HeapFree
	ldrh r0, [r4, #0xa]
	add r5, r5, #1
	cmp r5, r0
	blt _021DDEC0
_021DDED2:
	mov r5, #0
_021DDED4:
	lsl r0, r5, #2
	add r6, r4, r0
	ldr r0, [r6, #0x2c]
	bl sub_02049934
	ldr r0, [r6, #0x24]
	bl sub_020497D4
	add r5, r5, #1
	cmp r5, #2
	blt _021DDED4
	ldr r0, [r4, #4]
	bl sub_02049404
	ldr r0, [r4]
	bl sub_02049404
	add r0, r4, #0
	add r0, #0xb0
	ldr r0, [r0]
	ldr r0, [r0]
	bl GFL_HeapFree
	add r0, r4, #0
	add r0, #0xb0
	ldr r0, [r0]
	bl GFL_HeapFree
	add r0, r4, #0
	add r0, #0xac
	ldr r0, [r0]
	bl GFL_HeapFree
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy168_21dde54

	thumb_func_start ovy168_21ddf20
ovy168_21ddf20: ; 0x021DDF20
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldrh r1, [r6, #8]
	cmp r1, #0
	beq _021DDF92
	mov r0, #0
	str r0, [sp]
	cmp r1, #0
	ble _021DDF92
_021DDF32:
	ldr r0, [sp]
	mov r4, #0
	lsl r5, r0, #4
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
_021DDF3C:
	lsl r0, r4, #2
	add r1, r6, r0
	ldr r3, [r1, #0xc]
	mov r2, #0
	add r0, r5, r3
	ldr r3, [r5, r3]
	cmp r3, #0
	beq _021DDF52
	cmp r3, #1
	beq _021DDF58
	b _021DDF74
_021DDF52:
	mov r2, #1
	lsl r2, r2, #0xc
	b _021DDF74
_021DDF58:
	ldr r3, [r0, #4]
	cmp r3, #1
	bne _021DDF74
	ldr r3, [r0, #0xc]
	ldr r2, [r0, #8]
	sub r3, r3, #1
	str r3, [r0, #0xc]
	ldr r0, [r1, #0xc]
	add r0, r5, r0
	ldr r3, [r0, #0xc]
	cmp r3, #0
	bne _021DDF74
	mov r3, #0
	str r3, [r0, #4]
_021DDF74:
	cmp r2, #0
	beq _021DDF80
	ldr r0, [r1, #0x2c]
	add r1, r7, #0
	bl sub_02049A64
_021DDF80:
	add r4, r4, #1
	cmp r4, #2
	blt _021DDF3C
	ldr r0, [sp]
	ldrh r1, [r6, #8]
	add r0, r0, #1
	str r0, [sp]
	cmp r0, r1
	blt _021DDF32
_021DDF92:
	add r6, #0xac
	add r0, r6, #0
	bl ovy168_21e0d54
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy168_21ddf20

	thumb_func_start ovy168_21ddf9c
ovy168_21ddf9c: ; 0x021DDF9C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r5, #0
	mov r4, #0
	add r6, #0x34
	mov r7, #1
_021DDFA8:
	add r0, r5, #0
	add r0, #0xbc
	ldr r0, [r0]
	lsl r0, r0, #0x1e
	lsr r1, r0, #0x1e
	add r0, r7, #0
	lsl r0, r4
	tst r0, r1
	bne _021DDFCA
	lsl r0, r4, #2
	add r0, r5, r0
	mov r1, #0x3c
	mul r1, r4
	ldr r0, [r0, #0x2c]
	add r1, r6, r1
	bl sub_02049B5C
_021DDFCA:
	add r4, r4, #1
	cmp r4, #2
	blt _021DDFA8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy168_21ddf9c

	thumb_func_start ovy168_21ddfd4
ovy168_21ddfd4: ; 0x021DDFD4
	push {r4, r5}
	add r4, r0, #0
	mov r5, #1
	add r4, #0xb4
	strb r5, [r4]
	add r4, r0, #0
	add r4, #0xb6
	strb r1, [r4]
	add r1, r0, #0
	add r1, #0xb7
	strb r2, [r1]
	add r1, r0, #0
	mov r2, #0
	add r1, #0xb8
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0xb9
	strb r3, [r1]
	add r1, sp, #8
	ldrh r1, [r1]
	add r0, #0xba
	strh r1, [r0]
	pop {r4, r5}
	bx lr
	thumb_func_end ovy168_21ddfd4

	thumb_func_start ovy168_21de004
ovy168_21de004: ; 0x021DE004
	add r0, #0xb4
	ldrb r0, [r0]
	cmp r0, #0
	beq _021DE010
	mov r0, #1
	bx lr
_021DE010:
	mov r0, #0
	bx lr
	thumb_func_end ovy168_21de004

	thumb_func_start ovy168_21de014
ovy168_21de014: ; 0x021DE014
	push {r3, r4}
	cmp r1, #2
	bne _021DE046
	cmp r2, #0
	beq _021DE034
	add r1, r0, #0
	add r1, #0xbc
	ldr r2, [r1]
	mov r1, #3
	bic r2, r1
	mov r1, #3
	orr r1, r2
	add r0, #0xbc
	str r1, [r0]
	pop {r3, r4}
	bx lr
_021DE034:
	add r1, r0, #0
	add r1, #0xbc
	ldr r2, [r1]
	mov r1, #3
	bic r2, r1
	add r0, #0xbc
	str r2, [r0]
	pop {r3, r4}
	bx lr
_021DE046:
	cmp r2, #0
	beq _021DE06E
	add r2, r0, #0
	add r2, #0xbc
	ldr r4, [r2]
	mov r3, #3
	add r2, r4, #0
	bic r2, r3
	lsl r3, r4, #0x1e
	lsr r4, r3, #0x1e
	mov r3, #1
	lsl r3, r1
	orr r3, r4
	mov r1, #3
	and r1, r3
	orr r1, r2
	add r0, #0xbc
	str r1, [r0]
	pop {r3, r4}
	bx lr
_021DE06E:
	add r2, r0, #0
	add r2, #0xbc
	ldr r4, [r2]
	mov r3, #3
	add r2, r4, #0
	bic r2, r3
	lsl r3, r4, #0x1e
	lsr r4, r3, #0x1e
	mov r3, #1
	lsl r3, r1
	mov r1, #3
	eor r3, r1
	and r3, r4
	and r1, r3
	orr r1, r2
	add r0, #0xbc
	str r1, [r0]
	pop {r3, r4}
	bx lr
	thumb_func_end ovy168_21de014

	thumb_func_start ovy168_21de094
ovy168_21de094: ; 0x021DE094
	push {r3, r4, r5, r6}
	lsl r5, r1, #2
	add r0, #0xc
	ldr r4, [r0, r5]
	lsl r1, r2, #4
	ldr r2, [r4, r1]
	cmp r2, #1
	bne _021DE0B8
	mov r6, #1
	add r2, r4, r1
	str r6, [r2, #4]
	ldr r2, [r0, r5]
	add r2, r2, r1
	str r3, [r2, #8]
	ldr r0, [r0, r5]
	ldr r2, [sp, #0x10]
	add r0, r0, r1
	str r2, [r0, #0xc]
_021DE0B8:
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end ovy168_21de094

	thumb_func_start ovy168_21de0bc
ovy168_21de0bc: ; 0x021DE0BC
	push {r4, r5}
	ldrh r3, [r0, #8]
	mov r1, #0
	cmp r3, #0
	ble _021DE0E8
	ldr r2, [r0, #0xc]
_021DE0C8:
	lsl r5, r1, #4
	add r4, r2, r5
	ldr r4, [r4, #4]
	cmp r4, #1
	beq _021DE0DC
	ldr r4, [r0, #0x10]
	add r4, r4, r5
	ldr r4, [r4, #4]
	cmp r4, #1
	bne _021DE0E2
_021DE0DC:
	mov r0, #1
	pop {r4, r5}
	bx lr
_021DE0E2:
	add r1, r1, #1
	cmp r1, r3
	blt _021DE0C8
_021DE0E8:
	mov r0, #0
	pop {r4, r5}
	bx lr
	.align 2, 0
	thumb_func_end ovy168_21de0bc

	thumb_func_start ovy168_21de0f0
ovy168_21de0f0: ; 0x021DE0F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r3, #0
	mov r0, #0x76
	add r6, r1, #0
	add r5, r2, #0
	str r0, [sp]
	ldr r3, _021DE314 ; =0x021F3F30
	add r0, r7, #0
	mov r1, #0x7c
	mov r2, #1
	bl GFL_HeapAllocate
	add r4, r0, #0
	ldr r2, _021DE318 ; =0x00007FFF
	add r3, r7, #0
	and r3, r2
	add r2, r2, #1
	orr r2, r3
	lsl r2, r2, #0x10
	mov r0, #0x97
	mov r1, #1
	lsr r2, r2, #0x10
	bl sub_0204A934
	str r0, [sp, #8]
	ldr r0, [sp, #0x20]
	cmp r0, #1
	bne _021DE12E
	mov r6, #0x14
	b _021DE15C
_021DE12E:
	cmp r0, #2
	bne _021DE15C
	ldr r1, [sp, #0x24]
	cmp r1, #0
	bne _021DE13E
	mov r6, #0x15
	mov r5, #0
	b _021DE150
_021DE13E:
	lsl r0, r1, #0x18
	lsr r6, r0, #0x18
	asr r0, r1, #8
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	beq _021DE150
	add r0, r5, #3
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
_021DE150:
	lsl r0, r5, #8
	add r1, r6, #0
	orr r1, r0
	add r0, r4, #0
	add r0, #0x78
	strh r1, [r0]
_021DE15C:
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _021DE168
	cmp r6, #0x2e
	bne _021DE168
	mov r5, #4
_021DE168:
	add r0, r4, #0
	add r0, #0x70
	strh r7, [r0]
	ldr r0, [sp, #8]
	lsl r1, r6, #6
	str r6, [r4, #0x6c]
	add r6, r0, r1
	lsl r5, r5, #1
	ldrh r1, [r6, r5]
	ldr r0, _021DE31C ; =0x0000FFFF
	cmp r1, r0
	beq _021DE184
	mov r0, #0xb
	b _021DE188
_021DE184:
	ldrh r1, [r6]
	mov r0, #0xb
_021DE188:
	bl sub_02049344
	str r0, [r4]
	ldr r0, [r4]
	bl sub_020494AC
	mov r0, #0
	add r1, r6, r5
	str r0, [r4, #4]
	ldr r2, _021DE31C ; =0x0000FFFF
	mov r0, #1
	str r1, [sp, #4]
_021DE1A0:
	ldr r1, [sp, #4]
	lsl r3, r0, #4
	ldrh r1, [r1, r3]
	cmp r1, r2
	beq _021DE1B0
	ldr r1, [r4, #4]
	add r1, r1, #1
	str r1, [r4, #4]
_021DE1B0:
	add r0, r0, #1
	cmp r0, #4
	blt _021DE1A0
	ldr r0, [r4]
	mov r1, #0
	add r2, r0, #0
	mov r5, #0
	bl sub_0204972C
	str r0, [r4, #0x14]
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _021DE278
	mov r0, #0xc0
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x70
	ldr r6, _021DE314 ; =0x021F3F30
	ldrh r0, [r0]
	lsl r1, r1, #2
	add r2, r5, #0
	add r3, r6, #0
	bl GFL_HeapAllocate
	str r0, [r4, #0xc]
	mov r0, #0xc1
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x70
	ldr r1, [r4, #4]
	ldrh r0, [r0]
	lsl r1, r1, #2
	add r2, r5, #0
	add r3, r6, #0
	bl GFL_HeapAllocate
	str r0, [r4, #0x10]
	mov r0, #0xc2
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x70
	ldr r1, [r4, #4]
	ldrh r0, [r0]
	lsl r1, r1, #4
	mov r2, #1
	add r3, r6, #0
	mov r7, #1
	bl GFL_HeapAllocate
	str r0, [r4, #8]
_021DE214:
	ldr r0, [sp, #4]
	lsl r1, r7, #4
	ldrh r1, [r0, r1]
	ldr r0, _021DE31C ; =0x0000FFFF
	cmp r1, r0
	beq _021DE246
	mov r0, #0xb
	lsl r6, r5, #2
	bl sub_02049344
	ldr r1, [r4, #0xc]
	mov r2, #0
	str r0, [r1, r6]
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x14]
	ldr r1, [r1, r6]
	bl sub_0204980C
	ldr r1, [r4, #0x10]
	str r0, [r1, r6]
	lsl r1, r5, #4
	ldr r2, [r4, #8]
	mov r0, #0
	str r0, [r2, r1]
	add r5, r5, #1
_021DE246:
	add r7, r7, #1
	cmp r7, #4
	blt _021DE214
	ldr r2, [r4, #4]
	ldr r0, [r4, #0x14]
	lsl r2, r2, #0x10
	ldr r1, [r4, #0x10]
	lsr r2, r2, #0x10
	bl sub_020498B8
	str r0, [r4, #0x18]
	ldr r0, [r4, #4]
	mov r5, #0
	cmp r0, #0
	ble _021DE284
_021DE264:
	lsl r1, r5, #0x10
	ldr r0, [r4, #0x18]
	lsr r1, r1, #0x10
	bl sub_02049974
	ldr r0, [r4, #4]
	add r5, r5, #1
	cmp r5, r0
	blt _021DE264
	b _021DE284
_021DE278:
	ldr r0, [r4, #0x14]
	add r1, r5, #0
	add r2, r5, #0
	bl sub_020498B8
	str r0, [r4, #0x18]
_021DE284:
	mov r6, #0
	str r6, [r4, #0x1c]
	str r6, [r4, #0x20]
	mov r0, #1
	str r6, [r4, #0x24]
	lsl r0, r0, #0xc
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	str r0, [r4, #0x30]
	add r0, r4, #0
	add r0, #0x34
	blx MTX_Identity33_
	ldr r0, [r4]
	bl sub_02049430
	bl sub_02068664
	ldrh r0, [r0, #0x30]
	ldr r7, _021DE314 ; =0x021F3F30
	mov r1, #4
	lsl r5, r0, #3
	mov r0, #0xea
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x70
	ldrh r0, [r0]
	mov r2, #0
	add r3, r7, #0
	bl GFL_HeapAllocate
	str r0, [r4, #0x58]
	mov r0, #0xeb
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x70
	ldrh r0, [r0]
	mov r1, #4
	mov r2, #0
	add r3, r7, #0
	bl GFL_HeapAllocate
	str r0, [r4, #0x5c]
	ldr r1, [r4]
	ldr r0, [r4, #0x58]
	mov r2, #0
	str r1, [r0]
	mov r0, #0xee
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x70
	ldrh r0, [r0]
	add r1, r5, #0
	add r3, r7, #0
	bl GFL_HeapAllocate
	ldr r1, [r4, #0x5c]
	str r0, [r1]
	add r0, r4, #0
	add r0, #0x60
	strb r6, [r0]
	add r0, r4, #0
	mov r1, #1
	add r0, #0x61
	strb r1, [r0]
	ldr r0, [sp, #8]
	bl GFL_HeapFree
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021DE314: .word 0x021F3F30
_021DE318: .word 0x00007FFF
_021DE31C: .word 0x0000FFFF
	thumb_func_end ovy168_21de0f0

	thumb_func_start ovy168_21de320
ovy168_21de320: ; 0x021DE320
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x18]
	bl sub_02049934
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _021DE362
	mov r4, #0
	cmp r0, #0
	ble _021DE350
_021DE336:
	ldr r0, [r5, #0x10]
	lsl r6, r4, #2
	ldr r0, [r0, r6]
	bl sub_02049888
	ldr r0, [r5, #0xc]
	ldr r0, [r0, r6]
	bl sub_02049404
	ldr r0, [r5, #4]
	add r4, r4, #1
	cmp r4, r0
	blt _021DE336
_021DE350:
	ldr r0, [r5, #8]
	bl GFL_HeapFree
	ldr r0, [r5, #0x10]
	bl GFL_HeapFree
	ldr r0, [r5, #0xc]
	bl GFL_HeapFree
_021DE362:
	pop {r4, r5, r6, pc}
	thumb_func_end ovy168_21de320

	thumb_func_start ovy168_21de364
ovy168_21de364: ; 0x021DE364
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	str r1, [sp, #4]
	bl ovy168_21de570
	add r2, r5, #0
	add r2, #0x70
	ldrh r3, [r2]
	ldr r2, _021DE544 ; =0x00007FFF
	mov r0, #0x97
	and r3, r2
	add r2, r2, #1
	orr r2, r3
	lsl r2, r2, #0x10
	mov r1, #1
	lsr r2, r2, #0x10
	bl sub_0204A934
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	asr r0, r0, #8
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldr r0, _021DE548 ; =0x021F2F6C
	ldrb r0, [r0, r1]
	lsl r2, r0, #1
	ldr r0, [sp, #4]
	lsl r0, r0, #0x18
	lsr r1, r0, #0x12
	ldr r0, [sp, #0xc]
	add r1, r0, r1
	add r0, r1, r2
	str r0, [sp, #8]
	ldrh r1, [r1, r2]
	ldr r0, _021DE54C ; =0x0000FFFF
	cmp r1, r0
	beq _021DE3B8
	mov r0, #0xb
	bl sub_02049344
	str r0, [r5]
_021DE3B8:
	ldr r0, [r5]
	bl sub_020495A0
	ldr r0, _021DE550 ; =ovy168_21de55c
	add r1, r5, #0
	mov r2, #0xa
	bl GFL_VBlankTCBAdd
	str r0, [r5, #0x74]
	mov r0, #0
	str r0, [r5, #4]
	ldr r2, _021DE54C ; =0x0000FFFF
	mov r0, #1
_021DE3D2:
	ldr r1, [sp, #8]
	lsl r3, r0, #4
	ldrh r1, [r1, r3]
	cmp r1, r2
	beq _021DE3E2
	ldr r1, [r5, #4]
	add r1, r1, #1
	str r1, [r5, #4]
_021DE3E2:
	add r0, r0, #1
	cmp r0, #4
	blt _021DE3D2
	ldr r0, [r5]
	mov r1, #0
	add r2, r0, #0
	mov r4, #0
	bl sub_0204972C
	ldr r1, [r5, #4]
	str r0, [r5, #0x14]
	cmp r1, #0
	beq _021DE4A8
	ldr r6, _021DE554 ; =0x000001CA
	add r0, r5, #0
	str r6, [sp]
	add r0, #0x70
	ldrh r0, [r0]
	ldr r3, _021DE558 ; =0x021F3F30
	lsl r1, r1, #2
	add r2, r4, #0
	bl GFL_HeapAllocate
	str r0, [r5, #0xc]
	add r0, r6, #1
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x70
	ldr r1, [r5, #4]
	ldrh r0, [r0]
	ldr r3, _021DE558 ; =0x021F3F30
	lsl r1, r1, #2
	add r2, r4, #0
	bl GFL_HeapAllocate
	str r0, [r5, #0x10]
	add r0, r6, #2
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x70
	ldr r1, [r5, #4]
	ldrh r0, [r0]
	ldr r3, _021DE558 ; =0x021F3F30
	lsl r1, r1, #4
	mov r2, #1
	mov r7, #1
	bl GFL_HeapAllocate
	str r0, [r5, #8]
_021DE444:
	ldr r0, [sp, #8]
	lsl r1, r7, #4
	ldrh r1, [r0, r1]
	ldr r0, _021DE54C ; =0x0000FFFF
	cmp r1, r0
	beq _021DE476
	mov r0, #0xb
	lsl r6, r4, #2
	bl sub_02049344
	ldr r1, [r5, #0xc]
	mov r2, #0
	str r0, [r1, r6]
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, [r1, r6]
	bl sub_0204980C
	ldr r1, [r5, #0x10]
	str r0, [r1, r6]
	lsl r1, r4, #4
	ldr r2, [r5, #8]
	mov r0, #0
	str r0, [r2, r1]
	add r4, r4, #1
_021DE476:
	add r7, r7, #1
	cmp r7, #4
	blt _021DE444
	ldr r2, [r5, #4]
	ldr r0, [r5, #0x14]
	lsl r2, r2, #0x10
	ldr r1, [r5, #0x10]
	lsr r2, r2, #0x10
	bl sub_020498B8
	str r0, [r5, #0x18]
	ldr r0, [r5, #4]
	mov r4, #0
	cmp r0, #0
	ble _021DE4B2
_021DE494:
	lsl r1, r4, #0x10
	ldr r0, [r5, #0x18]
	lsr r1, r1, #0x10
	bl sub_02049974
	ldr r0, [r5, #4]
	add r4, r4, #1
	cmp r4, r0
	blt _021DE494
	b _021DE4B2
_021DE4A8:
	add r1, r4, #0
	add r2, r4, #0
	bl sub_020498B8
	str r0, [r5, #0x18]
_021DE4B2:
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [r5, #0x28]
	mov r7, #0
	str r0, [r5, #0x2c]
	str r0, [r5, #0x30]
	add r0, r5, #0
	add r0, #0x34
	str r7, [r5, #0x1c]
	str r7, [r5, #0x20]
	str r7, [r5, #0x24]
	blx MTX_Identity33_
	ldr r0, [r5]
	bl sub_02049430
	bl sub_02068664
	ldrh r0, [r0, #0x30]
	mov r6, #0x7d
	lsl r6, r6, #2
	lsl r4, r0, #3
	add r0, r5, #0
	str r6, [sp]
	add r0, #0x70
	ldrh r0, [r0]
	ldr r3, _021DE558 ; =0x021F3F30
	mov r1, #4
	mov r2, #0
	bl GFL_HeapAllocate
	str r0, [r5, #0x58]
	add r0, r6, #1
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x70
	ldrh r0, [r0]
	ldr r3, _021DE558 ; =0x021F3F30
	mov r1, #4
	mov r2, #0
	bl GFL_HeapAllocate
	str r0, [r5, #0x5c]
	ldr r1, [r5]
	ldr r0, [r5, #0x58]
	ldr r3, _021DE558 ; =0x021F3F30
	str r1, [r0]
	add r0, r6, #4
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x70
	ldrh r0, [r0]
	add r1, r4, #0
	mov r2, #0
	bl GFL_HeapAllocate
	ldr r1, [r5, #0x5c]
	str r0, [r1]
	add r0, r5, #0
	add r0, #0x60
	strb r7, [r0]
	add r0, r5, #0
	mov r1, #1
	add r0, #0x61
	strb r1, [r0]
	ldr r0, [sp, #0xc]
	bl GFL_HeapFree
	ldr r0, [sp, #4]
	add r5, #0x78
	strh r0, [r5]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021DE544: .word 0x00007FFF
_021DE548: .word 0x021F2F6C
_021DE54C: .word 0x0000FFFF
_021DE550: .word ovy168_21de55c
_021DE554: .word 0x000001CA
_021DE558: .word 0x021F3F30
	thumb_func_end ovy168_21de364

	thumb_func_start ovy168_21de55c
ovy168_21de55c: ; 0x021DE55C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r1]
	bl sub_020495F0
	add r0, r4, #0
	bl GFL_TCBRemove
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy168_21de55c

	thumb_func_start ovy168_21de570
ovy168_21de570: ; 0x021DE570
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x5c]
	ldr r0, [r0]
	bl GFL_HeapFree
	ldr r0, [r4, #0x5c]
	bl GFL_HeapFree
	ldr r0, [r4, #0x58]
	bl GFL_HeapFree
	add r0, r4, #0
	bl ovy168_21de320
	ldr r0, [r4]
	bl sub_02049534
	ldr r0, [r4, #0x14]
	bl sub_020497D4
	ldr r0, [r4]
	bl sub_02049404
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy168_21de570

	thumb_func_start ovy168_21de5a4
ovy168_21de5a4: ; 0x021DE5A4
	push {r4, lr}
	add r4, r0, #0
	bl ovy168_21de320
	ldr r0, [r4, #0x14]
	bl sub_020497D4
	ldr r0, [r4]
	bl sub_02049404
	ldr r0, [r4, #0x5c]
	ldr r0, [r0]
	bl GFL_HeapFree
	ldr r0, [r4, #0x5c]
	bl GFL_HeapFree
	ldr r0, [r4, #0x58]
	bl GFL_HeapFree
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	thumb_func_end ovy168_21de5a4

	thumb_func_start ovy168_21de5d4
ovy168_21de5d4: ; 0x021DE5D4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r1, [r5, #0x68]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1f
	beq _021DE5E8
	mov r0, #2
	bic r1, r0
	str r1, [r5, #0x68]
	pop {r3, r4, r5, r6, r7, pc}
_021DE5E8:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _021DE642
	mov r4, #0
	cmp r0, #0
	ble _021DE642
	mov r7, #1
	lsl r7, r7, #0xc
	add r6, r4, #0
_021DE5FA:
	ldr r3, [r5, #8]
	lsl r1, r4, #4
	add r0, r3, r1
	ldr r3, [r3, r1]
	add r2, r6, #0
	cmp r3, #0
	beq _021DE60E
	cmp r3, #1
	beq _021DE612
	b _021DE62C
_021DE60E:
	add r2, r7, #0
	b _021DE62C
_021DE612:
	ldr r3, [r0, #4]
	cmp r3, #1
	bne _021DE62C
	ldr r3, [r0, #0xc]
	ldr r2, [r0, #8]
	sub r3, r3, #1
	str r3, [r0, #0xc]
	ldr r0, [r5, #8]
	add r1, r0, r1
	ldr r0, [r1, #0xc]
	cmp r0, #0
	bne _021DE62C
	str r6, [r1, #4]
_021DE62C:
	cmp r2, #0
	beq _021DE63A
	lsl r1, r4, #0x10
	ldr r0, [r5, #0x18]
	lsr r1, r1, #0x10
	bl sub_02049A64
_021DE63A:
	ldr r0, [r5, #4]
	add r4, r4, #1
	cmp r4, r0
	blt _021DE5FA
_021DE642:
	add r5, #0x58
	add r0, r5, #0
	bl ovy168_21e0d54
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy168_21de5d4

	thumb_func_start ovy168_21de64c
ovy168_21de64c: ; 0x021DE64C
	push {r3, lr}
	add r1, r0, #0
	ldr r0, [r1, #0x68]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bne _021DE660
	ldr r0, [r1, #0x18]
	add r1, #0x1c
	bl sub_02049B5C
_021DE660:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy168_21de64c

	thumb_func_start ovy168_21de664
ovy168_21de664: ; 0x021DE664
	push {r4, r5}
	add r4, r0, #0
	mov r5, #1
	add r4, #0x60
	strb r5, [r4]
	add r4, r0, #0
	add r4, #0x62
	strb r1, [r4]
	add r1, r0, #0
	add r1, #0x63
	strb r2, [r1]
	add r1, r0, #0
	mov r2, #0
	add r1, #0x64
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0x65
	strb r3, [r1]
	add r1, sp, #8
	ldrh r1, [r1]
	add r0, #0x66
	strh r1, [r0]
	pop {r4, r5}
	bx lr
	thumb_func_end ovy168_21de664

	thumb_func_start ovy168_21de694
ovy168_21de694: ; 0x021DE694
	add r0, #0x60
	ldrb r0, [r0]
	cmp r0, #0
	beq _021DE6A0
	mov r0, #1
	bx lr
_021DE6A0:
	mov r0, #0
	bx lr
	thumb_func_end ovy168_21de694

	thumb_func_start ovy168_21de6a4
ovy168_21de6a4: ; 0x021DE6A4
	ldr r3, [r0, #0x68]
	mov r2, #1
	bic r3, r2
	mov r2, #1
	and r1, r2
	orr r1, r3
	str r1, [r0, #0x68]
	bx lr
	thumb_func_end ovy168_21de6a4

	thumb_func_start ovy168_21de6b4
ovy168_21de6b4: ; 0x021DE6B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #0x56
	str r0, [sp]
	ldr r3, _021DE71C ; =0x021F3F40
	add r0, r5, #0
	mov r1, #0xb8
	mov r2, #1
	mov r7, #1
	bl GFL_HeapAllocate
	add r4, r0, #0
	add r0, #0xb4
	strh r5, [r0]
	str r6, [r4]
	mov r0, #0
	str r0, [sp]
	lsl r1, r7, #0xc
	str r1, [sp, #4]
	lsl r1, r7, #0x15
	str r1, [sp, #8]
	ldr r1, _021DE720 ; =0x021F2F80
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r1, _021DE724 ; =0x021F2F8C
	ldr r2, _021DE728 ; =0x00000F97
	str r1, [sp, #0x14]
	ldr r1, _021DE72C ; =0x021F2F74
	ldr r3, _021DE730 ; =0x0000159A
	str r1, [sp, #0x18]
	ldr r1, _021DE734 ; =0x00000399
	str r5, [sp, #0x1c]
	bl sub_0204A5C8
	str r0, [r4, #4]
	add r0, r4, #0
	bl ovy168_21dec1c
	ldr r0, [r4, #4]
	bl sub_0204A638
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x18
	add r1, #0x24
	bl ovy168_21dea80
	add r0, r4, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021DE71C: .word 0x021F3F40
_021DE720: .word 0x021F2F80
_021DE724: .word 0x021F2F8C
_021DE728: .word 0x00000F97
_021DE72C: .word 0x021F2F74
_021DE730: .word 0x0000159A
_021DE734: .word 0x00000399
	thumb_func_end ovy168_21de6b4

	thumb_func_start ovy168_21de738
ovy168_21de738: ; 0x021DE738
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_0204A630
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy168_21de738

	thumb_func_start ovy168_21de74c
ovy168_21de74c: ; 0x021DE74C
	ldr r3, _021DE750 ; =ovy168_21deab4
	bx r3
	.align 2, 0
_021DE750: .word ovy168_21deab4
	thumb_func_end ovy168_21de74c

	thumb_func_start ovy168_21de754
ovy168_21de754: ; 0x021DE754
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	cmp r1, #0
	beq _021DE770
	ldr r0, [r1]
	str r0, [r5, #0x18]
	ldr r0, [r1, #4]
	str r0, [r5, #0x1c]
	ldr r0, [r1, #8]
	str r0, [r5, #0x20]
	ldr r0, [r5, #4]
	bl sub_0204A65C
_021DE770:
	cmp r4, #0
	beq _021DE788
	ldr r0, [r4]
	add r1, r4, #0
	str r0, [r5, #0x24]
	ldr r0, [r4, #4]
	str r0, [r5, #0x28]
	ldr r0, [r4, #8]
	str r0, [r5, #0x2c]
	ldr r0, [r5, #4]
	bl sub_0204A69C
_021DE788:
	ldr r0, [r5, #4]
	bl sub_0204A638
	add r0, r5, #0
	bl ovy168_21dec1c
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy168_21de754

	thumb_func_start ovy168_21de798
ovy168_21de798: ; 0x021DE798
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	add r3, r4, #0
	add r3, #0x24
	str r3, [sp]
	add r3, r4, #0
	add r3, #0x18
	bl ovy168_21de980
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #0x18
	bl sub_0204A65C
	ldr r0, [r4, #4]
	bl sub_0204A638
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ovy168_21de798

	thumb_func_start ovy168_21de7c0
ovy168_21de7c0: ; 0x021DE7C0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [sp, #0x1c]
	add r6, r1, #0
	str r0, [r5, #0x74]
	ldr r0, [sp, #0x18]
	add r7, r2, #0
	add r4, r3, #0
	str r0, [r5, #0x6c]
	str r0, [r5, #0x70]
	cmp r6, #0
	beq _021DE824
	ldr r0, [r6]
	cmp r4, #0
	str r0, [r5, #0x30]
	ldr r0, [r6, #4]
	str r0, [r5, #0x34]
	ldr r0, [r6, #8]
	str r0, [r5, #0x38]
	ble _021DE7FA
	lsl r0, r4, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021DE808
_021DE7FA:
	lsl r0, r4, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021DE808:
	blx sub_0208DA4C
	add r3, r0, #0
	add r0, r5, #0
	add r2, r5, #0
	add r0, #0x18
	add r1, r6, #0
	add r2, #0x48
	bl ovy168_21e0b7c
	ldr r1, [r5, #0x14]
	mov r0, #1
	orr r0, r1
	str r0, [r5, #0x14]
_021DE824:
	cmp r7, #0
	beq _021DE874
	ldr r0, [r7]
	cmp r4, #0
	str r0, [r5, #0x3c]
	ldr r0, [r7, #4]
	str r0, [r5, #0x40]
	ldr r0, [r7, #8]
	str r0, [r5, #0x44]
	ble _021DE84A
	lsl r0, r4, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021DE858
_021DE84A:
	lsl r0, r4, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021DE858:
	blx sub_0208DA4C
	add r3, r0, #0
	add r0, r5, #0
	add r2, r5, #0
	add r0, #0x24
	add r1, r7, #0
	add r2, #0x54
	bl ovy168_21e0b7c
	ldr r1, [r5, #0x14]
	mov r0, #2
	orr r0, r1
	str r0, [r5, #0x14]
_021DE874:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy168_21de7c0

	thumb_func_start ovy168_21de878
ovy168_21de878: ; 0x021DE878
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #3
	add r4, r2, #0
	str r0, [r5, #0x78]
	add r0, r5, #0
	add r3, r5, #0
	ldr r2, [sp, #0x10]
	add r0, #0xa0
	str r2, [r0]
	add r0, r5, #0
	add r0, #0xa4
	str r2, [r0]
	mov r0, #0
	add r3, #0xa8
	str r0, [r3]
	add r3, r5, #0
	ldr r6, [sp, #0x14]
	add r3, #0xac
	str r6, [r3]
	ldr r3, [sp, #0x18]
	str r0, [r5, #0x7c]
	lsl r6, r3, #2
	add r3, r5, #0
	add r3, #0xb0
	str r6, [r3]
	add r3, r5, #0
	add r3, #0x80
	str r0, [r3]
	add r3, r5, #0
	add r3, #0x84
	str r0, [r3]
	cmp r1, #1
	bne _021DE908
	add r1, r5, #0
	add r1, #0x88
	str r4, [r1]
	add r1, r5, #0
	add r1, #0x8c
	str r0, [r1]
	cmp r2, #0
	ble _021DE8DE
	lsl r0, r2, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021DE8EC
_021DE8DE:
	lsl r0, r2, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021DE8EC:
	blx sub_0208DA4C
	add r1, r0, #0
	add r0, r4, #0
	bl FX_Div
	add r1, r5, #0
	add r1, #0x94
	str r0, [r1]
	add r0, r5, #0
	mov r1, #0
	add r0, #0x98
	str r1, [r0]
	b _021DE950
_021DE908:
	add r1, r5, #0
	add r1, #0x88
	str r0, [r1]
	add r1, r5, #0
	add r1, #0x8c
	str r4, [r1]
	add r1, r5, #0
	add r1, #0x94
	str r0, [r1]
	cmp r2, #0
	ble _021DE930
	lsl r0, r2, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021DE93E
_021DE930:
	lsl r0, r2, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021DE93E:
	blx sub_0208DA4C
	add r1, r0, #0
	add r0, r4, #0
	bl FX_Div
	add r1, r5, #0
	add r1, #0x98
	str r0, [r1]
_021DE950:
	add r0, r5, #0
	mov r1, #0
	add r0, #0x90
	str r1, [r0]
	add r0, r5, #0
	add r0, #0x9c
	str r1, [r0]
	ldr r1, [r5, #0x14]
	mov r0, #4
	orr r0, r1
	str r0, [r5, #0x14]
	pop {r4, r5, r6, pc}
	thumb_func_end ovy168_21de878

	thumb_func_start ovy168_21de968
ovy168_21de968: ; 0x021DE968
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r4, r2, #0
	bl sub_0204A64C
	ldr r0, [r5, #4]
	add r1, r4, #0
	bl sub_0204A68C
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy168_21de968

	thumb_func_start ovy168_21de980
ovy168_21de980: ; 0x021DE980
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r6, [sp, #0x18]
	add r7, r1, #0
	ldr r0, [r5, #4]
	add r1, r6, #0
	str r2, [sp]
	add r4, r3, #0
	bl sub_0204A68C
	ldr r0, [r5, #8]
	ldr r1, [r5, #0xc]
	add r2, r0, r7
	ldr r0, [sp]
	str r2, [r5, #8]
	add r0, r1, r0
	str r0, [r5, #0xc]
	asr r0, r0, #4
	asr r2, r2, #4
	lsl r0, r0, #1
	lsl r2, r2, #1
	add r0, r0, #1
	add r2, r2, #1
	lsl r1, r0, #1
	ldr r0, _021DEA7C ; =FX_SinCosTable_ ; 0x020946BC
	lsl r3, r2, #1
	ldr r2, _021DEA7C ; =FX_SinCosTable_ ; 0x020946BC
	ldrsh r0, [r0, r1]
	ldrsh r2, [r2, r3]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	blx sub_0208D60C
	mov r2, #2
	mov r7, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r7
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [r4]
	ldr r0, [r5, #8]
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _021DEA7C ; =FX_SinCosTable_ ; 0x020946BC
	ldrsh r0, [r0, r1]
	str r0, [r4, #4]
	ldr r2, [r5, #8]
	ldr r0, [r5, #0xc]
	asr r2, r2, #4
	lsl r2, r2, #1
	asr r0, r0, #4
	add r2, r2, #1
	lsl r1, r0, #2
	ldr r0, _021DEA7C ; =FX_SinCosTable_ ; 0x020946BC
	lsl r3, r2, #1
	ldr r2, _021DEA7C ; =FX_SinCosTable_ ; 0x020946BC
	ldrsh r0, [r0, r1]
	ldrsh r2, [r2, r3]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	blx sub_0208D60C
	mov r2, #2
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r7
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [r4, #8]
	ldr r0, [r4]
	ldr r2, [r5, #0x10]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	blx sub_0208D60C
	mov r2, #2
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r7
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [r4]
	ldr r0, [r4, #4]
	ldr r2, [r5, #0x10]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	blx sub_0208D60C
	mov r2, #2
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r7
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [r4, #4]
	ldr r0, [r4, #8]
	ldr r2, [r5, #0x10]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	blx sub_0208D60C
	mov r2, #2
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r7
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	str r0, [r4, #8]
	ldr r2, [r4]
	ldr r1, [r6]
	add r1, r2, r1
	str r1, [r4]
	ldr r2, [r4, #4]
	ldr r1, [r6, #4]
	add r1, r2, r1
	str r1, [r4, #4]
	ldr r1, [r6, #8]
	add r0, r0, r1
	str r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021DEA7C: .word FX_SinCosTable_
	thumb_func_end ovy168_21de980

	thumb_func_start ovy168_21dea80
ovy168_21dea80: ; 0x021DEA80
	ldr r2, _021DEA98 ; =0x00006B33
	str r2, [r0]
	str r2, [r0, #4]
	ldr r2, _021DEA9C ; =0x000114CD
	str r2, [r0, #8]
	mov r2, #0
	ldr r0, _021DEAA0 ; =0x0000299A
	str r2, [r1]
	str r0, [r1, #4]
	str r2, [r1, #8]
	bx lr
	nop
_021DEA98: .word 0x00006B33
_021DEA9C: .word 0x000114CD
_021DEAA0: .word 0x0000299A
	thumb_func_end ovy168_21dea80

	thumb_func_start ovy168_21deaa4
ovy168_21deaa4: ; 0x021DEAA4
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq _021DEAAE
	mov r0, #1
	bx lr
_021DEAAE:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end ovy168_21deaa4

	thumb_func_start ovy168_21deab4
ovy168_21deab4: ; 0x021DEAB4
	push {r4, r5, lr}
	sub sp, #0x1c
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _021DEAC6
	b _021DEC18
_021DEAC6:
	ldr r0, [r4, #0x6c]
	cmp r0, #0
	beq _021DEACE
	b _021DEC14
_021DEACE:
	ldr r0, [r4, #0x70]
	str r0, [r4, #0x6c]
	ldr r0, [r4, #0x74]
	cmp r0, #0
	beq _021DEB0E
	sub r0, r0, #1
	str r0, [r4, #0x74]
	bne _021DEB0E
	ldr r0, [r4, #0x48]
	asr r0, r0, #1
	beq _021DEAE6
	str r0, [r4, #0x48]
_021DEAE6:
	ldr r0, [r4, #0x4c]
	asr r0, r0, #1
	beq _021DEAEE
	str r0, [r4, #0x4c]
_021DEAEE:
	ldr r0, [r4, #0x50]
	asr r0, r0, #1
	beq _021DEAF6
	str r0, [r4, #0x50]
_021DEAF6:
	ldr r0, [r4, #0x54]
	asr r0, r0, #1
	beq _021DEAFE
	str r0, [r4, #0x54]
_021DEAFE:
	ldr r0, [r4, #0x58]
	asr r0, r0, #1
	beq _021DEB06
	str r0, [r4, #0x58]
_021DEB06:
	ldr r0, [r4, #0x5c]
	asr r0, r0, #1
	beq _021DEB0E
	str r0, [r4, #0x5c]
_021DEB0E:
	ldr r1, [r4, #0x14]
	lsl r1, r1, #0x1f
	beq _021DEB5A
	add r0, r4, #0
	add r1, r4, #0
	add r2, r4, #0
	add r5, sp, #0
	add r0, #0x18
	add r1, #0x48
	add r2, #0x30
	add r3, r5, #0
	bl ovy168_21e0c10
	add r0, r4, #0
	add r1, r4, #0
	add r2, r4, #0
	add r0, #0x1c
	add r1, #0x4c
	add r2, #0x34
	add r3, r5, #0
	bl ovy168_21e0c10
	add r0, r4, #0
	add r1, r4, #0
	add r2, r4, #0
	add r0, #0x20
	add r1, #0x50
	add r2, #0x38
	add r3, r5, #0
	bl ovy168_21e0c10
	ldr r0, [sp]
	cmp r0, #1
	bne _021DEB5A
	ldr r1, [r4, #0x14]
	mov r0, #1
	bic r1, r0
	str r1, [r4, #0x14]
_021DEB5A:
	ldr r1, [r4, #0x14]
	mov r0, #2
	tst r0, r1
	beq _021DEBA8
	add r0, r4, #0
	add r1, r4, #0
	add r2, r4, #0
	add r5, sp, #0
	add r0, #0x24
	add r1, #0x54
	add r2, #0x3c
	add r3, r5, #0
	bl ovy168_21e0c10
	add r0, r4, #0
	add r1, r4, #0
	add r2, r4, #0
	add r0, #0x28
	add r1, #0x58
	add r2, #0x40
	add r3, r5, #0
	bl ovy168_21e0c10
	add r0, r4, #0
	add r1, r4, #0
	add r2, r4, #0
	add r0, #0x2c
	add r1, #0x5c
	add r2, #0x44
	add r3, r5, #0
	bl ovy168_21e0c10
	ldr r0, [sp]
	cmp r0, #1
	bne _021DEBA8
	ldr r1, [r4, #0x14]
	mov r0, #2
	bic r1, r0
	str r1, [r4, #0x14]
_021DEBA8:
	ldr r1, [r4, #0x14]
	mov r0, #4
	tst r0, r1
	beq _021DEBCA
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x78
	add r1, #0x60
	bl ovy168_21e0c50
	str r0, [sp]
	cmp r0, #1
	bne _021DEBCA
	ldr r1, [r4, #0x14]
	mov r0, #4
	bic r1, r0
	str r1, [r4, #0x14]
_021DEBCA:
	ldr r0, [r4, #0x18]
	ldr r2, [r4, #0x60]
	add r0, r0, r2
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x64]
	add r0, r0, r1
	str r0, [sp, #0x14]
	ldr r3, [r4, #0x20]
	ldr r0, [r4, #0x68]
	add r3, r3, r0
	str r3, [sp, #0x18]
	ldr r3, [r4, #0x24]
	add r2, r3, r2
	str r2, [sp, #4]
	ldr r2, [r4, #0x28]
	add r1, r2, r1
	str r1, [sp, #8]
	ldr r1, [r4, #0x2c]
	add r0, r1, r0
	str r0, [sp, #0xc]
	ldr r0, [r4, #4]
	add r1, sp, #0x10
	bl sub_0204A65C
	ldr r0, [r4, #4]
	add r1, sp, #4
	bl sub_0204A69C
	ldr r0, [r4, #4]
	bl sub_0204A638
	add r0, r4, #0
	bl ovy168_21dec1c
	add sp, #0x1c
	pop {r4, r5, pc}
_021DEC14:
	sub r0, r0, #1
	str r0, [r4, #0x6c]
_021DEC18:
	add sp, #0x1c
	pop {r4, r5, pc}
	thumb_func_end ovy168_21deab4

	thumb_func_start ovy168_21dec1c
ovy168_21dec1c: ; 0x021DEC1C
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r4, sp, #0xc
	ldr r0, [r5, #4]
	add r1, r4, #0
	bl sub_0204A64C
	ldr r0, [r5, #4]
	add r1, sp, #0
	bl sub_0204A68C
	ldr r1, [sp, #0xc]
	ldr r0, [sp]
	ldr r2, [sp, #0x14]
	sub r0, r1, r0
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #4]
	sub r0, r1, r0
	ldr r1, [sp, #8]
	str r0, [sp, #0x10]
	sub r1, r2, r1
	str r1, [sp, #0x14]
	bl FX_Atan2Idx
	str r0, [r5, #8]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0xc]
	bl FX_Atan2Idx
	str r0, [r5, #0xc]
	add r0, r4, #0
	blx VEC_Mag
	str r0, [r5, #0x10]
	add sp, #0x18
	pop {r3, r4, r5, pc}
	thumb_func_end ovy168_21dec1c

	thumb_func_start ovy168_21dec68
ovy168_21dec68: ; 0x021DEC68
	push {r3, lr}
	cmp r0, #0
	beq _021DEC74
	bl ovy167_0219C988
	pop {r3, pc}
_021DEC74:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ovy168_21dec68

	thumb_func_start ovy168_21dec78
ovy168_21dec78: ; 0x021DEC78
	push {r3, lr}
	cmp r0, #0
	beq _021DEC84
	bl ovy167_219c99c
	pop {r3, pc}
_021DEC84:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ovy168_21dec78

	thumb_func_start ovy168_21dec88
ovy168_21dec88: ; 0x021DEC88
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp, #4]
	ldr r0, _021DED10 ; =0x00000107
	str r3, [sp, #0xc]
	str r0, [sp]
	add r0, sp, #0x28
	str r1, [sp, #8]
	ldrh r1, [r0, #0xc]
	ldr r0, _021DED14 ; =0x00007FFF
	ldr r3, _021DED18 ; =0x021F3F9C
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	add r6, r2, #0
	lsr r0, r0, #0x10
	mov r1, #0x34
	mov r2, #0
	ldr r5, [sp, #0x28]
	ldr r7, [sp, #0x2c]
	bl GFL_HeapAllocate
	add r4, r0, #0
	ldr r0, [sp, #4]
	add r2, r4, #0
	str r0, [r4]
	ldr r0, [sp, #8]
	add r2, #8
	str r0, [r4, #4]
	ldmia r6!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [sp, #0xc]
	str r0, [r4, #0x20]
	ldr r0, [sp, #0x30]
	str r0, [r4, #0x24]
	str r7, [r4, #0x28]
	add r0, r7, #0
	bl ovy168_21dec78
	str r0, [r4, #0x30]
	add r0, r7, #0
	bl ovy168_21dec68
	strh r0, [r4, #0x2c]
	ldrh r0, [r4, #0x2c]
	cmp r0, #0
	beq _021DECF8
	add r0, r7, #0
	bl ovy167_0219E39C
	mov r1, #0x24
	ldrsh r0, [r0, r1]
	strh r0, [r4, #0x2e]
_021DECF8:
	mov r2, #0
_021DECFA:
	lsl r0, r2, #1
	ldrh r1, [r5, r0]
	add r0, r4, r0
	add r2, r2, #1
	strh r1, [r0, #0x18]
	cmp r2, #4
	blt _021DECFA
	add r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DED10: .word 0x00000107
_021DED14: .word 0x00007FFF
_021DED18: .word 0x021F3F9C
	thumb_func_end ovy168_21dec88

	thumb_func_start ovy168_21ded1c
ovy168_21ded1c: ; 0x021DED1C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r1, [sp, #0x10]
	mov r1, #0
	add r5, r0, #0
	str r2, [sp, #0x14]
	add r6, r1, #0
	add r4, sp, #0x1c
_021DED2C:
	lsl r0, r1, #1
	add r1, r1, #1
	strh r6, [r4, r0]
	cmp r1, #4
	blo _021DED2C
	add r0, r5, #0
	bl ovy167_219beec
	cmp r0, #1
	bne _021DEDA0
	add r0, r5, #0
	bl ovy167_219c850
	add r6, r0, #0
	add r0, r5, #0
	bl ovy167_219c860
	str r0, [sp, #0x18]
	add r0, r5, #0
	bl ovy167_219c86c
	add r7, r0, #0
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	bl ovy167_219d938
	lsl r1, r6, #2
	strh r0, [r4, r1]
	cmp r7, #4
	beq _021DED78
	add r0, r5, #0
	add r1, r7, #0
	bl ovy167_219d938
	mov r1, #1
	eor r1, r6
	lsl r1, r1, #2
	strh r0, [r4, r1]
_021DED78:
	add r0, r5, #0
	mov r1, #0
	bl ovy167_219c8b8
	add r1, r0, #0
	add r0, r5, #0
	bl ovy167_219d938
	add r4, sp, #0x1c
	strh r0, [r4, #2]
	add r0, r5, #0
	mov r1, #1
	bl ovy167_219c8b8
	add r1, r0, #0
	add r0, r5, #0
	bl ovy167_219d938
	strh r0, [r4, #6]
	b _021DEDC8
_021DEDA0:
	add r0, r5, #0
	bl ovy167_219c860
	add r1, r0, #0
	add r0, r5, #0
	bl ovy167_219d938
	add r4, sp, #0x1c
	strh r0, [r4]
	add r0, r5, #0
	add r1, r6, #0
	bl ovy167_219c8b8
	add r1, r0, #0
	add r0, r5, #0
	bl ovy167_219d938
	strh r0, [r4, #2]
	strh r6, [r4, #4]
	strh r6, [r4, #6]
_021DEDC8:
	add r0, r5, #0
	bl ovy167_219bd80
	add r4, r0, #0
	add r0, r5, #0
	bl ovy167_219bed4
	add r6, r0, #0
	add r0, r5, #0
	bl ovy167_219bf60
	add r7, r0, #0
	add r0, r5, #0
	bl ovy167_219beec
	add r3, r0, #0
	add r0, sp, #0x1c
	str r0, [sp]
	ldr r0, [sp, #0x10]
	str r5, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	add r1, r6, #0
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r2, r7, #0
	bl ovy168_21dec88
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy168_21ded1c

	thumb_func_start ovy168_21dee04
ovy168_21dee04: ; 0x021DEE04
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	mov r5, #0x57
	lsl r5, r5, #2
	str r1, [sp, #0xc]
	add r6, r2, #0
	add r1, r5, #0
	add r4, r0, #0
	ldr r3, _021DF120 ; =0x021F3F9C
	add r0, r6, #0
	add r1, #0xf8
	mov r2, #1
	str r5, [sp]
	bl GFL_HeapAllocate
	ldr r1, _021DF124 ; =0x021f4240
	add r5, #0x60
	add r2, r0, r5
	mov ip, r0
	str r0, [r1]
	add r3, r4, #0
	mov r5, #6
_021DEE30:
	ldmia r3!, {r0, r1}
	ldr r7, _021DF124 ; =0x021f4240
	stmia r2!, {r0, r1}
	sub r5, r5, #1
	bne _021DEE30
	ldr r0, [r3]
	mov r5, #0x7e
	str r0, [r2]
	lsl r5, r5, #2
	mov r0, ip
	strh r6, [r0, r5]
	mov r0, #0x20
	bl sub_0203A584
	add r1, r0, #0
	add r0, r5, #0
	sub r0, #0x96
	str r0, [sp]
	ldr r3, _021DF120 ; =0x021F3F9C
	add r0, r6, #0
	mov r2, #1
	bl GFL_HeapAllocate
	ldr r1, [r7]
	str r0, [r1, #4]
	ldr r1, [r7]
	mov r0, #0x20
	ldr r1, [r1, #4]
	bl sub_0203A58C
	ldr r1, [r7]
	str r0, [r1]
	ldr r0, [r7]
	add r1, r6, #0
	ldr r0, [r0]
	bl ovy168_21e0de4
	add r1, r5, #0
	ldr r2, [r7]
	sub r1, #0x70
	str r0, [r2, r1]
	add r0, r6, #0
	bl sub_02026DC0
	add r1, r5, #0
	ldr r2, [r7]
	sub r1, #0x6c
	str r0, [r2, r1]
	add r0, r5, #0
	ldr r1, [r7]
	sub r0, #0x6c
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_0202778C
	add r0, r5, #0
	mov r2, #1
	lsl r2, r2, #9
	ldr r1, [r7]
	sub r0, #0x6c
	ldr r0, [r1, r0]
	mov r1, #0
	add r3, r6, #0
	str r2, [sp, #0x10]
	bl sub_02026E04
	add r0, r5, #0
	add r2, r5, #0
	str r2, [sp, #0x14]
	sub r2, #0x18
	ldr r1, [r7]
	sub r0, #0x6c
	ldr r0, [r1, r0]
	mov r1, #1
	add r3, r6, #0
	str r2, [sp, #0x14]
	bl sub_02026E04
	add r0, r5, #0
	ldr r1, [r7]
	sub r0, #0x6c
	ldr r0, [r1, r0]
	ldr r2, [sp, #0x10]
	mov r1, #2
	add r3, r6, #0
	bl sub_02026E04
	add r0, r5, #0
	ldr r1, [r7]
	sub r0, #0x6c
	ldr r0, [r1, r0]
	ldr r2, [sp, #0x14]
	mov r1, #3
	add r3, r6, #0
	bl sub_02026E04
	ldr r1, [r7]
	ldr r0, [r4]
	ldr r1, [r1]
	add r2, r6, #0
	bl ovy168_21e67b8
	add r1, r5, #0
	ldr r2, [r7]
	sub r1, #0x68
	str r0, [r2, r1]
	ldr r0, [r4, #0x28]
	bl ovy168_21dec68
	cmp r0, #2
	bne _021DEF22
	ldr r0, [r4, #0x28]
	bl ovy167_219c9b0
	add r1, r0, #0
	ldr r2, _021DF128 ; =0x021F3F70
	ldr r0, [r7]
	sub r5, #0x68
	ldr r0, [r0, r5]
	ldrb r1, [r2, r1]
	b _021DEF2A
_021DEF22:
	ldr r0, [r7]
	sub r5, #0x68
	ldr r0, [r0, r5]
	mov r1, #1
_021DEF2A:
	bl ovy168_21e71d0
	ldr r2, _021DF124 ; =0x021f4240
	mov r0, #0x97
	ldr r3, [r2]
	mov r2, #0x7e
	lsl r2, r2, #2
	ldrh r2, [r3, r2]
	ldr r3, _021DF12C ; =0x00007FFF
	mov r1, #0
	and r2, r3
	add r3, r3, #1
	orr r2, r3
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	mov r5, #0
	bl sub_0204A934
	ldr r2, [r4, #8]
	add r7, r0, #0
	mov r0, #0x2c
	add r1, r2, #0
	mul r1, r0
	add r0, r7, r1
	ldrb r0, [r0, #1]
	lsl r0, r0, #1
	beq _021DEF62
	ldrb r5, [r4, #0x11]
_021DEF62:
	ldrh r0, [r4, #0x2c]
	add r2, r7, r1
	add r3, r6, #0
	str r0, [sp]
	ldr r1, [r4, #0xc]
	ldr r0, [r4]
	add r1, r2, r1
	ldrb r1, [r1, #0x16]
	add r2, r5, #0
	bl ovy168_21ddacc
	ldr r1, _021DF124 ; =0x021f4240
	ldr r2, [r1]
	mov r1, #0x65
	lsl r1, r1, #2
	str r0, [r2, r1]
	ldr r0, _021DF124 ; =0x021f4240
	ldr r1, [r0]
	mov r0, #0x65
	lsl r0, r0, #2
	add r0, #0x50
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _021DEFA8
	mov r1, #1
	lsl r1, r1, #0xa
	bl ovy167_219dac4
	ldrh r1, [r4, #0x2c]
	str r1, [sp]
	ldrh r1, [r4, #0x2e]
	str r1, [sp, #4]
	ldr r1, [r4, #0x30]
	str r1, [sp, #8]
	b _021DEFB6
_021DEFA8:
	ldrh r0, [r4, #0x2c]
	str r0, [sp]
	ldrh r0, [r4, #0x2e]
	str r0, [sp, #4]
	ldr r0, [r4, #0x30]
	str r0, [sp, #8]
	mov r0, #0
_021DEFB6:
	ldr r2, [r4, #8]
	mov r1, #0x2c
	mul r1, r2
	add r2, r7, r1
	ldr r1, [r4, #0xc]
	add r3, r6, #0
	add r1, r2, r1
	ldrb r1, [r1, #2]
	add r2, r5, #0
	bl ovy168_21de0f0
	ldr r1, _021DF124 ; =0x021f4240
	ldr r2, [r1]
	mov r1, #0x65
	lsl r1, r1, #2
	add r1, r1, #4
	str r0, [r2, r1]
	ldr r1, [r4, #8]
	mov r0, #0x2c
	mul r0, r1
	ldrb r0, [r7, r0]
	ldr r5, _021DF124 ; =0x021f4240
	cmp r0, #0
	beq _021DF01A
	ldrb r0, [r4, #0x11]
	str r0, [sp]
	add r0, sp, #0x20
	str r0, [sp, #4]
	mov r0, #0x7e
	ldr r1, [r5]
	lsl r0, r0, #2
	ldrh r0, [r1, r0]
	str r0, [sp, #8]
	ldrh r0, [r4, #0x12]
	ldrb r1, [r4, #0x14]
	ldrb r2, [r4, #0x15]
	ldrb r3, [r4, #0x10]
	bl sub_02019804
	add r1, sp, #0x18
	ldrh r0, [r1, #8]
	ldr r2, _021DF130 ; =0xFFFFF000
	strh r0, [r1, #6]
	mov r0, #0
	strh r0, [r1]
	strh r2, [r1, #2]
	strh r0, [r1, #4]
	add r1, sp, #0x18
	bl sub_02049100
_021DF01A:
	add r0, r7, #0
	bl GFL_HeapFree
	ldr r0, [r5]
	add r1, r6, #0
	ldr r0, [r0]
	bl ovy168_21de6b4
	mov r7, #0x67
	ldr r1, [r5]
	lsl r7, r7, #2
	str r0, [r1, r7]
	add r0, r7, #0
	ldr r1, [r5]
	add r0, #0x48
	ldr r0, [r1, r0]
	bl ovy168_21dec68
	add r2, r0, #0
	ldr r0, [r5]
	add r1, r6, #0
	ldr r0, [r0]
	bl ovy168_21e982c
	ldr r2, [r5]
	add r1, r7, #4
	str r0, [r2, r1]
	ldrh r1, [r4, #0x2c]
	ldr r0, [sp, #0xc]
	add r2, r6, #0
	bl ovy168_21ef794
	add r1, r7, #0
	ldr r2, [r5]
	add r1, #8
	str r0, [r2, r1]
	add r0, r6, #0
	bl ovy168_21f2174
	add r1, r7, #0
	ldr r2, [r5]
	add r1, #0x14
	str r0, [r2, r1]
	ldr r0, [r5]
	add r1, r6, #0
	ldr r0, [r0]
	bl ovy168_21f26b8
	add r1, r7, #0
	ldr r2, [r5]
	add r1, #0x18
	str r0, [r2, r1]
	add r0, r7, #0
	ldr r1, [r5]
	add r0, #0x48
	ldr r0, [r1, r0]
	bl ovy168_21dec68
	cmp r0, #1
	bne _021DF0B0
	add r0, r7, #0
	ldr r1, [r5]
	add r0, #0x48
	ldr r0, [r1, r0]
	bl ovy167_0219E39C
	add r1, r0, #0
	ldr r2, [r5]
	add r0, r7, #4
	ldr r0, [r2, r0]
	mov r2, #0xa
	ldrsh r1, [r1, r2]
	mov r2, #0
	bl ovy168_21e9c24
_021DF0B0:
	mov r4, #0x19
	ldr r0, [r5]
	lsl r4, r4, #4
	ldr r0, [r0, r4]
	bl ovy168_21e6ecc
	add r0, r6, #0
	bl sub_0204F918
	mov r3, #0
	sub r2, r3, #1
	add r4, #0x70
_021DF0C8:
	ldr r1, [r5]
	lsl r0, r3, #2
	add r0, r1, r0
	add r3, r3, #1
	str r2, [r0, r4]
	cmp r3, #8
	blt _021DF0C8
	mov r4, #0x79
	ldr r0, [r5]
	lsl r4, r4, #2
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _021DF0FE
	mov r1, #2
	lsl r1, r1, #0xa
	bl ovy167_219dac4
	cmp r0, #0
	beq _021DF0F4
	add r1, r4, #0
	sub r1, #0xb8
	b _021DF0F8
_021DF0F4:
	mov r1, #0xe1
	lsl r1, r1, #2
_021DF0F8:
	ldr r0, [r5]
	add r4, #0x68
	str r1, [r0, r4]
_021DF0FE:
	ldr r0, _021DF134 ; =ovy168_21e0580
	mov r1, #0
	mov r2, #1
	bl GFL_VBlankTCBAdd
	mov r1, #0x6e
	ldr r2, [r5]
	lsl r1, r1, #2
	str r0, [r2, r1]
	ldr r2, [r5]
	add r1, #0x40
	ldrh r1, [r2, r1]
	mov r0, #2
	bl sub_020066E4
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021DF120: .word 0x021F3F9C
_021DF124: .word 0x021f4240
_021DF128: .word 0x021F3F70
_021DF12C: .word 0x00007FFF
_021DF130: .word 0xFFFFF000
_021DF134: .word ovy168_21e0580
	thumb_func_end ovy168_21dee04

	thumb_func_start ovy168_21df138
ovy168_21df138: ; 0x021DF138
	push {r4, r5, r6, lr}
	ldr r5, _021DF210 ; =0x021f4240
	ldr r0, [r5]
	cmp r0, #0
	beq _021DF20E
	bl sub_02006758
	bl ovy168_21e055c
	mov r4, #0x63
	ldr r0, [r5]
	lsl r4, r4, #2
	ldr r0, [r0, r4]
	mov r1, #0
	mov r6, #0
	bl sub_02026E48
	ldr r0, [r5]
	mov r1, #1
	ldr r0, [r0, r4]
	bl sub_02026E48
	ldr r0, [r5]
	mov r1, #2
	ldr r0, [r0, r4]
	bl sub_02026E48
	ldr r0, [r5]
	mov r1, #3
	ldr r0, [r0, r4]
	bl sub_02026E48
	ldr r0, [r5]
	ldr r0, [r0, r4]
	bl sub_02026DE8
	ldr r1, [r5]
	add r0, r4, #4
	ldr r0, [r1, r0]
	bl ovy168_21e6870
	add r0, r4, #0
	ldr r1, [r5]
	add r0, #8
	ldr r0, [r1, r0]
	bl ovy168_21dde54
	add r0, r4, #0
	ldr r1, [r5]
	add r0, #0xc
	ldr r0, [r1, r0]
	bl ovy168_21de5a4
	add r0, r4, #0
	ldr r1, [r5]
	add r0, #0x10
	ldr r0, [r1, r0]
	bl ovy168_21de738
	add r0, r4, #0
	ldr r1, [r5]
	add r0, #0x14
	ldr r0, [r1, r0]
	bl ovy168_21e9874
	add r0, r4, #0
	ldr r1, [r5]
	add r0, #0x18
	ldr r0, [r1, r0]
	bl ovy168_21ef840
	add r0, r4, #0
	ldr r1, [r5]
	add r0, #0x24
	ldr r0, [r1, r0]
	bl ovy168_21f2244
	add r0, r4, #0
	ldr r1, [r5]
	add r0, #0x28
	ldr r0, [r1, r0]
	bl ovy168_21f26d8
	bl sub_0204FB4C
	ldr r1, [r5]
	sub r0, r4, #4
	ldr r0, [r1, r0]
	bl ovy168_21e0ec8
	ldr r0, [r5]
	add r4, #0x2c
	ldr r0, [r0, r4]
	bl GFL_TCBRemove
	ldr r0, [r5]
	ldr r0, [r0]
	bl sub_0203A610
	ldr r0, [r5]
	ldr r0, [r0, #4]
	bl GFL_HeapFree
	ldr r0, [r5]
	bl GFL_HeapFree
	str r6, [r5]
_021DF20E:
	pop {r4, r5, r6, pc}
	.align 2, 0
_021DF210: .word 0x021f4240
	thumb_func_end ovy168_21df138

	thumb_func_start ovy168_21df214
ovy168_21df214: ; 0x021DF214
	push {r3, r4, r5, lr}
	ldr r5, _021DF2C0 ; =0x021f4240
	ldr r0, [r5]
	cmp r0, #0
	beq _021DF2BC
	mov r4, #0x62
	lsl r4, r4, #2
	ldr r0, [r0, r4]
	bl ovy168_21e0e68
	add r1, r4, #0
	ldr r2, [r5]
	add r1, #0x68
	str r0, [r2, r1]
	bl ovy168_21e0a2c
	ldr r0, [r5]
	ldr r0, [r0]
	bl sub_0203A5D0
	add r0, r4, #0
	ldr r1, [r5]
	add r0, #8
	ldr r0, [r1, r0]
	bl ovy168_21e68a4
	add r0, r4, #0
	ldr r1, [r5]
	add r0, #0xc
	ldr r0, [r1, r0]
	bl ovy168_21ddf20
	add r0, r4, #0
	ldr r1, [r5]
	add r0, #0x10
	ldr r0, [r1, r0]
	bl ovy168_21de5d4
	add r0, r4, #0
	ldr r1, [r5]
	add r0, #0x14
	ldr r0, [r1, r0]
	bl ovy168_21de74c
	add r0, r4, #0
	ldr r1, [r5]
	add r0, #0x1c
	ldr r0, [r1, r0]
	bl ovy168_21ef884
	add r0, r4, #0
	ldr r1, [r5]
	add r0, #0x18
	ldr r0, [r1, r0]
	bl ovy168_21e98a4
	bl sub_02049A98
	bl sub_02049AF0
	add r0, r4, #0
	ldr r1, [r5]
	add r0, #0xc
	ldr r0, [r1, r0]
	bl ovy168_21ddf9c
	add r0, r4, #0
	ldr r1, [r5]
	add r0, #0x10
	ldr r0, [r1, r0]
	bl ovy168_21de64c
	ldr r0, [r5]
	add r4, #8
	ldr r0, [r0, r4]
	bl ovy168_21e6b88
	ldr r4, _021DF2C4 ; =0x04000604
	ldrh r0, [r4]
	bl sub_0204F954
	ldrh r0, [r4]
	bl sub_02049AA0
_021DF2BC:
	pop {r3, r4, r5, pc}
	nop
_021DF2C0: .word 0x021f4240
_021DF2C4: .word 0x04000604
	thumb_func_end ovy168_21df214

	thumb_func_start ovy168_21df2c8
ovy168_21df2c8: ; 0x021DF2C8
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	bl ovy168_21df7e8
	cmp r0, #0
	bne _021DF2FE
	mov r0, #0
	str r0, [sp]
	ldr r6, _021DF344 ; =0x021f4240
	mov r0, #0x62
	lsl r3, r5, #0x10
	ldr r1, [r6]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0xff
	mov r2, #0xff
	lsr r3, r3, #0x10
	mov r4, #0xff
	bl ovy168_21e0ee8
	ldr r0, [r6]
	mov r1, #1
	add r4, #0xf1
	add sp, #4
	str r1, [r0, r4]
	pop {r3, r4, r5, r6, pc}
_021DF2FE:
	ldr r1, _021DF348 ; =0x00000281
	ldr r4, _021DF344 ; =0x021f4240
	str r1, [sp]
	ldr r0, [r4]
	sub r1, #0x89
	ldrh r1, [r0, r1]
	ldr r0, _021DF34C ; =0x00007FFF
	ldr r3, _021DF350 ; =0x021F3F9C
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0x14
	mov r2, #1
	bl GFL_HeapAllocate
	add r2, r0, #0
	mov r0, #0xff
	str r0, [r2, #4]
	str r0, [r2, #8]
	str r5, [r2, #0xc]
	ldr r0, [r4]
	ldr r1, _021DF354 ; =ovy168_21e09d8
	ldr r0, [r0]
	mov r3, #0
	bl sub_0203A614
	ldr r1, _021DF358 ; =ovy168_21e0a18
	mov r2, #0
	bl ovy168_21e035c
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021DF344: .word 0x021f4240
_021DF348: .word 0x00000281
_021DF34C: .word 0x00007FFF
_021DF350: .word 0x021F3F9C
_021DF354: .word ovy168_21e09d8
_021DF358: .word ovy168_21e0a18
	thumb_func_end ovy168_21df2c8

	thumb_func_start ovy168_21df35c
ovy168_21df35c: ; 0x021DF35C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r0, #0
	add r5, r1, #0
	bl ovy168_21df7e8
	cmp r0, #0
	bne _021DF394
	mov r0, #0
	str r0, [sp]
	ldr r6, _021DF3CC ; =0x021f4240
	mov r0, #0x62
	lsl r3, r5, #0x10
	ldr r1, [r6]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r4, #0
	mov r2, #0xff
	lsr r3, r3, #0x10
	mov r4, #0xff
	bl ovy168_21e0ee8
	ldr r0, [r6]
	mov r1, #1
	add r4, #0xf1
	add sp, #4
	str r1, [r0, r4]
	pop {r3, r4, r5, r6, pc}
_021DF394:
	ldr r1, _021DF3D0 ; =0x0000029D
	ldr r6, _021DF3CC ; =0x021f4240
	str r1, [sp]
	ldr r0, [r6]
	sub r1, #0xa5
	ldrh r0, [r0, r1]
	ldr r3, _021DF3D4 ; =0x021F3F9C
	mov r1, #0x14
	mov r2, #1
	bl GFL_HeapAllocate
	add r2, r0, #0
	str r4, [r2, #4]
	mov r0, #0xff
	str r0, [r2, #8]
	str r5, [r2, #0xc]
	ldr r0, [r6]
	ldr r1, _021DF3D8 ; =ovy168_21e09d8
	ldr r0, [r0]
	mov r3, #0
	bl sub_0203A614
	ldr r1, _021DF3DC ; =ovy168_21e0a18
	mov r2, #0
	bl ovy168_21e035c
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021DF3CC: .word 0x021f4240
_021DF3D0: .word 0x0000029D
_021DF3D4: .word 0x021F3F9C
_021DF3D8: .word ovy168_21e09d8
_021DF3DC: .word ovy168_21e0a18
	thumb_func_end ovy168_21df35c

	thumb_func_start ovy168_21df3e0
ovy168_21df3e0: ; 0x021DF3E0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	add r5, r2, #0
	bl ovy168_21df7e8
	cmp r0, #0
	bne _021DF416
	mov r0, #0
	str r0, [sp]
	ldr r0, _021DF44C ; =0x021f4240
	mov r4, #0x62
	ldr r0, [r0]
	lsl r4, r4, #2
	lsl r3, r5, #0x10
	ldr r0, [r0, r4]
	add r1, r6, #0
	add r2, r7, #0
	lsr r3, r3, #0x10
	bl ovy168_21e0ee8
	ldr r0, _021DF44C ; =0x021f4240
	mov r1, #1
	ldr r0, [r0]
	add r4, #0x68
	str r1, [r0, r4]
	pop {r3, r4, r5, r6, r7, pc}
_021DF416:
	ldr r1, _021DF450 ; =0x000002BA
	ldr r4, _021DF44C ; =0x021f4240
	str r1, [sp]
	ldr r0, [r4]
	sub r1, #0xc2
	ldrh r0, [r0, r1]
	ldr r3, _021DF454 ; =0x021F3F9C
	mov r1, #0x14
	mov r2, #1
	bl GFL_HeapAllocate
	add r2, r0, #0
	str r6, [r2, #4]
	str r7, [r2, #8]
	str r5, [r2, #0xc]
	ldr r0, [r4]
	ldr r1, _021DF458 ; =ovy168_21e09d8
	ldr r0, [r0]
	mov r3, #0
	bl sub_0203A614
	ldr r1, _021DF45C ; =ovy168_21e0a18
	mov r2, #0
	bl ovy168_21e035c
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DF44C: .word 0x021f4240
_021DF450: .word 0x000002BA
_021DF454: .word 0x021F3F9C
_021DF458: .word ovy168_21e09d8
_021DF45C: .word ovy168_21e0a18
	thumb_func_end ovy168_21df3e0

	thumb_func_start ovy168_21df460
ovy168_21df460: ; 0x021DF460
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	bl ovy168_21df7e8
	cmp r0, #0
	bne _021DF4A6
	add r4, sp, #4
	add r0, r4, #0
	bl ovy168_21e1234
	ldr r1, [r5, #0x10]
	add r0, sp, #4
	strb r1, [r0]
	ldrb r1, [r5, #0xc]
	ldr r6, _021DF510 ; =0x021f4240
	ldrh r3, [r5]
	strb r1, [r0, #1]
	ldrb r1, [r5, #0xd]
	ldr r2, [r5, #8]
	strb r1, [r0, #2]
	str r4, [sp]
	mov r4, #0x62
	ldr r0, [r6]
	lsl r4, r4, #2
	ldr r0, [r0, r4]
	ldr r1, [r5, #4]
	bl ovy168_21e0ee8
	ldr r0, [r6]
	mov r1, #1
	add r4, #0x68
	add sp, #0x14
	str r1, [r0, r4]
	pop {r4, r5, r6, r7, pc}
_021DF4A6:
	mov r6, #0xb7
	lsl r6, r6, #2
	ldr r7, _021DF510 ; =0x021f4240
	str r6, [sp]
	add r0, r6, #0
	ldr r1, [r7]
	sub r0, #0xe4
	ldrh r0, [r1, r0]
	ldr r3, _021DF514 ; =0x021F3F9C
	mov r1, #0x14
	mov r2, #1
	bl GFL_HeapAllocate
	add r4, r0, #0
	add r0, r6, #1
	str r0, [sp]
	ldr r0, [r7]
	sub r6, #0xe4
	ldrh r0, [r0, r6]
	ldr r3, _021DF514 ; =0x021F3F9C
	mov r1, #0x10
	mov r2, #1
	bl GFL_HeapAllocate
	ldr r1, [r5, #4]
	str r0, [r4, #0x10]
	str r1, [r4, #4]
	ldr r1, [r5, #8]
	add r2, r4, #0
	str r1, [r4, #8]
	ldrh r1, [r5]
	mov r3, #0
	str r1, [r4, #0xc]
	ldr r1, [r5, #0x10]
	strb r1, [r0]
	ldrb r1, [r5, #0xc]
	ldr r0, [r4, #0x10]
	strb r1, [r0, #1]
	ldrb r1, [r5, #0xd]
	ldr r0, [r4, #0x10]
	strb r1, [r0, #2]
	ldr r0, [r7]
	ldr r1, _021DF518 ; =ovy168_21e09d8
	ldr r0, [r0]
	bl sub_0203A614
	ldr r1, _021DF51C ; =ovy168_21e0a18
	mov r2, #0
	bl ovy168_21e035c
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021DF510: .word 0x021f4240
_021DF514: .word 0x021F3F9C
_021DF518: .word ovy168_21e09d8
_021DF51C: .word ovy168_21e0a18
	thumb_func_end ovy168_21df460

	thumb_func_start ovy168_21df520
ovy168_21df520: ; 0x021DF520
	push {r3, r4, r5, lr}
	ldr r5, _021DF53C ; =0x021f4240
	mov r4, #0x62
	ldr r0, [r5]
	lsl r4, r4, #2
	ldr r0, [r0, r4]
	bl ovy168_21e11d4
	ldr r0, [r5]
	mov r1, #0
	add r4, #0x68
	str r1, [r0, r4]
	pop {r3, r4, r5, pc}
	nop
_021DF53C: .word 0x021f4240
	thumb_func_end ovy168_21df520

	thumb_func_start ovy168_21df540
ovy168_21df540: ; 0x021DF540
	push {r3, r4, r5, lr}
	ldr r5, _021DF55C ; =0x021f4240
	mov r4, #0x62
	ldr r0, [r5]
	lsl r4, r4, #2
	ldr r0, [r0, r4]
	bl ovy168_21e1204
	ldr r0, [r5]
	mov r1, #1
	add r4, #0x68
	str r1, [r0, r4]
	pop {r3, r4, r5, pc}
	nop
_021DF55C: .word 0x021f4240
	thumb_func_end ovy168_21df540

	thumb_func_start ovy168_21df560
ovy168_21df560: ; 0x021DF560
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0xc3
	lsl r0, r0, #2
	str r0, [sp]
	ldr r0, _021DF5FC ; =0x021f4240
	mov r6, #0x7e
	ldr r0, [r0]
	lsl r6, r6, #2
	add r7, r1, #0
	ldrh r1, [r0, r6]
	ldr r0, _021DF600 ; =0x00007FFF
	ldr r3, _021DF604 ; =0x021F3F9C
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0x18
	mov r2, #0
	bl GFL_HeapAllocate
	add r4, r0, #0
	mov r0, #0
	str r0, [r4, #4]
	str r5, [r4]
	mov r0, #3
	str r0, [r4, #8]
	mov r0, #0
	str r0, [r4, #0xc]
	ldr r0, _021DF5FC ; =0x021f4240
	sub r6, #0x68
	ldr r0, [r0]
	add r1, r5, #0
	ldr r0, [r0, r6]
	bl ovy168_21e70a8
	str r0, [r4, #0x14]
	add r0, r7, #0
	bl sub_02021740
	cmp r0, #1
	bne _021DF5BA
	ldr r0, _021DF608 ; =0x00000842
	b _021DF5BC
_021DF5BA:
	ldr r0, _021DF60C ; =0x00006318
_021DF5BC:
	str r0, [r4, #0x10]
	add r0, r5, #0
	bl ovy168_21e0d4c
	ldr r1, _021DF5FC ; =0x021f4240
	mov r7, #0x7d
	add r6, r0, #0
	ldr r5, [r1]
	lsl r7, r7, #2
	ldr r2, [r5, r7]
	mov r0, #0xff
	add r3, r2, #0
	bic r3, r0
	lsl r0, r2, #0x18
	lsr r0, r0, #0x18
	orr r0, r6
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	orr r0, r3
	str r0, [r5, r7]
	ldr r0, [r1]
	ldr r1, _021DF610 ; =ovy168_21e059c
	ldr r0, [r0]
	add r2, r4, #0
	mov r3, #0
	bl sub_0203A614
	ldr r1, _021DF614 ; =ovy168_21e0668
	mov r2, #0
	bl ovy168_21e035c
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021DF5FC: .word 0x021f4240
_021DF600: .word 0x00007FFF
_021DF604: .word 0x021F3F9C
_021DF608: .word 0x00000842
_021DF60C: .word 0x00006318
_021DF610: .word ovy168_21e059c
_021DF614: .word ovy168_21e0668
	thumb_func_end ovy168_21df560

	thumb_func_start ovy168_21df618
ovy168_21df618: ; 0x021DF618
	push {r4, lr}
	ldr r1, _021DF62C ; =0x0000023B
	add r4, r0, #0
	bl ovy168_21df35c
	add r0, r4, #0
	mov r1, #0
	bl ovy168_21e04d8
	pop {r4, pc}
	.align 2, 0
_021DF62C: .word 0x0000023B
	thumb_func_end ovy168_21df618

	thumb_func_start ovy168_21df630
ovy168_21df630: ; 0x021DF630
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r0, #0
	add r0, sp, #4
	add r5, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl ovy168_21e1234
	add r0, sp, #4
	strb r4, [r0, #3]
	ldr r1, [sp, #0x28]
	mov r4, #0x62
	str r1, [sp, #0xc]
	str r6, [sp, #8]
	strh r5, [r0, #0xc]
	add r0, sp, #4
	lsl r4, r4, #2
	add r3, r4, #0
	ldr r5, _021DF674 ; =0x021f4240
	str r0, [sp]
	ldr r0, [r5]
	mov r1, #0
	ldr r0, [r0, r4]
	add r2, r7, #0
	add r3, #0xb2
	bl ovy168_21e0ee8
	ldr r0, [r5]
	mov r1, #1
	add r4, #0x68
	str r1, [r0, r4]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021DF674: .word 0x021f4240
	thumb_func_end ovy168_21df630

	thumb_func_start ovy168_21df678
ovy168_21df678: ; 0x021DF678
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r6, sp, #4
	add r5, r0, #0
	add r0, r6, #0
	add r4, r1, #0
	bl ovy168_21e1234
	add r0, sp, #4
	strh r4, [r0, #0xc]
	str r6, [sp]
	ldr r6, _021DF6B0 ; =0x021f4240
	mov r4, #0x62
	lsl r4, r4, #2
	ldr r0, [r6]
	add r3, r4, #0
	ldr r0, [r0, r4]
	mov r1, #0
	add r2, r5, #0
	add r3, #0xb5
	bl ovy168_21e0ee8
	ldr r0, [r6]
	mov r1, #1
	add r4, #0x68
	str r1, [r0, r4]
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021DF6B0: .word 0x021f4240
	thumb_func_end ovy168_21df678

	thumb_func_start ovy168_21df6b4
ovy168_21df6b4: ; 0x021DF6B4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, _021DF750 ; =0x0000036A
	ldr r6, _021DF754 ; =0x021f4240
	str r0, [sp]
	add r5, r1, #0
	mov r0, #0x7e
	ldr r1, [r6]
	lsl r0, r0, #2
	ldrh r1, [r1, r0]
	ldr r0, _021DF758 ; =0x00007FFF
	ldr r3, _021DF75C ; =0x021F3F9C
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0x2c
	mov r2, #0
	bl GFL_HeapAllocate
	add r4, r0, #0
	mov r0, #0
	str r0, [r4, #4]
	str r5, [r4]
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r1, [r6]
	sub r0, #0x68
	ldr r0, [r1, r0]
	add r1, r5, #0
	add r2, r7, #0
	bl ovy168_21e7bd0
	mov r0, #0x7e
	lsl r0, r0, #2
	add r2, r4, #0
	ldr r1, [r6]
	sub r0, #0x68
	ldr r0, [r1, r0]
	add r1, r7, #0
	add r2, #8
	add r3, r5, #0
	bl ovy168_21e818c
	add r0, r5, #0
	bl ovy168_21e0d4c
	mov r1, #0x7e
	lsl r1, r1, #2
	ldr r2, [r6]
	sub r1, r1, #4
	ldr r3, [r2, r1]
	ldr r1, _021DF760 ; =0xFFFF00FF
	and r1, r3
	lsl r3, r3, #0x10
	lsr r3, r3, #0x18
	orr r0, r3
	lsl r0, r0, #0x18
	lsr r0, r0, #0x10
	orr r1, r0
	mov r0, #0x7e
	lsl r0, r0, #2
	sub r0, r0, #4
	str r1, [r2, r0]
	ldr r0, [r6]
	ldr r1, _021DF764 ; =ovy168_21e06a0
	ldr r0, [r0]
	add r2, r4, #0
	mov r3, #0
	bl sub_0203A614
	ldr r1, _021DF768 ; =ovy168_21e08e8
	mov r2, #0
	bl ovy168_21e035c
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DF750: .word 0x0000036A
_021DF754: .word 0x021f4240
_021DF758: .word 0x00007FFF
_021DF75C: .word 0x021F3F9C
_021DF760: .word 0xFFFF00FF
_021DF764: .word ovy168_21e06a0
_021DF768: .word ovy168_21e08e8
	thumb_func_end ovy168_21df6b4

	thumb_func_start ovy168_21df76c
ovy168_21df76c: ; 0x021DF76C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	ldr r6, _021DF7A4 ; =0x021f4240
	add r5, r0, #0
	mov r7, #0x19
	ldr r0, [r6]
	lsl r7, r7, #4
	ldr r0, [r0, r7]
	add r2, r5, #0
	add r4, r1, #0
	bl ovy168_21e7bd0
	ldr r0, [r6]
	add r1, r5, #0
	add r5, sp, #0
	ldr r0, [r0, r7]
	add r2, r5, #0
	add r3, r4, #0
	bl ovy168_21e818c
	ldr r0, [r6]
	add r1, r4, #0
	ldr r0, [r0, r7]
	add r2, r5, #0
	bl ovy168_21e7f7c
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021DF7A4: .word 0x021f4240
	thumb_func_end ovy168_21df76c
_021DF7A8:
	.byte 0x01, 0x49, 0x02, 0x4B, 0x18, 0x47, 0xC0, 0x46
	.byte 0x85, 0x02, 0x00, 0x00, 0x5D, 0xF3, 0x1D, 0x02, 0x01, 0x49, 0x02, 0x4B, 0x18, 0x47, 0xC0, 0x46
	.byte 0x86, 0x02, 0x00, 0x00, 0x5D, 0xF3, 0x1D, 0x02, 0x01, 0x49, 0x02, 0x4B, 0x18, 0x47, 0xC0, 0x46
	.byte 0x6E, 0x02, 0x00, 0x00, 0x5D, 0xF3, 0x1D, 0x02, 0x01, 0x49, 0x02, 0x4B, 0x18, 0x47, 0xC0, 0x46
	.byte 0x6F, 0x02, 0x00, 0x00, 0x5D, 0xF3, 0x1D, 0x02

	thumb_func_start ovy168_21df7e8
ovy168_21df7e8: ; 0x021DF7E8
	push {r4, r5}
	ldr r0, _021DF818 ; =0x021f4240
	mov r1, #0x7d
	ldr r5, [r0]
	lsl r1, r1, #2
	ldr r4, [r5, r1]
	sub r1, r1, #4
	lsl r2, r4, #0x10
	lsr r3, r2, #0x18
	ldr r2, [r5, r1]
	lsl r1, r4, #0x18
	lsr r1, r1, #0x18
	lsl r0, r4, #0xe
	orr r1, r2
	lsr r0, r0, #0x1e
	orr r1, r3
	orr r0, r1
	beq _021DF812
	mov r0, #1
	pop {r4, r5}
	bx lr
_021DF812:
	mov r0, #0
	pop {r4, r5}
	bx lr
	.align 2, 0
_021DF818: .word 0x021f4240
	thumb_func_end ovy168_21df7e8
_021DF81C:
	.byte 0x03, 0x1C, 0x04, 0x48
	.byte 0x0A, 0x1C, 0x01, 0x68, 0x19, 0x20, 0x00, 0x01, 0x08, 0x58, 0x19, 0x1C, 0x01, 0x4B, 0x18, 0x47
	.byte 0x40, 0x42, 0x1F, 0x02, 0x95, 0x6B, 0x1E, 0x02

	thumb_func_start ovy168_21df838
ovy168_21df838: ; 0x021DF838
	add r1, r0, #0
	ldr r0, _021DF848 ; =0x021f4240
	ldr r3, _021DF84C ; =ovy168_21e6e58
	ldr r2, [r0]
	mov r0, #0x19
	lsl r0, r0, #4
	ldr r0, [r2, r0]
	bx r3
	.align 2, 0
_021DF848: .word 0x021f4240
_021DF84C: .word ovy168_21e6e58
	thumb_func_end ovy168_21df838

	thumb_func_start ovy168_21df850
ovy168_21df850: ; 0x021DF850
	push {r3, lr}
	add r1, r0, #0
	cmp r1, #8
	bge _021DF868
	ldr r0, _021DF888 ; =0x021f4240
	ldr r2, [r0]
	mov r0, #0x19
	lsl r0, r0, #4
	ldr r0, [r2, r0]
	bl ovy168_21e7b24
	pop {r3, pc}
_021DF868:
	ldr r0, _021DF888 ; =0x021f4240
	sub r1, #8
	ldr r2, [r0]
	lsl r0, r1, #2
	add r1, r2, r0
	mov r0, #2
	lsl r0, r0, #8
	ldr r1, [r1, r0]
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _021DF884
	mov r0, #1
	pop {r3, pc}
_021DF884:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
_021DF888: .word 0x021f4240
	thumb_func_end ovy168_21df850

	thumb_func_start ovy168_21df88c
ovy168_21df88c: ; 0x021DF88C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _021DF9B0 ; =0x021f4240
	add r4, r1, #0
	mov r1, #0x7a
	ldr r0, [r0]
	lsl r1, r1, #2
	add r6, r2, #0
	ldrh r2, [r0, r1]
	add r7, r3, #0
	cmp r2, #1
	beq _021DF8AA
	cmp r2, #2
	beq _021DF8C6
	b _021DF8D6
_021DF8AA:
	cmp r5, #1
	bhi _021DF8D6
	sub r1, r1, #4
	ldr r0, [r0, r1]
	mov r1, #0
	mov r5, #0
	bl ovy167_219d97c
	bl MyStatus_GetTrainerGender
	cmp r0, #0
	beq _021DF8D6
	mov r5, #1
	b _021DF8D6
_021DF8C6:
	cmp r5, #1
	bhi _021DF8D6
	sub r1, r1, #4
	ldr r0, [r0, r1]
	mov r1, #0
	bl ovy167_219d938
	add r5, r0, #0
_021DF8D6:
	mov r0, #1
	tst r0, r4
	bne _021DF926
	cmp r5, #0xb6
	bgt _021DF8F2
	bge _021DF910
	cmp r5, #1
	bgt _021DF962
	cmp r5, #0
	blt _021DF962
	beq _021DF8F8
	cmp r5, #1
	beq _021DF904
	b _021DF962
_021DF8F2:
	cmp r5, #0xb7
	beq _021DF91C
	b _021DF962
_021DF8F8:
	bl ovy168_21e02e4
	cmp r0, #0
	beq _021DF962
	mov r5, #0xb4
	b _021DF962
_021DF904:
	bl ovy168_21e02e4
	cmp r0, #0
	beq _021DF962
	mov r5, #0xb5
	b _021DF962
_021DF910:
	bl ovy168_21e02e4
	cmp r0, #0
	beq _021DF962
_021DF918:
	mov r5, #0xb8
	b _021DF962
_021DF91C:
	bl ovy168_21e02e4
	cmp r0, #0
	beq _021DF962
	b _021DF960
_021DF926:
	cmp r5, #0xb6
	bgt _021DF93C
	bge _021DF94E
	cmp r5, #1
	bgt _021DF962
	cmp r5, #0
	blt _021DF962
	beq _021DF942
	cmp r5, #1
	beq _021DF942
	b _021DF962
_021DF93C:
	cmp r5, #0xb7
	beq _021DF958
	b _021DF962
_021DF942:
	bl ovy168_21e02e4
	cmp r0, #0
	beq _021DF962
	add r5, #0xb4
	b _021DF962
_021DF94E:
	bl ovy168_21e02e4
	cmp r0, #0
	beq _021DF962
	b _021DF918
_021DF958:
	bl ovy168_21e02e4
	cmp r0, #0
	beq _021DF962
_021DF960:
	mov r5, #0xb9
_021DF962:
	ldr r0, _021DF9B0 ; =0x021f4240
	add r2, r4, #0
	ldr r1, [r0]
	mov r0, #0x19
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r1, r5, #0
	bl ovy168_21e6db4
	cmp r6, #0
	bne _021DF982
	cmp r7, #0
	bne _021DF982
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _021DF99A
_021DF982:
	ldr r0, [sp, #0x18]
	add r2, r6, #0
	str r0, [sp]
	ldr r0, _021DF9B0 ; =0x021f4240
	add r3, r7, #0
	ldr r1, [r0]
	mov r0, #0x19
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r1, r4, #0
	bl ovy168_21e6ea4
_021DF99A:
	ldr r0, _021DF9B0 ; =0x021f4240
	ldr r1, [r0]
	add r0, r4, #0
	sub r0, #8
	lsl r0, r0, #2
	add r1, r1, r0
	mov r0, #2
	lsl r0, r0, #8
	str r4, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DF9B0: .word 0x021f4240
	thumb_func_end ovy168_21df88c

	thumb_func_start ovy168_21df9b4
ovy168_21df9b4: ; 0x021DF9B4
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _021DF9E4 ; =0x021f4240
	add r1, r0, #0
	sub r0, #8
	lsl r5, r0, #2
	ldr r0, [r6]
	mov r7, #2
	mov r4, #0
	add r2, r0, r5
	lsl r7, r7, #8
	ldr r2, [r2, r7]
	mvn r4, r4
	cmp r2, r4
	beq _021DF9E0
	add r2, r7, #0
	sub r2, #0x70
	ldr r0, [r0, r2]
	bl ovy168_21e6e58
	ldr r0, [r6]
	add r0, r0, r5
	str r4, [r0, r7]
_021DF9E0:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DF9E4: .word 0x021f4240
	thumb_func_end ovy168_21df9b4
_021DF9E8:
	.byte 0x03, 0x1C, 0x04, 0x48, 0x0A, 0x1C, 0x01, 0x68
	.byte 0x19, 0x20, 0x00, 0x01, 0x08, 0x58, 0x19, 0x1C, 0x01, 0x4B, 0x18, 0x47, 0x40, 0x42, 0x1F, 0x02
	.byte 0x21, 0x72, 0x1E, 0x02

	thumb_func_start ovy168_21dfa04
ovy168_21dfa04: ; 0x021DFA04
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _021DFA54 ; =0x021f4240
	add r3, r1, #0
	ldr r5, [r0]
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #2
	beq _021DFA1E
	cmp r1, #3
	beq _021DFA30
	b _021DFA42
_021DFA1E:
	str r2, [sp]
	sub r0, #0x18
	add r2, r3, #0
	ldr r0, [r5, r0]
	add r1, r4, #0
	mov r3, #2
	bl ovy168_21efaa0
	pop {r3, r4, r5, pc}
_021DFA30:
	str r2, [sp]
	sub r0, #0x18
	add r2, r3, #0
	ldr r0, [r5, r0]
	add r1, r4, #0
	mov r3, #3
	bl ovy168_21efaa0
	pop {r3, r4, r5, pc}
_021DFA42:
	str r2, [sp]
	sub r0, #0x18
	add r2, r3, #0
	ldr r0, [r5, r0]
	add r1, r4, #0
	mov r3, #0
	bl ovy168_21efaa0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021DFA54: .word 0x021f4240
	thumb_func_end ovy168_21dfa04

	thumb_func_start ovy168_21dfa58
ovy168_21dfa58: ; 0x021DFA58
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _021DFAA8 ; =0x021f4240
	add r3, r1, #0
	ldr r5, [r0]
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #2
	beq _021DFA72
	cmp r1, #3
	beq _021DFA84
	b _021DFA96
_021DFA72:
	str r2, [sp]
	sub r0, #0x18
	add r2, r3, #0
	ldr r0, [r5, r0]
	add r1, r4, #0
	mov r3, #2
	bl ovy168_21efc70
	pop {r3, r4, r5, pc}
_021DFA84:
	str r2, [sp]
	sub r0, #0x18
	add r2, r3, #0
	ldr r0, [r5, r0]
	add r1, r4, #0
	mov r3, #3
	bl ovy168_21efc70
	pop {r3, r4, r5, pc}
_021DFA96:
	str r2, [sp]
	sub r0, #0x18
	add r2, r3, #0
	ldr r0, [r5, r0]
	add r1, r4, #0
	mov r3, #0
	bl ovy168_21efc70
	pop {r3, r4, r5, pc}
	.align 2, 0
_021DFAA8: .word 0x021f4240
	thumb_func_end ovy168_21dfa58
_021DFAAC:
	.byte 0x01, 0x1C, 0x03, 0x48
	.byte 0x03, 0x4B, 0x02, 0x68, 0x69, 0x20, 0x80, 0x00, 0x10, 0x58, 0x18, 0x47, 0x40, 0x42, 0x1F, 0x02
	.byte 0x69, 0x06, 0x1F, 0x02, 0x03, 0x1C, 0x04, 0x48, 0x0A, 0x1C, 0x01, 0x68, 0x69, 0x20, 0x80, 0x00
	.byte 0x08, 0x58, 0x19, 0x1C, 0x01, 0x4B, 0x18, 0x47, 0x40, 0x42, 0x1F, 0x02, 0x75, 0x08, 0x1F, 0x02
	.byte 0x03, 0x1C, 0x04, 0x48, 0x0A, 0x1C, 0x01, 0x68, 0x69, 0x20, 0x80, 0x00, 0x08, 0x58, 0x19, 0x1C
	.byte 0x01, 0x4B, 0x18, 0x47, 0x40, 0x42, 0x1F, 0x02, 0x95, 0x08, 0x1F, 0x02

	thumb_func_start ovy168_21dfafc
ovy168_21dfafc: ; 0x021DFAFC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r0, r2, #0
	mov r1, #0xf
	bl ovy167_21bb1b4
	cmp r0, #0x64
	bge _021DFB20
	ldr r0, _021DFB24 ; =0x021f4240
	add r2, r4, #0
	ldr r1, [r0]
	mov r0, #0x69
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r5, #0
	bl ovy168_21f08b4
_021DFB20:
	pop {r3, r4, r5, pc}
	nop
_021DFB24: .word 0x021f4240
	thumb_func_end ovy168_21dfafc
_021DFB28:
	.byte 0x02, 0x1C, 0x03, 0x48, 0x03, 0x68, 0x69, 0x20
	.byte 0x80, 0x00, 0x18, 0x58, 0x01, 0x4B, 0x18, 0x47, 0x40, 0x42, 0x1F, 0x02, 0xDD, 0x08, 0x1F, 0x02

	thumb_func_start ovy168_21dfb40
ovy168_21dfb40: ; 0x021DFB40
	ldr r0, _021DFB50 ; =0x021f4240
	ldr r3, _021DFB54 ; =ovy168_21f1854
	ldr r1, [r0]
	mov r0, #0x69
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bx r3
	nop
_021DFB50: .word 0x021f4240
_021DFB54: .word ovy168_21f1854
	thumb_func_end ovy168_21dfb40
_021DFB58:
	.byte 0x03, 0x48, 0x04, 0x4B, 0x01, 0x68, 0x69, 0x20
	.byte 0x80, 0x00, 0x08, 0x58, 0x18, 0x47, 0xC0, 0x46, 0x40, 0x42, 0x1F, 0x02, 0x7D, 0x0A, 0x1F, 0x02

	thumb_func_start ovy168_21dfb70
ovy168_21dfb70: ; 0x021DFB70
	add r3, r0, #0
	ldr r0, _021DFB84 ; =0x021f4240
	add r2, r1, #0
	ldr r1, [r0]
	mov r0, #0x69
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r3, #0
	ldr r3, _021DFB88 ; =ovy168_21f0ab4
	bx r3
	.align 2, 0
_021DFB84: .word 0x021f4240
_021DFB88: .word ovy168_21f0ab4
	thumb_func_end ovy168_21dfb70

	thumb_func_start ovy168_21dfb8c
ovy168_21dfb8c: ; 0x021DFB8C
	add r3, r0, #0
	ldr r0, _021DFBA0 ; =0x021f4240
	add r2, r1, #0
	ldr r1, [r0]
	mov r0, #0x69
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r3, #0
	ldr r3, _021DFBA4 ; =ovy168_21f0af8
	bx r3
	.align 2, 0
_021DFBA0: .word 0x021f4240
_021DFBA4: .word ovy168_21f0af8
	thumb_func_end ovy168_21dfb8c
_021DFBA8:
	.byte 0x03, 0x1C, 0x04, 0x48, 0x0A, 0x1C, 0x01, 0x68
	.byte 0x69, 0x20, 0x80, 0x00, 0x08, 0x58, 0x19, 0x1C, 0x01, 0x4B, 0x18, 0x47, 0x40, 0x42, 0x1F, 0x02
	.byte 0x29, 0x16, 0x1F, 0x02, 0x01, 0x1C, 0x03, 0x48, 0x03, 0x4B, 0x02, 0x68, 0x69, 0x20, 0x80, 0x00
	.byte 0x10, 0x58, 0x18, 0x47, 0x40, 0x42, 0x1F, 0x02, 0xA9, 0x16, 0x1F, 0x02, 0x01, 0x1C, 0x03, 0x48
	.byte 0x03, 0x4B, 0x02, 0x68, 0x69, 0x20, 0x80, 0x00, 0x10, 0x58, 0x18, 0x47, 0x40, 0x42, 0x1F, 0x02
	.byte 0x5D, 0x0B, 0x1F, 0x02

	thumb_func_start ovy168_21dfbf4
ovy168_21dfbf4: ; 0x021DFBF4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _021DFC10 ; =0x021f4240
	add r4, r1, #0
	ldr r1, [r0]
	mov r0, #0x69
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r3, r2, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ovy168_21f1798
	pop {r3, r4, r5, pc}
	.align 2, 0
_021DFC10: .word 0x021f4240
	thumb_func_end ovy168_21dfbf4

	thumb_func_start ovy168_21dfc14
ovy168_21dfc14: ; 0x021DFC14
	push {r4, r5, r6, lr}
	ldr r6, _021DFC34 ; =0x021f4240
	mov r4, #0x7e
	ldr r1, [r6]
	lsl r4, r4, #2
	ldrh r1, [r1, r4]
	add r5, r0, #0
	bl ovy168_21f1c84
	ldr r1, [r5]
	ldr r2, [r6]
	lsl r1, r1, #2
	add r1, r2, r1
	sub r4, #0x50
	str r0, [r1, r4]
	pop {r4, r5, r6, pc}
	.align 2, 0
_021DFC34: .word 0x021f4240
	thumb_func_end ovy168_21dfc14
_021DFC38:
	.byte 0x04, 0x49, 0x80, 0x00, 0x09, 0x68, 0x04, 0x4B
	.byte 0x09, 0x18, 0x6A, 0x20, 0x80, 0x00, 0x08, 0x58, 0x18, 0x47, 0xC0, 0x46, 0x40, 0x42, 0x1F, 0x02
	.byte 0x35, 0x1D, 0x1F, 0x02, 0x04, 0x49, 0x80, 0x00, 0x09, 0x68, 0x04, 0x4B, 0x09, 0x18, 0x6A, 0x20
	.byte 0x80, 0x00, 0x08, 0x58, 0x18, 0x47, 0xC0, 0x46, 0x40, 0x42, 0x1F, 0x02, 0x4D, 0x1D, 0x1F, 0x02

	thumb_func_start ovy168_21dfc70
ovy168_21dfc70: ; 0x021DFC70
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r5, #0
	beq _021DFC88
	cmp r5, #2
	beq _021DFC88
	cmp r5, #4
	bne _021DFCA2
_021DFC88:
	add r0, sp, #0x28
	ldrh r0, [r0]
	add r2, r6, #0
	add r3, r7, #0
	str r0, [sp]
	ldr r0, _021DFCF8 ; =0x021f4240
	ldr r1, [r0]
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r4, #0
	bl ovy168_21ddfd4
_021DFCA2:
	cmp r5, #1
	beq _021DFCAE
	cmp r5, #2
	beq _021DFCAE
	cmp r5, #4
	bne _021DFCC8
_021DFCAE:
	add r0, sp, #0x28
	ldrh r0, [r0]
	add r2, r6, #0
	add r3, r7, #0
	str r0, [sp]
	ldr r0, _021DFCF8 ; =0x021f4240
	ldr r1, [r0]
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r4, #0
	bl ovy168_21de664
_021DFCC8:
	sub r0, r5, #3
	cmp r0, #1
	bhi _021DFCF4
	ldr r0, _021DFCF8 ; =0x021f4240
	mov r2, #0xff
	ldr r0, [r0]
	lsl r3, r7, #0x18
	str r4, [sp]
	str r6, [sp, #4]
	add r1, sp, #0x28
	ldrh r1, [r1]
	lsl r2, r2, #8
	asr r3, r3, #0x18
	str r1, [sp, #8]
	ldr r1, [r0]
	str r1, [sp, #0xc]
	mov r1, #0x63
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r1, #1
	bl sub_02026FE4
_021DFCF4:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021DFCF8: .word 0x021f4240
	thumb_func_end ovy168_21dfc70

	thumb_func_start ovy168_21dfcfc
ovy168_21dfcfc: ; 0x021DFCFC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r7, #0
	mov r6, #0
	mov r4, #0
	cmp r5, #0
	beq _021DFD12
	cmp r5, #2
	beq _021DFD12
	cmp r5, #4
	bne _021DFD22
_021DFD12:
	ldr r0, _021DFD70 ; =0x021f4240
	ldr r1, [r0]
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ovy168_21de004
	add r7, r0, #0
_021DFD22:
	cmp r5, #1
	beq _021DFD2E
	cmp r5, #2
	beq _021DFD2E
	cmp r5, #4
	bne _021DFD3E
_021DFD2E:
	ldr r0, _021DFD70 ; =0x021f4240
	ldr r1, [r0]
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ovy168_21de694
	add r6, r0, #0
_021DFD3E:
	sub r0, r5, #3
	cmp r0, #1
	bhi _021DFD5A
	ldr r0, _021DFD70 ; =0x021f4240
	ldr r1, [r0]
	mov r0, #0x63
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02027780
	mov r4, #1
	cmp r0, #0
	bne _021DFD5A
	mov r4, #0
_021DFD5A:
	cmp r7, #1
	beq _021DFD66
	cmp r6, #1
	beq _021DFD66
	cmp r4, #1
	bne _021DFD6A
_021DFD66:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021DFD6A:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DFD70: .word 0x021f4240
	thumb_func_end ovy168_21dfcfc

	thumb_func_start ovy168_21dfd74
ovy168_21dfd74: ; 0x021DFD74
	push {r3, lr}
	add r2, r1, #0
	cmp r0, #4
	bhi _021DFDE6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DFD88: ; jump table
	.short _021DFD92 - _021DFD88 - 2 ; case 0
	.short _021DFDA4 - _021DFD88 - 2 ; case 1
	.short _021DFDB4 - _021DFD88 - 2 ; case 2
	.short _021DFDC4 - _021DFD88 - 2 ; case 3
	.short _021DFDD6 - _021DFD88 - 2 ; case 4
_021DFD92:
	ldr r0, _021DFDE8 ; =0x021f4240
	ldr r1, [r0]
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #2
	bl ovy168_21de014
	pop {r3, pc}
_021DFDA4:
	ldr r0, _021DFDE8 ; =0x021f4240
	ldr r2, [r0]
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	bl ovy168_21de6a4
	pop {r3, pc}
_021DFDB4:
	mov r1, #1
	eor r1, r2
	lsl r1, r1, #0x18
	mov r0, #3
	lsr r1, r1, #0x18
	bl sub_02044C98
	pop {r3, pc}
_021DFDC4:
	ldr r0, _021DFDE8 ; =0x021f4240
	ldr r1, [r0]
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	bl ovy168_21de014
	pop {r3, pc}
_021DFDD6:
	ldr r0, _021DFDE8 ; =0x021f4240
	ldr r1, [r0]
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl ovy168_21de014
_021DFDE6:
	pop {r3, pc}
	.align 2, 0
_021DFDE8: .word 0x021f4240
	thumb_func_end ovy168_21dfd74

	thumb_func_start ovy168_21dfdec
ovy168_21dfdec: ; 0x021DFDEC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	ldr r0, _021DFE70 ; =0x00000602
	str r2, [sp, #4]
	str r0, [sp]
	ldr r0, _021DFE74 ; =0x021f4240
	add r7, r1, #0
	ldr r1, [r0]
	mov r0, #0x7e
	lsl r0, r0, #2
	ldrh r1, [r1, r0]
	ldr r0, _021DFE78 ; =0x00007FFF
	ldr r3, _021DFE7C ; =0x021F3F9C
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0x10
	mov r2, #0
	mov r5, #0
	bl GFL_HeapAllocate
	add r4, r0, #0
	cmp r6, #1
	beq _021DFE6A
	str r5, [r4]
	cmp r6, #3
	beq _021DFE2A
	mov r5, #1
_021DFE2A:
	strb r5, [r4, #4]
	ldr r0, [sp, #4]
	str r7, [r4, #8]
	str r0, [r4, #0xc]
	add r0, r7, #0
	bl ovy168_21e0d4c
	ldr r2, _021DFE74 ; =0x021f4240
	mov r1, #0x7d
	ldr r6, [r2]
	lsl r1, r1, #2
	ldr r3, [r6, r1]
	ldr r5, _021DFE80 ; =0xFFFCFFFF
	and r5, r3
	lsl r3, r3, #0xe
	lsr r3, r3, #0x1e
	orr r0, r3
	lsl r0, r0, #0x1e
	lsr r0, r0, #0xe
	orr r0, r5
	str r0, [r6, r1]
	ldr r0, [r2]
	ldr r1, _021DFE84 ; =ovy168_21e0920
	ldr r0, [r0]
	add r2, r4, #0
	mov r3, #0
	bl sub_0203A614
	ldr r1, _021DFE88 ; =ovy168_21e09a0
	mov r2, #0
	bl ovy168_21e035c
_021DFE6A:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DFE70: .word 0x00000602
_021DFE74: .word 0x021f4240
_021DFE78: .word 0x00007FFF
_021DFE7C: .word 0x021F3F9C
_021DFE80: .word 0xFFFCFFFF
_021DFE84: .word ovy168_21e0920
_021DFE88: .word ovy168_21e09a0
	thumb_func_end ovy168_21dfdec
_021DFE8C:
	.byte 0x03, 0x1C, 0x04, 0x48
	.byte 0x0A, 0x1C, 0x01, 0x68, 0x19, 0x20, 0x00, 0x01, 0x08, 0x58, 0x19, 0x1C, 0x01, 0x4B, 0x18, 0x47
	.byte 0x40, 0x42, 0x1F, 0x02, 0x39, 0x75, 0x1E, 0x02

	thumb_func_start ovy168_21dfea8
ovy168_21dfea8: ; 0x021DFEA8
	ldr r1, _021DFEBC ; =0x021f4240
	sub r0, #8
	ldr r1, [r1]
	lsl r0, r0, #2
	add r1, r1, r0
	mov r0, #2
	lsl r0, r0, #8
	ldr r0, [r1, r0]
	bx lr
	nop
_021DFEBC: .word 0x021f4240
	thumb_func_end ovy168_21dfea8
_021DFEC0:
	.byte 0x03, 0x1C, 0x04, 0x48, 0x0A, 0x1C, 0x01, 0x68, 0x1B, 0x20, 0x00, 0x01, 0x08, 0x58, 0x19, 0x1C
	.byte 0x01, 0x4B, 0x18, 0x47, 0x40, 0x42, 0x1F, 0x02, 0x75, 0x22, 0x1F, 0x02

	thumb_func_start ovy168_21dfedc
ovy168_21dfedc: ; 0x021DFEDC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _021DFEF8 ; =0x021f4240
	add r4, r1, #0
	ldr r1, [r0]
	mov r0, #0x1b
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r3, r2, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ovy168_21f2418
	pop {r3, r4, r5, pc}
	.align 2, 0
_021DFEF8: .word 0x021f4240
	thumb_func_end ovy168_21dfedc
_021DFEFC:
	.byte 0x01, 0x1C, 0x03, 0x48
	.byte 0x03, 0x4B, 0x02, 0x68, 0x1B, 0x20, 0x00, 0x01, 0x10, 0x58, 0x18, 0x47, 0x40, 0x42, 0x1F, 0x02
	.byte 0x5D, 0x24, 0x1F, 0x02, 0x01, 0x1C, 0x03, 0x48, 0x03, 0x4B, 0x02, 0x68, 0x19, 0x20, 0x00, 0x01
	.byte 0x10, 0x58, 0x18, 0x47, 0x40, 0x42, 0x1F, 0x02, 0xA9, 0x70, 0x1E, 0x02

	thumb_func_start ovy168_21dff2c
ovy168_21dff2c: ; 0x021DFF2C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #1
	add r7, r2, #0
	add r6, r3, #0
	tst r1, r5
	beq _021DFF88
	add r5, sp, #0x14
	add r1, r5, #0
	add r2, sp, #8
	bl ovy168_21e0000
	cmp r4, #0
	beq _021DFF54
	cmp r4, #1
	beq _021DFF6A
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_021DFF54:
	ldr r0, _021DFFFC ; =0x021f4240
	add r2, sp, #8
	ldr r1, [r0]
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r5, #0
	bl ovy168_21de754
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_021DFF6A:
	ldr r0, [sp, #0x38]
	str r6, [sp]
	str r0, [sp, #4]
	ldr r0, _021DFFFC ; =0x021f4240
	add r2, sp, #8
	ldr r1, [r0]
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r5, #0
	add r3, r7, #0
	bl ovy168_21de7c0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_021DFF88:
	ldr r0, _021DFFFC ; =0x021f4240
	ldr r1, [r0]
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	cmp r1, #3
	bhi _021DFFF8
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021DFFA2: ; jump table
	.short _021DFFAA - _021DFFA2 - 2 ; case 0
	.short _021DFFB4 - _021DFFA2 - 2 ; case 1
	.short _021DFFCC - _021DFFA2 - 2 ; case 2
	.short _021DFFF2 - _021DFFA2 - 2 ; case 3
_021DFFAA:
	add r0, #0x83
	bl ovy168_21df2c8
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_021DFFB4:
	cmp r5, #2
	bne _021DFFC2
	add r0, #0x84
	bl ovy168_21df2c8
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_021DFFC2:
	add r0, #0x85
	bl ovy168_21df2c8
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_021DFFCC:
	cmp r5, #2
	bne _021DFFDA
	add r0, #0x86
	bl ovy168_21df2c8
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_021DFFDA:
	cmp r5, #4
	bne _021DFFE8
	add r0, #0x83
	bl ovy168_21df2c8
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_021DFFE8:
	add r0, #0x87
	bl ovy168_21df2c8
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_021DFFF2:
	add r0, #0x89
	bl ovy168_21df2c8
_021DFFF8:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021DFFFC: .word 0x021f4240
	thumb_func_end ovy168_21dff2c

	thumb_func_start ovy168_21e0000
ovy168_21e0000: ; 0x021E0000
	push {r3, r4, r5, lr}
	add r3, r0, #0
	ldr r0, _021E0040 ; =0x021f4240
	add r5, r1, #0
	ldr r1, [r0]
	mov r0, #0x19
	lsl r0, r0, #4
	add r4, r2, #0
	ldr r0, [r1, r0]
	add r1, r4, #0
	add r2, r3, #0
	bl ovy168_21e7154
	ldr r1, [r4]
	ldr r0, _021E0044 ; =0x00004B33
	add r0, r1, r0
	str r0, [r5]
	ldr r1, [r4, #4]
	ldr r0, _021E0048 ; =0x00002299
	add r0, r1, r0
	str r0, [r5, #4]
	ldr r1, [r4, #8]
	ldr r0, _021E004C ; =0x000099CD
	add r0, r1, r0
	str r0, [r5, #8]
	mov r0, #2
	ldr r1, [r4, #4]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
	nop
_021E0040: .word 0x021f4240
_021E0044: .word 0x00004B33
_021E0048: .word 0x00002299
_021E004C: .word 0x000099CD
	thumb_func_end ovy168_21e0000

	thumb_func_start ovy168_21e0050
ovy168_21e0050: ; 0x021E0050
	ldr r0, _021E0058 ; =0x021f4240
	ldr r0, [r0]
	bx lr
	nop
_021E0058: .word 0x021f4240
	thumb_func_end ovy168_21e0050

	thumb_func_start ovy168_21e005c
ovy168_21e005c: ; 0x021E005C
	ldr r0, _021E0068 ; =0x021f4240
	ldr r1, [r0]
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bx lr
	.align 2, 0
_021E0068: .word 0x021f4240
	thumb_func_end ovy168_21e005c

	thumb_func_start ovy168_21e006c
ovy168_21e006c: ; 0x021E006C
	ldr r0, _021E0078 ; =0x021f4240
	ldr r1, [r0]
	mov r0, #0x19
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bx lr
	.align 2, 0
_021E0078: .word 0x021f4240
	thumb_func_end ovy168_21e006c

	thumb_func_start ovy168_21e007c
ovy168_21e007c: ; 0x021E007C
	ldr r0, _021E0088 ; =0x021f4240
	ldr r1, [r0]
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bx lr
	.align 2, 0
_021E0088: .word 0x021f4240
	thumb_func_end ovy168_21e007c

	thumb_func_start ovy168_21e008c
ovy168_21e008c: ; 0x021E008C
	ldr r0, _021E0098 ; =0x021f4240
	ldr r1, [r0]
	mov r0, #0x69
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bx lr
	.align 2, 0
_021E0098: .word 0x021f4240
	thumb_func_end ovy168_21e008c

	thumb_func_start ovy168_21e009c
ovy168_21e009c: ; 0x021E009C
	ldr r0, _021E00A8 ; =0x021f4240
	ldr r1, [r0]
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bx lr
	.align 2, 0
_021E00A8: .word 0x021f4240
	thumb_func_end ovy168_21e009c

	thumb_func_start ovy168_21e00ac
ovy168_21e00ac: ; 0x021E00AC
	ldr r0, _021E00B4 ; =0x021f4240
	ldr r0, [r0]
	ldr r0, [r0]
	bx lr
	.align 2, 0
_021E00B4: .word 0x021f4240
	thumb_func_end ovy168_21e00ac

	thumb_func_start ovy168_21e00b8
ovy168_21e00b8: ; 0x021E00B8
	ldr r0, _021E00C4 ; =0x021f4240
	ldr r1, [r0]
	mov r0, #0x63
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bx lr
	.align 2, 0
_021E00C4: .word 0x021f4240
	thumb_func_end ovy168_21e00b8

	thumb_func_start ovy168_21e00c8
ovy168_21e00c8: ; 0x021E00C8
	ldr r0, _021E00D4 ; =0x021f4240
	ldr r1, [r0]
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bx lr
	.align 2, 0
_021E00D4: .word 0x021f4240
	thumb_func_end ovy168_21e00c8

	thumb_func_start ovy168_21e00d8
ovy168_21e00d8: ; 0x021E00D8
	ldr r0, _021E00E4 ; =0x021f4240
	ldr r1, [r0]
	mov r0, #0x6d
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bx lr
	.align 2, 0
_021E00E4: .word 0x021f4240
	thumb_func_end ovy168_21e00d8

	thumb_func_start ovy168_21e00e8
ovy168_21e00e8: ; 0x021E00E8
	ldr r0, _021E00F4 ; =0x021f4240
	ldr r1, [r0]
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bx lr
	.align 2, 0
_021E00F4: .word 0x021f4240
	thumb_func_end ovy168_21e00e8

	thumb_func_start ovy168_21e00f8
ovy168_21e00f8: ; 0x021E00F8
	ldr r0, _021E0104 ; =0x021f4240
	ldr r1, [r0]
	mov r0, #7
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	bx lr
	.align 2, 0
_021E0104: .word 0x021f4240
	thumb_func_end ovy168_21e00f8

	thumb_func_start ovy168_21e0108
ovy168_21e0108: ; 0x021E0108
	ldr r0, _021E0114 ; =0x021f4240
	ldr r1, [r0]
	mov r0, #0x77
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bx lr
	.align 2, 0
_021E0114: .word 0x021f4240
	thumb_func_end ovy168_21e0108

	thumb_func_start ovy168_21e0118
ovy168_21e0118: ; 0x021E0118
	ldr r1, _021E0128 ; =0x021f4240
	lsl r0, r0, #1
	ldr r1, [r1]
	add r1, r1, r0
	mov r0, #0x75
	lsl r0, r0, #2
	ldrh r0, [r1, r0]
	bx lr
	.align 2, 0
_021E0128: .word 0x021f4240
	thumb_func_end ovy168_21e0118

	thumb_func_start ovy168_21e012c
ovy168_21e012c: ; 0x021E012C
	ldr r0, _021E0138 ; =0x021f4240
	ldr r1, [r0]
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bx lr
	.align 2, 0
_021E0138: .word 0x021f4240
	thumb_func_end ovy168_21e012c

	thumb_func_start ovy168_21e013c
ovy168_21e013c: ; 0x021E013C
	ldr r0, _021E0148 ; =0x021f4240
	ldr r1, [r0]
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bx lr
	.align 2, 0
_021E0148: .word 0x021f4240
	thumb_func_end ovy168_21e013c
_021E014C:
	.byte 0x03, 0x48, 0x04, 0x4B
	.byte 0x01, 0x68, 0x69, 0x20, 0x80, 0x00, 0x08, 0x58, 0x18, 0x47, 0xC0, 0x46, 0x40, 0x42, 0x1F, 0x02
	.byte 0x35, 0x17, 0x1F, 0x02

	thumb_func_start ovy168_21e0164
ovy168_21e0164: ; 0x021E0164
	push {r4, r5, r6, lr}
	ldr r4, _021E01A4 ; =0x021f4240
	add r5, r0, #0
	mov r6, #0x69
	ldr r0, [r4]
	lsl r6, r6, #2
	ldr r0, [r0, r6]
	bl ovy168_21f1734
	cmp r0, #0
	beq _021E0188
	ldr r0, [r4]
	mov r1, #0
	ldr r0, [r0, r6]
	bl ovy168_21f1740
	bl sub_02005F0C
_021E0188:
	ldr r0, _021E01A4 ; =0x021f4240
	ldr r1, [r0]
	mov r0, #0x69
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl ovy168_21f177c
	ldr r1, _021E01A8 ; =0x0000FFFF
	add r0, r5, #0
	bl sub_02005DF4
	pop {r4, r5, r6, pc}
	nop
_021E01A4: .word 0x021f4240
_021E01A8: .word 0x0000FFFF
	thumb_func_end ovy168_21e0164
_021E01AC:
	.byte 0x01, 0x1C, 0x03, 0x48
	.byte 0x03, 0x4B, 0x02, 0x68, 0x69, 0x20, 0x80, 0x00, 0x10, 0x58, 0x18, 0x47, 0x40, 0x42, 0x1F, 0x02
	.byte 0x7D, 0x17, 0x1F, 0x02

	thumb_func_start ovy168_21e01c4
ovy168_21e01c4: ; 0x021E01C4
	push {r4, r5, r6, lr}
	ldr r5, _021E0200 ; =0x021f4240
	add r1, r0, #0
	mov r4, #0x7f
	ldr r0, [r5]
	mov r6, #1
	lsl r4, r4, #2
	str r6, [r0, r4]
	add r0, r4, #0
	ldr r2, [r5]
	sub r0, #0x58
	ldr r0, [r2, r0]
	bl ovy168_21f1758
	add r0, r4, #0
	ldr r1, [r5]
	sub r0, #0x58
	ldr r0, [r1, r0]
	bl ovy168_21f1734
	cmp r0, #0
	bne _021E01FC
	ldr r0, [r5]
	sub r4, #0x58
	ldr r0, [r0, r4]
	add r1, r6, #0
	bl ovy168_21f1764
_021E01FC:
	pop {r4, r5, r6, pc}
	nop
_021E0200: .word 0x021f4240
	thumb_func_end ovy168_21e01c4

	thumb_func_start ovy168_21e0204
ovy168_21e0204: ; 0x021E0204
	push {r4, lr}
	add r4, r0, #0
	bl ovy168_21e0050
	mov r1, #0x66
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	add r1, r4, #0
	bl ovy168_21de364
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy168_21e0204

	thumb_func_start ovy168_21e021c
ovy168_21e021c: ; 0x021E021C
	ldr r0, _021E0228 ; =0x021f4240
	ldr r1, [r0]
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bx lr
	.align 2, 0
_021E0228: .word 0x021f4240
	thumb_func_end ovy168_21e021c

	thumb_func_start ovy168_21e022c
ovy168_21e022c: ; 0x021E022C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _021E026C ; =0x021f4240
	ldr r1, [r0]
	mov r0, #0x69
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ovy168_21f1734
	cmp r0, #1
	bne _021E0246
	bl sub_02005F0C
_021E0246:
	ldr r4, _021E026C ; =0x021f4240
	mov r6, #0x69
	ldr r0, [r4]
	lsl r6, r6, #2
	ldr r0, [r0, r6]
	mov r1, #1
	bl ovy168_21f177c
	ldr r0, [r4]
	mov r1, #0
	ldr r0, [r0, r6]
	bl ovy168_21f1740
	ldr r1, _021E0270 ; =0x0000FFFF
	add r0, r5, #0
	bl sub_02005DF4
	pop {r4, r5, r6, pc}
	nop
_021E026C: .word 0x021f4240
_021E0270: .word 0x0000FFFF
	thumb_func_end ovy168_21e022c

	thumb_func_start ovy168_21e0274
ovy168_21e0274: ; 0x021E0274
	push {r3, r4}
	ldr r1, _021E0290 ; =0x021f4240
	mov r3, #0x7d
	ldr r1, [r1]
	lsl r3, r3, #2
	ldr r4, [r1, r3]
	ldr r2, _021E0294 ; =0xFC03FFFF
	lsl r0, r0, #0x18
	and r2, r4
	lsr r0, r0, #6
	orr r0, r2
	str r0, [r1, r3]
	pop {r3, r4}
	bx lr
	.align 2, 0
_021E0290: .word 0x021f4240
_021E0294: .word 0xFC03FFFF
	thumb_func_end ovy168_21e0274

	thumb_func_start ovy168_21e0298
ovy168_21e0298: ; 0x021E0298
	ldr r0, _021E02A8 ; =0x021f4240
	ldr r1, [r0]
	mov r0, #0x7d
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r0, r0, #6
	lsr r0, r0, #0x18
	bx lr
	.align 2, 0
_021E02A8: .word 0x021f4240
	thumb_func_end ovy168_21e0298

	thumb_func_start ovy168_21e02ac
ovy168_21e02ac: ; 0x021E02AC
	push {r3, r4}
	ldr r1, _021E02C8 ; =0x021f4240
	mov r3, #0x7d
	ldr r1, [r1]
	lsl r3, r3, #2
	ldr r4, [r1, r3]
	ldr r2, _021E02CC ; =0xFBFFFFFF
	lsl r0, r0, #0x1f
	and r2, r4
	lsr r0, r0, #5
	orr r0, r2
	str r0, [r1, r3]
	pop {r3, r4}
	bx lr
	.align 2, 0
_021E02C8: .word 0x021f4240
_021E02CC: .word 0xFBFFFFFF
	thumb_func_end ovy168_21e02ac

	thumb_func_start ovy168_21e02d0
ovy168_21e02d0: ; 0x021E02D0
	ldr r0, _021E02E0 ; =0x021f4240
	ldr r1, [r0]
	mov r0, #0x7d
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r0, r0, #5
	lsr r0, r0, #0x1f
	bx lr
	.align 2, 0
_021E02E0: .word 0x021f4240
	thumb_func_end ovy168_21e02d0

	thumb_func_start ovy168_21e02e4
ovy168_21e02e4: ; 0x021E02E4
	push {r3, lr}
	ldr r0, _021E0300 ; =0x021f4240
	mov r2, #0
	ldr r1, [r0]
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _021E02FC
	bl ovy167_219db08
	add r2, r0, #0
_021E02FC:
	add r0, r2, #0
	pop {r3, pc}
	.align 2, 0
_021E0300: .word 0x021f4240
	thumb_func_end ovy168_21e02e4

	thumb_func_start ovy168_21e0304
ovy168_21e0304: ; 0x021E0304
	push {r3, lr}
	ldr r0, _021E0320 ; =0x021f4240
	mov r2, #0
	ldr r1, [r0]
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _021E031C
	bl ovy167_219db28
	add r2, r0, #0
_021E031C:
	add r0, r2, #0
	pop {r3, pc}
	.align 2, 0
_021E0320: .word 0x021f4240
	thumb_func_end ovy168_21e0304

	thumb_func_start ovy168_21e0324
ovy168_21e0324: ; 0x021E0324
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r5, r0, #0
	cmp r4, #8
	bge _021E0354
	mov r7, #0x19
	ldr r6, _021E0358 ; =0x021f4240
	lsl r7, r7, #4
_021E0334:
	ldr r0, [r6]
	add r1, r4, #0
	ldr r0, [r0, r7]
	bl ovy168_21e7b24
	cmp r0, #0
	beq _021E034E
	ldr r0, [r6]
	add r1, r4, #0
	ldr r0, [r0, r7]
	add r2, r5, #0
	bl ovy168_21e82fc
_021E034E:
	add r4, r4, #1
	cmp r4, #8
	blt _021E0334
_021E0354:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E0358: .word 0x021f4240
	thumb_func_end ovy168_21e0324

	thumb_func_start ovy168_21e035c
ovy168_21e035c: ; 0x021E035C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl ovy168_21e0530
	ldr r2, _021E0388 ; =0x021f4240
	lsl r0, r0, #2
	ldr r1, [r2]
	add r1, r1, r0
	str r5, [r1, #8]
	ldr r1, [r2]
	add r1, r1, r0
	add r1, #0x88
	str r4, [r1]
	ldr r1, [r2]
	add r1, r1, r0
	mov r0, #0x42
	lsl r0, r0, #2
	str r6, [r1, r0]
	pop {r4, r5, r6, pc}
	nop
_021E0388: .word 0x021f4240
	thumb_func_end ovy168_21e035c

	thumb_func_start ovy168_21e038c
ovy168_21e038c: ; 0x021E038C
	ldr r1, _021E03A8 ; =0x021f4240
	mov r2, #0
	ldr r3, [r1]
_021E0392:
	lsl r1, r2, #2
	add r1, r3, r1
	ldr r1, [r1, #8]
	cmp r1, r0
	beq _021E03A2
	add r2, r2, #1
	cmp r2, #0x20
	blt _021E0392
_021E03A2:
	add r0, r2, #0
	bx lr
	nop
_021E03A8: .word 0x021f4240
	thumb_func_end ovy168_21e038c

	thumb_func_start ovy168_21e03ac
ovy168_21e03ac: ; 0x021E03AC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl ovy168_21e038c
	add r4, r0, #0
	cmp r5, #0
	beq _021E03F8
	add r0, r5, #0
	bl sub_0203A6D0
	add r6, r0, #0
	ldr r0, _021E03FC ; =0x021f4240
	lsl r4, r4, #2
	ldr r0, [r0]
	add r0, r0, r4
	add r0, #0x88
	ldr r1, [r0]
	cmp r1, #0
	beq _021E03D6
	add r0, r5, #0
	blx r1
_021E03D6:
	cmp r6, #0
	beq _021E03E0
	add r0, r6, #0
	bl GFL_HeapFree
_021E03E0:
	add r0, r5, #0
	bl GFL_TCBRemove
	ldr r0, _021E03FC ; =0x021f4240
	mov r2, #0
	ldr r1, [r0]
	add r1, r1, r4
	str r2, [r1, #8]
	ldr r0, [r0]
	add r0, r0, r4
	add r0, #0x88
	str r2, [r0]
_021E03F8:
	pop {r4, r5, r6, pc}
	nop
_021E03FC: .word 0x021f4240
	thumb_func_end ovy168_21e03ac

	thumb_func_start ovy168_21e0400
ovy168_21e0400: ; 0x021E0400
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0x42
	ldr r6, _021E042C ; =0x021f4240
	add r5, r0, #0
	mov r4, #0
	lsl r7, r7, #2
_021E040C:
	ldr r1, [r6]
	lsl r0, r4, #2
	add r1, r1, r0
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _021E0422
	ldr r1, [r1, r7]
	cmp r5, r1
	bne _021E0422
	bl ovy168_21e03ac
_021E0422:
	add r4, r4, #1
	cmp r4, #0x20
	blt _021E040C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E042C: .word 0x021f4240
	thumb_func_end ovy168_21e0400

	thumb_func_start ovy168_21e0430
ovy168_21e0430: ; 0x021E0430
	push {r3, r4, r5, lr}
	ldr r3, _021E0464 ; =0x021f4240
	mov r2, #9
	ldr r1, [r3]
	lsl r2, r2, #6
	str r0, [r1, r2]
	ldr r5, [r3]
	ldr r1, [r5, r2]
	cmp r1, #2
	beq _021E0450
	add r1, r2, #4
	mov r4, #0
	str r4, [r5, r1]
	ldr r1, [r3]
	add r2, #8
	str r4, [r1, r2]
_021E0450:
	cmp r0, #3
	bne _021E0462
	ldr r0, _021E0464 ; =0x021f4240
	ldr r1, [r0]
	mov r0, #0x19
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ovy168_21e83a8
_021E0462:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021E0464: .word 0x021f4240
	thumb_func_end ovy168_21e0430

	thumb_func_start ovy168_21e0468
ovy168_21e0468: ; 0x021E0468
	push {r4, lr}
	bl ovy168_21df520
	ldr r0, _021E04A8 ; =0x021f4240
	mov r4, #9
	ldr r1, [r0]
	lsl r4, r4, #6
	ldr r0, [r1, r4]
	cmp r0, #3
	bne _021E0494
	add r0, r4, #0
	sub r0, #0x5c
	ldr r0, [r1, r0]
	mov r1, #1
	lsl r1, r1, #0xa
	bl ovy167_219dac4
	cmp r0, #0
	beq _021E0494
	add r4, #0x11
	add r0, r4, #0
	b _021E0496
_021E0494:
	ldr r0, _021E04AC ; =0x00000236
_021E0496:
	bl ovy168_21df2c8
	ldr r0, _021E04A8 ; =0x021f4240
	mov r2, #0
	ldr r1, [r0]
	mov r0, #9
	lsl r0, r0, #6
	str r2, [r1, r0]
	pop {r4, pc}
	.align 2, 0
_021E04A8: .word 0x021f4240
_021E04AC: .word 0x00000236
	thumb_func_end ovy168_21e0468

	thumb_func_start ovy168_21e04b0
ovy168_21e04b0: ; 0x021E04B0
	push {r4, lr}
	add r4, r0, #0
	bl ovy168_21df520
	ldr r2, _021E04D4 ; =0x021f4240
	mov r1, #9
	ldr r0, [r2]
	lsl r1, r1, #6
	str r4, [r0, r1]
	add r0, r1, #4
	ldr r3, [r2]
	mov r4, #0
	str r4, [r3, r0]
	ldr r0, [r2]
	add r1, #8
	str r4, [r0, r1]
	pop {r4, pc}
	nop
_021E04D4: .word 0x021f4240
	thumb_func_end ovy168_21e04b0

	thumb_func_start ovy168_21e04d8
ovy168_21e04d8: ; 0x021E04D8
	ldr r2, _021E04E8 ; =0x021f4240
	lsl r0, r0, #2
	ldr r2, [r2]
	add r2, r2, r0
	mov r0, #0x22
	lsl r0, r0, #4
	str r1, [r2, r0]
	bx lr
	.align 2, 0
_021E04E8: .word 0x021f4240
	thumb_func_end ovy168_21e04d8
_021E04EC:
	.byte 0x03, 0x49, 0x80, 0x00
	.byte 0x09, 0x68, 0x09, 0x18, 0x22, 0x20, 0x00, 0x01, 0x08, 0x58, 0x70, 0x47, 0x40, 0x42, 0x1F, 0x02
	.byte 0x03, 0x48, 0x04, 0x4B, 0x01, 0x68, 0x62, 0x20, 0x80, 0x00, 0x08, 0x58, 0x18, 0x47, 0xC0, 0x46
	.byte 0x40, 0x42, 0x1F, 0x02, 0x6D, 0x14, 0x1E, 0x02, 0x03, 0x48, 0x04, 0x4B, 0x01, 0x68, 0x62, 0x20
	.byte 0x80, 0x00, 0x08, 0x58, 0x18, 0x47, 0xC0, 0x46, 0x40, 0x42, 0x1F, 0x02, 0x95, 0x14, 0x1E, 0x02

	thumb_func_start ovy168_21e0530
ovy168_21e0530: ; 0x021E0530
	push {r3, lr}
	ldr r1, _021E0558 ; =0x021f4240
	mov r0, #0
	ldr r2, [r1]
_021E0538:
	lsl r1, r0, #2
	add r1, r2, r1
	ldr r1, [r1, #8]
	cmp r1, #0
	beq _021E0548
	add r0, r0, #1
	cmp r0, #0x20
	blt _021E0538
_021E0548:
	cmp r0, #0x20
	bne _021E0554
	ldr r0, [r2, #8]
	bl ovy168_21e03ac
	mov r0, #0
_021E0554:
	pop {r3, pc}
	nop
_021E0558: .word 0x021f4240
	thumb_func_end ovy168_21e0530

	thumb_func_start ovy168_21e055c
ovy168_21e055c: ; 0x021E055C
	push {r3, r4, r5, lr}
	ldr r5, _021E057C ; =0x021f4240
	mov r4, #0
_021E0562:
	ldr r1, [r5]
	lsl r0, r4, #2
	add r0, r1, r0
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _021E0572
	bl ovy168_21e03ac
_021E0572:
	add r4, r4, #1
	cmp r4, #0x20
	blt _021E0562
	pop {r3, r4, r5, pc}
	nop
_021E057C: .word 0x021f4240
	thumb_func_end ovy168_21e055c

	thumb_func_start ovy168_21e0580
ovy168_21e0580: ; 0x021E0580
	push {r3, lr}
	bl sub_0204B7C8
	ldr r0, _021E0598 ; =0x021f4240
	ldr r1, [r0]
	mov r0, #0x63
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_020275F8
	pop {r3, pc}
	nop
_021E0598: .word 0x021f4240
	thumb_func_end ovy168_21e0580

	thumb_func_start ovy168_21e059c
ovy168_21e059c: ; 0x021E059C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021E05B2
	sub r0, r0, #1
	add sp, #8
	str r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_021E05B2:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021E05C4
	cmp r0, #1
	beq _021E05F2
	cmp r0, #2
	beq _021E0616
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021E05C4:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _021E05E6
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0x10]
	mov r2, #0x10
	str r0, [sp, #4]
	ldr r0, _021E0660 ; =0x021f4240
	mov r3, #0x10
	ldr r1, [r0]
	mov r0, #0x19
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	ldr r1, [r4]
	bl ovy168_21e7b3c
_021E05E6:
	mov r0, #3
	str r0, [r4, #0xc]
	mov r0, #1
	add sp, #8
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
_021E05F2:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _021E060A
	ldr r0, _021E0660 ; =0x021f4240
	mov r2, #1
	ldr r1, [r0]
	mov r0, #0x19
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	ldr r1, [r4]
	bl ovy168_21e70d4
_021E060A:
	mov r0, #3
	str r0, [r4, #0xc]
	mov r0, #2
	add sp, #8
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
_021E0616:
	mov r0, #0
	str r0, [r4, #4]
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _021E0648
	ldr r6, _021E0660 ; =0x021f4240
	mov r7, #0x19
	ldr r0, [r6]
	lsl r7, r7, #4
	ldr r0, [r0, r7]
	ldr r1, [r4]
	mov r2, #0
	bl ovy168_21e70d4
	mov r0, #0
	str r0, [sp]
	ldr r0, _021E0664 ; =0x00007FFF
	mov r2, #0
	str r0, [sp, #4]
	ldr r0, [r6]
	ldr r1, [r4]
	ldr r0, [r0, r7]
	mov r3, #0
	bl ovy168_21e7b3c
_021E0648:
	mov r0, #3
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	sub r0, r0, #1
	str r0, [r4, #8]
	bne _021E065A
	add r0, r5, #0
	bl ovy168_21e03ac
_021E065A:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E0660: .word 0x021f4240
_021E0664: .word 0x00007FFF
	thumb_func_end ovy168_21e059c

	thumb_func_start ovy168_21e0668
ovy168_21e0668: ; 0x021E0668
	push {r3, r4, r5, lr}
	bl sub_0203A6D0
	ldr r0, [r0]
	bl ovy168_21e0d4c
	ldr r1, _021E069C ; =0x021f4240
	mov r4, #0x7d
	ldr r2, [r1]
	lsl r4, r4, #2
	ldr r5, [r2, r4]
	mov r3, #0xff
	add r1, r5, #0
	bic r1, r3
	lsl r3, r5, #0x18
	lsr r5, r3, #0x18
	mov r3, #0
	mvn r3, r3
	eor r0, r3
	and r0, r5
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	orr r0, r1
	str r0, [r2, r4]
	pop {r3, r4, r5, pc}
	nop
_021E069C: .word 0x021f4240
	thumb_func_end ovy168_21e0668

	thumb_func_start ovy168_21e06a0
ovy168_21e06a0: ; 0x021E06A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r1, #0
	ldr r1, [r4, #4]
	ldr r5, _021E08DC ; =0x021f4240
	cmp r1, #7
	bhi _021E0744
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E06BA: ; jump table
	.short _021E06CA - _021E06BA - 2 ; case 0
	.short _021E06F4 - _021E06BA - 2 ; case 1
	.short _021E0738 - _021E06BA - 2 ; case 2
	.short _021E07C6 - _021E06BA - 2 ; case 3
	.short _021E07F0 - _021E06BA - 2 ; case 4
	.short _021E0814 - _021E06BA - 2 ; case 5
	.short _021E0894 - _021E06BA - 2 ; case 6
	.short _021E08C6 - _021E06BA - 2 ; case 7
_021E06CA:
	mov r0, #0
	str r0, [sp]
	mov r3, #0x62
	ldr r0, [r5]
	lsl r3, r3, #2
	ldr r0, [r0, r3]
	ldr r1, [r4]
	mov r2, #0xff
	add r3, #0xcb
	mov r6, #0xff
	bl ovy168_21e0ee8
	ldr r0, [r5]
	mov r1, #1
	add r6, #0xf1
	str r1, [r0, r6]
	ldr r0, [r4, #4]
	add sp, #0x18
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
_021E06F4:
	mov r7, #0x1f
	ldr r1, [r5]
	lsl r7, r7, #4
	ldr r0, [r1, r7]
	cmp r0, #0
	bne _021E0744
	add r0, r7, #0
	sub r0, #0x60
	ldr r0, [r1, r0]
	ldr r1, [r4]
	bl ovy168_21e7cd8
	mov r6, #1
	tst r0, r6
	beq _021E072E
	mov r0, #0
	str r0, [sp]
	add r0, r7, #0
	ldr r1, [r5]
	sub r0, #0x68
	ldr r0, [r1, r0]
	add r3, r7, #0
	ldr r1, [r4]
	mov r2, #0xff
	add r3, #0x74
	bl ovy168_21e0ee8
	ldr r0, [r5]
	str r6, [r0, r7]
_021E072E:
	ldr r0, [r4, #4]
	add sp, #0x18
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
_021E0738:
	mov r6, #0x1f
	ldr r1, [r5]
	lsl r6, r6, #4
	ldr r0, [r1, r6]
	cmp r0, #0
	beq _021E0746
_021E0744:
	b _021E08D6
_021E0746:
	mov r7, #0
	str r7, [sp]
	str r7, [sp, #4]
	add r0, r6, #0
	str r7, [sp, #8]
	sub r0, #0x60
	ldr r0, [r1, r0]
	ldr r1, [r4]
	mov r2, #0
	mov r3, #0x10
	bl ovy168_21e76a8
	mov r0, #8
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r7, [sp, #8]
	add r0, r6, #0
	ldr r1, [r5]
	sub r0, #0x60
	ldr r0, [r1, r0]
	ldr r1, [r4]
	mov r2, #1
	mov r3, #8
	bl ovy168_21e7944
	ldr r0, _021E08E0 ; =0xFFFFFE0C
	mov r2, #1
	str r0, [sp]
	mov r0, #0x7f
	str r0, [sp, #4]
	str r7, [sp, #8]
	str r7, [sp, #0xc]
	str r7, [sp, #0x10]
	add r0, r6, #0
	ldr r1, [r5]
	sub r0, #0x68
	ldr r0, [r1, r0]
	ldr r1, _021E08E4 ; =0x000005AA
	mov r3, #0xe
	bl ovy168_21e1248
	mov r0, #0x7f
	str r0, [sp]
	str r7, [sp, #4]
	mov r0, #0x1e
	str r0, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	str r7, [sp, #0x10]
	str r7, [sp, #0x14]
	ldr r0, [r5]
	sub r6, #0x68
	ldr r0, [r0, r6]
	mov r1, #1
	mov r2, #0
	mov r3, #1
	bl ovy168_21e1338
	ldr r0, [r4, #4]
	add sp, #0x18
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
_021E07C6:
	mov r6, #0x19
	ldr r0, [r5]
	lsl r6, r6, #4
	ldr r0, [r0, r6]
	ldr r1, [r4]
	bl ovy168_21e7a38
	cmp r0, #0
	bne _021E08D6
	ldr r0, [r5]
	add r2, r4, #0
	ldr r0, [r0, r6]
	ldr r1, [r4]
	add r2, #8
	bl ovy168_21e7f7c
	ldr r0, [r4, #4]
	add sp, #0x18
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
_021E07F0:
	mov r0, #8
	str r0, [sp]
	mov r2, #1
	str r2, [sp, #4]
	mov r3, #0
	str r3, [sp, #8]
	mov r0, #0x19
	ldr r1, [r5]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	ldr r1, [r4]
	bl ovy168_21e7944
	ldr r0, [r4, #4]
	add sp, #0x18
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
_021E0814:
	mov r6, #0x19
	ldr r0, [r5]
	lsl r6, r6, #4
	ldr r0, [r0, r6]
	ldr r1, [r4]
	bl ovy168_21e7a38
	cmp r0, #0
	bne _021E08D6
	mov r7, #0
	str r7, [sp]
	str r7, [sp, #4]
	str r7, [sp, #8]
	str r7, [sp, #0xc]
	str r7, [sp, #0x10]
	add r0, r6, #0
	ldr r1, [r5]
	sub r0, #8
	ldr r0, [r1, r0]
	mov r1, #0x56
	lsl r1, r1, #4
	mov r2, #1
	mov r3, #0xe
	bl ovy168_21e1248
	str r7, [sp]
	str r7, [sp, #4]
	str r7, [sp, #8]
	ldr r0, [r5]
	ldr r1, [r4]
	ldr r0, [r0, r6]
	mov r2, #0
	mov r3, #0x1f
	bl ovy168_21e76a8
	ldr r0, [r5]
	ldr r1, [r4]
	ldr r0, [r0, r6]
	bl ovy168_21e7cd8
	mov r1, #1
	tst r0, r1
	beq _021E088A
	str r7, [sp]
	add r0, r6, #0
	ldr r1, [r5]
	sub r0, #8
	ldr r0, [r1, r0]
	add r6, #0xd5
	ldr r1, [r4]
	mov r2, #0xff
	add r3, r6, #0
	mov r7, #0xff
	bl ovy168_21e0ee8
	ldr r1, [r5]
	add r7, #0xf1
	mov r0, #1
	str r0, [r1, r7]
_021E088A:
	ldr r0, [r4, #4]
	add sp, #0x18
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
_021E0894:
	mov r6, #0x1f
	ldr r1, [r5]
	lsl r6, r6, #4
	ldr r0, [r1, r6]
	cmp r0, #0
	bne _021E08D6
	mov r0, #0
	str r0, [sp]
	add r0, r6, #0
	sub r0, #0x68
	ldr r0, [r1, r0]
	add r3, r6, #0
	ldr r1, [r4]
	mov r2, #0xff
	add r3, #0x64
	bl ovy168_21e0ee8
	ldr r0, [r5]
	mov r1, #1
	str r1, [r0, r6]
	ldr r0, [r4, #4]
	add sp, #0x18
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
_021E08C6:
	mov r1, #0x1f
	ldr r2, [r5]
	lsl r1, r1, #4
	ldr r1, [r2, r1]
	cmp r1, #0
	bne _021E08D6
	bl ovy168_21e03ac
_021E08D6:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E08DC: .word 0x021f4240
_021E08E0: .word 0xFFFFFE0C
_021E08E4: .word 0x000005AA
	thumb_func_end ovy168_21e06a0

	thumb_func_start ovy168_21e08e8
ovy168_21e08e8: ; 0x021E08E8
	push {r3, r4, r5, lr}
	bl sub_0203A6D0
	ldr r0, [r0]
	bl ovy168_21e0d4c
	ldr r1, _021E0918 ; =0x021f4240
	mov r4, #0x7d
	ldr r2, [r1]
	lsl r4, r4, #2
	ldr r5, [r2, r4]
	ldr r3, _021E091C ; =0xFFFF00FF
	add r1, r5, #0
	and r1, r3
	lsl r5, r5, #0x10
	asr r3, r3, #0x10
	lsr r5, r5, #0x18
	eor r0, r3
	and r0, r5
	lsl r0, r0, #0x18
	lsr r0, r0, #0x10
	orr r0, r1
	str r0, [r2, r4]
	pop {r3, r4, r5, pc}
	.align 2, 0
_021E0918: .word 0x021f4240
_021E091C: .word 0xFFFF00FF
	thumb_func_end ovy168_21e08e8

	thumb_func_start ovy168_21e0920
ovy168_21e0920: ; 0x021E0920
	push {r4, r5, r6, lr}
	add r4, r1, #0
	ldr r3, [r4]
	add r5, r0, #0
	cmp r3, #0
	beq _021E0936
	cmp r3, #1
	beq _021E0956
	cmp r3, #2
	beq _021E0972
	pop {r4, r5, r6, pc}
_021E0936:
	ldr r0, _021E099C ; =0x021f4240
	mov r5, #0x7d
	ldr r2, [r0]
	lsl r5, r5, #2
	ldr r0, [r2, r5]
	sub r5, r5, #4
	lsl r1, r0, #0x10
	lsl r0, r0, #0x18
	ldr r2, [r2, r5]
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	orr r0, r2
	orr r0, r1
	bne _021E0998
	add r0, r3, #1
	str r0, [r4]
_021E0956:
	ldr r0, _021E099C ; =0x021f4240
	ldrb r2, [r4, #4]
	ldr r1, [r0]
	mov r0, #0x19
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	ldr r1, [r4, #8]
	ldr r3, [r4, #0xc]
	bl ovy168_21e80e4
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021E0972:
	ldr r4, _021E099C ; =0x021f4240
	mov r6, #0x65
	ldr r0, [r4]
	lsl r6, r6, #2
	ldr r0, [r0, r6]
	bl ovy168_21de0bc
	cmp r0, #0
	bne _021E0998
	ldr r1, [r4]
	sub r0, r6, #4
	ldr r0, [r1, r0]
	bl ovy168_21e7af4
	cmp r0, #0
	bne _021E0998
	add r0, r5, #0
	bl ovy168_21e03ac
_021E0998:
	pop {r4, r5, r6, pc}
	nop
_021E099C: .word 0x021f4240
	thumb_func_end ovy168_21e0920

	thumb_func_start ovy168_21e09a0
ovy168_21e09a0: ; 0x021E09A0
	push {r3, r4, r5, lr}
	bl sub_0203A6D0
	ldr r0, [r0, #8]
	bl ovy168_21e0d4c
	ldr r1, _021E09D0 ; =0x021f4240
	mov r4, #0x7d
	ldr r2, [r1]
	lsl r4, r4, #2
	ldr r5, [r2, r4]
	ldr r3, _021E09D4 ; =0xFFFCFFFF
	add r1, r5, #0
	and r1, r3
	lsl r5, r5, #0xe
	asr r3, r3, #0x12
	lsr r5, r5, #0x1e
	eor r0, r3
	and r0, r5
	lsl r0, r0, #0x1e
	lsr r0, r0, #0xe
	orr r0, r1
	str r0, [r2, r4]
	pop {r3, r4, r5, pc}
	.align 2, 0
_021E09D0: .word 0x021f4240
_021E09D4: .word 0xFFFCFFFF
	thumb_func_end ovy168_21e09a0

	thumb_func_start ovy168_21e09d8
ovy168_21e09d8: ; 0x021E09D8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	bl ovy168_21df7e8
	cmp r0, #0
	bne _021E0A10
	ldr r0, [r5, #0x10]
	ldr r7, _021E0A14 ; =0x021f4240
	str r0, [sp]
	mov r4, #0x62
	ldr r3, [r5, #0xc]
	ldr r0, [r7]
	lsl r4, r4, #2
	lsl r3, r3, #0x10
	ldr r0, [r0, r4]
	ldr r1, [r5, #4]
	ldr r2, [r5, #8]
	lsr r3, r3, #0x10
	bl ovy168_21e0ee8
	ldr r0, [r7]
	mov r1, #1
	add r4, #0x68
	str r1, [r0, r4]
	add r0, r6, #0
	bl ovy168_21e03ac
_021E0A10:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E0A14: .word 0x021f4240
	thumb_func_end ovy168_21e09d8

	thumb_func_start ovy168_21e0a18
ovy168_21e0a18: ; 0x021E0A18
	push {r3, lr}
	bl sub_0203A6D0
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _021E0A28
	bl GFL_HeapFree
_021E0A28:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy168_21e0a18

	thumb_func_start ovy168_21e0a2c
ovy168_21e0a2c: ; 0x021E0A2C
	push {r3, r4, r5, r6, r7, lr}
	bl GCTX_HIDGetPressedKeys
	add r4, r0, #0
	bl sub_0203DA48
	ldr r5, _021E0B34 ; =0x021f4240
	mov r1, #9
	ldr r2, [r5]
	lsl r1, r1, #6
	ldr r1, [r2, r1]
	cmp r1, #0
	beq _021E0B30
	cmp r1, #2
	beq _021E0A72
	cmp r1, #3
	beq _021E0A72
	cmp r4, #0
	bne _021E0A56
	cmp r0, #0
	beq _021E0A72
_021E0A56:
	bl ovy168_21df520
	ldr r4, _021E0B38 ; =0x00000252
	add r0, r4, #0
	bl ovy168_21df2c8
	add r0, r4, #0
	ldr r1, [r5]
	mov r2, #0
	sub r0, #0xe
	str r2, [r1, r0]
	ldr r0, [r5]
	sub r4, #0xa
	str r2, [r0, r4]
_021E0A72:
	mov r2, #0x91
	ldr r0, [r5]
	lsl r2, r2, #2
	ldr r1, [r0, r2]
	cmp r1, #0
	beq _021E0A84
	cmp r1, #1
	beq _021E0AA2
	pop {r3, r4, r5, r6, r7, pc}
_021E0A84:
	add r1, r2, #4
	ldr r3, [r0, r1]
	add r1, r2, #0
	add r1, #8
	ldr r1, [r0, r1]
	cmp r3, r1
	bge _021E0A9E
	add r1, r2, #4
	ldr r1, [r0, r1]
	add r3, r1, #1
	add r1, r2, #4
	str r3, [r0, r1]
	pop {r3, r4, r5, r6, r7, pc}
_021E0A9E:
	mov r1, #1
	str r1, [r0, r2]
_021E0AA2:
	bl ovy168_21df7e8
	cmp r0, #0
	bne _021E0B30
	mov r4, #9
	ldr r1, [r5]
	lsl r4, r4, #6
	ldr r0, [r1, r4]
	cmp r0, #3
	bne _021E0AF0
	add r0, r4, #0
	sub r0, #0x5c
	ldr r0, [r1, r0]
	mov r1, #1
	lsl r1, r1, #0xa
	bl ovy167_219dac4
	cmp r0, #0
	beq _021E0AF0
	mov r6, #0
	add r4, #0x10
_021E0ACC:
	bl sub_02043F2C
	lsr r1, r0, #0x1f
	lsl r0, r6, #1
	ldr r2, [r5]
	orr r0, r1
	ldr r1, [r2, r4]
	cmp r1, r0
	beq _021E0ACC
	mov r1, #0x25
	lsl r1, r1, #4
	str r0, [r2, r1]
	ldr r0, [r5]
	ldr r0, [r0, r1]
	lsl r1, r0, #2
	ldr r0, _021E0B3C ; =0x021F3F50
	ldr r0, [r0, r1]
	b _021E0B20
_021E0AF0:
	mov r4, #0x25
	mov r7, #6
	mov r6, #0
	lsl r4, r4, #4
_021E0AF8:
	bl sub_02043F2C
	add r1, r6, #0
	add r2, r7, #0
	mov r3, #0
	blx sub_0208D60C
	ldr r0, [r5]
	ldr r2, [r0, r4]
	cmp r2, r1
	beq _021E0AF8
	mov r2, #0x25
	lsl r2, r2, #4
	str r1, [r0, r2]
	ldr r0, _021E0B34 ; =0x021f4240
	ldr r0, [r0]
	ldr r0, [r0, r2]
	lsl r1, r0, #2
	ldr r0, _021E0B40 ; =0x021F3F58
	ldr r0, [r0, r1]
_021E0B20:
	bl ovy168_21df2c8
	ldr r0, _021E0B34 ; =0x021f4240
	mov r2, #1
	ldr r1, [r0]
	mov r0, #0x1f
	lsl r0, r0, #4
	str r2, [r1, r0]
_021E0B30:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E0B34: .word 0x021f4240
_021E0B38: .word 0x00000252
_021E0B3C: .word 0x021F3F50
_021E0B40: .word 0x021F3F58
	thumb_func_end ovy168_21e0a2c

	thumb_func_start ovy168_21e0b44
ovy168_21e0b44: ; 0x021E0B44
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	mov r0, #0
	str r0, [r4]
	sub r0, r6, r5
	beq _021E0B78
	cmp r3, #0
	bne _021E0B5C
	mov r3, #1
	lsl r3, r3, #0xc
_021E0B5C:
	add r1, r3, #0
	bl FX_Div
	str r0, [r4]
	cmp r0, #0
	bne _021E0B78
	cmp r6, r5
	ble _021E0B72
	mov r0, #1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021E0B72:
	mov r0, #0
	mvn r0, r0
	str r0, [r4]
_021E0B78:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy168_21e0b44

	thumb_func_start ovy168_21e0b7c
ovy168_21e0b7c: ; 0x021E0B7C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _021E0C0C ; =0x00000000
	add r4, r2, #0
	add r6, r1, #0
	add r7, r3, #0
	str r0, [r4]
	str r0, [r4, #4]
	str r0, [r4, #8]
	bne _021E0B94
	mov r7, #1
	lsl r7, r7, #0xc
_021E0B94:
	ldr r1, [r6]
	ldr r0, [r5]
	sub r0, r1, r0
	beq _021E0BBA
	add r1, r7, #0
	bl FX_Div
	str r0, [r4]
	cmp r0, #0
	bne _021E0BBA
	ldr r1, [r6]
	ldr r0, [r5]
	cmp r1, r0
	ble _021E0BB4
	mov r0, #1
	b _021E0BB8
_021E0BB4:
	mov r0, #0
	mvn r0, r0
_021E0BB8:
	str r0, [r4]
_021E0BBA:
	ldr r1, [r6, #4]
	ldr r0, [r5, #4]
	sub r0, r1, r0
	beq _021E0BE0
	add r1, r7, #0
	bl FX_Div
	str r0, [r4, #4]
	cmp r0, #0
	bne _021E0BE0
	ldr r1, [r6, #4]
	ldr r0, [r5, #4]
	cmp r1, r0
	ble _021E0BDA
	mov r0, #1
	b _021E0BDE
_021E0BDA:
	mov r0, #0
	mvn r0, r0
_021E0BDE:
	str r0, [r4, #4]
_021E0BE0:
	ldr r1, [r6, #8]
	ldr r0, [r5, #8]
	sub r0, r1, r0
	beq _021E0C08
	add r1, r7, #0
	bl FX_Div
	str r0, [r4, #8]
	cmp r0, #0
	bne _021E0C08
	ldr r1, [r6, #8]
	ldr r0, [r5, #8]
	cmp r1, r0
	ble _021E0C02
	mov r0, #1
	str r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_021E0C02:
	mov r0, #0
	mvn r0, r0
	str r0, [r4, #8]
_021E0C08:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E0C0C: .word 0x00000000
	thumb_func_end ovy168_21e0b7c

	thumb_func_start ovy168_21e0c10
ovy168_21e0c10: ; 0x021E0C10
	push {r4, r5}
	ldr r5, [r0]
	ldr r4, [r1]
	add r4, r5, r4
	str r4, [r0]
	ldr r1, [r1]
	cmp r1, #0
	ldr r1, [r2]
	bge _021E0C38
	cmp r4, r1
	bgt _021E0C2C
	str r1, [r0]
	pop {r4, r5}
	bx lr
_021E0C2C:
	cmp r3, #0
	beq _021E0C4A
	mov r0, #0
	str r0, [r3]
	pop {r4, r5}
	bx lr
_021E0C38:
	cmp r4, r1
	blt _021E0C42
	str r1, [r0]
	pop {r4, r5}
	bx lr
_021E0C42:
	cmp r3, #0
	beq _021E0C4A
	mov r0, #0
	str r0, [r3]
_021E0C4A:
	pop {r4, r5}
	bx lr
	.align 2, 0
	thumb_func_end ovy168_21e0c10

	thumb_func_start ovy168_21e0c50
ovy168_21e0c50: ; 0x021E0C50
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	add r5, r1, #0
	ldr r1, [r4]
	cmp r1, #4
	bhi _021E0D44
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E0C6E: ; jump table
	.short _021E0C78 - _021E0C6E - 2 ; case 0
	.short _021E0C84 - _021E0C6E - 2 ; case 1
	.short _021E0CCE - _021E0C6E - 2 ; case 2
	.short _021E0CCE - _021E0C6E - 2 ; case 3
	.short _021E0C84 - _021E0C6E - 2 ; case 4
_021E0C78:
	ldr r0, [r4, #0x10]
	str r0, [r5]
	ldr r0, [r4, #0x14]
	str r0, [r5, #4]
	ldr r0, [r4, #0x18]
	b _021E0D42
_021E0C84:
	ldr r0, [r4, #0x30]
	cmp r0, #0
	bne _021E0CC4
	ldr r0, [r4, #0x34]
	add r1, r4, #0
	add r2, r4, #0
	add r6, sp, #0
	str r0, [r4, #0x30]
	add r0, r5, #0
	add r1, #0x1c
	add r2, #0x10
	add r3, r6, #0
	bl ovy168_21e0c10
	add r1, r4, #0
	add r2, r4, #0
	add r0, r5, #4
	add r1, #0x20
	add r2, #0x14
	add r3, r6, #0
	bl ovy168_21e0c10
	add r1, r4, #0
	add r5, #8
	add r4, #0x18
	add r0, r5, #0
	add r1, #0x24
	add r2, r4, #0
	add r3, r6, #0
	bl ovy168_21e0c10
	b _021E0D44
_021E0CC4:
	sub r0, r0, #1
	str r0, [r4, #0x30]
_021E0CC8:
	mov r0, #0
	str r0, [sp]
	b _021E0D44
_021E0CCE:
	ldr r1, [r4, #0x30]
	cmp r1, #0
	bne _021E0D2C
	ldr r1, [r4, #0x34]
	str r1, [r4, #0x30]
	ldr r2, [r5]
	ldr r1, [r4, #0x1c]
	add r1, r2, r1
	str r1, [r5]
	ldr r2, [r5, #4]
	ldr r1, [r4, #0x20]
	add r1, r2, r1
	str r1, [r5, #4]
	ldr r2, [r5, #8]
	ldr r1, [r4, #0x24]
	add r1, r2, r1
	str r1, [r5, #8]
	ldr r1, [r4, #0x28]
	sub r1, r1, #1
	str r1, [r4, #0x28]
	bne _021E0D30
	ldr r1, [r4, #0x38]
	sub r2, r1, #1
	ldr r1, [r4, #0x2c]
	str r2, [r4, #0x38]
	str r1, [r4, #0x28]
	ldr r1, [r4]
	cmp r1, #2
	beq _021E0D10
	cmp r1, #3
	bne _021E0D30
	tst r0, r2
	beq _021E0D30
_021E0D10:
	ldr r1, [r4, #0x1c]
	mov r0, #0
	add r2, r1, #0
	mvn r0, r0
	mul r2, r0
	ldr r1, [r4, #0x20]
	str r2, [r4, #0x1c]
	add r2, r1, #0
	mul r2, r0
	ldr r1, [r4, #0x24]
	str r2, [r4, #0x20]
	mul r0, r1
	str r0, [r4, #0x24]
	b _021E0D30
_021E0D2C:
	sub r0, r1, #1
	str r0, [r4, #0x30]
_021E0D30:
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _021E0D38
	b _021E0CC8
_021E0D38:
	ldr r0, [r4, #4]
	str r0, [r5]
	ldr r0, [r4, #8]
	str r0, [r5, #4]
	ldr r0, [r4, #0xc]
_021E0D42:
	str r0, [r5, #8]
_021E0D44:
	ldr r0, [sp]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy168_21e0c50

	thumb_func_start ovy168_21e0d4c
ovy168_21e0d4c: ; 0x021E0D4C
	mov r1, #1
	lsl r1, r0
	add r0, r1, #0
	bx lr
	thumb_func_end ovy168_21e0d4c

	thumb_func_start ovy168_21e0d54
ovy168_21e0d54: ; 0x021E0D54
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #0
	beq _021E0DE0
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	bne _021E0DDC
	ldrb r0, [r5, #0xd]
	mov r4, #0
	strb r0, [r5, #0xc]
	ldrb r0, [r5, #9]
	cmp r0, #0
	ble _021E0DB8
_021E0D72:
	ldr r0, [r5]
	lsl r6, r4, #2
	ldr r0, [r0, r6]
	bl sub_02049430
	bl sub_02068664
	ldrh r1, [r0, #0x30]
	lsl r7, r1, #3
	ldr r1, [r0, #0x2c]
	lsl r2, r7, #0xf
	lsl r1, r1, #0x10
	lsr r1, r1, #0xd
	str r1, [sp, #4]
	ldrh r1, [r5, #0xe]
	lsr r2, r2, #0x10
	str r1, [sp]
	ldr r1, [r0, #0x38]
	ldrb r3, [r5, #0xa]
	add r0, r0, r1
	ldr r1, [r5, #4]
	ldr r1, [r1, r6]
	bl sub_0202780C
	ldr r2, [r5, #4]
	ldr r1, [sp, #4]
	ldr r2, [r2, r6]
	mov r0, #1
	add r3, r7, #0
	bl sub_0205FA10
	ldrb r0, [r5, #9]
	add r4, r4, #1
	cmp r4, r0
	blt _021E0D72
_021E0DB8:
	ldrb r1, [r5, #0xb]
	ldrb r0, [r5, #0xa]
	cmp r0, r1
	bne _021E0DC8
	mov r0, #0
	add sp, #8
	strb r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
_021E0DC8:
	cmp r0, r1
	bls _021E0DD4
	sub r0, r0, #1
	add sp, #8
	strb r0, [r5, #0xa]
	pop {r3, r4, r5, r6, r7, pc}
_021E0DD4:
	add r0, r0, #1
	add sp, #8
	strb r0, [r5, #0xa]
	pop {r3, r4, r5, r6, r7, pc}
_021E0DDC:
	sub r0, r0, #1
	strb r0, [r5, #0xc]
_021E0DE0:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy168_21e0d54

	thumb_func_start ovy168_21e0de4
ovy168_21e0de4: ; 0x021E0DE4
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _021E0E5C ; =0x000002CE
	add r7, r1, #0
	add r1, r4, #0
	add r6, r0, #0
	ldr r3, _021E0E60 ; =0x021F4174
	add r0, r7, #0
	sub r1, #0x22
	mov r2, #1
	str r4, [sp]
	bl GFL_HeapAllocate
	add r5, r0, #0
	add r0, r4, #0
	add r1, r4, #0
	sub r0, #0x96
	strh r7, [r5, r0]
	str r6, [r5, #8]
	sub r1, #0x92
	mov r0, #1
	str r0, [r5, r1]
	sub r4, #0x8a
	mov r2, #0
	str r0, [r5, r4]
	sub r1, r2, #1
_021E0E16:
	lsl r0, r2, #2
	add r0, r5, r0
	add r2, r2, #1
	str r1, [r0, #0x4c]
	cmp r2, #0x10
	blt _021E0E16
	mov r2, #0
	sub r1, r2, #1
_021E0E26:
	lsl r0, r2, #2
	add r0, r5, r0
	add r0, #0xcc
	add r2, r2, #1
	str r1, [r0]
	cmp r2, #4
	blt _021E0E26
	mov r3, #0
	mov r0, #0x9b
	sub r2, r3, #1
	lsl r0, r0, #2
_021E0E3C:
	lsl r1, r3, #2
	add r1, r5, r1
	add r3, r3, #1
	str r2, [r1, r0]
	cmp r3, #6
	blt _021E0E3C
	ldr r1, _021E0E64 ; =0x021F3010
	add r0, r7, #0
	bl sub_020158AC
	add r1, r5, #0
	add r4, r0, #0
	bl sub_02015900
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E0E5C: .word 0x000002CE
_021E0E60: .word 0x021F4174
_021E0E64: .word 0x021F3010
	thumb_func_end ovy168_21e0de4

	thumb_func_start ovy168_21e0e68
ovy168_21e0e68: ; 0x021E0E68
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0201592C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020159DC
	add r5, r0, #0
	ldr r0, [r5]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	beq _021E0E86
	mov r0, #0
	pop {r4, r5, r6, pc}
_021E0E86:
	cmp r4, #0
	bne _021E0EC2
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021E0EC2
	mov r0, #1
	mov r1, #2
	bl ovy168_21dfb70
	ldr r0, [r5]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1f
	bne _021E0EB4
	mov r1, #0x6b
	mov r2, #0x7f
	add r0, r5, #0
	lsl r1, r1, #0xc
	lsl r2, r2, #0xc
	mov r3, #0x14
	bl ovy168_21e5ff0
_021E0EB4:
	mov r6, #0x7a
	lsl r6, r6, #2
	ldr r0, [r5, r6]
	bl GFL_HeapFree
	mov r0, #0
	str r0, [r5, r6]
_021E0EC2:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy168_21e0e68

	thumb_func_start ovy168_21e0ec8
ovy168_21e0ec8: ; 0x021E0EC8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_020159DC
	add r4, r0, #0
	add r0, r5, #0
	bl ovy168_21e11d4
	add r0, r4, #0
	bl GFL_HeapFree
	add r0, r5, #0
	bl sub_020158F8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy168_21e0ec8

	thumb_func_start ovy168_21e0ee8
ovy168_21e0ee8: ; 0x021E0EE8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	add r6, r3, #0
	ldr r5, [sp, #0x20]
	bl sub_020159DC
	mov r7, #0x7a
	add r4, r0, #0
	lsl r7, r7, #2
	mov r0, #0
	str r0, [r4, r7]
	mov r0, #1
	bl ovy168_21e0400
	cmp r5, #0
	beq _021E0F1E
	add r7, #0x60
	add r2, r5, #0
	add r3, r4, r7
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	b _021E0F2A
_021E0F1E:
	add r7, #0x60
	mov r0, #0
	add r1, r4, r7
	mov r2, #0x10
	blx MIi_CpuClear16
_021E0F2A:
	add r1, r4, #0
	ldr r0, [sp, #4]
	add r1, #0xdc
	str r0, [r1]
	add r1, r4, #0
	ldr r0, [sp, #8]
	add r1, #0xe0
	str r0, [r1]
	mov r0, #0x91
	lsl r0, r0, #2
	mov r1, #1
	str r1, [r4, r0]
	add r1, r0, #0
	add r1, #0x14
	strh r6, [r4, r1]
	add r1, r0, #0
	add r1, #0x14
	add r2, r0, #0
	ldrh r1, [r4, r1]
	sub r2, #0x13
	cmp r1, r2
	blo _021E0F78
	ldr r2, _021E11BC ; =0x0000FD9F
	add r2, r1, r2
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	cmp r2, #1
	bhi _021E0F78
	add r2, r0, #0
	add r2, #0x60
	ldr r2, [r4, r2]
	cmp r2, r1
	bne _021E0F78
	add r0, #0x64
	ldr r2, [r4, r0]
	ldr r0, [sp, #4]
	cmp r2, r0
	bne _021E0F78
	b _021E11B6
_021E0F78:
	mov r2, #0xa9
	lsl r2, r2, #2
	str r1, [r4, r2]
	add r1, r2, #4
	ldr r0, [sp, #4]
	sub r2, #0x4c
	str r0, [r4, r1]
	ldrh r0, [r4, r2]
	bl ovy168_21e6798
	cmp r0, #0
	bne _021E0F96
	mov r0, #0
	bl ovy168_21e0324
_021E0F96:
	mov r0, #0x96
	lsl r0, r0, #2
	ldrh r1, [r4, r0]
	sub r0, #0x27
	ldr r3, _021E11C0 ; =0x00007FFF
	cmp r1, r0
	bhs _021E1016
	mov r2, #0x96
	lsl r2, r2, #2
	sub r2, #0x20
	ldrh r2, [r4, r2]
	mov r0, #0x41
	add r1, r6, #0
	and r2, r3
	add r3, r3, #1
	orr r2, r3
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	mov r7, #0x41
	bl sub_0204A934
	mov r1, #0x96
	lsl r1, r1, #2
	sub r1, #0x70
	str r0, [r4, r1]
	mov r0, #0x96
	lsl r0, r0, #2
	ldrh r0, [r4, r0]
	cmp r0, #0x90
	beq _021E0FE4
	cmp r0, #0x77
	beq _021E0FE4
	add r7, #0xca
	cmp r0, r7
	beq _021E0FE4
	mov r0, #0
	mov r1, #2
	bl ovy168_21dfb70
_021E0FE4:
	mov r0, #1
	mov r1, #0
	bl sub_02044C98
	mov r0, #2
	mov r1, #0
	bl sub_02044C98
	mov r0, #3
	mov r1, #0
	bl sub_02044C98
	mov r2, #0x6b
	ldr r1, [r4]
	mov r0, #0x40
	bic r1, r0
	str r1, [r4]
	mov r1, #0x7f
	add r0, r4, #0
	lsl r1, r1, #0xc
	lsl r2, r2, #0xc
	mov r3, #0x14
	bl ovy168_21e5ff0
	b _021E1062
_021E1016:
	mov r2, #0x96
	lsl r2, r2, #2
	sub r2, #0x20
	ldrh r2, [r4, r2]
	mov r1, #0x96
	lsl r1, r1, #2
	and r2, r3
	add r3, r3, #1
	orr r2, r3
	sub r1, #0x27
	lsl r2, r2, #0x10
	mov r0, #0x42
	sub r1, r6, r1
	lsr r2, r2, #0x10
	bl sub_0204A934
	mov r1, #0x96
	lsl r1, r1, #2
	sub r1, #0x70
	str r0, [r4, r1]
	ldr r1, [r4]
	mov r0, #0x40
	orr r0, r1
	str r0, [r4]
	mov r0, #0x96
	lsl r0, r0, #2
	sub r0, r0, #2
	cmp r6, r0
	blo _021E1062
	ldr r0, _021E11C4 ; =0x04000052
	ldrh r1, [r0]
	mov r0, #0x1f
	tst r0, r1
	bne _021E1062
	mov r0, #1
	mov r1, #0
	bl sub_02044C98
_021E1062:
	mov r6, #4
	cmp r5, #0
	beq _021E1082
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldrb r1, [r0]
	ldrb r0, [r5, #1]
	cmp r1, r0
	bhi _021E107A
	mov r0, #0
	strb r0, [r5, #1]
_021E107A:
	ldrb r1, [r5, #1]
	mov r0, #0x38
	mul r0, r1
	add r6, r6, r0
_021E1082:
	mov r7, #0
	bl ovy168_21e006c
	add r1, r4, #0
	add r1, #0xdc
	ldr r1, [r1]
	bl ovy168_21e7b24
	cmp r0, #0
	beq _021E10CE
	mov r1, #0x96
	lsl r1, r1, #2
	ldrh r0, [r4, r1]
	cmp r0, #0xf8
	beq _021E10A6
	sub r1, #0xf7
	cmp r0, r1
	bne _021E10AC
_021E10A6:
	ldrb r1, [r5, #1]
	cmp r1, #1
	beq _021E10CE
_021E10AC:
	cmp r0, #0x90
	beq _021E10CE
	cmp r0, #0x77
	beq _021E10CE
	ldr r1, _021E11C8 ; =0x0000010B
	cmp r0, r1
	beq _021E10CE
	bl ovy168_21e006c
	add r1, r4, #0
	add r1, #0xdc
	ldr r1, [r1]
	bl ovy168_21e7cd8
	mov r1, #1
	add r7, r0, #0
	and r7, r1
_021E10CE:
	mov r0, #0x96
	lsl r0, r0, #2
	ldrh r1, [r4, r0]
	add r0, #0x26
	cmp r1, r0
	bne _021E10E4
	mov r0, #1
	ldr r1, [r4]
	lsl r0, r0, #0x12
	orr r0, r1
	str r0, [r4]
_021E10E4:
	mov r0, #0x96
	lsl r0, r0, #2
	ldrh r1, [r4, r0]
	add r0, #0x39
	cmp r1, r0
	bne _021E10F8
	ldr r1, [r4]
	ldr r0, _021E11CC ; =0xFFFBFFFF
	and r0, r1
	str r0, [r4]
_021E10F8:
	mov r5, #0x96
	lsl r5, r5, #2
	ldrh r0, [r4, r5]
	add r1, r5, #0
	add r1, #0x26
	cmp r0, r1
	bne _021E1144
	cmp r7, #0
	beq _021E1144
	add r0, r5, #0
	sub r0, #0x70
	ldr r1, [r4, r0]
	add r0, r5, #0
	sub r0, #0x6c
	str r1, [r4, r0]
	add r0, r5, #0
	sub r0, #0x68
	add r2, r5, #0
	str r6, [r4, r0]
	sub r2, #0x20
	ldrh r3, [r4, r2]
	ldr r2, _021E11C0 ; =0x00007FFF
	mov r0, #0x42
	and r3, r2
	add r2, r2, #1
	orr r2, r3
	lsl r2, r2, #0x10
	mov r1, #0x33
	lsr r2, r2, #0x10
	bl sub_0204A934
	sub r5, #0x70
	str r0, [r4, r5]
	ldr r1, [r4]
	mov r0, #0x40
	orr r1, r0
	lsl r0, r0, #0xb
	b _021E118A
_021E1144:
	ldr r1, [r4]
	lsl r2, r1, #0x19
	lsr r2, r2, #0x1f
	bne _021E1190
	cmp r0, #0x90
	beq _021E1190
	lsl r0, r1, #0xe
	lsr r0, r0, #0x1f
	bne _021E1190
	cmp r7, #0
	beq _021E1190
	mov r5, #0x7a
	lsl r5, r5, #2
	ldr r1, [r4, r5]
	add r0, r5, #4
	str r1, [r4, r0]
	add r0, r5, #0
	add r0, #8
	add r2, r5, #0
	str r6, [r4, r0]
	add r2, #0x50
	ldrh r3, [r4, r2]
	ldr r2, _021E11C0 ; =0x00007FFF
	mov r0, #0x42
	and r3, r2
	add r2, r2, #1
	orr r2, r3
	lsl r2, r2, #0x10
	mov r1, #0x33
	lsr r2, r2, #0x10
	bl sub_0204A934
	str r0, [r4, r5]
	ldr r1, [r4]
	mov r0, #0x40
_021E118A:
	orr r0, r1
	str r0, [r4]
	mov r6, #4
_021E1190:
	mov r2, #0x7a
	lsl r2, r2, #2
	ldr r1, [r4, r2]
	mov r0, #0
	str r0, [r4, #4]
	ldr r3, [r4]
	ldr r0, _021E11D0 ; =0xFFFFEFFF
	and r0, r3
	str r0, [r4]
	add r0, r2, #0
	mov r3, #8
	add r0, #0x74
	str r3, [r4, r0]
	ldr r2, [r4, r2]
	ldr r1, [r1, r6]
	ldr r0, [sp]
	add r1, r2, r1
	bl sub_02015910
_021E11B6:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021E11BC: .word 0x0000FD9F
_021E11C0: .word 0x00007FFF
_021E11C4: .word 0x04000052
_021E11C8: .word 0x0000010B
_021E11CC: .word 0xFFFBFFFF
_021E11D0: .word 0xFFFFEFFF
	thumb_func_end ovy168_21e0ee8

	thumb_func_start ovy168_21e11d4
ovy168_21e11d4: ; 0x021E11D4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_020159DC
	mov r6, #0x7a
	add r4, r0, #0
	lsl r6, r6, #2
	ldr r0, [r4, r6]
	cmp r0, #0
	beq _021E1200
	add r0, r5, #0
	bl sub_020159DC
	add r1, r0, #0
	add r0, r5, #0
	bl ovy168_21e3f70
	ldr r0, [r4, r6]
	bl GFL_HeapFree
	mov r0, #0
	str r0, [r4, r6]
_021E1200:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy168_21e11d4

	thumb_func_start ovy168_21e1204
ovy168_21e1204: ; 0x021E1204
	push {r3, lr}
	bl sub_020159DC
	ldr r2, [r0]
	mov r1, #0x80
	bic r2, r1
	str r2, [r0]
	pop {r3, pc}
	thumb_func_end ovy168_21e1204

	thumb_func_start ovy168_21e1214
ovy168_21e1214: ; 0x021E1214
	push {r3, lr}
	bl sub_020159DC
	mov r1, #0x7a
	lsl r1, r1, #2
	mov r2, #0
	ldr r1, [r0, r1]
	mvn r2, r2
	cmp r1, #0
	beq _021E122E
	ldr r0, [r0]
	lsl r0, r0, #0x19
	lsr r2, r0, #0x1f
_021E122E:
	add r0, r2, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy168_21e1214

	thumb_func_start ovy168_21e1234
ovy168_21e1234: ; 0x021E1234
	mov r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	str r1, [r0, #4]
	str r1, [r0, #8]
	strh r1, [r0, #0xc]
	bx lr
	.align 2, 0
	thumb_func_end ovy168_21e1234

	thumb_func_start ovy168_21e1248
ovy168_21e1248: ; 0x021E1248
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	add r5, r3, #0
	ldr r6, [sp, #0x38]
	ldr r7, [sp, #0x3c]
	bl sub_020159DC
	add r4, r0, #0
	bl ovy168_21e02d0
	cmp r0, #1
	beq _021E1322
	mov r0, #1
	ldr r1, [r4]
	lsl r0, r0, #0xc
	orr r0, r1
	str r0, [r4]
	cmp r5, #2
	bne _021E1278
	mov r5, #0
	b _021E129E
_021E1278:
	cmp r5, #1
	bhi _021E128C
	mov r0, #1
	add r1, r5, #0
	tst r1, r0
	beq _021E1288
_021E1284:
	mov r5, #0x7f
	b _021E129E
_021E1288:
	add r5, r0, #0
	b _021E129C
_021E128C:
	ldr r0, [sp, #0xc]
	add r1, r5, #0
	bl ovy168_21e4a80
	mov r5, #1
	tst r0, r5
	beq _021E129C
	b _021E1284
_021E129C:
	sub r5, #0x81
_021E129E:
	cmp r6, #0xff
	ble _021E12A4
	mov r6, #0xff
_021E12A4:
	cmp r7, #0xff
	ble _021E12AA
	mov r7, #0xff
_021E12AA:
	ldr r0, [sp, #0x40]
	cmp r0, #0
	bne _021E12C8
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x14]
	str r0, [sp]
	str r6, [sp, #4]
	ldr r0, [sp, #0x10]
	ldr r3, [sp, #0x30]
	add r2, r5, #0
	str r7, [sp, #8]
	bl ovy168_21e5694
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021E12C8:
	mov r0, #0x49
	lsl r0, r0, #4
	str r0, [sp]
	mov r0, #0x8e
	lsl r0, r0, #2
	ldrh r1, [r4, r0]
	ldr r0, _021E1328 ; =0x00007FFF
	ldr r3, _021E132C ; =0x021F4174
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0x24
	mov r2, #0
	bl GFL_HeapAllocate
	add r2, r0, #0
	ldr r0, [sp, #0x10]
	str r4, [r2]
	str r0, [r2, #4]
	ldr r0, [sp, #0x14]
	mov r3, #0
	str r0, [r2, #8]
	ldr r0, [sp, #0x40]
	str r5, [r2, #0xc]
	str r0, [r2, #0x10]
	ldr r0, [sp, #0x30]
	str r0, [r2, #0x14]
	ldr r0, [sp, #0x34]
	str r0, [r2, #0x18]
	str r6, [r2, #0x1c]
	str r7, [r2, #0x20]
	ldr r1, [r4]
	mov r0, #4
	orr r0, r1
	str r0, [r4]
	ldr r0, [r4, #8]
	ldr r1, _021E1330 ; =ovy168_21e612c
	bl sub_0203A614
	ldr r1, _021E1334 ; =ovy168_21e6160
	mov r2, #1
	bl ovy168_21e035c
_021E1322:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E1328: .word 0x00007FFF
_021E132C: .word 0x021F4174
_021E1330: .word ovy168_21e612c
_021E1334: .word ovy168_21e6160
	thumb_func_end ovy168_21e1248

	thumb_func_start ovy168_21e1338
ovy168_21e1338: ; 0x021E1338
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r1, #0
	add r6, r2, #0
	str r3, [sp, #4]
	bl sub_020159DC
	add r4, r0, #0
	ldr r0, _021E1458 ; =0x000004B4
	ldr r3, _021E145C ; =0x021F4174
	str r0, [sp]
	mov r0, #0x8e
	lsl r0, r0, #2
	ldrh r1, [r4, r0]
	ldr r0, _021E1460 ; =0x00007FFF
	mov r2, #0
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0x38
	bl GFL_HeapAllocate
	add r5, r0, #0
	str r4, [r5]
	str r7, [r5, #4]
	ldr r0, [sp, #4]
	str r6, [r5, #8]
	str r0, [r5, #0xc]
	ldr r0, [sp, #0x20]
	str r0, [r5, #0x10]
	ldr r0, [sp, #0x24]
	str r0, [r5, #0x14]
	ldr r0, [sp, #0x28]
	str r0, [r5, #0x20]
	ldr r0, [sp, #0x2c]
	str r0, [r5, #0x24]
	str r0, [r5, #0x28]
	mov r0, #0
	str r0, [r5, #0x2c]
	ldr r0, [sp, #0x30]
	str r0, [r5, #0x30]
	ldr r0, [sp, #0x34]
	lsl r0, r0, #1
	str r0, [r5, #0x34]
	cmp r6, #1
	bne _021E13A2
	ldr r0, [r5, #0x34]
	cmp r0, #0
	bne _021E13A2
	mov r0, #2
	str r0, [r5, #0x34]
_021E13A2:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	ble _021E13BA
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021E13C8
_021E13BA:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021E13C8:
	blx sub_0208DA4C
	str r0, [r5, #0x18]
	ldr r0, [r5, #0x24]
	cmp r0, #0
	ble _021E13E6
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021E13F4
_021E13E6:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021E13F4:
	add r6, r0, #0
	ldr r1, [r5, #0x14]
	ldr r0, [r5, #0x10]
	sub r0, r1, r0
	cmp r0, #0
	ble _021E1412
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021E1420
_021E1412:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021E1420:
	blx sub_0208DA4C
	add r7, r0, #0
	add r0, r6, #0
	blx sub_0208DA4C
	add r1, r0, #0
	add r0, r7, #0
	bl FX_Div
	str r0, [r5, #0x1c]
	ldr r0, [r4, #8]
	ldr r1, _021E1464 ; =ovy168_21e6174
	add r2, r5, #0
	mov r3, #0
	bl sub_0203A614
	ldr r1, _021E1468 ; =ovy168_21e6270
	mov r2, #1
	bl ovy168_21e035c
	ldr r1, [r4]
	mov r0, #8
	orr r0, r1
	str r0, [r4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E1458: .word 0x000004B4
_021E145C: .word 0x021F4174
_021E1460: .word 0x00007FFF
_021E1464: .word ovy168_21e6174
_021E1468: .word ovy168_21e6270
	thumb_func_end ovy168_21e1338

	thumb_func_start ovy168_21e146c
ovy168_21e146c: ; 0x021E146C
	push {r3, r4, r5, r6, r7, lr}
	bl sub_020159DC
	mov r5, #0
	mov r7, #0x9b
	add r4, r0, #0
	lsl r7, r7, #2
	sub r6, r5, #1
_021E147C:
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r0, [r0, r7]
	cmp r0, r6
	beq _021E148A
	bl sub_02006C24
_021E148A:
	add r5, r5, #1
	cmp r5, #6
	blt _021E147C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy168_21e146c

	thumb_func_start ovy168_21e1494
ovy168_21e1494: ; 0x021E1494
	push {r3, lr}
	bl sub_020159DC
	mov r1, #0xa9
	mov r2, #0
	lsl r1, r1, #2
	str r2, [r0, r1]
	add r1, r1, #4
	str r2, [r0, r1]
	pop {r3, pc}
	thumb_func_end ovy168_21e1494

	thumb_func_start ovy168_21e14a8
ovy168_21e14a8: ; 0x021E14A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r7, r0, #0
	add r4, r1, #0
	bl sub_02015A04
	str r0, [sp, #0xc]
	add r0, r7, #0
	bl sub_02015A04
	add r5, r0, #0
	add r0, r7, #0
	bl sub_02015A04
	str r0, [sp, #8]
	add r0, r7, #0
	bl sub_02015A04
	add r6, r0, #0
	add r0, r7, #0
	bl sub_02015A04
	add r7, r0, #0
	ldr r0, [r4]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x1f
	beq _021E14E8
	mov r0, #0x8f
	lsl r0, r0, #2
	add sp, #0x28
	ldr r0, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021E14E8:
	cmp r5, #0xd
	bne _021E14F8
	mov r0, #0xa1
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021E14F8
	mov r5, #8
_021E14F8:
	cmp r5, #8
	beq _021E1514
	cmp r5, #0xf
	beq _021E1514
	cmp r5, #0x10
	beq _021E1514
	cmp r5, #0xe
	beq _021E1514
	cmp r5, #0x11
	beq _021E1514
	add r0, r4, #0
	bl ovy168_21e5674
	b _021E151C
_021E1514:
	ldr r1, [r4]
	mov r0, #2
	orr r0, r1
	str r0, [r4]
_021E151C:
	add r0, r5, #0
	sub r0, #9
	cmp r0, #0xc
	bhi _021E15C0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E1530: ; jump table
	.short _021E1636 - _021E1530 - 2 ; case 0
	.short _021E1636 - _021E1530 - 2 ; case 1
	.short _021E164E - _021E1530 - 2 ; case 2
	.short _021E164E - _021E1530 - 2 ; case 3
	.short _021E16C4 - _021E1530 - 2 ; case 4
	.short _021E15DC - _021E1530 - 2 ; case 5
	.short _021E154A - _021E1530 - 2 ; case 6
	.short _021E154A - _021E1530 - 2 ; case 7
	.short _021E1634 - _021E1530 - 2 ; case 8
	.short _021E16C4 - _021E1530 - 2 ; case 9
	.short _021E16C4 - _021E1530 - 2 ; case 10
	.short _021E15F2 - _021E1530 - 2 ; case 11
	.short _021E1612 - _021E1530 - 2 ; case 12
_021E154A:
	bl ovy168_21e00e8
	cmp r5, #0xf
	bne _021E1558
	add r1, r4, #0
	add r1, #0xdc
	b _021E155C
_021E1558:
	add r1, r4, #0
	add r1, #0xe0
_021E155C:
	ldr r1, [r1]
	cmp r0, #3
	bhi _021E15C0
	add r2, r0, r0
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021E156E: ; jump table
	.short _021E1576 - _021E156E - 2 ; case 0
	.short _021E1580 - _021E156E - 2 ; case 1
	.short _021E1580 - _021E156E - 2 ; case 2
	.short _021E15D0 - _021E156E - 2 ; case 3
_021E1576:
	mov r0, #0x8f
	lsl r0, r0, #2
	add sp, #0x28
	ldr r0, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021E1580:
	cmp r1, #7
	bhi _021E15C6
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E1590: ; jump table
	.short _021E15C6 - _021E1590 - 2 ; case 0
	.short _021E15C6 - _021E1590 - 2 ; case 1
	.short _021E15A0 - _021E1590 - 2 ; case 2
	.short _021E15A4 - _021E1590 - 2 ; case 3
	.short _021E15AE - _021E1590 - 2 ; case 4
	.short _021E15B8 - _021E1590 - 2 ; case 5
	.short _021E15BA - _021E1590 - 2 ; case 6
	.short _021E15C6 - _021E1590 - 2 ; case 7
_021E15A0:
	mov r5, #2
	b _021E16C4
_021E15A4:
	mov r5, #8
	cmp r0, #1
	beq _021E15C0
	mov r5, #0x12
	b _021E16C4
_021E15AE:
	mov r5, #4
	cmp r0, #1
	beq _021E15C0
_021E15B4:
	mov r5, #8
	b _021E16C4
_021E15B8:
	b _021E15B4
_021E15BA:
	mov r5, #8
	cmp r0, #1
	bne _021E15C2
_021E15C0:
	b _021E16C4
_021E15C2:
	mov r5, #6
	b _021E16C4
_021E15C6:
	mov r0, #0x8f
	lsl r0, r0, #2
	add sp, #0x28
	ldr r0, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021E15D0:
	cmp r1, #4
	beq _021E15D8
	cmp r1, #6
	bne _021E16C4
_021E15D8:
	mov r5, #0x13
	b _021E16C4
_021E15DC:
	bl ovy168_21e00e8
	cmp r0, #0
	beq _021E15E8
	cmp r0, #3
	bne _021E16C4
_021E15E8:
	mov r0, #0x8f
	lsl r0, r0, #2
	add sp, #0x28
	ldr r0, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021E15F2:
	bl ovy168_21e00e8
	cmp r0, #0
	beq _021E15FE
	cmp r0, #3
	bne _021E1610
_021E15FE:
	bl ovy168_21e006c
	bl ovy168_21e6ecc
	mov r0, #0x8f
	lsl r0, r0, #2
	add sp, #0x28
	ldr r0, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021E1610:
	b _021E16C2
_021E1612:
	bl ovy168_21e00e8
	cmp r0, #0
	beq _021E161E
	cmp r0, #3
	bne _021E1626
_021E161E:
	add r0, r4, #0
	add r0, #0xdc
	ldr r5, [r0]
	b _021E16C4
_021E1626:
	add r0, r4, #0
	add r0, #0xdc
	ldr r0, [r0]
	mov r5, #1
	tst r0, r5
	bne _021E16C4
	b _021E16C2
_021E1634:
	b _021E15B4
_021E1636:
	bl ovy168_21e00e8
	add r1, r4, #0
	add r1, #0xdc
	ldr r5, [r1]
	cmp r0, #3
	bne _021E16C4
	cmp r5, #4
	beq _021E164C
	cmp r5, #6
	bne _021E16C4
_021E164C:
	b _021E15D8
_021E164E:
	mov r0, #0x92
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	cmp r0, #0xd
	bhi _021E16C4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E1664: ; jump table
	.short _021E1680 - _021E1664 - 2 ; case 0
	.short _021E1680 - _021E1664 - 2 ; case 1
	.short _021E1680 - _021E1664 - 2 ; case 2
	.short _021E1680 - _021E1664 - 2 ; case 3
	.short _021E16B4 - _021E1664 - 2 ; case 4
	.short _021E169A - _021E1664 - 2 ; case 5
	.short _021E16A6 - _021E1664 - 2 ; case 6
	.short _021E169A - _021E1664 - 2 ; case 7
	.short _021E16B4 - _021E1664 - 2 ; case 8
	.short _021E169A - _021E1664 - 2 ; case 9
	.short _021E16B4 - _021E1664 - 2 ; case 10
	.short _021E16A4 - _021E1664 - 2 ; case 11
	.short _021E16A6 - _021E1664 - 2 ; case 12
	.short _021E169A - _021E1664 - 2 ; case 13
_021E1680:
	add r0, r4, #0
	add r0, #0xe0
	ldr r5, [r0]
	cmp r5, #0xff
	bne _021E16C4
_021E168A:
	add r0, r4, #0
	add r0, #0xdc
	ldr r1, [r0]
	mov r0, #1
	and r1, r0
	add r5, r1, #0
	eor r5, r0
	b _021E16C4
_021E169A:
	add r0, r4, #0
	add r0, #0xe0
	ldr r5, [r0]
	cmp r5, #0xff
	bne _021E16C4
_021E16A4:
	b _021E168A
_021E16A6:
	add r0, r4, #0
	add r0, #0xdc
	ldr r1, [r0]
	mov r0, #1
	add r5, r1, #0
	and r5, r0
	b _021E16C4
_021E16B4:
	bl ovy168_21e00e8
	cmp r0, #0
	beq _021E16C0
	cmp r0, #3
	bne _021E16C2
_021E16C0:
	b _021E168A
_021E16C2:
	mov r5, #0xe
_021E16C4:
	cmp r5, #0x13
	bls _021E16CA
	b _021E1834
_021E16CA:
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E16D6: ; jump table
	.short _021E16FE - _021E16D6 - 2 ; case 0
	.short _021E16FE - _021E16D6 - 2 ; case 1
	.short _021E1728 - _021E16D6 - 2 ; case 2
	.short _021E1728 - _021E16D6 - 2 ; case 3
	.short _021E1728 - _021E16D6 - 2 ; case 4
	.short _021E1728 - _021E16D6 - 2 ; case 5
	.short _021E1766 - _021E16D6 - 2 ; case 6
	.short _021E1766 - _021E16D6 - 2 ; case 7
	.short _021E1834 - _021E16D6 - 2 ; case 8
	.short _021E1834 - _021E16D6 - 2 ; case 9
	.short _021E1834 - _021E16D6 - 2 ; case 10
	.short _021E1834 - _021E16D6 - 2 ; case 11
	.short _021E1834 - _021E16D6 - 2 ; case 12
	.short _021E178E - _021E16D6 - 2 ; case 13
	.short _021E17BA - _021E16D6 - 2 ; case 14
	.short _021E1834 - _021E16D6 - 2 ; case 15
	.short _021E1834 - _021E16D6 - 2 ; case 16
	.short _021E1834 - _021E16D6 - 2 ; case 17
	.short _021E181A - _021E16D6 - 2 ; case 18
	.short _021E17DE - _021E16D6 - 2 ; case 19
_021E16FE:
	mov r0, #0xc
	mul r0, r5
_021E1702:
	ldr r1, _021E1894 ; =0x021F3FF4
	ldr r1, [r1, r0]
	str r1, [sp, #0x1c]
	ldr r1, _021E1898 ; =0x021F3FF8
	ldr r1, [r1, r0]
	str r1, [sp, #0x20]
	ldr r1, _021E189C ; =0x021F3FFC
	ldr r1, [r1, r0]
	str r1, [sp, #0x24]
	ldr r1, _021E18A0 ; =0x021F400C
	ldr r1, [r1, r0]
	str r1, [sp, #0x10]
	ldr r1, _021E18A4 ; =0x021F4010
	ldr r1, [r1, r0]
	str r1, [sp, #0x14]
	ldr r1, _021E18A8 ; =0x021F4014
_021E1722:
	ldr r0, [r1, r0]
_021E1724:
	str r0, [sp, #0x18]
	b _021E185E
_021E1728:
	bl ovy168_21e00e8
	cmp r0, #3
	bne _021E1738
	sub r1, r5, #2
	mov r0, #0xc
	mul r0, r1
	b _021E1702
_021E1738:
	cmp r0, #1
	bne _021E1764
	sub r1, r5, #2
	mov r0, #0xc
	mul r0, r1
	ldr r1, _021E18AC ; =0x021F4084
	ldr r1, [r1, r0]
	str r1, [sp, #0x1c]
	ldr r1, _021E18B0 ; =0x021F4088
	ldr r1, [r1, r0]
	str r1, [sp, #0x20]
	ldr r1, _021E18B4 ; =0x021F408C
	ldr r1, [r1, r0]
	str r1, [sp, #0x24]
	ldr r1, _021E18B8 ; =0x021F40B4
	ldr r1, [r1, r0]
	str r1, [sp, #0x10]
	ldr r1, _021E18BC ; =0x021F40B8
	ldr r1, [r1, r0]
	str r1, [sp, #0x14]
	ldr r1, _021E18C0 ; =0x021F40BC
	b _021E178C
_021E1764:
	b _021E1766
_021E1766:
	sub r1, r5, #2
	mov r0, #0xc
	mul r0, r1
	ldr r1, _021E18C4 ; =0x021F40E4
	ldr r1, [r1, r0]
	str r1, [sp, #0x1c]
	ldr r1, _021E18C8 ; =0x021F40E8
	ldr r1, [r1, r0]
	str r1, [sp, #0x20]
	ldr r1, _021E18CC ; =0x021F40EC
	ldr r1, [r1, r0]
	str r1, [sp, #0x24]
	ldr r1, _021E18D0 ; =0x021F412C
	ldr r1, [r1, r0]
	str r1, [sp, #0x10]
	ldr r1, _021E18D4 ; =0x021F4130
	ldr r1, [r1, r0]
	str r1, [sp, #0x14]
	ldr r1, _021E18D8 ; =0x021F4134
_021E178C:
	b _021E1722
_021E178E:
	mov r0, #0xa2
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	str r1, [sp, #0x1c]
	add r1, r0, #4
	ldr r1, [r4, r1]
	str r1, [sp, #0x20]
	add r1, r0, #0
	add r1, #8
	ldr r1, [r4, r1]
	str r1, [sp, #0x24]
	add r1, r0, #0
	add r1, #0xc
	ldr r1, [r4, r1]
	str r1, [sp, #0x10]
	add r1, r0, #0
	add r1, #0x10
	ldr r1, [r4, r1]
	add r0, #0x14
	str r1, [sp, #0x14]
	ldr r0, [r4, r0]
	b _021E1724
_021E17BA:
	ldr r0, _021E18DC ; =0x021F3FAC
	ldr r1, [r0]
	str r1, [sp, #0x1c]
	ldr r1, [r0, #4]
	str r1, [sp, #0x20]
	ldr r1, [r0, #8]
	str r1, [sp, #0x24]
	ldr r1, [r0, #0x30]
	str r1, [sp, #0x10]
	ldr r1, [r0, #0x34]
	str r1, [sp, #0x14]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x18]
	ldr r0, [r4]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	beq _021E185E
	b _021E1800
_021E17DE:
	ldr r0, _021E18DC ; =0x021F3FAC
	ldr r1, [r0, #0x18]
	str r1, [sp, #0x1c]
	ldr r1, [r0, #0x1c]
	str r1, [sp, #0x20]
	ldr r1, [r0, #0x20]
	str r1, [sp, #0x24]
	ldr r1, [r0, #0x24]
	str r1, [sp, #0x10]
	ldr r1, [r0, #0x28]
	str r1, [sp, #0x14]
	ldr r0, [r0, #0x2c]
	str r0, [sp, #0x18]
	ldr r0, [r4]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	beq _021E185E
_021E1800:
	mov r0, #0
	str r0, [sp]
	ldr r0, _021E18E0 ; =0x00000A66
	ldr r1, _021E18E4 ; =0x00000B9A
	ldr r2, [sp, #8]
	add r3, r6, #0
	bl ovy168_21e66e8
	mov r0, #2
	ldr r1, [r4]
	lsl r0, r0, #0xc
	orr r0, r1
	b _021E185C
_021E181A:
	ldr r0, _021E18DC ; =0x021F3FAC
	ldr r1, [r0, #0xc]
	str r1, [sp, #0x1c]
	ldr r1, [r0, #0x10]
	str r1, [sp, #0x20]
	ldr r1, [r0, #0x14]
	str r1, [sp, #0x24]
	ldr r1, [r0, #0x3c]
	str r1, [sp, #0x10]
	ldr r1, [r0, #0x40]
	str r1, [sp, #0x14]
	ldr r0, [r0, #0x44]
	b _021E1724
_021E1834:
	add r0, sp, #0x1c
	add r1, sp, #0x10
	bl ovy168_21dea80
	ldr r0, [r4]
	lsl r0, r0, #0x12
	lsr r0, r0, #0x1f
	beq _021E185E
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	lsl r0, r0, #0xc
	ldr r2, [sp, #8]
	add r1, r0, #0
	add r3, r6, #0
	bl ovy168_21e66e8
	ldr r1, [r4]
	ldr r0, _021E18E8 ; =0xFFFFDFFF
	and r0, r1
_021E185C:
	str r0, [r4]
_021E185E:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _021E186A
	cmp r0, #1
	beq _021E1878
	b _021E188A
_021E186A:
	bl ovy168_21e005c
	add r1, sp, #0x1c
	add r2, sp, #0x10
	bl ovy168_21de754
	b _021E188A
_021E1878:
	bl ovy168_21e005c
	str r6, [sp]
	ldr r3, [sp, #8]
	add r1, sp, #0x1c
	add r2, sp, #0x10
	str r7, [sp, #4]
	bl ovy168_21de7c0
_021E188A:
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E1894: .word 0x021F3FF4
_021E1898: .word 0x021F3FF8
_021E189C: .word 0x021F3FFC
_021E18A0: .word 0x021F400C
_021E18A4: .word 0x021F4010
_021E18A8: .word 0x021F4014
_021E18AC: .word 0x021F4084
_021E18B0: .word 0x021F4088
_021E18B4: .word 0x021F408C
_021E18B8: .word 0x021F40B4
_021E18BC: .word 0x021F40B8
_021E18C0: .word 0x021F40BC
_021E18C4: .word 0x021F40E4
_021E18C8: .word 0x021F40E8
_021E18CC: .word 0x021F40EC
_021E18D0: .word 0x021F412C
_021E18D4: .word 0x021F4130
_021E18D8: .word 0x021F4134
_021E18DC: .word 0x021F3FAC
_021E18E0: .word 0x00000A66
_021E18E4: .word 0x00000B9A
_021E18E8: .word 0xFFFFDFFF
	thumb_func_end ovy168_21e14a8

	thumb_func_start ovy168_21e18ec
ovy168_21e18ec: ; 0x021E18EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r4, r0, #0
	add r7, r1, #0
	bl sub_02015A04
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02015A04
	str r0, [sp, #0x30]
	add r0, r4, #0
	bl sub_02015A04
	str r0, [sp, #0x34]
	add r0, r4, #0
	bl sub_02015A04
	str r0, [sp, #0x38]
	add r0, r4, #0
	bl sub_02015A04
	str r0, [sp, #0x24]
	add r0, r4, #0
	bl sub_02015A04
	str r0, [sp, #0x28]
	add r0, r4, #0
	bl sub_02015A04
	str r0, [sp, #0x2c]
	add r0, r4, #0
	bl sub_02015A04
	str r0, [sp, #8]
	add r0, r4, #0
	bl sub_02015A04
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02015A04
	add r4, r0, #0
	add r0, r7, #0
	bl ovy168_21e5674
	cmp r5, #0
	beq _021E1956
	cmp r5, #1
	beq _021E1964
	cmp r5, #2
	beq _021E1970
	b _021E19A6
_021E1956:
	bl ovy168_21e005c
	add r1, sp, #0x30
	add r2, sp, #0x24
	bl ovy168_21de754
	b _021E19A6
_021E1964:
	bl ovy168_21e005c
	str r6, [sp]
	str r4, [sp, #4]
	add r1, sp, #0x30
	b _021E199E
_021E1970:
	bl ovy168_21e005c
	add r5, sp, #0x18
	add r1, r5, #0
	add r2, sp, #0xc
	bl ovy168_21de968
	add r0, r5, #0
	add r5, sp, #0x30
	add r1, r5, #0
	add r2, r5, #0
	bl VEC_Add
	add r1, sp, #0x24
	add r0, sp, #0xc
	add r2, r1, #0
	bl VEC_Add
	bl ovy168_21e005c
	str r6, [sp]
	str r4, [sp, #4]
	add r1, r5, #0
_021E199E:
	ldr r3, [sp, #8]
	add r2, sp, #0x24
	bl ovy168_21de7c0
_021E19A6:
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy168_21e18ec

	thumb_func_start ovy168_21e19b0
ovy168_21e19b0: ; 0x021E19B0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r0, #0
	add r6, r1, #0
	bl sub_02015A04
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl sub_02015A04
	add r5, r0, #0
	add r0, r6, #0
	bl ovy168_21e5674
	cmp r4, #0
	beq _021E19F6
	cmp r4, #1
	beq _021E1A04
	b _021E1A2C
_021E19F6:
	bl ovy168_21e005c
	ldr r2, [sp, #8]
	add r1, r7, #0
	bl ovy168_21de798
	b _021E1A2C
_021E1A04:
	bl ovy168_21e005c
	add r1, r7, #0
	add r7, sp, #0x20
	add r4, sp, #0x14
	ldr r2, [sp, #8]
	add r3, r7, #0
	str r4, [sp]
	bl ovy168_21de980
	bl ovy168_21e005c
	ldr r1, [sp, #0x10]
	ldr r3, [sp, #0xc]
	str r1, [sp]
	add r1, r7, #0
	add r2, r4, #0
	str r5, [sp, #4]
	bl ovy168_21de7c0
_021E1A2C:
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy168_21e19b0

	thumb_func_start ovy168_21e1a38
ovy168_21e1a38: ; 0x021E1A38
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r0, #0
	add r5, r1, #0
	bl sub_02015A04
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl sub_02015A04
	str r0, [sp, #0x10]
	add r0, r4, #0
	bl sub_02015A04
	str r0, [sp, #0x14]
	add r0, r4, #0
	bl sub_02015A04
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02015A04
	add r7, r0, #0
	add r0, r4, #0
	bl sub_02015A04
	add r4, r0, #0
	bl ovy168_21e005c
	str r6, [sp]
	str r7, [sp, #4]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	str r4, [sp, #8]
	bl ovy168_21de878
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy168_21e1a38

	thumb_func_start ovy168_21e1a8c
ovy168_21e1a8c: ; 0x021E1A8C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r4, r0, #0
	str r1, [sp]
	bl sub_02015A04
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02015A04
	cmp r0, #0
	bne _021E1AB2
	mov r1, #0x91
	ldr r0, [sp]
	lsl r1, r1, #2
	str r6, [r0, r1]
	bl ovy168_21e5674
	b _021E1AEC
_021E1AB2:
	add r7, sp, #4
	ldr r0, [sp]
	mov r1, #0xe
	add r2, r7, #0
	bl ovy168_21e4558
	add r4, r0, #0
	beq _021E1AEC
	mov r5, #0
	cmp r4, #0
	ble _021E1AEC
_021E1AC8:
	cmp r6, #1
	bne _021E1ADA
	bl ovy168_21e006c
	lsl r1, r5, #2
	ldr r1, [r7, r1]
	bl ovy168_21e6f88
	b _021E1AE6
_021E1ADA:
	bl ovy168_21e006c
	lsl r1, r5, #2
	ldr r1, [r7, r1]
	bl ovy168_21e6f54
_021E1AE6:
	add r5, r5, #1
	cmp r5, r4
	blt _021E1AC8
_021E1AEC:
	mov r1, #0x8f
	ldr r0, [sp]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy168_21e1a8c

	thumb_func_start ovy168_21e1af8
ovy168_21e1af8: ; 0x021E1AF8
	push {r3, r4, r5, lr}
	mov r4, #0xa1
	add r5, r1, #0
	mov r0, #1
	lsl r4, r4, #2
	str r0, [r5, r4]
	bl ovy168_21e005c
	add r2, r4, #0
	add r1, r4, #4
	add r2, #0x10
	add r1, r5, r1
	add r2, r5, r2
	bl ovy168_21de968
	sub r4, #0x48
	ldr r0, [r5, r4]
	pop {r3, r4, r5, pc}
	thumb_func_end ovy168_21e1af8

	thumb_func_start ovy168_21e1b1c
ovy168_21e1b1c: ; 0x021E1B1C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r1, #0
	str r0, [sp, #0xc]
	bl sub_02015A04
	add r1, r0, #0
	add r0, r5, #0
	bl ovy168_21e5f6c
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, sp, #0x14
	bl ovy168_21e4cb0
	cmp r0, #1
	beq _021E1B42
	b _021E1C5E
_021E1B42:
	ldr r0, _021E1C64 ; =0x00000778
	ldr r7, _021E1C68 ; =0x00007FFF
	str r0, [sp, #0x10]
	str r0, [sp]
	mov r0, #0x8e
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	ldr r3, _021E1C6C ; =0x021F4174
	mov r2, #0
	add r1, r0, #0
	and r1, r7
	add r0, r7, #1
	orr r0, r1
	lsl r0, r0, #0x10
	mov r1, #0x12
	lsr r0, r0, #0x10
	lsl r1, r1, #0xa
	bl GFL_HeapAllocate
	mov r2, #0x8e
	lsl r2, r2, #2
	ldrh r2, [r5, r2]
	add r6, r0, #0
	mov r0, #6
	add r3, r2, #0
	and r3, r7
	add r2, r7, #1
	orr r2, r3
	lsl r2, r2, #0x10
	add r1, r4, #0
	lsr r2, r2, #0x10
	bl sub_0204FDF8
	add r4, r0, #0
	cmp r6, #0
	beq _021E1C32
	cmp r4, #0
	beq _021E1C32
	mov r0, #6
	str r0, [sp]
	mov r0, #0x36
	str r0, [sp, #4]
	mov r0, #0x8e
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	mov r2, #0
	mov r3, #5
	add r1, r0, #0
	and r1, r7
	add r0, r7, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0x12
	str r0, [sp, #8]
	add r0, r6, #0
	lsl r1, r1, #0xa
	bl sub_0204F980
	ldr r1, [sp, #0x14]
	lsl r1, r1, #2
	add r1, r5, r1
	str r0, [r1, #0xc]
	ldr r0, [sp, #0x14]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _021E1C32
	add r1, r4, #0
	bl sub_0204FEF8
	ldr r0, [sp, #0x10]
	ldr r3, _021E1C6C ; =0x021F4174
	add r0, #0xa
	str r0, [sp, #0x10]
	str r0, [sp]
	mov r0, #0x8e
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	mov r2, #0
	add r1, r0, #0
	and r1, r7
	add r0, r7, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0xc
	bl GFL_HeapAllocate
	add r1, r0, #0
	str r5, [r1]
	ldr r0, [sp, #0x14]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0xc]
	str r0, [r1, #4]
	str r4, [r1, #8]
	mov r0, #1
	ldr r2, [r5]
	lsl r0, r0, #0x10
	orr r0, r2
	str r0, [r5]
	ldr r0, _021E1C70 ; =ovy168_21e659c
	mov r2, #0
	bl GFL_VBlankTCBAdd
	mov r1, #0
	mov r2, #1
	bl ovy168_21e035c
	ldr r0, [sp, #0xc]
	ldr r1, _021E1C74 ; =0x021E4549
	bl sub_02015A88
	ldr r1, [sp, #0x14]
	add r0, r5, #0
	add r2, r4, #0
	bl ovy168_21e4cf0
_021E1C32:
	ldr r0, [sp, #0x14]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0xc]
	cmp r0, #0
	bne _021E1C5E
	cmp r6, #0
	beq _021E1C48
	add r0, r6, #0
	bl GFL_HeapFree
_021E1C48:
	cmp r4, #0
	beq _021E1C52
	add r0, r4, #0
	bl GFL_HeapFree
_021E1C52:
	ldr r0, [sp, #0x14]
	mov r1, #0
	lsl r0, r0, #2
	mvn r1, r1
	add r0, r5, r0
	str r1, [r0, #0x4c]
_021E1C5E:
	mov r0, #1
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E1C64: .word 0x00000778
_021E1C68: .word 0x00007FFF
_021E1C6C: .word 0x021F4174
_021E1C70: .word ovy168_21e659c
_021E1C74: .word 0x021E4549
	thumb_func_end ovy168_21e1b1c

	thumb_func_start ovy168_21e1c78
ovy168_21e1c78: ; 0x021E1C78
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _021E1D3C ; =0x000007AD
	add r6, r1, #0
	str r0, [sp]
	mov r0, #0x8e
	lsl r0, r0, #2
	ldrh r1, [r6, r0]
	ldr r0, _021E1D40 ; =0x00007FFF
	ldr r3, _021E1D44 ; =0x021F4174
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0x5c
	mov r2, #1
	bl GFL_HeapAllocate
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	add r1, r0, #0
	add r0, r6, #0
	bl ovy168_21e5f6c
	add r1, r0, #0
	add r0, r6, #0
	bl ovy168_21e4cfc
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #4]
	str r5, [r4]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #4]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #8]
	mov r0, #0
	str r0, [r4, #0xc]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #0x10]
	mov r0, #0
	str r0, [r4, #0x14]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #0x18]
	add r0, r5, #0
	bl sub_02015A04
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #0x44]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #0x48]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #0x4c]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #0x50]
	ldr r0, [r4, #8]
	cmp r0, #8
	bne _021E1D1C
	ldr r0, [r4, #4]
	str r0, [r4, #8]
_021E1D1C:
	cmp r7, #0x10
	beq _021E1D2C
	ldr r3, [sp, #4]
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ovy168_21e5940
_021E1D2C:
	add r0, r4, #0
	bl GFL_HeapFree
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E1D3C: .word 0x000007AD
_021E1D40: .word 0x00007FFF
_021E1D44: .word 0x021F4174
	thumb_func_end ovy168_21e1c78

	thumb_func_start ovy168_21e1d48
ovy168_21e1d48: ; 0x021E1D48
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0x7e
	lsl r0, r0, #4
	str r0, [sp]
	mov r0, #0x8e
	add r6, r1, #0
	lsl r0, r0, #2
	ldrh r1, [r6, r0]
	ldr r0, _021E1E38 ; =0x00007FFF
	ldr r3, _021E1E3C ; =0x021F4174
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0x5c
	mov r2, #1
	bl GFL_HeapAllocate
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	add r1, r0, #0
	add r0, r6, #0
	bl ovy168_21e5f6c
	add r1, r0, #0
	add r0, r6, #0
	bl ovy168_21e4cfc
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #4]
	str r5, [r4]
	mov r0, #8
	str r0, [r4, #4]
	str r0, [r4, #8]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #0x28]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #0x2c]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #0x30]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #0x34]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #0x38]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #0x3c]
	mov r0, #0
	str r0, [r4, #0xc]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #0x10]
	mov r0, #0
	str r0, [r4, #0x14]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #0x18]
	add r0, r5, #0
	bl sub_02015A04
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #0x44]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #0x48]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #0x4c]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #0x50]
	cmp r7, #0x10
	beq _021E1E28
	lsl r0, r7, #2
	add r0, r6, r0
	ldr r0, [r0, #0xc]
	ldr r1, [sp, #4]
	ldr r2, _021E1E40 ; =ovy168_21e4d20
	add r3, r4, #0
	bl sub_0205007C
	mov r1, #0
	sub r1, r1, #1
	cmp r0, r1
	bne _021E1E2E
	b _021E1E28
_021E1E28:
	add r0, r4, #0
	bl GFL_HeapFree
_021E1E2E:
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E1E38: .word 0x00007FFF
_021E1E3C: .word 0x021F4174
_021E1E40: .word ovy168_21e4d20
	thumb_func_end ovy168_21e1d48

	thumb_func_start ovy168_21e1e44
ovy168_21e1e44: ; 0x021E1E44
	push {r4, r5, r6, r7, lr}
	sub sp, #0x64
	add r5, r0, #0
	ldr r0, _021E1FA0 ; =0x00000819
	add r6, r1, #0
	str r0, [sp]
	mov r0, #0x8e
	lsl r0, r0, #2
	ldrh r1, [r6, r0]
	ldr r0, _021E1FA4 ; =0x00007FFF
	ldr r3, _021E1FA8 ; =0x021F4174
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0x5c
	mov r2, #1
	bl GFL_HeapAllocate
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	add r1, r0, #0
	add r0, r6, #0
	bl ovy168_21e5f6c
	add r1, r0, #0
	add r0, r6, #0
	bl ovy168_21e4cfc
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #0xc]
	str r5, [r4]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #4]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #8]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #0xc]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #0x10]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #0x14]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #0x44]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #0x48]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #0x4c]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #0x50]
	mov r0, #1
	str r0, [r4, #0x40]
	ldr r0, [r4, #4]
	cmp r0, #0xd
	bne _021E1EEA
	mov r0, #9
	str r0, [r4, #4]
	mov r0, #2
	str r0, [r4, #0x40]
_021E1EEA:
	ldr r0, [r4, #8]
	cmp r0, #8
	bne _021E1EF4
	ldr r0, [r4, #4]
	str r0, [r4, #8]
_021E1EF4:
	cmp r7, #0x10
	beq _021E1F90
	ldr r3, _021E1FAC ; =0x021F3004
	mov r1, #0
	add r0, sp, #0x38
	add r2, sp, #0x2c
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	ldmia r3!, {r0, r1}
	str r2, [sp, #0x10]
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	ldr r3, _021E1FB0 ; =0x021F2FB0
	str r0, [r2]
	add r2, sp, #0x20
	mov r5, #2
	ldmia r3!, {r0, r1}
	str r2, [sp, #0x14]
	stmia r2!, {r0, r1}
	lsl r1, r5, #0xb
	ldr r0, [r3]
	str r1, [sp, #0x58]
	str r0, [r2]
	mov r0, #3
	lsl r0, r0, #0xc
	str r0, [sp, #0x48]
	ldr r0, _021E1FB4 ; =0xFFFFD000
	str r1, [sp, #0x60]
	str r0, [sp, #0x4c]
	ldr r0, _021E1FB8 ; =0xFFFFC000
	str r5, [sp, #0x44]
	str r0, [sp, #0x50]
	lsl r0, r5, #0xd
	str r0, [sp, #0x54]
	lsl r0, r5, #0x14
	str r0, [sp, #0x5c]
	add r0, r6, #0
	str r0, [sp, #0x18]
	add r0, #0xc
	str r0, [sp, #0x18]
	lsl r0, r7, #2
	ldr r1, [sp, #0x18]
	str r0, [sp, #0x1c]
	ldr r0, [r1, r0]
	bl sub_02050194
	cmp r0, #0
	bne _021E1F84
	ldr r0, [sp, #0x10]
	lsl r2, r5, #0xc
	str r0, [sp]
	ldr r0, [sp, #0x14]
	add r3, sp, #0x38
	str r0, [sp, #4]
	mov r0, #0x8e
	lsl r0, r0, #2
	ldrh r1, [r6, r0]
	ldr r0, _021E1FB8 ; =0xFFFFC000
	lsr r0, r0, #0x11
	and r1, r0
	lsl r0, r5, #0xe
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	ldr r0, [r1, r0]
	add r1, sp, #0x44
	bl sub_020500CC
_021E1F84:
	ldr r3, [sp, #0xc]
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ovy168_21e5940
_021E1F90:
	add r0, r4, #0
	bl GFL_HeapFree
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	add sp, #0x64
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021E1FA0: .word 0x00000819
_021E1FA4: .word 0x00007FFF
_021E1FA8: .word 0x021F4174
_021E1FAC: .word 0x021F3004
_021E1FB0: .word 0x021F2FB0
_021E1FB4: .word 0xFFFFD000
_021E1FB8: .word 0xFFFFC000
	thumb_func_end ovy168_21e1e44

	thumb_func_start ovy168_21e1fbc
ovy168_21e1fbc: ; 0x021E1FBC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x68
	add r5, r0, #0
	ldr r0, _021E2128 ; =0x00000862
	add r6, r1, #0
	str r0, [sp]
	mov r0, #0x8e
	lsl r0, r0, #2
	ldrh r1, [r6, r0]
	ldr r0, _021E212C ; =0x00007FFF
	ldr r3, _021E2130 ; =0x021F4174
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0x5c
	mov r2, #1
	bl GFL_HeapAllocate
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	add r1, r0, #0
	add r0, r6, #0
	bl ovy168_21e5f6c
	add r1, r0, #0
	add r0, r6, #0
	bl ovy168_21e4cfc
	str r0, [sp, #0xc]
	ldr r1, [sp, #0xc]
	add r0, r6, #0
	bl ovy168_21e4d14
	add r7, r0, #0
	str r5, [r4]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #4]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #8]
	mov r0, #0
	str r0, [r4, #0xc]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #0x10]
	mov r0, #0
	str r0, [r4, #0x14]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #0x18]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #0x44]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #0x48]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #0x4c]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #0x50]
	ldr r0, [sp, #0xc]
	cmp r0, #0x10
	beq _021E2118
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _021E20F6
	ldr r3, _021E2134 ; =0x021F2F98
	mov r1, #0
	add r0, sp, #0x3c
	add r2, sp, #0x30
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	ldmia r3!, {r0, r1}
	str r2, [sp, #0x14]
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	ldr r3, _021E2138 ; =0x021F2FEC
	str r0, [r2]
	add r2, sp, #0x24
	mov r5, #2
	ldmia r3!, {r0, r1}
	str r2, [sp, #0x18]
	stmia r2!, {r0, r1}
	lsl r1, r5, #0xb
	ldr r0, [r3]
	str r1, [sp, #0x5c]
	str r0, [r2]
	mov r0, #3
	lsl r0, r0, #0xc
	str r0, [sp, #0x4c]
	ldr r0, _021E213C ; =0xFFFFD000
	str r1, [sp, #0x64]
	str r0, [sp, #0x50]
	ldr r0, _021E2140 ; =0xFFFFC000
	str r5, [sp, #0x48]
	str r0, [sp, #0x54]
	lsl r0, r5, #0xd
	str r0, [sp, #0x58]
	lsl r0, r5, #0x14
	str r0, [sp, #0x60]
	add r0, r6, #0
	str r0, [sp, #0x1c]
	add r0, #0xc
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x1c]
	lsl r0, r0, #2
	str r0, [sp, #0x20]
	ldr r0, [r1, r0]
	bl sub_02050194
	cmp r0, #0
	bne _021E20F2
	ldr r0, [sp, #0x14]
	lsl r2, r5, #0xc
	str r0, [sp]
	ldr r0, [sp, #0x18]
	add r3, sp, #0x3c
	str r0, [sp, #4]
	mov r0, #0x8e
	lsl r0, r0, #2
	ldrh r1, [r6, r0]
	ldr r0, _021E212C ; =0x00007FFF
	and r1, r0
	lsl r0, r5, #0xe
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	ldr r0, [r1, r0]
	add r1, sp, #0x48
	bl sub_020500CC
_021E20F2:
	mov r0, #2
	str r0, [r4, #0x40]
_021E20F6:
	ldr r0, [r4, #8]
	cmp r0, #8
	bne _021E2100
	ldr r0, [r4, #4]
	str r0, [r4, #8]
_021E2100:
	mov r5, #0
	cmp r7, #0
	ble _021E2118
_021E2106:
	ldr r2, [sp, #0xc]
	add r0, r6, #0
	add r1, r4, #0
	add r3, r5, #0
	bl ovy168_21e5940
	add r5, r5, #1
	cmp r5, r7
	blt _021E2106
_021E2118:
	add r0, r4, #0
	bl GFL_HeapFree
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	add sp, #0x68
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E2128: .word 0x00000862
_021E212C: .word 0x00007FFF
_021E2130: .word 0x021F4174
_021E2134: .word 0x021F2F98
_021E2138: .word 0x021F2FEC
_021E213C: .word 0xFFFFD000
_021E2140: .word 0xFFFFC000
	thumb_func_end ovy168_21e1fbc

	thumb_func_start ovy168_21e2144
ovy168_21e2144: ; 0x021E2144
	push {r4, r5, r6, lr}
	add r5, r1, #0
	bl sub_02015A04
	add r1, r0, #0
	add r0, r5, #0
	bl ovy168_21e5f6c
	add r1, r0, #0
	add r0, r5, #0
	bl ovy168_21e4cfc
	cmp r0, #0x10
	beq _021E2176
	add r6, r5, #0
	lsl r4, r0, #2
	add r6, #0xc
	ldr r0, [r6, r4]
	bl ovy168_21e565c
	mov r0, #0
	str r0, [r6, r4]
	sub r1, r0, #1
	add r0, r5, r4
	str r1, [r0, #0x4c]
_021E2176:
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy168_21e2144

	thumb_func_start ovy168_21e2180
ovy168_21e2180: ; 0x021E2180
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _021E2260 ; =0x000008CB
	add r6, r1, #0
	str r0, [sp]
	mov r0, #0x8e
	lsl r0, r0, #2
	ldrh r1, [r6, r0]
	ldr r0, _021E2264 ; =0x00007FFF
	ldr r3, _021E2268 ; =0x021F4174
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0x5c
	mov r2, #1
	bl GFL_HeapAllocate
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	add r1, r0, #0
	add r0, r6, #0
	bl ovy168_21e5f6c
	add r1, r0, #0
	add r0, r6, #0
	bl ovy168_21e4cfc
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #4]
	str r5, [r4]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #0x20]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #4]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #8]
	mov r0, #0
	str r0, [r4, #0xc]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #0x10]
	mov r0, #0
	str r0, [r4, #0x14]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #0x24]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #0x1c]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	str r0, [r4, #0x44]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #0x48]
	ldr r0, [sp, #8]
	str r0, [r4, #0x4c]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #0x50]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #0x54]
	cmp r0, #0
	bne _021E2230
	mov r0, #1
	str r0, [r4, #0x54]
_021E2230:
	cmp r7, #0x10
	beq _021E224E
	lsl r0, r7, #2
	add r0, r6, r0
	ldr r0, [r0, #0xc]
	ldr r1, [sp, #4]
	ldr r2, _021E226C ; =ovy168_21e4d20
	add r3, r4, #0
	bl sub_0205007C
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021E2254
	b _021E224E
_021E224E:
	add r0, r4, #0
	bl GFL_HeapFree
_021E2254:
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021E2260: .word 0x000008CB
_021E2264: .word 0x00007FFF
_021E2268: .word 0x021F4174
_021E226C: .word ovy168_21e4d20
	thumb_func_end ovy168_21e2180

	thumb_func_start ovy168_21e2270
ovy168_21e2270: ; 0x021E2270
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _021E2364 ; =0x00000905
	add r6, r1, #0
	str r0, [sp]
	mov r0, #0x8e
	lsl r0, r0, #2
	ldrh r1, [r6, r0]
	ldr r0, _021E2368 ; =0x00007FFF
	ldr r3, _021E236C ; =0x021F4174
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0x5c
	mov r2, #1
	bl GFL_HeapAllocate
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	add r1, r0, #0
	add r0, r6, #0
	bl ovy168_21e5f6c
	add r1, r0, #0
	add r0, r6, #0
	bl ovy168_21e4cfc
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #4]
	str r5, [r4]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #0x20]
	mov r0, #8
	str r0, [r4, #4]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #0x28]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #0x2c]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #0x30]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #8]
	mov r0, #0
	str r0, [r4, #0xc]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #0x10]
	mov r0, #0
	str r0, [r4, #0x14]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #0x24]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #0x1c]
	mov r0, #8
	lsl r0, r0, #9
	str r0, [sp, #8]
	str r0, [r4, #0x44]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #0x48]
	ldr r0, [sp, #8]
	str r0, [r4, #0x4c]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #0x50]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #0x54]
	cmp r0, #0
	bne _021E2334
	mov r0, #1
	str r0, [r4, #0x54]
_021E2334:
	cmp r7, #0x10
	beq _021E2352
	lsl r0, r7, #2
	add r0, r6, r0
	ldr r0, [r0, #0xc]
	ldr r1, [sp, #4]
	ldr r2, _021E2370 ; =ovy168_21e4d20
	add r3, r4, #0
	bl sub_0205007C
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021E2358
	b _021E2352
_021E2352:
	add r0, r4, #0
	bl GFL_HeapFree
_021E2358:
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021E2364: .word 0x00000905
_021E2368: .word 0x00007FFF
_021E236C: .word 0x021F4174
_021E2370: .word ovy168_21e4d20
	thumb_func_end ovy168_21e2270

	thumb_func_start ovy168_21e2374
ovy168_21e2374: ; 0x021E2374
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	add r5, r0, #0
	ldr r0, _021E24DC ; =0x00000943
	add r6, r1, #0
	str r0, [sp]
	mov r0, #0x8e
	lsl r0, r0, #2
	ldrh r1, [r6, r0]
	ldr r0, _021E24E0 ; =0x00007FFF
	ldr r3, _021E24E4 ; =0x021F4174
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0x5c
	mov r2, #1
	bl GFL_HeapAllocate
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	add r1, r0, #0
	add r0, r6, #0
	bl ovy168_21e5f6c
	add r1, r0, #0
	add r0, r6, #0
	bl ovy168_21e4cfc
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #0xc]
	str r5, [r4]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #0x20]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #4]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #8]
	mov r0, #0
	str r0, [r4, #0xc]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #0x10]
	mov r0, #0
	str r0, [r4, #0x14]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #0x24]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #0x1c]
	mov r0, #3
	lsl r0, r0, #0xa
	str r0, [r4, #0x44]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #0x48]
	mov r0, #3
	lsl r0, r0, #0xa
	str r0, [r4, #0x4c]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #0x50]
	add r0, r5, #0
	bl sub_02015A04
	mov r1, #3
	str r0, [r4, #0x54]
	str r1, [r4, #0x40]
	cmp r0, #0
	bne _021E2428
	mov r0, #1
	str r0, [r4, #0x54]
_021E2428:
	cmp r7, #0x10
	beq _021E24CA
	ldr r3, _021E24E8 ; =0x021F2FE0
	mov r1, #0
	add r0, sp, #0x30
	add r2, sp, #0x24
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	ldmia r3!, {r0, r1}
	str r2, [sp, #0x10]
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	ldr r3, _021E24EC ; =0x021F2FA4
	str r0, [r2]
	add r2, sp, #0x18
	ldmia r3!, {r0, r1}
	str r2, [sp, #0x14]
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r5, r6, #0
	str r0, [r2]
	mov r0, #2
	str r0, [sp, #0x3c]
	mov r0, #3
	lsl r0, r0, #0xc
	str r0, [sp, #0x40]
	ldr r0, _021E24F0 ; =0xFFFFD000
	add r5, #0xc
	str r0, [sp, #0x44]
	ldr r0, _021E24F4 ; =0xFFFFC000
	lsl r7, r7, #2
	str r0, [sp, #0x48]
	mov r0, #2
	lsl r0, r0, #0xd
	str r0, [sp, #0x4c]
	mov r0, #2
	lsl r1, r0, #0xb
	lsl r0, r0, #0x14
	str r1, [sp, #0x50]
	str r1, [sp, #0x58]
	str r0, [sp, #0x54]
	ldr r0, [r5, r7]
	bl sub_02050194
	cmp r0, #0
	bne _021E24B4
	ldr r0, [sp, #0x10]
	mov r2, #2
	str r0, [sp]
	ldr r0, [sp, #0x14]
	lsl r2, r2, #0xc
	str r0, [sp, #4]
	mov r0, #0x8e
	lsl r0, r0, #2
	ldrh r1, [r6, r0]
	ldr r0, _021E24F4 ; =0xFFFFC000
	add r3, sp, #0x30
	lsr r0, r0, #0x11
	and r1, r0
	mov r0, #2
	lsl r0, r0, #0xe
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, [r5, r7]
	add r1, sp, #0x3c
	bl sub_020500CC
_021E24B4:
	ldr r0, [r5, r7]
	ldr r1, [sp, #0xc]
	ldr r2, _021E24F8 ; =ovy168_21e4d20
	add r3, r4, #0
	bl sub_0205007C
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021E24D0
	b _021E24CA
_021E24CA:
	add r0, r4, #0
	bl GFL_HeapFree
_021E24D0:
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	nop
_021E24DC: .word 0x00000943
_021E24E0: .word 0x00007FFF
_021E24E4: .word 0x021F4174
_021E24E8: .word 0x021F2FE0
_021E24EC: .word 0x021F2FA4
_021E24F0: .word 0xFFFFD000
_021E24F4: .word 0xFFFFC000
_021E24F8: .word ovy168_21e4d20
	thumb_func_end ovy168_21e2374

	thumb_func_start ovy168_21e24fc
ovy168_21e24fc: ; 0x021E24FC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x60
	add r5, r0, #0
	mov r0, #0x99
	lsl r0, r0, #4
	str r0, [sp]
	mov r0, #0x8e
	add r6, r1, #0
	lsl r0, r0, #2
	ldrh r1, [r6, r0]
	ldr r0, _021E2668 ; =0x00007FFF
	ldr r3, _021E266C ; =0x021F4174
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0x5c
	mov r2, #1
	bl GFL_HeapAllocate
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	add r1, r0, #0
	add r0, r6, #0
	bl ovy168_21e5f6c
	add r1, r0, #0
	add r0, r6, #0
	bl ovy168_21e4cfc
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #0xc]
	str r5, [r4]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #0x20]
	mov r7, #8
	str r7, [r4, #4]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #0x28]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #0x2c]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #0x30]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #8]
	mov r0, #0
	str r0, [r4, #0xc]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #0x10]
	mov r0, #0
	str r0, [r4, #0x14]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #0x24]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #0x1c]
	lsl r7, r7, #9
	str r7, [r4, #0x44]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #0x48]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #0x50]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [r4, #0x4c]
	mov r5, #3
	ldr r0, [sp, #0x10]
	str r5, [r4, #0x40]
	cmp r0, #0x10
	beq _021E2656
	ldr r3, _021E2670 ; =0x021F2FC8
	mov r1, #0
	add r0, sp, #0x34
	add r2, sp, #0x28
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	ldmia r3!, {r0, r1}
	str r2, [sp, #0x14]
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	ldr r3, _021E2674 ; =0x021F2FBC
	str r0, [r2]
	add r2, sp, #0x1c
	ldmia r3!, {r0, r1}
	str r2, [sp, #0x18]
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r7, [sp, #0x54]
	str r0, [r2]
	mov r0, #2
	str r0, [sp, #0x40]
	lsl r0, r5, #0xc
	str r0, [sp, #0x44]
	ldr r0, _021E2678 ; =0xFFFFD000
	add r5, r6, #0
	str r0, [sp, #0x48]
	ldr r0, _021E267C ; =0xFFFFC000
	str r7, [sp, #0x5c]
	str r0, [sp, #0x4c]
	mov r0, #2
	lsl r0, r0, #0xd
	str r0, [sp, #0x50]
	mov r0, #2
	lsl r0, r0, #0x14
	str r0, [sp, #0x58]
	ldr r0, [sp, #0x10]
	add r5, #0xc
	lsl r7, r0, #2
	ldr r0, [r5, r7]
	bl sub_02050194
	cmp r0, #0
	bne _021E2640
	ldr r0, [sp, #0x14]
	mov r2, #2
	str r0, [sp]
	ldr r0, [sp, #0x18]
	lsl r2, r2, #0xc
	str r0, [sp, #4]
	mov r0, #0x8e
	lsl r0, r0, #2
	ldrh r1, [r6, r0]
	ldr r0, _021E2668 ; =0x00007FFF
	add r3, sp, #0x34
	and r1, r0
	mov r0, #2
	lsl r0, r0, #0xe
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, [r5, r7]
	add r1, sp, #0x40
	bl sub_020500CC
_021E2640:
	ldr r0, [r5, r7]
	ldr r1, [sp, #0xc]
	ldr r2, _021E2680 ; =ovy168_21e4d20
	add r3, r4, #0
	bl sub_0205007C
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021E265C
	b _021E2656
_021E2656:
	add r0, r4, #0
	bl GFL_HeapFree
_021E265C:
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E2668: .word 0x00007FFF
_021E266C: .word 0x021F4174
_021E2670: .word 0x021F2FC8
_021E2674: .word 0x021F2FBC
_021E2678: .word 0xFFFFD000
_021E267C: .word 0xFFFFC000
_021E2680: .word ovy168_21e4d20
	thumb_func_end ovy168_21e24fc
_021E2684:
	.byte 0x01, 0x4B, 0x00, 0x22, 0x18, 0x47, 0xC0, 0x46, 0x81, 0x5B, 0x1E, 0x02
	.byte 0x01, 0x4B, 0x01, 0x22, 0x18, 0x47, 0xC0, 0x46, 0x81, 0x5B, 0x1E, 0x02

	thumb_func_start ovy168_21e269c
ovy168_21e269c: ; 0x021E269C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	str r1, [sp, #0xc]
	add r6, r0, #0
	bl sub_02015A04
	add r1, r0, #0
	ldr r0, [sp, #0xc]
	add r2, sp, #0x24
	bl ovy168_21e4558
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02015A04
	str r0, [sp, #0x14]
	add r0, r6, #0
	bl sub_02015A04
	str r0, [sp, #0x18]
	add r0, r6, #0
	bl sub_02015A04
	str r0, [sp, #0x1c]
	mov r5, #0
	add r0, r6, #0
	str r5, [sp, #0x20]
	bl sub_02015A04
	str r0, [sp, #0x10]
	add r0, r6, #0
	bl sub_02015A04
	add r7, r0, #0
	add r0, r6, #0
	bl sub_02015A04
	add r6, r0, #0
	cmp r4, #0
	beq _021E270E
	ble _021E270E
_021E26EE:
	bl ovy168_21e006c
	ldr r1, [sp, #0x10]
	lsl r2, r5, #2
	str r1, [sp]
	str r7, [sp, #4]
	str r6, [sp, #8]
	add r1, sp, #0x24
	ldr r1, [r1, r2]
	ldr r2, [sp, #0x14]
	add r3, sp, #0x18
	bl ovy168_21e7248
	add r5, r5, #1
	cmp r5, r4
	blt _021E26EE
_021E270E:
	mov r1, #0x8f
	ldr r0, [sp, #0xc]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy168_21e269c

	thumb_func_start ovy168_21e271c
ovy168_21e271c: ; 0x021E271C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x60
	str r1, [sp]
	add r5, r0, #0
	bl sub_02015A04
	add r1, r0, #0
	add r7, sp, #4
	ldr r0, [sp]
	add r2, r7, #0
	bl ovy168_21e4558
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #0x2c]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #0x30]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #0x34]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #0x38]
	add r0, r5, #0
	bl sub_02015A04
	asr r0, r0, #0xc
	str r0, [sp, #0x3c]
	add r0, r5, #0
	bl sub_02015A04
	asr r0, r0, #0xc
	str r0, [sp, #0x40]
	add r0, r5, #0
	bl sub_02015A04
	asr r0, r0, #0xc
	str r0, [sp, #0x44]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #0x48]
	cmp r4, #0
	beq _021E27A4
	ldr r0, [sp, #0x44]
	cmp r0, #0
	beq _021E27A4
	mov r5, #0
	cmp r4, #0
	ble _021E27A4
	add r6, sp, #0x24
_021E278E:
	lsl r0, r5, #2
	ldr r0, [r7, r0]
	str r0, [sp, #0x28]
	bl ovy168_21e006c
	add r1, r6, #0
	bl ovy168_21e779c
	add r5, r5, #1
	cmp r5, r4
	blt _021E278E
_021E27A4:
	mov r1, #0x8f
	ldr r0, [sp]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy168_21e271c

	thumb_func_start ovy168_21e27b0
ovy168_21e27b0: ; 0x021E27B0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	str r1, [sp]
	add r5, r0, #0
	bl sub_02015A04
	add r1, r0, #0
	add r7, sp, #0x10
	ldr r0, [sp]
	add r2, r7, #0
	bl ovy168_21e4558
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_02015A04
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl sub_02015A04
	add r1, r0, #0
	ldr r0, [sp, #4]
	str r1, [sp, #0x54]
	str r0, [sp, #0x44]
	ldr r0, [sp, #0xc]
	lsl r1, r1, #0xc
	str r0, [sp, #0x50]
	ldr r0, [sp, #8]
	str r6, [sp, #0x48]
	sub r0, r0, r6
	bl FX_Div
	str r0, [sp, #0x4c]
	cmp r4, #0
	beq _021E282C
	mov r5, #0
	cmp r4, #0
	ble _021E282C
	add r6, sp, #0x30
_021E2816:
	lsl r0, r5, #2
	ldr r0, [r7, r0]
	str r0, [sp, #0x34]
	bl ovy168_21e006c
	add r1, r6, #0
	bl ovy168_21e7888
	add r5, r5, #1
	cmp r5, r4
	blt _021E2816
_021E282C:
	mov r1, #0x8f
	ldr r0, [sp]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy168_21e27b0

	thumb_func_start ovy168_21e2838
ovy168_21e2838: ; 0x021E2838
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	str r1, [sp, #0xc]
	add r5, r0, #0
	bl sub_02015A04
	add r1, r0, #0
	ldr r0, [sp, #0xc]
	add r2, sp, #0x18
	bl ovy168_21e4558
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #0x14]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #0x38]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #0x3c]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #0x40]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl sub_02015A04
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	add r6, r0, #0
	cmp r4, #0
	beq _021E28B0
	mov r5, #0
	cmp r4, #0
	ble _021E28B0
_021E2890:
	bl ovy168_21e006c
	ldr r1, [sp, #0x10]
	lsl r2, r5, #2
	str r1, [sp]
	str r7, [sp, #4]
	str r6, [sp, #8]
	add r1, sp, #0x18
	ldr r1, [r1, r2]
	ldr r2, [sp, #0x14]
	add r3, sp, #0x38
	bl ovy168_21e7338
	add r5, r5, #1
	cmp r5, r4
	blt _021E2890
_021E28B0:
	mov r1, #0x8f
	ldr r0, [sp, #0xc]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy168_21e2838

	thumb_func_start ovy168_21e28bc
ovy168_21e28bc: ; 0x021E28BC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	str r1, [sp, #0xc]
	add r6, r0, #0
	bl sub_02015A04
	add r1, r0, #0
	ldr r0, [sp, #0xc]
	add r2, sp, #0x24
	bl ovy168_21e4558
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02015A04
	mov r5, #0
	str r0, [sp, #0x14]
	add r0, r6, #0
	str r5, [sp, #0x18]
	str r5, [sp, #0x1c]
	bl sub_02015A04
	str r0, [sp, #0x20]
	add r0, r6, #0
	bl sub_02015A04
	str r0, [sp, #0x10]
	add r0, r6, #0
	bl sub_02015A04
	add r7, r0, #0
	add r0, r6, #0
	bl sub_02015A04
	add r6, r0, #0
	cmp r4, #0
	beq _021E2928
	ble _021E2928
_021E2908:
	bl ovy168_21e006c
	ldr r1, [sp, #0x10]
	lsl r2, r5, #2
	str r1, [sp]
	str r7, [sp, #4]
	str r6, [sp, #8]
	add r1, sp, #0x24
	ldr r1, [r1, r2]
	ldr r2, [sp, #0x14]
	add r3, sp, #0x18
	bl ovy168_21e74b8
	add r5, r5, #1
	cmp r5, r4
	blt _021E2908
_021E2928:
	mov r1, #0x8f
	ldr r0, [sp, #0xc]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy168_21e28bc

	thumb_func_start ovy168_21e2934
ovy168_21e2934: ; 0x021E2934
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	str r1, [sp, #0xc]
	add r5, r0, #0
	bl sub_02015A04
	add r1, r0, #0
	ldr r0, [sp, #0xc]
	add r2, sp, #0x1c
	bl ovy168_21e4558
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #0x18]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #0x14]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl sub_02015A04
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	add r6, r0, #0
	cmp r4, #0
	beq _021E299E
	mov r5, #0
	cmp r4, #0
	ble _021E299E
_021E297E:
	bl ovy168_21e006c
	ldr r1, [sp, #0x10]
	lsl r2, r5, #2
	str r1, [sp]
	str r7, [sp, #4]
	str r6, [sp, #8]
	add r1, sp, #0x1c
	ldr r1, [r1, r2]
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x14]
	bl ovy168_21e76a8
	add r5, r5, #1
	cmp r5, r4
	blt _021E297E
_021E299E:
	mov r1, #0x8f
	ldr r0, [sp, #0xc]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy168_21e2934

	thumb_func_start ovy168_21e29ac
ovy168_21e29ac: ; 0x021E29AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	str r1, [sp, #0xc]
	add r5, r0, #0
	bl sub_02015A04
	add r1, r0, #0
	ldr r0, [sp, #0xc]
	add r2, sp, #0x1c
	bl ovy168_21e4558
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #0x18]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #0x14]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl sub_02015A04
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	add r6, r0, #0
	cmp r4, #0
	beq _021E2A16
	mov r5, #0
	cmp r4, #0
	ble _021E2A16
_021E29F6:
	bl ovy168_21e006c
	ldr r1, [sp, #0x10]
	lsl r2, r5, #2
	str r1, [sp]
	str r7, [sp, #4]
	str r6, [sp, #8]
	add r1, sp, #0x1c
	ldr r1, [r1, r2]
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x14]
	bl ovy168_21e7944
	add r5, r5, #1
	cmp r5, r4
	blt _021E29F6
_021E2A16:
	mov r1, #0x8f
	ldr r0, [sp, #0xc]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy168_21e29ac

	thumb_func_start ovy168_21e2a24
ovy168_21e2a24: ; 0x021E2A24
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	str r1, [sp, #4]
	add r5, r0, #0
	bl sub_02015A04
	add r1, r0, #0
	ldr r0, [sp, #4]
	add r2, sp, #0xc
	bl ovy168_21e4558
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_02015A04
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	add r6, r0, #0
	cmp r4, #0
	beq _021E2A7E
	cmp r6, #0
	bne _021E2A5E
	mov r6, #1
_021E2A5E:
	mov r5, #0
	cmp r4, #0
	ble _021E2A7E
_021E2A64:
	bl ovy168_21e006c
	str r6, [sp]
	lsl r2, r5, #2
	add r1, sp, #0xc
	ldr r1, [r1, r2]
	ldr r2, [sp, #8]
	add r3, r7, #0
	bl ovy168_21e75f8
	add r5, r5, #1
	cmp r5, r4
	blt _021E2A64
_021E2A7E:
	mov r1, #0x8f
	ldr r0, [sp, #4]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy168_21e2a24

	thumb_func_start ovy168_21e2a8c
ovy168_21e2a8c: ; 0x021E2A8C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r1, [sp]
	add r5, r0, #0
	bl sub_02015A04
	add r1, r0, #0
	add r7, sp, #4
	ldr r0, [sp]
	add r2, r7, #0
	bl ovy168_21e4558
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	add r6, r0, #0
	cmp r4, #0
	beq _021E2ACC
	mov r5, #0
	cmp r4, #0
	ble _021E2ACC
_021E2AB8:
	bl ovy168_21e006c
	lsl r1, r5, #2
	ldr r1, [r7, r1]
	add r2, r6, #0
	bl ovy168_21e7064
	add r5, r5, #1
	cmp r5, r4
	blt _021E2AB8
_021E2ACC:
	mov r1, #0x8f
	ldr r0, [sp]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy168_21e2a8c

	thumb_func_start ovy168_21e2ad8
ovy168_21e2ad8: ; 0x021E2AD8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	str r1, [sp, #8]
	add r5, r0, #0
	bl sub_02015A04
	add r1, r0, #0
	ldr r0, [sp, #8]
	add r2, sp, #0x1c
	bl ovy168_21e4558
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl sub_02015A04
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	add r7, r0, #0
	cmp r4, #0
	beq _021E2B4A
	mov r5, #0
	cmp r4, #0
	ble _021E2B4A
	lsl r0, r6, #0x18
	lsr r6, r0, #0x18
	ldr r0, [sp, #0xc]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
_021E2B2E:
	bl ovy168_21e006c
	str r6, [sp]
	str r7, [sp, #4]
	lsl r2, r5, #2
	add r1, sp, #0x1c
	ldr r1, [r1, r2]
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	bl ovy168_21e7b3c
	add r5, r5, #1
	cmp r5, r4
	blt _021E2B2E
_021E2B4A:
	mov r1, #0x8f
	ldr r0, [sp, #8]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy168_21e2ad8

	thumb_func_start ovy168_21e2b58
ovy168_21e2b58: ; 0x021E2B58
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r1, [sp]
	add r5, r0, #0
	bl sub_02015A04
	add r1, r0, #0
	add r7, sp, #4
	ldr r0, [sp]
	add r2, r7, #0
	bl ovy168_21e4558
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	add r6, r0, #0
	cmp r6, #5
	bne _021E2B88
	bl ovy168_21e006c
	bl ovy168_21e83f4
	b _021E2BA6
_021E2B88:
	cmp r4, #0
	beq _021E2BA6
	mov r5, #0
	cmp r4, #0
	ble _021E2BA6
_021E2B92:
	bl ovy168_21e006c
	lsl r1, r5, #2
	ldr r1, [r7, r1]
	add r2, r6, #0
	bl ovy168_21e70d4
	add r5, r5, #1
	cmp r5, r4
	blt _021E2B92
_021E2BA6:
	mov r1, #0x8f
	ldr r0, [sp]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy168_21e2b58

	thumb_func_start ovy168_21e2bb4
ovy168_21e2bb4: ; 0x021E2BB4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r1, [sp]
	add r5, r0, #0
	bl sub_02015A04
	add r1, r0, #0
	add r7, sp, #4
	ldr r0, [sp]
	add r2, r7, #0
	bl ovy168_21e4558
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	cmp r4, #0
	beq _021E2BF6
	mov r5, #0
	cmp r4, #0
	ble _021E2BF6
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
_021E2BE2:
	bl ovy168_21e006c
	lsl r1, r5, #2
	ldr r1, [r7, r1]
	add r2, r6, #0
	bl ovy168_21e71ec
	add r5, r5, #1
	cmp r5, r4
	blt _021E2BE2
_021E2BF6:
	mov r1, #0x8f
	ldr r0, [sp]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy168_21e2bb4

	thumb_func_start ovy168_21e2c04
ovy168_21e2c04: ; 0x021E2C04
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	str r1, [sp, #0xc]
	add r5, r0, #0
	bl sub_02015A04
	add r1, r0, #0
	ldr r0, [sp, #0xc]
	add r2, sp, #0x18
	bl ovy168_21e4558
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #0x14]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #0x38]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #0x3c]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #0x40]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl sub_02015A04
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	add r6, r0, #0
	cmp r4, #0
	beq _021E2C7C
	mov r5, #0
	cmp r4, #0
	ble _021E2C7C
_021E2C5C:
	bl ovy168_21e006c
	ldr r1, [sp, #0x10]
	lsl r2, r5, #2
	str r1, [sp]
	str r7, [sp, #4]
	str r6, [sp, #8]
	add r1, sp, #0x18
	ldr r1, [r1, r2]
	ldr r2, [sp, #0x14]
	add r3, sp, #0x38
	bl ovy168_21e7438
	add r5, r5, #1
	cmp r5, r4
	blt _021E2C5C
_021E2C7C:
	mov r1, #0x8f
	ldr r0, [sp, #0xc]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy168_21e2c04

	thumb_func_start ovy168_21e2c88
ovy168_21e2c88: ; 0x021E2C88
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r7, r1, #0
	bl sub_02015A04
	add r6, sp, #0
	add r1, r0, #0
	add r0, r7, #0
	add r2, r6, #0
	bl ovy168_21e4558
	add r4, r0, #0
	beq _021E2CB6
	mov r5, #0
	cmp r4, #0
	ble _021E2CB6
_021E2CA8:
	lsl r0, r5, #2
	ldr r0, [r6, r0]
	bl ovy168_21df838
	add r5, r5, #1
	cmp r5, r4
	blt _021E2CA8
_021E2CB6:
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy168_21e2c88

	thumb_func_start ovy168_21e2cc0
ovy168_21e2cc0: ; 0x021E2CC0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02015A04
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	add r1, r0, #0
	add r0, r5, #0
	bl ovy168_21e4a80
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_02015A04
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	mov r1, #0
	mvn r1, r1
	cmp r6, r1
	bne _021E2CFE
	ldr r6, [r4, #4]
_021E2CFE:
	ldr r1, [sp, #8]
	str r0, [sp]
	ldr r2, [sp, #4]
	add r0, r6, #0
	add r3, r7, #0
	bl ovy168_21df88c
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy168_21e2cc0

	thumb_func_start ovy168_21e2d18
ovy168_21e2d18: ; 0x021E2D18
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r6, r1, #0
	bl sub_02015A04
	bl ovy168_21dfea8
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #0x14]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #0x18]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #0x1c]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl sub_02015A04
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	add r5, r0, #0
	bl ovy168_21e006c
	add r1, r4, #0
	mov r2, #1
	bl ovy168_21e81bc
	cmp r0, #1
	bne _021E2D7C
	bl ovy168_21e006c
	add r1, r4, #0
	bl ovy168_21e8208
_021E2D7C:
	bl ovy168_21e006c
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	str r1, [sp]
	str r7, [sp, #4]
	add r1, r4, #0
	add r3, sp, #0x14
	str r5, [sp, #8]
	bl ovy168_21e7248
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy168_21e2d18

	thumb_func_start ovy168_21e2d9c
ovy168_21e2d9c: ; 0x021E2D9C
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r6, r1, #0
	bl sub_02015A04
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02015A04
	add r4, r0, #0
	bl ovy168_21e006c
	add r1, r5, #0
	add r2, r4, #0
	bl ovy168_21e81bc
	cmp r0, #1
	bne _021E2DD8
	bl ovy168_21e006c
	mov r2, #1
	add r1, r5, #0
	lsl r2, r2, #0xc
	bl ovy168_21e7220
	bl ovy168_21e006c
	add r1, r5, #0
	bl ovy168_21e8208
_021E2DD8:
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	pop {r4, r5, r6, pc}
	thumb_func_end ovy168_21e2d9c

	thumb_func_start ovy168_21e2de0
ovy168_21e2de0: ; 0x021E2DE0
	push {r4, lr}
	add r4, r1, #0
	bl sub_02015A04
	bl ovy168_21df9b4
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	pop {r4, pc}
	thumb_func_end ovy168_21e2de0

	thumb_func_start ovy168_21e2df4
ovy168_21e2df4: ; 0x021E2DF4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	bl sub_02015A04
	add r4, r0, #0
	mov r0, #3
	mov r1, #1
	bl sub_02044BD8
	mov r0, #0
	mov r7, #0x8e
	str r0, [sp]
	lsl r7, r7, #2
	str r0, [sp, #4]
	ldrh r0, [r5, r7]
	ldr r6, _021E2EB0 ; =0x00007FFF
	mov r2, #3
	add r1, r0, #0
	and r1, r6
	add r0, r6, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #0x5e
	add r1, r4, #1
	mov r3, #0
	bl sub_0204AD88
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldrh r0, [r5, r7]
	mov r2, #3
	mov r3, #0
	add r1, r0, #0
	and r1, r6
	add r0, r6, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #0x5e
	add r1, r4, #0
	bl sub_0204AF18
	bl ovy168_21e00b8
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r1, #0x80
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldrh r3, [r5, r7]
	add r2, r4, #2
	mov r4, #0x80
	and r3, r6
	lsl r4, r4, #8
	orr r3, r4
	lsl r3, r3, #0x10
	mov r1, #0x5e
	lsr r3, r3, #0x10
	bl sub_02026E94
	mov r0, #3
	bl sub_02044E60
	add r1, r7, #0
	add r1, #0x2c
	str r0, [r5, r1]
	mov r0, #3
	bl sub_02044E74
	add r1, r7, #0
	add r1, #0x30
	str r0, [r5, r1]
	bl ovy168_21e00d8
	mov r1, #0
	mov r2, #0
	bl ovy168_21f26e0
	ldr r1, [r5]
	mov r0, #0x10
	orr r0, r1
	str r0, [r5]
	add r0, r7, #4
	ldr r0, [r5, r0]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E2EB0: .word 0x00007FFF
	thumb_func_end ovy168_21e2df4

	thumb_func_start ovy168_21e2eb4
ovy168_21e2eb4: ; 0x021E2EB4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02015A04
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #0x14]
	add r0, r5, #0
	bl sub_02015A04
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #0x18]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #0x1c]
	add r0, r5, #0
	mov r1, #0xe
	bl ovy168_21e4a80
	add r5, r0, #0
	bl ovy168_21e00d8
	str r6, [sp]
	ldr r1, [sp, #0x18]
	str r7, [sp, #4]
	str r1, [sp, #8]
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x10]
	str r1, [sp, #0xc]
	ldr r3, [sp, #0x14]
	add r1, r5, #0
	bl ovy168_21f2728
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy168_21e2eb4

	thumb_func_start ovy168_21e2f18
ovy168_21e2f18: ; 0x021E2F18
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r0, #0
	add r5, r1, #0
	bl sub_02015A04
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl sub_02015A04
	str r0, [sp, #0x10]
	add r0, r4, #0
	bl sub_02015A04
	str r0, [sp, #0x14]
	add r0, r4, #0
	bl sub_02015A04
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02015A04
	add r7, r0, #0
	add r0, r4, #0
	bl sub_02015A04
	add r4, r0, #0
	bl ovy168_21e00d8
	str r6, [sp]
	str r7, [sp, #4]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	str r4, [sp, #8]
	bl ovy168_21f27c8
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy168_21e2f18

	thumb_func_start ovy168_21e2f6c
ovy168_21e2f6c: ; 0x021E2F6C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _021E305C ; =0x00000D6B
	add r6, r1, #0
	str r0, [sp]
	mov r0, #0x8e
	lsl r0, r0, #2
	ldrh r0, [r6, r0]
	ldr r7, _021E3060 ; =0x00007FFF
	ldr r3, _021E3064 ; =0x021F4174
	add r1, r0, #0
	and r1, r7
	add r0, r7, #1
	orr r0, r1
	mov r1, #0x8e
	lsl r0, r0, #0x10
	lsl r1, r1, #2
	lsr r0, r0, #0x10
	sub r1, #0xac
	mov r2, #1
	bl GFL_HeapAllocate
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_02015A04
	mov r1, #0x8e
	lsl r1, r1, #2
	mov r3, #0x8e
	str r6, [r4]
	sub r1, #0xaf
	strb r0, [r4, r1]
	lsl r3, r3, #2
	ldrh r3, [r6, r3]
	mov r0, #0xe7
	str r0, [sp, #8]
	and r7, r3
	mov r3, #1
	lsl r3, r3, #0xf
	orr r3, r7
	lsl r3, r3, #0x10
	ldr r1, [sp, #4]
	mov r0, #0xe7
	mov r2, #0
	lsr r3, r3, #0x10
	mov r5, #0
	bl sub_0204B4E4
	add r7, r0, #0
	ldr r0, [sp, #4]
	add r1, r0, #1
	ldr r0, [sp, #8]
	add r0, #0x9e
	strb r1, [r4, r0]
	str r0, [sp, #8]
	ldrb r2, [r7]
	add r0, r7, #0
	cmp r2, #0xff
	beq _021E2FFE
_021E2FEC:
	add r1, r4, r5
	strb r2, [r1, #4]
	add r0, r0, #1
	add r1, r5, #1
	lsl r1, r1, #0x10
	ldrb r2, [r0]
	lsr r5, r1, #0x10
	cmp r2, #0xff
	bne _021E2FEC
_021E2FFE:
	mov r0, #0x61
	lsl r0, r0, #2
	strb r5, [r4, r0]
	add r1, r7, #0
	add r1, #0x80
	add r0, r7, #0
	ldrh r1, [r1]
	ldr r5, _021E3068 ; =0x0000FF98
	mov r2, #0
	add r0, #0x80
	cmp r1, r5
	beq _021E302C
_021E3016:
	lsl r3, r2, #1
	add r3, r4, r3
	add r3, #0x84
	strh r1, [r3]
	add r1, r2, #1
	lsl r1, r1, #0x10
	add r0, r0, #2
	lsr r2, r1, #0x10
	ldrh r1, [r0]
	cmp r1, r5
	bne _021E3016
_021E302C:
	add r0, r7, #0
	bl GFL_HeapFree
	mov r0, #2
	ldr r1, [r6]
	lsl r0, r0, #0x12
	orr r0, r1
	str r0, [r6]
	ldr r0, [r6, #8]
	ldr r1, _021E306C ; =ovy168_21e65d0
	add r2, r4, #0
	mov r3, #0
	bl sub_0203A614
	ldr r1, _021E3070 ; =ovy168_21e66cc
	mov r2, #1
	bl ovy168_21e035c
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021E305C: .word 0x00000D6B
_021E3060: .word 0x00007FFF
_021E3064: .word 0x021F4174
_021E3068: .word 0x0000FF98
_021E306C: .word ovy168_21e65d0
_021E3070: .word ovy168_21e66cc
	thumb_func_end ovy168_21e2f6c

	thumb_func_start ovy168_21e3074
ovy168_21e3074: ; 0x021E3074
	push {r4, lr}
	add r4, r1, #0
	bl sub_02015A04
	add r1, r0, #0
	lsl r1, r1, #0x18
	mov r0, #3
	lsr r1, r1, #0x18
	bl sub_02044BD8
	ldr r1, [r4]
	mov r0, #0x10
	orr r0, r1
	str r0, [r4]
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	pop {r4, pc}
	thumb_func_end ovy168_21e3074

	thumb_func_start ovy168_21e3098
ovy168_21e3098: ; 0x021E3098
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02015A04
	add r0, r5, #0
	bl sub_02015A04
	add r0, r5, #0
	bl sub_02015A04
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	add r0, r5, #0
	bl sub_02015A04
	add r0, r5, #0
	bl sub_02015A04
	cmp r6, #0x1f
	bne _021E30D4
	mov r0, #7
	str r0, [sp]
	ldr r0, _021E30F4 ; =0x04000050
	mov r1, #2
	mov r2, #0x3d
	b _021E30DC
_021E30D4:
	ldr r0, _021E30F4 ; =0x04000050
	str r6, [sp]
	mov r1, #0xa
	mov r2, #0x35
_021E30DC:
	mov r3, #0x1f
	bl G2x_SetBlendAlpha_
	ldr r1, [r4]
	mov r0, #0x20
	orr r0, r1
	str r0, [r4]
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021E30F4: .word 0x04000050
	thumb_func_end ovy168_21e3098

	thumb_func_start ovy168_21e30f8
ovy168_21e30f8: ; 0x021E30F8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02015A04
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_02015A04
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_02015A04
	lsl r0, r0, #0x10
	ldr r3, [sp, #8]
	lsr r0, r0, #0x10
	str r0, [sp]
	lsl r1, r6, #0x18
	lsl r2, r7, #0x18
	lsl r3, r3, #0x18
	ldr r0, [sp, #4]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl ovy168_21dfc70
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy168_21e30f8

	thumb_func_start ovy168_21e3148
ovy168_21e3148: ; 0x021E3148
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02015A04
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	add r1, r0, #0
	add r0, r6, #0
	bl ovy168_21dfd74
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy168_21e3148

	thumb_func_start ovy168_21e316c
ovy168_21e316c: ; 0x021E316C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _021E3204 ; =0x00000E4B
	mov r7, #0x8e
	str r0, [sp]
	add r5, r1, #0
	lsl r7, r7, #2
	ldrh r1, [r5, r7]
	ldr r0, _021E3208 ; =0x00007FFF
	ldr r3, _021E320C ; =0x021F4174
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0x28
	mov r2, #1
	bl GFL_HeapAllocate
	add r4, r0, #0
	str r5, [r4]
	add r0, r6, #0
	bl sub_02015A04
	str r0, [r4, #8]
	add r0, r6, #0
	bl sub_02015A04
	str r0, [r4, #0xc]
	add r0, r6, #0
	bl sub_02015A04
	str r0, [r4, #0x10]
	add r0, r6, #0
	bl sub_02015A04
	str r0, [r4, #0x14]
	add r0, r6, #0
	bl sub_02015A04
	str r0, [r4, #0x18]
	add r0, r6, #0
	bl sub_02015A04
	str r0, [r4, #0x20]
	add r0, r6, #0
	bl sub_02015A04
	str r0, [r4, #0x24]
	mov r0, #1
	mov r1, #0
	bl sub_02044C98
	mov r0, #2
	mov r1, #0
	mov r6, #2
	bl sub_02044C98
	ldr r0, [r5, #8]
	ldr r1, _021E3210 ; =ovy168_21e637c
	add r2, r4, #0
	mov r3, #0
	bl sub_0203A614
	ldr r1, _021E3214 ; =ovy168_21e648c
	mov r2, #1
	bl ovy168_21e035c
	ldr r0, [r5]
	add r6, #0xfe
	orr r0, r6
	str r0, [r5]
	add r0, r7, #4
	ldr r0, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E3204: .word 0x00000E4B
_021E3208: .word 0x00007FFF
_021E320C: .word 0x021F4174
_021E3210: .word ovy168_21e637c
_021E3214: .word ovy168_21e648c
	thumb_func_end ovy168_21e316c

	thumb_func_start ovy168_21e3218
ovy168_21e3218: ; 0x021E3218
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r4, r0, #0
	add r5, r1, #0
	bl sub_02015A04
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02015A04
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl sub_02015A04
	add r1, r0, #0
	add r0, r4, #0
	bl ovy168_21e4a80
	str r0, [sp, #0x10]
	add r0, r4, #0
	bl sub_02015A04
	add r7, r0, #0
	add r0, r4, #0
	bl sub_02015A04
	str r0, [sp, #0x14]
	add r0, r4, #0
	bl sub_02015A04
	str r0, [sp, #0x18]
	add r0, r4, #0
	bl sub_02015A04
	add r4, r0, #0
	bl ovy168_21e006c
	ldr r2, [sp, #0x10]
	add r1, sp, #0x24
	bl ovy168_21e7154
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x28]
	add r0, r0, r7
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x14]
	add r2, sp, #0x1c
	add r0, r1, r0
	str r0, [sp, #0x28]
	add r0, sp, #0x24
	add r1, sp, #0x20
	bl sub_02067E1C
	bl ovy168_21e00c8
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0xc]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	str r1, [sp]
	ldr r1, [sp, #0x18]
	str r1, [sp, #4]
	str r4, [sp, #8]
	ldr r3, [sp, #0x20]
	mov r1, #0x5e
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	bl ovy168_21e98ac
	lsl r1, r6, #2
	add r1, r5, r1
	add r1, #0xcc
	str r0, [r1]
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy168_21e3218

	thumb_func_start ovy168_21e32b4
ovy168_21e32b4: ; 0x021E32B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r0, #0
	add r5, r1, #0
	bl sub_02015A04
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02015A04
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl sub_02015A04
	add r7, sp, #0x14
	strh r0, [r7]
	add r0, r4, #0
	bl sub_02015A04
	strh r0, [r7, #2]
	add r0, r4, #0
	bl sub_02015A04
	add r7, r0, #0
	add r0, r4, #0
	bl sub_02015A04
	str r0, [sp, #0x10]
	add r0, r4, #0
	bl sub_02015A04
	add r4, r0, #0
	bl ovy168_21e00c8
	ldr r1, [sp, #0x10]
	str r7, [sp]
	str r1, [sp, #4]
	lsl r1, r6, #2
	add r1, r5, r1
	str r4, [sp, #8]
	add r1, #0xcc
	ldr r1, [r1]
	ldr r2, [sp, #0xc]
	add r3, sp, #0x14
	bl ovy168_21e9d30
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy168_21e32b4

	thumb_func_start ovy168_21e331c
ovy168_21e331c: ; 0x021E331C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r4, r0, #0
	add r5, r1, #0
	bl sub_02015A04
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02015A04
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl sub_02015A04
	str r0, [sp, #0x14]
	add r0, r4, #0
	bl sub_02015A04
	str r0, [sp, #0x18]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #0x1c]
	add r0, r4, #0
	bl sub_02015A04
	add r7, r0, #0
	add r0, r4, #0
	bl sub_02015A04
	str r0, [sp, #0x10]
	add r0, r4, #0
	bl sub_02015A04
	add r4, r0, #0
	bl ovy168_21e00c8
	ldr r1, [sp, #0x10]
	str r7, [sp]
	str r1, [sp, #4]
	lsl r1, r6, #2
	add r1, r5, r1
	str r4, [sp, #8]
	add r1, #0xcc
	ldr r1, [r1]
	ldr r2, [sp, #0xc]
	add r3, sp, #0x14
	bl ovy168_21e9dc8
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy168_21e331c

	thumb_func_start ovy168_21e3388
ovy168_21e3388: ; 0x021E3388
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	bl sub_02015A04
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02015A04
	add r6, r0, #0
	bl ovy168_21e00c8
	lsl r1, r4, #2
	add r1, r5, r1
	add r1, #0xcc
	ldr r1, [r1]
	add r2, r6, #0
	bl ovy168_21e9e1c
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy168_21e3388

	thumb_func_start ovy168_21e33b8
ovy168_21e33b8: ; 0x021E33B8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r0, #0
	add r5, r1, #0
	bl sub_02015A04
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02015A04
	add r7, r0, #0
	add r0, r4, #0
	bl sub_02015A04
	str r0, [sp, #8]
	add r0, r4, #0
	bl sub_02015A04
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl sub_02015A04
	add r4, r0, #0
	bl ovy168_21e00c8
	ldr r1, [sp, #0xc]
	ldr r3, [sp, #8]
	lsl r1, r1, #0x18
	asr r1, r1, #0x18
	str r1, [sp]
	lsl r1, r4, #0x10
	lsr r1, r1, #0x10
	str r1, [sp, #4]
	lsl r1, r6, #2
	add r1, r5, r1
	add r1, #0xcc
	lsl r2, r7, #0x18
	lsl r3, r3, #0x18
	ldr r1, [r1]
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl ovy168_21e9e34
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy168_21e33b8

	thumb_func_start ovy168_21e3418
ovy168_21e3418: ; 0x021E3418
	push {r4, r5, r6, lr}
	add r6, r1, #0
	bl sub_02015A04
	add r5, r6, #0
	add r5, #0xcc
	lsl r4, r0, #2
	bl ovy168_21e00c8
	ldr r1, [r5, r4]
	bl ovy168_21e9c98
	mov r0, #0
	mvn r0, r0
	str r0, [r5, r4]
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy168_21e3418

	thumb_func_start ovy168_21e3440
ovy168_21e3440: ; 0x021E3440
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	add r4, r0, #0
	add r6, sp, #0x10
	str r1, [sp]
	bl sub_02015A04
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_02015A04
	add r1, r0, #0
	ldr r0, [sp, #4]
	cmp r0, #1
	bhi _021E34A2
	cmp r1, #3
	beq _021E3468
	cmp r1, #4
	beq _021E3474
	b _021E349C
_021E3468:
	ldr r1, [sp]
	add r1, #0xdc
	ldr r1, [r1]
	bl ovy168_21dfb8c
	b _021E357C
_021E3474:
	add r7, sp, #0x30
	ldr r0, [sp]
	mov r1, #0x10
	add r2, r7, #0
	bl ovy168_21e4558
	add r4, r0, #0
	beq _021E357C
	mov r5, #0
	cmp r4, #0
	ble _021E357C
	lsl r6, r4, #2
_021E348C:
	ldr r0, [sp, #4]
	ldr r1, [r7, r6]
	bl ovy168_21dfb8c
	add r5, r5, #1
	cmp r5, r4
	blt _021E348C
	b _021E357C
_021E349C:
	bl ovy168_21dfb70
	b _021E357C
_021E34A2:
	mov r4, #0
	cmp r1, #4
	bhi _021E3524
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E34B4: ; jump table
	.short _021E34BE - _021E34B4 - 2 ; case 0
	.short _021E34D8 - _021E34B4 - 2 ; case 1
	.short _021E34F2 - _021E34B4 - 2 ; case 2
	.short _021E350C - _021E34B4 - 2 ; case 3
	.short _021E3518 - _021E34B4 - 2 ; case 4
_021E34BE:
	add r5, r4, #0
_021E34C0:
	add r0, r5, #0
	bl ovy168_21df850
	cmp r0, #0
	beq _021E34D0
	lsl r0, r4, #2
	str r5, [r6, r0]
	add r4, r4, #1
_021E34D0:
	add r5, r5, #2
	cmp r5, #8
	blt _021E34C0
	b _021E3524
_021E34D8:
	mov r5, #1
_021E34DA:
	add r0, r5, #0
	bl ovy168_21df850
	cmp r0, #0
	beq _021E34EA
	lsl r0, r4, #2
	str r5, [r6, r0]
	add r4, r4, #1
_021E34EA:
	add r5, r5, #2
	cmp r5, #8
	blt _021E34DA
	b _021E3524
_021E34F2:
	add r5, r4, #0
_021E34F4:
	add r0, r5, #0
	bl ovy168_21df850
	cmp r0, #0
	beq _021E3504
	lsl r0, r4, #2
	str r5, [r6, r0]
	add r4, r4, #1
_021E3504:
	add r5, r5, #1
	cmp r5, #8
	blt _021E34F4
	b _021E3524
_021E350C:
	ldr r0, [sp]
	mov r4, #1
	add r0, #0xdc
	ldr r0, [r0]
	str r0, [sp, #0x10]
	b _021E3524
_021E3518:
	ldr r0, [sp]
	mov r1, #0x10
	add r2, sp, #0x10
	bl ovy168_21e4558
	add r4, r0, #0
_021E3524:
	cmp r4, #0
	beq _021E357C
	mov r5, #0
	cmp r4, #0
	ble _021E357C
	add r0, r5, #0
	sub r0, #0x10
	str r0, [sp, #8]
	add r0, #0xf
	str r0, [sp, #8]
_021E3538:
	mov r1, #0
	add r0, sp, #0xc
	strh r1, [r0]
	strh r1, [r0, #2]
	ldr r0, [sp, #4]
	cmp r0, #2
	bne _021E354A
	mov r1, #0x80
	b _021E354C
_021E354A:
	sub r1, #0x10
_021E354C:
	add r0, sp, #0xc
	strh r1, [r0]
	lsl r7, r5, #2
	ldr r1, [r6, r7]
	mov r0, #1
	tst r0, r1
	beq _021E356A
	add r1, sp, #0xc
	mov r0, #0
	ldrsh r1, [r1, r0]
	ldr r0, [sp, #8]
	add r2, r1, #0
	mul r2, r0
	add r0, sp, #0xc
	strh r2, [r0]
_021E356A:
	bl ovy168_21e008c
	ldr r1, [r6, r7]
	add r2, sp, #0xc
	bl ovy168_21f06cc
	add r5, r5, #1
	cmp r5, r4
	blt _021E3538
_021E357C:
	mov r1, #0x8f
	ldr r0, [sp]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy168_21e3440

	thumb_func_start ovy168_21e3588
ovy168_21e3588: ; 0x021E3588
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02015A04
	str r0, [sp, #0x14]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #0x18]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #0x1c]
	add r0, r5, #0
	bl sub_02015A04
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #0x20]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #0x24]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #0x28]
	add r0, r5, #0
	bl sub_02015A04
	ldr r0, [sp, #0x20]
	str r7, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x14]
	str r0, [sp, #8]
	ldr r0, [sp, #0x28]
	ldr r2, [sp, #0x18]
	str r0, [sp, #0xc]
	ldr r3, [sp, #0x1c]
	add r0, r5, #0
	str r6, [sp, #0x10]
	bl ovy168_21e1248
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy168_21e3588

	thumb_func_start ovy168_21e35fc
ovy168_21e35fc: ; 0x021E35FC
	push {r4, lr}
	add r4, r1, #0
	bl sub_02015A04
	cmp r0, #5
	bne _021E360E
	bl sub_02006280
	b _021E3612
_021E360E:
	bl sub_02006268
_021E3612:
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy168_21e35fc

	thumb_func_start ovy168_21e361c
ovy168_21e361c: ; 0x021E361C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _021E3788 ; =0x00000FDA
	add r5, r1, #0
	str r0, [sp]
	mov r0, #0x8e
	lsl r0, r0, #2
	ldrh r1, [r5, r0]
	ldr r0, _021E378C ; =0x00007FFF
	ldr r3, _021E3790 ; =0x021F4174
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0x38
	mov r2, #0
	bl GFL_HeapAllocate
	add r4, r0, #0
	str r5, [r4]
	add r0, r6, #0
	bl sub_02015A04
	str r0, [r4, #4]
	add r0, r6, #0
	bl sub_02015A04
	str r0, [r4, #8]
	mov r0, #2
	str r0, [r4, #0xc]
	add r0, r6, #0
	bl sub_02015A04
	add r1, r0, #0
	add r0, r6, #0
	bl ovy168_21e4a80
	add r7, r0, #0
	add r0, r6, #0
	bl sub_02015A04
	add r1, r0, #0
	add r0, r6, #0
	bl ovy168_21e4a80
	mov r2, #1
	add r1, r7, #0
	tst r1, r2
	beq _021E3684
	mov r2, #0x7f
	b _021E3686
_021E3684:
	sub r2, #0x81
_021E3686:
	mov r1, #1
	str r2, [r4, #0x10]
	tst r0, r1
	beq _021E3692
	mov r1, #0x7f
	b _021E3694
_021E3692:
	sub r1, #0x81
_021E3694:
	str r1, [r4, #0x14]
	add r0, r6, #0
	bl sub_02015A04
	str r0, [r4, #0x20]
	add r0, r6, #0
	bl sub_02015A04
	str r0, [r4, #0x24]
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	add r0, r6, #0
	bl sub_02015A04
	str r0, [r4, #0x30]
	add r0, r6, #0
	bl sub_02015A04
	lsl r0, r0, #1
	str r0, [r4, #0x34]
	ldr r0, [r4, #8]
	cmp r0, #1
	bne _021E36CE
	ldr r0, [r4, #0x34]
	cmp r0, #0
	bne _021E36CE
	mov r0, #2
	str r0, [r4, #0x34]
_021E36CE:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	ble _021E36E6
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021E36F4
_021E36E6:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021E36F4:
	blx sub_0208DA4C
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x24]
	cmp r0, #0
	ble _021E3712
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021E3720
_021E3712:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021E3720:
	add r6, r0, #0
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x10]
	sub r0, r1, r0
	cmp r0, #0
	ble _021E373E
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021E374C
_021E373E:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021E374C:
	blx sub_0208DA4C
	add r7, r0, #0
	add r0, r6, #0
	blx sub_0208DA4C
	add r1, r0, #0
	add r0, r7, #0
	bl FX_Div
	str r0, [r4, #0x1c]
	ldr r0, [r5, #8]
	ldr r1, _021E3794 ; =ovy168_21e6174
	add r2, r4, #0
	mov r3, #0
	bl sub_0203A614
	ldr r1, _021E3798 ; =ovy168_21e6270
	mov r2, #1
	bl ovy168_21e035c
	ldr r1, [r5]
	mov r0, #8
	orr r0, r1
	str r0, [r5]
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E3788: .word 0x00000FDA
_021E378C: .word 0x00007FFF
_021E3790: .word 0x021F4174
_021E3794: .word ovy168_21e6174
_021E3798: .word ovy168_21e6270
	thumb_func_end ovy168_21e361c

	thumb_func_start ovy168_21e379c
ovy168_21e379c: ; 0x021E379C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02015A04
	str r0, [sp, #0x18]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #0x1c]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #0x20]
	add r0, r5, #0
	bl sub_02015A04
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #0x24]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #0x28]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #0x2c]
	add r0, r5, #0
	bl sub_02015A04
	str r6, [sp]
	ldr r1, [sp, #0x24]
	str r7, [sp, #4]
	str r1, [sp, #8]
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x1c]
	str r1, [sp, #0xc]
	ldr r1, [sp, #0x2c]
	ldr r3, [sp, #0x20]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	bl ovy168_21e1338
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy168_21e379c

	thumb_func_start ovy168_21e3810
ovy168_21e3810: ; 0x021E3810
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02015A04
	mov r6, #9
	lsl r6, r6, #6
	str r0, [r4, r6]
	ldr r1, _021E3830 ; =ovy168_21e426c
	add r0, r5, #0
	bl sub_02015A88
	mov r0, #1
	sub r1, r6, #4
	str r0, [r4, r1]
	pop {r4, r5, r6, pc}
	.align 2, 0
_021E3830: .word ovy168_21e426c
	thumb_func_end ovy168_21e3810

	thumb_func_start ovy168_21e3834
ovy168_21e3834: ; 0x021E3834
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	bl sub_02015A04
	mov r4, #0x79
	lsl r4, r4, #2
	str r0, [r5, r4]
	ldr r1, _021E3854 ; =0x021E4525
	add r0, r6, #0
	bl sub_02015A88
	mov r0, #1
	add r4, #0x58
	str r0, [r5, r4]
	pop {r4, r5, r6, pc}
	.align 2, 0
_021E3854: .word 0x021E4525
	thumb_func_end ovy168_21e3834

	thumb_func_start ovy168_21e3858
ovy168_21e3858: ; 0x021E3858
	push {r4, lr}
	add r4, r1, #0
	bl sub_02015A04
	mov r1, #0x8f
	lsl r1, r1, #2
	str r0, [r4, r1]
	pop {r4, pc}
	thumb_func_end ovy168_21e3858

	thumb_func_start ovy168_21e3868
ovy168_21e3868: ; 0x021E3868
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	bl sub_02015A04
	add r1, r0, #0
	add r0, r4, #0
	bl ovy168_21e5704
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp]
	ldr r2, [sp, #4]
	add r0, r5, #0
	add r1, r6, #0
	add r3, r7, #0
	bl ovy168_21e38f8
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy168_21e3868

	thumb_func_start ovy168_21e38ac
ovy168_21e38ac: ; 0x021E38AC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	bl sub_02015A04
	add r1, r0, #0
	add r0, r4, #0
	bl ovy168_21e5704
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	add r1, r0, #0
	add r0, r4, #0
	bl ovy168_21e5704
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp]
	ldr r2, [sp, #4]
	add r0, r5, #0
	add r1, r6, #0
	add r3, r7, #0
	bl ovy168_21e38f8
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy168_21e38ac

	thumb_func_start ovy168_21e38f8
ovy168_21e38f8: ; 0x021E38F8
	push {r4, lr}
	mov r4, #0
	cmp r3, #5
	bhi _021E393C
	add r3, r3, r3
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_021E390C: ; jump table
	.short _021E3918 - _021E390C - 2 ; case 0
	.short _021E391E - _021E390C - 2 ; case 1
	.short _021E3924 - _021E390C - 2 ; case 2
	.short _021E392A - _021E390C - 2 ; case 3
	.short _021E3930 - _021E390C - 2 ; case 4
	.short _021E3936 - _021E390C - 2 ; case 5
_021E3918:
	cmp r1, r2
	bne _021E393C
	b _021E393A
_021E391E:
	cmp r1, r2
	beq _021E393C
	b _021E393A
_021E3924:
	cmp r1, r2
	bge _021E393C
	b _021E393A
_021E392A:
	cmp r1, r2
	ble _021E393C
	b _021E393A
_021E3930:
	cmp r1, r2
	bgt _021E393C
	b _021E393A
_021E3936:
	cmp r1, r2
	blt _021E393C
_021E393A:
	mov r4, #1
_021E393C:
	cmp r4, #1
	bne _021E394A
	ldr r2, [r0, #0x20]
	ldr r1, [sp, #8]
	add r1, r2, r1
	bl sub_02015A68
_021E394A:
	pop {r4, pc}
	thumb_func_end ovy168_21e38f8

	thumb_func_start ovy168_21e394c
ovy168_21e394c: ; 0x021E394C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02015A04
	str r0, [sp]
	add r0, r5, #0
	bl sub_02015A04
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	add r7, r0, #0
	ldr r0, [sp]
	bl ovy168_21df850
	cmp r6, r0
	bne _021E397C
	ldr r1, [r5, #0x20]
	add r0, r5, #0
	add r1, r1, r7
	bl sub_02015A68
_021E397C:
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy168_21e394c

	thumb_func_start ovy168_21e3984
ovy168_21e3984: ; 0x021E3984
	push {r4, lr}
	add r4, r1, #0
	bl sub_02015A04
	str r0, [r4, #4]
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy168_21e3984

	thumb_func_start ovy168_21e3998
ovy168_21e3998: ; 0x021E3998
	push {r4, lr}
	add r4, r1, #0
	bl sub_02015A04
	add r1, r0, #0
	add r0, r4, #0
	bl ovy168_21e5704
	str r0, [r4, #4]
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy168_21e3998

	thumb_func_start ovy168_21e39b4
ovy168_21e39b4: ; 0x021E39B4
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r4, r1, #0
	bl sub_02015A04
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02015A04
	cmp r5, #0x36
	bgt _021E39F6
	bge _021E3A3A
	cmp r5, #0xf
	bgt _021E39F0
	add r1, r5, #0
	sub r1, #9
	bmi _021E3A50
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E39E2: ; jump table
	.short _021E3A04 - _021E39E2 - 2 ; case 0
	.short _021E3A0C - _021E39E2 - 2 ; case 1
	.short _021E3A10 - _021E39E2 - 2 ; case 2
	.short _021E3A14 - _021E39E2 - 2 ; case 3
	.short _021E3A18 - _021E39E2 - 2 ; case 4
	.short _021E3A1E - _021E39E2 - 2 ; case 5
	.short _021E3A26 - _021E39E2 - 2 ; case 6
_021E39F0:
	cmp r5, #0x35
	beq _021E3A2E
	b _021E3A50
_021E39F6:
	cmp r5, #0x37
	bgt _021E39FE
	beq _021E3A3E
	b _021E3A50
_021E39FE:
	cmp r5, #0x38
	beq _021E3A42
	b _021E3A50
_021E3A04:
	mov r1, #0x92
	lsl r1, r1, #2
_021E3A08:
	strb r0, [r4, r1]
	b _021E3A50
_021E3A0C:
	ldr r1, _021E3A58 ; =0x00000249
	b _021E3A08
_021E3A10:
	ldr r1, _021E3A5C ; =0x0000024A
	b _021E3A08
_021E3A14:
	ldr r1, _021E3A60 ; =0x0000024B
	b _021E3A08
_021E3A18:
	mov r1, #0x93
_021E3A1A:
	lsl r1, r1, #2
	b _021E3A22
_021E3A1E:
	mov r1, #0x25
_021E3A20:
	lsl r1, r1, #4
_021E3A22:
	str r0, [r4, r1]
	b _021E3A50
_021E3A26:
	mov r1, #0x95
	lsl r1, r1, #2
	strh r0, [r4, r1]
	b _021E3A50
_021E3A2E:
	ldr r2, [r4]
	ldr r1, _021E3A64 ; =0xFFFFDFFF
	lsl r0, r0, #0x1f
	and r1, r2
	lsr r0, r0, #0x12
	b _021E3A4C
_021E3A3A:
	mov r1, #0xa1
	b _021E3A1A
_021E3A3E:
	mov r1, #0x2a
	b _021E3A20
_021E3A42:
	ldr r2, [r4]
	ldr r1, _021E3A68 ; =0xFFFF7FFF
	lsl r0, r0, #0x1f
	and r1, r2
	lsr r0, r0, #0x10
_021E3A4C:
	orr r0, r1
	str r0, [r4]
_021E3A50:
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	pop {r4, r5, r6, pc}
	.align 2, 0
_021E3A58: .word 0x00000249
_021E3A5C: .word 0x0000024A
_021E3A60: .word 0x0000024B
_021E3A64: .word 0xFFFFDFFF
_021E3A68: .word 0xFFFF7FFF
	thumb_func_end ovy168_21e39b4

	thumb_func_start ovy168_21e3a6c
ovy168_21e3a6c: ; 0x021E3A6C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	str r1, [sp]
	bl sub_02015A04
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	add r1, r0, #0
	ldr r0, [sp]
	add r2, sp, #4
	bl ovy168_21e4558
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	add r6, r0, #0
	cmp r4, #0
	beq _021E3AB6
	mov r5, #0
	cmp r4, #0
	ble _021E3AB6
_021E3A9E:
	bl ovy168_21e006c
	lsl r2, r5, #2
	add r1, sp, #4
	ldr r1, [r1, r2]
	add r2, r7, #0
	add r3, r6, #0
	bl ovy168_21e7d78
	add r5, r5, #1
	cmp r5, r4
	blt _021E3A9E
_021E3AB6:
	mov r1, #0x8f
	ldr r0, [sp]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy168_21e3a6c

	thumb_func_start ovy168_21e3ac4
ovy168_21e3ac4: ; 0x021E3AC4
	push {r4, lr}
	add r4, r1, #0
	bl ovy168_21e006c
	add r1, r4, #0
	add r2, r4, #0
	add r1, #0xe0
	add r2, #0xdc
	ldr r1, [r1]
	ldr r2, [r2]
	bl ovy168_21e7ee0
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	pop {r4, pc}
	thumb_func_end ovy168_21e3ac4

	thumb_func_start ovy168_21e3ae4
ovy168_21e3ae4: ; 0x021E3AE4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	add r4, r1, #0
	add r5, r0, #0
	bl sub_02015A04
	add r1, r0, #0
	add r0, r4, #0
	add r2, sp, #0x2c
	bl ovy168_21e4558
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #0x1c]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #0x18]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #0x14]
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl sub_02015A04
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02015A04
	str r0, [sp, #0xc]
	cmp r6, #0
	bne _021E3B32
	b _021E3C36
_021E3B32:
	cmp r0, #0
	bne _021E3BC2
	mov r5, #0
	cmp r6, #0
	ble _021E3B72
_021E3B3C:
	add r0, r4, #0
	bl ovy168_21e60b0
	str r0, [sp, #0x20]
	bl ovy168_21e006c
	ldr r1, [sp, #0x14]
	lsl r2, r5, #2
	str r1, [sp]
	ldr r1, [sp, #0x10]
	ldr r3, [sp, #0x18]
	str r1, [sp, #4]
	str r7, [sp, #8]
	add r1, sp, #0x2c
	ldr r1, [r1, r2]
	ldr r2, [sp, #0x1c]
	bl ovy168_21e7fb8
	ldr r1, [sp, #0x20]
	add r5, r5, #1
	lsl r1, r1, #2
	add r2, r4, r1
	mov r1, #0x9b
	lsl r1, r1, #2
	str r0, [r2, r1]
	cmp r5, r6
	blt _021E3B3C
_021E3B72:
	mov r1, #0x7f
	mov r2, #0x6b
	add r0, r4, #0
	lsl r1, r1, #0xc
	lsl r2, r2, #0xc
	mov r3, #0xa
	bl ovy168_21e5ff0
	ldr r0, [r4]
	lsl r0, r0, #0x15
	lsr r0, r0, #0x1f
	bne _021E3C36
	ldr r0, _021E3C40 ; =0x000011BC
	ldr r3, _021E3C44 ; =0x021F4174
	str r0, [sp]
	mov r0, #0x8e
	lsl r0, r0, #2
	ldrh r1, [r4, r0]
	ldr r0, _021E3C48 ; =0x00007FFF
	mov r2, #0
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #4
	bl GFL_HeapAllocate
	add r2, r0, #0
	str r4, [r2]
	ldr r0, [r4, #8]
	ldr r1, _021E3C4C ; =ovy168_21e64b8
	mov r3, #0
	bl sub_0203A614
	mov r1, #0
	mov r2, #0
	bl ovy168_21e035c
	b _021E3C36
_021E3BC2:
	mov r5, #0
	cmp r6, #0
	ble _021E3C36
	ldr r0, _021E3C50 ; =0x000011C7
	lsr r0, r0, #3
	str r0, [sp, #0x28]
	ldr r0, _021E3C48 ; =0x00007FFF
	add r0, r0, #1
	str r0, [sp, #0x24]
_021E3BD4:
	ldr r0, _021E3C50 ; =0x000011C7
	ldr r3, _021E3C44 ; =0x021F4174
	str r0, [sp]
	ldr r0, [sp, #0x28]
	mov r2, #0
	ldrh r1, [r4, r0]
	ldr r0, _021E3C48 ; =0x00007FFF
	and r1, r0
	ldr r0, [sp, #0x24]
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0x20
	bl GFL_HeapAllocate
	add r2, r0, #0
	str r4, [r2]
	lsl r1, r5, #2
	add r0, sp, #0x2c
	ldr r0, [r0, r1]
	mov r3, #0
	str r0, [r2, #4]
	ldr r0, [sp, #0x1c]
	str r0, [r2, #8]
	ldr r0, [sp, #0x18]
	str r0, [r2, #0xc]
	ldr r0, [sp, #0x14]
	str r0, [r2, #0x10]
	ldr r0, [sp, #0x10]
	str r0, [r2, #0x14]
	ldr r0, [sp, #0xc]
	str r7, [r2, #0x18]
	str r0, [r2, #0x1c]
	mov r0, #2
	ldr r1, [r4]
	lsl r0, r0, #0xa
	orr r0, r1
	str r0, [r4]
	ldr r0, [r4, #8]
	ldr r1, _021E3C54 ; =ovy168_21e6284
	bl sub_0203A614
	ldr r1, _021E3C58 ; =ovy168_21e6330
	mov r2, #1
	bl ovy168_21e035c
	add r5, r5, #1
	cmp r5, r6
	blt _021E3BD4
_021E3C36:
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021E3C40: .word 0x000011BC
_021E3C44: .word 0x021F4174
_021E3C48: .word 0x00007FFF
_021E3C4C: .word ovy168_21e64b8
_021E3C50: .word 0x000011C7
_021E3C54: .word ovy168_21e6284
_021E3C58: .word ovy168_21e6330
	thumb_func_end ovy168_21e3ae4

	thumb_func_start ovy168_21e3c5c
ovy168_21e3c5c: ; 0x021E3C5C
	push {r4, lr}
	add r4, r1, #0
	bl sub_02015A04
	mov r1, #0x97
	lsl r1, r1, #2
	str r0, [r4, r1]
	sub r1, #0x20
	ldr r0, [r4, r1]
	pop {r4, pc}
	thumb_func_end ovy168_21e3c5c

	thumb_func_start ovy168_21e3c70
ovy168_21e3c70: ; 0x021E3C70
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r4, r0, #0
	add r5, r1, #0
	bl sub_02015A04
	str r0, [sp, #0x1c]
	add r0, r4, #0
	bl sub_02015A04
	add r1, r0, #0
	add r0, r4, #0
	bl ovy168_21e4a80
	str r0, [sp, #0x20]
	add r0, r4, #0
	bl sub_02015A04
	add r7, r0, #0
	add r0, r4, #0
	bl sub_02015A04
	str r0, [sp, #0x24]
	add r0, r4, #0
	bl sub_02015A04
	str r0, [sp, #0x18]
	add r0, r4, #0
	bl sub_02015A04
	add r6, r0, #0
	bl ovy168_21e006c
	add r4, sp, #0x30
	ldr r2, [sp, #0x20]
	add r1, r4, #0
	bl ovy168_21e7154
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x34]
	add r0, r0, r7
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x24]
	add r2, sp, #0x28
	add r0, r1, r0
	str r0, [sp, #0x34]
	add r0, r4, #0
	add r1, sp, #0x2c
	bl sub_02067E1C
	mov r0, #0x95
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	bl sub_02026C60
	cmp r0, #0
	beq _021E3CE6
	cmp r0, #0x19
	ble _021E3CE8
_021E3CE6:
	mov r0, #4
_021E3CE8:
	cmp r0, #0x19
	bne _021E3CEE
	mov r0, #0x11
_021E3CEE:
	lsl r4, r0, #1
	bl ovy168_21e00c8
	mov r1, #0xe7
	str r1, [sp]
	mov r1, #0xe8
	str r1, [sp, #4]
	ldr r1, [sp, #0x2c]
	add r2, r4, #0
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	str r1, [sp, #8]
	ldr r1, [sp, #0x28]
	add r4, #0xe8
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	str r1, [sp, #0xc]
	ldr r1, [sp, #0x18]
	add r2, #0xe7
	str r1, [sp, #0x10]
	mov r1, #0x5e
	add r3, r4, #0
	str r6, [sp, #0x14]
	bl ovy168_21e98d4
	ldr r1, [sp, #0x1c]
	lsl r1, r1, #2
	add r1, r5, r1
	add r1, #0xcc
	str r0, [r1]
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy168_21e3c70

	thumb_func_start ovy168_21e3d34
ovy168_21e3d34: ; 0x021E3D34
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	bl sub_02015A04
	str r0, [sp]
	add r0, r7, #0
	bl sub_02015A04
	add r4, r0, #0
	add r0, r7, #0
	bl sub_02015A04
	mov r1, #0x26
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0xdc
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r0, [r0]
	add r1, #0xe4
	str r0, [r1]
	mov r1, #0x26
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	add r0, r5, #0
	add r0, #0xe0
	lsl r1, r1, #2
	add r2, r5, r1
	mov r1, #0x49
	ldr r0, [r0]
	lsl r1, r1, #2
	str r0, [r2, r1]
	add r0, r1, #0
	add r0, #0xc4
	ldr r3, [r5, r0]
	mov r0, #0x26
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	lsl r0, r0, #2
	add r2, r5, r0
	add r0, r1, #0
	add r0, #0x40
	str r3, [r2, r0]
	mov r2, #0x26
	lsl r2, r2, #4
	ldr r2, [r5, r2]
	ldr r0, [r5, #4]
	lsl r2, r2, #2
	add r2, r5, r2
	add r1, #0x80
	str r0, [r2, r1]
	cmp r4, #0xe
	beq _021E3DAA
	add r0, r5, #0
	add r0, #0xdc
	str r4, [r0]
_021E3DAA:
	cmp r6, #0x10
	beq _021E3DB4
	add r0, r5, #0
	add r0, #0xe0
	str r6, [r0]
_021E3DB4:
	ldr r4, _021E3DFC ; =0x00000231
	mov r0, #0
	str r0, [r5, #4]
	add r2, r4, #7
	ldrh r2, [r5, r2]
	ldr r3, _021E3E00 ; =0x00007FFF
	ldr r1, [sp]
	and r2, r3
	add r3, r3, #1
	orr r2, r3
	lsl r2, r2, #0x10
	mov r0, #0x42
	sub r1, r1, r4
	lsr r2, r2, #0x10
	bl sub_0204A934
	add r2, r0, #0
	add r0, r4, #0
	sub r0, #0x49
	str r2, [r5, r0]
	ldr r1, [r2, #4]
	add r0, r7, #0
	add r1, r2, r1
	bl sub_02015A6C
	add r0, r4, #0
	add r0, #0x2f
	ldr r0, [r5, r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x2f
	add r4, #0xb
	str r1, [r5, r0]
	ldr r0, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E3DFC: .word 0x00000231
_021E3E00: .word 0x00007FFF
	thumb_func_end ovy168_21e3d34

	thumb_func_start ovy168_21e3e04
ovy168_21e3e04: ; 0x021E3E04
	push {r4, r5, r6, lr}
	mov r4, #0x26
	add r5, r1, #0
	lsl r4, r4, #4
	add r6, r0, #0
	ldr r0, [r5, r4]
	sub r0, r0, #1
	str r0, [r5, r4]
	add r0, r4, #0
	sub r0, #0x78
	ldr r0, [r5, r0]
	bl GFL_HeapFree
	ldr r0, [r5, r4]
	lsl r0, r0, #2
	add r1, r5, r0
	add r0, r1, #0
	add r0, #0xe4
	ldr r2, [r0]
	add r0, r5, #0
	add r0, #0xdc
	str r2, [r0]
	mov r0, #0x49
	lsl r0, r0, #2
	add r2, r5, #0
	ldr r3, [r1, r0]
	add r2, #0xe0
	str r3, [r2]
	add r2, r0, #0
	add r2, #0x40
	ldr r3, [r1, r2]
	add r2, r0, #0
	add r2, #0xc4
	str r3, [r5, r2]
	add r0, #0x80
	ldr r0, [r1, r0]
	str r0, [r5, #4]
	add r0, r6, #0
	bl sub_02015A7C
	sub r4, #0x24
	ldr r0, [r5, r4]
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy168_21e3e04

	thumb_func_start ovy168_21e3e5c
ovy168_21e3e5c: ; 0x021E3E5C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02015A04
	add r2, r0, #0
	ldr r1, [r5, #0x20]
	add r0, r5, #0
	add r1, r1, r2
	bl sub_02015A68
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy168_21e3e5c

	thumb_func_start ovy168_21e3e7c
ovy168_21e3e7c: ; 0x021E3E7C
	push {r4, lr}
	add r4, r1, #0
	ldr r2, [r4]
	mov r1, #0x80
	orr r1, r2
	str r1, [r4]
	ldr r1, _021E3E98 ; =0x021E4539
	bl sub_02015A88
	mov r1, #0x8f
	mov r0, #1
	lsl r1, r1, #2
	str r0, [r4, r1]
	pop {r4, pc}
	.align 2, 0
_021E3E98: .word 0x021E4539
	thumb_func_end ovy168_21e3e7c

	thumb_func_start ovy168_21e3e9c
ovy168_21e3e9c: ; 0x021E3E9C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	bl sub_02015A04
	mov r6, #0x7a
	lsl r6, r6, #2
	add r4, r0, #0
	ldr r0, [r5, r6]
	bl GFL_HeapFree
	add r0, r6, #0
	add r0, #0x49
	cmp r4, r0
	ldr r3, _021E3EFC ; =0x00007FFF
	bge _021E3EC2
	mov r0, #0x41
	add r1, r4, #0
	b _021E3ECA
_021E3EC2:
	add r1, r6, #0
	add r1, #0x49
	mov r0, #0x42
	sub r1, r4, r1
_021E3ECA:
	add r2, r6, #0
	add r2, #0x50
	ldrh r2, [r5, r2]
	and r2, r3
	add r3, r3, #1
	orr r2, r3
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	bl sub_0204A934
	mov r4, #0x7a
	str r0, [r5, r6]
	lsl r4, r4, #2
	ldr r2, [r5, r4]
	mov r0, #0
	str r0, [r5, #4]
	ldr r1, [r2, #4]
	add r0, r7, #0
	add r1, r2, r1
	bl sub_02015A68
	add r4, #0x54
	ldr r0, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E3EFC: .word 0x00007FFF
	thumb_func_end ovy168_21e3e9c

	thumb_func_start ovy168_21e3f00
ovy168_21e3f00: ; 0x021E3F00
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	bl sub_02015A04
	add r4, r0, #0
	ldr r0, _021E3F4C ; =0x00001313
	mov r7, #0x8e
	str r0, [sp]
	lsl r7, r7, #2
	ldrh r1, [r5, r7]
	ldr r0, _021E3F50 ; =0x00007FFF
	ldr r3, _021E3F54 ; =0x021F4174
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0xc
	mov r2, #0
	mov r6, #0
	bl GFL_HeapAllocate
	add r2, r0, #0
	str r5, [r2]
	str r4, [r2, #4]
	str r6, [r2, #8]
	ldr r0, [r5, #8]
	ldr r1, _021E3F58 ; =ovy168_21e6510
	mov r3, #0
	bl sub_0203A614
	mov r1, #0
	mov r2, #1
	bl ovy168_21e035c
	add r0, r7, #4
	ldr r0, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E3F4C: .word 0x00001313
_021E3F50: .word 0x00007FFF
_021E3F54: .word 0x021F4174
_021E3F58: .word ovy168_21e6510
	thumb_func_end ovy168_21e3f00

	thumb_func_start ovy168_21e3f5c
ovy168_21e3f5c: ; 0x021E3F5C
	push {r4, lr}
	add r4, r1, #0
	bl sub_02015A04
	bl ovy168_21e0324
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	pop {r4, pc}
	thumb_func_end ovy168_21e3f5c

	thumb_func_start ovy168_21e3f70
ovy168_21e3f70: ; 0x021E3F70
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r4, #0
	str r0, [sp, #4]
	add r5, r1, #0
	add r7, r4, #0
_021E3F7C:
	lsl r0, r4, #2
	add r6, r5, r0
	ldr r0, [r6, #0xc]
	cmp r0, #0
	beq _021E3F8C
	bl ovy168_21e565c
	str r7, [r6, #0xc]
_021E3F8C:
	mov r0, #0
	mvn r0, r0
	add r4, r4, #1
	str r0, [r6, #0x4c]
	cmp r4, #0x10
	blt _021E3F7C
	mov r4, #0
_021E3F9A:
	lsl r6, r4, #2
	add r0, r5, r6
	add r0, #0xcc
	ldr r7, [r0]
	mov r0, #0
	mvn r0, r0
	cmp r7, r0
	beq _021E3FBE
	bl ovy168_21e00c8
	add r1, r7, #0
	bl ovy168_21e9c98
	add r1, r5, r6
	mov r0, #0
	add r1, #0xcc
	mvn r0, r0
	str r0, [r1]
_021E3FBE:
	add r4, r4, #1
	cmp r4, #4
	blt _021E3F9A
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	mov r4, #0
	cmp r1, #0
	ble _021E3FE8
	add r7, r0, #0
	sub r7, #0x40
	add r6, r5, r0
_021E3FD6:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r7]
	bl GFL_HeapFree
	ldr r0, [r6]
	add r4, r4, #1
	cmp r4, r0
	blt _021E3FD6
_021E3FE8:
	mov r0, #0x8d
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r0, #1
	mov r4, #1
	bl ovy168_21e0400
	add r0, r5, #0
	bl ovy168_21e60d8
	add r0, r5, #0
	bl ovy168_21e6100
	ldr r0, [r5]
	lsl r0, r0, #0xd
	lsr r0, r0, #0x1f
	bne _021E4012
	add r0, r4, #0
	bl ovy168_21e0324
_021E4012:
	ldr r0, [sp, #4]
	bl sub_02015924
	mov r0, #0x8f
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r5, r0]
	ldr r0, [r5]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	beq _021E405E
	bl ovy168_21e013c
	cmp r0, #0
	beq _021E4034
	bl ovy167_21d0ff8
_021E4034:
	mov r0, #3
	mov r1, #0
	bl sub_02044BD8
	mov r4, #0x99
	ldr r1, [r5]
	mov r0, #0x10
	bic r1, r0
	str r1, [r5]
	lsl r4, r4, #2
	ldr r2, [r5, r4]
	mov r0, #3
	mov r1, #0
	bl sub_02044CFC
	add r2, r4, #4
	ldr r2, [r5, r2]
	mov r0, #3
	mov r1, #3
	bl sub_02044CFC
_021E405E:
	ldr r0, [r5]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1f
	beq _021E407E
	mov r0, #7
	str r0, [sp]
	ldr r0, _021E4250 ; =0x04000050
	mov r1, #2
	mov r2, #0x3d
	mov r3, #0x1f
	bl G2x_SetBlendAlpha_
	ldr r1, [r5]
	mov r0, #0x20
	bic r1, r0
	str r1, [r5]
_021E407E:
	ldr r0, [r5]
	lsl r0, r0, #0x13
	lsr r0, r0, #0x1f
	beq _021E408A
	bl sub_02006280
_021E408A:
	mov r6, #0
	bl ovy168_21e006c
	add r1, r5, #0
	add r1, #0xdc
	ldr r1, [r1]
	bl ovy168_21e7b24
	cmp r0, #0
	beq _021E40D8
	mov r0, #0x96
	lsl r0, r0, #2
	ldrh r1, [r5, r0]
	cmp r1, #0xf8
	beq _021E40AE
	sub r0, #0xf7
	cmp r1, r0
	bne _021E40B6
_021E40AE:
	ldr r0, _021E4254 ; =0x00000249
	ldrb r0, [r5, r0]
	cmp r0, #1
	beq _021E40D8
_021E40B6:
	cmp r1, #0x90
	beq _021E40D8
	cmp r1, #0x77
	beq _021E40D8
	ldr r0, _021E4258 ; =0x0000010B
	cmp r1, r0
	beq _021E40D8
	bl ovy168_21e006c
	add r1, r5, #0
	add r1, #0xdc
	ldr r1, [r1]
	bl ovy168_21e7cd8
	mov r1, #1
	add r6, r0, #0
	and r6, r1
_021E40D8:
	mov r4, #0x7b
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021E4130
	sub r0, r4, #4
	ldr r0, [r5, r0]
	bl GFL_HeapFree
	ldr r6, [r5, r4]
	sub r0, r4, #4
	str r6, [r5, r0]
	mov r0, #0
	str r0, [r5, r4]
	ldr r1, [r5]
	mov r0, #0x40
	bic r1, r0
	str r1, [r5]
	add r0, r4, #4
	ldr r7, [r5, r0]
	mov r0, #1
	mov r1, #0
	bl sub_02044C98
	mov r0, #2
	mov r1, #0
	bl sub_02044C98
	mov r0, #3
	mov r1, #0
	bl sub_02044C98
	mov r0, #0
	str r0, [r5, #4]
	sub r1, r4, #4
	ldr r2, [r5, r1]
	ldr r1, [r6, r7]
	ldr r0, [sp, #4]
	add r1, r2, r1
	bl sub_02015910
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E4130:
	ldr r0, [r5]
	lsl r0, r0, #0xe
	lsr r1, r0, #0x1f
	cmp r1, #1
	bne _021E419C
	add r0, r4, #0
	add r0, #0x6c
	ldrh r2, [r5, r0]
	add r0, r4, #0
	add r0, #0xa5
	cmp r2, r0
	bne _021E419C
	sub r0, r4, #4
	ldr r0, [r5, r0]
	bl GFL_HeapFree
	add r0, r4, #0
	add r2, r4, #0
	mov r1, #0x34
	add r0, #0x6c
	strh r1, [r5, r0]
	add r2, #0x4c
	ldrh r3, [r5, r2]
	ldr r2, _021E425C ; =0x00007FFF
	add r1, r4, #0
	add r1, #0x6c
	and r3, r2
	add r2, r2, #1
	orr r2, r3
	lsl r2, r2, #0x10
	ldrh r1, [r5, r1]
	mov r0, #0x42
	lsr r2, r2, #0x10
	bl sub_0204A934
	add r1, r0, #0
	sub r0, r4, #4
	str r1, [r5, r0]
	ldr r2, [r5]
	mov r0, #0x40
	orr r2, r0
	mov r0, #0
	str r0, [r5, #4]
	ldr r0, _021E4260 ; =0xFFFDFFFF
	and r0, r2
	str r0, [r5]
	ldr r2, [r1, #4]
	ldr r0, [sp, #4]
	add r1, r1, r2
	bl sub_02015910
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E419C:
	mov r2, #0x96
	lsl r2, r2, #2
	ldrh r0, [r5, r2]
	add r2, #0x2e
	cmp r0, r2
	beq _021E41B0
	ldr r2, [r5]
	lsl r2, r2, #0x19
	lsr r2, r2, #0x1f
	bne _021E422A
_021E41B0:
	cmp r0, #0x90
	beq _021E422A
	cmp r0, #0xe2
	beq _021E422A
	cmp r1, #0
	bne _021E422A
	cmp r6, #0
	beq _021E422A
	ldr r1, _021E4264 ; =0x000001F6
	cmp r0, r1
	bne _021E41D6
	bl ovy168_21e006c
	add r1, r5, #0
	add r1, #0xdc
	ldr r1, [r1]
	mov r2, #0
	bl ovy168_21e70d4
_021E41D6:
	mov r4, #0x7a
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	bl GFL_HeapFree
	add r0, r4, #0
	add r2, r4, #0
	mov r1, #0x34
	add r0, #0x70
	strh r1, [r5, r0]
	add r2, #0x50
	ldrh r3, [r5, r2]
	ldr r2, _021E425C ; =0x00007FFF
	add r1, r4, #0
	add r1, #0x70
	and r3, r2
	add r2, r2, #1
	orr r2, r3
	lsl r2, r2, #0x10
	ldrh r1, [r5, r1]
	mov r0, #0x42
	lsr r2, r2, #0x10
	bl sub_0204A934
	add r1, r0, #0
	str r1, [r5, r4]
	ldr r2, [r5]
	mov r0, #0x40
	orr r2, r0
	mov r0, #0
	str r0, [r5, #4]
	ldr r0, _021E4260 ; =0xFFFDFFFF
	and r0, r2
	str r0, [r5]
	ldr r2, [r1, #4]
	ldr r0, [sp, #4]
	add r1, r1, r2
	bl sub_02015910
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E422A:
	ldr r1, _021E4268 ; =0x0000027E
	cmp r0, r1
	beq _021E4248
	mov r0, #1
	mov r1, #1
	bl sub_02044C98
	mov r0, #2
	mov r1, #1
	bl sub_02044C98
	mov r0, #3
	mov r1, #1
	bl sub_02044C98
_021E4248:
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E4250: .word 0x04000050
_021E4254: .word 0x00000249
_021E4258: .word 0x0000010B
_021E425C: .word 0x00007FFF
_021E4260: .word 0xFFFDFFFF
_021E4264: .word 0x000001F6
_021E4268: .word 0x0000027E
	thumb_func_end ovy168_21e3f70

	thumb_func_start ovy168_21e426c
ovy168_21e426c: ; 0x021E426C
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #9
	add r5, r1, #0
	lsl r4, r4, #6
	ldr r0, [r5, r4]
	cmp r0, #1
	bhi _021E42A6
	bl ovy168_21e005c
	bl ovy168_21deaa4
	cmp r0, #1
	bne _021E428A
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E428A:
	ldr r1, [r5]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1f
	beq _021E42A6
	mov r0, #2
	bic r1, r0
	str r1, [r5]
	mov r1, #1
	add r0, r4, #4
	str r1, [r5, r0]
	bl ovy168_21e006c
	bl ovy168_21e6ecc
_021E42A6:
	mov r0, #9
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021E42B4
	cmp r0, #3
	bne _021E42D2
_021E42B4:
	mov r4, #0
	cmp r4, #0xe
	bge _021E42D2
_021E42BA:
	bl ovy168_21e006c
	add r1, r4, #0
	bl ovy168_21e7a38
	cmp r0, #1
	bne _021E42CC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E42CC:
	add r4, r4, #1
	cmp r4, #0xe
	blt _021E42BA
_021E42D2:
	mov r0, #9
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	cmp r0, #4
	bne _021E4308
	mov r4, #8
	cmp r4, #0xe
	bge _021E4308
_021E42E2:
	bl ovy168_21e006c
	add r1, r4, #0
	bl ovy168_21e7b24
	cmp r0, #0
	beq _021E4302
	bl ovy168_21e006c
	add r1, r4, #0
	bl ovy168_21e8234
	cmp r0, #1
	bne _021E4302
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E4302:
	add r4, r4, #1
	cmp r4, #0xe
	blt _021E42E2
_021E4308:
	mov r0, #9
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021E4316
	cmp r0, #5
	bne _021E4326
_021E4316:
	bl ovy168_21e00d8
	bl ovy168_21f27b8
	cmp r0, #1
	bne _021E4326
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E4326:
	mov r0, #9
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021E4334
	cmp r0, #2
	bne _021E4352
_021E4334:
	mov r4, #0
_021E4336:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _021E434C
	bl sub_020500A8
	cmp r0, #0
	beq _021E434C
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E434C:
	add r4, r4, #1
	cmp r4, #0x10
	blt _021E4336
_021E4352:
	mov r0, #9
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021E4364
	cmp r0, #6
	beq _021E4364
	cmp r0, #8
	bne _021E4374
_021E4364:
	mov r0, #0
	mov r4, #0
	bl ovy168_21dfcfc
	cmp r0, #0
	beq _021E4374
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E4374:
	mov r0, #9
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021E4384
	sub r0, r0, #7
	cmp r0, #1
	bhi _021E4392
_021E4384:
	mov r0, #1
	bl ovy168_21dfcfc
	cmp r0, #0
	beq _021E4392
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E4392:
	mov r0, #9
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021E43A0
	cmp r0, #9
	bne _021E43AE
_021E43A0:
	mov r0, #3
	bl ovy168_21dfcfc
	cmp r0, #0
	beq _021E43AE
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E43AE:
	mov r0, #9
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	cmp r0, #0xa
	bne _021E43D2
	bl sub_020062A8
	cmp r0, #0
	bne _021E43CE
	ldr r0, [r5]
	lsl r1, r0, #0x1d
	lsr r1, r1, #0x1f
	bne _021E43CE
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	beq _021E43D2
_021E43CE:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E43D2:
	mov r0, #9
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	cmp r0, #0xb
	bne _021E43F8
	mov r0, #1
	bl sub_02006294
	cmp r0, #0
	bne _021E43F4
	ldr r0, [r5]
	lsl r1, r0, #0x1d
	lsr r1, r1, #0x1f
	bne _021E43F4
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	beq _021E43F8
_021E43F4:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E43F8:
	mov r0, #9
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	cmp r0, #0xc
	bne _021E441E
	mov r0, #2
	bl sub_02006294
	cmp r0, #0
	bne _021E441A
	ldr r0, [r5]
	lsl r1, r0, #0x1d
	lsr r1, r1, #0x1f
	bne _021E441A
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	beq _021E441E
_021E441A:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E441E:
	mov r0, #9
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	cmp r0, #0xd
	bne _021E4444
	mov r0, #4
	bl sub_02006294
	cmp r0, #0
	bne _021E4440
	ldr r0, [r5]
	lsl r1, r0, #0x1d
	lsr r1, r1, #0x1f
	bne _021E4440
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	beq _021E4444
_021E4440:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E4444:
	mov r0, #9
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	cmp r0, #0xe
	bne _021E446A
	mov r0, #3
	bl sub_02006294
	cmp r0, #0
	bne _021E4466
	ldr r0, [r5]
	lsl r1, r0, #0x1d
	lsr r1, r1, #0x1f
	bne _021E4466
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	beq _021E446A
_021E4466:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E446A:
	mov r0, #9
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	cmp r0, #0xf
	bne _021E4490
	mov r0, #0
	bl sub_02006294
	cmp r0, #0
	bne _021E448C
	ldr r0, [r5]
	lsl r1, r0, #0x1d
	lsr r1, r1, #0x1f
	bne _021E448C
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	beq _021E4490
_021E448C:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E4490:
	mov r7, #9
	lsl r7, r7, #6
	ldr r0, [r5, r7]
	cmp r0, #0x10
	bne _021E44DA
	ldr r0, [r5]
	lsl r0, r0, #0x14
	lsr r0, r0, #0x1f
	beq _021E44A6
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E44A6:
	add r0, r7, #0
	str r0, [sp]
	add r0, #0x2c
	mov r4, #0
	str r0, [sp]
	add r7, #0x2c
_021E44B2:
	lsl r0, r4, #2
	add r6, r5, r0
	mov r1, #0
	ldr r0, [r6, r7]
	mvn r1, r1
	cmp r0, r1
	beq _021E44D4
	bl sub_02006C40
	cmp r0, #0
	beq _021E44CC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E44CC:
	mov r1, #0
	ldr r0, [sp]
	mvn r1, r1
	str r1, [r6, r0]
_021E44D4:
	add r4, r4, #1
	cmp r4, #6
	blt _021E44B2
_021E44DA:
	mov r0, #9
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021E44E8
	cmp r0, #0x11
	bne _021E44F4
_021E44E8:
	ldr r1, [r5]
	lsl r1, r1, #0x17
	lsr r1, r1, #0x1f
	beq _021E44F4
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E44F4:
	cmp r0, #0
	beq _021E44FC
	cmp r0, #0x12
	bne _021E4508
_021E44FC:
	ldr r1, [r5]
	lsl r1, r1, #0xc
	lsr r1, r1, #0x1f
	beq _021E4508
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E4508:
	cmp r0, #0
	beq _021E4510
	cmp r0, #0x13
	bne _021E4520
_021E4510:
	bl ovy168_21e00d8
	bl ovy168_21f28d4
	cmp r0, #1
	bne _021E4520
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E4520:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy168_21e426c
_021E4524:
	.byte 0x79, 0x20, 0x80, 0x00, 0x0A, 0x58, 0x52, 0x1E, 0x0A, 0x50, 0x01, 0x20
	.byte 0x00, 0x2A, 0x00, 0xDD, 0x00, 0x20, 0x70, 0x47, 0x08, 0x68, 0x00, 0x06, 0xC0, 0x0F, 0x01, 0xD1
	.byte 0x01, 0x20, 0x70, 0x47, 0x00, 0x20, 0x70, 0x47, 0x08, 0x68, 0xC0, 0x03, 0xC0, 0x0F, 0x01, 0xD1
	.byte 0x01, 0x20, 0x70, 0x47, 0x00, 0x20, 0x70, 0x47

	thumb_func_start ovy168_21e4558
ovy168_21e4558: ; 0x021E4558
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	str r0, [sp]
	add r5, r2, #0
	mov r4, #1
	cmp r1, #0x14
	bhi _021E45E2
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E4572: ; jump table
	.short _021E459C - _021E4572 - 2 ; case 0
	.short _021E459C - _021E4572 - 2 ; case 1
	.short _021E459C - _021E4572 - 2 ; case 2
	.short _021E459C - _021E4572 - 2 ; case 3
	.short _021E459C - _021E4572 - 2 ; case 4
	.short _021E459C - _021E4572 - 2 ; case 5
	.short _021E459C - _021E4572 - 2 ; case 6
	.short _021E459C - _021E4572 - 2 ; case 7
	.short _021E459C - _021E4572 - 2 ; case 8
	.short _021E459C - _021E4572 - 2 ; case 9
	.short _021E459C - _021E4572 - 2 ; case 10
	.short _021E459C - _021E4572 - 2 ; case 11
	.short _021E459C - _021E4572 - 2 ; case 12
	.short _021E459C - _021E4572 - 2 ; case 13
	.short _021E45A0 - _021E4572 - 2 ; case 14
	.short _021E45E8 - _021E4572 - 2 ; case 15
	.short _021E45FE - _021E4572 - 2 ; case 16
	.short _021E47E6 - _021E4572 - 2 ; case 17
	.short _021E47F4 - _021E4572 - 2 ; case 18
	.short _021E4814 - _021E4572 - 2 ; case 19
	.short _021E4814 - _021E4572 - 2 ; case 20
_021E459C:
	str r1, [r5]
	b _021E4838
_021E45A0:
	ldr r0, [sp]
	add r0, #0xdc
	ldr r0, [r0]
	str r0, [r5]
	cmp r0, #0xff
	bne _021E45E2
	mov r0, #0
	mov r6, #0
	bl ovy168_21df850
	cmp r0, #1
	bne _021E45BC
_021E45B8:
	str r6, [r5]
	b _021E4838
_021E45BC:
	mov r0, #2
	mov r6, #2
	bl ovy168_21df850
	cmp r0, #1
	bne _021E45CA
	b _021E45B8
_021E45CA:
	mov r0, #4
	mov r6, #4
	bl ovy168_21df850
	cmp r0, #1
	bne _021E45D8
	b _021E45B8
_021E45D8:
	add r0, r6, #0
	bl ovy168_21df850
	cmp r0, #1
	beq _021E45E4
_021E45E2:
	b _021E4838
_021E45E4:
	mov r0, #6
	b _021E45FA
_021E45E8:
	ldr r0, [sp]
	add r0, #0xdc
	ldr r1, [r0]
	cmp r1, #1
	ble _021E45F8
_021E45F2:
	mov r0, #2
	eor r0, r1
	b _021E45FA
_021E45F8:
	mov r0, #0xff
_021E45FA:
	str r0, [r5]
	b _021E4838
_021E45FE:
	ldr r0, [sp]
	add r0, #0xe0
	ldr r0, [r0]
	str r0, [r5]
	cmp r0, #0xff
	bne _021E4700
	bl ovy168_21e00e8
	mov r4, #0
	cmp r0, #0
	beq _021E4618
	cmp r0, #3
	bne _021E4670
_021E4618:
	mov r1, #0x92
	ldr r0, [sp]
	lsl r1, r1, #2
	ldrb r0, [r0, r1]
	cmp r0, #8
	beq _021E4628
	cmp r0, #0xa
	bne _021E4650
_021E4628:
	ldr r0, [sp]
	mov r4, #1
	add r0, #0xdc
	ldr r0, [r0]
	str r0, [r5]
	ldr r0, [sp]
	add r0, #0xdc
	ldr r0, [r0]
	eor r0, r4
	bl ovy168_21df850
	cmp r0, #0
	beq _021E4700
	ldr r0, [sp]
	add r0, #0xdc
	ldr r0, [r0]
	eor r0, r4
	str r0, [r5, #4]
_021E464C:
	add r4, r4, #1
	b _021E4838
_021E4650:
	ldr r0, [sp]
	mov r6, #1
	add r0, #0xdc
	ldr r0, [r0]
	mov r4, #0
	eor r0, r6
	bl ovy168_21df850
	cmp r0, #0
	beq _021E4700
	ldr r0, [sp]
	add r0, #0xdc
	ldr r0, [r0]
	eor r0, r6
	str r0, [r5]
	b _021E464C
_021E4670:
	mov r2, #0x92
	ldr r1, [sp]
	lsl r2, r2, #2
	ldrb r1, [r1, r2]
	cmp r1, #0xd
	bhi _021E4700
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E4688: ; jump table
	.short _021E4838 - _021E4688 - 2 ; case 0
	.short _021E4838 - _021E4688 - 2 ; case 1
	.short _021E4838 - _021E4688 - 2 ; case 2
	.short _021E4838 - _021E4688 - 2 ; case 3
	.short _021E46A4 - _021E4688 - 2 ; case 4
	.short _021E472A - _021E4688 - 2 ; case 5
	.short _021E479C - _021E4688 - 2 ; case 6
	.short _021E472A - _021E4688 - 2 ; case 7
	.short _021E47C8 - _021E4688 - 2 ; case 8
	.short _021E472A - _021E4688 - 2 ; case 9
	.short _021E47C8 - _021E4688 - 2 ; case 10
	.short _021E4770 - _021E4688 - 2 ; case 11
	.short _021E479C - _021E4688 - 2 ; case 12
	.short _021E472A - _021E4688 - 2 ; case 13
_021E46A4:
	cmp r0, #2
	bne _021E4702
	ldr r0, [sp]
	add r0, #0xdc
	ldr r0, [r0]
	cmp r0, #4
	beq _021E4702
	cmp r0, #5
	beq _021E4702
	ldr r6, _021E4864 ; =0x021F3084
	add r3, sp, #8
	mov r2, #6
_021E46BC:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021E46BC
	ldr r0, [sp]
	mov r1, #2
	add r0, #0xdc
	ldr r3, [r0]
	cmp r3, #3
	bgt _021E46D2
	mov r1, #0
_021E46D2:
	mov r2, #1
	and r2, r3
	add r2, r2, r1
	mov r1, #0xc
	add r0, sp, #8
	mul r1, r2
	mov r6, #0
	add r7, r0, r1
_021E46E2:
	lsl r0, r6, #2
	str r0, [sp, #4]
	ldr r0, [r7, r0]
	bl ovy168_21df850
	cmp r0, #0
	beq _021E46FA
	ldr r0, [sp, #4]
	ldr r1, [r7, r0]
	lsl r0, r4, #2
	str r1, [r5, r0]
	add r4, r4, #1
_021E46FA:
	add r6, r6, #1
	cmp r6, #3
	blt _021E46E2
_021E4700:
	b _021E4838
_021E4702:
	mov r6, #2
	cmp r6, #7
	bgt _021E4728
_021E4708:
	ldr r0, [sp]
	add r0, #0xdc
	ldr r0, [r0]
	cmp r0, r6
	beq _021E4722
	add r0, r6, #0
	bl ovy168_21df850
	cmp r0, #0
	beq _021E4722
	lsl r0, r4, #2
	str r6, [r5, r0]
	add r4, r4, #1
_021E4722:
	add r6, r6, #1
	cmp r6, #7
	ble _021E4708
_021E4728:
	b _021E4838
_021E472A:
	ldr r1, [sp]
	mov r2, #1
	add r1, #0xdc
	ldr r1, [r1]
	tst r2, r1
	beq _021E473A
	mov r6, #2
	b _021E473C
_021E473A:
	mov r6, #3
_021E473C:
	mov r7, #7
	cmp r0, #2
	beq _021E4744
	mov r7, #5
_021E4744:
	cmp r0, #2
	bne _021E4754
	cmp r1, #3
	bgt _021E474E
	add r6, r6, #2
_021E474E:
	cmp r1, #6
	blt _021E4754
	sub r7, r7, #2
_021E4754:
	cmp r6, r7
	bgt _021E4838
_021E4758:
	add r0, r6, #0
	bl ovy168_21df850
	cmp r0, #0
	beq _021E4768
	lsl r0, r4, #2
	str r6, [r5, r0]
	add r4, r4, #1
_021E4768:
	add r6, r6, #2
	cmp r6, r7
	ble _021E4758
	b _021E4838
_021E4770:
	ldr r0, [sp]
	add r0, #0xdc
	ldr r1, [r0]
	lsl r1, r1, #0x1f
	beq _021E477E
	mov r6, #2
	b _021E4780
_021E477E:
	mov r6, #3
_021E4780:
	cmp r6, #7
	bgt _021E4838
_021E4784:
	add r0, r6, #0
	bl ovy168_21df850
	cmp r0, #0
	beq _021E4794
	lsl r0, r4, #2
	str r6, [r5, r0]
	add r4, r4, #1
_021E4794:
	add r6, r6, #2
	cmp r6, #7
	ble _021E4784
	b _021E4838
_021E479C:
	ldr r0, [sp]
	add r0, #0xdc
	ldr r1, [r0]
	lsl r1, r1, #0x1f
	beq _021E47AA
	mov r6, #3
	b _021E47AC
_021E47AA:
	mov r6, #2
_021E47AC:
	cmp r6, #7
	bgt _021E4838
_021E47B0:
	add r0, r6, #0
	bl ovy168_21df850
	cmp r0, #0
	beq _021E47C0
	lsl r0, r4, #2
	str r6, [r5, r0]
	add r4, r4, #1
_021E47C0:
	add r6, r6, #2
	cmp r6, #7
	ble _021E47B0
	b _021E4838
_021E47C8:
	mov r6, #2
	cmp r6, #7
	bgt _021E4838
_021E47CE:
	add r0, r6, #0
	bl ovy168_21df850
	cmp r0, #0
	beq _021E47DE
	lsl r0, r4, #2
	str r6, [r5, r0]
	add r4, r4, #1
_021E47DE:
	add r6, r6, #1
	cmp r6, #7
	ble _021E47CE
	b _021E4838
_021E47E6:
	ldr r0, [sp]
	add r0, #0xe0
	ldr r1, [r0]
	cmp r1, #1
	ble _021E47F2
	b _021E45F2
_021E47F2:
	b _021E45F8
_021E47F4:
	mov r4, #0
	mov r6, #0
	cmp r4, #7
	bgt _021E4838
_021E47FC:
	add r0, r6, #0
	bl ovy168_21df850
	cmp r0, #0
	beq _021E480C
	lsl r0, r4, #2
	str r6, [r5, r0]
	add r4, r4, #1
_021E480C:
	add r6, r6, #1
	cmp r6, #7
	ble _021E47FC
	b _021E4838
_021E4814:
	mov r6, #0
	cmp r1, #0x13
	beq _021E481C
	add r6, r4, #0
_021E481C:
	mov r4, #0
	cmp r6, #7
	bgt _021E4838
_021E4822:
	add r0, r6, #0
	bl ovy168_21df850
	cmp r0, #0
	beq _021E4832
	lsl r0, r4, #2
	str r6, [r5, r0]
	add r4, r4, #1
_021E4832:
	add r6, r6, #2
	cmp r6, #7
	ble _021E4822
_021E4838:
	ldr r0, [r5]
	cmp r0, #0xff
	beq _021E485C
	cmp r0, #8
	bge _021E485C
	bl ovy168_21df850
	cmp r0, #1
	bne _021E4856
	ldr r0, [sp]
	ldr r1, [r5]
	bl ovy168_21e4ba0
	str r0, [r5]
	b _021E485C
_021E4856:
	mov r0, #0xff
	str r0, [r5]
	mov r4, #0
_021E485C:
	add r0, r4, #0
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E4864: .word 0x021F3084
	thumb_func_end ovy168_21e4558

	thumb_func_start ovy168_21e4868
ovy168_21e4868: ; 0x021E4868
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r7, r0, #0
	add r0, #0xe0
	ldr r0, [r0]
	add r6, r2, #0
	mov r5, #1
	mov r4, #1
	str r0, [r6]
	cmp r0, #0xff
	bne _021E497A
	bl ovy168_21e00e8
	mov r4, #0
	cmp r0, #0
	beq _021E488C
	cmp r0, #3
	bne _021E48DE
_021E488C:
	mov r0, #0x92
	lsl r0, r0, #2
	ldrb r0, [r7, r0]
	cmp r0, #8
	beq _021E489A
	cmp r0, #0xa
	bne _021E48C0
_021E489A:
	add r0, r7, #0
	add r0, #0xdc
	ldr r0, [r0]
	mov r4, #1
	str r0, [r6]
	add r0, r7, #0
	add r0, #0xdc
	ldr r0, [r0]
	eor r0, r4
	bl ovy168_21df850
	cmp r0, #0
	beq _021E497A
	add r7, #0xdc
	ldr r0, [r7]
	eor r0, r4
	str r0, [r6, #4]
_021E48BC:
	add r4, r4, #1
	b _021E4A6C
_021E48C0:
	add r0, r7, #0
	add r0, #0xdc
	ldr r0, [r0]
	mov r5, #1
	eor r0, r5
	mov r4, #0
	bl ovy168_21df850
	cmp r0, #0
	beq _021E497A
	add r7, #0xdc
	ldr r0, [r7]
	eor r0, r5
	str r0, [r6]
	b _021E48BC
_021E48DE:
	mov r1, #0x92
	lsl r1, r1, #2
	ldrb r1, [r7, r1]
	cmp r1, #0xd
	bhi _021E497A
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E48F4: ; jump table
	.short _021E4A6C - _021E48F4 - 2 ; case 0
	.short _021E4A6C - _021E48F4 - 2 ; case 1
	.short _021E4A6C - _021E48F4 - 2 ; case 2
	.short _021E4A6C - _021E48F4 - 2 ; case 3
	.short _021E4910 - _021E48F4 - 2 ; case 4
	.short _021E49B2 - _021E48F4 - 2 ; case 5
	.short _021E4A0A - _021E48F4 - 2 ; case 6
	.short _021E49B2 - _021E48F4 - 2 ; case 7
	.short _021E4A42 - _021E48F4 - 2 ; case 8
	.short _021E49B2 - _021E48F4 - 2 ; case 9
	.short _021E4A42 - _021E48F4 - 2 ; case 10
	.short _021E49E6 - _021E48F4 - 2 ; case 11
	.short _021E4A0A - _021E48F4 - 2 ; case 12
	.short _021E49B2 - _021E48F4 - 2 ; case 13
_021E4910:
	cmp r0, #2
	bne _021E497C
	add r0, r7, #0
	add r0, #0xdc
	ldr r0, [r0]
	cmp r0, #4
	beq _021E497C
	cmp r0, #5
	beq _021E497C
	ldr r3, _021E4A74 ; =0x021F3054
	add r2, sp, #4
	mov r5, #6
_021E4928:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r5, r5, #1
	bne _021E4928
	add r7, #0xdc
	ldr r3, [r7]
	mov r1, #2
	cmp r3, #3
	bgt _021E493C
	mov r1, #0
_021E493C:
	mov r2, #1
	and r2, r3
	add r2, r2, r1
	mov r1, #0xc
	add r0, sp, #4
	mul r1, r2
	mov r7, #0
	add r5, r0, r1
_021E494C:
	lsl r0, r7, #2
	str r0, [sp]
	ldr r0, [r5, r0]
	bl ovy168_21df850
	cmp r0, #0
	beq _021E4974
	bl ovy168_21e006c
	ldr r1, [sp]
	ldr r1, [r5, r1]
	bl ovy168_21e70a8
	cmp r0, #0
	bne _021E4974
	ldr r0, [sp]
	ldr r1, [r5, r0]
	lsl r0, r4, #2
	str r1, [r6, r0]
	add r4, r4, #1
_021E4974:
	add r7, r7, #1
	cmp r7, #3
	blt _021E494C
_021E497A:
	b _021E4A6C
_021E497C:
	mov r5, #2
	cmp r5, #7
	bgt _021E4A6C
_021E4982:
	add r0, r7, #0
	add r0, #0xdc
	ldr r0, [r0]
	cmp r0, r5
	beq _021E49AA
	add r0, r5, #0
	bl ovy168_21df850
	cmp r0, #0
	beq _021E49AA
	bl ovy168_21e006c
	add r1, r5, #0
	bl ovy168_21e70a8
	cmp r0, #0
	bne _021E49AA
	lsl r0, r4, #2
	str r5, [r6, r0]
	add r4, r4, #1
_021E49AA:
	add r5, r5, #1
	cmp r5, #7
	ble _021E4982
	b _021E4A6C
_021E49B2:
	cmp r0, #1
	bne _021E49C6
	add r7, #0xdc
	ldr r0, [r7]
	tst r0, r5
	bne _021E49C0
	add r4, r5, #0
_021E49C0:
	str r4, [r6]
	mov r4, #1
	b _021E4A6C
_021E49C6:
	add r7, #0xdc
	ldr r0, [r7]
	cmp r0, #4
	beq _021E49DE
	cmp r0, #5
	beq _021E49DE
	lsl r1, r0, #2
	ldr r0, _021E4A78 ; =0x021F4024
_021E49D6:
	ldr r0, [r0, r1]
	add r4, r5, #0
	str r0, [r6]
	b _021E4A6C
_021E49DE:
	mov r4, #1
	eor r0, r4
	str r0, [r6]
	b _021E4A6C
_021E49E6:
	cmp r0, #1
	bne _021E49F6
	add r7, #0xdc
	ldr r0, [r7]
	tst r0, r5
	bne _021E49F4
	add r4, r5, #0
_021E49F4:
	b _021E49C0
_021E49F6:
	add r7, #0xdc
	ldr r0, [r7]
	cmp r0, #4
	beq _021E4A08
	cmp r0, #5
	beq _021E4A08
	lsl r1, r0, #2
	ldr r0, _021E4A7C ; =0x021F4044
	b _021E49D6
_021E4A08:
	b _021E49DE
_021E4A0A:
	add r7, #0xdc
	ldr r0, [r7]
	tst r0, r5
	beq _021E4A16
	mov r5, #3
	b _021E4A18
_021E4A16:
	mov r5, #2
_021E4A18:
	cmp r5, #7
	bgt _021E4A6C
_021E4A1C:
	add r0, r5, #0
	bl ovy168_21df850
	cmp r0, #0
	beq _021E4A3A
	bl ovy168_21e006c
	add r1, r5, #0
	bl ovy168_21e70a8
	cmp r0, #0
	bne _021E4A3A
	lsl r0, r4, #2
	str r5, [r6, r0]
	add r4, r4, #1
_021E4A3A:
	add r5, r5, #2
	cmp r5, #7
	ble _021E4A1C
	b _021E4A6C
_021E4A42:
	mov r5, #2
	cmp r5, #7
	bgt _021E4A6C
_021E4A48:
	add r0, r5, #0
	bl ovy168_21df850
	cmp r0, #0
	beq _021E4A66
	bl ovy168_21e006c
	add r1, r5, #0
	bl ovy168_21e70a8
	cmp r0, #0
	bne _021E4A66
	lsl r0, r4, #2
	str r5, [r6, r0]
	add r4, r4, #1
_021E4A66:
	add r5, r5, #1
	cmp r5, #7
	ble _021E4A48
_021E4A6C:
	add r0, r4, #0
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_021E4A74: .word 0x021F3054
_021E4A78: .word 0x021F4024
_021E4A7C: .word 0x021F4044
	thumb_func_end ovy168_21e4868

	thumb_func_start ovy168_21e4a80
ovy168_21e4a80: ; 0x021E4A80
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	bl sub_020159DC
	cmp r5, #0x11
	bls _021E4A90
	b _021E4B94
_021E4A90:
	add r1, r5, r5
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E4A9C: ; jump table
	.short _021E4AC0 - _021E4A9C - 2 ; case 0
	.short _021E4AC0 - _021E4A9C - 2 ; case 1
	.short _021E4AC0 - _021E4A9C - 2 ; case 2
	.short _021E4AC0 - _021E4A9C - 2 ; case 3
	.short _021E4AC0 - _021E4A9C - 2 ; case 4
	.short _021E4AC0 - _021E4A9C - 2 ; case 5
	.short _021E4AC0 - _021E4A9C - 2 ; case 6
	.short _021E4AC0 - _021E4A9C - 2 ; case 7
	.short _021E4AC0 - _021E4A9C - 2 ; case 8
	.short _021E4AC0 - _021E4A9C - 2 ; case 9
	.short _021E4AC0 - _021E4A9C - 2 ; case 10
	.short _021E4AC0 - _021E4A9C - 2 ; case 11
	.short _021E4AC0 - _021E4A9C - 2 ; case 12
	.short _021E4AC0 - _021E4A9C - 2 ; case 13
	.short _021E4AC4 - _021E4A9C - 2 ; case 14
	.short _021E4AFE - _021E4A9C - 2 ; case 15
	.short _021E4B10 - _021E4A9C - 2 ; case 16
	.short _021E4B88 - _021E4A9C - 2 ; case 17
_021E4AC0:
	add r4, r5, #0
	b _021E4B94
_021E4AC4:
	add r0, #0xdc
	ldr r4, [r0]
	cmp r4, #0xff
	bne _021E4B94
	mov r0, #2
	mov r4, #2
	bl ovy168_21df850
	cmp r0, #1
	bne _021E4ADC
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_021E4ADC:
	mov r0, #4
	mov r4, #4
	bl ovy168_21df850
	cmp r0, #1
	bne _021E4AEC
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_021E4AEC:
	mov r0, #6
	mov r4, #6
	bl ovy168_21df850
	cmp r0, #1
	beq _021E4AFA
	mov r4, #0
_021E4AFA:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_021E4AFE:
	add r0, #0xdc
	ldr r1, [r0]
	cmp r1, #1
	ble _021E4B0E
_021E4B06:
	mov r0, #2
	add r4, r1, #0
	eor r4, r0
	b _021E4B94
_021E4B0E:
	b _021E4B92
_021E4B10:
	add r1, r0, #0
	add r1, #0xe0
	ldr r4, [r1]
	cmp r4, #0xff
	bne _021E4B94
	add r0, #0xdc
	ldr r0, [r0]
	mov r4, #1
	tst r0, r4
	beq _021E4B56
	mov r0, #2
	mov r4, #2
	bl ovy168_21df850
	cmp r0, #1
	bne _021E4B34
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_021E4B34:
	mov r0, #4
	mov r4, #4
	bl ovy168_21df850
	cmp r0, #1
	bne _021E4B44
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_021E4B44:
	mov r0, #6
	mov r4, #6
	bl ovy168_21df850
	cmp r0, #1
	beq _021E4B52
	mov r4, #0
_021E4B52:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_021E4B56:
	mov r0, #3
	mov r5, #3
	bl ovy168_21df850
	cmp r0, #1
	bne _021E4B66
	add r0, r5, #0
	pop {r4, r5, r6, pc}
_021E4B66:
	mov r0, #5
	mov r5, #5
	bl ovy168_21df850
	cmp r0, #1
	bne _021E4B76
	add r0, r5, #0
	pop {r4, r5, r6, pc}
_021E4B76:
	mov r0, #7
	mov r5, #7
	bl ovy168_21df850
	cmp r0, #1
	beq _021E4B84
	add r5, r4, #0
_021E4B84:
	add r0, r5, #0
	pop {r4, r5, r6, pc}
_021E4B88:
	add r0, #0xe0
	ldr r1, [r0]
	cmp r1, #1
	ble _021E4B92
	b _021E4B06
_021E4B92:
	mov r4, #0xff
_021E4B94:
	add r0, r6, #0
	add r1, r4, #0
	bl ovy168_21e4bc4
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy168_21e4a80

	thumb_func_start ovy168_21e4ba0
ovy168_21e4ba0: ; 0x021E4BA0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl ovy168_21df850
	cmp r0, #1
	bne _021E4BBE
	ldr r0, [r5]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _021E4BC0
	mov r0, #1
	eor r4, r0
	b _021E4BC0
_021E4BBE:
	mov r4, #0xff
_021E4BC0:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy168_21e4ba0

	thumb_func_start ovy168_21e4bc4
ovy168_21e4bc4: ; 0x021E4BC4
	push {r4, lr}
	add r4, r1, #0
	bl sub_020159DC
	ldr r0, [r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _021E4BD8
	mov r0, #1
	eor r4, r0
_021E4BD8:
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end ovy168_21e4bc4

	thumb_func_start ovy168_21e4bdc
ovy168_21e4bdc: ; 0x021E4BDC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_020159DC
	add r4, r0, #0
	bl ovy168_21e00e8
	add r1, r4, #0
	add r1, #0xe0
	ldr r1, [r1]
	str r1, [r5]
	cmp r1, #0xff
	bne _021E4CAA
	cmp r0, #0
	beq _021E4C08
	cmp r0, #3
	beq _021E4C08
	ldr r1, [r4]
	lsl r1, r1, #0x19
	lsr r1, r1, #0x1f
	cmp r1, #1
	bne _021E4C14
_021E4C08:
	add r4, #0xdc
	ldr r2, [r4]
	mov r1, #1
	eor r1, r2
	str r1, [r5]
	pop {r3, r4, r5, pc}
_021E4C14:
	mov r1, #0x92
	lsl r1, r1, #2
	ldrb r1, [r4, r1]
	cmp r1, #0xd
	bhi _021E4CAA
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E4C2A: ; jump table
	.short _021E4CAA - _021E4C2A - 2 ; case 0
	.short _021E4CAA - _021E4C2A - 2 ; case 1
	.short _021E4CAA - _021E4C2A - 2 ; case 2
	.short _021E4CAA - _021E4C2A - 2 ; case 3
	.short _021E4C46 - _021E4C2A - 2 ; case 4
	.short _021E4C46 - _021E4C2A - 2 ; case 5
	.short _021E4C9A - _021E4C2A - 2 ; case 6
	.short _021E4C7C - _021E4C2A - 2 ; case 7
	.short _021E4C46 - _021E4C2A - 2 ; case 8
	.short _021E4C7C - _021E4C2A - 2 ; case 9
	.short _021E4C46 - _021E4C2A - 2 ; case 10
	.short _021E4C88 - _021E4C2A - 2 ; case 11
	.short _021E4C9A - _021E4C2A - 2 ; case 12
	.short _021E4C7C - _021E4C2A - 2 ; case 13
_021E4C46:
	cmp r0, #1
	bne _021E4C5C
	add r4, #0xdc
	ldr r1, [r4]
	mov r2, #1
	mov r0, #0
	tst r1, r2
	beq _021E4C58
	add r2, r0, #0
_021E4C58:
	str r2, [r5]
	pop {r3, r4, r5, pc}
_021E4C5C:
	add r4, #0xdc
	ldr r2, [r4]
	cmp r2, #4
	beq _021E4C74
	cmp r2, #5
	beq _021E4C74
	ldr r1, _021E4CAC ; =0x021F4064
	lsl r2, r2, #2
	ldr r1, [r1, r2]
	mov r0, #1
	str r1, [r5]
	pop {r3, r4, r5, pc}
_021E4C74:
	mov r1, #1
	eor r1, r2
	str r1, [r5]
	pop {r3, r4, r5, pc}
_021E4C7C:
	add r4, #0xdc
	ldr r2, [r4]
	mov r1, #1
	eor r1, r2
	str r1, [r5]
	pop {r3, r4, r5, pc}
_021E4C88:
	add r4, #0xdc
	ldr r1, [r4]
	mov r2, #1
	mov r0, #0
	tst r1, r2
	beq _021E4C96
	add r2, r0, #0
_021E4C96:
	str r2, [r5]
	pop {r3, r4, r5, pc}
_021E4C9A:
	add r4, #0xdc
	ldr r1, [r4]
	mov r2, #1
	mov r0, #0
	tst r1, r2
	bne _021E4CA8
	add r2, r0, #0
_021E4CA8:
	str r2, [r5]
_021E4CAA:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021E4CAC: .word 0x021F4064
	thumb_func_end ovy168_21e4bdc

	thumb_func_start ovy168_21e4cb0
ovy168_21e4cb0: ; 0x021E4CB0
	push {r4, r5, r6, r7}
	mov r4, #1
	mov r3, #0
_021E4CB6:
	lsl r5, r3, #2
	add r5, r0, r5
	ldr r5, [r5, #0x4c]
	cmp r1, r5
	bne _021E4CC4
	mov r4, #0
	b _021E4CCA
_021E4CC4:
	add r3, r3, #1
	cmp r3, #0x10
	blt _021E4CB6
_021E4CCA:
	cmp r3, #0x10
	bne _021E4CE6
	mov r3, #0
	sub r5, r3, #1
_021E4CD2:
	lsl r6, r3, #2
	add r7, r0, r6
	ldr r6, [r7, #0x4c]
	cmp r6, r5
	bne _021E4CE0
	str r1, [r7, #0x4c]
	b _021E4CE6
_021E4CE0:
	add r3, r3, #1
	cmp r3, #0x10
	blt _021E4CD2
_021E4CE6:
	str r3, [r2]
	add r0, r4, #0
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
	thumb_func_end ovy168_21e4cb0

	thumb_func_start ovy168_21e4cf0
ovy168_21e4cf0: ; 0x021E4CF0
	lsl r1, r1, #2
	add r0, r0, r1
	ldrh r2, [r2, #8]
	add r0, #0x8c
	str r2, [r0]
	bx lr
	thumb_func_end ovy168_21e4cf0

	thumb_func_start ovy168_21e4cfc
ovy168_21e4cfc: ; 0x021E4CFC
	mov r3, #0
_021E4CFE:
	lsl r2, r3, #2
	add r2, r0, r2
	ldr r2, [r2, #0x4c]
	cmp r1, r2
	beq _021E4D0E
	add r3, r3, #1
	cmp r3, #0x10
	blt _021E4CFE
_021E4D0E:
	add r0, r3, #0
	bx lr
	.align 2, 0
	thumb_func_end ovy168_21e4cfc

	thumb_func_start ovy168_21e4d14
ovy168_21e4d14: ; 0x021E4D14
	lsl r1, r1, #2
	add r0, r0, r1
	add r0, #0x8c
	ldr r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end ovy168_21e4d14

	thumb_func_start ovy168_21e4d20
ovy168_21e4d20: ; 0x021E4D20
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc4
	add r6, r0, #0
	bl sub_02050188
	add r4, r0, #0
	ldr r0, [r4, #0x58]
	ldr r5, [r4, #4]
	str r0, [sp, #8]
	cmp r5, #0x15
	bhi _021E4DF4
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E4D42: ; jump table
	.short _021E4D6E - _021E4D42 - 2 ; case 0
	.short _021E4D6E - _021E4D42 - 2 ; case 1
	.short _021E4D6E - _021E4D42 - 2 ; case 2
	.short _021E4D6E - _021E4D42 - 2 ; case 3
	.short _021E4D6E - _021E4D42 - 2 ; case 4
	.short _021E4D6E - _021E4D42 - 2 ; case 5
	.short _021E4D6E - _021E4D42 - 2 ; case 6
	.short _021E4D6E - _021E4D42 - 2 ; case 7
	.short _021E4D82 - _021E4D42 - 2 ; case 8
	.short _021E4D78 - _021E4D42 - 2 ; case 9
	.short _021E4DF4 - _021E4D42 - 2 ; case 10
	.short _021E4D78 - _021E4D42 - 2 ; case 11
	.short _021E4DF4 - _021E4D42 - 2 ; case 12
	.short _021E4DF4 - _021E4D42 - 2 ; case 13
	.short _021E4D90 - _021E4D42 - 2 ; case 14
	.short _021E4D90 - _021E4D42 - 2 ; case 15
	.short _021E4D90 - _021E4D42 - 2 ; case 16
	.short _021E4D90 - _021E4D42 - 2 ; case 17
	.short _021E4DA6 - _021E4D42 - 2 ; case 18
	.short _021E4DA6 - _021E4D42 - 2 ; case 19
	.short _021E4DA6 - _021E4D42 - 2 ; case 20
	.short _021E4DA6 - _021E4D42 - 2 ; case 21
_021E4D6E:
	ldr r0, [r4]
	add r1, r5, #0
	bl ovy168_21e4bc4
	b _021E4DF2
_021E4D78:
	ldr r0, [r4]
	add r1, r5, #5
	bl ovy168_21e4a80
	b _021E4DF2
_021E4D82:
	ldr r0, [r4, #0x28]
	str r0, [sp, #0xb8]
	ldr r0, [r4, #0x2c]
	str r0, [sp, #0xbc]
	ldr r0, [r4, #0x30]
	str r0, [sp, #0xc0]
	b _021E4DF4
_021E4D90:
	bl ovy168_21e006c
	sub r5, #0xc
	add r2, r5, #0
	add r1, sp, #0xb8
	mov r3, #1
	mov r5, #1
	bl ovy168_21e715c
	sub r0, r5, #2
	b _021E4DF2
_021E4DA6:
	bl ovy168_21e006c
	sub r5, #0x10
	add r1, sp, #0xb8
	add r2, r5, #0
	mov r3, #1
	bl ovy168_21e715c
	ldr r0, [r4, #4]
	sub r0, #0x12
	cmp r0, #3
	bhi _021E4DEE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E4DCA: ; jump table
	.short _021E4DD2 - _021E4DCA - 2 ; case 0
	.short _021E4DD8 - _021E4DCA - 2 ; case 1
	.short _021E4DDE - _021E4DCA - 2 ; case 2
	.short _021E4DE4 - _021E4DCA - 2 ; case 3
_021E4DD2:
	ldr r1, [sp, #0xc0]
	mov r0, #0x1a
	b _021E4DE8
_021E4DD8:
	ldr r1, [sp, #0xc0]
	mov r0, #0x26
	b _021E4DE8
_021E4DDE:
	ldr r1, [sp, #0xc0]
	mov r0, #6
	b _021E4DE8
_021E4DE4:
	ldr r1, [sp, #0xc0]
	mov r0, #0x39
_021E4DE8:
	lsl r0, r0, #8
	add r0, r1, r0
	str r0, [sp, #0xc0]
_021E4DEE:
	mov r0, #0
	mvn r0, r0
_021E4DF2:
	str r0, [r4, #4]
_021E4DF4:
	mov r0, #0
	ldr r5, [r4, #4]
	mvn r0, r0
	cmp r5, r0
	beq _021E4E0E
	cmp r5, #8
	beq _021E4E0E
	bl ovy168_21e006c
	add r1, sp, #0xb8
	add r2, r5, #0
	bl ovy168_21e7154
_021E4E0E:
	ldr r5, [r4, #8]
	cmp r5, #0x15
	bhi _021E4EFC
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E4E20: ; jump table
	.short _021E4E4C - _021E4E20 - 2 ; case 0
	.short _021E4E4C - _021E4E20 - 2 ; case 1
	.short _021E4E4C - _021E4E20 - 2 ; case 2
	.short _021E4E4C - _021E4E20 - 2 ; case 3
	.short _021E4E4C - _021E4E20 - 2 ; case 4
	.short _021E4E4C - _021E4E20 - 2 ; case 5
	.short _021E4E4C - _021E4E20 - 2 ; case 6
	.short _021E4E4C - _021E4E20 - 2 ; case 7
	.short _021E4E8A - _021E4E20 - 2 ; case 8
	.short _021E4E56 - _021E4E20 - 2 ; case 9
	.short _021E4E5C - _021E4E20 - 2 ; case 10
	.short _021E4E6E - _021E4E20 - 2 ; case 11
	.short _021E4E6A - _021E4E20 - 2 ; case 12
	.short _021E4EFC - _021E4E20 - 2 ; case 13
	.short _021E4E98 - _021E4E20 - 2 ; case 14
	.short _021E4E98 - _021E4E20 - 2 ; case 15
	.short _021E4E98 - _021E4E20 - 2 ; case 16
	.short _021E4E98 - _021E4E20 - 2 ; case 17
	.short _021E4EAE - _021E4E20 - 2 ; case 18
	.short _021E4EAE - _021E4E20 - 2 ; case 19
	.short _021E4EAE - _021E4E20 - 2 ; case 20
	.short _021E4EAE - _021E4E20 - 2 ; case 21
_021E4E4C:
	ldr r0, [r4]
	add r1, r5, #0
	bl ovy168_21e4bc4
_021E4E54:
	b _021E4EFA
_021E4E56:
	ldr r0, [r4]
	add r1, r5, #5
	b _021E4E64
_021E4E5C:
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r4]
	add r1, r5, #4
_021E4E64:
	bl ovy168_21e4a80
	b _021E4E54
_021E4E6A:
	mov r0, #1
	str r0, [sp, #8]
_021E4E6E:
	add r1, r4, #0
	ldr r0, [r4]
	add r1, #8
	bl ovy168_21e4bdc
	add r5, r0, #0
	bl ovy168_21e006c
	ldr r2, [r4, #8]
	add r1, sp, #0xac
	add r3, r5, #0
	bl ovy168_21e715c
	b _021E4EF6
_021E4E8A:
	ldr r0, [r4, #0x34]
	str r0, [sp, #0xac]
	ldr r0, [r4, #0x38]
	str r0, [sp, #0xb0]
	ldr r0, [r4, #0x3c]
	str r0, [sp, #0xb4]
	b _021E4EFC
_021E4E98:
	bl ovy168_21e006c
	sub r5, #0xc
	add r2, r5, #0
	add r1, sp, #0xac
	mov r3, #1
	mov r5, #1
	bl ovy168_21e715c
	sub r0, r5, #2
	b _021E4E54
_021E4EAE:
	bl ovy168_21e006c
	sub r5, #0x10
	add r1, sp, #0xac
	add r2, r5, #0
	mov r3, #1
	bl ovy168_21e715c
	ldr r0, [r4, #4]
	sub r0, #0x12
	cmp r0, #3
	bhi _021E4EF6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E4ED2: ; jump table
	.short _021E4EDA - _021E4ED2 - 2 ; case 0
	.short _021E4EE0 - _021E4ED2 - 2 ; case 1
	.short _021E4EE6 - _021E4ED2 - 2 ; case 2
	.short _021E4EEC - _021E4ED2 - 2 ; case 3
_021E4EDA:
	ldr r1, [sp, #0xb4]
	mov r0, #0x1a
	b _021E4EF0
_021E4EE0:
	ldr r1, [sp, #0xb4]
	mov r0, #0x26
	b _021E4EF0
_021E4EE6:
	ldr r1, [sp, #0xb4]
	mov r0, #6
	b _021E4EF0
_021E4EEC:
	ldr r1, [sp, #0xb4]
	mov r0, #0x39
_021E4EF0:
	lsl r0, r0, #8
	add r0, r1, r0
	str r0, [sp, #0xb4]
_021E4EF6:
	mov r0, #0
	mvn r0, r0
_021E4EFA:
	str r0, [r4, #8]
_021E4EFC:
	mov r0, #0
	ldr r5, [r4, #8]
	mvn r0, r0
	cmp r5, r0
	beq _021E4F16
	cmp r5, #8
	beq _021E4F16
	bl ovy168_21e006c
	add r1, sp, #0xac
	add r2, r5, #0
	bl ovy168_21e7154
_021E4F16:
	bl ovy168_21e00e8
	mov r1, #5
	ldr r0, [sp, #0xc0]
	lsl r1, r1, #8
	add r0, r0, r1
	ldr r2, [sp, #0xb4]
	str r0, [sp, #0xc0]
	add r1, r2, r1
	str r1, [sp, #0xb4]
	ldr r2, [r4, #0x40]
	sub r1, r2, #1
	cmp r1, #1
	bhi _021E4F48
	add r1, r4, #0
	add r0, sp, #0xb8
	add r1, #0xc
	bl ovy168_21e5d98
	add r0, sp, #0xac
_021E4F3E:
	add r1, r4, #0
	add r1, #0xc
	bl ovy168_21e5d98
	b _021E4F68
_021E4F48:
	cmp r2, #3
	bne _021E4F60
	ldr r1, [sp, #0xb8]
	str r0, [sp, #0xa8]
	str r1, [sp, #0xa0]
	ldr r1, [sp, #0xbc]
	str r1, [sp, #0xa4]
	ldr r0, [r4, #0x10]
	add r0, r1, r0
	str r0, [sp, #0xbc]
	add r0, sp, #0xa0
	b _021E4F3E
_021E4F60:
	ldr r1, [sp, #0xbc]
	ldr r0, [r4, #0x10]
	add r0, r1, r0
	str r0, [sp, #0xbc]
_021E4F68:
	ldr r1, [sp, #0xb0]
	ldr r0, [r4, #0x10]
	add r0, r1, r0
	str r0, [sp, #0xb0]
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bne _021E4F78
	b _021E511C
_021E4F78:
	ldr r0, [r4]
	bl sub_020159DC
	add r7, r0, #0
	ldr r0, _021E51C8 ; =0x00001A25
	ldr r3, _021E51CC ; =0x021F4174
	str r0, [sp]
	mov r0, #0x8e
	lsl r0, r0, #2
	ldrh r1, [r7, r0]
	ldr r0, _021E51D0 ; =0x00007FFF
	mov r2, #0
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0x60
	bl GFL_HeapAllocate
	mov r1, #0x8e
	lsl r1, r1, #2
	sub r1, r1, #4
	ldr r1, [r7, r1]
	lsl r1, r1, #2
	add r2, r7, r1
	mov r1, #0x8e
	lsl r1, r1, #2
	sub r1, #0x44
	str r0, [r2, r1]
	mov r0, #0x8e
	lsl r0, r0, #2
	sub r0, r0, #4
	ldr r0, [r7, r0]
	lsl r0, r0, #2
	add r1, r7, r0
	mov r0, #0x8e
	lsl r0, r0, #2
	sub r0, #0x44
	ldr r5, [r1, r0]
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0205035C
	ldr r1, _021E51D4 ; =ovy168_21e5420
	add r0, r6, #0
	bl sub_02050354
	mov r0, #0x8e
	lsl r0, r0, #2
	sub r0, r0, #4
	ldr r0, [r7, r0]
	add r1, r0, #1
	mov r0, #0x8e
	lsl r0, r0, #2
	sub r0, r0, #4
	str r1, [r7, r0]
	mov r0, #0
	str r0, [r5, #0x38]
	str r0, [r5, #0x50]
	str r0, [r5, #0x54]
	str r0, [r5, #0x58]
	ldr r0, [r4, #0x20]
	str r0, [r5, #0x4c]
	ldr r0, [r4, #0x24]
	asr r0, r0, #0xc
	str r0, [r5, #0x48]
	ldr r0, [r4, #0x40]
	str r0, [r5, #0x5c]
	ldr r0, [r4, #0x20]
	cmp r0, #3
	bne _021E500E
	mov r0, #0x60
	lsl r0, r0, #0x14
	b _021E504C
_021E500E:
	sub r0, r0, #5
	cmp r0, #1
	bhi _021E5048
	mov r7, #2
	lsl r7, r7, #0x1a
	ldr r1, [r4, #0x24]
	add r0, r7, #0
	bl FX_Div
	str r0, [r5, #0x40]
	ldr r1, [r4, #0x24]
	lsl r0, r7, #1
	bl FX_Div
	str r0, [r5, #0x44]
	ldr r2, [r4, #0x54]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	blx sub_0208D60C
	lsr r2, r7, #0x10
	add r2, r0, r2
	ldr r0, _021E51D8 ; =0x00000000
	adc r1, r0
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [r5, #0x44]
	b _021E5054
_021E5048:
	mov r0, #2
	lsl r0, r0, #0x1a
_021E504C:
	ldr r1, [r4, #0x24]
	bl FX_Div
	str r0, [r5, #0x40]
_021E5054:
	ldr r0, [r5, #0x40]
	cmp r0, #0
	bne _021E505E
	mov r0, #1
	str r0, [r5, #0x40]
_021E505E:
	add r0, sp, #0xb8
	add r1, sp, #0xac
	blx VEC_Distance
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r0, r1, #1
	str r0, [r5, #0x30]
	ldr r0, [r4, #0x20]
	cmp r0, #1
	beq _021E5078
	cmp r0, #4
	bne _021E507C
_021E5078:
	mov r0, #0
	b _021E507E
_021E507C:
	ldr r0, [r4, #0x1c]
_021E507E:
	str r0, [r5, #0x34]
	ldr r0, [r4, #0x20]
	cmp r0, #4
	bne _021E50AC
	ldr r0, [sp, #0xc0]
	ldr r2, [sp, #0xb8]
	ldr r1, [sp, #0xac]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xb4]
	ldr r3, [sp, #0xbc]
	ldr r7, [sp, #0xb0]
	mov ip, r0
	str r0, [sp, #0xc0]
	add r0, r2, r1
	str r0, [sp, #0xac]
	add r0, r3, r7
	str r0, [sp, #0xb0]
	str r1, [sp, #0xb8]
	ldr r0, [sp, #0x10]
	mov r1, ip
	add r0, r0, r1
	str r7, [sp, #0xbc]
	str r0, [sp, #0xb4]
_021E50AC:
	ldr r1, [sp, #0xac]
	ldr r0, [sp, #0xb8]
	sub r0, r1, r0
	str r0, [sp, #0x88]
	ldr r1, [sp, #0xb0]
	ldr r0, [sp, #0xbc]
	sub r0, r1, r0
	str r0, [sp, #0x8c]
	ldr r1, [sp, #0xb4]
	ldr r0, [sp, #0xc0]
	sub r0, r1, r0
	str r0, [sp, #0x90]
	add r0, sp, #0x88
	add r1, r0, #0
	blx VEC_Normalize
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #0x7c]
	mov r0, #0
	str r0, [sp, #0x80]
	str r0, [sp, #0x84]
	add r0, sp, #0x7c
	add r1, sp, #0x88
	blx VEC_DotProduct
	bl FX_AcosIdx
	add r7, r0, #0
	add r0, sp, #0x7c
	add r1, sp, #0x88
	add r2, sp, #0x94
	blx VEC_CrossProduct
	add r0, sp, #0x94
	add r1, r0, #0
	blx VEC_Normalize
	asr r0, r7, #4
	lsl r3, r0, #1
	lsl r2, r3, #1
	ldr r7, _021E51DC ; =FX_SinCosTable_ ; 0x020946BC
	add r3, r3, #1
	lsl r3, r3, #1
	ldrsh r2, [r7, r2]
	ldrsh r3, [r7, r3]
	add r0, r5, #0
	add r1, sp, #0x94
	blx MTX_RotAxis43
	ldr r0, [sp, #0xb8]
	str r0, [r5, #0x24]
	ldr r0, [sp, #0xbc]
	str r0, [r5, #0x28]
	ldr r0, [sp, #0xc0]
	str r0, [r5, #0x2c]
_021E511C:
	ldr r1, [r4, #4]
	cmp r1, #8
	beq _021E512C
	ldr r0, [r4, #8]
	cmp r0, #8
	beq _021E512C
	cmp r1, r0
	bne _021E512E
_021E512C:
	b _021E5274
_021E512E:
	mov r1, #2
	add r0, sp, #0x14
	strh r1, [r0]
	ldr r1, [sp, #0xac]
	ldr r0, [sp, #0xb8]
	sub r0, r1, r0
	str r0, [sp, #0xac]
	ldr r1, [sp, #0xb0]
	ldr r0, [sp, #0xbc]
	sub r0, r1, r0
	str r0, [sp, #0xb0]
	ldr r1, [sp, #0xb4]
	ldr r0, [sp, #0xc0]
	sub r0, r1, r0
	str r0, [sp, #0xb4]
	add r0, r6, #0
	add r1, sp, #0xac
	bl sub_02050310
	add r0, r6, #0
	add r1, sp, #0xac
	bl sub_0205033C
	ldr r0, [sp, #0xac]
	add r1, sp, #0x14
	str r0, [sp, #0x34]
	ldr r0, [sp, #0xb4]
	mov r5, #0
	str r0, [sp, #0x3c]
	add r0, r6, #0
	add r1, #2
	str r5, [sp, #0x38]
	bl sub_020501B8
	mov r1, #2
	add r0, sp, #0x14
	ldrsh r0, [r0, r1]
	mov r1, #6
	str r0, [sp, #0x40]
	str r5, [sp, #0x44]
	add r0, sp, #0x14
	ldrsh r0, [r0, r1]
	str r0, [sp, #0x48]
	add r0, sp, #0x40
	add r1, r0, #0
	blx VEC_Normalize
	add r0, sp, #0x34
	add r1, r0, #0
	blx VEC_Normalize
	add r0, sp, #0x40
	add r1, sp, #0x34
	blx VEC_DotProduct
	bl FX_AcosIdx
	add r7, r0, #0
	add r0, sp, #0x40
	add r1, sp, #0x34
	add r2, sp, #0x28
	blx VEC_CrossProduct
	add r0, sp, #0x28
	add r1, r0, #0
	blx VEC_Normalize
	asr r0, r7, #4
	lsl r5, r0, #1
	ldr r2, _021E51DC ; =FX_SinCosTable_ ; 0x020946BC
	lsl r3, r5, #1
	ldrsh r2, [r2, r3]
	add r3, r5, #1
	lsl r5, r3, #1
	ldr r3, _021E51DC ; =FX_SinCosTable_ ; 0x020946BC
	b _021E51E0
	nop
_021E51C8: .word 0x00001A25
_021E51CC: .word 0x021F4174
_021E51D0: .word 0x00007FFF
_021E51D4: .word ovy168_21e5420
_021E51D8: .word 0x00000000
_021E51DC: .word FX_SinCosTable_
_021E51E0:
	add r0, sp, #0x4c
	ldrsh r3, [r3, r5]
	add r1, sp, #0x28
	blx MTX_RotAxis43
	mov r1, #2
	add r0, sp, #0x14
	ldrsh r0, [r0, r1]
	mov r1, #4
	str r0, [sp, #0x40]
	add r0, sp, #0x14
	ldrsh r0, [r0, r1]
	mov r1, #6
	str r0, [sp, #0x44]
	add r0, sp, #0x14
	ldrsh r0, [r0, r1]
	add r1, sp, #0x4c
	str r0, [sp, #0x48]
	add r0, sp, #0x40
	add r2, r0, #0
	blx MTX_MultVec43
	add r0, sp, #0x40
	add r1, r0, #0
	blx VEC_Normalize
	ldr r0, [sp, #8]
	cmp r0, #1
	bne _021E522E
	mov r0, #4
	ldr r1, [sp, #0x40]
	sub r0, r0, #5
	mul r0, r1
	str r0, [sp, #0x40]
	mov r0, #4
	ldr r1, [sp, #0x48]
	sub r0, r0, #5
	mul r0, r1
	str r0, [sp, #0x48]
_021E522E:
	ldr r1, [sp, #0x40]
	add r0, sp, #0x14
	strh r1, [r0, #2]
	ldr r1, [sp, #0x44]
	strh r1, [r0, #4]
	ldr r1, [sp, #0x48]
	strh r1, [r0, #6]
	mov r0, #2
	lsl r0, r0, #0xc
	cmp r7, r0
	blo _021E525C
	mov r0, #6
	lsl r0, r0, #0xc
	cmp r7, r0
	bls _021E5254
	mov r0, #0xa
	lsl r0, r0, #0xc
	cmp r7, r0
	blo _021E525C
_021E5254:
	mov r0, #0xe
	lsl r0, r0, #0xc
	cmp r7, r0
	bls _021E5262
_021E525C:
	mov r1, #0
	add r0, sp, #0x14
	strh r1, [r0]
_021E5262:
	add r0, r6, #0
	add r1, sp, #0x14
	bl sub_02050328
	add r1, sp, #0x14
	add r0, r6, #0
	add r1, #2
	bl sub_02050230
_021E5274:
	ldr r2, [r4, #0x40]
	cmp r2, #0
	beq _021E5280
	ldr r1, [r4, #4]
	lsl r1, r1, #0x1f
	bne _021E528C
_021E5280:
	cmp r2, #0
	beq _021E528C
	sub r0, r2, #2
	cmp r0, #1
	bls _021E528C
	b _021E5400
_021E528C:
	add r0, r6, #0
	bl sub_020501D0
	add r7, r0, #0
	add r0, r6, #0
	bl sub_02050200
	lsl r5, r0, #0xc
	add r0, r6, #0
	bl sub_020501F8
	str r0, [sp, #4]
	add r0, r6, #0
	bl sub_020501D8
	ldr r2, [r4, #0x44]
	str r0, [sp, #0xc]
	cmp r2, #0
	beq _021E52F8
	asr r1, r7, #0x1f
	add r0, r7, #0
	asr r3, r2, #0x1f
	blx sub_0208D60C
	mov r3, #2
	add r2, r0, #0
	mov r7, #0
	lsl r3, r3, #0xa
	add r0, r6, #0
	add r3, r2, r3
	adc r1, r7
	lsl r2, r1, #0x14
	lsr r1, r3, #0xc
	orr r1, r2
	bl sub_020501D4
	ldr r0, [sp, #0xc]
	ldr r2, [r4, #0x44]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	blx sub_0208D60C
	add r3, r1, #0
	mov r1, #2
	add r2, r0, #0
	lsl r1, r1, #0xa
	add r0, r6, #0
	add r1, r2, r1
	adc r3, r7
	lsl r2, r3, #0x14
	lsr r1, r1, #0xc
	orr r1, r2
	bl sub_020501DC
_021E52F8:
	ldr r2, [r4, #0x48]
	cmp r2, #0
	beq _021E5324
	asr r1, r5, #0x1f
	add r0, r5, #0
	asr r3, r2, #0x1f
	blx sub_0208D60C
	mov r2, #2
	add r5, r0, #0
	mov r3, #0
	lsl r2, r2, #0xa
	add r0, r6, #0
	add r2, r5, r2
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r2, r2, #0xc
	orr r2, r1
	lsl r1, r2, #4
	lsr r1, r1, #0x10
	bl sub_0205024C
_021E5324:
	ldr r2, [r4, #0x4c]
	cmp r2, #0
	beq _021E5350
	ldr r0, [sp, #4]
	asr r3, r2, #0x1f
	asr r1, r0, #0x1f
	blx sub_0208D60C
	mov r2, #2
	add r5, r0, #0
	mov r3, #0
	lsl r2, r2, #0xa
	add r0, r6, #0
	add r2, r5, r2
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r2, r2, #0xc
	orr r2, r1
	lsl r1, r2, #0x10
	asr r1, r1, #0x10
	bl sub_02050248
_021E5350:
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _021E5400
	add r0, r6, #0
	add r1, sp, #0x1c
	bl sub_02050198
	ldr r0, [sp, #0x1c]
	ldr r2, [r4, #0x50]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	blx sub_0208D60C
	mov r7, #2
	mov r5, #0
	lsl r7, r7, #0xa
	add r2, r0, r7
	adc r1, r5
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	ldr r2, [r4, #0x50]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	blx sub_0208D60C
	add r2, r0, r7
	adc r1, r5
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [sp, #0x20]
	ldr r0, [sp, #0x24]
	ldr r2, [r4, #0x50]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	blx sub_0208D60C
	add r2, r0, r7
	adc r1, r5
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [sp, #0x24]
	add r0, r6, #0
	add r1, sp, #0x1c
	bl sub_020501A8
	add r0, r6, #0
	bl sub_020501E0
	ldr r2, [r4, #0x50]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	blx sub_0208D60C
	add r2, r0, #0
	add r0, r6, #0
	add r2, r2, r7
	adc r1, r5
	lsl r1, r1, #0x14
	lsr r2, r2, #0xc
	orr r2, r1
	lsl r1, r2, #0x10
	asr r1, r1, #0x10
	bl sub_020501E8
	add r0, r6, #0
	bl sub_020501EC
	ldr r2, [r4, #0x50]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	blx sub_0208D60C
	add r2, r0, #0
	add r0, r6, #0
	add r2, r2, r7
	adc r1, r5
	lsl r1, r1, #0x14
	lsr r2, r2, #0xc
	orr r2, r1
	lsl r1, r2, #0x10
	asr r1, r1, #0x10
	bl sub_020501F4
_021E5400:
	ldr r0, [r4, #0x40]
	cmp r0, #3
	bne _021E540C
	add r0, r6, #0
	add r1, sp, #0xa0
	b _021E5410
_021E540C:
	add r0, r6, #0
	add r1, sp, #0xb8
_021E5410:
	bl sub_02050208
	add r0, r4, #0
	bl GFL_HeapFree
	add sp, #0xc4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy168_21e4d20

	thumb_func_start ovy168_21e5420
ovy168_21e5420: ; 0x021E5420
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	add r4, r1, #0
	bl sub_02050364
	add r5, r0, #0
	ldr r0, [r5, #0x48]
	cmp r0, #0
	beq _021E5438
	cmp r4, #0
	bne _021E543A
_021E5438:
	b _021E553C
_021E543A:
	ldr r0, [r5, #0x4c]
	cmp r0, #3
	bne _021E545E
	ldr r0, [r5, #0x50]
	cmp r0, #0
	beq _021E544E
	sub r0, r0, #1
	add sp, #0x10
	str r0, [r5, #0x50]
	pop {r3, r4, r5, r6, r7, pc}
_021E544E:
	ldr r1, [r5, #0x58]
	add r1, #0xc
	str r1, [r5, #0x58]
	ldr r0, [r5, #0x54]
	add r0, r0, r1
	str r0, [r5, #0x54]
	asr r0, r0, #0xc
	str r0, [r5, #0x50]
_021E545E:
	ldr r0, [r5, #0x48]
	sub r0, r0, #1
	str r0, [r5, #0x48]
	ldr r1, [r5, #0x38]
	ldr r0, [r5, #0x40]
	add r0, r1, r0
	str r0, [r5, #0x38]
	ldr r2, [r5, #0x3c]
	ldr r1, [r5, #0x44]
	asr r0, r0, #0xc
	add r1, r2, r1
	mov r2, #3
	lsl r2, r2, #0xe
	add r0, r0, r2
	lsl r0, r0, #0x10
	str r1, [r5, #0x3c]
	asr r1, r1, #0xc
	lsr r0, r0, #0x10
	add r1, r1, r2
	asr r0, r0, #4
	lsl r1, r1, #0x10
	lsl r7, r0, #1
	lsr r6, r1, #0x10
	ldr r0, _021E5540 ; =FX_SinCosTable_ ; 0x020946BC
	lsl r1, r7, #1
	ldrsh r0, [r0, r1]
	str r0, [sp, #4]
	ldr r2, [r5, #0x30]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	blx sub_0208D60C
	mov r2, #2
	mov r4, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r4
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [sp, #4]
	ldr r0, [r5, #0x30]
	add r0, r1, r0
	str r0, [sp, #4]
	ldr r0, [r5, #0x4c]
	cmp r0, #6
	bne _021E54E8
	asr r0, r6, #4
	lsl r0, r0, #1
	add r0, r0, #1
	lsl r1, r0, #1
	ldr r0, _021E5540 ; =FX_SinCosTable_ ; 0x020946BC
	ldrsh r0, [r0, r1]
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x34]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	blx sub_0208D60C
	mov r2, #2
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r4
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [sp, #0xc]
	str r4, [sp, #8]
	b _021E551A
_021E54E8:
	cmp r0, #5
	bne _021E54F4
	asr r0, r6, #4
	lsl r0, r0, #1
	add r0, r0, #1
	b _021E54F6
_021E54F4:
	add r0, r7, #1
_021E54F6:
	lsl r1, r0, #1
	ldr r0, _021E5540 ; =FX_SinCosTable_ ; 0x020946BC
	ldrsh r0, [r0, r1]
	str r0, [sp, #8]
	ldr r2, [r5, #0x34]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	blx sub_0208D60C
	mov r2, #2
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r4
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [sp, #8]
	str r4, [sp, #0xc]
_021E551A:
	add r4, sp, #4
	add r0, r4, #0
	add r1, r5, #0
	add r2, r4, #0
	blx MTX_MultVec43
	ldr r0, [r5, #0x5c]
	cmp r0, #0
	beq _021E5534
	add r0, r4, #0
	mov r1, #0
	bl ovy168_21e5d98
_021E5534:
	ldr r0, [sp]
	add r1, sp, #4
	bl sub_02050208
_021E553C:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E5540: .word FX_SinCosTable_
	thumb_func_end ovy168_21e5420

	thumb_func_start ovy168_21e5544
ovy168_21e5544: ; 0x021E5544
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02050188
	add r4, r0, #0
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _021E5564
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bge _021E5564
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0xa
	bl sub_02050248
_021E5564:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0205035C
	ldr r1, _021E5578 ; =ovy168_21e557c
	add r0, r5, #0
	bl sub_02050354
	pop {r3, r4, r5, pc}
	nop
_021E5578: .word ovy168_21e557c
	thumb_func_end ovy168_21e5544

	thumb_func_start ovy168_21e557c
ovy168_21e557c: ; 0x021E557C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	add r4, r1, #0
	bl sub_02050364
	add r5, r0, #0
	cmp r4, #0
	beq _021E5654
	ldr r0, [r5, #0x34]
	cmp r0, #0
	bne _021E5650
	ldr r0, [r5, #0x28]
	cmp r0, #0
	bne _021E5648
	ldr r0, [r5, #0x2c]
	str r0, [r5, #0x28]
	ldr r1, [r5]
	lsl r1, r1, #0x1f
	ldr r1, [r5, #0x18]
	beq _021E55AC
	ldr r0, [r5, #0x1c]
	sub r0, r1, r0
	b _021E55B0
_021E55AC:
	ldr r0, [r5, #0x1c]
	add r0, r1, r0
_021E55B0:
	str r0, [r5, #0x18]
	ldr r0, [r5, #0x18]
	ldr r7, _021E5658 ; =FX_SinCosTable_ ; 0x020946BC
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [r5, #0x18]
	asr r0, r0, #4
	lsl r0, r0, #2
	ldrsh r0, [r7, r0]
	str r0, [sp]
	ldr r2, [r5, #0x10]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	blx sub_0208D60C
	mov r2, #2
	mov r4, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r4
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [sp]
	ldr r0, [r5, #4]
	add r0, r1, r0
	str r0, [sp]
	ldr r0, [r5, #8]
	str r0, [sp, #4]
	ldr r0, [r5, #0x18]
	asr r0, r0, #4
	lsl r0, r0, #1
	add r0, r0, #1
	lsl r0, r0, #1
	ldrsh r0, [r7, r0]
	str r0, [sp, #8]
	ldr r2, [r5, #0x14]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	blx sub_0208D60C
	mov r2, #2
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r4
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [sp, #8]
	ldr r0, [r5, #0xc]
	add r0, r1, r0
	str r0, [sp, #8]
	ldr r0, [r5, #0x3c]
	cmp r0, #0
	beq _021E5626
	add r0, sp, #0
	add r1, r4, #0
	bl ovy168_21e5d98
_021E5626:
	add r0, r6, #0
	add r1, sp, #0
	bl sub_02050208
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _021E563C
	sub r0, r0, #1
	add sp, #0xc
	str r0, [r5, #0x20]
	pop {r4, r5, r6, r7, pc}
_021E563C:
	ldr r0, [r5, #0x24]
	add sp, #0xc
	str r0, [r5, #0x20]
	ldr r0, [r5, #0x38]
	str r0, [r5, #0x34]
	pop {r4, r5, r6, r7, pc}
_021E5648:
	sub r0, r0, #1
	add sp, #0xc
	str r0, [r5, #0x28]
	pop {r4, r5, r6, r7, pc}
_021E5650:
	sub r0, r0, #1
	str r0, [r5, #0x34]
_021E5654:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021E5658: .word FX_SinCosTable_
	thumb_func_end ovy168_21e557c

	thumb_func_start ovy168_21e565c
ovy168_21e565c: ; 0x021E565C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_020500C8
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0204FA84
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r3, r4, r5, pc}
	thumb_func_end ovy168_21e565c

	thumb_func_start ovy168_21e5674
ovy168_21e5674: ; 0x021E5674
	push {r3, lr}
	mov r1, #0x91
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	cmp r0, #1
	bne _021E568A
	bl ovy168_21e006c
	bl ovy168_21e6f10
	pop {r3, pc}
_021E568A:
	bl ovy168_21e006c
	bl ovy168_21e6ecc
	pop {r3, pc}
	thumb_func_end ovy168_21e5674

	thumb_func_start ovy168_21e5694
ovy168_21e5694: ; 0x021E5694
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r4, #5
	bne _021E56B0
	bl GFL_SndSEPlay
	add r0, r5, #0
	bl sub_020061B8
	add r4, r0, #0
	b _021E56B4
_021E56B0:
	bl sub_020061DC
_021E56B4:
	add r0, r4, #0
	bl sub_020061A8
	ldr r1, [sp, #0x18]
	bl sub_0206BE44
	mov r5, #0
	mvn r5, r5
	add r0, r4, #0
	add r1, r5, #0
	add r2, r5, #0
	add r3, r6, #0
	bl sub_020062D8
	add r0, r4, #0
	add r1, r5, #0
	add r2, r7, #0
	add r3, r5, #0
	bl sub_020062D8
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _021E5700
	add r0, r4, #0
	bl sub_020061A8
	lsr r5, r5, #0x10
	ldr r2, [sp, #0x1c]
	add r1, r5, #0
	bl sub_0206BF08
	add r0, r4, #0
	bl sub_020061A8
	ldr r2, [sp, #0x20]
	add r1, r5, #0
	bl sub_0206BF1C
_021E5700:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy168_21e5694

	thumb_func_start ovy168_21e5704
ovy168_21e5704: ; 0x021E5704
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #0x4b
	bls _021E5710
	b _021E5930
_021E5710:
	add r1, r5, r5
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E571C: ; jump table
	.short _021E57B4 - _021E571C - 2 ; case 0
	.short _021E57B4 - _021E571C - 2 ; case 1
	.short _021E57B4 - _021E571C - 2 ; case 2
	.short _021E57B4 - _021E571C - 2 ; case 3
	.short _021E57B4 - _021E571C - 2 ; case 4
	.short _021E57B4 - _021E571C - 2 ; case 5
	.short _021E57B4 - _021E571C - 2 ; case 6
	.short _021E57B4 - _021E571C - 2 ; case 7
	.short _021E57C0 - _021E571C - 2 ; case 8
	.short _021E57CE - _021E571C - 2 ; case 9
	.short _021E57D6 - _021E571C - 2 ; case 10
	.short _021E57DC - _021E571C - 2 ; case 11
	.short _021E57E2 - _021E571C - 2 ; case 12
	.short _021E57E8 - _021E571C - 2 ; case 13
	.short _021E57F0 - _021E571C - 2 ; case 14
	.short _021E57F8 - _021E571C - 2 ; case 15
	.short _021E5800 - _021E571C - 2 ; case 16
	.short _021E5804 - _021E571C - 2 ; case 17
	.short _021E580A - _021E571C - 2 ; case 18
	.short _021E5818 - _021E571C - 2 ; case 19
	.short _021E5822 - _021E571C - 2 ; case 20
	.short _021E5822 - _021E571C - 2 ; case 21
	.short _021E5822 - _021E571C - 2 ; case 22
	.short _021E5822 - _021E571C - 2 ; case 23
	.short _021E5822 - _021E571C - 2 ; case 24
	.short _021E5822 - _021E571C - 2 ; case 25
	.short _021E5822 - _021E571C - 2 ; case 26
	.short _021E5822 - _021E571C - 2 ; case 27
	.short _021E583C - _021E571C - 2 ; case 28
	.short _021E5856 - _021E571C - 2 ; case 29
	.short _021E5856 - _021E571C - 2 ; case 30
	.short _021E5856 - _021E571C - 2 ; case 31
	.short _021E5856 - _021E571C - 2 ; case 32
	.short _021E5856 - _021E571C - 2 ; case 33
	.short _021E5856 - _021E571C - 2 ; case 34
	.short _021E5856 - _021E571C - 2 ; case 35
	.short _021E5856 - _021E571C - 2 ; case 36
	.short _021E5864 - _021E571C - 2 ; case 37
	.short _021E5872 - _021E571C - 2 ; case 38
	.short _021E5878 - _021E571C - 2 ; case 39
	.short _021E587E - _021E571C - 2 ; case 40
	.short _021E587E - _021E571C - 2 ; case 41
	.short _021E587E - _021E571C - 2 ; case 42
	.short _021E587E - _021E571C - 2 ; case 43
	.short _021E5888 - _021E571C - 2 ; case 44
	.short _021E5888 - _021E571C - 2 ; case 45
	.short _021E5888 - _021E571C - 2 ; case 46
	.short _021E5888 - _021E571C - 2 ; case 47
	.short _021E5888 - _021E571C - 2 ; case 48
	.short _021E5888 - _021E571C - 2 ; case 49
	.short _021E5888 - _021E571C - 2 ; case 50
	.short _021E5888 - _021E571C - 2 ; case 51
	.short _021E5896 - _021E571C - 2 ; case 52
	.short _021E58A4 - _021E571C - 2 ; case 53
	.short _021E58AC - _021E571C - 2 ; case 54
	.short _021E58B4 - _021E571C - 2 ; case 55
	.short _021E58BC - _021E571C - 2 ; case 56
	.short _021E58C4 - _021E571C - 2 ; case 57
	.short _021E58CA - _021E571C - 2 ; case 58
	.short _021E58CA - _021E571C - 2 ; case 59
	.short _021E58CA - _021E571C - 2 ; case 60
	.short _021E58CA - _021E571C - 2 ; case 61
	.short _021E58CA - _021E571C - 2 ; case 62
	.short _021E58CA - _021E571C - 2 ; case 63
	.short _021E58CA - _021E571C - 2 ; case 64
	.short _021E58CA - _021E571C - 2 ; case 65
	.short _021E58E4 - _021E571C - 2 ; case 66
	.short _021E58FE - _021E571C - 2 ; case 67
	.short _021E58FE - _021E571C - 2 ; case 68
	.short _021E58FE - _021E571C - 2 ; case 69
	.short _021E58FE - _021E571C - 2 ; case 70
	.short _021E58FE - _021E571C - 2 ; case 71
	.short _021E58FE - _021E571C - 2 ; case 72
	.short _021E58FE - _021E571C - 2 ; case 73
	.short _021E58FE - _021E571C - 2 ; case 74
	.short _021E5918 - _021E571C - 2 ; case 75
_021E57B4:
	bl ovy168_21e006c
	add r1, r5, #0
	bl ovy168_21e7cac
	pop {r3, r4, r5, pc}
_021E57C0:
	bl ovy168_21e006c
	add r4, #0xdc
	ldr r1, [r4]
	bl ovy168_21e7cac
	pop {r3, r4, r5, pc}
_021E57CE:
	mov r0, #0x92
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	pop {r3, r4, r5, pc}
_021E57D6:
	ldr r0, _021E5934 ; =0x00000249
	ldrb r0, [r4, r0]
	pop {r3, r4, r5, pc}
_021E57DC:
	ldr r0, _021E5938 ; =0x0000024A
	ldrb r0, [r4, r0]
	pop {r3, r4, r5, pc}
_021E57E2:
	ldr r0, _021E593C ; =0x0000024B
	ldrb r0, [r4, r0]
	pop {r3, r4, r5, pc}
_021E57E8:
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	pop {r3, r4, r5, pc}
_021E57F0:
	mov r0, #0x25
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	pop {r3, r4, r5, pc}
_021E57F8:
	mov r0, #0x95
	lsl r0, r0, #2
	ldrh r0, [r4, r0]
	pop {r3, r4, r5, pc}
_021E5800:
	ldr r0, [r4, #4]
	pop {r3, r4, r5, pc}
_021E5804:
	add r4, #0xdc
	ldr r0, [r4]
	pop {r3, r4, r5, pc}
_021E580A:
	bl ovy168_21e006c
	add r4, #0xdc
	ldr r1, [r4]
	bl ovy168_21e70a8
	pop {r3, r4, r5, pc}
_021E5818:
	add r4, #0xdc
	ldr r1, [r4]
	mov r0, #1
	and r0, r1
	pop {r3, r4, r5, pc}
_021E5822:
	bl ovy168_21e006c
	sub r5, #0x14
	add r1, r5, #0
	bl ovy168_21e7cd8
	mov r1, #2
	tst r0, r1
	beq _021E5838
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E5838:
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E583C:
	bl ovy168_21e006c
	add r4, #0xdc
	ldr r1, [r4]
	bl ovy168_21e7cd8
	mov r1, #2
	tst r0, r1
	beq _021E5852
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E5852:
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E5856:
	bl ovy168_21e006c
	sub r5, #0x1d
	add r1, r5, #0
	bl ovy168_21e7d08
	pop {r3, r4, r5, pc}
_021E5864:
	bl ovy168_21e006c
	add r4, #0xdc
	ldr r1, [r4]
	bl ovy168_21e7d08
	pop {r3, r4, r5, pc}
_021E5872:
	bl ovy168_21e0108
	pop {r3, r4, r5, pc}
_021E5878:
	bl ovy168_21e00e8
	pop {r3, r4, r5, pc}
_021E587E:
	sub r5, #0x28
	add r0, r5, #0
	bl ovy168_21e0118
	pop {r3, r4, r5, pc}
_021E5888:
	bl ovy168_21e006c
	sub r5, #0x2c
	add r1, r5, #0
	bl ovy168_21e7d4c
	pop {r3, r4, r5, pc}
_021E5896:
	bl ovy168_21e006c
	add r4, #0xdc
	ldr r1, [r4]
	bl ovy168_21e7d4c
	pop {r3, r4, r5, pc}
_021E58A4:
	ldr r0, [r4]
	lsl r0, r0, #0x12
	lsr r0, r0, #0x1f
	pop {r3, r4, r5, pc}
_021E58AC:
	mov r0, #0xa1
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	pop {r3, r4, r5, pc}
_021E58B4:
	mov r0, #0x2a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	pop {r3, r4, r5, pc}
_021E58BC:
	ldr r0, [r4]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x1f
	pop {r3, r4, r5, pc}
_021E58C4:
	add r4, #0xe0
	ldr r0, [r4]
	pop {r3, r4, r5, pc}
_021E58CA:
	bl ovy168_21e006c
	sub r5, #0x3a
	add r1, r5, #0
	bl ovy168_21e7cd8
	mov r1, #8
	tst r0, r1
	beq _021E58E0
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E58E0:
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E58E4:
	bl ovy168_21e006c
	add r4, #0xdc
	ldr r1, [r4]
	bl ovy168_21e7cd8
	mov r1, #8
	tst r0, r1
	beq _021E58FA
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E58FA:
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E58FE:
	bl ovy168_21e006c
	sub r5, #0x43
	add r1, r5, #0
	bl ovy168_21e7cd8
	mov r1, #0x10
	tst r0, r1
	beq _021E5914
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E5914:
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E5918:
	bl ovy168_21e006c
	add r4, #0xdc
	ldr r1, [r4]
	bl ovy168_21e7cd8
	mov r1, #0x10
	tst r0, r1
	beq _021E592E
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E592E:
	mov r0, #0
_021E5930:
	pop {r3, r4, r5, pc}
	nop
_021E5934: .word 0x00000249
_021E5938: .word 0x0000024A
_021E593C: .word 0x0000024B
	thumb_func_end ovy168_21e5704

	thumb_func_start ovy168_21e5940
ovy168_21e5940: ; 0x021E5940
	push {r4, r5, r6, r7, lr}
	sub sp, #0x64
	add r7, r0, #0
	add r0, r1, #0
	add r5, r2, #0
	ldr r2, [r0, #4]
	ldr r0, [r0, #8]
	str r1, [sp, #4]
	str r3, [sp, #8]
	cmp r0, r2
	bne _021E59F8
	add r1, r0, #0
	sub r1, #0xb
	cmp r1, #1
	bhi _021E59F8
	cmp r0, #0xc
	bne _021E5968
	ldr r0, [sp, #4]
	mov r1, #1
	str r1, [r0, #0x58]
_021E5968:
	add r0, r7, #0
	mov r1, #0x10
	add r2, sp, #0x44
	bl ovy168_21e4868
	str r0, [sp, #0x18]
	cmp r0, #0
	beq _021E597E
	mov r4, #0
	cmp r0, #0
	bgt _021E5980
_021E597E:
	b _021E5B62
_021E5980:
	lsl r0, r5, #2
	add r0, r7, r0
	str r0, [sp, #0xc]
	sub r0, r4, #1
	lsr r0, r0, #0x11
	str r0, [sp, #0x1c]
_021E598C:
	ldr r0, _021E5B68 ; =0x00001D0B
	ldr r3, _021E5B6C ; =0x021F4174
	str r0, [sp]
	mov r0, #0x8e
	lsl r0, r0, #2
	ldrh r1, [r7, r0]
	ldr r0, [sp, #0x1c]
	mov r2, #1
	and r1, r0
	mov r0, #2
	lsl r0, r0, #0xe
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0x5c
	bl GFL_HeapAllocate
	add r5, r0, #0
	ldr r6, [sp, #4]
	add r3, r5, #0
	mov r2, #0xb
_021E59B6:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021E59B6
	ldr r0, [r6]
	lsl r1, r4, #2
	str r0, [r3]
	add r0, sp, #0x44
	ldr r0, [r0, r1]
	ldr r2, _021E5B70 ; =ovy168_21e4d20
	str r0, [r5, #4]
	add r0, sp, #0x44
	ldr r0, [r0, r1]
	ldr r1, [sp, #8]
	str r0, [r5, #8]
	ldr r0, [sp, #0xc]
	add r3, r5, #0
	ldr r0, [r0, #0xc]
	bl sub_0205007C
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021E59EC
	add r0, r5, #0
	bl GFL_HeapFree
_021E59EC:
	ldr r0, [sp, #0x18]
	add r4, r4, #1
	cmp r4, r0
	blt _021E598C
	add sp, #0x64
	pop {r4, r5, r6, r7, pc}
_021E59F8:
	cmp r0, r2
	bne _021E5A06
	mov r2, #0x92
	lsl r2, r2, #2
	ldrb r1, [r7, r2]
	cmp r1, #0xc
	beq _021E5A08
_021E5A06:
	b _021E5B0C
_021E5A08:
	ldr r1, [r7]
	lsl r1, r1, #0x19
	lsr r1, r1, #0x1f
	bne _021E5B0C
	add r1, r2, #0
	add r1, #0x10
	ldrh r1, [r7, r1]
	sub r2, #0xda
	cmp r1, r2
	beq _021E5B0C
	add r1, r0, #0
	sub r1, #9
	cmp r1, #1
	bhi _021E5B0C
	cmp r0, #0xa
	bne _021E5A2E
	ldr r0, [sp, #4]
	mov r1, #1
	str r1, [r0, #0x58]
_021E5A2E:
	bl ovy168_21e00e8
	cmp r0, #3
	bhi _021E5A4A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E5A42: ; jump table
	.short _021E5A4A - _021E5A42 - 2 ; case 0
	.short _021E5A54 - _021E5A42 - 2 ; case 1
	.short _021E5A68 - _021E5A42 - 2 ; case 2
	.short _021E5A4A - _021E5A42 - 2 ; case 3
_021E5A4A:
	add r0, r7, #0
	add r0, #0xdc
	ldr r0, [r0]
	str r0, [sp, #0x24]
	b _021E5A64
_021E5A54:
	add r0, r7, #0
	add r0, #0xdc
	ldr r0, [r0]
	mov r1, #1
	tst r0, r1
	bne _021E5A62
	mov r1, #0
_021E5A62:
	str r1, [sp, #0x24]
_021E5A64:
	mov r0, #1
	b _021E5A8A
_021E5A68:
	add r0, r7, #0
	add r0, #0xdc
	ldr r1, [r0]
	mov r0, #1
	and r0, r1
	beq _021E5A78
	mov r1, #0x13
	b _021E5A7A
_021E5A78:
	mov r1, #0x12
_021E5A7A:
	str r1, [sp, #0x24]
	cmp r0, #0
	beq _021E5A84
	mov r0, #0x15
	b _021E5A86
_021E5A84:
	mov r0, #0x14
_021E5A86:
	str r0, [sp, #0x28]
	mov r0, #2
_021E5A8A:
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _021E5B62
	mov r4, #0
	cmp r0, #0
	ble _021E5B62
	lsl r0, r5, #2
	add r0, r7, r0
	str r0, [sp, #0x10]
	sub r0, r4, #1
	lsr r0, r0, #0x11
	str r0, [sp, #0x20]
_021E5AA4:
	ldr r0, _021E5B74 ; =0x00001D42
	ldr r3, _021E5B6C ; =0x021F4174
	str r0, [sp]
	mov r0, #0x8e
	lsl r0, r0, #2
	ldrh r1, [r7, r0]
	ldr r0, [sp, #0x20]
	mov r2, #1
	and r1, r0
	mov r0, #2
	lsl r0, r0, #0xe
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0x5c
	bl GFL_HeapAllocate
	add r5, r0, #0
	ldr r6, [sp, #4]
	add r3, r5, #0
	mov r2, #0xb
_021E5ACE:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021E5ACE
	ldr r0, [r6]
	lsl r1, r4, #2
	str r0, [r3]
	add r0, sp, #0x24
	ldr r0, [r0, r1]
	ldr r1, [sp, #8]
	str r0, [r5, #4]
	str r0, [r5, #8]
	ldr r0, [sp, #0x10]
	ldr r2, _021E5B70 ; =ovy168_21e4d20
	ldr r0, [r0, #0xc]
	add r3, r5, #0
	bl sub_0205007C
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021E5B00
	add r0, r5, #0
	bl GFL_HeapFree
_021E5B00:
	ldr r0, [sp, #0x14]
	add r4, r4, #1
	cmp r4, r0
	blt _021E5AA4
	add sp, #0x64
	pop {r4, r5, r6, r7, pc}
_021E5B0C:
	ldr r0, _021E5B78 ; =0x00001D55
	ldr r3, _021E5B6C ; =0x021F4174
	str r0, [sp]
	mov r0, #0x8e
	lsl r0, r0, #2
	ldrh r1, [r7, r0]
	ldr r0, _021E5B7C ; =0x00007FFF
	mov r2, #1
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0x5c
	bl GFL_HeapAllocate
	add r6, r0, #0
	add r4, r6, #0
	mov r3, #0xb
_021E5B32:
	ldr r2, [sp, #4]
	sub r3, r3, #1
	ldmia r2!, {r0, r1}
	str r2, [sp, #4]
	stmia r4!, {r0, r1}
	bne _021E5B32
	add r0, r2, #0
	ldr r0, [r0]
	ldr r1, [sp, #8]
	str r0, [r4]
	lsl r0, r5, #2
	add r0, r7, r0
	ldr r0, [r0, #0xc]
	ldr r2, _021E5B70 ; =ovy168_21e4d20
	add r3, r6, #0
	bl sub_0205007C
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021E5B62
	add r0, r6, #0
	bl GFL_HeapFree
_021E5B62:
	add sp, #0x64
	pop {r4, r5, r6, r7, pc}
	nop
_021E5B68: .word 0x00001D0B
_021E5B6C: .word 0x021F4174
_021E5B70: .word ovy168_21e4d20
_021E5B74: .word 0x00001D42
_021E5B78: .word 0x00001D55
_021E5B7C: .word 0x00007FFF
	thumb_func_end ovy168_21e5940

	thumb_func_start ovy168_21e5b80
ovy168_21e5b80: ; 0x021E5B80
	push {r4, r5, r6, r7, lr}
	sub sp, #0x6c
	add r5, r1, #0
	add r7, r0, #0
	str r2, [sp, #0xc]
	bl sub_02015A04
	add r1, r0, #0
	add r0, r5, #0
	bl ovy168_21e5f6c
	add r1, r0, #0
	add r0, r5, #0
	bl ovy168_21e4cfc
	str r0, [sp, #0x18]
	add r0, r7, #0
	bl sub_02015A04
	str r0, [sp, #0x14]
	ldr r0, _021E5D78 ; =0x00001D78
	ldr r3, _021E5D7C ; =0x021F4174
	str r0, [sp]
	mov r0, #0x8e
	lsl r0, r0, #2
	ldrh r1, [r5, r0]
	ldr r0, _021E5D80 ; =0x00007FFF
	mov r2, #0
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0x40
	mov r6, #0
	bl GFL_HeapAllocate
	mov r1, #0x8e
	lsl r1, r1, #2
	sub r1, r1, #4
	ldr r1, [r5, r1]
	lsl r1, r1, #2
	add r2, r5, r1
	mov r1, #0x8e
	lsl r1, r1, #2
	sub r1, #0x44
	str r0, [r2, r1]
	mov r0, #0x8e
	lsl r0, r0, #2
	sub r0, r0, #4
	ldr r0, [r5, r0]
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x8e
	lsl r0, r0, #2
	sub r0, #0x44
	ldr r4, [r1, r0]
	mov r0, #0x8e
	lsl r0, r0, #2
	sub r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0x8e
	lsl r1, r1, #2
	add r0, r0, #1
	sub r1, r1, #4
	str r0, [r5, r1]
	add r0, r7, #0
	bl sub_02015A04
	str r0, [r4]
	add r0, r7, #0
	bl sub_02015A04
	str r0, [r4, #0x10]
	add r0, r7, #0
	bl sub_02015A04
	str r0, [r4, #0x14]
	add r0, r7, #0
	bl sub_02015A04
	str r0, [sp, #0x10]
	str r6, [r4, #0x18]
	add r0, r7, #0
	bl sub_02015A04
	str r0, [r4, #0x20]
	str r0, [r4, #0x24]
	str r6, [r4, #0x28]
	add r0, r7, #0
	bl sub_02015A04
	str r0, [r4, #0x2c]
	add r0, r7, #0
	bl sub_02015A04
	str r0, [r4, #0x30]
	str r6, [r4, #0x34]
	add r0, r7, #0
	bl sub_02015A04
	str r0, [r4, #0x38]
	mov r0, #0x40
	ldr r1, [r4, #0x20]
	lsl r0, r0, #0xa
	blx sub_0208D65C
	str r0, [r4, #0x1c]
	ldr r0, [sp, #0xc]
	str r0, [r4, #0x3c]
	ldr r0, [sp, #0x18]
	cmp r0, #0x10
	bne _021E5C64
	b _021E5D6C
_021E5C64:
	ldr r0, [sp, #0xc]
	cmp r0, #1
	bne _021E5CF4
	add r0, r5, #0
	str r0, [sp, #0x1c]
	add r0, #0xc
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	lsl r0, r0, #2
	str r0, [sp, #0x20]
	ldr r0, [r1, r0]
	bl sub_02050194
	cmp r0, #0
	bne _021E5CF4
	ldr r2, _021E5D84 ; =0x021F2FF8
	add r0, sp, #0x40
	str r6, [r0]
	add r3, sp, #0x34
	str r6, [r0, #4]
	str r6, [r0, #8]
	ldmia r2!, {r0, r1}
	str r3, [sp, #0x24]
	stmia r3!, {r0, r1}
	ldr r0, [r2]
	ldr r2, _021E5D88 ; =0x021F2FD4
	str r0, [r3]
	add r3, sp, #0x28
	ldmia r2!, {r0, r1}
	mov ip, r3
	stmia r3!, {r0, r1}
	ldr r0, [r2]
	mov r2, #2
	str r0, [r3]
	lsl r1, r2, #0xb
	mov r0, #3
	lsl r0, r0, #0xc
	str r0, [sp, #0x50]
	ldr r0, _021E5D8C ; =0xFFFFD000
	str r2, [sp, #0x4c]
	str r0, [sp, #0x54]
	ldr r0, _021E5D90 ; =0xFFFFC000
	str r1, [sp, #0x60]
	str r0, [sp, #0x58]
	lsl r0, r2, #0xd
	str r0, [sp, #0x5c]
	lsl r0, r2, #0x14
	str r0, [sp, #0x64]
	ldr r0, [sp, #0x24]
	str r1, [sp, #0x68]
	str r0, [sp]
	mov r0, ip
	str r0, [sp, #4]
	mov r0, #0x8e
	lsl r0, r0, #2
	ldrh r1, [r5, r0]
	ldr r0, _021E5D80 ; =0x00007FFF
	add r3, sp, #0x40
	and r1, r0
	lsl r0, r2, #0xe
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	lsl r2, r2, #0xc
	ldr r0, [r1, r0]
	add r1, sp, #0x4c
	bl sub_020500CC
_021E5CF4:
	ldr r0, [r4]
	cmp r0, #5
	bhi _021E5D38
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E5D06: ; jump table
	.short _021E5D12 - _021E5D06 - 2 ; case 0
	.short _021E5D12 - _021E5D06 - 2 ; case 1
	.short _021E5D2A - _021E5D06 - 2 ; case 2
	.short _021E5D2A - _021E5D06 - 2 ; case 3
	.short _021E5D30 - _021E5D06 - 2 ; case 4
	.short _021E5D30 - _021E5D06 - 2 ; case 5
_021E5D12:
	add r0, r7, #0
	mov r1, #0xe
_021E5D16:
	bl ovy168_21e4a80
	add r6, r0, #0
	bl ovy168_21e006c
	add r1, r4, #4
	add r2, r6, #0
	bl ovy168_21e7154
	b _021E5D38
_021E5D2A:
	add r0, r7, #0
	mov r1, #0x10
	b _021E5D16
_021E5D30:
	mov r0, #0
	str r0, [r4, #4]
	str r0, [r4, #8]
	str r0, [r4, #0xc]
_021E5D38:
	mov r0, #1
	add r1, r6, #0
	tst r1, r0
	beq _021E5D44
	lsl r0, r0, #0xf
	str r0, [r4, #0x18]
_021E5D44:
	ldr r1, [r4, #8]
	ldr r0, [sp, #0x10]
	ldr r2, _021E5D94 ; =ovy168_21e5544
	add r0, r1, r0
	str r0, [r4, #8]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x14]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0xc]
	add r3, r4, #0
	bl sub_0205007C
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021E5D6C
	add r0, r4, #0
	bl GFL_HeapFree
_021E5D6C:
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add sp, #0x6c
	pop {r4, r5, r6, r7, pc}
	nop
_021E5D78: .word 0x00001D78
_021E5D7C: .word 0x021F4174
_021E5D80: .word 0x00007FFF
_021E5D84: .word 0x021F2FF8
_021E5D88: .word 0x021F2FD4
_021E5D8C: .word 0xFFFFD000
_021E5D90: .word 0xFFFFC000
_021E5D94: .word ovy168_21e5544
	thumb_func_end ovy168_21e5b80

	thumb_func_start ovy168_21e5d98
ovy168_21e5d98: ; 0x021E5D98
	push {r3, r4, r5, r6, lr}
	sub sp, #0x44
	add r5, r0, #0
	ldr r0, _021E5E2C ; =0x02143A58
	add r6, sp, #4
	add r4, r1, #0
	add r1, r6, #0
	blx MTX_Copy43To44_
	ldr r1, _021E5E30 ; =0x02143A14
	add r0, r6, #0
	add r2, r6, #0
	blx MTX_Concat44
	cmp r4, #0
	beq _021E5DD0
	ldr r1, [r5]
	ldr r0, [r4]
	add r0, r1, r0
	str r0, [r5]
	ldr r1, [r5, #4]
	ldr r0, [r4, #4]
	add r0, r1, r0
	str r0, [r5, #4]
	ldr r1, [r5, #8]
	ldr r0, [r4, #8]
	add r0, r1, r0
	str r0, [r5, #8]
_021E5DD0:
	add r0, r5, #0
	add r1, sp, #4
	add r2, r5, #0
	add r3, sp, #0
	bl ovy168_21e5e34
	ldr r0, [r5]
	ldr r1, [sp]
	bl FX_Div
	asr r2, r0, #0x1f
	lsr r1, r0, #0x12
	lsl r2, r2, #0xe
	mov r6, #2
	orr r2, r1
	lsl r0, r0, #0xe
	mov r4, #0
	lsl r6, r6, #0xa
	add r1, r0, r6
	adc r2, r4
	lsl r0, r2, #0x14
	lsr r1, r1, #0xc
	orr r1, r0
	str r1, [r5]
	ldr r0, [r5, #4]
	ldr r1, [sp]
	bl FX_Div
	mov r2, #3
	asr r1, r0, #0x1f
	lsl r2, r2, #0xc
	mov r3, #0
	blx sub_0208D60C
	add r2, r0, r6
	adc r1, r4
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	ldr r0, [r5, #8]
	str r1, [r5, #4]
	neg r0, r0
	str r0, [r5, #8]
	add sp, #0x44
	pop {r3, r4, r5, r6, pc}
	nop
_021E5E2C: .word 0x02143A58
_021E5E30: .word 0x02143A14
	thumb_func_end ovy168_21e5d98

	thumb_func_start ovy168_21e5e34
ovy168_21e5e34: ; 0x021E5E34
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r4, r1, #0
	ldr r1, [r0, #4]
	add r6, r2, #0
	str r1, [sp, #4]
	asr r1, r1, #0x1f
	str r1, [sp, #8]
	ldr r1, [r0]
	ldr r0, [r0, #8]
	str r1, [sp, #0xc]
	str r0, [sp, #0x14]
	asr r0, r0, #0x1f
	asr r1, r1, #0x1f
	str r0, [sp, #0x18]
	str r1, [sp, #0x10]
	ldr r2, [r4, #0x20]
	str r3, [sp]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	asr r3, r2, #0x1f
	blx sub_0208D60C
	ldr r2, [r4]
	str r0, [sp, #0x1c]
	add r7, r1, #0
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	asr r3, r2, #0x1f
	blx sub_0208D60C
	ldr r2, [r4, #0x10]
	str r0, [sp, #0x20]
	add r5, r1, #0
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	asr r3, r2, #0x1f
	blx sub_0208D60C
	ldr r2, [sp, #0x20]
	add r2, r2, r0
	ldr r0, [sp, #0x1c]
	adc r5, r1
	add r1, r0, r2
	adc r7, r5
	ldr r2, [r4, #0x24]
	lsl r0, r7, #0x14
	lsr r1, r1, #0xc
	orr r1, r0
	ldr r0, [r4, #0x30]
	asr r3, r2, #0x1f
	add r0, r1, r0
	str r0, [r6]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	blx sub_0208D60C
	ldr r2, [r4, #4]
	str r0, [sp, #0x24]
	add r7, r1, #0
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	asr r3, r2, #0x1f
	blx sub_0208D60C
	ldr r2, [r4, #0x14]
	str r0, [sp, #0x28]
	add r5, r1, #0
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	asr r3, r2, #0x1f
	blx sub_0208D60C
	ldr r2, [sp, #0x28]
	add r2, r2, r0
	ldr r0, [sp, #0x24]
	adc r5, r1
	add r1, r0, r2
	adc r7, r5
	ldr r2, [r4, #0x28]
	lsl r0, r7, #0x14
	lsr r1, r1, #0xc
	orr r1, r0
	ldr r0, [r4, #0x34]
	asr r3, r2, #0x1f
	add r0, r1, r0
	str r0, [r6, #4]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	blx sub_0208D60C
	ldr r2, [r4, #8]
	str r0, [sp, #0x2c]
	add r7, r1, #0
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	asr r3, r2, #0x1f
	blx sub_0208D60C
	ldr r2, [r4, #0x18]
	str r0, [sp, #0x30]
	add r5, r1, #0
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	asr r3, r2, #0x1f
	blx sub_0208D60C
	ldr r2, [sp, #0x30]
	add r2, r2, r0
	ldr r0, [sp, #0x2c]
	adc r5, r1
	add r1, r0, r2
	adc r7, r5
	ldr r2, [r4, #0x2c]
	lsl r0, r7, #0x14
	lsr r1, r1, #0xc
	orr r1, r0
	ldr r0, [r4, #0x38]
	asr r3, r2, #0x1f
	add r0, r1, r0
	str r0, [r6, #8]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	blx sub_0208D60C
	ldr r2, [r4, #0xc]
	add r7, r0, #0
	add r6, r1, #0
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	asr r3, r2, #0x1f
	blx sub_0208D60C
	ldr r2, [r4, #0x1c]
	str r0, [sp, #0x34]
	add r5, r1, #0
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	asr r3, r2, #0x1f
	blx sub_0208D60C
	ldr r2, [sp, #0x34]
	add r0, r2, r0
	adc r5, r1
	add r1, r7, r0
	adc r6, r5
	lsl r0, r6, #0x14
	lsr r1, r1, #0xc
	orr r1, r0
	ldr r0, [r4, #0x3c]
	add r1, r1, r0
	ldr r0, [sp]
	str r1, [r0]
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy168_21e5e34

	thumb_func_start ovy168_21e5f6c
ovy168_21e5f6c: ; 0x021E5F6C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x97
	lsl r0, r0, #2
	ldr r6, [r5, r0]
	add r4, r1, #0
	cmp r6, #9
	bne _021E5F8A
	bl ovy168_21e006c
	add r5, #0xdc
	ldr r1, [r5]
_021E5F84:
	bl ovy168_21e8164
	b _021E5F9E
_021E5F8A:
	cmp r6, #8
	beq _021E5F96
	bl ovy168_21e006c
	add r1, r6, #0
	b _021E5F84
_021E5F96:
	sub r0, #8
	ldrh r0, [r5, r0]
	bl sub_02026C60
_021E5F9E:
	cmp r0, #0
	beq _021E5FA6
	cmp r0, #0x19
	bls _021E5FA8
_021E5FA6:
	mov r0, #4
_021E5FA8:
	sub r0, r0, #1
	cmp r4, #0x1d
	bhi _021E5FB6
	bhs _021E5FD4
	cmp r4, #3
	beq _021E5FD2
	b _021E5FEA
_021E5FB6:
	add r1, r4, #0
	sub r1, #0x2e
	cmp r1, #3
	bhi _021E5FEA
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E5FCA: ; jump table
	.short _021E5FE6 - _021E5FCA - 2 ; case 0
	.short _021E5FE6 - _021E5FCA - 2 ; case 1
	.short _021E5FE6 - _021E5FCA - 2 ; case 2
	.short _021E5FE6 - _021E5FCA - 2 ; case 3
_021E5FD2:
	b _021E5FE8
_021E5FD4:
	add r1, r0, #1
	cmp r1, #0x19
	bne _021E5FDE
	mov r0, #0x10
	b _021E5FE4
_021E5FDE:
	cmp r1, #0x10
	blo _021E5FE4
	mov r0, #3
_021E5FE4:
	b _021E5FE8
_021E5FE6:
	lsl r0, r0, #2
_021E5FE8:
	add r4, r4, r0
_021E5FEA:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy168_21e5f6c

	thumb_func_start ovy168_21e5ff0
ovy168_21e5ff0: ; 0x021E5FF0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r7, r1, #0
	add r0, r2, #0
	str r2, [sp, #4]
	add r4, r3, #0
	cmp r7, r0
	ldr r1, [r5]
	ble _021E601E
	lsl r0, r1, #0x16
	lsr r0, r0, #0x1f
	beq _021E6016
	mov r0, #1
	lsl r0, r0, #0xa
	orr r0, r1
	add sp, #8
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021E6016:
	mov r0, #2
	lsl r0, r0, #8
	orr r0, r1
	b _021E6022
_021E601E:
	ldr r0, _021E609C ; =0xFFFFFDFF
	and r0, r1
_021E6022:
	str r0, [r5]
	ldr r0, _021E60A0 ; =0x00001E77
	ldr r3, _021E60A4 ; =0x021F4174
	str r0, [sp]
	mov r0, #0x8e
	lsl r0, r0, #2
	ldrh r1, [r5, r0]
	ldr r0, _021E60A8 ; =0x00007FFF
	mov r2, #0
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0x10
	bl GFL_HeapAllocate
	add r6, r0, #0
	ldr r0, [sp, #4]
	str r7, [r6, #4]
	str r0, [r6, #8]
	str r5, [r6]
	cmp r4, #0
	ble _021E6064
	lsl r0, r4, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021E6072
_021E6064:
	lsl r0, r4, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021E6072:
	blx sub_0208DA4C
	add r3, r0, #0
	add r2, r6, #0
	ldr r0, [r6, #4]
	ldr r1, [r6, #8]
	add r2, #0xc
	bl ovy168_21e0b44
	ldr r0, [r5, #8]
	ldr r1, _021E60AC ; =ovy168_21e6348
	add r2, r6, #0
	mov r3, #0
	bl sub_0203A614
	mov r1, #0
	mov r2, #1
	bl ovy168_21e035c
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E609C: .word 0xFFFFFDFF
_021E60A0: .word 0x00001E77
_021E60A4: .word 0x021F4174
_021E60A8: .word 0x00007FFF
_021E60AC: .word ovy168_21e6348
	thumb_func_end ovy168_21e5ff0

	thumb_func_start ovy168_21e60b0
ovy168_21e60b0: ; 0x021E60B0
	push {r3, r4}
	mov r4, #0
	mov r1, #0x9b
	lsl r1, r1, #2
	sub r2, r4, #1
_021E60BA:
	lsl r3, r4, #2
	add r3, r0, r3
	ldr r3, [r3, r1]
	cmp r3, r2
	beq _021E60CA
	add r4, r4, #1
	cmp r4, #6
	blt _021E60BA
_021E60CA:
	cmp r4, #6
	bne _021E60D0
	mov r4, #0
_021E60D0:
	add r0, r4, #0
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ovy168_21e60b0

	thumb_func_start ovy168_21e60d8
ovy168_21e60d8: ; 0x021E60D8
	push {r4, lr}
	mov r4, #0
	cmp r4, #8
	bge _021E60FE
_021E60E0:
	bl ovy168_21e006c
	add r1, r4, #0
	bl ovy168_21e7b24
	cmp r0, #1
	bne _021E60F8
	bl ovy168_21e006c
	add r1, r4, #0
	bl ovy168_21e825c
_021E60F8:
	add r4, r4, #1
	cmp r4, #8
	blt _021E60E0
_021E60FE:
	pop {r4, pc}
	thumb_func_end ovy168_21e60d8

	thumb_func_start ovy168_21e6100
ovy168_21e6100: ; 0x021E6100
	push {r3, r4, r5, lr}
	mov r5, #0
	cmp r5, #8
	bge _021E612A
	add r4, r5, #0
_021E610A:
	bl ovy168_21e006c
	add r1, r5, #0
	bl ovy168_21e7b24
	cmp r0, #1
	bne _021E6124
	bl ovy168_21e006c
	add r1, r5, #0
	add r2, r4, #0
	bl ovy168_21e71ec
_021E6124:
	add r5, r5, #1
	cmp r5, #8
	blt _021E610A
_021E612A:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy168_21e6100

	thumb_func_start ovy168_21e612c
ovy168_21e612c: ; 0x021E612C
	push {r3, r4, lr}
	sub sp, #0xc
	add r3, r1, #0
	add r4, r0, #0
	ldr r0, [r3, #0x10]
	sub r0, r0, #1
	str r0, [r3, #0x10]
	bne _021E615A
	ldr r0, [r3, #0x18]
	str r0, [sp]
	ldr r0, [r3, #0x1c]
	str r0, [sp, #4]
	ldr r0, [r3, #0x20]
	str r0, [sp, #8]
	ldr r0, [r3, #4]
	ldr r1, [r3, #8]
	ldr r2, [r3, #0xc]
	ldr r3, [r3, #0x14]
	bl ovy168_21e5694
	add r0, r4, #0
	bl ovy168_21e03ac
_021E615A:
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ovy168_21e612c

	thumb_func_start ovy168_21e6160
ovy168_21e6160: ; 0x021E6160
	push {r3, lr}
	bl sub_0203A6D0
	ldr r2, [r0]
	mov r0, #4
	ldr r1, [r2]
	bic r1, r0
	str r1, [r2]
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy168_21e6160

	thumb_func_start ovy168_21e6174
ovy168_21e6174: ; 0x021E6174
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	ldr r0, [r5, #0x20]
	mov r6, #0
	cmp r0, #0
	beq _021E6188
	sub r0, r0, #1
	str r0, [r5, #0x20]
	pop {r3, r4, r5, r6, r7, pc}
_021E6188:
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	bne _021E625E
	ldr r0, [r5, #0x30]
	ldr r1, [r5, #0x18]
	str r0, [r5, #0x2c]
	ldr r0, [r5, #0x1c]
	ldr r2, [r5, #0x34]
	add r1, r1, r0
	asr r4, r1, #0xc
	str r1, [r5, #0x18]
	lsl r2, r2, #0x1f
	beq _021E61B4
	cmp r0, #0
	ldr r0, [r5, #0x10]
	bge _021E61AE
	cmp r4, r0
	bge _021E61C6
	b _021E61C4
_021E61AE:
	cmp r4, r0
	ble _021E61C6
	b _021E61C4
_021E61B4:
	cmp r0, #0
	ldr r0, [r5, #0x14]
	bge _021E61C0
	cmp r4, r0
	bge _021E61C6
	b _021E61C4
_021E61C0:
	cmp r4, r0
	ble _021E61C6
_021E61C4:
	add r4, r0, #0
_021E61C6:
	cmp r4, #0
	ble _021E61DC
	lsl r0, r4, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021E61EA
_021E61DC:
	lsl r0, r4, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021E61EA:
	blx sub_0208DA4C
	str r0, [r5, #0x18]
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _021E6200
	cmp r0, #1
	beq _021E620C
	cmp r0, #2
	beq _021E621A
	b _021E6228
_021E6200:
	mov r1, #0
	mvn r1, r1
	ldr r0, [r5, #4]
	add r2, r4, #0
	add r3, r1, #0
	b _021E6224
_021E620C:
	ldr r0, [r5, #4]
	bl sub_020061A8
	add r1, r4, #0
	bl sub_0206BE44
	b _021E6228
_021E621A:
	mov r1, #0
	mvn r1, r1
	ldr r0, [r5, #4]
	add r2, r1, #0
	add r3, r4, #0
_021E6224:
	bl sub_020062D8
_021E6228:
	ldr r0, [r5, #0x24]
	cmp r0, #0
	bne _021E6258
	ldr r0, [r5, #0x28]
	str r0, [r5, #0x24]
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _021E623E
	cmp r0, #1
	beq _021E6242
	b _021E6262
_021E623E:
	mov r6, #1
	b _021E6262
_021E6242:
	ldr r0, [r5, #0x34]
	sub r0, r0, #1
	str r0, [r5, #0x34]
	beq _021E6256
	mov r0, #0
	ldr r1, [r5, #0x1c]
	mvn r0, r0
	mul r0, r1
	str r0, [r5, #0x1c]
	b _021E6262
_021E6256:
	b _021E623E
_021E6258:
	sub r0, r0, #1
	str r0, [r5, #0x24]
	b _021E6262
_021E625E:
	sub r0, r0, #1
	str r0, [r5, #0x2c]
_021E6262:
	cmp r6, #1
	bne _021E626C
	add r0, r7, #0
	bl ovy168_21e03ac
_021E626C:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy168_21e6174

	thumb_func_start ovy168_21e6270
ovy168_21e6270: ; 0x021E6270
	push {r3, lr}
	bl sub_0203A6D0
	ldr r2, [r0]
	mov r0, #8
	ldr r1, [r2]
	bic r1, r0
	str r1, [r2]
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy168_21e6270

	thumb_func_start ovy168_21e6284
ovy168_21e6284: ; 0x021E6284
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4, #0x1c]
	sub r0, r0, #1
	str r0, [r4, #0x1c]
	bne _021E631A
	ldr r0, [r4]
	bl ovy168_21e60b0
	add r5, r0, #0
	bl ovy168_21e006c
	ldr r1, [r4, #0x10]
	str r1, [sp]
	ldr r1, [r4, #0x14]
	str r1, [sp, #4]
	ldr r1, [r4, #0x18]
	str r1, [sp, #8]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	ldr r3, [r4, #0xc]
	bl ovy168_21e7fb8
	lsl r1, r5, #2
	ldr r2, [r4]
	mov r5, #0x9b
	add r1, r2, r1
	lsl r5, r5, #2
	str r0, [r1, r5]
	mov r1, #0x7f
	mov r2, #0x6b
	ldr r0, [r4]
	lsl r1, r1, #0xc
	lsl r2, r2, #0xc
	mov r3, #0xa
	bl ovy168_21e5ff0
	ldr r0, [r4]
	ldr r1, [r0]
	lsl r1, r1, #0x15
	lsr r1, r1, #0x1f
	bne _021E6314
	ldr r1, _021E6320 ; =0x00001F6C
	sub r5, #0x34
	str r1, [sp]
	ldrh r1, [r0, r5]
	ldr r0, _021E6324 ; =0x00007FFF
	ldr r3, _021E6328 ; =0x021F4174
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #4
	mov r2, #0
	bl GFL_HeapAllocate
	add r2, r0, #0
	ldr r0, [r4]
	ldr r1, _021E632C ; =ovy168_21e64b8
	str r0, [r2]
	ldr r0, [r4]
	mov r3, #0
	ldr r0, [r0, #8]
	bl sub_0203A614
	mov r1, #0
	mov r2, #0
	bl ovy168_21e035c
_021E6314:
	add r0, r6, #0
	bl ovy168_21e03ac
_021E631A:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_021E6320: .word 0x00001F6C
_021E6324: .word 0x00007FFF
_021E6328: .word 0x021F4174
_021E632C: .word ovy168_21e64b8
	thumb_func_end ovy168_21e6284

	thumb_func_start ovy168_21e6330
ovy168_21e6330: ; 0x021E6330
	push {r3, lr}
	bl sub_0203A6D0
	ldr r2, [r0]
	ldr r0, _021E6344 ; =0xFFFFF7FF
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	pop {r3, pc}
	nop
_021E6344: .word 0xFFFFF7FF
	thumb_func_end ovy168_21e6330

	thumb_func_start ovy168_21e6348
ovy168_21e6348: ; 0x021E6348
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r0, #1
	add r2, r4, #0
	str r0, [sp]
	add r0, r4, #4
	add r1, #0xc
	add r2, #8
	add r3, sp, #0
	bl ovy168_21e0c10
	ldr r1, [r4, #4]
	ldr r0, _021E6378 ; =0x0000FFFF
	asr r1, r1, #0xc
	bl sub_02011BDC
	ldr r0, [sp]
	cmp r0, #0
	beq _021E6376
	add r0, r5, #0
	bl ovy168_21e03ac
_021E6376:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021E6378: .word 0x0000FFFF
	thumb_func_end ovy168_21e6348

	thumb_func_start ovy168_21e637c
ovy168_21e637c: ; 0x021E637C
	push {r4, r5, r6, lr}
	add r2, r0, #0
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _021E638C
	cmp r0, #1
	beq _021E63E2
	pop {r4, r5, r6, pc}
_021E638C:
	ldr r0, _021E647C ; =0x04000048
	ldr r5, [r1, #0x14]
	ldrh r4, [r0]
	mov r3, #0x3f
	lsl r5, r5, #0x18
	bic r4, r3
	lsr r5, r5, #0x18
	orr r4, r5
	strh r4, [r0]
	ldrh r5, [r0]
	ldr r4, _021E6480 ; =0xFFFFC0FF
	and r4, r5
	ldr r5, [r1, #0x14]
	lsl r5, r5, #0x18
	lsr r5, r5, #0x10
	orr r4, r5
	strh r4, [r0]
	ldrh r4, [r0, #2]
	ldr r5, [r1, #0x14]
	bic r4, r3
	mov r3, #0xff
	lsl r3, r3, #8
	and r3, r5
	asr r3, r3, #8
	orr r3, r4
	strh r3, [r0, #2]
	add r3, r0, #0
	sub r3, #0x48
	ldr r5, [r3]
	ldr r4, _021E6484 ; =0xFFFF1FFF
	and r5, r4
	mov r4, #6
	lsl r4, r4, #0xc
	orr r4, r5
	str r4, [r3]
	sub r3, r0, #6
	mov r4, #0
	strh r4, [r3]
	sub r0, r0, #2
	strh r4, [r0]
	ldr r0, [r1, #4]
	add r0, r0, #1
	str r0, [r1, #4]
_021E63E2:
	ldr r0, [r1, #0x1c]
	cmp r0, #0
	bne _021E6476
	ldr r0, [r1, #0x20]
	str r0, [r1, #0x1c]
	ldr r0, [r1, #8]
	cmp r0, #3
	bhi _021E6438
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E63FE: ; jump table
	.short _021E6406 - _021E63FE - 2 ; case 0
	.short _021E6414 - _021E63FE - 2 ; case 1
	.short _021E6420 - _021E63FE - 2 ; case 2
	.short _021E642C - _021E63FE - 2 ; case 3
_021E6406:
	mov r0, #1
	ldr r3, [r1, #0x10]
	lsl r0, r0, #8
	sub r0, r3, r0
	add r0, r0, #1
_021E6410:
	str r0, [r1, #0x10]
	b _021E6438
_021E6414:
	mov r0, #1
	ldr r3, [r1, #0x10]
	lsl r0, r0, #8
	add r0, r3, r0
	sub r0, r0, #1
	b _021E6410
_021E6420:
	mov r0, #1
	ldr r3, [r1, #0xc]
	lsl r0, r0, #8
	sub r0, r3, r0
	add r0, r0, #1
	b _021E6436
_021E642C:
	mov r0, #1
	ldr r3, [r1, #0xc]
	lsl r0, r0, #8
	add r0, r3, r0
	sub r0, r0, #1
_021E6436:
	str r0, [r1, #0xc]
_021E6438:
	ldr r4, [r1, #0x10]
	ldr r0, [r1, #0xc]
	ldr r3, _021E6488 ; =0x04000040
	mov r5, #0xff
	strh r0, [r3]
	mov r0, #0xff
	lsl r0, r0, #8
	orr r0, r5
	and r4, r0
	strh r4, [r3, #4]
	ldr r4, [r1, #0xc]
	lsl r4, r4, #0x18
	lsr r4, r4, #0x18
	cmp r4, #0xff
	bne _021E6460
	ldr r6, [r1, #0x10]
	add r4, r5, #1
	strh r4, [r3, #2]
	and r0, r6
	b _021E6464
_021E6460:
	mov r0, #0
	strh r0, [r3, #2]
_021E6464:
	strh r0, [r3, #6]
	ldr r0, [r1, #0x18]
	sub r0, r0, #1
	str r0, [r1, #0x18]
	bne _021E647A
	add r0, r2, #0
	bl ovy168_21e03ac
	pop {r4, r5, r6, pc}
_021E6476:
	sub r0, r0, #1
	str r0, [r1, #0x1c]
_021E647A:
	pop {r4, r5, r6, pc}
	.align 2, 0
_021E647C: .word 0x04000048
_021E6480: .word 0xFFFFC0FF
_021E6484: .word 0xFFFF1FFF
_021E6488: .word 0x04000040
	thumb_func_end ovy168_21e637c

	thumb_func_start ovy168_21e648c
ovy168_21e648c: ; 0x021E648C
	push {r3, lr}
	bl sub_0203A6D0
	ldr r1, [r0, #0x24]
	cmp r1, #0
	bne _021E64A4
	mov r3, #1
	lsl r3, r3, #0x1a
	ldr r2, [r3]
	ldr r1, _021E64B0 ; =0xFFFF1FFF
	and r1, r2
	str r1, [r3]
_021E64A4:
	ldr r2, [r0]
	ldr r0, _021E64B4 ; =0xFFFFFEFF
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	pop {r3, pc}
	.align 2, 0
_021E64B0: .word 0xFFFF1FFF
_021E64B4: .word 0xFFFFFEFF
	thumb_func_end ovy168_21e648c

	thumb_func_start ovy168_21e64b8
ovy168_21e64b8: ; 0x021E64B8
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	str r0, [sp]
	add r5, r1, #0
	sub r7, r4, #1
_021E64C2:
	ldr r0, [r5]
	lsl r6, r4, #2
	add r1, r0, r6
	mov r0, #0x9b
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, r7
	beq _021E64E4
	bl sub_02006C40
	cmp r0, #0
	bne _021E650A
	ldr r0, [r5]
	add r1, r0, r6
	mov r0, #0x9b
	lsl r0, r0, #2
	str r7, [r1, r0]
_021E64E4:
	add r4, r4, #1
	cmp r4, #6
	blt _021E64C2
	mov r1, #0x6b
	mov r2, #0x7f
	ldr r0, [r5]
	lsl r1, r1, #0xc
	lsl r2, r2, #0xc
	mov r3, #0xa
	bl ovy168_21e5ff0
	ldr r2, [r5]
	ldr r0, _021E650C ; =0xFFFFFBFF
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	ldr r0, [sp]
	bl ovy168_21e03ac
_021E650A:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E650C: .word 0xFFFFFBFF
	thumb_func_end ovy168_21e64b8

	thumb_func_start ovy168_21e6510
ovy168_21e6510: ; 0x021E6510
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	str r0, [sp]
	ldr r0, [r6, #4]
	mov r5, #1
	cmp r0, #0
	bne _021E6522
	mov r5, #0
_021E6522:
	cmp r0, #0
	beq _021E652A
	mov r0, #0xaa
	b _021E652C
_021E652A:
	mov r0, #0x55
_021E652C:
	str r0, [sp, #4]
	cmp r5, #7
	bgt _021E6588
	add r4, r6, #0
	add r4, #8
	mov r7, #0
_021E6538:
	add r0, r5, #0
	bl ovy168_21df850
	cmp r0, #0
	beq _021E6576
	bl ovy168_21e006c
	add r1, r5, #0
	bl ovy168_21e7a38
	cmp r0, #0
	bne _021E6582
	add r0, r5, #0
	bl ovy168_21e0d4c
	ldr r1, [r6, #8]
	tst r0, r1
	bne _021E6582
	bl ovy168_21e006c
	add r1, r5, #0
	add r2, r7, #0
	bl ovy168_21e7064
	bl ovy168_21e006c
	add r1, r5, #0
	add r2, r7, #0
	bl ovy168_21e71ec
	b _021E6576
_021E6576:
	add r0, r5, #0
	bl ovy168_21e0d4c
	ldr r1, [r4]
	orr r0, r1
	str r0, [r4]
_021E6582:
	add r5, r5, #2
	cmp r5, #7
	ble _021E6538
_021E6588:
	ldr r1, [r6, #8]
	ldr r0, [sp, #4]
	cmp r0, r1
	bne _021E6596
	ldr r0, [sp]
	bl ovy168_21e03ac
_021E6596:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy168_21e6510

	thumb_func_start ovy168_21e659c
ovy168_21e659c: ; 0x021E659C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _021E65C8 ; =0x04000006
	add r4, r1, #0
	ldrh r0, [r0]
	cmp r0, #0xc0
	blo _021E65C4
	cmp r0, #0xc8
	bhi _021E65C4
	ldr r0, [r4, #4]
	bl sub_0204FF04
	ldr r2, [r4]
	ldr r0, _021E65CC ; =0xFFFEFFFF
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	add r0, r5, #0
	bl ovy168_21e03ac
_021E65C4:
	pop {r3, r4, r5, pc}
	nop
_021E65C8: .word 0x04000006
_021E65CC: .word 0xFFFEFFFF
	thumb_func_end ovy168_21e659c

	thumb_func_start ovy168_21e65d0
ovy168_21e65d0: ; 0x021E65D0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldr r1, _021E66C4 ; =0x00000187
	str r0, [sp]
	ldrb r0, [r5, r1]
	cmp r0, #0
	beq _021E65E8
	cmp r0, #1
	beq _021E65F6
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021E65E8:
	mov r0, #0xff
	mov r2, #0xff
	add r0, #0x87
	strb r2, [r5, r0]
	ldrb r0, [r5, r1]
	add r0, r0, #1
	strb r0, [r5, r1]
_021E65F6:
	mov r7, #0x62
	lsl r7, r7, #2
	ldrb r1, [r5, r7]
	sub r0, r7, #2
	ldrb r0, [r5, r0]
	lsl r2, r1, #1
	add r2, r5, r2
	add r2, #0x84
	ldrh r2, [r2]
	sub r2, r2, #2
	cmp r0, r2
	bge _021E661C
	sub r0, r7, #2
	ldrb r0, [r5, r0]
	add sp, #0xc
	add r1, r0, #1
	sub r0, r7, #2
	strb r1, [r5, r0]
	pop {r4, r5, r6, r7, pc}
_021E661C:
	add r3, r7, #0
	ldr r6, [r5]
	add r3, #0xb0
	ldrh r6, [r6, r3]
	add r0, r5, r1
	ldr r3, _021E66C8 ; =0x00007FFF
	ldrb r0, [r0, #4]
	and r3, r6
	ldr r6, _021E66C8 ; =0x00007FFF
	mov r1, #0xe7
	add r1, #0x9e
	add r6, r6, #1
	sub r0, #8
	orr r3, r6
	lsl r0, r0, #0x14
	lsl r3, r3, #0x10
	str r0, [sp, #4]
	ldrb r1, [r5, r1]
	mov r0, #0xe7
	add r2, sp, #8
	lsr r3, r3, #0x10
	mov r4, #0xe7
	bl sub_0204B354
	add r6, r0, #0
	bl ovy168_21e00b8
	mov r1, #0
	bl sub_02026FD0
	add r1, r0, #0
	ldr r0, [sp, #8]
	ldr r2, [sp, #4]
	ldr r0, [r0, #0xc]
	lsr r2, r2, #0xf
	add r0, r0, r2
	mov r2, #0xe7
	add r2, #0x19
	add r1, r1, r2
	mov r2, #0x20
	blx MIi_CpuCopy16
	bl ovy168_21e00b8
	mov r1, #8
	mov r2, #0
	bl sub_02027994
	add r0, r6, #0
	bl GFL_HeapFree
	mov r1, #0xe7
	add r1, #0x9f
	mov r0, #0
	strb r0, [r5, r1]
	mov r0, #0xe7
	add r0, #0x9d
	ldrb r0, [r5, r0]
	ldrb r1, [r5, r7]
	sub r0, r0, #1
	cmp r1, r0
	blt _021E66BC
	mov r0, #0
	strb r0, [r5, r7]
	add r0, r4, #0
	add r0, #0xa2
	ldrb r1, [r5, r0]
	add r0, r4, #0
	add r0, #0xa2
	ldrb r0, [r5, r0]
	add r4, #0xa2
	sub r0, r0, #1
	strb r0, [r5, r4]
	cmp r1, #1
	bhi _021E66C0
	ldr r0, [sp]
	bl ovy168_21e03ac
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021E66BC:
	add r0, r1, #1
	strb r0, [r5, r7]
_021E66C0:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021E66C4: .word 0x00000187
_021E66C8: .word 0x00007FFF
	thumb_func_end ovy168_21e65d0

	thumb_func_start ovy168_21e66cc
ovy168_21e66cc: ; 0x021E66CC
	push {r3, lr}
	bl sub_0203A6D0
	ldr r3, [r0]
	ldr r1, _021E66E4 ; =0xFFF7FFFF
	ldr r2, [r3]
	and r1, r2
	str r1, [r3]
	bl GFL_HeapFree
	pop {r3, pc}
	nop
_021E66E4: .word 0xFFF7FFFF
	thumb_func_end ovy168_21e66cc

	thumb_func_start ovy168_21e66e8
ovy168_21e66e8: ; 0x021E66E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r5, r0, #0
	add r6, r1, #0
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r7, [sp, #0x50]
	bl ovy168_21e006c
	add r1, r5, #0
	add r2, r6, #0
	bl ovy168_21e6e94
	mov r4, #0
	cmp r4, #8
	bge _021E678E
	asr r0, r6, #0x1f
	str r0, [sp, #0x20]
	asr r0, r5, #0x1f
	str r0, [sp, #0x18]
	mov r0, #1
	lsl r0, r0, #0xc
	lsr r0, r0, #1
	str r0, [sp, #0x28]
	mov r0, #1
	lsl r0, r0, #0xc
	lsr r0, r0, #1
	str r0, [sp, #0x24]
_021E6720:
	bl ovy168_21e006c
	add r1, r4, #0
	bl ovy168_21e7b24
	cmp r0, #0
	beq _021E6788
	bl ovy168_21e006c
	add r1, r4, #0
	mov r2, #1
	bl ovy168_21e71c8
	mov r1, #1
	tst r1, r4
	beq _021E674E
	ldr r3, [sp, #0x20]
	asr r1, r0, #0x1f
	add r2, r6, #0
	blx sub_0208D60C
	ldr r2, [sp, #0x24]
	b _021E675A
_021E674E:
	ldr r3, [sp, #0x18]
	asr r1, r0, #0x1f
	add r2, r5, #0
	blx sub_0208D60C
	ldr r2, [sp, #0x28]
_021E675A:
	add r0, r0, r2
	ldr r2, _021E6794 ; =0x00000000
	adc r1, r2
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	str r0, [sp, #0x2c]
	str r0, [sp, #0x30]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #0x34]
	bl ovy168_21e006c
	ldr r1, [sp, #0xc]
	mov r2, #1
	str r1, [sp]
	ldr r1, [sp, #0x10]
	add r3, sp, #0x2c
	str r1, [sp, #4]
	add r1, r4, #0
	str r7, [sp, #8]
	bl ovy168_21e73b8
_021E6788:
	add r4, r4, #1
	cmp r4, #8
	blt _021E6720
_021E678E:
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E6794: .word 0x00000000
	thumb_func_end ovy168_21e66e8

	thumb_func_start ovy168_21e6798
ovy168_21e6798: ; 0x021E6798
	ldr r2, _021E67B4 ; =0x021F3028
	mov r3, #0
_021E679C:
	lsl r1, r3, #2
	ldr r1, [r2, r1]
	cmp r0, r1
	bne _021E67A8
	mov r0, #1
	bx lr
_021E67A8:
	add r3, r3, #1
	cmp r3, #0xb
	blo _021E679C
	mov r0, #0
	bx lr
	nop
_021E67B4: .word 0x021F3028
	thumb_func_end ovy168_21e6798

	thumb_func_start ovy168_21e67b8
ovy168_21e67b8: ; 0x021E67B8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r0, #0
	str r2, [sp, #8]
	ldr r0, _021E6864 ; =0x00000186
	ldr r6, _021E6868 ; =0x000005B4
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [sp, #8]
	ldr r3, _021E686C ; =0x021F4188
	add r1, r6, #0
	mov r2, #1
	mov r5, #1
	bl GFL_HeapAllocate
	add r4, r0, #0
	mov r0, #0xe
	str r0, [sp, #0xc]
	ldr r1, [sp, #8]
	mov r0, #0xe
	bl sub_020199E8
	str r0, [r4, #4]
	ldr r0, [sp, #4]
	add r1, r6, #0
	str r0, [r4]
	ldr r0, [sp, #8]
	sub r1, #0x74
	strh r0, [r4, r1]
	ldr r1, [sp, #0xc]
	ldr r0, [r4, #4]
	add r1, #0xf2
	str r1, [sp, #0xc]
	bl sub_0201B28C
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_0201B290
	add r0, r6, #0
	sub r0, #0x80
	str r5, [r4, r0]
	add r0, r6, #0
	lsl r1, r5, #0xc
	sub r0, #0x7c
	sub r6, #0x78
	str r1, [r4, r0]
	str r1, [r4, r6]
	cmp r7, #2
	beq _021E681E
	mov r5, #0
_021E681E:
	mov r1, #0x51
	lsl r1, r1, #4
	ldr r3, [r4, r1]
	mov r0, #1
	bic r3, r0
	mov r0, #1
	add r2, r5, #0
	and r2, r0
	orr r2, r3
	str r2, [r4, r1]
	cmp r7, #3
	beq _021E6838
	mov r0, #0
_021E6838:
	mov r2, #0x51
	lsl r2, r2, #4
	ldr r3, [r4, r2]
	mov r1, #2
	lsl r0, r0, #0x1f
	bic r3, r1
	lsr r0, r0, #0x1e
	orr r0, r3
	str r0, [r4, r2]
	mov r3, #0
	mov r2, #0xff
	mov r0, #0x5c
_021E6850:
	add r1, r3, #0
	mul r1, r0
	add r1, r4, r1
	add r3, r3, #1
	str r2, [r1, #0x50]
	cmp r3, #0xe
	blt _021E6850
	add r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E6864: .word 0x00000186
_021E6868: .word 0x000005B4
_021E686C: .word 0x021F4188
	thumb_func_end ovy168_21e67b8

	thumb_func_start ovy168_21e6870
ovy168_21e6870: ; 0x021E6870
	push {r3, r4, r5, lr}
	mov r4, #0
	add r5, r0, #0
	cmp r4, #0xe
	bge _021E6894
_021E687A:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy168_21e7b24
	cmp r0, #0
	beq _021E688E
	add r0, r5, #0
	add r1, r4, #0
	bl ovy168_21e6e58
_021E688E:
	add r4, r4, #1
	cmp r4, #0xe
	blt _021E687A
_021E6894:
	ldr r0, [r5, #4]
	bl sub_02019A88
	add r0, r5, #0
	bl GFL_HeapFree
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy168_21e6870

	thumb_func_start ovy168_21e68a4
ovy168_21e68a4: ; 0x021E68A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	mov r5, #0
	add r4, r0, #0
	cmp r5, #8
	bge _021E68EA
	add r6, r4, #0
	add r6, #0x54
	mov r7, #0x5c
_021E68B6:
	add r0, r4, #0
	add r1, r5, #0
	bl ovy168_21e7b24
	cmp r0, #0
	beq _021E68E4
	add r0, r4, #0
	add r1, r5, #0
	bl ovy168_21e9794
	add r1, r0, #0
	mul r1, r7
	ldr r2, [r6, r1]
	lsl r0, r2, #0x14
	lsr r0, r0, #0x1f
	beq _021E68E4
	ldr r0, _021E6B74 ; =0xFFFFF7FF
	and r0, r2
	str r0, [r6, r1]
	add r0, r4, r1
	ldr r0, [r0, #8]
	bl sub_0201B250
_021E68E4:
	add r5, r5, #1
	cmp r5, #8
	blt _021E68B6
_021E68EA:
	ldr r0, [r4, #4]
	bl sub_02019AE8
	mov r0, #0x51
	lsl r0, r0, #4
	str r0, [sp, #0x10]
	ldr r0, [r4, r0]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	bne _021E6904
	mov r5, #0
	cmp r5, #8
	blt _021E6906
_021E6904:
	b _021E6B6E
_021E6906:
	ldr r0, [sp, #0x10]
	add r7, r4, #0
	str r0, [sp, #0xc]
	add r0, #0x45
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	add r7, #0x54
	add r0, #0x18
	str r0, [sp, #0x10]
	ldr r0, _021E6B78 ; =0xFFFFFEFF
	asr r0, r0, #9
	str r0, [sp, #0x18]
	mov r0, #2
	str r0, [sp, #0x1c]
	mov r0, #0x80
	str r0, [sp, #0x14]
_021E6926:
	add r0, r4, #0
	add r1, r5, #0
	bl ovy168_21e7b24
	cmp r0, #0
	beq _021E696E
	bl sub_02043F2C
	mov r1, #0
	mov r2, #0x64
	mov r3, #0
	blx sub_0208D60C
	cmp r1, #0
	bne _021E696E
	add r0, r5, #0
	bl ovy168_21e0d4c
	ldr r1, [sp, #0x10]
	ldr r1, [r4, r1]
	tst r0, r1
	bne _021E696E
	add r0, r4, #0
	add r1, r5, #0
	bl ovy168_21e7038
	cmp r0, #0
	bne _021E696E
	mov r0, #1
	str r0, [sp]
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #2
	mov r3, #4
	bl ovy168_21e75f8
_021E696E:
	add r0, r4, #0
	add r1, r5, #0
	bl ovy168_21e7b24
	cmp r0, #0
	beq _021E69EC
	add r0, r4, #0
	add r1, r5, #0
	bl ovy168_21e9794
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #4]
	bl ovy168_21df7e8
	cmp r0, #0
	beq _021E69A8
	ldr r1, [sp, #8]
	mov r0, #0x5c
	mul r0, r1
	ldr r2, [r7, r0]
	lsl r1, r2, #0x17
	lsr r1, r1, #0x1f
	beq _021E69A8
	ldr r1, _021E6B78 ; =0xFFFFFEFF
	and r2, r1
	mov r1, #0x80
	orr r1, r2
	str r1, [r7, r0]
_021E69A8:
	bl ovy168_21df7e8
	cmp r0, #0
	beq _021E69C0
	ldr r1, [sp, #8]
	mov r0, #0x5c
	mul r0, r1
	add r0, r4, r0
	ldr r0, [r0, #0x54]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	bne _021E69EC
_021E69C0:
	ldr r1, [sp, #8]
	mov r0, #0x5c
	add r6, r1, #0
	mul r6, r0
	ldr r1, [r7, r6]
	ldr r0, [sp, #0x14]
	bic r1, r0
	str r1, [r7, r6]
	add r0, r4, #0
	add r1, r5, #0
	bl ovy168_21e7cd8
	mov r1, #4
	tst r0, r1
	bne _021E69EC
	add r0, r5, #0
	add r1, sp, #0x24
	add r2, sp, #0x20
	bl ovy168_21dfbf4
	cmp r0, #0
	bne _021E69EE
_021E69EC:
	b _021E6B66
_021E69EE:
	ldr r0, [r7, r6]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _021E6A2E
	add r3, r4, r6
	ldr r0, [r3, #0x5c]
	cmp r0, #0
	bne _021E6A04
	mov r0, #1
	str r0, [r3, #0x5c]
_021E6A04:
	add r2, r4, r6
	ldr r1, [r2, #0x60]
	add r0, r1, #1
	str r0, [r2, #0x60]
	cmp r1, #0x18
	ble _021E6A2E
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0
	str r0, [r2, #0x60]
	ldr r1, [r2, #0x58]
	ldr r0, [r2, #0x5c]
	add r0, r1, r0
	str r0, [r2, #0x58]
	beq _021E6A26
	cmp r0, #0xc
	bne _021E6A2E
_021E6A26:
	ldr r1, [r3, #0x5c]
	ldr r0, [sp, #0x18]
	mul r0, r1
	str r0, [r3, #0x5c]
_021E6A2E:
	ldr r0, [sp, #0x20]
	cmp r0, #8
	bhi _021E6B0C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E6A40: ; jump table
	.short _021E6B0C - _021E6A40 - 2 ; case 0
	.short _021E6A7A - _021E6A40 - 2 ; case 1
	.short _021E6AB0 - _021E6A40 - 2 ; case 2
	.short _021E6A52 - _021E6A40 - 2 ; case 3
	.short _021E6AF2 - _021E6A40 - 2 ; case 4
	.short _021E6AD8 - _021E6A40 - 2 ; case 5
	.short _021E6B0C - _021E6A40 - 2 ; case 6
	.short _021E6AF2 - _021E6A40 - 2 ; case 7
	.short _021E6B0C - _021E6A40 - 2 ; case 8
_021E6A52:
	add r0, r4, #0
	add r1, r5, #0
	bl ovy168_21e7bac
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #3
	bl ovy168_21e6fc0
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #3
	bl ovy168_21e7064
	ldr r2, [sp, #0xc]
	add r0, r4, #0
	add r1, r5, #0
	bl ovy168_21e7220
_021E6A78:
	b _021E6AA6
_021E6A7A:
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _021E6A92
	add r2, r4, r6
	ldr r2, [r2, #0x58]
	ldr r3, _021E6B7C ; =0x000001EF
	lsl r2, r2, #0x18
	add r0, r4, #0
	add r1, r5, #0
	lsr r2, r2, #0x18
	bl ovy168_21e7b80
_021E6A92:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #4
	bl ovy168_21e6fc0
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #3
	bl ovy168_21e7064
_021E6AA6:
	ldr r1, [r7, r6]
	mov r0, #2
	orr r0, r1
	str r0, [r7, r6]
	b _021E6B44
_021E6AB0:
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _021E6AC2
	ldr r3, _021E6B80 ; =0x00007DEF
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #8
	bl ovy168_21e7b80
_021E6AC2:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #4
	bl ovy168_21e6fc0
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #2
	bl ovy168_21e7064
	b _021E6A78
_021E6AD8:
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _021E6AF0
	add r2, r4, r6
	ldr r2, [r2, #0x58]
	add r0, r4, #0
	lsl r2, r2, #0x18
	add r1, r5, #0
	lsr r2, r2, #0x18
	mov r3, #0xf
	bl ovy168_21e7b80
_021E6AF0:
	b _021E6A92
_021E6AF2:
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _021E6B0A
	add r2, r4, r6
	ldr r2, [r2, #0x58]
	ldr r3, _021E6B84 ; =0x00003C0F
	lsl r2, r2, #0x18
	add r0, r4, #0
	add r1, r5, #0
	lsr r2, r2, #0x18
	bl ovy168_21e7b80
_021E6B0A:
	b _021E6A92
_021E6B0C:
	ldr r0, [r7, r6]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _021E6B44
	add r0, r4, #0
	add r1, r5, #0
	bl ovy168_21e7bac
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #4
	bl ovy168_21e6fc0
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #3
	bl ovy168_21e7064
	ldr r1, [r7, r6]
	ldr r0, [sp, #0x1c]
	bic r1, r0
	str r1, [r7, r6]
	add r0, r4, r6
	mov r1, #0
	str r1, [r0, #0x5c]
	str r1, [r0, #0x58]
	str r1, [r0, #0x60]
_021E6B44:
	ldr r0, [sp, #0x20]
	cmp r0, #8
	bne _021E6B66
	ldr r0, [sp, #0x24]
	sub r0, r0, #2
	cmp r0, #1
	bhi _021E6B5A
	add r0, r4, #0
	add r1, r5, #0
	ldr r2, [sp, #0xc]
	b _021E6B62
_021E6B5A:
	mov r2, #1
	add r0, r4, #0
	add r1, r5, #0
	lsl r2, r2, #0xc
_021E6B62:
	bl ovy168_21e7220
_021E6B66:
	add r5, r5, #1
	cmp r5, #8
	bge _021E6B6E
	b _021E6926
_021E6B6E:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E6B74: .word 0xFFFFF7FF
_021E6B78: .word 0xFFFFFEFF
_021E6B7C: .word 0x000001EF
_021E6B80: .word 0x00007DEF
_021E6B84: .word 0x00003C0F
	thumb_func_end ovy168_21e68a4

	thumb_func_start ovy168_21e6b88
ovy168_21e6b88: ; 0x021E6B88
	ldr r0, [r0, #4]
	ldr r3, _021E6B90 ; =sub_02019C0C
	bx r3
	nop
_021E6B90: .word sub_02019C0C
	thumb_func_end ovy168_21e6b88

	thumb_func_start ovy168_21e6b94
ovy168_21e6b94: ; 0x021E6B94
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r6, r0, #0
	str r1, [sp, #4]
	str r2, [sp, #8]
	mov r4, #0
	mov r0, #0x5c
_021E6BA2:
	add r1, r4, #0
	mul r1, r0
	add r1, r6, r1
	ldr r1, [r1, #8]
	cmp r1, #0
	beq _021E6BB4
	add r4, r4, #1
	cmp r4, #0xe
	blt _021E6BA2
_021E6BB4:
	ldr r0, [sp, #8]
	cmp r0, #0xe
	bge _021E6BBE
	cmp r4, #0xe
	blt _021E6BC0
_021E6BBE:
	b _021E6D9C
_021E6BC0:
	add r7, r6, #0
	mov r0, #0x5c
	add r5, r4, #0
	mul r5, r0
	add r7, #0x48
	mov r0, #0
	str r0, [r7, r5]
	add r0, r6, #0
	str r0, [sp, #0xc]
	add r0, #0x54
	ldr r1, [r0, r5]
	str r0, [sp, #0xc]
	mov r0, #1
	bic r1, r0
	mov r0, #2
	bic r1, r0
	mov r0, #0x20
	bic r1, r0
	ldr r0, [sp, #0xc]
	str r1, [r0, r5]
	mov r0, #4
	bic r1, r0
	ldr r0, _021E6DA0 ; =0x00000534
	ldr r2, [r6, r0]
	sub r0, #0x24
	lsl r2, r2, #0x1f
	lsr r2, r2, #0x1d
	orr r1, r2
	ldr r2, [sp, #0xc]
	str r1, [r2, r5]
	ldr r0, [r6, r0]
	ldr r2, _021E6DA4 ; =0xFFFFEFFF
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	lsl r0, r0, #0x1f
	and r1, r2
	lsr r0, r0, #0x13
	orr r1, r0
	ldr r0, [sp, #0xc]
	mov r2, #0
	str r1, [r0, r5]
	ldr r0, [sp, #8]
	add r1, r6, r5
	str r0, [r1, #0x50]
	ldr r0, [sp, #4]
	mov r1, #0
	bl sub_0201CCF8
	add r1, r6, r5
	str r0, [r1, #0x3c]
	ldr r0, [sp, #4]
	mov r1, #0x98
	mov r2, #0
	bl sub_0201CCF8
	add r1, r6, r5
	str r0, [r1, #0x44]
	ldr r0, [sp, #4]
	bl sub_0201CDAC
	cmp r0, #1
	bne _021E6C44
	ldr r1, [r7, r5]
	mov r0, #2
	orr r0, r1
	str r0, [r7, r5]
_021E6C44:
	ldr r0, [sp, #4]
	mov r1, #0xb2
	mov r2, #0
	bl sub_0201CCF8
	cmp r0, #1
	bne _021E6C5A
	ldr r1, [r7, r5]
	mov r0, #8
	orr r0, r1
	str r0, [r7, r5]
_021E6C5A:
	ldr r0, [sp, #4]
	mov r1, #0xb3
	mov r2, #0
	bl sub_0201CCF8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201F010
	cmp r0, #4
	blt _021E6C78
	ldr r1, [r7, r5]
	mov r0, #0x10
	orr r0, r1
	str r0, [r7, r5]
_021E6C78:
	add r2, r6, #0
	add r2, #0xc
	ldr r1, [sp, #4]
	ldr r3, [sp, #8]
	add r0, r6, #0
	add r2, r2, r5
	bl ovy168_21e818c
	ldr r2, [sp, #8]
	add r0, r6, #0
	add r1, sp, #0x30
	bl ovy168_21e9648
	add r0, r6, #0
	str r0, [sp, #0x10]
	add r0, #8
	str r0, [sp, #0x10]
	add r0, r6, #0
	add r0, #0xc
	add r0, r0, r5
	str r0, [sp]
	ldr r0, [r6, #4]
	ldr r1, [sp, #0x30]
	ldr r2, [sp, #0x34]
	ldr r3, [sp, #0x38]
	bl sub_0201A8A8
	ldr r1, [sp, #0x10]
	mov r2, #1
	str r0, [r1, r5]
	ldr r1, [sp, #8]
	add r0, r6, #0
	bl ovy168_21e82fc
	add r7, r6, #0
	ldr r0, [sp, #4]
	add r7, #0x34
	mov r1, #5
	mov r2, #0
	bl sub_0201CCF8
	str r0, [r7, r5]
	add r0, r6, #0
	str r0, [sp, #0x14]
	add r0, #0x38
	str r0, [sp, #0x14]
	ldr r0, [sp, #4]
	mov r1, #0x6f
	mov r2, #0
	bl sub_0201CCF8
	add r1, r0, #0
	ldr r0, [sp, #0x14]
	mov r2, #0x26
	str r1, [r0, r5]
	ldr r0, [r7, r5]
	lsl r1, r1, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsr r1, r1, #0x10
	bl sub_0201EF1C
	add r1, r6, r5
	add r1, #0x40
	strh r0, [r1]
	ldr r0, [sp, #4]
	mov r1, #0xa0
	mov r2, #0
	bl sub_0201CCF8
	str r0, [sp, #0x18]
	ldr r0, [sp, #4]
	mov r1, #0xa1
	mov r2, #0
	bl sub_0201CCF8
	add r1, r0, #0
	ldr r0, [sp, #0x18]
	bl sub_0203373C
	add r1, r6, r5
	add r1, #0x42
	strh r0, [r1]
	mov r0, #0
	str r0, [sp, #0x20]
	add r0, sp, #0x20
	str r0, [sp]
	ldr r0, [r7, r5]
	ldr r1, [sp, #8]
	add r2, sp, #0x24
	add r3, sp, #0x1c
	bl ovy168_21e97c0
	cmp r0, #0
	bne _021E6D4E
	ldr r0, _021E6DA8 ; =0xFFFFFC00
	mov r1, #0x3e
	str r0, [sp, #0x24]
	mov r0, #0
	str r0, [sp, #0x28]
	ldr r0, _021E6DAC ; =0xFFFFFA00
	lsl r1, r1, #0xa
	str r0, [sp, #0x2c]
	add r0, sp, #0x1c
	strh r1, [r0]
	mov r0, #1
	str r0, [sp, #0x20]
_021E6D4E:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _021E6D60
	ldr r0, [sp, #0x10]
	mov r1, #0
	ldr r0, [r0, r5]
	bl sub_0201AEB0
	b _021E6D76
_021E6D60:
	add r7, r6, #0
	add r7, #8
	ldr r0, [r7, r5]
	add r1, sp, #0x24
	bl sub_0201AC70
	add r1, sp, #0x1c
	ldrh r1, [r1]
	ldr r0, [r7, r5]
	bl sub_0201AC64
_021E6D76:
	ldr r0, [sp, #0xc]
	ldr r1, [r0, r5]
	mov r0, #0x18
	bic r1, r0
	mov r0, #0x18
	orr r1, r0
	ldr r0, [sp, #0xc]
	str r1, [r0, r5]
	ldr r1, [sp, #8]
	add r0, r6, #0
	bl ovy168_21e8454
	ldr r0, [sp, #0x10]
	ldr r2, _021E6DB0 ; =ovy168_21e94b8
	ldr r0, [r0, r5]
	add r1, r4, #0
	mov r3, #1
	bl sub_0201AE08
_021E6D9C:
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021E6DA0: .word 0x00000534
_021E6DA4: .word 0xFFFFEFFF
_021E6DA8: .word 0xFFFFFC00
_021E6DAC: .word 0xFFFFFA00
_021E6DB0: .word ovy168_21e94b8
	thumb_func_end ovy168_21e6b94

	thumb_func_start ovy168_21e6db4
ovy168_21e6db4: ; 0x021E6DB4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	add r0, r1, #0
	add r7, r2, #0
	mov r1, #0
	mov r2, #0x5c
_021E6DC2:
	add r3, r1, #0
	mul r3, r2
	add r3, r5, r3
	ldr r3, [r3, #8]
	cmp r3, #0
	beq _021E6DD4
	add r1, r1, #1
	cmp r1, #0xe
	blt _021E6DC2
_021E6DD4:
	cmp r7, #0xe
	bge _021E6E4E
	cmp r1, #0xe
	bge _021E6E4E
	add r4, r1, #0
	mov r2, #0x5c
	add r6, r5, #0
	mul r4, r2
	add r6, #0x54
	ldr r2, [r6, r4]
	mov r1, #4
	orr r1, r2
	str r1, [r6, r4]
	add r1, r5, r4
	str r7, [r1, #0x50]
	ldr r2, [r6, r4]
	ldr r1, _021E6E54 ; =0xFFFFEFFF
	and r1, r2
	mov r2, #0x51
	lsl r2, r2, #4
	ldr r2, [r5, r2]
	lsl r2, r2, #0x1c
	lsr r2, r2, #0x1f
	lsl r2, r2, #0x1f
	lsr r2, r2, #0x13
	orr r1, r2
	str r1, [r6, r4]
	add r1, sp, #0x10
	add r2, r7, #0
	bl ovy168_21e8440
	add r0, r5, #0
	add r1, sp, #4
	add r2, r7, #0
	bl ovy168_21e9648
	add r0, sp, #0x10
	str r0, [sp]
	ldr r0, [r5, #4]
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	bl sub_0201A8A8
	add r1, r5, r4
	str r0, [r1, #8]
	add r0, r5, #0
	add r1, r7, #0
	bl ovy168_21e8454
	ldr r2, [r6, r4]
	add r0, r5, #0
	lsl r2, r2, #0x13
	lsr r3, r2, #0x1f
	mov r2, #1
	eor r2, r3
	lsl r2, r2, #0x18
	add r1, r7, #0
	lsr r2, r2, #0x18
	bl ovy168_21e71ec
_021E6E4E:
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_021E6E54: .word 0xFFFFEFFF
	thumb_func_end ovy168_21e6db4

	thumb_func_start ovy168_21e6e58
ovy168_21e6e58: ; 0x021E6E58
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl ovy168_21e9794
	add r4, r0, #0
	mov r1, #0x5c
	add r6, r5, #0
	mul r4, r1
	add r6, #8
	ldr r0, [r5, #4]
	ldr r1, [r6, r4]
	bl sub_0201AA80
	mov r7, #0
	str r7, [r6, r4]
	add r0, r5, r4
	ldr r0, [r0, #0x30]
	cmp r0, #0
	beq _021E6E90
	add r5, #0x30
	bl sub_0203A6D0
	bl GFL_HeapFree
	ldr r0, [r5, r4]
	bl GFL_TCBRemove
	str r7, [r5, r4]
_021E6E90:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy168_21e6e58

	thumb_func_start ovy168_21e6e94
ovy168_21e6e94: ; 0x021E6E94
	ldr r3, _021E6EA0 ; =0x00000538
	str r1, [r0, r3]
	add r1, r3, #4
	str r2, [r0, r1]
	bx lr
	nop
_021E6EA0: .word 0x00000538
	thumb_func_end ovy168_21e6e94

	thumb_func_start ovy168_21e6ea4
ovy168_21e6ea4: ; 0x021E6EA4
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r2, #0
	add r6, r3, #0
	bl ovy168_21e9794
	ldr r1, [sp, #0x20]
	str r4, [sp]
	str r1, [sp, #8]
	mov r1, #0x5c
	mul r1, r0
	add r0, r5, r1
	str r6, [sp, #4]
	ldr r0, [r0, #8]
	add r1, sp, #0
	bl sub_0201AB24
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ovy168_21e6ea4

	thumb_func_start ovy168_21e6ecc
ovy168_21e6ecc: ; 0x021E6ECC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	bl sub_0201AACC
	mov r4, #0
	add r6, r5, #0
	ldr r0, _021E6F0C ; =0x00000534
	mov r1, #1
	str r1, [r5, r0]
	add r6, #0x54
	sub r7, r4, #1
_021E6EE4:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy168_21e9794
	cmp r0, r7
	beq _021E6F04
	mov r1, #0x5c
	mul r1, r0
	ldr r2, [r6, r1]
	mov r0, #4
	orr r0, r2
	str r0, [r6, r1]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy168_21e8454
_021E6F04:
	add r4, r4, #1
	cmp r4, #0xe
	blt _021E6EE4
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E6F0C: .word 0x00000534
	thumb_func_end ovy168_21e6ecc

	thumb_func_start ovy168_21e6f10
ovy168_21e6f10: ; 0x021E6F10
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	bl sub_0201AADC
	add r6, r5, #0
	ldr r0, _021E6F50 ; =0x00000534
	mov r4, #0
	str r4, [r5, r0]
	add r6, #0x54
	mov r7, #4
_021E6F26:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy168_21e9794
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021E6F48
	mov r1, #0x5c
	mul r1, r0
	ldr r0, [r6, r1]
	bic r0, r7
	str r0, [r6, r1]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy168_21e8454
_021E6F48:
	add r4, r4, #1
	cmp r4, #0xe
	blt _021E6F26
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E6F50: .word 0x00000534
	thumb_func_end ovy168_21e6f10

	thumb_func_start ovy168_21e6f54
ovy168_21e6f54: ; 0x021E6F54
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy168_21e9794
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021E6F86
	mov r1, #0x5c
	add r3, r5, #0
	mul r1, r0
	add r3, #0x54
	ldr r2, [r3, r1]
	mov r0, #4
	orr r0, r2
	str r0, [r3, r1]
	add r0, r5, r1
	ldr r0, [r0, #8]
	bl sub_0201AAE8
	add r0, r5, #0
	add r1, r4, #0
	bl ovy168_21e8454
_021E6F86:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy168_21e6f54

	thumb_func_start ovy168_21e6f88
ovy168_21e6f88: ; 0x021E6F88
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy168_21e9794
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021E6FBC
	add r3, r0, #0
	mov r1, #0x5c
	add r2, r5, #0
	mul r3, r1
	add r2, #0x54
	ldr r1, [r2, r3]
	mov r0, #4
	bic r1, r0
	str r1, [r2, r3]
	add r0, r5, r3
	ldr r0, [r0, #8]
	bl sub_0201AAF8
	add r0, r5, #0
	add r1, r4, #0
	bl ovy168_21e8454
_021E6FBC:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy168_21e6f88

	thumb_func_start ovy168_21e6fc0
ovy168_21e6fc0: ; 0x021E6FC0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r2, #0
	bl ovy168_21e9794
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021E7034
	add r6, r5, #0
	mov r1, #0x5c
	add r4, r0, #0
	mul r4, r1
	add r6, #8
	ldr r0, [r6, r4]
	cmp r0, #0
	beq _021E7034
	cmp r7, #4
	bne _021E6FF6
	bl sub_0201AC9C
	add r2, r5, #0
	add r2, #0x54
	ldr r1, [r2, r4]
	mov r0, #1
	bic r1, r0
	str r1, [r2, r4]
_021E6FF6:
	add r5, #0x54
	ldr r0, [r5, r4]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bne _021E7034
	cmp r7, #2
	bne _021E700C
	ldr r0, [r6, r4]
	bl sub_0201ACB0
	pop {r3, r4, r5, r6, r7, pc}
_021E700C:
	cmp r7, #1
	bne _021E7018
	ldr r0, [r6, r4]
	bl sub_0201AC8C
	pop {r3, r4, r5, r6, r7, pc}
_021E7018:
	cmp r7, #3
	ldr r0, [r6, r4]
	bne _021E7030
	bl sub_0201AC8C
	ldr r1, [r5, r4]
	mov r0, #1
	bic r1, r0
	mov r0, #1
	orr r0, r1
	str r0, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
_021E7030:
	bl sub_0201AC9C
_021E7034:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy168_21e6fc0

	thumb_func_start ovy168_21e7038
ovy168_21e7038: ; 0x021E7038
	push {r4, lr}
	add r4, r0, #0
	bl ovy168_21e9794
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021E704C
	mov r0, #0
	pop {r4, pc}
_021E704C:
	mov r1, #0x5c
	mul r1, r0
	add r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _021E705C
	mov r0, #0
	pop {r4, pc}
_021E705C:
	bl sub_0201ACD4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy168_21e7038

	thumb_func_start ovy168_21e7064
ovy168_21e7064: ; 0x021E7064
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	bl ovy168_21e9794
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021E70A4
	mov r1, #0x5c
	mul r1, r0
	add r0, r5, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _021E70A4
	cmp r4, #1
	bne _021E708C
	bl sub_0201ACE0
	pop {r3, r4, r5, pc}
_021E708C:
	cmp r4, #2
	bne _021E7096
	bl sub_0201AD04
	pop {r3, r4, r5, pc}
_021E7096:
	cmp r4, #3
	bne _021E70A0
	bl sub_0201AD4C
	pop {r3, r4, r5, pc}
_021E70A0:
	bl sub_0201AD28
_021E70A4:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy168_21e7064

	thumb_func_start ovy168_21e70a8
ovy168_21e70a8: ; 0x021E70A8
	push {r4, lr}
	add r4, r0, #0
	bl ovy168_21e9794
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021E70BC
	mov r0, #0
	pop {r4, pc}
_021E70BC:
	mov r1, #0x5c
	mul r1, r0
	add r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _021E70CC
	mov r0, #0
	pop {r4, pc}
_021E70CC:
	bl sub_0201AD70
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy168_21e70a8

	thumb_func_start ovy168_21e70d4
ovy168_21e70d4: ; 0x021E70D4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r6, r2, #0
	bl ovy168_21e9794
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021E7152
	add r7, r4, #0
	mov r1, #0x5c
	add r5, r0, #0
	mul r5, r1
	add r7, #8
	ldr r0, [r7, r5]
	cmp r0, #0
	beq _021E7152
	cmp r6, #4
	bhi _021E7152
	add r1, r6, r6
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E7106: ; jump table
	.short _021E711C - _021E7106 - 2 ; case 0
	.short _021E7116 - _021E7106 - 2 ; case 1
	.short _021E7110 - _021E7106 - 2 ; case 2
	.short _021E7122 - _021E7106 - 2 ; case 3
	.short _021E713C - _021E7106 - 2 ; case 4
_021E7110:
	bl sub_0201ADA0
	pop {r3, r4, r5, r6, r7, pc}
_021E7116:
	bl sub_0201AD7C
	pop {r3, r4, r5, r6, r7, pc}
_021E711C:
	bl sub_0201AD8C
	pop {r3, r4, r5, r6, r7, pc}
_021E7122:
	bl sub_0201AD70
	cmp r0, #0
	beq _021E7134
	add r4, #0x54
	ldr r1, [r4, r5]
	mov r0, #0x20
	orr r0, r1
	str r0, [r4, r5]
_021E7134:
	ldr r0, [r7, r5]
	bl sub_0201AD7C
	pop {r3, r4, r5, r6, r7, pc}
_021E713C:
	add r4, #0x54
	ldr r1, [r4, r5]
	lsl r2, r1, #0x1a
	lsr r2, r2, #0x1f
	beq _021E714E
	mov r0, #0x20
	bic r1, r0
	str r1, [r4, r5]
	pop {r3, r4, r5, r6, r7, pc}
_021E714E:
	bl sub_0201AD8C
_021E7152:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy168_21e70d4

	thumb_func_start ovy168_21e7154
ovy168_21e7154: ; 0x021E7154
	ldr r3, _021E7158 ; =ovy168_21e9648
	bx r3
	.align 2, 0
_021E7158: .word ovy168_21e9648
	thumb_func_end ovy168_21e7154

	thumb_func_start ovy168_21e715c
ovy168_21e715c: ; 0x021E715C
	push {r3, r4}
	cmp r2, #7
	bhi _021E71A6
	add r4, r2, r2
	add r4, pc
	ldrh r4, [r4, #6]
	lsl r4, r4, #0x10
	asr r4, r4, #0x10
	add pc, r4
_021E716E: ; jump table
	.short _021E717E - _021E716E - 2 ; case 0
	.short _021E717E - _021E716E - 2 ; case 1
	.short _021E7182 - _021E716E - 2 ; case 2
	.short _021E7182 - _021E716E - 2 ; case 3
	.short _021E7182 - _021E716E - 2 ; case 4
	.short _021E7182 - _021E716E - 2 ; case 5
	.short _021E7196 - _021E716E - 2 ; case 6
	.short _021E7196 - _021E716E - 2 ; case 7
_021E717E:
	ldr r3, _021E71B8 ; =0x021F327C
_021E7180:
	b _021E71A0
_021E7182:
	cmp r3, #3
	bne _021E718A
_021E7186:
	ldr r3, _021E71BC ; =0x021F33CC
	b _021E719E
_021E718A:
	cmp r3, #2
	bne _021E7190
	b _021E719C
_021E7190:
	ldr r3, _021E71C0 ; =0x021F32AC
	sub r2, r2, #2
	b _021E7180
_021E7196:
	cmp r3, #3
	bne _021E719C
	b _021E7186
_021E719C:
	ldr r3, _021E71C4 ; =0x021F3384
_021E719E:
	sub r2, r2, #2
_021E71A0:
	mov r0, #0xc
	mul r0, r2
	add r0, r3, r0
_021E71A6:
	ldr r2, [r0]
	str r2, [r1]
	ldr r2, [r0, #4]
	str r2, [r1, #4]
	ldr r0, [r0, #8]
	str r0, [r1, #8]
	pop {r3, r4}
	bx lr
	nop
_021E71B8: .word 0x021F327C
_021E71BC: .word 0x021F33CC
_021E71C0: .word 0x021F32AC
_021E71C4: .word 0x021F3384
	thumb_func_end ovy168_21e715c

	thumb_func_start ovy168_21e71c8
ovy168_21e71c8: ; 0x021E71C8
	ldr r3, _021E71CC ; =ovy168_21e96d4
	bx r3
	.align 2, 0
_021E71CC: .word ovy168_21e96d4
	thumb_func_end ovy168_21e71c8

	thumb_func_start ovy168_21e71d0
ovy168_21e71d0: ; 0x021E71D0
	push {r3, r4}
	cmp r0, #0
	beq _021E71E8
	mov r3, #0x51
	lsl r3, r3, #4
	ldr r4, [r0, r3]
	mov r2, #8
	lsl r1, r1, #0x1f
	bic r4, r2
	lsr r1, r1, #0x1c
	orr r1, r4
	str r1, [r0, r3]
_021E71E8:
	pop {r3, r4}
	bx lr
	thumb_func_end ovy168_21e71d0

	thumb_func_start ovy168_21e71ec
ovy168_21e71ec: ; 0x021E71EC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	bl ovy168_21e9794
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021E721E
	mov r1, #0x5c
	mul r1, r0
	add r0, r5, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _021E721E
	mov r1, #0x51
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1f
	bne _021E7218
	mov r4, #1
_021E7218:
	add r1, r4, #0
	bl sub_0201AECC
_021E721E:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy168_21e71ec

	thumb_func_start ovy168_21e7220
ovy168_21e7220: ; 0x021E7220
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	bl ovy168_21e9794
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021E7244
	mov r1, #0x5c
	mul r1, r0
	add r0, r5, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _021E7244
	add r1, r4, #0
	bl sub_0201AFA0
_021E7244:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy168_21e7220

	thumb_func_start ovy168_21e7248
ovy168_21e7248: ; 0x021E7248
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r7, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	add r4, r3, #0
	bl ovy168_21e9794
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021E7326
	add r1, r7, #0
	str r1, [sp, #0x20]
	add r1, #8
	str r1, [sp, #0x20]
	mov r1, #0x5c
	mul r1, r0
	ldr r0, [sp, #0x20]
	str r1, [sp, #0x24]
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _021E7326
	add r1, sp, #0x2c
	bl sub_0201AB0C
	cmp r6, #1
	bne _021E72A6
	mov r0, #1
	tst r0, r5
	beq _021E728E
	ldr r1, [sp, #0x2c]
	ldr r0, [r4]
	sub r0, r1, r0
	b _021E7294
_021E728E:
	ldr r1, [r4]
	ldr r0, [sp, #0x2c]
	add r0, r1, r0
_021E7294:
	str r0, [r4]
	ldr r1, [r4, #4]
	ldr r0, [sp, #0x30]
	add r0, r1, r0
	str r0, [r4, #4]
	ldr r1, [r4, #8]
	ldr r0, [sp, #0x34]
	add r0, r1, r0
	str r0, [r4, #8]
_021E72A6:
	cmp r6, #5
	bne _021E72B6
	add r0, r7, #0
	add r1, r4, #0
	add r2, r5, #0
	bl ovy168_21e9648
	mov r6, #1
_021E72B6:
	cmp r6, #6
	bne _021E72C6
	add r0, r7, #0
	add r1, r4, #0
	add r2, r5, #0
	bl ovy168_21e9648
	mov r6, #0
_021E72C6:
	cmp r6, #0
	bne _021E72DA
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x24]
	ldr r0, [r1, r0]
	add r1, r4, #0
	bl sub_0201AB24
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
_021E72DA:
	ldr r0, _021E732C ; =0x00000542
	add r2, r6, #0
	str r0, [sp, #0x28]
	add r0, r7, r0
	ldrb r1, [r0, r5]
	add r3, sp, #0x2c
	add r1, r1, #1
	strb r1, [r0, r5]
	ldr r1, [sp, #0x50]
	str r4, [sp]
	str r1, [sp, #4]
	ldr r1, [sp, #0x54]
	str r1, [sp, #8]
	ldr r1, [sp, #0x58]
	str r1, [sp, #0xc]
	ldr r1, _021E7330 ; =ovy168_21e86a4
	str r1, [sp, #0x10]
	ldr r1, _021E7334 ; =ovy168_21e8730
	str r1, [sp, #0x14]
	mov r1, #1
	str r1, [sp, #0x18]
	ldrb r0, [r0, r5]
	add r1, r5, #0
	str r0, [sp, #0x1c]
	add r0, r7, #0
	bl ovy168_21e84ec
	add r0, r5, #0
	bl ovy168_21e0d4c
	ldr r1, [sp, #0x28]
	sub r1, #0x2e
	ldr r1, [r7, r1]
	orr r1, r0
	ldr r0, [sp, #0x28]
	sub r0, #0x2e
	str r0, [sp, #0x28]
	str r1, [r7, r0]
_021E7326:
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E732C: .word 0x00000542
_021E7330: .word ovy168_21e86a4
_021E7334: .word ovy168_21e8730
	thumb_func_end ovy168_21e7248

	thumb_func_start ovy168_21e7338
ovy168_21e7338: ; 0x021E7338
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r0, #0
	add r4, r1, #0
	str r2, [sp, #0x20]
	add r7, r3, #0
	bl ovy168_21e9794
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021E73AA
	mov r1, #0x5c
	mul r1, r0
	add r0, r5, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _021E73AA
	add r1, sp, #0x24
	bl sub_0201ABA0
	mov r6, #0x55
	lsl r6, r6, #4
	add r0, r5, r6
	ldrb r1, [r0, r4]
	ldr r2, [sp, #0x20]
	add r3, sp, #0x24
	add r1, r1, #1
	strb r1, [r0, r4]
	ldr r1, [sp, #0x48]
	str r7, [sp]
	str r1, [sp, #4]
	ldr r1, [sp, #0x4c]
	str r1, [sp, #8]
	ldr r1, [sp, #0x50]
	str r1, [sp, #0xc]
	ldr r1, _021E73B0 ; =ovy168_21e8768
	str r1, [sp, #0x10]
	ldr r1, _021E73B4 ; =ovy168_21e87f0
	str r1, [sp, #0x14]
	mov r1, #0
	str r1, [sp, #0x18]
	ldrb r0, [r0, r4]
	add r1, r4, #0
	str r0, [sp, #0x1c]
	add r0, r5, #0
	bl ovy168_21e84ec
	add r0, r4, #0
	bl ovy168_21e0d4c
	add r1, r6, #0
	sub r1, #0x38
	ldr r1, [r5, r1]
	sub r6, #0x38
	orr r0, r1
	str r0, [r5, r6]
_021E73AA:
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E73B0: .word ovy168_21e8768
_021E73B4: .word ovy168_21e87f0
	thumb_func_end ovy168_21e7338

	thumb_func_start ovy168_21e73b8
ovy168_21e73b8: ; 0x021E73B8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r0, #0
	add r4, r1, #0
	str r2, [sp, #0x20]
	add r7, r3, #0
	bl ovy168_21e9794
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021E7428
	mov r1, #0x5c
	mul r1, r0
	add r0, r5, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _021E7428
	add r1, sp, #0x24
	bl sub_0201AB70
	ldr r6, _021E742C ; =0x0000055E
	ldr r2, [sp, #0x20]
	add r0, r5, r6
	ldrb r1, [r0, r4]
	add r3, sp, #0x24
	add r1, r1, #1
	strb r1, [r0, r4]
	ldr r1, [sp, #0x48]
	str r7, [sp]
	str r1, [sp, #4]
	ldr r1, [sp, #0x4c]
	str r1, [sp, #8]
	ldr r1, [sp, #0x50]
	str r1, [sp, #0xc]
	ldr r1, _021E7430 ; =ovy168_21e8824
	str r1, [sp, #0x10]
	ldr r1, _021E7434 ; =ovy168_21e88b0
	str r1, [sp, #0x14]
	mov r1, #0
	str r1, [sp, #0x18]
	ldrb r0, [r0, r4]
	add r1, r4, #0
	str r0, [sp, #0x1c]
	add r0, r5, #0
	bl ovy168_21e84ec
	add r0, r4, #0
	bl ovy168_21e0d4c
	add r1, r6, #0
	sub r1, #0x3e
	ldr r1, [r5, r1]
	sub r6, #0x3e
	orr r0, r1
	str r0, [r5, r6]
_021E7428:
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E742C: .word 0x0000055E
_021E7430: .word ovy168_21e8824
_021E7434: .word ovy168_21e88b0
	thumb_func_end ovy168_21e73b8

	thumb_func_start ovy168_21e7438
ovy168_21e7438: ; 0x021E7438
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r0, #0
	add r4, r1, #0
	str r2, [sp, #0x20]
	add r7, r3, #0
	bl ovy168_21e9794
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021E74A8
	mov r1, #0x5c
	mul r1, r0
	add r0, r5, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _021E74A8
	add r1, sp, #0x24
	bl sub_0201ABA0
	ldr r6, _021E74AC ; =0x0000056C
	ldr r2, [sp, #0x20]
	add r0, r5, r6
	ldrb r1, [r0, r4]
	add r3, sp, #0x24
	add r1, r1, #1
	strb r1, [r0, r4]
	ldr r1, [sp, #0x48]
	str r7, [sp]
	str r1, [sp, #4]
	ldr r1, [sp, #0x4c]
	str r1, [sp, #8]
	ldr r1, [sp, #0x50]
	str r1, [sp, #0xc]
	ldr r1, _021E74B0 ; =ovy168_21e88e8
	str r1, [sp, #0x10]
	ldr r1, _021E74B4 ; =ovy168_21e8974
	str r1, [sp, #0x14]
	mov r1, #0
	str r1, [sp, #0x18]
	ldrb r0, [r0, r4]
	add r1, r4, #0
	str r0, [sp, #0x1c]
	add r0, r5, #0
	bl ovy168_21e84ec
	add r0, r4, #0
	bl ovy168_21e0d4c
	add r1, r6, #0
	sub r1, #0x48
	ldr r1, [r5, r1]
	sub r6, #0x48
	orr r0, r1
	str r0, [r5, r6]
_021E74A8:
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E74AC: .word 0x0000056C
_021E74B0: .word ovy168_21e88e8
_021E74B4: .word ovy168_21e8974
	thumb_func_end ovy168_21e7438

	thumb_func_start ovy168_21e74b8
ovy168_21e74b8: ; 0x021E74B8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r0, #0
	add r4, r1, #0
	str r2, [sp, #0x20]
	add r7, r3, #0
	bl ovy168_21e9794
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021E7528
	mov r1, #0x5c
	mul r1, r0
	add r0, r5, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _021E7528
	add r1, sp, #0x24
	bl sub_0201ABD4
	ldr r6, _021E752C ; =0x0000057A
	ldr r2, [sp, #0x20]
	add r0, r5, r6
	ldrb r1, [r0, r4]
	add r3, sp, #0x24
	add r1, r1, #1
	strb r1, [r0, r4]
	ldr r1, [sp, #0x48]
	str r7, [sp]
	str r1, [sp, #4]
	ldr r1, [sp, #0x4c]
	str r1, [sp, #8]
	ldr r1, [sp, #0x50]
	str r1, [sp, #0xc]
	ldr r1, _021E7530 ; =ovy168_21e89ac
	str r1, [sp, #0x10]
	ldr r1, _021E7534 ; =ovy168_21e8a38
	str r1, [sp, #0x14]
	mov r1, #1
	str r1, [sp, #0x18]
	ldrb r0, [r0, r4]
	add r1, r4, #0
	str r0, [sp, #0x1c]
	add r0, r5, #0
	bl ovy168_21e84ec
	add r0, r4, #0
	bl ovy168_21e0d4c
	add r1, r6, #0
	sub r1, #0x5e
	ldr r1, [r5, r1]
	sub r6, #0x5e
	orr r0, r1
	str r0, [r5, r6]
_021E7528:
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E752C: .word 0x0000057A
_021E7530: .word ovy168_21e89ac
_021E7534: .word ovy168_21e8a38
	thumb_func_end ovy168_21e74b8

	thumb_func_start ovy168_21e7538
ovy168_21e7538: ; 0x021E7538
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	str r0, [sp, #0x10]
	add r0, #0x54
	str r0, [sp, #0x10]
	mov r0, #0x40
	str r1, [sp, #0x20]
	str r2, [sp, #0x24]
	mov r4, #0
	str r0, [sp, #0x14]
_021E754E:
	lsl r6, r4, #2
	add r0, sp, #0x20
	ldr r7, [r0, r6]
	add r0, r5, #0
	add r1, r7, #0
	bl ovy168_21e9794
	add r1, sp, #0x18
	str r0, [r1, r6]
	add r0, r5, #0
	add r1, r7, #0
	bl ovy168_21e7b24
	cmp r0, #0
	beq _021E75C6
	mov r2, #1
	eor r2, r4
	lsl r3, r2, #2
	add r2, sp, #0x20
	ldr r2, [r2, r3]
	add r0, r5, #0
	add r1, sp, #0x28
	bl ovy168_21e9648
	add r0, sp, #0x20
	ldr r0, [r0, r6]
	mov r2, #0
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	add r3, sp, #0x28
	bl ovy168_21e7248
	bl ovy168_21e008c
	ldr r1, [sp, #0xc]
	bl ovy168_21f1864
	add r0, sp, #0x18
	ldr r1, [r0, r6]
	mov r0, #0x5c
	mul r0, r1
	ldr r1, [sp, #0x10]
	ldr r2, [r1, r0]
	lsl r1, r2, #0x19
	lsr r1, r1, #0x1f
	beq _021E75C6
	ldr r1, [sp, #0x14]
	bic r2, r1
	ldr r1, [sp, #0x10]
	str r2, [r1, r0]
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #0
	bl ovy168_21e70d4
_021E75C6:
	add r4, r4, #1
	cmp r4, #2
	blt _021E754E
	mov r6, #0
	add r2, sp, #0x20
	add r4, sp, #0x18
	sub r0, r6, #1
_021E75D4:
	lsl r1, r6, #2
	ldr r3, [r4, r1]
	cmp r3, r0
	beq _021E75EC
	mov r1, #1
	eor r1, r6
	lsl r1, r1, #2
	mov r7, #0x5c
	mul r7, r3
	ldr r1, [r2, r1]
	add r3, r5, r7
	str r1, [r3, #0x50]
_021E75EC:
	add r6, r6, #1
	cmp r6, #2
	blt _021E75D4
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy168_21e7538

	thumb_func_start ovy168_21e75f8
ovy168_21e75f8: ; 0x021E75F8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r2, #0
	add r5, r0, #0
	add r4, r1, #0
	str r3, [sp, #4]
	cmp r6, #2
	beq _021E7628
	cmp r6, #3
	beq _021E7614
	cmp r6, #4
	beq _021E761E
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021E7614:
	mov r2, #1
	bl ovy168_21e6fc0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021E761E:
	mov r2, #0
	bl ovy168_21e6fc0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021E7628:
	ldr r7, _021E7690 ; =0x0000062F
	ldr r3, _021E7694 ; =0x021F4188
	add r0, r7, #0
	str r7, [sp]
	sub r0, #0xef
	ldrh r1, [r5, r0]
	ldr r0, _021E7698 ; =0x00007FFF
	mov r2, #0
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0x54
	bl GFL_HeapAllocate
	add r2, r0, #0
	str r5, [r2]
	str r4, [r2, #4]
	sub r7, #0xa7
	str r6, [r2, #0x14]
	mov r0, #0
	str r0, [r2, #0x44]
	ldr r0, [sp, #4]
	add r1, r5, r7
	str r0, [r2, #0x48]
	ldr r0, [sp, #0x20]
	mov r3, #0
	lsl r0, r0, #1
	str r0, [r2, #0x4c]
	ldrb r0, [r1, r4]
	add r0, r0, #1
	strb r0, [r1, r4]
	ldrb r0, [r1, r4]
	ldr r1, _021E769C ; =ovy168_21e8a70
	str r0, [r2, #0x50]
	ldr r0, [r5]
	bl sub_0203A614
	ldr r1, _021E76A0 ; =ovy168_21e8ad0
	mov r2, #2
	bl ovy168_21e035c
	add r0, r4, #0
	bl ovy168_21e0d4c
	ldr r1, _021E76A4 ; =0x00000528
	ldr r2, [r5, r1]
	orr r0, r2
	str r0, [r5, r1]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E7690: .word 0x0000062F
_021E7694: .word 0x021F4188
_021E7698: .word 0x00007FFF
_021E769C: .word ovy168_21e8a70
_021E76A0: .word ovy168_21e8ad0
_021E76A4: .word 0x00000528
	thumb_func_end ovy168_21e75f8

	thumb_func_start ovy168_21e76a8
ovy168_21e76a8: ; 0x021E76A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r5, r0, #0
	add r4, r1, #0
	str r2, [sp, #0x20]
	add r7, r3, #0
	bl ovy168_21e9794
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021E778A
	add r6, r5, #0
	mov r1, #0x5c
	mul r1, r0
	add r6, #8
	ldr r0, [r6, r1]
	str r1, [sp, #0x24]
	cmp r0, #0
	beq _021E778A
	bl sub_0201AE88
	cmp r0, #0
	beq _021E76F2
	ldr r0, [sp, #0x24]
	ldr r0, [r6, r0]
	bl sub_0201AE88
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021E7708
_021E76F2:
	ldr r0, [sp, #0x24]
	ldr r0, [r6, r0]
	bl sub_0201AE88
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021E7708:
	blx sub_0208DA4C
	str r0, [sp, #0x34]
	mov r0, #0
	str r0, [sp, #0x38]
	str r0, [sp, #0x3c]
	cmp r7, #0
	ble _021E772A
	lsl r0, r7, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021E7738
_021E772A:
	lsl r0, r7, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021E7738:
	blx sub_0208DA4C
	mov r1, #0
	ldr r6, _021E7790 ; =0x00000596
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r1, [sp, #0x30]
	add r0, r5, r6
	ldrb r2, [r0, r4]
	add r3, sp, #0x34
	add r2, r2, #1
	strb r2, [r0, r4]
	add r2, sp, #0x28
	str r2, [sp]
	ldr r2, [sp, #0x58]
	str r2, [sp, #4]
	ldr r2, [sp, #0x5c]
	str r2, [sp, #8]
	ldr r2, [sp, #0x60]
	str r2, [sp, #0xc]
	ldr r2, _021E7794 ; =ovy168_21e8b08
	str r2, [sp, #0x10]
	ldr r2, _021E7798 ; =ovy168_21e8b84
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	ldrb r0, [r0, r4]
	ldr r2, [sp, #0x20]
	add r1, r4, #0
	str r0, [sp, #0x1c]
	add r0, r5, #0
	bl ovy168_21e84ec
	add r0, r4, #0
	bl ovy168_21e0d4c
	add r1, r6, #0
	sub r1, #0x6a
	ldr r1, [r5, r1]
	sub r6, #0x6a
	orr r0, r1
	str r0, [r5, r6]
_021E778A:
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E7790: .word 0x00000596
_021E7794: .word ovy168_21e8b08
_021E7798: .word ovy168_21e8b84
	thumb_func_end ovy168_21e76a8

	thumb_func_start ovy168_21e779c
ovy168_21e779c: ; 0x021E779C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _021E7870 ; =0x00000671
	add r5, r1, #0
	str r0, [sp]
	mov r0, #0x15
	lsl r0, r0, #6
	ldrh r1, [r6, r0]
	ldr r0, _021E7874 ; =0x00007FFF
	ldr r3, _021E7878 ; =0x021F4188
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0x3c
	mov r2, #0
	mov r7, #0
	bl GFL_HeapAllocate
	add r4, r0, #0
	str r6, [r4]
	ldr r0, [r5, #4]
	str r0, [r4, #4]
	ldr r1, [r5, #8]
	str r1, [r4, #8]
	ldr r1, [r5, #0xc]
	str r1, [r4, #0xc]
	ldr r1, [r5, #0x10]
	str r1, [r4, #0x10]
	ldr r1, [r5, #0x14]
	str r1, [r4, #0x14]
	ldr r1, [r5, #0x18]
	str r1, [r4, #0x18]
	ldr r1, [r5, #0x1c]
	str r1, [r4, #0x1c]
	ldr r1, [r5, #0x20]
	str r1, [r4, #0x20]
	ldr r1, [r5, #0x24]
	str r1, [r4, #0x24]
	str r7, [r4, #0x30]
	mov r1, #1
	str r7, [r4, #0x34]
	tst r0, r1
	beq _021E7818
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021E7806
	cmp r0, #1
	beq _021E7806
	sub r0, r0, #4
	cmp r0, #1
	bhi _021E7810
_021E7806:
	ldr r0, [r5, #0xc]
	cmp r0, #2
	beq _021E7818
	cmp r0, #3
	beq _021E7818
_021E7810:
	ldr r1, [r4, #0xc]
	mov r0, #1
	eor r0, r1
	str r0, [r4, #0xc]
_021E7818:
	ldr r1, [r4, #8]
	mov r0, #1
	tst r1, r0
	beq _021E7824
	lsl r0, r0, #0x10
	b _021E7826
_021E7824:
	mov r0, #0
_021E7826:
	str r0, [r4, #0x28]
	mov r0, #1
	ldr r1, [r5, #0x18]
	lsl r0, r0, #0x10
	blx sub_0208D65C
	str r0, [r4, #0x2c]
	ldr r5, _021E787C ; =0x00000542
	ldr r1, [r4, #4]
	add r2, r6, r5
	ldrb r0, [r2, r1]
	mov r3, #0
	add r0, r0, #1
	strb r0, [r2, r1]
	ldr r0, [r4, #4]
	ldr r1, _021E7880 ; =ovy168_21e8bbc
	add r0, r6, r0
	ldrb r0, [r0, r5]
	add r2, r4, #0
	str r0, [r4, #0x38]
	ldr r0, [r6]
	bl sub_0203A614
	ldr r1, _021E7884 ; =ovy168_21e8e38
	mov r2, #2
	bl ovy168_21e035c
	ldr r0, [r4, #4]
	bl ovy168_21e0d4c
	add r1, r5, #0
	sub r1, #0x2e
	ldr r1, [r6, r1]
	sub r5, #0x2e
	orr r0, r1
	str r0, [r6, r5]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E7870: .word 0x00000671
_021E7874: .word 0x00007FFF
_021E7878: .word 0x021F4188
_021E787C: .word 0x00000542
_021E7880: .word ovy168_21e8bbc
_021E7884: .word ovy168_21e8e38
	thumb_func_end ovy168_21e779c

	thumb_func_start ovy168_21e7888
ovy168_21e7888: ; 0x021E7888
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, _021E792C ; =0x000006AA
	add r6, r1, #0
	str r0, [sp]
	mov r0, #0x15
	lsl r0, r0, #6
	ldrh r1, [r4, r0]
	ldr r0, _021E7930 ; =0x00007FFF
	ldr r3, _021E7934 ; =0x021F4188
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0x2c
	mov r2, #0
	mov r7, #0
	bl GFL_HeapAllocate
	add r5, r0, #0
	ldr r1, [r6, #4]
	add r0, r4, #0
	bl ovy168_21e9794
	sub r1, r7, #1
	cmp r0, r1
	beq _021E7928
	add r2, r4, #0
	mov r1, #0x5c
	mul r1, r0
	add r2, #8
	ldr r0, [r2, r1]
	mov ip, r1
	cmp r0, #0
	beq _021E7928
	add r3, r5, #0
	mov r7, #5
_021E78D4:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r7, r7, #1
	bne _021E78D4
	ldr r0, [r6]
	add r1, r5, #0
	str r0, [r3]
	str r4, [r5]
	mov r0, ip
	ldr r0, [r2, r0]
	add r1, #8
	bl sub_0201AB0C
	ldr r6, _021E7938 ; =0x00000542
	ldr r1, [r5, #4]
	add r2, r4, r6
	ldrb r0, [r2, r1]
	mov r3, #0
	add r0, r0, #1
	strb r0, [r2, r1]
	ldr r0, [r5, #4]
	ldr r1, _021E793C ; =ovy168_21e8e70
	add r0, r4, r0
	ldrb r0, [r0, r6]
	add r2, r5, #0
	str r0, [r5, #0x28]
	ldr r0, [r4]
	bl sub_0203A614
	ldr r1, _021E7940 ; =ovy168_21e8f9c
	mov r2, #2
	bl ovy168_21e035c
	ldr r0, [r5, #4]
	bl ovy168_21e0d4c
	add r1, r6, #0
	sub r1, #0x2e
	ldr r1, [r4, r1]
	sub r6, #0x2e
	orr r0, r1
	str r0, [r4, r6]
_021E7928:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E792C: .word 0x000006AA
_021E7930: .word 0x00007FFF
_021E7934: .word 0x021F4188
_021E7938: .word 0x00000542
_021E793C: .word ovy168_21e8e70
_021E7940: .word ovy168_21e8f9c
	thumb_func_end ovy168_21e7888

	thumb_func_start ovy168_21e7944
ovy168_21e7944: ; 0x021E7944
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r5, r0, #0
	add r4, r1, #0
	str r2, [sp, #0x20]
	add r7, r3, #0
	bl ovy168_21e9794
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021E7A26
	add r6, r5, #0
	mov r1, #0x5c
	mul r1, r0
	add r6, #8
	ldr r0, [r6, r1]
	str r1, [sp, #0x24]
	cmp r0, #0
	beq _021E7A26
	bl sub_0201AF44
	cmp r0, #0
	beq _021E798E
	ldr r0, [sp, #0x24]
	ldr r0, [r6, r0]
	bl sub_0201AF44
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021E79A4
_021E798E:
	ldr r0, [sp, #0x24]
	ldr r0, [r6, r0]
	bl sub_0201AF44
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021E79A4:
	blx sub_0208DA4C
	str r0, [sp, #0x34]
	mov r0, #0
	str r0, [sp, #0x38]
	str r0, [sp, #0x3c]
	cmp r7, #0
	ble _021E79C6
	lsl r0, r7, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021E79D4
_021E79C6:
	lsl r0, r7, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021E79D4:
	blx sub_0208DA4C
	mov r1, #0
	ldr r6, _021E7A2C ; =0x000005A4
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r1, [sp, #0x30]
	add r0, r5, r6
	ldrb r2, [r0, r4]
	add r3, sp, #0x34
	add r2, r2, #1
	strb r2, [r0, r4]
	add r2, sp, #0x28
	str r2, [sp]
	ldr r2, [sp, #0x58]
	str r2, [sp, #4]
	ldr r2, [sp, #0x5c]
	str r2, [sp, #8]
	ldr r2, [sp, #0x60]
	str r2, [sp, #0xc]
	ldr r2, _021E7A30 ; =ovy168_21e8fd4
	str r2, [sp, #0x10]
	ldr r2, _021E7A34 ; =ovy168_21e906c
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	ldrb r0, [r0, r4]
	ldr r2, [sp, #0x20]
	add r1, r4, #0
	str r0, [sp, #0x1c]
	add r0, r5, #0
	bl ovy168_21e84ec
	add r0, r4, #0
	bl ovy168_21e0d4c
	add r1, r6, #0
	sub r1, #0x74
	ldr r1, [r5, r1]
	sub r6, #0x74
	orr r0, r1
	str r0, [r5, r6]
_021E7A26:
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E7A2C: .word 0x000005A4
_021E7A30: .word ovy168_21e8fd4
_021E7A34: .word ovy168_21e906c
	thumb_func_end ovy168_21e7944

	thumb_func_start ovy168_21e7a38
ovy168_21e7a38: ; 0x021E7A38
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r6, #0
	bl ovy168_21e7b24
	cmp r0, #0
	beq _021E7A5E
	add r0, r5, #0
	add r1, r4, #0
	bl ovy168_21e9794
	mov r1, #0x5c
	mul r1, r0
	add r0, r5, r1
	ldr r0, [r0, #8]
	bl sub_0201AEE8
	add r6, r0, #0
_021E7A5E:
	add r0, r4, #0
	bl ovy168_21e0d4c
	ldr r7, _021E7AF0 ; =0x00000514
	ldr r1, [r5, r7]
	tst r0, r1
	bne _021E7AE8
	add r0, r4, #0
	bl ovy168_21e0d4c
	add r1, r7, #4
	ldr r1, [r5, r1]
	tst r0, r1
	bne _021E7AE8
	add r0, r4, #0
	bl ovy168_21e0d4c
	add r1, r7, #0
	add r1, #0x10
	ldr r1, [r5, r1]
	tst r0, r1
	bne _021E7AE8
	add r0, r4, #0
	bl ovy168_21e0d4c
	add r1, r7, #0
	add r1, #0xc
	ldr r1, [r5, r1]
	tst r0, r1
	bne _021E7AE8
	add r0, r4, #0
	bl ovy168_21e0d4c
	add r1, r7, #0
	add r1, #8
	ldr r1, [r5, r1]
	tst r0, r1
	bne _021E7AE8
	add r0, r4, #0
	bl ovy168_21e0d4c
	add r1, r7, #0
	add r1, #0x14
	ldr r1, [r5, r1]
	tst r0, r1
	bne _021E7AE8
	add r0, r4, #0
	bl ovy168_21e0d4c
	add r1, r7, #0
	add r1, #0x18
	ldr r1, [r5, r1]
	tst r0, r1
	bne _021E7AE8
	add r0, r4, #0
	bl ovy168_21e0d4c
	add r1, r7, #0
	add r1, #0x1c
	ldr r1, [r5, r1]
	tst r0, r1
	bne _021E7AE8
	sub r0, r7, #4
	ldr r0, [r5, r0]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	bne _021E7AE8
	cmp r6, #0
	beq _021E7AEC
_021E7AE8:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E7AEC:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E7AF0: .word 0x00000514
	thumb_func_end ovy168_21e7a38

	thumb_func_start ovy168_21e7af4
ovy168_21e7af4: ; 0x021E7AF4
	push {r3, r4, r5, lr}
	mov r4, #0
	add r5, r0, #0
	cmp r4, #8
	bge _021E7B20
_021E7AFE:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy168_21e7b24
	cmp r0, #0
	beq _021E7B1A
	add r0, r5, #0
	add r1, r4, #0
	bl ovy168_21e7a38
	cmp r0, #0
	beq _021E7B1A
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E7B1A:
	add r4, r4, #1
	cmp r4, #8
	blt _021E7AFE
_021E7B20:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy168_21e7af4

	thumb_func_start ovy168_21e7b24
ovy168_21e7b24: ; 0x021E7B24
	push {r3, lr}
	bl ovy168_21e9794
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021E7B36
	mov r0, #1
	pop {r3, pc}
_021E7B36:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy168_21e7b24

	thumb_func_start ovy168_21e7b3c
ovy168_21e7b3c: ; 0x021E7B3C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r2, #0
	str r3, [sp, #4]
	bl ovy168_21e9794
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021E7B7C
	mov r7, #0x5c
	add r4, r0, #0
	mul r4, r7
	add r0, r5, r4
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _021E7B7C
	ldr r1, [sp, #0x24]
	mov r3, #0
	str r1, [sp]
	add r1, r6, #0
	add r6, sp, #0x20
	ldrsb r3, [r6, r3]
	ldr r2, [sp, #4]
	bl sub_0201AE2C
	add r5, #0x54
	ldr r0, [r5, r4]
	add r7, #0xa4
	orr r0, r7
	str r0, [r5, r4]
_021E7B7C:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy168_21e7b3c

	thumb_func_start ovy168_21e7b80
ovy168_21e7b80: ; 0x021E7B80
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r2, #0
	add r6, r3, #0
	bl ovy168_21e9794
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021E7BAA
	mov r1, #0x5c
	mul r1, r0
	add r0, r5, r1
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _021E7BAA
	ldr r0, [r5, #4]
	add r2, r4, #0
	add r3, r6, #0
	bl sub_0201AFB0
_021E7BAA:
	pop {r4, r5, r6, pc}
	thumb_func_end ovy168_21e7b80

	thumb_func_start ovy168_21e7bac
ovy168_21e7bac: ; 0x021E7BAC
	push {r4, lr}
	add r4, r0, #0
	bl ovy168_21e9794
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021E7BCE
	mov r1, #0x5c
	mul r1, r0
	add r0, r4, r1
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _021E7BCE
	ldr r0, [r4, #4]
	bl sub_0201B128
_021E7BCE:
	pop {r4, pc}
	thumb_func_end ovy168_21e7bac

	thumb_func_start ovy168_21e7bd0
ovy168_21e7bd0: ; 0x021E7BD0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	bl ovy168_21e9794
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021E7CAA
	mov r1, #0x5c
	add r4, r0, #0
	mul r4, r1
	add r0, r5, r4
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _021E7CAA
	add r7, r5, #0
	add r7, #0x34
	add r0, r6, #0
	mov r1, #5
	mov r2, #0
	bl sub_0201CCF8
	str r0, [r7, r4]
	add r0, r5, #0
	str r0, [sp]
	add r0, #0x38
	str r0, [sp]
	add r0, r6, #0
	mov r1, #0x6f
	mov r2, #0
	bl sub_0201CCF8
	add r1, r0, #0
	ldr r0, [sp]
	mov r2, #0x26
	str r1, [r0, r4]
	ldr r0, [r7, r4]
	lsl r1, r1, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsr r1, r1, #0x10
	bl sub_0201EF1C
	add r1, r5, r4
	add r1, #0x40
	strh r0, [r1]
	add r0, r6, #0
	mov r1, #0
	mov r2, #0
	bl sub_0201CCF8
	add r1, r5, r4
	str r0, [r1, #0x3c]
	add r0, r6, #0
	mov r1, #0x98
	mov r2, #0
	bl sub_0201CCF8
	add r1, r5, r4
	str r0, [r1, #0x44]
	add r0, r6, #0
	bl sub_0201CDAC
	cmp r0, #1
	bne _021E7C60
	add r2, r5, #0
	add r2, #0x48
	ldr r1, [r2, r4]
	mov r0, #2
	orr r0, r1
	str r0, [r2, r4]
_021E7C60:
	add r0, r6, #0
	mov r1, #0xb2
	mov r2, #0
	bl sub_0201CCF8
	cmp r0, #1
	bne _021E7C7A
	add r2, r5, #0
	add r2, #0x48
	ldr r1, [r2, r4]
	mov r0, #8
	orr r0, r1
	str r0, [r2, r4]
_021E7C7A:
	add r0, r6, #0
	mov r1, #0xa0
	mov r2, #0
	bl sub_0201CCF8
	add r7, r0, #0
	add r0, r6, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_0201CCF8
	add r1, r0, #0
	add r0, r7, #0
	bl sub_0203373C
	add r1, r5, r4
	add r1, #0x42
	strh r0, [r1]
	add r5, #0x54
	mov r0, #2
	ldr r1, [r5, r4]
	lsl r0, r0, #8
	orr r0, r1
	str r0, [r5, r4]
_021E7CAA:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy168_21e7bd0

	thumb_func_start ovy168_21e7cac
ovy168_21e7cac: ; 0x021E7CAC
	push {r4, lr}
	add r4, r0, #0
	bl ovy168_21e9794
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021E7CC0
	mov r0, #0
	pop {r4, pc}
_021E7CC0:
	mov r1, #0x5c
	mul r1, r0
	add r1, r4, r1
	ldr r0, [r1, #8]
	cmp r0, #0
	bne _021E7CD0
	mov r0, #0
	pop {r4, pc}
_021E7CD0:
	add r1, #0x40
	ldrh r0, [r1]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy168_21e7cac

	thumb_func_start ovy168_21e7cd8
ovy168_21e7cd8: ; 0x021E7CD8
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #0xff
	bne _021E7CE4
	mov r0, #0
	pop {r4, pc}
_021E7CE4:
	bl ovy168_21e9794
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021E7CF4
	mov r0, #0
	pop {r4, pc}
_021E7CF4:
	mov r1, #0x5c
	mul r1, r0
	add r1, r4, r1
	ldr r0, [r1, #8]
	cmp r0, #0
	bne _021E7D04
	mov r0, #0
	pop {r4, pc}
_021E7D04:
	ldr r0, [r1, #0x48]
	pop {r4, pc}
	thumb_func_end ovy168_21e7cd8

	thumb_func_start ovy168_21e7d08
ovy168_21e7d08: ; 0x021E7D08
	push {r4, lr}
	add r4, r0, #0
	bl ovy168_21e9794
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021E7D1C
	mov r0, #0
	pop {r4, pc}
_021E7D1C:
	mov r1, #0x5c
	mul r1, r0
	add r1, r4, r1
	ldr r0, [r1, #8]
	cmp r0, #0
	bne _021E7D2C
	mov r0, #0
	pop {r4, pc}
_021E7D2C:
	ldr r0, [r1, #0x34]
	ldr r1, [r1, #0x38]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	lsr r0, r0, #0x10
	lsr r1, r1, #0x10
	mov r2, #0x10
	bl sub_0201EF1C
	cmp r0, #0
	beq _021E7D46
	mov r0, #1
	pop {r4, pc}
_021E7D46:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy168_21e7d08

	thumb_func_start ovy168_21e7d4c
ovy168_21e7d4c: ; 0x021E7D4C
	push {r4, lr}
	add r4, r0, #0
	bl ovy168_21e9794
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021E7D60
	mov r0, #0
	pop {r4, pc}
_021E7D60:
	mov r1, #0x5c
	mul r1, r0
	add r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _021E7D70
	mov r0, #0
	pop {r4, pc}
_021E7D70:
	bl sub_0201AE00
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy168_21e7d4c

	thumb_func_start ovy168_21e7d78
ovy168_21e7d78: ; 0x021E7D78
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r0, #0
	add r7, r1, #0
	str r2, [sp]
	add r6, r3, #0
	bl ovy168_21e9794
	mov r1, #0
	mvn r1, r1
	str r0, [sp, #4]
	cmp r0, r1
	beq _021E7E72
	add r4, r0, #0
	mov r1, #0x5c
	add r0, r5, #0
	str r0, [sp, #8]
	add r0, #8
	mul r4, r1
	str r0, [sp, #8]
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _021E7E72
	ldr r0, [sp]
	cmp r0, #0
	bne _021E7DF2
	add r1, r5, r4
	ldr r0, [r5, #4]
	ldr r1, [r1, #0x3c]
	bl sub_0201C188
	add r7, r5, #0
	add r7, #8
	add r2, r5, #0
	add r2, #0xc
	ldr r0, [r5, #4]
	ldr r1, [r7, r4]
	add r2, r2, r4
	bl sub_02019BD8
	ldr r0, [r7, r4]
	ldr r1, [sp, #4]
	ldr r2, _021E7E78 ; =ovy168_21e94b8
	mov r3, #1
	bl sub_0201AE08
	cmp r6, #0
	beq _021E7DE4
	add r2, r5, #0
	add r2, #0x48
	ldr r1, [r2, r4]
	mov r0, #1
	bic r1, r0
	str r1, [r2, r4]
_021E7DE4:
	add r5, #0x48
	ldr r1, [r5, r4]
	mov r0, #4
	bic r1, r0
	add sp, #0x30
	str r1, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
_021E7DF2:
	bl sub_02033768
	str r0, [sp, #0xc]
	mov r0, #1
	and r0, r7
	beq _021E7E02
	ldr r1, _021E7E7C ; =0x00003AAC
	b _021E7E04
_021E7E02:
	ldr r1, _021E7E80 ; =0x00003AB2
_021E7E04:
	str r1, [sp, #0x10]
	ldr r1, _021E7E84 ; =0x00003AB8
	cmp r0, #0
	str r1, [sp, #0x14]
	beq _021E7E12
	sub r1, #0xb
	b _021E7E14
_021E7E12:
	sub r1, r1, #5
_021E7E14:
	str r1, [sp, #0x18]
	ldr r1, _021E7E88 ; =0x00003AAE
	cmp r0, #0
	bne _021E7E1E
	ldr r1, _021E7E8C ; =0x00003AB4
_021E7E1E:
	str r1, [sp, #0x1c]
	ldr r1, _021E7E90 ; =0x00003AAF
	cmp r0, #0
	bne _021E7E28
	ldr r1, _021E7E94 ; =0x00003AB5
_021E7E28:
	str r1, [sp, #0x20]
	ldr r1, _021E7E98 ; =0x00003AB0
	cmp r0, #0
	bne _021E7E32
	ldr r1, _021E7E9C ; =0x00003AB6
_021E7E32:
	str r1, [sp, #0x24]
	cmp r0, #0
	beq _021E7E3C
	ldr r0, _021E7EA0 ; =0x00003AB1
	b _021E7E3E
_021E7E3C:
	ldr r0, _021E7EA4 ; =0x00003AB7
_021E7E3E:
	str r0, [sp, #0x28]
	mov r0, #0
	str r0, [sp, #0x2c]
	ldr r1, [sp, #8]
	ldr r0, [r5, #4]
	ldr r1, [r1, r4]
	add r2, sp, #0xc
	bl sub_02019BD8
	add r0, r5, #0
	add r1, r7, #0
	bl ovy168_21e7bac
	cmp r6, #0
	beq _021E7E68
	add r2, r5, #0
	add r2, #0x48
	ldr r1, [r2, r4]
	mov r0, #1
	orr r0, r1
	str r0, [r2, r4]
_021E7E68:
	add r5, #0x48
	ldr r1, [r5, r4]
	mov r0, #4
	orr r0, r1
	str r0, [r5, r4]
_021E7E72:
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E7E78: .word ovy168_21e94b8
_021E7E7C: .word 0x00003AAC
_021E7E80: .word 0x00003AB2
_021E7E84: .word 0x00003AB8
_021E7E88: .word 0x00003AAE
_021E7E8C: .word 0x00003AB4
_021E7E90: .word 0x00003AAF
_021E7E94: .word 0x00003AB5
_021E7E98: .word 0x00003AB0
_021E7E9C: .word 0x00003AB6
_021E7EA0: .word 0x00003AB1
_021E7EA4: .word 0x00003AB7
	thumb_func_end ovy168_21e7d78

	thumb_func_start ovy168_21e7ea8
ovy168_21e7ea8: ; 0x021E7EA8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r2, #0
	bl ovy168_21e9794
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021E7EDE
	add r6, r5, #0
	mov r1, #0x5c
	add r4, r0, #0
	mul r4, r1
	add r6, #8
	ldr r0, [r6, r4]
	cmp r0, #0
	beq _021E7EDE
	add r1, r5, r4
	ldr r0, [r5, #4]
	ldr r1, [r1, #0x3c]
	bl sub_0201C188
	ldr r0, [r5, #4]
	ldr r1, [r6, r4]
	add r2, r7, #0
	bl sub_0201AF54
_021E7EDE:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy168_21e7ea8

	thumb_func_start ovy168_21e7ee0
ovy168_21e7ee0: ; 0x021E7EE0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r6, r2, #0
	str r1, [sp]
	bl ovy168_21e9794
	add r5, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl ovy168_21e9794
	add r7, r4, #0
	mov r2, #0x5c
	add r1, r5, #0
	mul r1, r2
	add r3, r0, #0
	mul r3, r2
	add r6, r4, r1
	ldr r0, [r6, #0xc]
	add r7, #0xc
	str r0, [r7, r3]
	ldr r0, [r6, #0x14]
	add r5, r4, r3
	str r0, [r5, #0x14]
	ldr r0, [sp]
	mov r2, #1
	tst r0, r2
	ldr r0, [r6, #0x10]
	beq _021E7F3C
	add r0, #9
	str r0, [r5, #0x10]
	ldr r0, [r6, #0x18]
	add r0, #9
	str r0, [r5, #0x18]
	ldr r0, [r6, #0x1c]
	add r0, #9
	str r0, [r5, #0x1c]
	ldr r0, [r6, #0x20]
	add r0, #9
	str r0, [r5, #0x20]
	ldr r0, [r6, #0x24]
	add r0, #9
	str r0, [r5, #0x24]
	ldr r0, [r6, #0x28]
	add r0, #9
	b _021E7F5C
_021E7F3C:
	sub r0, #9
	str r0, [r5, #0x10]
	ldr r0, [r6, #0x18]
	sub r0, #9
	str r0, [r5, #0x18]
	ldr r0, [r6, #0x1c]
	sub r0, #9
	str r0, [r5, #0x1c]
	ldr r0, [r6, #0x20]
	sub r0, #9
	str r0, [r5, #0x20]
	ldr r0, [r6, #0x24]
	sub r0, #9
	str r0, [r5, #0x24]
	ldr r0, [r6, #0x28]
	sub r0, #9
_021E7F5C:
	add r2, r4, r3
	str r0, [r5, #0x28]
	add r6, r4, r1
	add r5, r2, #0
	add r6, #0x34
	add r5, #0x34
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldr r1, [r2, #8]
	ldr r0, [r4, #4]
	add r2, r7, r3
	bl sub_02019BD8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy168_21e7ee0

	thumb_func_start ovy168_21e7f7c
ovy168_21e7f7c: ; 0x021E7F7C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	bl ovy168_21e9794
	add r7, r5, #0
	mov r1, #0x5c
	add r4, r0, #0
	mul r4, r1
	add r7, #0xc
	add r3, r7, r4
	mov r2, #4
_021E7F94:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021E7F94
	ldr r0, [r6]
	add r1, r5, r4
	str r0, [r3]
	ldr r0, [r5, #4]
	ldr r1, [r1, #0x3c]
	bl sub_0201C188
	add r1, r5, r4
	ldr r0, [r5, #4]
	ldr r1, [r1, #8]
	add r2, r7, r4
	bl sub_02019BD8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy168_21e7f7c

	thumb_func_start ovy168_21e7fb8
ovy168_21e7fb8: ; 0x021E7FB8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	add r4, r1, #0
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	bl ovy168_21e9794
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021E7FD6
	add sp, #0x24
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021E7FD6:
	mov r1, #0x5c
	mul r1, r0
	add r0, r5, r1
	ldr r0, [r0, #8]
	str r1, [sp, #0x18]
	cmp r0, #0
	bne _021E7FEA
	add sp, #0x24
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021E7FEA:
	cmp r4, #7
	bhi _021E804A
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E7FFA: ; jump table
	.short _021E800A - _021E7FFA - 2 ; case 0
	.short _021E800A - _021E7FFA - 2 ; case 1
	.short _021E8010 - _021E7FFA - 2 ; case 2
	.short _021E8010 - _021E7FFA - 2 ; case 3
	.short _021E8010 - _021E7FFA - 2 ; case 4
	.short _021E8010 - _021E7FFA - 2 ; case 5
	.short _021E8034 - _021E7FFA - 2 ; case 6
	.short _021E8034 - _021E7FFA - 2 ; case 7
_021E800A:
	ldr r0, _021E80D0 ; =0x021F31EC
	lsl r1, r4, #2
_021E800E:
	b _021E8048
_021E8010:
	mov r0, #0x51
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	lsl r1, r0, #0x1e
	lsr r1, r1, #0x1f
	beq _021E8024
_021E801C:
	sub r0, r4, #2
	lsl r1, r0, #2
	ldr r0, _021E80D4 ; =0x021F321C
	b _021E8048
_021E8024:
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _021E802C
	b _021E8042
_021E802C:
	sub r0, r4, #2
	lsl r1, r0, #2
	ldr r0, _021E80D8 ; =0x021F320C
	b _021E800E
_021E8034:
	mov r0, #0x51
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	beq _021E8042
	b _021E801C
_021E8042:
	sub r0, r4, #2
	lsl r1, r0, #2
	ldr r0, _021E80DC ; =0x021F3294
_021E8048:
	ldr r7, [r0, r1]
_021E804A:
	bl ovy168_21e012c
	add r1, sp, #0x20
	mov r6, #0
	str r1, [sp, #0x1c]
	cmp r0, #0
	beq _021E8066
	ldr r2, [sp, #0x1c]
	add r1, r4, #0
	bl ovy167_219d228
	cmp r0, #0
	bne _021E8068
	b _021E8066
_021E8066:
	str r6, [sp, #0x1c]
_021E8068:
	ldr r0, [sp, #0x38]
	cmp r0, #0
	bne _021E8074
	ldr r0, [sp, #0x3c]
	cmp r0, #0
	beq _021E8076
_021E8074:
	mov r6, #1
_021E8076:
	mov r1, #2
	ldr r0, [sp, #0x10]
	lsl r1, r1, #0x1e
	cmp r0, r1
	bne _021E8094
	ldr r0, [sp, #0x18]
	add r0, r5, r0
	add r0, #0x42
	ldrh r0, [r0]
	cmp r0, #1
	bne _021E8090
	ldr r0, _021E80E0 ; =0xFFFFF600
	b _021E8092
_021E8090:
	mov r0, #0
_021E8092:
	str r0, [sp, #0x10]
_021E8094:
	ldr r0, [sp, #0x38]
	lsl r2, r7, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x3c]
	lsr r2, r2, #0x18
	str r0, [sp, #4]
	ldr r0, [sp, #0x40]
	add r3, r6, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x1c]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	add r1, r5, r0
	ldr r0, [r1, #0x34]
	ldr r1, [r1, #0x38]
	bl sub_020069F4
	ldr r1, [sp, #0x14]
	add r4, r0, #0
	lsl r1, r1, #0x18
	asr r1, r1, #0x18
	bl sub_02006AFC
	ldr r1, [sp, #0x10]
	add r0, r4, #0
	bl sub_02006B5C
	add r0, r4, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021E80D0: .word 0x021F31EC
_021E80D4: .word 0x021F321C
_021E80D8: .word 0x021F320C
_021E80DC: .word 0x021F3294
_021E80E0: .word 0xFFFFF600
	thumb_func_end ovy168_21e7fb8

	thumb_func_start ovy168_21e80e4
ovy168_21e80e4: ; 0x021E80E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _021E8150 ; =0x0000094A
	mov r4, #0x15
	str r0, [sp]
	lsl r4, r4, #6
	add r6, r1, #0
	ldrh r1, [r5, r4]
	ldr r0, _021E8154 ; =0x00007FFF
	str r3, [sp, #4]
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	add r7, r2, #0
	ldr r3, _021E8158 ; =0x021F4188
	lsr r0, r0, #0x10
	mov r1, #0x24
	mov r2, #0
	bl GFL_HeapAllocate
	add r2, r0, #0
	str r5, [r2]
	mov r1, #2
	ldr r0, [r2, #4]
	lsl r1, r1, #0x1e
	and r0, r1
	sub r1, r1, #1
	and r0, r1
	ldr r1, [sp, #4]
	mov r3, #0
	lsl r1, r1, #0x1f
	orr r0, r1
	str r0, [r2, #4]
	add r0, r4, #0
	str r6, [r2, #8]
	str r7, [r2, #0xc]
	sub r0, #0x30
	ldr r1, [r5, r0]
	mov r0, #4
	orr r0, r1
	sub r4, #0x30
	str r0, [r5, r4]
	ldr r0, [r5]
	ldr r1, _021E815C ; =ovy168_21e91a8
	bl sub_0203A614
	ldr r1, _021E8160 ; =ovy168_21e94a0
	mov r2, #2
	bl ovy168_21e035c
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E8150: .word 0x0000094A
_021E8154: .word 0x00007FFF
_021E8158: .word 0x021F4188
_021E815C: .word ovy168_21e91a8
_021E8160: .word ovy168_21e94a0
	thumb_func_end ovy168_21e80e4

	thumb_func_start ovy168_21e8164
ovy168_21e8164: ; 0x021E8164
	push {r4, lr}
	add r4, r0, #0
	bl ovy168_21e9794
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021E8178
	mov r0, #0
	pop {r4, pc}
_021E8178:
	mov r1, #0x5c
	mul r1, r0
	add r1, r4, r1
	ldr r0, [r1, #8]
	cmp r0, #0
	bne _021E8188
	mov r0, #0
	pop {r4, pc}
_021E8188:
	ldr r0, [r1, #0x44]
	pop {r4, pc}
	thumb_func_end ovy168_21e8164

	thumb_func_start ovy168_21e818c
ovy168_21e818c: ; 0x021E818C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r6, #1
	add r0, r3, #0
	add r4, r1, #0
	tst r0, r6
	beq _021E819C
	mov r6, #0
_021E819C:
	add r1, r2, #0
	add r0, r4, #0
	add r2, r6, #0
	bl sub_0201BFDC
	add r0, r4, #0
	mov r1, #0
	mov r2, #0
	bl sub_0201CCF8
	add r1, r0, #0
	ldr r0, [r5, #4]
	bl sub_0201C188
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy168_21e818c

	thumb_func_start ovy168_21e81bc
ovy168_21e81bc: ; 0x021E81BC
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r6, r0, #0
	add r7, r2, #0
	bl ovy168_21e9794
	sub r1, r4, #1
	cmp r0, r1
	bne _021E81D2
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E81D2:
	add r5, r0, #0
	mov r1, #0x5c
	add r0, r6, #0
	str r0, [sp]
	add r0, #8
	mul r5, r1
	str r0, [sp]
	ldr r0, [r0, r5]
	cmp r0, #0
	bne _021E81EA
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E81EA:
	bl sub_0201AFA8
	cmp r7, r0
	bge _021E8202
	ldr r0, [sp]
	add r1, r7, #0
	ldr r0, [r0, r5]
	bl sub_0201AF04
	mov r4, #1
	add r0, r6, r5
	str r4, [r0, #0x4c]
_021E8202:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy168_21e81bc

	thumb_func_start ovy168_21e8208
ovy168_21e8208: ; 0x021E8208
	push {r4, lr}
	add r4, r0, #0
	bl ovy168_21e9794
	add r1, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _021E822E
	mov r0, #0x5c
	mul r0, r1
	add r0, r4, r0
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _021E822E
	ldr r2, _021E8230 ; =ovy168_21e9634
	mov r3, #1
	bl sub_0201AE08
_021E822E:
	pop {r4, pc}
	.align 2, 0
_021E8230: .word ovy168_21e9634
	thumb_func_end ovy168_21e8208

	thumb_func_start ovy168_21e8234
ovy168_21e8234: ; 0x021E8234
	push {r4, lr}
	add r4, r0, #0
	bl ovy168_21e9794
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021E8248
	mov r0, #0
	pop {r4, pc}
_021E8248:
	mov r1, #0x5c
	mul r1, r0
	add r1, r4, r1
	ldr r0, [r1, #8]
	cmp r0, #0
	bne _021E8258
	mov r0, #0
	pop {r4, pc}
_021E8258:
	ldr r0, [r1, #0x4c]
	pop {r4, pc}
	thumb_func_end ovy168_21e8234

	thumb_func_start ovy168_21e825c
ovy168_21e825c: ; 0x021E825C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	add r7, r1, #0
	bl ovy168_21e9794
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021E82F8
	add r6, r5, #0
	mov r1, #0x5c
	add r4, r0, #0
	mul r4, r1
	add r6, #8
	ldr r0, [r6, r4]
	cmp r0, #0
	beq _021E82F8
	add r0, r5, #0
	add r1, sp, #0x18
	add r2, r7, #0
	bl ovy168_21e9648
	add r7, r5, #0
	add r7, #8
	ldr r0, [r7, r4]
	add r1, sp, #0xc
	bl sub_0201AB0C
	ldr r0, [r7, r4]
	add r1, sp, #0
	bl sub_0201AB3C
	add r5, #0x54
	ldr r1, [r5, r4]
	mov r0, #0x40
	bic r1, r0
	str r1, [r5, r4]
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0xc]
	cmp r1, r0
	bne _021E82D2
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	bne _021E82D2
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x14]
	cmp r1, r0
	bne _021E82D2
	ldr r0, [sp]
	cmp r0, #0
	bne _021E82D2
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _021E82D2
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _021E82F8
_021E82D2:
	ldr r1, [r5, r4]
	mov r0, #0x40
	orr r0, r1
	str r0, [r5, r4]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r6, r4]
	add r1, sp, #0x18
	bl sub_0201AB24
	ldr r0, [r6, r4]
	add r1, sp, #0
	bl sub_0201AB54
	ldr r0, [r6, r4]
	bl sub_0201AD7C
_021E82F8:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy168_21e825c

	thumb_func_start ovy168_21e82fc
ovy168_21e82fc: ; 0x021E82FC
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	add r5, r0, #0
	add r4, r1, #0
	str r2, [sp]
	bl ovy168_21e9794
	sub r1, r6, #1
	cmp r0, r1
	beq _021E8360
	mov r1, #0x5c
	add r7, r0, #0
	add r5, #8
	mul r7, r1
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _021E8360
	ldr r0, [sp]
	cmp r0, #1
	bne _021E8358
	bl ovy168_21e00e8
	cmp r0, #3
	bhi _021E8358
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E8338: ; jump table
	.short _021E8358 - _021E8338 - 2 ; case 0
	.short _021E8340 - _021E8338 - 2 ; case 1
	.short _021E834A - _021E8338 - 2 ; case 2
	.short _021E8358 - _021E8338 - 2 ; case 3
_021E8340:
	cmp r4, #3
	beq _021E8348
	cmp r4, #4
	bne _021E8358
_021E8348:
	b _021E8356
_021E834A:
	cmp r4, #2
	beq _021E8356
	cmp r4, #5
	beq _021E8356
	cmp r4, #6
	bne _021E8358
_021E8356:
	mov r6, #1
_021E8358:
	ldr r0, [r5, r7]
	add r1, r6, #0
	bl sub_0201B270
_021E8360:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy168_21e82fc

	thumb_func_start ovy168_21e8364
ovy168_21e8364: ; 0x021E8364
	push {r4, lr}
	add r4, r0, #0
	bl ovy168_21e9794
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021E8378
	mov r0, #0
	pop {r4, pc}
_021E8378:
	mov r1, #0x5c
	mul r1, r0
	add r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _021E8388
	mov r0, #0
	pop {r4, pc}
_021E8388:
	add r4, #0x54
	ldr r0, [r4, r1]
	lsl r0, r0, #0x16
	lsr r0, r0, #0x1f
	beq _021E8396
	mov r0, #1
	b _021E8398
_021E8396:
	mov r0, #0
_021E8398:
	ldr r3, [r4, r1]
	ldr r2, _021E83A4 ; =0xFFFFFDFF
	and r2, r3
	str r2, [r4, r1]
	pop {r4, pc}
	nop
_021E83A4: .word 0xFFFFFDFF
	thumb_func_end ovy168_21e8364

	thumb_func_start ovy168_21e83a8
ovy168_21e83a8: ; 0x021E83A8
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r5, r0, #0
	cmp r4, #8
	bge _021E83EE
	add r6, r5, #0
	add r6, #0x54
_021E83B6:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy168_21e7b24
	cmp r0, #0
	beq _021E83E8
	add r0, r5, #0
	add r1, r4, #0
	bl ovy168_21e9794
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy168_21e70a8
	lsl r0, r0, #0x1f
	mov r1, #0x5c
	add r2, r7, #0
	mul r2, r1
	ldr r3, [r6, r2]
	ldr r1, _021E83F0 ; =0xFFFFFBFF
	lsr r0, r0, #0x15
	and r1, r3
	orr r0, r1
	str r0, [r6, r2]
_021E83E8:
	add r4, r4, #1
	cmp r4, #8
	blt _021E83B6
_021E83EE:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E83F0: .word 0xFFFFFBFF
	thumb_func_end ovy168_21e83a8

	thumb_func_start ovy168_21e83f4
ovy168_21e83f4: ; 0x021E83F4
	push {r3, r4, r5, r6, r7, lr}
	mov r5, #0
	add r6, r0, #0
	cmp r5, #8
	bge _021E843C
	add r4, r6, #0
	mov r0, #0x20
	add r4, #0x54
	str r0, [sp]
_021E8406:
	add r0, r6, #0
	add r1, r5, #0
	bl ovy168_21e7b24
	cmp r0, #0
	beq _021E8436
	add r0, r6, #0
	add r1, r5, #0
	bl ovy168_21e9794
	add r7, r0, #0
	mov r1, #0x5c
	mul r7, r1
	ldr r2, [r4, r7]
	add r0, r6, #0
	lsl r2, r2, #0x15
	add r1, r5, #0
	lsr r2, r2, #0x1f
	bl ovy168_21e70d4
	ldr r1, [r4, r7]
	ldr r0, [sp]
	bic r1, r0
	str r1, [r4, r7]
_021E8436:
	add r5, r5, #1
	cmp r5, #8
	blt _021E8406
_021E843C:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy168_21e83f4

	thumb_func_start ovy168_21e8440
ovy168_21e8440: ; 0x021E8440
	mov r3, #1
	tst r2, r3
	beq _021E8448
	mov r3, #0
_021E8448:
	add r2, r3, #0
	ldr r3, _021E8450 ; =sub_0201C0F0
	bx r3
	nop
_021E8450: .word sub_0201C0F0
	thumb_func_end ovy168_21e8440

	thumb_func_start ovy168_21e8454
ovy168_21e8454: ; 0x021E8454
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r6, r1, #0
	bl ovy168_21e9794
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021E84DE
	mov r1, #0x5c
	add r4, r0, #0
	mul r4, r1
	add r2, r5, r4
	ldr r0, [r2, #8]
	cmp r0, #0
	beq _021E84DE
	ldr r2, [r2, #0x54]
	add r0, r5, #0
	lsl r2, r2, #0x1d
	add r1, r6, #0
	lsr r2, r2, #0x1f
	bl ovy168_21e96d4
	mov r7, #1
	add r1, r6, #0
	tst r1, r7
	beq _021E8492
	asr r1, r0, #0x1f
	ldr r2, _021E84E4 ; =0x0000053C
	b _021E8496
_021E8492:
	ldr r2, _021E84E8 ; =0x00000538
	asr r1, r0, #0x1f
_021E8496:
	ldr r2, [r5, r2]
	asr r3, r2, #0x1f
	blx sub_0208D60C
	mov r2, #0
	lsl r3, r7, #0xb
	add r3, r0, r3
	adc r1, r2
	lsl r0, r1, #0x14
	lsr r1, r3, #0xc
	orr r1, r0
	mov r0, #1
	add r7, r5, #0
	lsl r0, r0, #0xc
	str r1, [sp]
	str r1, [sp, #4]
	add r7, #8
	str r0, [sp, #8]
	ldr r0, [r7, r4]
	add r1, sp, #0
	bl sub_0201AB88
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0
	bl ovy168_21e96d4
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	ldr r0, [r7, r4]
	add r1, sp, #0
	bl sub_0201AC0C
_021E84DE:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021E84E4: .word 0x0000053C
_021E84E8: .word 0x00000538
	thumb_func_end ovy168_21e8454

	thumb_func_start ovy168_21e84ec
ovy168_21e84ec: ; 0x021E84EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp, #4]
	ldr r0, _021E8698 ; =0x00000AA6
	str r1, [sp, #8]
	str r0, [sp]
	mov r1, #0x15
	ldr r0, [sp, #4]
	lsl r1, r1, #6
	ldrh r1, [r0, r1]
	ldr r0, _021E869C ; =0x00007FFF
	add r7, r3, #0
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	str r2, [sp, #0xc]
	ldr r3, _021E86A0 ; =0x021F4188
	lsr r0, r0, #0x10
	mov r1, #0x54
	mov r2, #0
	ldr r6, [sp, #0x28]
	ldr r5, [sp, #0x2c]
	bl GFL_HeapAllocate
	add r4, r0, #0
	ldr r0, [sp, #4]
	str r0, [r4]
	ldr r0, [sp, #8]
	str r0, [r4, #4]
	ldr r0, [sp, #0xc]
	str r0, [r4, #0x14]
	str r5, [r4, #0x3c]
	str r5, [r4, #0x40]
	mov r0, #0
	str r0, [r4, #0x44]
	ldr r0, [sp, #0x30]
	str r0, [r4, #0x48]
	ldr r0, [sp, #0x34]
	lsl r0, r0, #1
	str r0, [r4, #0x4c]
	ldr r0, [r7]
	str r0, [r4, #0x18]
	ldr r0, [r7, #4]
	str r0, [r4, #0x1c]
	ldr r0, [r7, #8]
	str r0, [r4, #0x20]
	ldr r0, [r6]
	str r0, [r4, #0x24]
	ldr r0, [r6, #4]
	str r0, [r4, #0x28]
	ldr r0, [r6, #8]
	str r0, [r4, #0x2c]
	ldr r0, [r7]
	str r0, [r4, #8]
	ldr r0, [r7, #4]
	str r0, [r4, #0xc]
	ldr r0, [r7, #8]
	str r0, [r4, #0x10]
	add r0, sp, #0x28
	ldrb r0, [r0, #0x1c]
	str r0, [r4, #0x50]
	ldr r0, [sp, #0xc]
	cmp r0, #4
	bls _021E8570
	b _021E867E
_021E8570:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E857C: ; jump table
	.short _021E867E - _021E857C - 2 ; case 0
	.short _021E8586 - _021E857C - 2 ; case 1
	.short _021E85C6 - _021E857C - 2 ; case 2
	.short _021E85C0 - _021E857C - 2 ; case 3
	.short _021E8586 - _021E857C - 2 ; case 4
_021E8586:
	cmp r5, #0
	ble _021E859C
	lsl r0, r5, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021E85AA
_021E859C:
	lsl r0, r5, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021E85AA:
	blx sub_0208DA4C
	add r3, r0, #0
	add r0, r4, #0
	add r2, r4, #0
	add r0, #0x18
	add r1, r6, #0
	add r2, #0x30
	bl ovy168_21e0b7c
	b _021E867E
_021E85C0:
	ldr r0, [r4, #0x4c]
	lsl r0, r0, #1
	str r0, [r4, #0x4c]
_021E85C6:
	cmp r5, #0
	ble _021E85DE
	lsl r7, r5, #0xc
	add r0, r7, #0
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021E85EE
_021E85DE:
	lsl r7, r5, #0xc
	add r0, r7, #0
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021E85EE:
	blx sub_0208DA4C
	add r1, r0, #0
	ldr r0, [r6]
	bl FX_Div
	str r0, [r4, #0x30]
	cmp r5, #0
	ble _021E8612
	add r0, r7, #0
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021E8620
_021E8612:
	add r0, r7, #0
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021E8620:
	blx sub_0208DA4C
	add r1, r0, #0
	ldr r0, [r6, #4]
	bl FX_Div
	str r0, [r4, #0x34]
	cmp r5, #0
	ble _021E8644
	add r0, r7, #0
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021E8652
_021E8644:
	add r0, r7, #0
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021E8652:
	blx sub_0208DA4C
	add r1, r0, #0
	ldr r0, [r6, #8]
	bl FX_Div
	str r0, [r4, #0x38]
	ldr r0, [sp, #8]
	mov r1, #1
	tst r0, r1
	beq _021E867E
	ldr r0, [sp, #0x40]
	cmp r0, #0
	beq _021E867E
	ldr r2, [r4, #0x30]
	sub r0, r1, #2
	mul r0, r2
	str r0, [r4, #0x30]
	ldr r2, [r4, #0x38]
	sub r0, r1, #2
	mul r0, r2
	str r0, [r4, #0x38]
_021E867E:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x38]
	ldr r0, [r0]
	add r2, r4, #0
	mov r3, #0
	bl sub_0203A614
	ldr r1, [sp, #0x3c]
	mov r2, #2
	bl ovy168_21e035c
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E8698: .word 0x00000AA6
_021E869C: .word 0x00007FFF
_021E86A0: .word 0x021F4188
	thumb_func_end ovy168_21e84ec

	thumb_func_start ovy168_21e86a4
ovy168_21e86a4: ; 0x021E86A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	ldr r6, [r4]
	ldr r1, [r4, #4]
	add r5, r0, #0
	add r0, r6, #0
	bl ovy168_21e9794
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021E86C8
	add r0, r5, #0
	bl ovy168_21e03ac
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021E86C8:
	add r7, r0, #0
	mov r1, #0x5c
	add r0, r6, #0
	str r0, [sp]
	add r0, #8
	mul r7, r1
	str r0, [sp]
	ldr r0, [r0, r7]
	cmp r0, #0
	bne _021E86E6
	add r0, r5, #0
	bl ovy168_21e03ac
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021E86E6:
	ldr r2, [r4, #4]
	ldr r1, [r4, #0x50]
	add r3, r6, r2
	ldr r2, _021E872C ; =0x00000542
	ldrb r2, [r3, r2]
	cmp r1, r2
	beq _021E86FE
	add r0, r5, #0
	bl ovy168_21e03ac
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021E86FE:
	add r6, sp, #4
	add r1, r6, #0
	bl sub_0201AB0C
	add r4, #0x14
	add r0, r4, #0
	add r1, r6, #0
	bl ovy168_21e0c50
	add r4, r0, #0
	ldr r0, [sp]
	add r1, r6, #0
	ldr r0, [r0, r7]
	bl sub_0201AB24
	cmp r4, #1
	bne _021E8726
	add r0, r5, #0
	bl ovy168_21e03ac
_021E8726:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E872C: .word 0x00000542
	thumb_func_end ovy168_21e86a4

	thumb_func_start ovy168_21e8730
ovy168_21e8730: ; 0x021E8730
	push {r3, r4, r5, lr}
	bl sub_0203A6D0
	add r5, r0, #0
	ldr r0, [r5, #4]
	ldr r1, [r5]
	ldr r4, _021E8764 ; =0x00000542
	add r1, r1, r0
	ldrb r1, [r1, r4]
	ldr r2, [r5, #0x50]
	cmp r2, r1
	bne _021E8760
	bl ovy168_21e0d4c
	add r1, r4, #0
	ldr r3, [r5]
	sub r1, #0x2e
	ldr r2, [r3, r1]
	mov r1, #0
	mvn r1, r1
	eor r0, r1
	and r0, r2
	sub r4, #0x2e
	str r0, [r3, r4]
_021E8760:
	pop {r3, r4, r5, pc}
	nop
_021E8764: .word 0x00000542
	thumb_func_end ovy168_21e8730

	thumb_func_start ovy168_21e8768
ovy168_21e8768: ; 0x021E8768
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	ldr r6, [r4]
	ldr r1, [r4, #4]
	add r5, r0, #0
	add r0, r6, #0
	bl ovy168_21e9794
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021E878C
	add r0, r5, #0
	bl ovy168_21e03ac
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021E878C:
	add r7, r0, #0
	mov r1, #0x5c
	add r0, r6, #0
	str r0, [sp]
	add r0, #8
	mul r7, r1
	str r0, [sp]
	ldr r0, [r0, r7]
	cmp r0, #0
	bne _021E87AA
	add r0, r5, #0
	bl ovy168_21e03ac
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021E87AA:
	ldr r2, [r4, #4]
	ldr r1, [r4, #0x50]
	add r3, r6, r2
	mov r2, #0x55
	lsl r2, r2, #4
	ldrb r2, [r3, r2]
	cmp r1, r2
	beq _021E87C4
	add r0, r5, #0
	bl ovy168_21e03ac
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021E87C4:
	add r6, sp, #4
	add r1, r6, #0
	bl sub_0201ABA0
	add r4, #0x14
	add r0, r4, #0
	add r1, r6, #0
	bl ovy168_21e0c50
	add r4, r0, #0
	ldr r0, [sp]
	add r1, r6, #0
	ldr r0, [r0, r7]
	bl sub_0201ABB8
	cmp r4, #1
	bne _021E87EC
	add r0, r5, #0
	bl ovy168_21e03ac
_021E87EC:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy168_21e8768

	thumb_func_start ovy168_21e87f0
ovy168_21e87f0: ; 0x021E87F0
	push {r3, r4, r5, lr}
	bl sub_0203A6D0
	add r5, r0, #0
	mov r4, #0x55
	ldr r0, [r5, #4]
	ldr r1, [r5]
	lsl r4, r4, #4
	add r1, r1, r0
	ldrb r1, [r1, r4]
	ldr r2, [r5, #0x50]
	cmp r2, r1
	bne _021E8822
	bl ovy168_21e0d4c
	add r1, r4, #0
	ldr r3, [r5]
	sub r1, #0x38
	ldr r2, [r3, r1]
	mov r1, #0
	mvn r1, r1
	eor r0, r1
	and r0, r2
	sub r4, #0x38
	str r0, [r3, r4]
_021E8822:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy168_21e87f0

	thumb_func_start ovy168_21e8824
ovy168_21e8824: ; 0x021E8824
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	ldr r6, [r4]
	ldr r1, [r4, #4]
	add r5, r0, #0
	add r0, r6, #0
	bl ovy168_21e9794
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021E8848
	add r0, r5, #0
	bl ovy168_21e03ac
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021E8848:
	add r7, r0, #0
	mov r1, #0x5c
	add r0, r6, #0
	str r0, [sp]
	add r0, #8
	mul r7, r1
	str r0, [sp]
	ldr r0, [r0, r7]
	cmp r0, #0
	bne _021E8866
	add r0, r5, #0
	bl ovy168_21e03ac
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021E8866:
	ldr r2, [r4, #4]
	ldr r1, [r4, #0x50]
	add r3, r6, r2
	ldr r2, _021E88AC ; =0x0000055E
	ldrb r2, [r3, r2]
	cmp r1, r2
	beq _021E887E
	add r0, r5, #0
	bl ovy168_21e03ac
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021E887E:
	add r6, sp, #4
	add r1, r6, #0
	bl sub_0201AB70
	add r4, #0x14
	add r0, r4, #0
	add r1, r6, #0
	bl ovy168_21e0c50
	add r4, r0, #0
	ldr r0, [sp]
	add r1, r6, #0
	ldr r0, [r0, r7]
	bl sub_0201AB88
	cmp r4, #1
	bne _021E88A6
	add r0, r5, #0
	bl ovy168_21e03ac
_021E88A6:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E88AC: .word 0x0000055E
	thumb_func_end ovy168_21e8824

	thumb_func_start ovy168_21e88b0
ovy168_21e88b0: ; 0x021E88B0
	push {r3, r4, r5, lr}
	bl sub_0203A6D0
	add r5, r0, #0
	ldr r0, [r5, #4]
	ldr r1, [r5]
	ldr r4, _021E88E4 ; =0x0000055E
	add r1, r1, r0
	ldrb r1, [r1, r4]
	ldr r2, [r5, #0x50]
	cmp r2, r1
	bne _021E88E0
	bl ovy168_21e0d4c
	add r1, r4, #0
	ldr r3, [r5]
	sub r1, #0x3e
	ldr r2, [r3, r1]
	mov r1, #0
	mvn r1, r1
	eor r0, r1
	and r0, r2
	sub r4, #0x3e
	str r0, [r3, r4]
_021E88E0:
	pop {r3, r4, r5, pc}
	nop
_021E88E4: .word 0x0000055E
	thumb_func_end ovy168_21e88b0

	thumb_func_start ovy168_21e88e8
ovy168_21e88e8: ; 0x021E88E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	ldr r6, [r4]
	ldr r1, [r4, #4]
	add r5, r0, #0
	add r0, r6, #0
	bl ovy168_21e9794
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021E890C
	add r0, r5, #0
	bl ovy168_21e03ac
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021E890C:
	add r7, r0, #0
	mov r1, #0x5c
	add r0, r6, #0
	str r0, [sp]
	add r0, #8
	mul r7, r1
	str r0, [sp]
	ldr r0, [r0, r7]
	cmp r0, #0
	bne _021E892A
	add r0, r5, #0
	bl ovy168_21e03ac
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021E892A:
	ldr r2, [r4, #4]
	ldr r1, [r4, #0x50]
	add r3, r6, r2
	ldr r2, _021E8970 ; =0x0000056C
	ldrb r2, [r3, r2]
	cmp r1, r2
	beq _021E8942
	add r0, r5, #0
	bl ovy168_21e03ac
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021E8942:
	add r6, sp, #4
	add r1, r6, #0
	bl sub_0201AC28
	add r4, #0x14
	add r0, r4, #0
	add r1, r6, #0
	bl ovy168_21e0c50
	add r4, r0, #0
	ldr r0, [sp]
	add r1, r6, #0
	ldr r0, [r0, r7]
	bl sub_0201AC40
	cmp r4, #1
	bne _021E896A
	add r0, r5, #0
	bl ovy168_21e03ac
_021E896A:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E8970: .word 0x0000056C
	thumb_func_end ovy168_21e88e8

	thumb_func_start ovy168_21e8974
ovy168_21e8974: ; 0x021E8974
	push {r3, r4, r5, lr}
	bl sub_0203A6D0
	add r5, r0, #0
	ldr r0, [r5, #4]
	ldr r1, [r5]
	ldr r4, _021E89A8 ; =0x0000056C
	add r1, r1, r0
	ldrb r1, [r1, r4]
	ldr r2, [r5, #0x50]
	cmp r2, r1
	bne _021E89A4
	bl ovy168_21e0d4c
	add r1, r4, #0
	ldr r3, [r5]
	sub r1, #0x48
	ldr r2, [r3, r1]
	mov r1, #0
	mvn r1, r1
	eor r0, r1
	and r0, r2
	sub r4, #0x48
	str r0, [r3, r4]
_021E89A4:
	pop {r3, r4, r5, pc}
	nop
_021E89A8: .word 0x0000056C
	thumb_func_end ovy168_21e8974

	thumb_func_start ovy168_21e89ac
ovy168_21e89ac: ; 0x021E89AC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	ldr r6, [r4]
	ldr r1, [r4, #4]
	add r5, r0, #0
	add r0, r6, #0
	bl ovy168_21e9794
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021E89D0
	add r0, r5, #0
	bl ovy168_21e03ac
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021E89D0:
	add r7, r0, #0
	mov r1, #0x5c
	add r0, r6, #0
	str r0, [sp]
	add r0, #8
	mul r7, r1
	str r0, [sp]
	ldr r0, [r0, r7]
	cmp r0, #0
	bne _021E89EE
	add r0, r5, #0
	bl ovy168_21e03ac
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021E89EE:
	ldr r2, [r4, #4]
	ldr r1, [r4, #0x50]
	add r3, r6, r2
	ldr r2, _021E8A34 ; =0x0000057A
	ldrb r2, [r3, r2]
	cmp r1, r2
	beq _021E8A06
	add r0, r5, #0
	bl ovy168_21e03ac
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021E8A06:
	add r6, sp, #4
	add r1, r6, #0
	bl sub_0201ABD4
	add r4, #0x14
	add r0, r4, #0
	add r1, r6, #0
	bl ovy168_21e0c50
	add r4, r0, #0
	ldr r0, [sp]
	add r1, r6, #0
	ldr r0, [r0, r7]
	bl sub_0201ABF0
	cmp r4, #1
	bne _021E8A2E
	add r0, r5, #0
	bl ovy168_21e03ac
_021E8A2E:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E8A34: .word 0x0000057A
	thumb_func_end ovy168_21e89ac

	thumb_func_start ovy168_21e8a38
ovy168_21e8a38: ; 0x021E8A38
	push {r3, r4, r5, lr}
	bl sub_0203A6D0
	add r5, r0, #0
	ldr r0, [r5, #4]
	ldr r1, [r5]
	ldr r4, _021E8A6C ; =0x0000057A
	add r1, r1, r0
	ldrb r1, [r1, r4]
	ldr r2, [r5, #0x50]
	cmp r2, r1
	bne _021E8A68
	bl ovy168_21e0d4c
	add r1, r4, #0
	ldr r3, [r5]
	sub r1, #0x5e
	ldr r2, [r3, r1]
	mov r1, #0
	mvn r1, r1
	eor r0, r1
	and r0, r2
	sub r4, #0x5e
	str r0, [r3, r4]
_021E8A68:
	pop {r3, r4, r5, pc}
	nop
_021E8A6C: .word 0x0000057A
	thumb_func_end ovy168_21e8a38

	thumb_func_start ovy168_21e8a70
ovy168_21e8a70: ; 0x021E8A70
	push {r4, r5, r6, lr}
	add r4, r1, #0
	ldr r6, [r4]
	ldr r1, [r4, #4]
	add r5, r0, #0
	add r0, r6, #0
	bl ovy168_21e7b24
	cmp r0, #0
	beq _021E8A92
	ldr r1, [r4, #4]
	ldr r2, _021E8ACC ; =0x00000588
	add r3, r6, r1
	ldrb r2, [r3, r2]
	ldr r0, [r4, #0x50]
	cmp r0, r2
	beq _021E8A9A
_021E8A92:
	add r0, r5, #0
	bl ovy168_21e03ac
	pop {r4, r5, r6, pc}
_021E8A9A:
	ldr r0, [r4, #0x44]
	cmp r0, #0
	bne _021E8AC6
	ldr r0, [r4, #0x48]
	mov r2, #2
	str r0, [r4, #0x44]
	ldr r0, [r4]
	bl ovy168_21e6fc0
	ldr r0, [r4, #0x4c]
	sub r0, r0, #1
	str r0, [r4, #0x4c]
	bne _021E8ACA
	ldr r0, [r4]
	ldr r1, [r4, #4]
	mov r2, #0
	bl ovy168_21e6fc0
	add r0, r5, #0
	bl ovy168_21e03ac
	pop {r4, r5, r6, pc}
_021E8AC6:
	sub r0, r0, #1
	str r0, [r4, #0x44]
_021E8ACA:
	pop {r4, r5, r6, pc}
	.align 2, 0
_021E8ACC: .word 0x00000588
	thumb_func_end ovy168_21e8a70

	thumb_func_start ovy168_21e8ad0
ovy168_21e8ad0: ; 0x021E8AD0
	push {r3, r4, r5, lr}
	bl sub_0203A6D0
	add r5, r0, #0
	ldr r0, [r5, #4]
	ldr r1, [r5]
	ldr r4, _021E8B04 ; =0x00000588
	add r1, r1, r0
	ldrb r1, [r1, r4]
	ldr r2, [r5, #0x50]
	cmp r2, r1
	bne _021E8B00
	bl ovy168_21e0d4c
	add r1, r4, #0
	ldr r3, [r5]
	sub r1, #0x60
	ldr r2, [r3, r1]
	mov r1, #0
	mvn r1, r1
	eor r0, r1
	and r0, r2
	sub r4, #0x60
	str r0, [r3, r4]
_021E8B00:
	pop {r3, r4, r5, pc}
	nop
_021E8B04: .word 0x00000588
	thumb_func_end ovy168_21e8ad0

	thumb_func_start ovy168_21e8b08
ovy168_21e8b08: ; 0x021E8B08
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	ldr r7, [r6]
	ldr r1, [r6, #4]
	add r5, r0, #0
	add r0, r7, #0
	bl ovy168_21e9794
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021E8B28
	add r0, r5, #0
	bl ovy168_21e03ac
	pop {r3, r4, r5, r6, r7, pc}
_021E8B28:
	add r4, r7, #0
	mov r1, #0x5c
	mul r1, r0
	add r4, #8
	ldr r0, [r4, r1]
	str r1, [sp]
	cmp r0, #0
	bne _021E8B40
	add r0, r5, #0
	bl ovy168_21e03ac
	pop {r3, r4, r5, r6, r7, pc}
_021E8B40:
	ldr r1, [r6, #4]
	ldr r0, [r6, #0x50]
	add r2, r7, r1
	ldr r1, _021E8B80 ; =0x00000596
	ldrb r1, [r2, r1]
	cmp r0, r1
	beq _021E8B56
	add r0, r5, #0
	bl ovy168_21e03ac
	pop {r3, r4, r5, r6, r7, pc}
_021E8B56:
	add r0, r6, #0
	add r1, r6, #0
	add r0, #0x14
	add r1, #8
	bl ovy168_21e0c50
	ldr r1, [r6, #8]
	add r7, r0, #0
	ldr r0, [sp]
	asr r1, r1, #0xc
	lsl r1, r1, #0x18
	ldr r0, [r4, r0]
	lsr r1, r1, #0x18
	bl sub_0201AE98
	cmp r7, #1
	bne _021E8B7E
	add r0, r5, #0
	bl ovy168_21e03ac
_021E8B7E:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E8B80: .word 0x00000596
	thumb_func_end ovy168_21e8b08

	thumb_func_start ovy168_21e8b84
ovy168_21e8b84: ; 0x021E8B84
	push {r3, r4, r5, lr}
	bl sub_0203A6D0
	add r5, r0, #0
	ldr r0, [r5, #4]
	ldr r1, [r5]
	ldr r4, _021E8BB8 ; =0x00000596
	add r1, r1, r0
	ldrb r1, [r1, r4]
	ldr r2, [r5, #0x50]
	cmp r2, r1
	bne _021E8BB4
	bl ovy168_21e0d4c
	add r1, r4, #0
	ldr r3, [r5]
	sub r1, #0x6a
	ldr r2, [r3, r1]
	mov r1, #0
	mvn r1, r1
	eor r0, r1
	and r0, r2
	sub r4, #0x6a
	str r0, [r3, r4]
_021E8BB4:
	pop {r3, r4, r5, pc}
	nop
_021E8BB8: .word 0x00000596
	thumb_func_end ovy168_21e8b84

	thumb_func_start ovy168_21e8bbc
ovy168_21e8bbc: ; 0x021E8BBC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r1, #0
	ldr r7, [r4]
	str r0, [sp]
	add r0, sp, #0xc
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	ldr r1, [r4, #4]
	add r0, r7, #0
	bl ovy168_21e9794
	mov r1, #0
	sub r1, r1, #1
	cmp r0, r1
	bne _021E8BEA
	ldr r0, [sp]
	bl ovy168_21e03ac
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021E8BEA:
	add r1, r7, #0
	str r1, [sp, #4]
	add r1, #8
	str r1, [sp, #4]
	mov r1, #0x5c
	mul r1, r0
	ldr r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r0, r1]
	cmp r0, #0
	bne _021E8C0A
	ldr r0, [sp]
	bl ovy168_21e03ac
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021E8C0A:
	ldr r1, [r4, #4]
	ldr r0, [r4, #0x38]
	add r2, r7, r1
	ldr r1, _021E8E28 ; =0x00000542
	ldrb r1, [r2, r1]
	cmp r0, r1
	beq _021E8C22
	ldr r0, [sp]
	bl ovy168_21e03ac
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021E8C22:
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _021E8C2A
	b _021E8E14
_021E8C2A:
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x1c]
	cmp r1, r0
	beq _021E8C34
	b _021E8E0E
_021E8C34:
	ldr r1, [r4, #8]
	mov r0, #0
	lsl r1, r1, #0x1f
	str r0, [r4, #0x30]
	ldr r1, [r4, #0x28]
	beq _021E8C46
	ldr r0, [r4, #0x2c]
	sub r0, r1, r0
	b _021E8C4A
_021E8C46:
	ldr r0, [r4, #0x2c]
	add r0, r1, r0
_021E8C4A:
	str r0, [r4, #0x28]
	ldr r1, [r4, #0x28]
	ldr r0, _021E8E2C ; =0xFFFF0000
	tst r0, r1
	beq _021E8C64
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x20]
	sub r0, r0, #1
	str r0, [r4, #0x20]
	ldr r0, [r4, #0x24]
	str r0, [r4, #0x34]
_021E8C64:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bne _021E8C6C
	b _021E8E00
_021E8C6C:
	ldr r0, [r4, #0xc]
	cmp r0, #3
	bls _021E8C74
	b _021E8DE0
_021E8C74:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E8C80: ; jump table
	.short _021E8C88 - _021E8C80 - 2 ; case 0
	.short _021E8CE8 - _021E8C80 - 2 ; case 1
	.short _021E8D42 - _021E8C80 - 2 ; case 2
	.short _021E8D94 - _021E8C80 - 2 ; case 3
_021E8C88:
	mov r0, #1
	ldr r1, [r4, #0x28]
	lsl r0, r0, #0xe
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	asr r0, r0, #4
	lsl r6, r0, #1
	ldr r0, _021E8E30 ; =FX_SinCosTable_ ; 0x020946BC
	ldr r7, [r4, #0x10]
	lsl r1, r6, #1
	ldrsh r0, [r0, r1]
	asr r3, r7, #0x1f
	add r2, r7, #0
	asr r1, r0, #0x1f
	blx sub_0208D60C
	mov r2, #1
	lsl r2, r2, #0xe
	lsr r2, r2, #3
	add r2, r0, r2
	ldr r0, _021E8E34 ; =0x00000000
	adc r1, r0
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	ldr r2, [r4, #0x14]
	add r0, r6, #1
	neg r5, r1
	lsl r1, r0, #1
	ldr r0, _021E8E30 ; =FX_SinCosTable_ ; 0x020946BC
	asr r3, r2, #0x1f
	ldrsh r0, [r0, r1]
	asr r1, r0, #0x1f
	blx sub_0208D60C
	mov r2, #1
	lsl r2, r2, #0xe
	lsr r2, r2, #3
	add r2, r0, r2
	ldr r0, _021E8E34 ; =0x00000000
	adc r1, r0
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	neg r6, r1
	add r5, r5, r7
	b _021E8DE0
_021E8CE8:
	mov r0, #1
	ldr r1, [r4, #0x28]
	lsl r0, r0, #0xe
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	asr r0, r0, #4
	lsl r6, r0, #1
	ldr r0, _021E8E30 ; =FX_SinCosTable_ ; 0x020946BC
	ldr r5, [r4, #0x10]
	lsl r1, r6, #1
	ldrsh r0, [r0, r1]
	asr r3, r5, #0x1f
	add r2, r5, #0
	asr r1, r0, #0x1f
	blx sub_0208D60C
	mov r2, #1
	lsl r2, r2, #0xe
	mov r7, #0
	lsr r2, r2, #3
	add r2, r0, r2
	adc r1, r7
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	ldr r2, [r4, #0x14]
	add r0, r6, #1
	sub r5, r1, r5
	lsl r1, r0, #1
	ldr r0, _021E8E30 ; =FX_SinCosTable_ ; 0x020946BC
	asr r3, r2, #0x1f
	ldrsh r0, [r0, r1]
	asr r1, r0, #0x1f
	blx sub_0208D60C
	mov r2, #1
	lsl r2, r2, #0xe
	lsr r2, r2, #3
	add r2, r0, r2
	adc r1, r7
	lsl r0, r1, #0x14
	lsr r6, r2, #0xc
	orr r6, r0
	b _021E8DE0
_021E8D42:
	ldr r0, [r4, #0x28]
	ldr r2, [r4, #0x10]
	asr r0, r0, #4
	lsl r7, r0, #1
	ldr r0, _021E8E30 ; =FX_SinCosTable_ ; 0x020946BC
	lsl r1, r7, #1
	ldrsh r0, [r0, r1]
	asr r3, r2, #0x1f
	asr r1, r0, #0x1f
	blx sub_0208D60C
	mov r2, #2
	lsl r2, r2, #0xa
	add r2, r0, r2
	ldr r0, _021E8E34 ; =0x00000000
	ldr r6, [r4, #0x14]
	adc r1, r0
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	add r0, r7, #1
	neg r5, r1
	lsl r1, r0, #1
	ldr r0, _021E8E30 ; =FX_SinCosTable_ ; 0x020946BC
	asr r3, r6, #0x1f
	ldrsh r0, [r0, r1]
	add r2, r6, #0
	asr r1, r0, #0x1f
	blx sub_0208D60C
	mov r2, #2
	lsl r2, r2, #0xa
	add r2, r0, r2
	ldr r0, _021E8E34 ; =0x00000000
	adc r1, r0
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	neg r0, r1
	add r6, r0, r6
	b _021E8DE0
_021E8D94:
	ldr r0, [r4, #0x28]
	ldr r2, [r4, #0x10]
	asr r0, r0, #4
	lsl r7, r0, #1
	ldr r0, _021E8E30 ; =FX_SinCosTable_ ; 0x020946BC
	lsl r1, r7, #1
	ldrsh r0, [r0, r1]
	asr r3, r2, #0x1f
	asr r1, r0, #0x1f
	blx sub_0208D60C
	mov r2, #2
	lsl r2, r2, #0xa
	add r2, r0, r2
	ldr r0, _021E8E34 ; =0x00000000
	ldr r6, [r4, #0x14]
	adc r1, r0
	lsr r5, r2, #0xc
	lsl r0, r1, #0x14
	orr r5, r0
	add r0, r7, #1
	lsl r1, r0, #1
	ldr r0, _021E8E30 ; =FX_SinCosTable_ ; 0x020946BC
	asr r3, r6, #0x1f
	ldrsh r0, [r0, r1]
	add r2, r6, #0
	asr r1, r0, #0x1f
	blx sub_0208D60C
	mov r2, #2
	lsl r2, r2, #0xa
	add r2, r0, r2
	ldr r0, _021E8E34 ; =0x00000000
	adc r1, r0
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	sub r6, r1, r6
_021E8DE0:
	ldr r1, [r4, #8]
	mov r0, #7
	and r0, r1
	asr r0, r0, #1
	beq _021E8DF2
	cmp r0, #1
	beq _021E8DF6
	cmp r0, #2
	beq _021E8DFC
_021E8DF2:
	str r5, [sp, #0x14]
	b _021E8DFE
_021E8DF6:
	str r5, [sp, #0xc]
	str r6, [sp, #0x14]
	b _021E8E00
_021E8DFC:
	str r5, [sp, #0xc]
_021E8DFE:
	str r6, [sp, #0x10]
_021E8E00:
	ldr r1, [sp, #4]
	ldr r0, [sp, #8]
	ldr r0, [r1, r0]
	add r1, sp, #0xc
	bl sub_0201AB54
	b _021E8E18
_021E8E0E:
	add r0, r1, #1
	str r0, [r4, #0x30]
	b _021E8E18
_021E8E14:
	sub r0, r0, #1
	str r0, [r4, #0x34]
_021E8E18:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bne _021E8E24
	ldr r0, [sp]
	bl ovy168_21e03ac
_021E8E24:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E8E28: .word 0x00000542
_021E8E2C: .word 0xFFFF0000
_021E8E30: .word FX_SinCosTable_
_021E8E34: .word 0x00000000
	thumb_func_end ovy168_21e8bbc

	thumb_func_start ovy168_21e8e38
ovy168_21e8e38: ; 0x021E8E38
	push {r3, r4, r5, lr}
	bl sub_0203A6D0
	add r5, r0, #0
	ldr r1, [r5]
	ldr r0, [r5, #4]
	ldr r4, _021E8E6C ; =0x00000542
	add r1, r1, r0
	ldrb r1, [r1, r4]
	ldr r2, [r5, #0x38]
	cmp r2, r1
	bne _021E8E68
	bl ovy168_21e0d4c
	add r1, r4, #0
	ldr r3, [r5]
	sub r1, #0x2e
	ldr r2, [r3, r1]
	mov r1, #0
	mvn r1, r1
	eor r0, r1
	and r0, r2
	sub r4, #0x2e
	str r0, [r3, r4]
_021E8E68:
	pop {r3, r4, r5, pc}
	nop
_021E8E6C: .word 0x00000542
	thumb_func_end ovy168_21e8e38

	thumb_func_start ovy168_21e8e70
ovy168_21e8e70: ; 0x021E8E70
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	ldr r6, [r5]
	str r0, [sp]
	add r1, sp, #4
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	ldr r1, [r5, #4]
	add r0, r6, #0
	bl ovy168_21e9794
	mov r1, #0
	sub r1, r1, #1
	cmp r0, r1
	bne _021E8E9E
	ldr r0, [sp]
	bl ovy168_21e03ac
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021E8E9E:
	add r4, r6, #0
	mov r1, #0x5c
	add r7, r0, #0
	add r4, #8
	mul r7, r1
	ldr r0, [r4, r7]
	cmp r0, #0
	bne _021E8EB8
	ldr r0, [sp]
	bl ovy168_21e03ac
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021E8EB8:
	ldr r1, [r5, #4]
	ldr r0, [r5, #0x28]
	add r2, r6, r1
	ldr r1, _021E8F8C ; =0x00000542
	ldrb r1, [r2, r1]
	cmp r0, r1
	beq _021E8ED0
	ldr r0, [sp]
	bl ovy168_21e03ac
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021E8ED0:
	ldr r1, [r5, #0x18]
	ldr r0, [r5, #0x1c]
	add r1, r1, r0
	ldr r0, _021E8F90 ; =0x0FFFF000
	str r1, [r5, #0x18]
	and r0, r1
	asr r0, r0, #0x10
	lsl r1, r0, #2
	ldr r0, _021E8F94 ; =FX_SinCosTable_ ; 0x020946BC
	ldrsh r6, [r0, r1]
	add r0, r6, #0
	blx sub_0208D374
	ldr r1, _021E8F98 ; =0x45800000
	blx sub_0208E3C8
	mov r1, #0
	blx sub_0208D1D0
	bls _021E8F18
	add r0, r6, #0
	blx sub_0208D374
	ldr r1, _021E8F98 ; =0x45800000
	blx sub_0208E3C8
	add r1, r0, #0
	ldr r0, _021E8F98 ; =0x45800000
	blx sub_0208DD34
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021E8F34
_021E8F18:
	add r0, r6, #0
	blx sub_0208D374
	ldr r1, _021E8F98 ; =0x45800000
	blx sub_0208E3C8
	add r1, r0, #0
	ldr r0, _021E8F98 ; =0x45800000
	blx sub_0208DD34
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021E8F34:
	blx sub_0208DA4C
	ldr r2, [r5, #0x20]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	blx sub_0208D60C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _021E8F5C
	str r1, [sp, #8]
	b _021E8F5E
_021E8F5C:
	str r1, [sp, #4]
_021E8F5E:
	add r6, sp, #4
	ldr r0, [r4, r7]
	add r1, r6, #0
	bl sub_0201AB54
	ldr r0, [r5, #0x24]
	sub r0, r0, #1
	str r0, [r5, #0x24]
	bne _021E8F86
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r4, r7]
	add r1, r6, #0
	bl sub_0201AB54
	ldr r0, [sp]
	bl ovy168_21e03ac
_021E8F86:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E8F8C: .word 0x00000542
_021E8F90: .word 0x0FFFF000
_021E8F94: .word FX_SinCosTable_
_021E8F98: .word 0x45800000
	thumb_func_end ovy168_21e8e70

	thumb_func_start ovy168_21e8f9c
ovy168_21e8f9c: ; 0x021E8F9C
	push {r3, r4, r5, lr}
	bl sub_0203A6D0
	add r5, r0, #0
	ldr r1, [r5]
	ldr r0, [r5, #4]
	ldr r4, _021E8FD0 ; =0x00000542
	add r1, r1, r0
	ldrb r1, [r1, r4]
	ldr r2, [r5, #0x28]
	cmp r2, r1
	bne _021E8FCC
	bl ovy168_21e0d4c
	add r1, r4, #0
	ldr r3, [r5]
	sub r1, #0x2e
	ldr r2, [r3, r1]
	mov r1, #0
	mvn r1, r1
	eor r0, r1
	and r0, r2
	sub r4, #0x2e
	str r0, [r3, r4]
_021E8FCC:
	pop {r3, r4, r5, pc}
	nop
_021E8FD0: .word 0x00000542
	thumb_func_end ovy168_21e8f9c

	thumb_func_start ovy168_21e8fd4
ovy168_21e8fd4: ; 0x021E8FD4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r1, #0
	ldr r7, [r6]
	ldr r1, [r6, #4]
	add r5, r0, #0
	add r0, r7, #0
	bl ovy168_21e9794
	mov r1, #0
	mvn r1, r1
	str r0, [sp]
	cmp r0, r1
	bne _021E8FFA
	add r0, r5, #0
	bl ovy168_21e03ac
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021E8FFA:
	add r4, r7, #0
	mov r1, #0x5c
	mul r1, r0
	add r4, #8
	ldr r0, [r4, r1]
	str r1, [sp, #4]
	cmp r0, #0
	bne _021E9014
	add r0, r5, #0
	bl ovy168_21e03ac
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021E9014:
	ldr r1, [r6, #4]
	ldr r0, [r6, #0x50]
	add r2, r7, r1
	ldr r1, _021E9064 ; =0x000005A4
	ldrb r1, [r2, r1]
	cmp r0, r1
	beq _021E902C
	add r0, r5, #0
	bl ovy168_21e03ac
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021E902C:
	add r0, r6, #0
	add r1, r6, #0
	add r0, #0x14
	add r1, #8
	bl ovy168_21e0c50
	ldr r2, [r6, #8]
	str r0, [sp, #8]
	ldr r1, [r6, #4]
	add r0, r7, #0
	asr r2, r2, #0xc
	bl ovy168_21e7ea8
	ldr r0, [sp, #8]
	cmp r0, #1
	bne _021E9060
	ldr r0, [sp, #4]
	ldr r1, [sp]
	ldr r0, [r4, r0]
	ldr r2, _021E9068 ; =ovy168_21e94b8
	mov r3, #1
	bl sub_0201AE08
	add r0, r5, #0
	bl ovy168_21e03ac
_021E9060:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021E9064: .word 0x000005A4
_021E9068: .word ovy168_21e94b8
	thumb_func_end ovy168_21e8fd4

	thumb_func_start ovy168_21e906c
ovy168_21e906c: ; 0x021E906C
	push {r3, r4, r5, lr}
	bl sub_0203A6D0
	add r5, r0, #0
	ldr r0, [r5, #4]
	ldr r1, [r5]
	ldr r4, _021E90A0 ; =0x000005A4
	add r1, r1, r0
	ldrb r1, [r1, r4]
	ldr r2, [r5, #0x50]
	cmp r2, r1
	bne _021E909C
	bl ovy168_21e0d4c
	add r1, r4, #0
	ldr r3, [r5]
	sub r1, #0x74
	ldr r2, [r3, r1]
	mov r1, #0
	mvn r1, r1
	eor r0, r1
	and r0, r2
	sub r4, #0x74
	str r0, [r3, r4]
_021E909C:
	pop {r3, r4, r5, pc}
	nop
_021E90A0: .word 0x000005A4
	thumb_func_end ovy168_21e906c

	thumb_func_start ovy168_21e90a4
ovy168_21e90a4: ; 0x021E90A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	str r0, [sp]
	bl ovy168_21e006c
	str r0, [sp, #4]
	mov r0, #0
	ldr r7, [r5, #4]
	mvn r0, r0
	cmp r7, r0
	bne _021E90CC
	add r0, r5, #0
	bl GFL_HeapFree
	ldr r0, [sp]
	bl GFL_TCBRemove
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021E90CC:
	ldr r6, [sp, #4]
	mov r0, #0x5c
	add r4, r7, #0
	mul r4, r0
	add r6, #8
	ldr r0, [r6, r4]
	cmp r0, #0
	bne _021E90EC
	add r0, r5, #0
	bl GFL_HeapFree
	ldr r0, [sp]
	bl GFL_TCBRemove
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021E90EC:
	ldr r1, [r5]
	cmp r1, #0
	beq _021E90FE
	cmp r1, #1
	beq _021E9132
	cmp r1, #2
	beq _021E9176
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021E90FE:
	bl sub_0201ADC4
	mov r1, #0
	str r1, [r0, #0xc]
	mov r1, #2
	lsl r1, r1, #0x1e
	ldr r0, [r6, r4]
	ldr r2, _021E9198 ; =ovy168_21e95b0
	orr r1, r7
	bl sub_0201AE1C
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	bl sub_02043F2C
	mov r1, #0
	mov r2, #3
	mov r3, #0
	blx sub_0208D60C
	ldr r0, _021E919C ; =0x021F4184
	add sp, #8
	ldrb r0, [r0, r1]
	str r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
_021E9132:
	ldr r0, [r5, #8]
	sub r0, r0, #1
	str r0, [r5, #8]
	beq _021E9150
	ldr r1, _021E91A0 ; =0x0000051C
	ldr r0, [sp, #4]
	ldr r0, [r0, r1]
	cmp r0, #0
	bne _021E9150
	bl ovy168_21e009c
	bl ovy168_21e1214
	cmp r0, #0
	bne _021E9194
_021E9150:
	ldr r0, [r6, r4]
	mov r1, #0
	bl sub_0201AF04
	ldr r0, [r6, r4]
	bl sub_0201ADC4
	mov r1, #1
	str r1, [r0, #0xc]
	ldr r0, [r6, r4]
	ldr r2, _021E9198 ; =ovy168_21e95b0
	add r1, r7, #0
	bl sub_0201AE1C
	ldr r0, [r5]
	add sp, #8
	add r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021E9176:
	ldr r2, _021E91A4 ; =ovy168_21e94b8
	add r1, r7, #0
	mov r3, #1
	bl sub_0201AE08
	add r0, r5, #0
	bl GFL_HeapFree
	ldr r0, [sp]
	bl GFL_TCBRemove
	ldr r0, [sp, #4]
	mov r1, #0
	add r0, r0, r4
	str r1, [r0, #0x30]
_021E9194:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E9198: .word ovy168_21e95b0
_021E919C: .word 0x021F4184
_021E91A0: .word 0x0000051C
_021E91A4: .word ovy168_21e94b8
	thumb_func_end ovy168_21e90a4

	thumb_func_start ovy168_21e91a8
ovy168_21e91a8: ; 0x021E91A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x98
	ldr r3, _021E9470 ; =0x021F32F4
	str r0, [sp, #0xc]
	add r5, r1, #0
	add r2, sp, #0x80
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r3, _021E9474 ; =0x021F32DC
	add r2, sp, #0x68
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r4, _021E9478 ; =0x021F330C
	add r7, sp, #0x80
	add r3, sp, #0x38
	mov r2, #6
_021E91D8:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021E91D8
	ldr r0, [r5, #4]
	lsl r0, r0, #1
	lsr r0, r0, #1
	beq _021E91F6
	cmp r0, #1
	beq _021E929A
	cmp r0, #2
	bne _021E91F2
	b _021E93E0
_021E91F2:
	add sp, #0x98
	pop {r3, r4, r5, r6, r7, pc}
_021E91F6:
	ldr r3, [r5, #8]
	mov r2, #0xc
	mul r2, r3
	ldr r1, [r5]
	mov r0, #0
	add r2, r7, r2
	mov r3, #0x5c
_021E9204:
	lsl r4, r0, #2
	ldr r4, [r2, r4]
	add r6, r4, #0
	mul r6, r3
	add r4, r1, r6
	ldr r4, [r4, #0x30]
	cmp r4, #0
	bne _021E921A
	add r0, r0, #1
	cmp r0, #3
	blt _021E9204
_021E921A:
	cmp r0, #3
	beq _021E9220
	b _021E946A
_021E9220:
	mov r2, #0
	add r0, sp, #0x68
	mov r3, #0xc
_021E9226:
	ldr r4, [r5, #8]
	lsl r1, r2, #2
	add r6, r4, #0
	mul r6, r3
	add r4, r0, r6
	ldr r4, [r1, r4]
	add r1, r5, r1
	add r2, r2, #1
	str r4, [r1, #0x10]
	cmp r2, #3
	blt _021E9226
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _021E9248
	mov r4, #1
	lsl r4, r4, #0xc
	b _021E924A
_021E9248:
	ldr r4, _021E947C ; =0xFFFFF000
_021E924A:
	bl ovy168_21e007c
	mov r1, #0x3c
	str r1, [sp]
	ldr r1, [r5, #8]
	mov r2, #0
	add r3, r4, #0
	bl ovy168_21de094
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _021E9268
	mov r0, #0x5b
	lsl r0, r0, #2
	b _021E926A
_021E9268:
	ldr r0, _021E9480 ; =0xFFFFFE94
_021E926A:
	str r0, [r5, #0x20]
	mov r0, #0x3c
	str r0, [r5, #0x1c]
	ldr r0, [r5, #4]
	lsr r0, r0, #0x1f
	beq _021E927E
	ldr r0, _021E9484 ; =0x000006CA
	mov r1, #2
	bl sub_020061DC
_021E927E:
	ldr r2, [r5, #4]
	mov r1, #2
	add r0, r2, #0
	lsl r2, r2, #1
	lsl r1, r1, #0x1e
	lsr r2, r2, #1
	and r0, r1
	add r2, r2, #1
	sub r1, r1, #1
	and r1, r2
	orr r0, r1
	add sp, #0x98
	str r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_021E929A:
	mov r6, #0
_021E929C:
	ldr r2, [r5, #8]
	mov r1, #0xc
	mul r1, r2
	lsl r4, r6, #2
	add r1, r7, r1
	ldr r0, [r5]
	ldr r1, [r4, r1]
	bl ovy168_21e7b24
	cmp r0, #0
	beq _021E934A
	add r0, r5, r4
	str r0, [sp, #0x10]
	ldr r0, [r0, #0x10]
	mov r2, #5
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _021E9488 ; =FX_SinCosTable_ ; 0x020946BC
	lsl r2, r2, #0xc
	ldrsh r0, [r0, r1]
	mov r3, #0
	asr r1, r0, #0x1f
	blx sub_0208D60C
	mov r2, #2
	lsl r2, r2, #0xa
	add r0, r0, r2
	ldr r2, _021E948C ; =0x00000000
	adc r1, r2
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	str r0, [sp, #0x2c]
	ldr r0, _021E9490 ; =0x00000666
	str r0, [sp, #0x30]
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _021E92F2
	mov r0, #3
	lsl r0, r0, #0xe
	b _021E92F4
_021E92F2:
	ldr r0, _021E9494 ; =0xFFFF3000
_021E92F4:
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x10]
	mov r2, #5
	ldr r0, [r0, #0x10]
	lsl r2, r2, #0xc
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _021E9488 ; =FX_SinCosTable_ ; 0x020946BC
	mov r3, #0
	add r1, r0, r1
	mov r0, #2
	ldrsh r0, [r1, r0]
	asr r1, r0, #0x1f
	blx sub_0208D60C
	mov r3, #2
	add r2, r0, #0
	lsl r3, r3, #0xa
	add r3, r2, r3
	ldr r2, _021E948C ; =0x00000000
	ldr r0, [sp, #0x34]
	adc r1, r2
	lsr r2, r3, #0xc
	lsl r1, r1, #0x14
	orr r2, r1
	add r0, r0, r2
	str r0, [sp, #0x34]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r2, [r5, #8]
	mov r1, #0xc
	mul r1, r2
	add r1, r7, r1
	ldr r0, [r5]
	ldr r1, [r4, r1]
	mov r2, #0
	add r3, sp, #0x2c
	bl ovy168_21e7248
_021E934A:
	add r2, r5, r4
	ldr r1, [r2, #0x10]
	ldr r0, [r5, #0x20]
	add r6, r6, #1
	add r0, r1, r0
	str r0, [r2, #0x10]
	cmp r6, #3
	blt _021E929C
	ldr r0, [r5, #0x1c]
	sub r0, r0, #1
	str r0, [r5, #0x1c]
	beq _021E9364
	b _021E946A
_021E9364:
	mov r6, #0
_021E9366:
	ldr r2, [r5, #8]
	mov r1, #0xc
	add r3, r2, #0
	mul r3, r1
	add r1, sp, #0x80
	lsl r4, r6, #2
	add r1, r1, r3
	ldr r0, [r5]
	ldr r1, [r4, r1]
	bl ovy168_21e7b24
	cmp r0, #0
	beq _021E93BE
	ldr r2, [r5, #0xc]
	mov r3, #0x18
	add r7, r2, #0
	mul r7, r3
	ldr r2, [r5, #8]
	mov r3, #0xc
	mul r3, r2
	add r2, sp, #0x38
	add r2, r2, r7
	add r2, r3, r2
	ldr r0, [r5]
	ldr r2, [r4, r2]
	add r1, sp, #0x20
	bl ovy168_21e9648
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r2, [r5, #8]
	mov r1, #0xc
	add r3, r2, #0
	mul r3, r1
	add r1, sp, #0x80
	add r1, r1, r3
	ldr r0, [r5]
	ldr r1, [r4, r1]
	mov r2, #0
	add r3, sp, #0x20
	bl ovy168_21e7248
_021E93BE:
	add r6, r6, #1
	cmp r6, #3
	blt _021E9366
	ldr r2, [r5, #4]
	mov r1, #2
	add r0, r2, #0
	lsl r2, r2, #1
	lsl r1, r1, #0x1e
	lsr r2, r2, #1
	and r0, r1
	add r2, r2, #1
	sub r1, r1, #1
	and r1, r2
	orr r0, r1
	add sp, #0x98
	str r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_021E93E0:
	ldr r1, [r5]
	ldr r0, _021E9498 ; =0x00000514
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _021E946A
	mov r6, #0
_021E93EC:
	ldr r2, [r5, #8]
	mov r1, #0xc
	mul r1, r2
	lsl r4, r6, #2
	add r1, r7, r1
	ldr r0, [r5]
	ldr r1, [r4, r1]
	bl ovy168_21e9794
	add r1, sp, #0x14
	str r0, [r1, r4]
	bl ovy168_21e008c
	ldr r2, [r5, #8]
	mov r1, #0xc
	mul r1, r2
	add r1, r7, r1
	ldr r1, [r4, r1]
	bl ovy168_21f1864
	add r6, r6, #1
	cmp r6, #3
	blt _021E93EC
	mov r6, #0
	add r7, sp, #0x14
_021E941E:
	lsl r4, r6, #2
	mov r0, #0
	ldr r3, [r7, r4]
	mvn r0, r0
	cmp r3, r0
	beq _021E944A
	ldr r0, [r5, #0xc]
	mov r1, #0x18
	add r2, r0, #0
	mul r2, r1
	ldr r0, [r5, #8]
	mov r1, #0xc
	mul r1, r0
	add r0, sp, #0x38
	add r0, r0, r2
	add r0, r1, r0
	ldr r1, [r4, r0]
	mov r2, #0x5c
	ldr r0, [r5]
	mul r2, r3
	add r0, r0, r2
	str r1, [r0, #0x50]
_021E944A:
	add r6, r6, #1
	cmp r6, #3
	blt _021E941E
	ldr r0, [r5, #4]
	lsr r0, r0, #0x1f
	beq _021E9464
	mov r0, #2
	bl sub_02006268
	ldr r0, _021E949C ; =0x0000057A
	mov r1, #1
	bl sub_020061DC
_021E9464:
	ldr r0, [sp, #0xc]
	bl ovy168_21e03ac
_021E946A:
	add sp, #0x98
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E9470: .word 0x021F32F4
_021E9474: .word 0x021F32DC
_021E9478: .word 0x021F330C
_021E947C: .word 0xFFFFF000
_021E9480: .word 0xFFFFFE94
_021E9484: .word 0x000006CA
_021E9488: .word FX_SinCosTable_
_021E948C: .word 0x00000000
_021E9490: .word 0x00000666
_021E9494: .word 0xFFFF3000
_021E9498: .word 0x00000514
_021E949C: .word 0x0000057A
	thumb_func_end ovy168_21e91a8

	thumb_func_start ovy168_21e94a0
ovy168_21e94a0: ; 0x021E94A0
	push {r3, lr}
	bl sub_0203A6D0
	ldr r3, [r0]
	mov r1, #0x51
	lsl r1, r1, #4
	ldr r2, [r3, r1]
	mov r0, #4
	bic r2, r0
	str r2, [r3, r1]
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy168_21e94a0

	thumb_func_start ovy168_21e94b8
ovy168_21e94b8: ; 0x021E94B8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp, #4]
	bl ovy168_21e006c
	add r4, r0, #0
	mov r0, #0
	ldr r1, [sp, #4]
	mvn r0, r0
	cmp r1, r0
	beq _021E959E
	ldr r0, [sp, #4]
	add r6, r4, #0
	mov r1, #0x5c
	add r5, r0, #0
	mul r5, r1
	add r6, #8
	ldr r0, [r6, r5]
	cmp r0, #0
	beq _021E959E
	bl ovy168_21e009c
	bl ovy168_21e1214
	cmp r0, #0
	beq _021E959E
	mov r0, #0x51
	lsl r0, r0, #4
	str r0, [sp, #0xc]
	ldr r0, [r4, r0]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	bne _021E959E
	ldr r0, [r6, r5]
	bl sub_0201ADD0
	cmp r0, #0xff
	bne _021E9514
	add r4, #0x54
	mov r0, #2
	ldr r1, [r4, r5]
	lsl r0, r0, #0xa
	orr r0, r1
	add sp, #0x10
	str r0, [r4, r5]
	pop {r3, r4, r5, r6, r7, pc}
_021E9514:
	add r7, r4, #0
	add r7, #0x54
	ldr r0, [r7, r5]
	lsl r1, r0, #0x1b
	lsr r1, r1, #0x1e
	str r1, [sp, #8]
	mov r1, #0x18
	bic r0, r1
	ldr r1, [sp, #8]
	sub r1, r1, #1
	lsl r1, r1, #0x1e
	lsr r1, r1, #0x1b
	orr r0, r1
	str r0, [r7, r5]
	bl sub_02043F2C
	ldr r2, [sp, #8]
	mov r1, #0
	mov r3, #0
	blx sub_0208D60C
	cmp r1, #0
	bne _021E959E
	ldr r1, [r7, r5]
	mov r0, #0x18
	bic r1, r0
	mov r0, #0x18
	orr r0, r1
	str r0, [r7, r5]
	ldr r0, _021E95A4 ; =0x00000DB6
	ldr r3, _021E95A8 ; =0x021F4188
	str r0, [sp]
	ldr r0, [sp, #0xc]
	mov r2, #1
	add r0, #0x30
	str r0, [sp, #0xc]
	ldrh r1, [r4, r0]
	mov r0, #0
	mvn r0, r0
	lsr r0, r0, #0x11
	and r1, r0
	mov r0, #2
	lsl r0, r0, #0xe
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0xc
	bl GFL_HeapAllocate
	add r7, r0, #0
	ldr r0, [sp, #4]
	str r0, [r7, #4]
	ldr r0, [r6, r5]
	bl sub_0201ADC8
	cmp r0, #1
	bls _021E958E
	ldr r0, [r6, r5]
	mov r1, #1
	bl sub_0201AF04
_021E958E:
	ldr r0, [r4]
	ldr r1, _021E95AC ; =ovy168_21e90a4
	add r2, r7, #0
	mov r3, #0
	bl sub_0203A614
	add r1, r4, r5
	str r0, [r1, #0x30]
_021E959E:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E95A4: .word 0x00000DB6
_021E95A8: .word 0x021F4188
_021E95AC: .word ovy168_21e90a4
	thumb_func_end ovy168_21e94b8

	thumb_func_start ovy168_21e95b0
ovy168_21e95b0: ; 0x021E95B0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	str r2, [sp]
	add r6, r3, #0
	bl ovy168_21e006c
	add r5, r0, #0
	lsl r0, r4, #0x10
	lsr r1, r0, #0x10
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	bne _021E95D2
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021E95D2:
	mov r0, #0x5c
	mul r0, r1
	str r0, [sp, #4]
	add r0, r5, r0
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _021E95E6
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021E95E6:
	mov r1, #2
	lsl r1, r1, #0x1e
	tst r1, r4
	beq _021E9626
	mov r1, #0
	str r1, [sp, #8]
	bl sub_0201ADD0
	add r7, r0, #0
	mov r4, #0
	cmp r7, #0
	ble _021E961A
	ldr r0, [sp, #4]
	add r5, r5, r0
_021E9602:
	lsl r1, r4, #0x18
	ldr r0, [r5, #8]
	lsr r1, r1, #0x18
	bl sub_0201ADD8
	cmp r6, r0
	bne _021E9614
	mov r0, #1
	str r0, [sp, #8]
_021E9614:
	add r4, r4, #1
	cmp r4, r7
	blt _021E9602
_021E961A:
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _021E9624
	mov r1, #0
	b _021E9628
_021E9624:
	b _021E9626
_021E9626:
	mov r1, #1
_021E9628:
	ldr r0, [sp]
	str r1, [r0, #0xc]
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy168_21e95b0

	thumb_func_start ovy168_21e9634
ovy168_21e9634: ; 0x021E9634
	push {r4, lr}
	add r4, r0, #0
	bl ovy168_21e006c
	mov r1, #0x5c
	mul r1, r4
	mov r2, #0
	add r0, r0, r1
	str r2, [r0, #0x4c]
	pop {r4, pc}
	thumb_func_end ovy168_21e9634

	thumb_func_start ovy168_21e9648
ovy168_21e9648: ; 0x021E9648
	cmp r2, #0xd
	bhi _021E96B2
	add r3, r2, r2
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_021E9658: ; jump table
	.short _021E9674 - _021E9658 - 2 ; case 0
	.short _021E9674 - _021E9658 - 2 ; case 1
	.short _021E9678 - _021E9658 - 2 ; case 2
	.short _021E9678 - _021E9658 - 2 ; case 3
	.short _021E9678 - _021E9658 - 2 ; case 4
	.short _021E9678 - _021E9658 - 2 ; case 5
	.short _021E9692 - _021E9658 - 2 ; case 6
	.short _021E9692 - _021E9658 - 2 ; case 7
	.short _021E96A8 - _021E9658 - 2 ; case 8
	.short _021E96A8 - _021E9658 - 2 ; case 9
	.short _021E96A8 - _021E9658 - 2 ; case 10
	.short _021E96A8 - _021E9658 - 2 ; case 11
	.short _021E96A8 - _021E9658 - 2 ; case 12
	.short _021E96A8 - _021E9658 - 2 ; case 13
_021E9674:
	ldr r3, _021E96C0 ; =0x021F327C
	b _021E96AC
_021E9678:
	mov r3, #0x51
	lsl r3, r3, #4
	ldr r0, [r0, r3]
	lsl r3, r0, #0x1e
	lsr r3, r3, #0x1f
	beq _021E9686
	b _021E969E
_021E9686:
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _021E968E
	b _021E96A4
_021E968E:
	ldr r3, _021E96C4 ; =0x021F32AC
	b _021E96A0
_021E9692:
	mov r3, #0x51
	lsl r3, r3, #4
	ldr r0, [r0, r3]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	beq _021E96A4
_021E969E:
	ldr r3, _021E96C8 ; =0x021F33CC
_021E96A0:
	sub r2, r2, #2
	b _021E96AC
_021E96A4:
	ldr r3, _021E96CC ; =0x021F3384
	b _021E96A0
_021E96A8:
	ldr r3, _021E96D0 ; =0x021F333C
	sub r2, #8
_021E96AC:
	mov r0, #0xc
	mul r0, r2
	add r0, r3, r0
_021E96B2:
	ldr r2, [r0]
	str r2, [r1]
	ldr r2, [r0, #4]
	str r2, [r1, #4]
	ldr r0, [r0, #8]
	str r0, [r1, #8]
	bx lr
	.align 2, 0
_021E96C0: .word 0x021F327C
_021E96C4: .word 0x021F32AC
_021E96C8: .word 0x021F33CC
_021E96CC: .word 0x021F3384
_021E96D0: .word 0x021F333C
	thumb_func_end ovy168_21e9648

	thumb_func_start ovy168_21e96d4
ovy168_21e96d4: ; 0x021E96D4
	cmp r2, #0
	bne _021E9766
	cmp r1, #0xd
	bhi _021E977C
	add r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021E96E8: ; jump table
	.short _021E9704 - _021E96E8 - 2 ; case 0
	.short _021E9704 - _021E96E8 - 2 ; case 1
	.short _021E970C - _021E96E8 - 2 ; case 2
	.short _021E970C - _021E96E8 - 2 ; case 3
	.short _021E970C - _021E96E8 - 2 ; case 4
	.short _021E970C - _021E96E8 - 2 ; case 5
	.short _021E973C - _021E96E8 - 2 ; case 6
	.short _021E973C - _021E96E8 - 2 ; case 7
	.short _021E975C - _021E96E8 - 2 ; case 8
	.short _021E975C - _021E96E8 - 2 ; case 9
	.short _021E975C - _021E96E8 - 2 ; case 10
	.short _021E975C - _021E96E8 - 2 ; case 11
	.short _021E975C - _021E96E8 - 2 ; case 12
	.short _021E975C - _021E96E8 - 2 ; case 13
_021E9704:
	ldr r0, _021E9780 ; =0x021F31F4
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
_021E970C:
	mov r2, #0x51
	lsl r2, r2, #4
	ldr r0, [r0, r2]
	lsl r2, r0, #0x1e
	lsr r2, r2, #0x1f
	beq _021E9722
	sub r0, r1, #2
	lsl r1, r0, #2
	ldr r0, _021E9784 ; =0x021F3234
	ldr r0, [r0, r1]
	bx lr
_021E9722:
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _021E9732
	sub r0, r1, #2
	lsl r1, r0, #2
	ldr r0, _021E9788 ; =0x021F3264
	ldr r0, [r0, r1]
	bx lr
_021E9732:
	sub r0, r1, #2
	lsl r1, r0, #2
	ldr r0, _021E978C ; =0x021F31FC
	ldr r0, [r0, r1]
	bx lr
_021E973C:
	mov r2, #0x51
	lsl r2, r2, #4
	ldr r0, [r0, r2]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	beq _021E9752
	sub r0, r1, #2
	lsl r1, r0, #2
	ldr r0, _021E9784 ; =0x021F3234
	ldr r0, [r0, r1]
	bx lr
_021E9752:
	sub r0, r1, #2
	lsl r1, r0, #2
	ldr r0, _021E9788 ; =0x021F3264
	ldr r0, [r0, r1]
	bx lr
_021E975C:
	sub r1, #8
	ldr r0, _021E9790 ; =0x021F324C
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
_021E9766:
	cmp r1, #8
	bge _021E9778
	mov r0, #1
	tst r1, r0
	beq _021E9774
	lsl r0, r0, #0x10
	bx lr
_021E9774:
	lsl r0, r0, #0x11
	bx lr
_021E9778:
	mov r0, #1
	lsl r0, r0, #0x10
_021E977C:
	bx lr
	nop
_021E9780: .word 0x021F31F4
_021E9784: .word 0x021F3234
_021E9788: .word 0x021F3264
_021E978C: .word 0x021F31FC
_021E9790: .word 0x021F324C
	thumb_func_end ovy168_21e96d4

	thumb_func_start ovy168_21e9794
ovy168_21e9794: ; 0x021E9794
	push {r4, r5}
	mov r5, #0
	mov r2, #0x5c
_021E979A:
	add r3, r5, #0
	mul r3, r2
	add r4, r0, r3
	ldr r3, [r4, #8]
	cmp r3, #0
	beq _021E97B2
	ldr r3, [r4, #0x50]
	cmp r1, r3
	bne _021E97B2
	add r0, r5, #0
	pop {r4, r5}
	bx lr
_021E97B2:
	add r5, r5, #1
	cmp r5, #0xe
	blt _021E979A
	mov r0, #0
	mvn r0, r0
	pop {r4, r5}
	bx lr
	thumb_func_end ovy168_21e9794

	thumb_func_start ovy168_21e97c0
ovy168_21e97c0: ; 0x021E97C0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #0
	mov lr, r3
	mov ip, r1
	add r7, r2, #0
	mov r1, #1
	add r3, r0, #0
	ldr r6, _021E981C ; =0x021F3414
	mov r2, #0
	and r3, r1
_021E97D8:
	lsl r1, r2, #3
	ldrh r0, [r6, r1]
	lsl r4, r0, #0x12
	lsr r4, r4, #0x12
	cmp r5, r4
	bne _021E9812
	lsl r4, r0, #0x11
	lsr r4, r4, #0x1f
	cmp r3, r4
	bne _021E9812
	ldr r2, _021E9820 ; =0x021F3416
	lsl r0, r0, #0x10
	ldrsh r2, [r2, r1]
	str r2, [r7]
	mov r2, #0
	str r2, [r7, #4]
	ldr r2, _021E9824 ; =0x021F3418
	ldrsh r2, [r2, r1]
	str r2, [r7, #8]
	ldr r2, _021E9828 ; =0x021F341A
	ldrh r2, [r2, r1]
	mov r1, lr
	strh r2, [r1]
	lsr r1, r0, #0x1f
	ldr r0, [sp, #0x18]
	str r1, [r0]
	mov r0, #1
	mov ip, r0
	b _021E9818
_021E9812:
	add r2, r2, #1
	cmp r2, #0x30
	blo _021E97D8
_021E9818:
	mov r0, ip
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E981C: .word 0x021F3414
_021E9820: .word 0x021F3416
_021E9824: .word 0x021F3418
_021E9828: .word 0x021F341A
	thumb_func_end ovy168_21e97c0

	thumb_func_start ovy168_21e982c
ovy168_21e982c: ; 0x021E982C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r5, #0x72
	add r7, r0, #0
	mov r0, #0x56
	str r2, [sp, #4]
	add r6, r1, #0
	lsl r5, r5, #2
	str r0, [sp]
	ldr r3, _021E9870 ; =0x021F4194
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #1
	bl GFL_HeapAllocate
	add r4, r0, #0
	sub r0, r5, #4
	str r7, [r4]
	strh r6, [r4, r0]
	ldr r0, [sp, #4]
	sub r5, #8
	str r0, [r4, r5]
	mov r0, #0x19
	mov r1, #0
	add r2, r6, #0
	bl sub_0204BF1C
	str r0, [r4, #4]
	add r0, r4, #0
	bl ovy168_21e9a68
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E9870: .word 0x021F4194
	thumb_func_end ovy168_21e982c

	thumb_func_start ovy168_21e9874
ovy168_21e9874: ; 0x021E9874
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ovy168_21e9ccc
	mov r4, #0
_021E987E:
	lsl r0, r4, #4
	add r0, r5, r0
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _021E9890
	add r0, r5, #0
	add r1, r4, #0
	bl ovy168_21e9c98
_021E9890:
	add r4, r4, #1
	cmp r4, #3
	blt _021E987E
	ldr r0, [r5, #4]
	bl sub_0204BF98
	add r0, r5, #0
	bl GFL_HeapFree
	pop {r3, r4, r5, pc}
	thumb_func_end ovy168_21e9874

	thumb_func_start ovy168_21e98a4
ovy168_21e98a4: ; 0x021E98A4
	ldr r3, _021E98A8 ; =sub_0204B794
	bx r3
	.align 2, 0
_021E98A8: .word sub_0204B794
	thumb_func_end ovy168_21e98a4

	thumb_func_start ovy168_21e98ac
ovy168_21e98ac: ; 0x021E98AC
	push {r4, lr}
	sub sp, #0x18
	add r4, r2, #2
	str r4, [sp]
	add r4, r2, #3
	str r4, [sp, #4]
	str r3, [sp, #8]
	add r4, sp, #0x20
	mov r3, #0
	ldrsh r3, [r4, r3]
	str r3, [sp, #0xc]
	ldr r3, [sp, #0x24]
	str r3, [sp, #0x10]
	ldr r3, [sp, #0x28]
	str r3, [sp, #0x14]
	add r3, r2, #1
	bl ovy168_21e98d4
	add sp, #0x18
	pop {r4, pc}
	thumb_func_end ovy168_21e98ac

	thumb_func_start ovy168_21e98d4
ovy168_21e98d4: ; 0x021E98D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	str r3, [sp, #0x10]
	add r6, r2, #0
	ldr r3, _021E9A5C ; =0x021F359C
	add r2, sp, #0x30
	add r5, r0, #0
	str r1, [sp, #0xc]
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r1, #7
	lsl r1, r1, #6
	ldr r0, [r5, r1]
	cmp r0, #2
	bne _021E9900
	add sp, #0x48
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E9900:
	add r1, r1, #4
	ldrh r2, [r5, r1]
	ldr r1, _021E9A60 ; =0x00007FFF
	ldr r0, [sp, #0xc]
	and r2, r1
	add r1, r1, #1
	orr r1, r2
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0204AA30
	str r0, [sp, #0x18]
	mov r4, #0
_021E991A:
	lsl r0, r4, #4
	add r0, r5, r0
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _021E992A
	add r4, r4, #1
	cmp r4, #3
	blt _021E991A
_021E992A:
	add r0, r5, #0
	str r0, [sp, #0x1c]
	add r0, #0xc
	str r0, [sp, #0x1c]
	mov r0, #0x71
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	add r1, r6, #0
	mov r2, #0
	str r0, [sp]
	ldr r0, [sp, #0x18]
	mov r3, #0
	lsl r7, r4, #4
	bl Oam_LoadNCGRFile
	ldr r1, [sp, #0x1c]
	mov r3, #0x71
	str r0, [r1, r7]
	add r0, r5, #0
	str r0, [sp, #0x20]
	add r0, #0x10
	str r0, [sp, #0x20]
	mov r0, #0x71
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	lsl r3, r3, #2
	lsl r6, r4, #5
	sub r3, #0x84
	add r3, r6, r3
	str r0, [sp]
	lsl r3, r3, #0x10
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x10]
	mov r2, #0
	lsr r3, r3, #0x10
	bl sub_0204BC48
	ldr r1, [sp, #0x20]
	mov r3, #0x71
	str r0, [r1, r7]
	lsl r3, r3, #2
	add r6, r5, #0
	ldrh r3, [r5, r3]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x60]
	ldr r2, [sp, #0x64]
	add r6, #0x14
	bl Oam_LoadNCERFile
	str r0, [r6, r7]
	bl ovy168_21e00b8
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x20]
	mov r1, #0
	ldr r0, [r0, r7]
	bl sub_0204BDC0
	mov r1, #2
	str r1, [sp]
	mov r1, #0x20
	str r1, [sp, #4]
	ldr r1, _021E9A64 ; =0x000003FF
	mov r3, #0x71
	and r0, r1
	lsl r0, r0, #0xf
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	lsl r3, r3, #2
	ldrh r3, [r5, r3]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	bl sub_02026EE8
	add r0, sp, #0x60
	mov r1, #8
	ldrsh r1, [r0, r1]
	add r2, sp, #0x30
	strh r1, [r2]
	mov r1, #0xc
	ldrsh r0, [r0, r1]
	strh r0, [r2, #2]
	ldr r0, [sp, #0x70]
	cmp r0, #0
	bne _021E9A0C
	ldr r0, [sp, #0x74]
	cmp r0, #0
	bne _021E9A0C
	add r0, r5, #0
	str r0, [sp, #0x28]
	add r0, #8
	str r0, [sp, #0x28]
	add r0, r0, r7
	str r0, [sp, #0x14]
	add r0, sp, #0x30
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0x71
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x20]
	str r0, [sp, #8]
	ldr r0, [r5, #4]
	ldr r1, [r1, r7]
	ldr r2, [r2, r7]
	ldr r3, [r6, r7]
	bl Oam_CreateSprite
	ldr r1, [sp, #0x28]
	b _021E9A42
_021E9A0C:
	ldr r0, [sp, #0x70]
	ldr r1, [sp, #0x1c]
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x74]
	ldr r2, [sp, #0x20]
	str r0, [sp, #0x40]
	add r0, r5, #0
	str r0, [sp, #0x2c]
	add r0, #8
	str r0, [sp, #0x2c]
	add r0, r0, r7
	str r0, [sp, #0x14]
	add r0, sp, #0x30
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0x71
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	str r0, [sp, #8]
	ldr r0, [r5, #4]
	ldr r1, [r1, r7]
	ldr r2, [r2, r7]
	ldr r3, [r6, r7]
	bl sub_0204C0A4
	ldr r1, [sp, #0x2c]
_021E9A42:
	str r0, [r1, r7]
	ldr r0, [sp, #0x14]
	mov r1, #1
	ldr r0, [r0]
	bl sub_0204C520
	ldr r0, [sp, #0x18]
	bl GFL_ArcToolFree
	add r0, r4, #0
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E9A5C: .word 0x021F359C
_021E9A60: .word 0x00007FFF
_021E9A64: .word 0x000003FF
	thumb_func_end ovy168_21e98d4

	thumb_func_start ovy168_21e9a68
ovy168_21e9a68: ; 0x021E9A68
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	ldr r1, _021E9C18 ; =0x021F3594
	add r5, r0, #0
	ldrh r2, [r1]
	add r0, sp, #0x14
	mov r6, #7
	strh r2, [r0]
	ldrh r2, [r1, #2]
	ldr r3, _021E9C1C ; =0x021F35B4
	lsl r6, r6, #6
	strh r2, [r0, #2]
	ldrh r2, [r1, #4]
	strh r2, [r0, #4]
	ldrh r1, [r1, #6]
	add r2, sp, #0x1c
	strh r1, [r0, #6]
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r5, r6]
	cmp r0, #1
	beq _021E9A9E
	b _021E9C14
_021E9A9E:
	add r1, r6, #4
	ldrh r2, [r5, r1]
	ldr r1, _021E9C20 ; =0x00007FFF
	mov r0, #0xb
	and r2, r1
	add r1, r1, #1
	orr r1, r2
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0204AA30
	add r1, r6, #4
	ldrh r1, [r5, r1]
	mov r2, #0
	mov r3, #0
	str r1, [sp]
	add r1, r6, #0
	add r1, #0x6b
	str r0, [sp, #0xc]
	mov r4, #0
	bl Oam_LoadNCGRFile
	str r0, [r5, #0x3c]
	add r0, r6, #4
	ldrh r0, [r5, r0]
	add r1, r6, #0
	add r3, r6, #0
	str r0, [sp]
	str r1, [sp, #0x10]
	add r1, #0x6a
	ldr r0, [sp, #0xc]
	mov r2, #0
	sub r3, #0x20
	str r1, [sp, #0x10]
	bl sub_0204BBA0
	str r0, [r5, #0x40]
	add r3, r6, #4
	add r1, r6, #0
	add r2, r6, #0
	ldrh r3, [r5, r3]
	ldr r0, [sp, #0xc]
	add r1, #0x6c
	add r2, #0x6d
	bl Oam_LoadNCERFile
	str r0, [r5, #0x44]
	bl ovy168_21e00b8
	add r7, r0, #0
	ldr r0, [r5, #0x10]
	mov r1, #0
	bl sub_0204BDC0
	mov r1, #2
	str r1, [sp]
	mov r1, #0x20
	str r1, [sp, #4]
	ldr r1, _021E9C20 ; =0x00007FFF
	add r3, r6, #4
	lsr r1, r1, #5
	and r0, r1
	lsl r0, r0, #0xf
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	ldrh r3, [r5, r3]
	ldr r2, [sp, #0x10]
	add r0, r7, #0
	mov r1, #0xb
	bl sub_02026EE8
	add r7, r6, #4
_021E9B2E:
	lsl r1, r4, #3
	add r0, sp, #0x14
	strh r1, [r0]
	lsl r0, r4, #4
	add r6, r5, r0
	add r0, sp, #0x14
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldrh r0, [r5, r7]
	str r0, [sp, #8]
	ldr r0, [r5, #4]
	ldr r1, [r5, #0x3c]
	ldr r2, [r5, #0x40]
	ldr r3, [r5, #0x44]
	bl Oam_CreateSprite
	mov r1, #1
	str r0, [r6, #0x38]
	bl sub_0204C520
	add r4, r4, #1
	cmp r4, #0x16
	blt _021E9B2E
	add r0, r5, #0
	mov r1, #0xa
	mov r2, #0
	bl ovy168_21e9c24
	mov r4, #0x71
	mov r7, #0x80
	add r6, sp, #0x14
	strh r7, [r6, #8]
	mov r0, #0x60
	strh r0, [r6, #0xa]
	mov r0, #1
	strh r0, [r6, #0x1e]
	add r0, sp, #0x1c
	str r0, [sp]
	mov r0, #0
	lsl r4, r4, #2
	str r0, [sp, #4]
	ldrh r0, [r5, r4]
	str r0, [sp, #8]
	ldr r0, [r5, #4]
	ldr r1, [r5, #0x3c]
	ldr r2, [r5, #0x40]
	ldr r3, [r5, #0x44]
	bl sub_0204C0A4
	add r1, r4, #0
	sub r1, #0x2c
	str r0, [r5, r1]
	mov r1, #1
	bl sub_0204C520
	add r0, r4, #0
	sub r0, #0x2c
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0204C124
	add r0, r4, #0
	sub r0, #0x2c
	ldr r0, [r5, r0]
	mov r1, #0x14
	bl sub_0204C488
	add r0, r4, #0
	sub r0, #0x2c
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_0204C438
	strh r7, [r6]
	mov r0, #0x60
	strh r0, [r6, #2]
	add r0, sp, #0x14
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldrh r0, [r5, r4]
	str r0, [sp, #8]
	ldr r0, [r5, #4]
	ldr r1, [r5, #0x3c]
	ldr r2, [r5, #0x40]
	ldr r3, [r5, #0x44]
	bl Oam_CreateSprite
	add r1, r4, #0
	sub r1, #0x1c
	str r0, [r5, r1]
	mov r1, #1
	bl sub_0204C520
	add r0, r4, #0
	sub r0, #0x1c
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_0204C520
	add r0, r4, #0
	sub r0, #0x1c
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0204C124
	sub r4, #0x1c
	ldr r0, [r5, r4]
	mov r1, #0x15
	bl sub_0204C488
	ldr r0, [sp, #0xc]
	bl GFL_ArcToolFree
_021E9C14:
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021E9C18: .word 0x021F3594
_021E9C1C: .word 0x021F35B4
_021E9C20: .word 0x00007FFF
	thumb_func_end ovy168_21e9a68

	thumb_func_start ovy168_21e9c24
ovy168_21e9c24: ; 0x021E9C24
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	str r1, [sp]
	add r5, r2, #0
	ldr r0, [r7, #0x38]
	bne _021E9C34
	mov r1, #3
	b _021E9C36
_021E9C34:
	mov r1, #4
_021E9C36:
	bl sub_0204C488
	ldr r0, [sp]
	mov r4, #0
	cmp r0, #0
	ble _021E9C6E
_021E9C42:
	cmp r4, r5
	bge _021E9C4A
	mov r6, #1
	b _021E9C58
_021E9C4A:
	cmp r4, r5
	bne _021E9C52
	mov r6, #2
	b _021E9C58
_021E9C52:
	cmp r4, r5
	ble _021E9C58
	mov r6, #0
_021E9C58:
	lsl r0, r4, #4
	add r0, r7, r0
	lsl r1, r6, #0x10
	ldr r0, [r0, #0x48]
	lsr r1, r1, #0x10
	bl sub_0204C488
	ldr r0, [sp]
	add r4, r4, #1
	cmp r4, r0
	blt _021E9C42
_021E9C6E:
	add r0, r4, #1
	lsl r0, r0, #4
	add r0, r7, r0
	ldr r0, [r0, #0x38]
	mov r1, #5
	bl sub_0204C488
	add r4, r4, #2
	cmp r4, #0x16
	bge _021E9C96
	mov r5, #0x11
_021E9C84:
	lsl r0, r4, #4
	add r0, r7, r0
	ldr r0, [r0, #0x38]
	add r1, r5, #0
	bl sub_0204C488
	add r4, r4, #1
	cmp r4, #0x16
	blt _021E9C84
_021E9C96:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy168_21e9c24

	thumb_func_start ovy168_21e9c98
ovy168_21e9c98: ; 0x021E9C98
	push {r3, r4, r5, lr}
	add r5, r0, #0
	lsl r4, r1, #4
	add r1, r5, r4
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _021E9CC8
	ldr r0, [r1, #0xc]
	bl sub_0204B98C
	add r0, r5, r4
	ldr r0, [r0, #0x10]
	bl sub_0204BCD0
	add r0, r5, r4
	ldr r0, [r0, #0x14]
	bl sub_0204BE64
	add r5, #8
	ldr r0, [r5, r4]
	bl sub_0204C108
	mov r0, #0
	str r0, [r5, r4]
_021E9CC8:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy168_21e9c98

	thumb_func_start ovy168_21e9ccc
ovy168_21e9ccc: ; 0x021E9CCC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	mov r0, #7
	lsl r0, r0, #6
	str r0, [sp]
	ldr r0, [r6, r0]
	cmp r0, #1
	bne _021E9D2C
	ldr r0, [sp]
	mov r4, #0
	str r0, [sp, #4]
	sub r0, #0x28
	str r0, [sp, #4]
	ldr r0, [sp]
	add r5, r4, #0
	sub r0, #0x28
	str r0, [sp]
_021E9CF0:
	lsl r0, r4, #4
	add r7, r6, r0
	ldr r0, [sp, #4]
	ldr r0, [r7, r0]
	bl sub_0204C108
	ldr r0, [sp]
	add r4, r4, #1
	str r5, [r7, r0]
	cmp r4, #2
	blt _021E9CF0
	mov r7, #0
_021E9D08:
	lsl r0, r5, #4
	add r4, r6, r0
	ldr r0, [r4, #0x38]
	bl sub_0204C108
	add r5, r5, #1
	str r7, [r4, #0x38]
	cmp r5, #0x16
	blt _021E9D08
	ldr r0, [r6, #0xc]
	bl sub_0204B98C
	ldr r0, [r6, #0x10]
	bl sub_0204BCD0
	ldr r0, [r6, #0x14]
	bl sub_0204BE64
_021E9D2C:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy168_21e9ccc

	thumb_func_start ovy168_21e9d30
ovy168_21e9d30: ; 0x021E9D30
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	add r4, r1, #0
	add r1, r5, #0
	add r1, #8
	lsl r0, r4, #4
	ldr r0, [r1, r0]
	add r6, r2, #0
	cmp r0, #0
	beq _021E9DBA
	mov r7, #0
	ldrsh r1, [r3, r7]
	mov r2, #0
	lsl r1, r1, #0xc
	str r1, [sp, #0x1c]
	mov r1, #2
	ldrsh r1, [r3, r1]
	lsl r1, r1, #0xc
	str r1, [sp, #0x20]
	add r1, sp, #0x18
	str r7, [sp, #0x24]
	bl Oam_GetSpritePosData
	add r2, sp, #0x18
	ldrsh r0, [r2, r7]
	lsl r1, r0, #0xc
	str r1, [sp, #0x28]
	mov r0, #2
	ldrsh r0, [r2, r0]
	lsl r0, r0, #0xc
	str r0, [sp, #0x2c]
	str r7, [sp, #0x30]
	cmp r6, #1
	bne _021E9D88
	ldr r2, [sp, #0x1c]
	add r1, r2, r1
	str r1, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	add r0, r1, r0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x24]
	add r0, r0, r7
	str r0, [sp, #0x24]
_021E9D88:
	add r0, sp, #0x1c
	str r0, [sp]
	ldr r0, [sp, #0x48]
	add r1, r4, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x4c]
	add r2, r6, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x50]
	add r3, sp, #0x28
	str r0, [sp, #0xc]
	ldr r0, _021E9DC0 ; =ovy168_21ea02c
	str r0, [sp, #0x10]
	ldr r0, _021E9DC4 ; =ovy168_21ea06c
	str r0, [sp, #0x14]
	add r0, r5, #0
	bl ovy168_21e9e98
	mov r0, #0x6e
	lsl r0, r0, #2
	mov r1, #1
	ldr r2, [r5, r0]
	lsl r1, r4
	orr r1, r2
	str r1, [r5, r0]
_021E9DBA:
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_021E9DC0: .word ovy168_21ea02c
_021E9DC4: .word ovy168_21ea06c
	thumb_func_end ovy168_21e9d30

	thumb_func_start ovy168_21e9dc8
ovy168_21e9dc8: ; 0x021E9DC8
	push {r3, r4, r5, r6, lr}
	sub sp, #0x24
	add r4, r1, #0
	add r5, r0, #0
	lsl r6, r4, #4
	add r6, r5, r6
	ldr r6, [r6, #8]
	cmp r6, #0
	beq _021E9E0E
	mov r6, #1
	lsl r6, r6, #0xc
	str r6, [sp, #0x18]
	str r6, [sp, #0x1c]
	str r6, [sp, #0x20]
	str r3, [sp]
	ldr r3, [sp, #0x38]
	str r3, [sp, #4]
	ldr r3, [sp, #0x3c]
	str r3, [sp, #8]
	ldr r3, [sp, #0x40]
	str r3, [sp, #0xc]
	ldr r3, _021E9E14 ; =ovy168_21ea08c
	str r3, [sp, #0x10]
	ldr r3, _021E9E18 ; =ovy168_21ea0d4
	str r3, [sp, #0x14]
	add r3, sp, #0x18
	bl ovy168_21e9e98
	mov r0, #0x6f
	lsl r0, r0, #2
	mov r1, #1
	ldr r2, [r5, r0]
	lsl r1, r4
	orr r1, r2
	str r1, [r5, r0]
_021E9E0E:
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
	nop
_021E9E14: .word ovy168_21ea08c
_021E9E18: .word ovy168_21ea0d4
	thumb_func_end ovy168_21e9dc8

	thumb_func_start ovy168_21e9e1c
ovy168_21e9e1c: ; 0x021E9E1C
	push {r3, lr}
	lsl r1, r1, #4
	add r0, r0, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _021E9E30
	lsl r1, r2, #0x10
	lsr r1, r1, #0x10
	bl sub_0204C488
_021E9E30:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy168_21e9e1c

	thumb_func_start ovy168_21e9e34
ovy168_21e9e34: ; 0x021E9E34
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	lsl r1, r1, #4
	add r1, r0, r1
	ldr r0, [r1, #8]
	add r5, r2, #0
	add r4, r3, #0
	cmp r0, #0
	beq _021E9E80
	ldr r0, [r1, #0x10]
	mov r1, #0
	bl sub_0204BDC0
	ldr r1, _021E9E84 ; =0x000003FF
	and r0, r1
	lsr r0, r0, #5
	mov r1, #1
	lsl r1, r0
	lsl r0, r1, #0x10
	lsr r6, r0, #0x10
	bl ovy168_21e00b8
	add r7, r0, #0
	bl ovy168_21e00ac
	str r5, [sp]
	str r4, [sp, #4]
	add r4, sp, #0x28
	ldrh r1, [r4, #4]
	mov r3, #0
	add r2, r6, #0
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldrsb r3, [r4, r3]
	add r0, r7, #0
	mov r1, #4
	bl sub_02026FE4
_021E9E80:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E9E84: .word 0x000003FF
	thumb_func_end ovy168_21e9e34
_021E9E88:
	.byte 0x6E, 0x21, 0x89, 0x00, 0x41, 0x58, 0x02, 0x20
	.byte 0x80, 0x07, 0x08, 0x40, 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy168_21e9e98
ovy168_21e9e98: ; 0x021E9E98
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r1, [sp, #8]
	ldr r1, _021EA020 ; =0x00000277
	add r7, r3, #0
	str r1, [sp]
	sub r1, #0xb3
	ldrh r1, [r0, r1]
	str r0, [sp, #4]
	ldr r0, _021EA024 ; =0x00007FFF
	ldr r3, _021EA028 ; =0x021F4194
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	str r2, [sp, #0xc]
	lsr r0, r0, #0x10
	mov r1, #0x50
	mov r2, #0
	ldr r6, [sp, #0x28]
	ldr r5, [sp, #0x2c]
	bl GFL_HeapAllocate
	add r4, r0, #0
	ldr r0, [sp, #4]
	str r0, [r4]
	ldr r0, [sp, #8]
	str r0, [r4, #0x10]
	ldr r0, [r7]
	str r0, [r4, #4]
	ldr r0, [r7, #4]
	str r0, [r4, #8]
	ldr r0, [r7, #8]
	str r0, [r4, #0xc]
	ldr r0, [sp, #0xc]
	str r0, [r4, #0x14]
	str r5, [r4, #0x3c]
	str r5, [r4, #0x40]
	mov r0, #0
	str r0, [r4, #0x44]
	ldr r0, [sp, #0x30]
	str r0, [r4, #0x48]
	ldr r0, [sp, #0x34]
	lsl r0, r0, #1
	str r0, [r4, #0x4c]
	ldr r0, [r7]
	str r0, [r4, #0x18]
	ldr r0, [r7, #4]
	str r0, [r4, #0x1c]
	ldr r0, [r7, #8]
	str r0, [r4, #0x20]
	ldr r0, [r6]
	str r0, [r4, #0x24]
	ldr r0, [r6, #4]
	str r0, [r4, #0x28]
	ldr r0, [r6, #8]
	str r0, [r4, #0x2c]
	ldr r0, [sp, #0xc]
	cmp r0, #3
	bhi _021EA004
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E9F1C: ; jump table
	.short _021EA004 - _021E9F1C - 2 ; case 0
	.short _021E9F24 - _021E9F1C - 2 ; case 1
	.short _021E9F6A - _021E9F1C - 2 ; case 2
	.short _021E9F5E - _021E9F1C - 2 ; case 3
_021E9F24:
	cmp r5, #0
	ble _021E9F3A
	lsl r0, r5, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021E9F48
_021E9F3A:
	lsl r0, r5, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021E9F48:
	blx sub_0208DA4C
	add r3, r0, #0
	add r0, r4, #0
	add r2, r4, #0
	add r0, #0x18
	add r1, r6, #0
	add r2, #0x30
	bl ovy168_21e0b7c
	b _021EA004
_021E9F5E:
	ldr r0, [r4, #0x40]
	lsl r0, r0, #1
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x4c]
	lsl r0, r0, #1
	str r0, [r4, #0x4c]
_021E9F6A:
	cmp r5, #0
	ble _021E9F82
	lsl r7, r5, #0xc
	add r0, r7, #0
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021E9F92
_021E9F82:
	lsl r7, r5, #0xc
	add r0, r7, #0
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021E9F92:
	blx sub_0208DA4C
	add r1, r0, #0
	ldr r0, [r6]
	bl FX_Div
	str r0, [r4, #0x30]
	cmp r5, #0
	ble _021E9FB6
	add r0, r7, #0
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021E9FC4
_021E9FB6:
	add r0, r7, #0
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021E9FC4:
	blx sub_0208DA4C
	add r1, r0, #0
	ldr r0, [r6, #4]
	bl FX_Div
	str r0, [r4, #0x34]
	cmp r5, #0
	ble _021E9FE8
	add r0, r7, #0
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021E9FF6
_021E9FE8:
	add r0, r7, #0
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021E9FF6:
	blx sub_0208DA4C
	add r1, r0, #0
	ldr r0, [r6, #8]
	bl FX_Div
	str r0, [r4, #0x38]
_021EA004:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x38]
	ldr r0, [r0]
	add r2, r4, #0
	mov r3, #0
	bl sub_0203A614
	ldr r1, [sp, #0x3c]
	mov r2, #0
	bl ovy168_21e035c
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EA020: .word 0x00000277
_021EA024: .word 0x00007FFF
_021EA028: .word 0x021F4194
	thumb_func_end ovy168_21e9e98

	thumb_func_start ovy168_21ea02c
ovy168_21ea02c: ; 0x021EA02C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0x14
	add r1, r5, #4
	ldr r4, [r5]
	bl ovy168_21e0c50
	add r6, r0, #0
	ldr r0, [r5, #4]
	mov r2, #0
	asr r1, r0, #0xc
	add r0, sp, #0
	strh r1, [r0]
	ldr r1, [r5, #8]
	asr r1, r1, #0xc
	strh r1, [r0, #2]
	ldr r0, [r5, #0x10]
	add r1, sp, #0
	lsl r0, r0, #4
	add r0, r4, r0
	ldr r0, [r0, #8]
	bl Oam_SetSpritePosData
	cmp r6, #1
	bne _021EA068
	add r0, r7, #0
	bl ovy168_21e03ac
_021EA068:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy168_21ea02c

	thumb_func_start ovy168_21ea06c
ovy168_21ea06c: ; 0x021EA06C
	push {r3, r4, r5, lr}
	bl sub_0203A6D0
	ldr r2, [r0]
	mov r3, #0x6e
	lsl r3, r3, #2
	ldr r0, [r0, #0x10]
	mov r5, #1
	mov r4, #1
	lsl r5, r0
	sub r0, r4, #2
	ldr r1, [r2, r3]
	eor r0, r5
	and r0, r1
	str r0, [r2, r3]
	pop {r3, r4, r5, pc}
	thumb_func_end ovy168_21ea06c

	thumb_func_start ovy168_21ea08c
ovy168_21ea08c: ; 0x021EA08C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0x14
	add r1, r5, #4
	ldr r4, [r5]
	bl ovy168_21e0c50
	add r6, r0, #0
	ldr r0, [r5, #4]
	mov r1, #1
	str r0, [sp]
	ldr r0, [r5, #8]
	str r0, [sp, #4]
	ldr r0, [r5, #0x10]
	lsl r0, r0, #4
	add r0, r4, r0
	ldr r0, [r0, #8]
	bl sub_0204C244
	ldr r0, [r5, #0x10]
	add r1, sp, #0
	lsl r0, r0, #4
	add r0, r4, r0
	ldr r0, [r0, #8]
	bl sub_0204C270
	cmp r6, #1
	bne _021EA0D0
	add r0, r7, #0
	bl ovy168_21e03ac
_021EA0D0:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy168_21ea08c

	thumb_func_start ovy168_21ea0d4
ovy168_21ea0d4: ; 0x021EA0D4
	push {r3, r4, r5, lr}
	bl sub_0203A6D0
	ldr r2, [r0]
	mov r3, #0x6f
	lsl r3, r3, #2
	ldr r0, [r0, #0x10]
	mov r5, #1
	mov r4, #1
	lsl r5, r0
	sub r0, r4, #2
	ldr r1, [r2, r3]
	eor r0, r5
	and r0, r1
	str r0, [r2, r3]
	pop {r3, r4, r5, pc}
	thumb_func_end ovy168_21ea0d4

	thumb_func_start ovy168_21ea0f4
ovy168_21ea0f4: ; 0x021EA0F4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x4c]
	cmp r0, #3
	bhi _021EA168
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EA10C: ; jump table
	.short _021EA114 - _021EA10C - 2 ; case 0
	.short _021EA12C - _021EA10C - 2 ; case 1
	.short _021EA14E - _021EA10C - 2 ; case 2
	.short _021EA168 - _021EA10C - 2 ; case 3
_021EA114:
	mov r0, #0x66
	ldr r1, [r4]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0204C560
	cmp r0, #0
	bne _021EA168
	ldr r0, [r4, #0x4c]
	add r0, r0, #1
	str r0, [r4, #0x4c]
	pop {r3, r4, r5, pc}
_021EA12C:
	mov r5, #0x66
	ldr r0, [r4]
	lsl r5, r5, #2
	ldr r0, [r0, r5]
	mov r1, #0
	bl sub_0204C124
	ldr r0, [r4]
	add r5, #0x10
	ldr r0, [r0, r5]
	mov r1, #0
	bl sub_0204C124
	ldr r0, [r4, #0x4c]
	add r0, r0, #1
	str r0, [r4, #0x4c]
	pop {r3, r4, r5, pc}
_021EA14E:
	add r0, r4, #0
	bl GFL_HeapFree
	add r0, r5, #0
	bl GFL_TCBRemove
	mov r1, #0x6e
	ldr r3, [r4]
	lsl r1, r1, #2
	ldr r2, [r3, r1]
	ldr r0, _021EA16C ; =0x7FFFFFFF
	and r0, r2
	str r0, [r3, r1]
_021EA168:
	pop {r3, r4, r5, pc}
	nop
_021EA16C: .word 0x7FFFFFFF
	thumb_func_end ovy168_21ea0f4

	thumb_func_start ovy168_21ea170
ovy168_21ea170: ; 0x021EA170
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0xbe
	lsl r0, r0, #2
	mov r4, #0x71
	str r0, [sp]
	lsl r4, r4, #2
	add r6, r1, #0
	ldrh r1, [r5, r4]
	ldr r0, _021EA1C0 ; =0x00007FFF
	ldr r3, _021EA1C4 ; =0x021F4194
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0x50
	mov r2, #0
	mov r7, #0
	bl GFL_HeapAllocate
	add r2, r0, #0
	str r5, [r2]
	str r6, [r2, #0x10]
	str r7, [r2, #0x44]
	str r7, [r2, #0x4c]
	ldr r0, [r5]
	ldr r1, _021EA1C8 ; =ovy168_21ea0f4
	mov r3, #0
	bl sub_0203A614
	add r0, r4, #0
	sub r0, #0xc
	ldr r1, [r5, r0]
	mov r0, #2
	lsl r0, r0, #0x1e
	orr r0, r1
	sub r4, #0xc
	str r0, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EA1C0: .word 0x00007FFF
_021EA1C4: .word 0x021F4194
_021EA1C8: .word ovy168_21ea0f4
	thumb_func_end ovy168_21ea170

	thumb_func_start ovy168_21ea1cc
ovy168_21ea1cc: ; 0x021EA1CC
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0x66
	add r5, r0, #0
	lsl r4, r4, #2
	add r6, r1, #0
	ldr r0, [r5, r4]
	mov r1, #1
	add r7, r2, #0
	bl sub_0204C124
	ldr r0, [r5, r4]
	bl sub_0204C56C
	add r0, r4, #0
	add r0, #0x10
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_0204C124
	add r4, #0x10
	ldr r0, [r5, r4]
	bl sub_0204C56C
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ovy168_21ea210
	add r0, r5, #0
	add r1, r6, #0
	bl ovy168_21ea170
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy168_21ea1cc

	thumb_func_start ovy168_21ea210
ovy168_21ea210: ; 0x021EA210
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r6, #0x71
	add r5, r0, #0
	lsl r6, r6, #2
	add r7, r1, #0
	ldrh r1, [r5, r6]
	mov r0, #0xa
	str r2, [sp, #8]
	bl GFL_StrBufCreate
	add r4, r0, #0
	ldrh r3, [r5, r6]
	mov r0, #8
	mov r1, #2
	mov r2, #0x20
	bl sub_02046E28
	add r7, #0xc9
	lsl r1, r7, #0x10
	add r6, r0, #0
	add r0, r4, #0
	lsr r1, r1, #0x10
	mov r2, #0
	bl ovy167_21d4ec0
	ldr r1, [sp, #8]
	add r0, r4, #0
	mov r2, #0
	bl GFL_FontGetBlockWidth
	add r7, r0, #0
	add r0, r6, #0
	mov r1, #0xff
	bl BmpWin_BitmapFill
	lsr r1, r7, #0x1f
	ldr r0, [sp, #8]
	add r1, r7, r1
	asr r2, r1, #1
	mov r1, #0x20
	sub r1, r1, r2
	str r0, [sp]
	ldr r0, _021EA2A4 ; =0x00001D0F
	lsl r1, r1, #0x10
	str r0, [sp, #4]
	add r0, r6, #0
	asr r1, r1, #0x10
	mov r2, #0
	add r3, r4, #0
	bl sub_02021D28
	add r0, r6, #0
	bl sub_02046EF4
	add r1, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r2, #0x20
	mov r3, #0x1a
	ldr r0, [r5, #0x3c]
	lsl r2, r2, #4
	lsl r3, r3, #6
	bl sub_0204BAB8
	add r0, r4, #0
	bl GFL_StrBufFree
	add r0, r6, #0
	bl sub_02046EDC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021EA2A4: .word 0x00001D0F
	thumb_func_end ovy168_21ea210

	thumb_func_start ovy168_21ea2a8
ovy168_21ea2a8: ; 0x021EA2A8
	push {r4, lr}
	sub sp, #0x28
	add r4, r2, #0
	str r3, [sp]
	ldr r2, [sp, #0x30]
	add r3, sp, #0x30
	str r2, [sp, #4]
	mov r2, #0
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	str r2, [sp, #0x18]
	str r2, [sp, #0x1c]
	str r2, [sp, #0x20]
	ldrh r3, [r3, #4]
	str r3, [sp, #0x24]
	add r3, r4, #0
	bl ovy168_21ea30c
	add sp, #0x28
	pop {r4, pc}
	thumb_func_end ovy168_21ea2a8

	thumb_func_start ovy168_21ea2d4
ovy168_21ea2d4: ; 0x021EA2D4
	push {r3, r4, r5, lr}
	sub sp, #0x28
	ldr r4, [sp, #0x38]
	str r4, [sp]
	ldr r4, [sp, #0x3c]
	str r4, [sp, #4]
	ldr r4, [sp, #0x40]
	str r4, [sp, #8]
	mov r4, #1
	str r4, [sp, #0xc]
	add r4, sp, #0x38
	ldrb r5, [r4, #0xc]
	str r5, [sp, #0x10]
	ldr r5, [sp, #0x48]
	str r5, [sp, #0x14]
	ldr r5, [sp, #0x4c]
	str r5, [sp, #0x18]
	ldr r5, [sp, #0x50]
	str r5, [sp, #0x1c]
	ldr r5, [sp, #0x54]
	str r5, [sp, #0x20]
	ldrh r4, [r4, #0x20]
	str r4, [sp, #0x24]
	bl ovy168_21ea30c
	add sp, #0x28
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy168_21ea2d4

	thumb_func_start ovy168_21ea30c
ovy168_21ea30c: ; 0x021EA30C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r0, #0
	ldr r0, _021EA4A4 ; =0x00000409
	str r1, [sp, #4]
	str r0, [sp]
	add r0, sp, #0x28
	ldr r1, _021EA4A4 ; =0x00000409
	str r3, [sp, #0xc]
	str r2, [sp, #8]
	ldrh r0, [r0, #0x24]
	ldr r3, _021EA4A8 ; =0x021F41C8
	sub r1, #0x9d
	mov r2, #1
	bl GFL_HeapAllocate
	add r5, r0, #0
	add r0, sp, #0x28
	mov r4, #0xb1
	ldrh r0, [r0, #0x24]
	lsl r4, r4, #2
	mov r6, #8
	strh r0, [r5, r4]
	mov r0, #8
	bl sub_0203A584
	add r1, r0, #0
	ldr r0, _021EA4A4 ; =0x00000409
	ldr r3, _021EA4A8 ; =0x021F41C8
	add r0, r0, #4
	str r0, [sp]
	ldrh r0, [r5, r4]
	mov r2, #1
	bl GFL_HeapAllocate
	add r1, r0, #0
	str r1, [r5, #4]
	mov r0, #8
	bl sub_0203A58C
	str r0, [r5]
	add r0, r4, #0
	ldr r1, [sp, #0x28]
	str r7, [r5, #0x4c]
	sub r0, #0x1c
	str r1, [r5, r0]
	ldr r0, [sp, #4]
	add r6, #0xfc
	str r0, [r5, #0x50]
	ldr r0, [sp, #8]
	mov r3, #0
	str r0, [r5, #0x54]
	add r0, sp, #0x28
	ldrb r1, [r0, #0x10]
	add r0, r4, #0
	add r0, #0x64
	strb r1, [r5, r0]
	add r0, r4, #0
	ldr r1, [sp, #0x2c]
	add r0, #0x34
	str r1, [r5, r0]
	ldr r1, [r5, #0x68]
	ldr r0, _021EA4AC ; =0xFFFFE1FF
	and r1, r0
	mov r0, #0x1e
	lsl r0, r0, #8
	orr r0, r1
	str r0, [r5, #0x68]
	ldr r1, [sp, #0x34]
	sub r0, r4, #4
	str r1, [r5, r0]
	add r0, r4, #0
	ldr r1, [sp, #0x3c]
	add r0, #0x65
	strb r1, [r5, r0]
	add r0, r4, #0
	ldr r1, [sp, #0x40]
	add r0, #0x66
	strb r1, [r5, r0]
	ldr r0, [sp, #0x44]
	add r4, #0x68
	str r0, [r5, r4]
	ldr r0, [r5, #0x6c]
	ldr r1, _021EA4B0 ; =0xFFFBFFFF
	add r2, r0, #0
	ldr r0, [sp, #0x48]
	and r2, r1
	lsl r0, r0, #0x1f
	lsr r0, r0, #0xd
	orr r0, r2
	str r0, [r5, #0x6c]
	ldr r0, [sp, #0xc]
	str r0, [r5, #0x64]
	asr r0, r1, #0x13
	mov r1, #0x42
	lsl r1, r1, #2
	str r0, [r5, r6]
	str r0, [r5, r1]
	add r2, r1, #4
	str r0, [r5, r2]
	add r2, r1, #0
	add r2, #8
	str r0, [r5, r2]
	add r2, r1, #0
	add r2, #0xc
	str r0, [r5, r2]
	add r2, r1, #0
	add r2, #0xb4
	str r0, [r5, r2]
	add r2, r1, #0
	add r2, #0xb8
	str r0, [r5, r2]
	add r2, r1, #0
	add r2, #0xe8
	str r0, [r5, r2]
	add r2, r1, #0
	add r2, #0xec
	str r0, [r5, r2]
	add r1, #0xa8
_021EA3FA:
	lsl r2, r3, #2
	add r2, r5, r2
	add r3, r3, #1
	str r0, [r2, r1]
	cmp r3, #3
	blt _021EA3FA
	mov r2, #0
	mov r0, #0x1e
	sub r4, r2, #1
	lsl r0, r0, #4
_021EA40E:
	lsl r1, r2, #2
	add r1, r5, r1
	add r2, r2, #1
	str r4, [r1, r0]
	cmp r2, #4
	blt _021EA40E
	mov r7, #0xb1
	lsl r7, r7, #2
	ldrh r3, [r5, r7]
	mov r0, #0
	mov r1, #2
	mov r2, #0x15
	mov r6, #0
	bl GFL_MsgSysLoadData
	str r0, [r5, #0x5c]
	add r0, r7, #0
	str r4, [r5, #0x70]
	sub r0, #0x3c
	str r6, [r5, r0]
	add r0, r7, #0
	sub r0, #0x38
	str r6, [r5, r0]
	add r0, r7, #0
	sub r0, #0x34
	str r6, [r5, r0]
	add r0, r7, #0
	sub r0, #0x30
	str r6, [r5, r0]
	add r0, r7, #0
	sub r0, #0x2c
	str r6, [r5, r0]
	add r0, r7, #0
	sub r0, #0x28
	str r6, [r5, r0]
	add r0, r7, #0
	sub r0, #0x24
	str r6, [r5, r0]
	add r0, r7, #0
	sub r0, #0x20
	str r6, [r5, r0]
	add r0, r5, #0
	bl ovy168_21ea51c
	ldr r0, _021EA4B4 ; =0x00000449
	ldr r3, _021EA4A8 ; =0x021F41C8
	str r0, [sp]
	ldrh r1, [r5, r7]
	ldr r0, _021EA4B8 ; =0x00007FFF
	mov r2, #0
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #8
	bl GFL_HeapAllocate
	add r2, r0, #0
	ldr r0, [sp, #0x30]
	str r5, [r2]
	str r0, [r2, #4]
	ldr r0, [r5]
	ldr r1, _021EA4BC ; =ovy168_21ed698
	mov r3, #0
	bl sub_0203A614
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #0
	bl ovy168_21ef3c0
	add r0, r5, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EA4A4: .word 0x00000409
_021EA4A8: .word 0x021F41C8
_021EA4AC: .word 0xFFFFE1FF
_021EA4B0: .word 0xFFFBFFFF
_021EA4B4: .word 0x00000449
_021EA4B8: .word 0x00007FFF
_021EA4BC: .word ovy168_21ed698
	thumb_func_end ovy168_21ea30c

	thumb_func_start ovy168_21ea4c0
ovy168_21ea4c0: ; 0x021EA4C0
	push {r4, lr}
	add r4, r0, #0
	beq _021EA4F2
	bl ovy168_21ef45c
	add r0, r4, #0
	bl ovy168_21ea6b8
	ldr r0, [r4, #0x5c]
	bl GFL_MsgDataFree
	ldr r0, [r4, #0x60]
	cmp r0, #0
	beq _021EA4E0
	bl ovy168_21f2d9c
_021EA4E0:
	ldr r0, [r4]
	bl sub_0203A610
	ldr r0, [r4, #4]
	bl GFL_HeapFree
	add r0, r4, #0
	bl GFL_HeapFree
_021EA4F2:
	pop {r4, pc}
	thumb_func_end ovy168_21ea4c0

	thumb_func_start ovy168_21ea4f4
ovy168_21ea4f4: ; 0x021EA4F4
	push {r3, lr}
	ldr r0, [r0]
	bl sub_0203A5D0
	bl sub_0202A3E0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy168_21ea4f4

	thumb_func_start ovy168_21ea504
ovy168_21ea504: ; 0x021EA504
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4]
	bl sub_0203A5D0
	bl sub_0202A3E0
	add r0, r4, #0
	bl ovy168_21eca80
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy168_21ea504

	thumb_func_start ovy168_21ea51c
ovy168_21ea51c: ; 0x021EA51C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _021EA6B0 ; =0x021F3648
	mov r1, #1
	mov r7, #1
	bl sub_02044748
	mov r4, #0xb1
	lsl r4, r4, #2
	ldrh r1, [r5, r4]
	mov r0, #0xb
	bl sub_0204AA30
	str r0, [r5, #0x48]
	ldrh r2, [r5, r4]
	mov r0, #4
	mov r1, #2
	bl sub_0204BF1C
	add r1, r4, #0
	sub r1, #0xcc
	str r0, [r5, r1]
	ldrh r2, [r5, r4]
	mov r0, #0xc
	mov r1, #2
	bl sub_0204BF1C
	mov r6, #0x46
	lsl r6, r6, #2
	str r0, [r5, r6]
	ldrh r2, [r5, r4]
	mov r0, #6
	mov r1, #0
	bl sub_0204BF1C
	add r1, r6, #0
	add r1, #0x64
	str r0, [r5, r1]
	ldrh r2, [r5, r4]
	mov r0, #3
	mov r1, #2
	bl sub_0204BF1C
	add r1, r6, #0
	add r1, #0xac
	str r0, [r5, r1]
	ldrh r2, [r5, r4]
	mov r0, #2
	mov r1, #2
	bl sub_0204BF1C
	add r6, #0xf4
	str r0, [r5, r6]
	ldrh r2, [r5, r4]
	mov r0, #1
	mov r1, #1
	bl sub_0204BF1C
	add r1, r4, #0
	sub r1, #0xac
	str r0, [r5, r1]
	ldrh r2, [r5, r4]
	mov r0, #0x16
	mov r1, #1
	mov r6, #0x16
	bl sub_0204BF1C
	add r1, r4, #0
	sub r1, #0x98
	str r0, [r5, r1]
	add r0, r5, #0
	bl ovy168_21ea88c
	add r0, r5, #0
	bl ovy168_21eb7d0
	add r0, r5, #0
	bl ovy168_21ee9f8
	mov r0, #0xc
	str r0, [sp]
	mov r0, #0xd
	str r0, [sp, #4]
	mov r0, #6
	mov r1, #0
	mov r2, #4
	mov r3, #0x20
	str r7, [sp, #8]
	bl BmpWin_CreateDynamic
	add r1, r4, #0
	sub r1, #0x18
	str r0, [r5, r1]
	bl BmpWin_GetBitmap
	add r1, r4, #0
	sub r1, #0x14
	str r0, [r5, r1]
	mov r0, #2
	str r0, [sp]
	mov r0, #0xd
	str r0, [sp, #4]
	mov r0, #6
	mov r1, #3
	mov r2, #0x16
	mov r3, #3
	str r7, [sp, #8]
	bl BmpWin_CreateDynamic
	add r1, r4, #0
	sub r1, #0x10
	str r0, [r5, r1]
	bl BmpWin_GetBitmap
	add r1, r4, #0
	sub r1, #0xc
	str r0, [r5, r1]
	add r0, r4, #0
	sub r0, #0x14
	ldr r0, [r5, r0]
	mov r1, #0
	bl BmpWin_BitmapFill
	add r0, r4, #0
	sub r0, #0xc
	ldr r0, [r5, r0]
	mov r1, #0
	bl BmpWin_BitmapFill
	add r0, r4, #0
	sub r0, #0x18
	ldr r0, [r5, r0]
	bl BmpWin_FlushChar
	add r0, r4, #0
	sub r0, #0x10
	ldr r0, [r5, r0]
	bl BmpWin_FlushChar
	add r0, r4, #0
	sub r0, #0x18
	ldr r0, [r5, r0]
	bl sub_0204826C
	add r0, r4, #0
	sub r0, #0x10
	ldr r0, [r5, r0]
	bl sub_0204826C
	mov r0, #6
	bl sub_02044F90
	ldrh r3, [r5, r4]
	ldr r2, [r5, #0x4c]
	mov r0, #6
	mov r1, #0xf
	bl sub_0202A344
	mov r0, #6
	mov r1, #1
	bl sub_02044C98
	mov r0, #0x10
	mov r1, #1
	mov r7, #0x10
	bl sub_02046D84
	ldrh r1, [r5, r4]
	mov r0, #0
	bl sub_02042BA8
	ldr r0, [r5, #0x64]
	mov r1, #3
	mov r2, #0xe0
	mov r3, #0x20
	bl sub_02026F7C
	ldr r1, [r5, #0x68]
	lsl r0, r7, #9
	orr r0, r1
	str r0, [r5, #0x68]
	lsl r0, r6, #5
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _021EA6A2
	bl ovy168_21e00ac
	ldr r1, _021EA6B4 ; =ovy168_21ea504
	add r2, r5, #0
	mov r3, #0
	bl sub_0203A614
	sub r4, #8
	str r0, [r5, r4]
_021EA6A2:
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	bl ovy168_21eaa3c
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021EA6B0: .word 0x021F3648
_021EA6B4: .word ovy168_21ea504
	thumb_func_end ovy168_21ea51c

	thumb_func_start ovy168_21ea6b8
ovy168_21ea6b8: ; 0x021EA6B8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl ovy168_21eead8
	add r0, r5, #0
	bl ovy168_21ee9a8
	add r0, r5, #0
	bl ovy168_21eeab4
	add r0, r5, #0
	bl ovy168_21ee630
	add r0, r5, #0
	bl ovy168_21ee8ac
	mov r6, #0x41
	lsl r6, r6, #2
	mov r4, #0
	ldr r0, [r5, r6]
	mvn r4, r4
	cmp r0, r4
	beq _021EA6EC
	bl sub_0204B98C
	str r4, [r5, r6]
_021EA6EC:
	mov r6, #0x42
	lsl r6, r6, #2
	mov r4, #0
	ldr r0, [r5, r6]
	mvn r4, r4
	cmp r0, r4
	beq _021EA700
	bl sub_0204BCD0
	str r4, [r5, r6]
_021EA700:
	mov r6, #0x43
	lsl r6, r6, #2
	mov r4, #0
	ldr r0, [r5, r6]
	mvn r4, r4
	cmp r0, r4
	beq _021EA714
	bl sub_0204BE64
	str r4, [r5, r6]
_021EA714:
	mov r6, #0x11
	lsl r6, r6, #4
	mov r4, #0
	ldr r0, [r5, r6]
	mvn r4, r4
	cmp r0, r4
	beq _021EA728
	bl sub_0204B98C
	str r4, [r5, r6]
_021EA728:
	mov r6, #0x45
	lsl r6, r6, #2
	mov r4, #0
	ldr r0, [r5, r6]
	mvn r4, r4
	cmp r0, r4
	beq _021EA73C
	bl sub_0204BE64
	str r4, [r5, r6]
_021EA73C:
	mov r4, #0
	sub r7, r4, #1
_021EA740:
	lsl r0, r4, #2
	add r6, r5, r0
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	cmp r0, r7
	beq _021EA758
	bl sub_0204B98C
	mov r0, #0x1e
	lsl r0, r0, #4
	str r7, [r6, r0]
_021EA758:
	add r4, r4, #1
	cmp r4, #4
	blt _021EA740
	mov r6, #0x7d
	lsl r6, r6, #2
	mov r4, #0
	ldr r0, [r5, r6]
	mvn r4, r4
	cmp r0, r4
	beq _021EA772
	bl sub_0204BE64
	str r4, [r5, r6]
_021EA772:
	mov r6, #0x1f
	lsl r6, r6, #4
	mov r4, #0
	ldr r0, [r5, r6]
	mvn r4, r4
	cmp r0, r4
	beq _021EA786
	bl sub_0204BCD0
	str r4, [r5, r6]
_021EA786:
	mov r4, #0xa2
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021EA79A
	add r0, r5, #0
	bl ovy168_21ec7ac
	mov r0, #0
	str r0, [r5, r4]
_021EA79A:
	mov r4, #0x7e
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021EA7AC
	bl sub_0204BF98
	mov r0, #0
	str r0, [r5, r4]
_021EA7AC:
	mov r4, #0x46
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021EA7BE
	bl sub_0204BF98
	mov r0, #0
	str r0, [r5, r4]
_021EA7BE:
	mov r4, #0x5f
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021EA7D0
	bl sub_0204BF98
	mov r0, #0
	str r0, [r5, r4]
_021EA7D0:
	mov r4, #0x71
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021EA7E2
	bl sub_0204BF98
	mov r0, #0
	str r0, [r5, r4]
_021EA7E2:
	mov r4, #0x83
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021EA7F4
	bl sub_0204BF98
	mov r0, #0
	str r0, [r5, r4]
_021EA7F4:
	mov r4, #0x86
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021EA806
	bl sub_0204BF98
	mov r0, #0
	str r0, [r5, r4]
_021EA806:
	mov r0, #0x8b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021EA814
	bl sub_0204BF98
_021EA814:
	mov r4, #0xa3
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021EA826
	bl GFL_HeapFree
	mov r0, #0
	str r0, [r5, r4]
_021EA826:
	mov r4, #0x29
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021EA838
	bl GFL_HeapFree
	mov r0, #0
	str r0, [r5, r4]
_021EA838:
	mov r4, #0xab
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021EA84A
	bl sub_02048210
	mov r0, #0
	str r0, [r5, r4]
_021EA84A:
	mov r4, #0xad
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021EA85C
	bl sub_02048210
	mov r0, #0
	str r0, [r5, r4]
_021EA85C:
	bl sub_0202A6F0
	bl ovy168_21ea8e4
	mov r4, #0xaf
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021EA876
	bl GFL_TCBRemove
	mov r0, #0
	str r0, [r5, r4]
_021EA876:
	ldr r0, [r5, #0x48]
	cmp r0, #0
	beq _021EA884
	bl GFL_ArcToolFree
	mov r0, #0
	str r0, [r5, #0x48]
_021EA884:
	mov r0, #0
	str r0, [r5, #0x58]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy168_21ea6b8

	thumb_func_start ovy168_21ea88c
ovy168_21ea88c: ; 0x021EA88C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r6, _021EA8DC ; =0x021F3B88
	add r5, r0, #0
	mov r4, #0
	mov r7, #2
_021EA898:
	mov r0, #0x24
	add r1, r4, #0
	mul r1, r0
	add r1, r6, r1
	ldr r2, [r1, #0x20]
	add r0, r4, #4
	lsl r0, r0, #0x18
	lsl r2, r2, #0x18
	lsr r0, r0, #0x18
	lsr r2, r2, #0x18
	bl sub_0204476C
	add r0, r4, #4
	lsl r0, r0, #0x18
	ldr r1, _021EA8E0 ; =0x000003FF
	lsr r0, r0, #0x18
	bl sub_02045764
	str r7, [sp]
	str r7, [sp, #4]
	str r7, [sp, #8]
	add r0, r5, #0
	add r1, r4, #4
	mov r2, #0
	mov r3, #0
	str r7, [sp, #0xc]
	bl ovy168_21ed44c
	add r4, r4, #1
	cmp r4, #4
	blo _021EA898
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EA8DC: .word 0x021F3B88
_021EA8E0: .word 0x000003FF
	thumb_func_end ovy168_21ea88c

	thumb_func_start ovy168_21ea8e4
ovy168_21ea8e4: ; 0x021EA8E4
	push {r3, r4, r5, lr}
	mov r5, #0
	add r4, r5, #0
_021EA8EA:
	add r0, r5, #4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r1, r4, #0
	bl sub_02044C98
	add r0, r5, #4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02044B84
	add r5, r5, #1
	cmp r5, #4
	blo _021EA8EA
	pop {r3, r4, r5, pc}
	thumb_func_end ovy168_21ea8e4

	thumb_func_start ovy168_21ea908
ovy168_21ea908: ; 0x021EA908
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, _021EA980 ; =0x0000058D
	add r4, r1, #0
	str r0, [sp]
	mov r0, #0xb1
	lsl r0, r0, #2
	ldrh r1, [r5, r0]
	ldr r0, _021EA984 ; =0x00007FFF
	ldr r3, _021EA988 ; =0x021F41C8
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #4
	mov r2, #0
	mov r6, #0
	bl GFL_HeapAllocate
	add r7, r0, #0
	cmp r4, #1
	ldr r2, _021EA98C ; =0x0000FFFF
	bne _021EA93E
	str r6, [sp]
	b _021EA942
_021EA93E:
	mov r0, #0xc
	str r0, [sp]
_021EA942:
	mov r0, #0x10
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r5]
	mov r1, #0xa
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x64]
	mov r3, #1
	bl sub_02026FE4
	ldr r1, [r5, #0x68]
	ldr r0, _021EA990 ; =0xFFFE7FFF
	add r2, r7, #0
	and r1, r0
	mov r0, #2
	lsl r0, r0, #0xe
	orr r0, r1
	str r0, [r5, #0x68]
	str r5, [r7]
	ldr r0, [r5]
	ldr r1, _021EA994 ; =ovy168_21ed528
	mov r3, #0
	bl sub_0203A614
	add r1, r0, #0
	ldr r2, _021EA998 ; =ovy168_21ed55c
	add r0, r5, #0
	bl ovy168_21ef3c0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EA980: .word 0x0000058D
_021EA984: .word 0x00007FFF
_021EA988: .word 0x021F41C8
_021EA98C: .word 0x0000FFFF
_021EA990: .word 0xFFFE7FFF
_021EA994: .word ovy168_21ed528
_021EA998: .word ovy168_21ed55c
	thumb_func_end ovy168_21ea908

	thumb_func_start ovy168_21ea99c
ovy168_21ea99c: ; 0x021EA99C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, _021EAA10 ; =0x000005A2
	ldr r3, _021EAA14 ; =0x021F41C8
	str r0, [sp]
	mov r0, #0xb1
	lsl r0, r0, #2
	ldrh r1, [r5, r0]
	ldr r0, _021EAA18 ; =0x00007FFF
	mov r2, #0
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #4
	mov r6, #0
	bl GFL_HeapAllocate
	add r4, r0, #0
	ldr r0, _021EAA1C ; =0x0400106C
	bl GXx_GetMasterBrightness_
	cmp r0, #0
	bgt _021EA9D4
	mov r0, #2
	b _021EA9D6
_021EA9D4:
	mov r0, #8
_021EA9D6:
	mov r1, #0x10
	add r2, r6, #0
	add r3, r6, #0
	bl sub_0204E060
	add r0, r5, #0
	bl ovy168_21ea51c
	ldr r1, [r5, #0x68]
	ldr r0, _021EAA20 ; =0xFFFE7FFF
	add r2, r4, #0
	and r1, r0
	mov r0, #1
	lsl r0, r0, #0x10
	orr r0, r1
	str r0, [r5, #0x68]
	str r5, [r4]
	ldr r0, [r5]
	ldr r1, _021EAA24 ; =ovy168_21ed528
	mov r3, #0
	bl sub_0203A614
	add r1, r0, #0
	ldr r2, _021EAA28 ; =ovy168_21ed55c
	add r0, r5, #0
	bl ovy168_21ef3c0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021EAA10: .word 0x000005A2
_021EAA14: .word 0x021F41C8
_021EAA18: .word 0x00007FFF
_021EAA1C: .word 0x0400106C
_021EAA20: .word 0xFFFE7FFF
_021EAA24: .word ovy168_21ed528
_021EAA28: .word ovy168_21ed55c
	thumb_func_end ovy168_21ea99c
_021EAA2C:
	.byte 0x80, 0x6E, 0xC0, 0x03
	.byte 0x80, 0x0F, 0x01, 0xD0, 0x01, 0x20, 0x70, 0x47, 0x00, 0x20, 0x70, 0x47

	thumb_func_start ovy168_21eaa3c
ovy168_21eaa3c: ; 0x021EAA3C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r4, r0, #0
	str r1, [sp, #0x10]
	add r6, r2, #0
	bl ovy168_21ee240
	ldr r1, [r4, #0x68]
	ldr r0, _021EAD28 ; =0xF87FFFFF
	mov r7, #1
	and r0, r1
	str r0, [r4, #0x68]
	ldr r1, [r4, #0x6c]
	mov r0, #1
	bic r1, r0
	add r0, r1, #0
	orr r0, r7
	str r0, [r4, #0x6c]
	ldr r0, [sp, #0x10]
	cmp r0, #7
	bls _021EAA68
	b _021EB0E4
_021EAA68:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EAA74: ; jump table
	.short _021EAA84 - _021EAA74 - 2 ; case 0
	.short _021EABA2 - _021EAA74 - 2 ; case 1
	.short _021EAD16 - _021EAA74 - 2 ; case 2
	.short _021EAE1C - _021EAA74 - 2 ; case 3
	.short _021EAE66 - _021EAA74 - 2 ; case 4
	.short _021EAEAE - _021EAA74 - 2 ; case 5
	.short _021EAF68 - _021EAA74 - 2 ; case 6
	.short _021EB096 - _021EAA74 - 2 ; case 7
_021EAA84:
	ldr r0, [r4, #0x58]
	sub r5, r7, #2
	str r5, [r4, #0x70]
	cmp r0, #0
	bne _021EAAE4
	mov r1, #3
	mov r0, #0x98
	lsl r1, r1, #0xc
	str r0, [sp]
	add r0, r4, #0
	add r2, r1, #0
	mov r6, #0
	mov r3, #0
	bl ovy168_21ecea8
	str r6, [sp]
	str r6, [sp, #4]
	mov r6, #2
	str r6, [sp, #8]
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0
	mov r3, #0
	str r7, [sp, #0xc]
	bl ovy168_21ed44c
	ldr r0, _021EAD2C ; =0x00000329
	ldrb r0, [r4, r0]
	cmp r0, #2
	bne _021EAAC8
	add r0, r4, #0
	bl ovy168_21ec854
	b _021EB0E4
_021EAAC8:
	mov r0, #0xc
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _021EAD30 ; =0x00000842
	add r1, r6, #0
	str r0, [sp, #8]
	ldr r0, [r4]
	mov r2, #3
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x64]
	add r3, r7, #0
	bl sub_02026FE4
	b _021EB0E4
_021EAAE4:
	ldr r0, _021EAD34 ; =0x000005E7
	mov r6, #0xb1
	str r0, [sp]
	lsl r6, r6, #2
	ldrh r1, [r4, r6]
	ldr r0, _021EAD38 ; =0x00007FFF
	ldr r3, _021EAD3C ; =0x021F41C8
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0x24
	add r2, r7, #0
	bl GFL_HeapAllocate
	add r5, r0, #0
	ldr r1, [r4, #0x68]
	mov r0, #1
	bic r1, r0
	add r0, r1, #0
	orr r0, r7
	str r0, [r4, #0x68]
	str r4, [r5]
	sub r0, r6, #4
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _021EAB20
	bl ovy168_21e0468
_021EAB20:
	add r0, r4, #0
	bl ovy168_21ee9a8
	add r0, r4, #0
	bl ovy168_21ee630
	ldr r0, [r4, #0x58]
	cmp r0, #1
	beq _021EAB36
	cmp r0, #4
	bne _021EAB3C
_021EAB36:
	ldr r0, [r4]
	ldr r1, _021EAD40 ; =ovy168_21ec064
	b _021EAB42
_021EAB3C:
	str r0, [r5, #0x20]
	ldr r0, [r4]
	ldr r1, _021EAD44 ; =ovy168_21ec0d0
_021EAB42:
	add r2, r5, #0
	mov r3, #1
	bl sub_0203A614
	add r1, r0, #0
	ldr r2, _021EAD48 ; =ovy168_21ece94
	add r0, r4, #0
	bl ovy168_21ef3c0
	mov r7, #0
	str r7, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	ldr r0, _021EAD30 ; =0x00000842
	mov r1, #2
	str r0, [sp, #8]
	ldr r0, [r4]
	mov r2, #3
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x64]
	mov r3, #1
	mov r5, #1
	bl sub_020270F0
	mov r6, #0x5f
	lsl r6, r6, #2
	ldr r0, [r4, r6]
	bl sub_0204BFE8
	cmp r0, #0
	bne _021EAB82
	b _021EB0E4
_021EAB82:
	ldr r1, [r4, #0x68]
	ldr r0, _021EAD4C ; =0xFFFFFE1F
	and r1, r0
	ldr r0, _021EAD50 ; =0xFFFFE1FF
	and r1, r0
	mov r0, #0x1e
	lsl r0, r0, #8
	orr r1, r0
	lsl r0, r5, #0xd
	orr r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, r6]
	add r1, r7, #0
	bl sub_0204BFD4
	b _021EB0E4
_021EABA2:
	ldr r0, _021EAD54 ; =0x0000060E
	mov r5, #0xb1
	str r0, [sp]
	lsl r5, r5, #2
	ldrh r1, [r4, r5]
	ldr r0, _021EAD38 ; =0x00007FFF
	ldr r3, _021EAD3C ; =0x021F41C8
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0x24
	add r2, r7, #0
	bl GFL_HeapAllocate
	str r0, [sp, #0x24]
	add r0, r6, #0
	add r0, #0xbc
	ldr r0, [r0]
	add r5, #0x38
	str r0, [r4, r5]
	add r0, r4, #0
	bl ovy168_21ef35c
	mov r0, #2
	bl ovy168_21e0430
	add r0, r6, #0
	add r0, #0xbc
	ldr r0, [r0]
	cmp r0, #2
	blt _021EABF2
	sub r1, r0, #2
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r1, r0, #1
	add r0, r6, #0
	add r0, #0xbc
	str r1, [r0]
_021EABF2:
	ldr r1, [r4, #0x68]
	mov r0, #1
	bic r1, r0
	mov r0, #1
	orr r0, r1
	mov r1, #0x10
	str r0, [r4, #0x68]
	bic r0, r1
	add r1, r6, #0
	add r1, #0x90
	ldr r1, [r1]
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1b
	orr r0, r1
	str r0, [r4, #0x68]
	ldr r0, [sp, #0x24]
	str r4, [r0]
	add r0, r6, #0
	add r0, #0xbc
	ldr r1, [r0]
	ldr r0, [sp, #0x24]
	str r1, [r0, #8]
	add r0, r6, #0
	add r0, #0xbc
	ldr r1, [r0]
	mov r0, #3
	lsl r0, r0, #8
	str r1, [r4, r0]
	ldr r0, [r4, #0x58]
	cmp r0, #0
	bne _021EAC36
	add r0, r4, #0
	bl ovy168_21ef380
_021EAC36:
	mov r5, #0
_021EAC38:
	add r7, r5, #0
	mov r0, #0xc
	mul r7, r0
	add r3, r6, r7
	add r2, r4, r7
	ldmia r3!, {r0, r1}
	add r2, #0x74
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r3, r4, r7
	str r0, [r2]
	add r2, r6, r7
	add r2, #0x48
	ldmia r2!, {r0, r1}
	add r3, #0xbc
	stmia r3!, {r0, r1}
	ldr r0, [r2]
	add r5, r5, #1
	str r0, [r3]
	cmp r5, #6
	blt _021EAC38
	ldr r0, _021EAD58 ; =0x000002DE
	mov r2, #0
	mov r5, #1
_021EAC68:
	add r1, r4, r2
	add r2, r2, #1
	strb r5, [r1, r0]
	cmp r2, #4
	blt _021EAC68
	bl ovy168_21e0304
	ldr r1, _021EAD5C ; =0x000002DF
	strb r0, [r4, r1]
	add r0, r4, #0
	bl ovy168_21ee630
	add r0, r4, #0
	add r1, r6, #0
	bl ovy168_21ee358
	add r1, r6, #0
	add r1, #0xc5
	ldrb r1, [r1]
	add r0, r4, #0
	bl ovy168_21ee708
	add r0, r4, #0
	bl ovy168_21ef5f0
	ldr r1, [sp, #0x24]
	str r0, [r1, #0xc]
	add r0, r4, #0
	add r1, r6, #0
	bl ovy168_21ef29c
	ldr r0, [r4, #0x58]
	cmp r0, #2
	beq _021EACB0
	cmp r0, #5
	bne _021EACE4
_021EACB0:
	add r0, r4, #0
	mov r1, #0
	bl ovy168_21ee6f8
	ldr r0, [sp, #0x24]
	ldr r1, [r0]
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _021EACCC
	add r0, r4, #0
	bl ovy168_21ed784
_021EACCC:
	ldr r0, [r4]
	ldr r1, _021EAD60 ; =ovy168_21ebdbc
_021EACD0:
	ldr r2, [sp, #0x24]
_021EACD2:
	mov r3, #1
_021EACD4:
	bl sub_0203A614
	add r1, r0, #0
	ldr r2, _021EAD48 ; =ovy168_21ece94
	add r0, r4, #0
	bl ovy168_21ef3c0
	b _021EB0E4
_021EACE4:
	add r0, r4, #0
	mov r1, #0
	bl ovy168_21ee8d0
	add r0, r6, #0
	add r0, #0x94
	ldr r0, [r0]
	cmp r0, #0
	beq _021EACFE
	add r0, r4, #0
	add r1, r5, #0
	bl ovy168_21ee8d0
_021EACFE:
	ldr r1, [r4, #0x68]
	ldr r0, _021EAD64 ; =0xFFFFBFFF
	add r6, #0x94
	and r1, r0
	ldr r0, [r6]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x11
	orr r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4]
	ldr r1, _021EAD68 ; =ovy168_21eb9dc
	b _021EACD0
_021EAD16:
	mov r0, #0x66
	lsl r0, r0, #4
	mov r5, #0xb1
	str r0, [sp]
	lsl r5, r5, #2
	ldrh r1, [r4, r5]
	ldr r0, _021EAD38 ; =0x00007FFF
	ldr r3, _021EAD3C ; =0x021F41C8
	b _021EAD6C
	.align 2, 0
_021EAD28: .word 0xF87FFFFF
_021EAD2C: .word 0x00000329
_021EAD30: .word 0x00000842
_021EAD34: .word 0x000005E7
_021EAD38: .word 0x00007FFF
_021EAD3C: .word 0x021F41C8
_021EAD40: .word ovy168_21ec064
_021EAD44: .word ovy168_21ec0d0
_021EAD48: .word ovy168_21ece94
_021EAD4C: .word 0xFFFFFE1F
_021EAD50: .word 0xFFFFE1FF
_021EAD54: .word 0x0000060E
_021EAD58: .word 0x000002DE
_021EAD5C: .word 0x000002DF
_021EAD60: .word ovy168_21ebdbc
_021EAD64: .word 0xFFFFBFFF
_021EAD68: .word ovy168_21eb9dc
_021EAD6C:
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0x24
	add r2, r7, #0
	bl GFL_HeapAllocate
	str r0, [sp, #0x20]
	add r0, r4, #0
	add r1, r6, #0
	bl ovy168_21ed81c
	ldr r1, [r4, #0x68]
	mov r0, #1
	bic r1, r0
	add r0, r1, #0
	orr r0, r7
	str r0, [r4, #0x68]
	ldr r0, [sp, #0x20]
	str r4, [r0]
	ldr r1, [r6, #0x10]
	str r1, [r0, #8]
	add r0, r5, #0
	ldr r1, [r6, #0x14]
	add r0, #0x40
	str r1, [r4, r0]
	add r0, r4, #0
	bl ovy168_21ef5f0
	ldr r1, [sp, #0x20]
	mov r2, #0
	str r0, [r1, #0xc]
	add r5, #0x2c
_021EADB2:
	lsl r0, r2, #1
	ldrh r1, [r6, r0]
	add r0, r4, r0
	add r2, r2, #1
	strh r1, [r0, r5]
	cmp r2, #4
	blt _021EADB2
	mov r5, #0xb
	lsl r5, r5, #6
	ldr r0, [r4, r5]
	cmp r0, #1
	bne _021EADE0
	ldr r0, [r4, #0x50]
	sub r0, r0, #1
	cmp r0, #1
	bhi _021EADE0
	mov r0, #2
	bl ovy168_21e04b0
	sub r5, #0x7c
	add r0, r5, #0
	bl ovy168_21df2c8
_021EADE0:
	ldr r0, [r4, #0x58]
	cmp r0, #3
	bne _021EADEC
	ldr r0, [r4]
	ldr r1, _021EB0EC ; =ovy168_21ebf98
	b _021EAE18
_021EADEC:
	cmp r0, #0
	bne _021EAE0E
	add r0, r4, #0
	mov r1, #0
	bl ovy168_21ee8d0
	ldr r0, [r4, #0x68]
	lsl r0, r0, #0x11
	lsr r0, r0, #0x1f
	beq _021EAE08
	add r0, r4, #0
	mov r1, #1
	bl ovy168_21ee8d0
_021EAE08:
	ldr r0, [r4]
	ldr r1, _021EB0F0 ; =ovy168_21ebaf0
	b _021EAE18
_021EAE0E:
	add r0, r4, #0
	bl ovy168_21ee630
	ldr r0, [r4]
	ldr r1, _021EB0F4 ; =ovy168_21ebcc8
_021EAE18:
	ldr r2, [sp, #0x20]
	b _021EACD2
_021EAE1C:
	ldr r0, _021EB0F8 ; =0x0000068F
	ldr r3, _021EB0FC ; =0x021F41C8
	str r0, [sp]
	mov r0, #0xb1
	lsl r0, r0, #2
	ldrh r1, [r4, r0]
	ldr r0, _021EB100 ; =0x00007FFF
	add r2, r7, #0
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0x24
	bl GFL_HeapAllocate
	add r5, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl ovy168_21edc58
	ldr r1, [r4, #0x68]
	mov r0, #1
	bic r1, r0
	add r0, r1, #0
	orr r0, r7
	str r0, [r4, #0x68]
	str r4, [r5]
	add r6, #0x48
	ldrb r0, [r6]
	ldr r1, _021EB104 ; =ovy168_21ebee4
	str r0, [r5, #8]
	ldr r0, [r4]
_021EAE60:
	add r2, r5, #0
	add r3, r7, #0
_021EAE64:
	b _021EACD4
_021EAE66:
	ldr r0, _021EB108 ; =0x0000069B
	ldr r3, _021EB0FC ; =0x021F41C8
	str r0, [sp]
	mov r0, #0xb1
	lsl r0, r0, #2
	ldrh r1, [r4, r0]
	ldr r0, _021EB100 ; =0x00007FFF
	add r2, r7, #0
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0x24
	bl GFL_HeapAllocate
	add r5, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl ovy168_21edec4
	ldr r0, [r4, #0x68]
	mov r1, #1
	bic r0, r1
	orr r0, r7
	str r0, [r4, #0x68]
	str r4, [r5]
	ldr r0, [r4, #0x6c]
	bic r0, r1
	ldr r1, [r6, #8]
	and r1, r7
	orr r0, r1
	str r0, [r4, #0x6c]
	ldr r0, [r4]
	ldr r1, _021EB10C ; =ovy168_21ec208
	b _021EAE60
_021EAEAE:
	ldr r0, _021EB110 ; =0x000006A8
	ldr r3, _021EB0FC ; =0x021F41C8
	str r0, [sp]
	mov r0, #0xb1
	lsl r0, r0, #2
	ldrh r1, [r4, r0]
	ldr r0, _021EB100 ; =0x00007FFF
	add r2, r7, #0
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0x24
	bl GFL_HeapAllocate
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x58]
	cmp r0, #0
	beq _021EAEE2
	ldr r1, [r4, #0x68]
	ldr r0, _021EB114 ; =0xFFF9FFFF
	and r1, r0
	ldr r0, _021EB118 ; =0xFFE7FFFF
	and r0, r1
	str r0, [r4, #0x68]
_021EAEE2:
	mov r7, #0xcf
	mov r0, #0
	lsl r7, r7, #2
	str r0, [sp, #0x18]
	add r0, r7, #0
	sub r0, #0xc
	mov ip, r0
_021EAEF0:
	ldr r0, [sp, #0x18]
	lsl r0, r0, #2
	ldr r2, [r6, r0]
	add r1, r4, r0
	mov r0, ip
	str r2, [r1, r0]
	ldr r0, [sp, #0x18]
	mov r2, #0
	lsl r0, r0, #4
	add r3, r6, r0
	add r5, r4, r0
_021EAF06:
	lsl r1, r2, #2
	add r0, r3, r1
	ldr r0, [r0, #0xc]
	add r1, r5, r1
	add r2, r2, #1
	str r0, [r1, r7]
	cmp r2, #4
	blt _021EAF06
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #3
	blt _021EAEF0
	add r0, r4, #0
	bl ovy168_21edf68
	ldr r1, [r4, #0x68]
	mov r0, #1
	bic r1, r0
	mov r5, #1
	add r0, r1, #0
	orr r0, r5
	str r0, [r4, #0x68]
	ldr r0, [sp, #0x1c]
	str r4, [r0]
	ldr r0, [r4, #0x58]
	cmp r0, #0
	bne _021EAF5E
	add r0, r4, #0
	mov r1, #0
	bl ovy168_21ee8d0
	ldr r0, [r4, #0x68]
	lsl r0, r0, #0x11
	lsr r0, r0, #0x1f
	beq _021EAF56
	add r0, r4, #0
	add r1, r5, #0
	bl ovy168_21ee8d0
_021EAF56:
	ldr r0, [r4]
	ldr r1, _021EB11C ; =ovy168_21ec2f8
	ldr r2, [sp, #0x1c]
	b _021EACD2
_021EAF5E:
	ldr r0, [r4]
	ldr r1, _021EB120 ; =ovy168_21ecc94
	ldr r2, [sp, #0x1c]
	add r3, r5, #0
	b _021EAE64
_021EAF68:
	mov r0, #0
	str r0, [sp, #0x14]
	mov r5, #0
	bl ovy168_21e012c
	bl ovy167_0219C988
	cmp r0, #2
	bne _021EAF7C
	add r5, r7, #0
_021EAF7C:
	ldr r0, _021EB124 ; =0x000002DE
	mov r3, #0
	mov r2, #1
_021EAF82:
	add r1, r4, r3
	add r3, r3, #1
	strb r2, [r1, r0]
	cmp r3, #3
	blt _021EAF82
	ldr r7, _021EB0FC ; =0x021F41C8
	cmp r5, #0
	bne _021EAF9A
	add r0, r4, #0
	add r1, r6, #0
	bl ovy168_21ee118
_021EAF9A:
	ldr r0, [r6, #0xc]
	cmp r0, #3
	bhi _021EAFCA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EAFAC: ; jump table
	.short _021EAFCA - _021EAFAC - 2 ; case 0
	.short _021EAFB4 - _021EAFAC - 2 ; case 1
	.short _021EAFB4 - _021EAFAC - 2 ; case 2
	.short _021EAFB4 - _021EAFAC - 2 ; case 3
_021EAFB4:
	mov r0, #1
	mov r1, #2
	mov r2, #0
	bl sub_020232E8
	ldr r1, [r6, #0xc]
	ldr r0, [r4, #0x5c]
	add r1, #8
	bl sub_0204898C
	str r0, [sp, #0x14]
_021EAFCA:
	ldr r0, [r4, #0x58]
	cmp r0, #0
	bne _021EB024
	ldr r0, _021EB128 ; =0x0000070A
	mov r2, #1
	str r0, [sp]
	mov r0, #0xb1
	lsl r0, r0, #2
	ldrh r1, [r4, r0]
	ldr r0, _021EB100 ; =0x00007FFF
	add r3, r7, #0
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0x24
	mov r5, #1
	bl GFL_HeapAllocate
	add r2, r0, #0
	ldr r1, [r4, #0x68]
	mov r0, #1
	bic r1, r0
	add r0, r1, #0
	orr r0, r5
	str r0, [r4, #0x68]
	str r4, [r2]
	ldr r0, [r6, #0xc]
	cmp r0, #0
	bne _021EB012
	mov r0, #0
	str r0, [r2, #0x10]
	add r5, #0xff
	str r5, [r2, #0x14]
	b _021EB01A
_021EB012:
	add r5, #0xff
	str r5, [r2, #0x10]
	mov r0, #0
	str r0, [r2, #0x14]
_021EB01A:
	ldr r0, [sp, #0x14]
	ldr r1, _021EB12C ; =ovy168_21ec4d0
	str r0, [r2, #0x1c]
	ldr r0, [r4]
	b _021EACD2
_021EB024:
	cmp r5, #0
	bne _021EB05C
	ldr r0, [r6, #0xc]
	cmp r0, #0
	bne _021EB044
	mov r0, #2
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r3, #4
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #4
	mov r2, #0
	add r3, #0xfc
	b _021EB058
_021EB044:
	mov r0, #2
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r2, #4
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #4
	add r2, #0xfc
	mov r3, #0
_021EB058:
	bl ovy168_21ed44c
_021EB05C:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _021EB07E
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r0, #8
	str r1, [sp]
	ldr r0, [r4, r0]
	ldr r3, [sp, #0x14]
	mov r1, #0x18
	mov r2, #0x38
	bl sub_02021CFC
	ldr r0, [sp, #0x14]
	bl GFL_StrBufFree
_021EB07E:
	mov r5, #0xab
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	bl sub_0204826C
	mov r0, #6
	bl sub_02044F90
	ldr r0, [r4, r5]
	bl BmpWin_FlushChar
	b _021EB0E4
_021EB096:
	ldr r0, _021EB130 ; =0x0000073A
	mov r5, #0xb1
	str r0, [sp]
	lsl r5, r5, #2
	ldrh r1, [r4, r5]
	ldr r0, _021EB100 ; =0x00007FFF
	ldr r3, _021EB0FC ; =0x021F41C8
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0x24
	add r2, r7, #0
	bl GFL_HeapAllocate
	add r2, r0, #0
	ldr r1, [r4, #0x68]
	mov r0, #1
	bic r1, r0
	add r0, r1, #0
	orr r0, r7
	str r0, [r4, #0x68]
	str r4, [r2]
	ldr r0, [r4]
	ldr r1, _021EB134 ; =ovy168_21ecb90
	add r3, r7, #0
	bl sub_0203A614
	add r1, r0, #0
	ldr r2, _021EB138 ; =ovy168_21ece94
	add r0, r4, #0
	bl ovy168_21ef3c0
	add r0, r5, #0
	add r0, #0x1a
	strb r7, [r4, r0]
	add r5, #0x1b
	strb r7, [r4, r5]
_021EB0E4:
	ldr r0, [sp, #0x10]
	str r0, [r4, #0x58]
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EB0EC: .word ovy168_21ebf98
_021EB0F0: .word ovy168_21ebaf0
_021EB0F4: .word ovy168_21ebcc8
_021EB0F8: .word 0x0000068F
_021EB0FC: .word 0x021F41C8
_021EB100: .word 0x00007FFF
_021EB104: .word ovy168_21ebee4
_021EB108: .word 0x0000069B
_021EB10C: .word ovy168_21ec208
_021EB110: .word 0x000006A8
_021EB114: .word 0xFFF9FFFF
_021EB118: .word 0xFFE7FFFF
_021EB11C: .word ovy168_21ec2f8
_021EB120: .word ovy168_21ecc94
_021EB124: .word 0x000002DE
_021EB128: .word 0x0000070A
_021EB12C: .word ovy168_21ec4d0
_021EB130: .word 0x0000073A
_021EB134: .word ovy168_21ecb90
_021EB138: .word ovy168_21ece94
	thumb_func_end ovy168_21eaa3c

	thumb_func_start ovy168_21eb13c
ovy168_21eb13c: ; 0x021EB13C
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	ldr r0, [r6]
	bl sub_0203DA0C
	mov r1, #0
	add r4, r0, #0
	mvn r1, r1
	cmp r4, r1
	beq _021EB174
	ldr r0, _021EB198 ; =0x000002DE
	add r2, r5, r4
	ldrb r0, [r2, r0]
	cmp r0, #0
	bne _021EB160
	add r4, r1, #0
	b _021EB17C
_021EB160:
	cmp r4, #2
	bne _021EB16C
	add r0, r5, #0
	bl ovy168_21ef734
	b _021EB17C
_021EB16C:
	add r0, r5, #0
	bl ovy168_21ef71c
	b _021EB17C
_021EB174:
	add r0, r5, #0
	bl ovy168_21ef008
	add r4, r0, #0
_021EB17C:
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _021EB194
	ldr r3, [r6, #8]
	lsl r2, r4, #2
	ldr r2, [r3, r2]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy168_21ef0ec
	add r4, r0, #0
_021EB194:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_021EB198: .word 0x000002DE
	thumb_func_end ovy168_21eb13c

	thumb_func_start ovy168_21eb19c
ovy168_21eb19c: ; 0x021EB19C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0203DF44
	mov r1, #0
	mov r5, #2
	mvn r1, r1
	tst r0, r5
	beq _021EB1BE
	ldr r0, [r4, #0x6c]
	lsl r0, r0, #0xd
	lsr r0, r0, #0x1f
	bne _021EB1BE
	add r0, r4, #0
	bl ovy168_21ef734
	add r1, r5, #0
_021EB1BE:
	add r0, r1, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy168_21eb19c

	thumb_func_start ovy168_21eb1c4
ovy168_21eb1c4: ; 0x021EB1C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, [r4, #0x68]
	str r1, [sp, #8]
	lsl r0, r0, #0x1f
	add r5, r2, #0
	lsr r0, r0, #0x1f
	bne _021EB1E6
	ldr r0, [r4, #0x64]
	bl sub_02027780
	cmp r0, #0
	bne _021EB1E6
	ldr r0, [r4, #0x68]
	lsr r0, r0, #0x1f
	beq _021EB1EE
_021EB1E6:
	mov r0, #0
	add sp, #0x10
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_021EB1EE:
	mov r2, #0
	ldr r0, [r4, #0x70]
	mvn r2, r2
	cmp r0, r2
	beq _021EB206
	ldr r3, [r4, #0x6c]
	mov r1, #2
	bic r3, r1
	add sp, #0x10
	str r3, [r4, #0x6c]
	str r2, [r4, #0x70]
	pop {r3, r4, r5, r6, r7, pc}
_021EB206:
	bl GCTX_HIDGetPressedKeys
	mov r1, #8
	tst r0, r1
	beq _021EB21C
	ldr r0, [r4, #0x58]
	sub r0, r0, #1
	cmp r0, #2
	bhi _021EB21C
	bl ovy168_21dfb40
_021EB21C:
	ldr r0, [r4, #0x58]
	cmp r0, #6
	bne _021EB24A
	ldr r0, _021EB3F0 ; =0x00000329
	ldrb r0, [r4, r0]
	cmp r0, #2
	beq _021EB23A
	mov r2, #0
	ldr r1, [sp, #8]
	add r0, r4, #0
	mvn r2, r2
	bl ovy168_21eb13c
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021EB23A:
	mov r2, #0
	ldr r1, [sp, #8]
	add r0, r4, #0
	mvn r2, r2
	bl ovy168_21eb19c
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021EB24A:
	ldr r0, [sp, #8]
	ldr r0, [r0]
	bl sub_0203DA0C
	add r7, r0, #0
	mov r6, #0xc1
	str r7, [sp]
	lsl r6, r6, #2
	ldr r0, [r4, r6]
	ldr r1, [sp, #8]
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, r5, #0
	mov r3, #0
	bl ovy168_21eecbc
	add r5, r0, #0
	mov r0, #0
	sub r0, r0, #1
	cmp r5, r0
	bne _021EB276
	b _021EB3CE
_021EB276:
	bl sub_0203DF20
	add r1, r4, r5
	sub r6, #0x26
	ldrb r1, [r1, r6]
	cmp r1, #0
	bne _021EB2AE
	mov r1, #2
	lsl r1, r1, #8
	tst r1, r0
	beq _021EB292
	ldr r1, [r4, #0x58]
	cmp r1, #2
	beq _021EB2AE
_021EB292:
	ldr r0, _021EB3F4 ; =0x000002E6
	add r1, r4, r5
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _021EB2A8
	ldr r0, [r4, #0x58]
	cmp r0, #2
	bne _021EB2A8
	add r0, r4, #0
	bl ovy168_21ef77c
_021EB2A8:
	mov r5, #0
	mvn r5, r5
	b _021EB3CE
_021EB2AE:
	cmp r5, #4
	bge _021EB2CC
	mov r1, #2
	lsl r1, r1, #8
	tst r1, r0
	beq _021EB2CC
	ldr r1, [r4, #0x58]
	cmp r1, #2
	bne _021EB2CC
	mov r1, #0xc1
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	cmp r1, #1
	bne _021EB2CC
	b _021EB2A8
_021EB2CC:
	cmp r5, #4
	bge _021EB2EA
	mov r1, #2
	lsl r1, r1, #8
	tst r0, r1
	beq _021EB2EA
	ldr r0, [r4, #0x58]
	cmp r0, #2
	bne _021EB2EA
	add r0, r4, r5
	add r1, #0xe6
	ldrb r0, [r0, r1]
	cmp r0, #0
	bne _021EB2EA
	b _021EB2A8
_021EB2EA:
	mov r0, #0
	mvn r0, r0
	cmp r7, r0
	beq _021EB3CE
	ldr r1, [sp, #8]
	add r0, r4, #0
	add r2, r5, #0
	bl ovy168_21ef47c
	cmp r0, #0
	bne _021EB3C8
	ldr r0, [r4, #0x6c]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	bne _021EB3C8
	add r0, r4, #0
	bl ovy168_21ef71c
	ldr r0, [r4, #0x58]
	str r0, [sp, #0xc]
	cmp r0, #5
	bhi _021EB3CE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EB322: ; jump table
	.short _021EB3CE - _021EB322 - 2 ; case 0
	.short _021EB32E - _021EB322 - 2 ; case 1
	.short _021EB32E - _021EB322 - 2 ; case 2
	.short _021EB342 - _021EB322 - 2 ; case 3
	.short _021EB3CE - _021EB322 - 2 ; case 4
	.short _021EB32E - _021EB322 - 2 ; case 5
_021EB32E:
	mov r1, #3
	lsl r1, r1, #8
	ldr r0, [r4, r1]
	sub r1, #0x3a
	lsl r0, r0, #3
	add r2, r4, r0
	ldr r0, [sp, #0xc]
	add r0, r2, r0
	strb r5, [r0, r1]
	b _021EB3CE
_021EB342:
	ldr r3, [r4, #0x50]
	mov r0, #0
	mov ip, r0
	cmp r3, #2
	ldr r0, [r4, #0x6c]
	beq _021EB362
	mov r1, #3
	lsl r1, r1, #8
	ldr r6, [r4, r1]
	lsl r0, r0, #0x16
	mov r1, #0xf
	add r2, r6, #0
	mul r2, r1
	lsr r0, r0, #0x18
	ldr r1, _021EB3F8 ; =0x0689E218
	b _021EB374
_021EB362:
	mov r1, #3
	lsl r1, r1, #8
	ldr r6, [r4, r1]
	lsl r0, r0, #0x16
	mov r1, #0xf
	add r2, r6, #0
	mul r2, r1
	ldr r1, _021EB3FC ; =0x0689E238
	lsr r0, r0, #0x18
_021EB374:
	add r1, r1, r2
	ldrb r1, [r0, r1]
	cmp r3, #2
	beq _021EB384
	mov r2, #0x3c
	mul r2, r6
	ldr r3, _021EB400 ; =0x0689E6E0
	b _021EB38A
_021EB384:
	mov r2, #0x3c
	ldr r3, _021EB404 ; =0x0689E884
	mul r2, r6
_021EB38A:
	lsl r0, r0, #2
	add r2, r3, r2
	ldr r2, [r0, r2]
	mov r0, #0
	cmp r1, #0
	ble _021EB3AE
	mov r7, #0xa
_021EB398:
	mov r3, #0xc
	mul r3, r0
	add r3, r2, r3
	ldrsb r3, [r3, r7]
	cmp r5, r3
	bne _021EB3A8
	mov ip, r0
	b _021EB3AE
_021EB3A8:
	add r0, r0, #1
	cmp r0, r1
	blt _021EB398
_021EB3AE:
	lsl r0, r6, #3
	add r1, r4, r0
	mov r0, #0xb2
	lsl r0, r0, #2
	ldrb r2, [r1, r0]
	sub r0, r0, #2
	lsl r3, r2, #4
	mov r2, ip
	orr r2, r3
	ldr r3, [sp, #0xc]
	add r1, r1, r3
	strb r2, [r1, r0]
	b _021EB3CE
_021EB3C8:
	add r0, r4, #0
	bl ovy168_21ef734
_021EB3CE:
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	beq _021EB3E8
	ldr r2, [sp, #8]
	add r0, r4, #0
	ldr r3, [r2, #8]
	lsl r2, r5, #2
	ldr r2, [r3, r2]
	add r1, r5, #0
	bl ovy168_21ef0ec
	add r5, r0, #0
_021EB3E8:
	add r0, r5, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EB3F0: .word 0x00000329
_021EB3F4: .word 0x000002E6
_021EB3F8: .word 0x0689E218
_021EB3FC: .word 0x0689E238
_021EB400: .word 0x0689E6E0
_021EB404: .word 0x0689E884
	thumb_func_end ovy168_21eb1c4

	thumb_func_start ovy168_21eb408
ovy168_21eb408: ; 0x021EB408
	push {r3, r4, r5, lr}
	sub sp, #0x20
	add r5, r0, #0
	ldr r0, [r5, #0x68]
	mov r4, #0
	lsl r0, r0, #5
	lsr r0, r0, #0x1c
	beq _021EB41E
	cmp r0, #1
	beq _021EB492
	b _021EB4A4
_021EB41E:
	ldr r3, _021EB4AC ; =0x021F380C
	add r2, sp, #8
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r5, #0x60]
	cmp r0, #0
	bne _021EB444
	mov r2, #0xb1
	lsl r2, r2, #2
	ldrh r2, [r5, r2]
	ldr r0, [r5, #0x64]
	mov r1, #0xb
	bl ovy168_21f2cdc
	str r0, [r5, #0x60]
_021EB444:
	ldr r0, [r5, #0x68]
	add r1, sp, #8
	lsl r0, r0, #1
	lsr r0, r0, #0x1c
	lsl r2, r0, #3
	mov r0, #7
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	add r3, sp, #0xc
	ldr r1, [r1, r2]
	ldr r2, [r3, r2]
	ldr r0, [r5, #0x60]
	mov r3, #2
	bl ovy168_21f2dcc
	cmp r0, #0
	beq _021EB4A4
	ldr r1, [r5, #0x68]
	ldr r0, _021EB4B0 ; =0xF87FFFFF
	and r0, r1
	lsl r1, r1, #5
	lsr r1, r1, #0x1c
	add r1, r1, #1
	lsl r1, r1, #0x1c
	add r2, r0, #0
	lsr r1, r1, #5
	orr r2, r1
	ldr r0, _021EB4B4 ; =0x87FFFFFF
	add r1, r2, #0
	and r1, r0
	lsl r0, r2, #1
	lsr r0, r0, #0x1c
	add r0, r0, #1
	lsl r0, r0, #0x1c
	lsr r0, r0, #1
	orr r0, r1
	str r0, [r5, #0x68]
	b _021EB4A4
_021EB492:
	ldr r0, [r5, #0x60]
	bl ovy168_21f2e98
	add r4, r0, #0
	cmp r4, #1
	bne _021EB4A4
	add r0, r5, #0
	bl ovy168_21ef71c
_021EB4A4:
	add r0, r4, #0
	add sp, #0x20
	pop {r3, r4, r5, pc}
	nop
_021EB4AC: .word 0x021F380C
_021EB4B0: .word 0xF87FFFFF
_021EB4B4: .word 0x87FFFFFF
	thumb_func_end ovy168_21eb408

	thumb_func_start ovy168_21eb4b8
ovy168_21eb4b8: ; 0x021EB4B8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0x68]
	add r6, r1, #0
	lsl r0, r0, #0x1f
	add r7, r2, #0
	lsr r0, r0, #0x1f
	bne _021EB4DA
	ldr r0, [r5, #0x64]
	bl sub_02027780
	cmp r0, #0
	bne _021EB4DA
	ldr r0, [r5, #0x68]
	lsr r0, r0, #0x1f
	beq _021EB4E0
_021EB4DA:
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021EB4E0:
	bl GCTX_HIDGetPressedKeys
	mov r1, #8
	tst r0, r1
	beq _021EB4EE
	bl ovy168_21dfb40
_021EB4EE:
	mov r0, #0
	ldr r1, [r5, #0x70]
	mvn r0, r0
	cmp r1, r0
	beq _021EB5A8
	ldr r0, _021EB770 ; =0xFFFF7FFF
	add r4, r1, #0
	and r4, r0
	cmp r4, #5
	bge _021EB56A
	cmp r4, #4
	bge _021EB514
	mov r0, #0x22
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _021EB514
	mov r0, #7
	str r0, [r5, #0x70]
_021EB514:
	ldr r0, [r5, #0x70]
	mov r2, #0x3e
	str r0, [r7]
	ldr r0, [r5, #0x68]
	mov r4, #0
	lsl r0, r0, #0xb
	lsr r1, r0, #0x1e
	ldr r0, _021EB774 ; =0x021F35CC
	lsl r2, r2, #8
	ldrb r0, [r0, r1]
	mov r3, #0
	strb r0, [r6]
	mov r0, #0
	mvn r0, r0
	str r0, [r5, #0x70]
	ldr r1, [r5, #0x6c]
	mov r0, #2
	bic r1, r0
	str r1, [r5, #0x6c]
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	ldr r0, [r5]
	mov r1, #2
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x64]
	bl sub_020270F0
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	ldr r0, [r5]
	mov r2, #7
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x64]
	mov r1, #8
	lsl r2, r2, #8
	mov r3, #0
	bl sub_020270F0
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021EB56A:
	ldr r1, [r5, #0x68]
	ldr r0, _021EB778 ; =0xFFFFFE1F
	and r0, r1
	mov r1, #3
	str r0, [r5, #0x68]
	lsl r1, r1, #8
	ldr r2, [r5, r1]
	mov r0, #0
	lsl r2, r2, #3
	add r3, r5, r2
	ldr r2, [r5, #0x58]
	sub r1, #0x3a
	add r2, r3, r2
	strb r0, [r2, r1]
	ldr r1, [r5, #0x6c]
	mov r0, #2
	bic r1, r0
	add r0, r5, #0
	str r1, [r5, #0x6c]
	bl ovy168_21ef74c
	add r0, r5, #0
	add r1, r4, #0
	bl ovy168_21ed5f8
	mov r0, #0
	mvn r0, r0
	str r0, [r5, #0x70]
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021EB5A8:
	mov r0, #0x22
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _021EB5E8
	ldr r0, _021EB77C ; =0x021F35CC
	ldr r0, [r0, #0x38]
	bl sub_0203DA0C
	add r4, r0, #0
	ldr r0, [r5, #0x68]
	lsl r0, r0, #0xb
	lsr r0, r0, #0x1e
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x33
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ovy167_21bc554
	str r4, [sp]
	str r0, [sp, #4]
	ldr r2, [r5, #0x68]
	add r0, r5, #0
	lsl r2, r2, #0xb
	lsr r2, r2, #0x1e
	lsl r3, r2, #2
	ldr r2, _021EB780 ; =0x021F41A4
	ldr r1, _021EB784 ; =0x021F3604
	ldr r2, [r2, r3]
	mov r3, #0
	b _021EB61C
_021EB5E8:
	ldr r0, _021EB77C ; =0x021F35CC
	ldr r0, [r0, #0x44]
	bl sub_0203DA0C
	add r4, r0, #0
	ldr r0, [r5, #0x68]
	lsl r0, r0, #0xb
	lsr r0, r0, #0x1e
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x33
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ovy167_21bc554
	str r4, [sp]
	str r0, [sp, #4]
	ldr r2, [r5, #0x68]
	ldr r1, _021EB788 ; =0x021F3610
	lsl r2, r2, #0xb
	lsr r2, r2, #0x1e
	lsl r3, r2, #2
	ldr r2, _021EB78C ; =0x021F41BC
	add r0, r5, #0
	ldr r2, [r2, r3]
	ldr r3, _021EB790 ; =0x021F35CF
_021EB61C:
	bl ovy168_21eecbc
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _021EB6A8
	bl sub_0203DF20
	add r6, r0, #0
	ldr r3, _021EB794 ; =0x000002DE
	add r0, r5, r4
	ldrb r1, [r0, r3]
	cmp r1, #0
	bne _021EB652
	add r2, r3, #0
	sub r2, #0xde
	tst r2, r6
	bne _021EB652
	add r3, #8
	ldrb r0, [r0, r3]
	cmp r0, #0
	beq _021EB650
	add r0, r5, #0
	bl ovy168_21ef77c
_021EB650:
	b _021EB6A4
_021EB652:
	cmp r4, #4
	ble _021EB65C
	cmp r1, #0
	bne _021EB65C
	b _021EB6A4
_021EB65C:
	cmp r4, #4
	bge _021EB68C
	mov r7, #2
	lsl r7, r7, #8
	add r0, r6, #0
	tst r0, r7
	beq _021EB68C
	ldr r0, [r5, #0x68]
	lsl r0, r0, #0xb
	lsr r0, r0, #0x1e
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x33
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ovy167_21bc554
	cmp r0, #1
	beq _021EB68A
	add r7, #0x20
	ldr r0, [r5, r7]
	cmp r0, #1
	bne _021EB68C
_021EB68A:
	b _021EB6A4
_021EB68C:
	cmp r4, #4
	bge _021EB6A8
	mov r0, #2
	lsl r0, r0, #8
	add r1, r6, #0
	tst r1, r0
	beq _021EB6A8
	add r1, r5, r4
	add r0, #0xe6
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _021EB6A8
_021EB6A4:
	mov r4, #0
	mvn r4, r4
_021EB6A8:
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _021EB75A
	mov r6, #0x22
	lsl r6, r6, #4
	ldr r0, [r5, r6]
	cmp r0, #1
	bne _021EB706
	ldr r1, _021EB784 ; =0x021F3604
	add r0, r5, #0
	add r2, r4, #0
	bl ovy168_21ef47c
	cmp r0, #0
	bne _021EB6EA
	ldr r1, [r5, #0x6c]
	lsl r1, r1, #0x1e
	lsr r1, r1, #0x1f
	bne _021EB6EA
	add r0, r6, #0
	add r0, #0xe0
	ldr r0, [r5, r0]
	add r6, #0xa6
	lsl r0, r0, #3
	add r1, r5, r0
	ldr r0, [r5, #0x58]
	add r0, r1, r0
	strb r4, [r0, r6]
	add r0, r5, #0
	bl ovy168_21ef764
	b _021EB6FC
_021EB6EA:
	cmp r0, #1
	bne _021EB6FC
	ldr r0, [r5, #0x6c]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	bne _021EB6FC
	add r0, r5, #0
	bl ovy168_21ef734
_021EB6FC:
	ldr r2, _021EB77C ; =0x021F35CC
	add r0, r5, #0
	add r1, r4, #0
	ldr r3, [r2, #0x40]
	b _021EB750
_021EB706:
	ldr r1, _021EB788 ; =0x021F3610
	add r0, r5, #0
	add r2, r4, #0
	bl ovy168_21ef47c
	cmp r0, #0
	bne _021EB736
	ldr r1, [r5, #0x6c]
	lsl r1, r1, #0x1e
	lsr r1, r1, #0x1f
	bne _021EB736
	add r0, r6, #0
	add r0, #0xe0
	ldr r0, [r5, r0]
	add r6, #0xa6
	lsl r0, r0, #3
	add r1, r5, r0
	ldr r0, [r5, #0x58]
	add r0, r1, r0
	strb r4, [r0, r6]
	add r0, r5, #0
	bl ovy168_21ef764
	b _021EB748
_021EB736:
	cmp r0, #1
	bne _021EB748
	ldr r0, [r5, #0x6c]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	bne _021EB748
	add r0, r5, #0
	bl ovy168_21ef734
_021EB748:
	ldr r2, _021EB77C ; =0x021F35CC
	add r0, r5, #0
	ldr r3, [r2, #0x4c]
	add r1, r4, #0
_021EB750:
	lsl r2, r4, #2
	ldr r2, [r3, r2]
	bl ovy168_21ef0ec
	add r4, r0, #0
_021EB75A:
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _021EB768
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021EB768:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EB770: .word 0xFFFF7FFF
_021EB774: .word 0x021F35CC
_021EB778: .word 0xFFFFFE1F
_021EB77C: .word 0x021F35CC
_021EB780: .word 0x021F41A4
_021EB784: .word 0x021F3604
_021EB788: .word 0x021F3610
_021EB78C: .word 0x021F41BC
_021EB790: .word 0x021F35CF
_021EB794: .word 0x000002DE
	thumb_func_end ovy168_21eb4b8

	thumb_func_start ovy168_21eb798
ovy168_21eb798: ; 0x021EB798
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x68]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bne _021EB7B4
	ldr r0, [r4, #0x64]
	bl sub_02027780
	cmp r0, #0
	bne _021EB7B4
	ldr r0, [r4, #0x68]
	lsr r0, r0, #0x1f
	beq _021EB7B8
_021EB7B4:
	mov r0, #1
	pop {r4, pc}
_021EB7B8:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy168_21eb798
_021EB7BC:
	.byte 0x80, 0x6D, 0x70, 0x47

	thumb_func_start ovy168_21eb7c0
ovy168_21eb7c0: ; 0x021EB7C0
	ldr r2, _021EB7CC ; =0x00000329
	ldrb r1, [r1, r2]
	cmp r1, #0
	beq _021EB7CA
	add r0, #0x86
_021EB7CA:
	bx lr
	.align 2, 0
_021EB7CC: .word 0x00000329
	thumb_func_end ovy168_21eb7c0

	thumb_func_start ovy168_21eb7d0
ovy168_21eb7d0: ; 0x021EB7D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r4, _021EB9D4 ; =0x00000329
	add r5, r0, #0
	ldrb r0, [r5, r4]
	cmp r0, #2
	beq _021EB890
	mov r6, #0x5a
	lsl r6, r6, #2
	add r0, r6, #0
	add r1, r5, #0
	bl ovy168_21eb7c0
	str r0, [sp, #0xc]
	sub r0, r6, #2
	add r1, r5, #0
	bl ovy168_21eb7c0
	mov r7, #0
	add r1, r0, #0
	str r7, [sp]
	add r0, r4, #0
	str r7, [sp, #4]
	sub r0, #0x65
	ldrh r0, [r5, r0]
	mov r2, #4
	mov r3, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0x48]
	bl sub_0204ADA8
	add r0, r6, #0
	add r0, #0x15
	add r1, r5, #0
	bl ovy168_21eb7c0
	add r1, r0, #0
	mov r0, #4
	lsl r0, r0, #0xd
	str r0, [sp]
	add r0, r4, #0
	str r7, [sp, #4]
	sub r0, #0x65
	ldrh r0, [r5, r0]
	mov r2, #7
	mov r3, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0x48]
	bl sub_0204ADA8
	add r0, r6, #0
	add r0, #0x16
	add r1, r5, #0
	bl ovy168_21eb7c0
	add r1, r0, #0
	str r7, [sp]
	add r0, r4, #0
	str r7, [sp, #4]
	sub r0, #0x65
	ldrh r0, [r5, r0]
	mov r2, #7
	mov r3, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0x48]
	bl sub_0204AF50
	mov r0, #1
	add r3, r4, #0
	str r0, [sp]
	add r6, #0x78
	str r6, [sp, #4]
	str r7, [sp, #8]
	sub r3, #0x65
	ldrh r3, [r5, r3]
	ldr r0, [r5, #0x64]
	ldr r1, [r5, #0x48]
	ldr r2, [sp, #0xc]
	bl sub_02026F5C
	add r0, r4, #0
	sub r0, #0x69
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _021EB890
	bl ovy168_21e00b8
	mov r1, #1
	bl sub_02026FD0
	sub r4, #0x21
	add r0, #0x40
	add r1, r5, r4
	mov r2, #0x20
	blx MIi_CpuCopy16
_021EB890:
	mov r0, #0xb1
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	mov r6, #0x69
	lsl r6, r6, #2
	str r0, [sp]
	ldr r0, [r5, #0x48]
	add r1, r6, #0
	mov r2, #0
	mov r3, #1
	mov r4, #0
	bl Oam_LoadNCGRFile
	add r1, r6, #0
	sub r1, #0xa0
	str r0, [r5, r1]
	mov r3, #0xb1
	lsl r3, r3, #2
	ldrh r3, [r5, r3]
	ldr r0, [r5, #0x48]
	add r1, r6, #2
	add r2, r6, #3
	bl Oam_LoadNCERFile
	add r1, r6, #0
	sub r1, #0x98
	str r0, [r5, r1]
	mov r0, #0xb1
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	add r1, r6, #1
	mov r2, #1
	str r0, [sp]
	ldr r0, [r5, #0x48]
	mov r3, #0
	bl sub_0204BBA0
	add r1, r6, #0
	sub r1, #0x9c
	str r0, [r5, r1]
	mov r1, #1
	bl sub_0204BDC0
	add r2, r0, #0
	lsl r2, r2, #0xf
	mov r3, #3
	str r3, [sp, #0x10]
	add r3, #0xfd
	ldr r0, [r5, #0x64]
	mov r1, #3
	lsr r2, r2, #0x10
	str r3, [sp, #0x10]
	bl sub_02026F7C
	mov r0, #0xb1
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	add r1, r6, #4
	mov r2, #0
	str r0, [sp]
	ldr r0, [r5, #0x48]
	mov r3, #1
	bl Oam_LoadNCGRFile
	add r1, r6, #0
	sub r1, #0x94
	str r0, [r5, r1]
	mov r3, #0xb1
	lsl r3, r3, #2
	ldrh r3, [r5, r3]
	ldr r0, [r5, #0x48]
	add r1, r6, #5
	add r2, r6, #6
	bl Oam_LoadNCERFile
	add r1, r6, #0
	sub r1, #0x90
	str r0, [r5, r1]
	bl sub_0202D7E0
	mov r1, #0xb1
	lsl r1, r1, #2
	ldrh r2, [r5, r1]
	ldr r1, _021EB9D8 ; =0x00007FFF
	and r2, r1
	add r1, r1, #1
	orr r1, r2
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0204AA30
	add r7, r0, #0
	mov r0, #0
	bl sub_0202D7F8
	str r0, [sp, #0x14]
	mov r0, #0
	bl sub_0202D7FC
	mov r3, #0xb1
	lsl r3, r3, #2
	add r2, r0, #0
	ldrh r3, [r5, r3]
	ldr r1, [sp, #0x14]
	add r0, r7, #0
	bl Oam_LoadNCERFile
	add r1, r6, #0
	add r1, #0x50
	str r0, [r5, r1]
	bl sub_0202D7E4
	add r1, r0, #0
	mov r0, #0xb1
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	ldr r3, [sp, #0x10]
	mov r2, #1
	str r0, [sp]
	add r0, r7, #0
	bl sub_0204BBA0
	add r1, r6, #0
	add r1, #0x4c
	str r0, [r5, r1]
	mov r1, #1
	bl sub_0204BDC0
	add r2, r0, #0
	lsl r2, r2, #0xf
	ldr r0, [r5, #0x64]
	mov r1, #3
	lsr r2, r2, #0x10
	mov r3, #0x60
	bl sub_02026F7C
	add r6, #0x3c
_021EB9A2:
	mov r0, #0
	bl sub_0202D7F4
	add r1, r0, #0
	mov r0, #0xb1
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	mov r2, #0
	mov r3, #1
	str r0, [sp]
	add r0, r7, #0
	bl Oam_LoadNCGRFile
	lsl r1, r4, #2
	add r1, r5, r1
	add r4, r4, #1
	str r0, [r1, r6]
	cmp r4, #4
	blt _021EB9A2
	add r0, r7, #0
	bl GFL_ArcToolFree
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EB9D4: .word 0x00000329
_021EB9D8: .word 0x00007FFF
	thumb_func_end ovy168_21eb7d0

	thumb_func_start ovy168_21eb9dc
ovy168_21eb9dc: ; 0x021EB9DC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r1, #0
	add r4, r0, #0
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _021EB9EE
	cmp r0, #1
	b _021EBAAE
_021EB9EE:
	ldr r1, [r5]
	mov r7, #0
	str r7, [sp]
	mov r4, #0xb1
	str r7, [sp, #4]
	lsl r4, r4, #2
	ldrh r0, [r1, r4]
	mov r2, #4
	mov r3, #0
	str r0, [sp, #8]
	ldr r0, [r1, #0x48]
	ldr r1, [r5, #0xc]
	bl sub_0204AF50
	ldr r6, [r5]
	mov r0, #0x5d
	lsl r0, r0, #2
	add r1, r6, #0
	str r0, [sp, #0x10]
	bl ovy168_21eb7c0
	str r7, [sp]
	str r7, [sp, #4]
	add r1, r0, #0
	ldrh r0, [r6, r4]
	mov r2, #5
	mov r3, #0
	str r0, [sp, #8]
	ldr r0, [r5]
	ldr r0, [r0, #0x48]
	bl sub_0204AF50
	ldr r0, [r5]
	bl ovy168_21ef6ec
	mov r0, #1
	str r0, [sp]
	str r7, [sp, #4]
	mov r6, #2
	str r6, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r5]
	mov r1, #5
	mov r2, #0
	mov r3, #0
	bl ovy168_21ed44c
	mov r0, #0x98
	str r0, [sp]
	mov r1, #3
	ldr r0, [r5]
	ldr r3, _021EBAE8 ; =0xFFFFFC00
	lsl r1, r1, #0xc
	lsl r2, r6, #0xb
	bl ovy168_21ecea8
	mov r0, #8
	ldr r2, [sp, #0x10]
	str r0, [sp]
	add r2, #0x4c
	ldr r0, [r5]
	mov r1, #0
	mov r3, #8
	str r2, [sp, #0x10]
	bl ovy168_21ecfa8
	ldr r0, [r5]
	bl ovy168_21ef588
	ldr r0, [r5]
	sub r4, #0x10
	ldr r0, [r0, r4]
	bl sub_0204826C
	mov r0, #6
	bl sub_02044F90
	ldr r1, [r5]
	mov r0, #0xc
	str r0, [sp]
	ldr r0, _021EBAEC ; =0x00000842
	str r7, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r1]
	mov r2, #3
	str r0, [sp, #0xc]
	ldr r0, [r1, #0x64]
	mov r1, #2
	mov r3, #1
	bl sub_020270F0
	ldr r0, [r5, #4]
	add sp, #0x14
	add r0, r0, #1
	str r0, [r5, #4]
	pop {r4, r5, r6, r7, pc}
_021EBAAE:
	ldr r1, [r5]
	ldr r0, [r1, #0x68]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1d
	bne _021EBAE2
	mov r0, #0xad
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl BmpWin_FlushChar
	mov r0, #4
	mov r1, #1
	bl sub_02044C98
	mov r0, #5
	mov r1, #1
	bl sub_02044C98
	mov r0, #7
	mov r1, #0
	bl sub_02044C98
	ldr r0, [r5]
	add r1, r4, #0
	bl ovy168_21ef3f0
_021EBAE2:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021EBAE8: .word 0xFFFFFC00
_021EBAEC: .word 0x00000842
	thumb_func_end ovy168_21eb9dc

	thumb_func_start ovy168_21ebaf0
ovy168_21ebaf0: ; 0x021EBAF0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #3
	bls _021EBB00
	b _021EBC74
_021EBB00:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EBB0C: ; jump table
	.short _021EBB14 - _021EBB0C - 2 ; case 0
	.short _021EBBBE - _021EBB0C - 2 ; case 1
	.short _021EBC58 - _021EBB0C - 2 ; case 2
	.short _021EBC74 - _021EBB0C - 2 ; case 3
_021EBB14:
	ldr r5, [r4]
	ldr r6, _021EBCB8 ; =0x00000169
	add r1, r5, #0
	add r0, r6, #0
	bl ovy168_21eb7c0
	mov r7, #0
	add r1, r0, #0
	str r7, [sp]
	mov r0, #0xb1
	str r7, [sp, #4]
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	mov r2, #4
	mov r3, #0
	str r0, [sp, #8]
	ldr r0, [r4]
	ldr r0, [r0, #0x48]
	bl sub_0204AF50
	ldr r5, [r4]
	add r6, #0x12
	add r0, r6, #0
	add r1, r5, #0
	bl ovy168_21eb7c0
	add r1, r0, #0
	str r7, [sp]
	mov r0, #0xb1
	str r7, [sp, #4]
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	mov r2, #5
	mov r3, #0
	str r0, [sp, #8]
	ldr r0, [r4]
	ldr r0, [r0, #0x48]
	bl sub_0204AF50
	ldr r0, [r4]
	bl ovy168_21ef6ec
	str r7, [sp]
	str r7, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r5, #1
	str r5, [sp, #0xc]
	ldr r0, [r4]
	mov r1, #5
	mov r2, #0
	mov r3, #0
	bl ovy168_21ed44c
	mov r0, #0x98
	str r0, [sp]
	mov r1, #3
	ldr r0, [r4]
	ldr r3, _021EBCBC ; =0xFFFFFC00
	lsl r1, r1, #0xc
	lsl r2, r5, #0xc
	bl ovy168_21ecea8
	mov r0, #6
	bl sub_02044F90
	ldr r1, [r4]
	mov r0, #0xc
	str r0, [sp]
	ldr r0, _021EBCC0 ; =0x00000842
	str r7, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r1]
	mov r2, #3
	str r0, [sp, #0xc]
	ldr r0, [r1, #0x64]
	mov r1, #2
	mov r3, #1
	bl sub_020270F0
	ldr r0, [r4, #4]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
_021EBBBE:
	ldr r5, [r4]
	ldr r0, [r5, #0x68]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1d
	bne _021EBCB4
	ldr r0, [r5, #0x50]
	cmp r0, #2
	bne _021EBBD8
	ldr r0, [r4, #8]
	cmp r0, #4
	beq _021EBBD8
	ldr r0, _021EBCC4 ; =0x0000016A
	b _021EBBDA
_021EBBD8:
	ldr r0, _021EBCB8 ; =0x00000169
_021EBBDA:
	add r1, r5, #0
	bl ovy168_21eb7c0
	mov r3, #0
	add r1, r0, #0
	str r3, [sp]
	mov r0, #0xb1
	str r3, [sp, #4]
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	mov r2, #4
	str r0, [sp, #8]
	ldr r0, [r4]
	ldr r0, [r0, #0x48]
	bl sub_0204AF50
	mov r5, #0xab
	ldr r0, [r4]
	lsl r5, r5, #2
	ldr r0, [r0, r5]
	bl sub_0204826C
	mov r0, #6
	bl sub_02044F90
	mov r3, #8
	str r3, [sp]
	mov r1, #8
	sub r5, #0xec
	ldr r0, [r4]
	add r1, #0xf8
	add r2, r5, #0
	bl ovy168_21ecfa8
	ldr r0, [r4]
	mov r1, #0
	mov r2, #0
	mov r5, #0
	bl ovy168_21ed090
	ldr r0, [r4]
	mov r1, #0
	bl ovy168_21ed324
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	mov r1, #2
	str r1, [sp, #8]
	str r5, [sp, #0xc]
	ldr r0, [r4]
	sub r1, r1, #3
	mov r2, #0
	mov r3, #0
	bl ovy168_21ed44c
	mov r0, #4
	str r0, [r4, #0x18]
	ldr r0, [r4, #4]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
_021EBC58:
	ldr r0, [r4, #0x18]
	sub r0, r0, #1
	str r0, [r4, #0x18]
	bne _021EBCB4
	ldr r0, [r4]
	mov r1, #0
	mov r2, #0
	bl ovy168_21ed184
	ldr r0, [r4, #4]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
_021EBC74:
	ldr r1, [r4]
	ldr r0, [r1, #0x68]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1d
	bne _021EBCB4
	mov r5, #0xab
	lsl r5, r5, #2
	ldr r0, [r1, r5]
	bl BmpWin_FlushChar
	ldr r0, [r4]
	sub r5, #0xb4
	ldr r0, [r0, r5]
	mov r1, #1
	bl sub_0204BFD4
	mov r0, #2
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r2, #5
	ldr r0, [r4]
	mov r1, #5
	add r2, #0xfb
	mov r3, #0xc0
	bl ovy168_21ed44c
	ldr r0, [r4]
	add r1, r6, #0
	bl ovy168_21ef3f0
_021EBCB4:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EBCB8: .word 0x00000169
_021EBCBC: .word 0xFFFFFC00
_021EBCC0: .word 0x00000842
_021EBCC4: .word 0x0000016A
	thumb_func_end ovy168_21ebaf0

	thumb_func_start ovy168_21ebcc8
ovy168_21ebcc8: ; 0x021EBCC8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _021EBCDE
	cmp r0, #1
	beq _021EBD5A
	cmp r0, #2
	b _021EBD76
_021EBCDE:
	ldr r1, [r5]
	mov r6, #0
	str r6, [sp]
	mov r4, #0xb1
	str r6, [sp, #4]
	lsl r4, r4, #2
	ldrh r0, [r1, r4]
	mov r2, #4
	mov r3, #0
	str r0, [sp, #8]
	ldr r0, [r1, #0x48]
	ldr r1, [r5, #0xc]
	mov r7, #4
	bl sub_0204AF50
	ldr r0, [r5]
	sub r4, #0x18
	ldr r0, [r0, r4]
	bl sub_0204826C
	mov r0, #6
	bl sub_02044F90
	mov r3, #8
	str r3, [sp]
	mov r1, #8
	mov r2, #7
	ldr r0, [r5]
	add r1, #0xf8
	lsl r2, r2, #6
	bl ovy168_21ecfa8
	ldr r0, [r5]
	mov r1, #0
	mov r2, #0
	bl ovy168_21ed090
	ldr r0, [r5]
	mov r1, #0
	bl ovy168_21ed324
	ldr r0, [r5]
	bl ovy168_21ef5cc
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	mov r1, #2
	str r1, [sp, #8]
	str r6, [sp, #0xc]
	ldr r0, [r5]
	sub r1, r1, #3
	mov r2, #0
	mov r3, #0
	bl ovy168_21ed44c
	ldr r0, [r5, #4]
	add sp, #0x10
	add r0, r0, #1
	str r7, [r5, #0x18]
	str r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_021EBD5A:
	ldr r0, [r5, #0x18]
	sub r0, r0, #1
	str r0, [r5, #0x18]
	bne _021EBDB6
	ldr r0, [r5]
	mov r1, #0
	mov r2, #0
	bl ovy168_21ed184
	ldr r0, [r5, #4]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_021EBD76:
	ldr r1, [r5]
	ldr r0, [r1, #0x68]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1d
	bne _021EBDB6
	mov r4, #0xab
	lsl r4, r4, #2
	ldr r0, [r1, r4]
	bl BmpWin_FlushChar
	ldr r0, [r5]
	sub r4, #0xb4
	ldr r0, [r0, r4]
	mov r1, #1
	bl sub_0204BFD4
	mov r0, #2
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r2, #5
	ldr r0, [r5]
	mov r1, #5
	add r2, #0xfb
	mov r3, #0xc0
	bl ovy168_21ed44c
	ldr r0, [r5]
	add r1, r6, #0
	bl ovy168_21ef3f0
_021EBDB6:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy168_21ebcc8

	thumb_func_start ovy168_21ebdbc
ovy168_21ebdbc: ; 0x021EBDBC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #3
	bhi _021EBEA0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EBDD6: ; jump table
	.short _021EBDDE - _021EBDD6 - 2 ; case 0
	.short _021EBE54 - _021EBDD6 - 2 ; case 1
	.short _021EBE6C - _021EBDD6 - 2 ; case 2
	.short _021EBEA0 - _021EBDD6 - 2 ; case 3
_021EBDDE:
	ldr r1, [r4]
	mov r7, #0
	str r7, [sp]
	mov r5, #0xb1
	str r7, [sp, #4]
	lsl r5, r5, #2
	ldrh r0, [r1, r5]
	mov r2, #4
	mov r3, #0
	str r0, [sp, #8]
	ldr r0, [r1, #0x48]
	ldr r1, [r4, #0xc]
	bl sub_0204AF50
	ldr r6, [r4]
	mov r0, #0x5d
	lsl r0, r0, #2
	add r1, r6, #0
	bl ovy168_21eb7c0
	str r7, [sp]
	str r7, [sp, #4]
	add r1, r0, #0
	ldrh r0, [r6, r5]
	mov r2, #5
	mov r3, #0
	str r0, [sp, #8]
	ldr r0, [r4]
	ldr r0, [r0, #0x48]
	bl sub_0204AF50
	ldr r0, [r4]
	sub r5, #0x10
	ldr r0, [r0, r5]
	bl sub_0204826C
	ldr r0, [r4]
	bl ovy168_21ef588
	mov r0, #6
	bl sub_02044F90
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	ldr r0, [r4]
	mov r1, #5
	mov r2, #0
	mov r3, #0xc0
	bl ovy168_21ed44c
	ldr r0, [r4, #4]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
_021EBE54:
	ldr r0, [r4]
	mov r1, #0
	mov r2, #1
	bl ovy168_21ed184
	mov r0, #4
	str r0, [r4, #0x18]
	ldr r0, [r4, #4]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
_021EBE6C:
	ldr r0, [r4, #0x18]
	sub r0, r0, #1
	str r0, [r4, #0x18]
	bne _021EBEDC
	mov r3, #8
	str r3, [sp]
	mov r2, #7
	ldr r0, [r4]
	mov r1, #0
	lsl r2, r2, #6
	bl ovy168_21ecfa8
	ldr r0, [r4]
	mov r1, #0
	mov r2, #1
	bl ovy168_21ed090
	ldr r0, [r4]
	mov r1, #1
	bl ovy168_21ed324
	ldr r0, [r4, #4]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
_021EBEA0:
	ldr r0, [r4]
	ldr r1, [r0, #0x68]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1d
	bne _021EBEDC
	mov r1, #1
	bl ovy168_21ee6f8
	mov r0, #0x72
	ldr r1, [r4]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _021EBEC8
	mov r2, #0x10
	ldr r0, _021EBEE0 ; =0x04001050
	mov r1, #0x10
	sub r2, #0x18
	bl G2x_SetBlendBrightness_
_021EBEC8:
	mov r0, #0xad
	ldr r1, [r4]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl BmpWin_FlushChar
	ldr r0, [r4]
	add r1, r5, #0
	bl ovy168_21ef3f0
_021EBEDC:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EBEE0: .word 0x04001050
	thumb_func_end ovy168_21ebdbc

	thumb_func_start ovy168_21ebee4
ovy168_21ebee4: ; 0x021EBEE4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	ldr r4, [r5]
	ldr r6, _021EBF94 ; =0x00000169
	str r0, [sp, #0xc]
	add r0, r6, #0
	add r1, r4, #0
	bl ovy168_21eb7c0
	mov r7, #0
	add r1, r0, #0
	str r7, [sp]
	mov r0, #0xb1
	str r7, [sp, #4]
	lsl r0, r0, #2
	ldrh r0, [r4, r0]
	mov r2, #4
	mov r3, #0
	str r0, [sp, #8]
	ldr r0, [r5]
	ldr r0, [r0, #0x48]
	bl sub_0204AF50
	mov r0, #0xb1
	lsl r0, r0, #2
	mov r3, #0x11
	ldr r1, [r5]
	add r0, #0xbc
	str r0, [sp]
	mov r0, #0xb1
	str r7, [sp, #4]
	lsl r0, r0, #2
	ldrh r0, [r1, r0]
	mov r2, #4
	lsl r3, r3, #6
	str r0, [sp, #8]
	ldr r0, [r1, #0x48]
	ldr r1, [r5, #0xc]
	bl sub_0204AF50
	mov r0, #0xb1
	lsl r0, r0, #2
	ldr r1, [r5]
	sub r0, #0x18
	ldr r0, [r1, r0]
	bl sub_0204826C
	mov r0, #6
	bl sub_02044F90
	ldr r4, [r5]
	ldr r0, [r4, #0x50]
	cmp r0, #2
	bne _021EBF56
	add r6, #0xd
	b _021EBF58
_021EBF56:
	add r6, #0xc
_021EBF58:
	add r0, r6, #0
	add r1, r4, #0
	bl ovy168_21eb7c0
	add r1, r0, #0
	str r7, [sp]
	mov r0, #0xb1
	str r7, [sp, #4]
	lsl r0, r0, #2
	ldrh r0, [r4, r0]
	mov r2, #5
	add r3, r7, #0
	str r0, [sp, #8]
	ldr r0, [r5]
	ldr r0, [r0, #0x48]
	bl sub_0204AF50
	mov r0, #0xab
	ldr r1, [r5]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl BmpWin_FlushChar
	ldr r0, [r5]
	ldr r1, [sp, #0xc]
	bl ovy168_21ef3f0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EBF94: .word 0x00000169
	thumb_func_end ovy168_21ebee4

	thumb_func_start ovy168_21ebf98
ovy168_21ebf98: ; 0x021EBF98
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r7, r0, #0
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _021EBFAE
	cmp r0, #1
	beq _021EBFEA
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021EBFAE:
	ldr r1, [r5]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0xb1
	lsl r0, r0, #2
	ldrh r0, [r1, r0]
	mov r2, #4
	mov r3, #0
	str r0, [sp, #8]
	ldr r0, [r1, #0x48]
	ldr r1, [r5, #0xc]
	bl sub_0204AF50
	mov r0, #2
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r5]
	mov r1, #5
	mov r2, #0
	mov r3, #0xc0
	bl ovy168_21ed44c
	ldr r0, [r5, #4]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_021EBFEA:
	mov r0, #0xab
	ldr r1, [r5]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0204826C
	mov r0, #6
	bl sub_02044F90
	ldr r6, [r5]
	mov r4, #0x5d
	lsl r4, r4, #2
	add r0, r4, #0
	add r1, r6, #0
	bl ovy168_21eb7c0
	add r1, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0xab
	lsl r0, r0, #2
	add r0, #0x18
	ldrh r0, [r6, r0]
	mov r2, #5
	mov r3, #0
	str r0, [sp, #8]
	ldr r0, [r5]
	ldr r0, [r0, #0x48]
	bl sub_0204AF50
	mov r0, #0xab
	ldr r1, [r5]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl BmpWin_FlushChar
	ldr r0, [r5]
	add r4, #0x84
	ldr r0, [r0, r4]
	mov r1, #1
	bl sub_0204BFD4
	mov r2, #2
	str r2, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r5]
	mov r1, #5
	add r2, #0xfe
	mov r3, #0xc0
	bl ovy168_21ed44c
	ldr r0, [r5]
	add r1, r7, #0
	bl ovy168_21ef3f0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy168_21ebf98

	thumb_func_start ovy168_21ec064
ovy168_21ec064: ; 0x021EC064
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	add r2, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021EC07A
	cmp r0, #1
	beq _021EC098
	cmp r0, #2
	b _021EC0BA
_021EC07A:
	mov r0, #0xa8
	mov r1, #1
	str r0, [sp]
	lsl r1, r1, #0xc
	mov r2, #3
	ldr r0, [r4]
	lsl r2, r2, #0xc
	lsr r3, r1, #2
	bl ovy168_21ecea8
	ldr r0, [r4, #4]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, pc}
_021EC098:
	mov r0, #4
	mov r1, #0
	bl sub_02044C98
	mov r0, #5
	mov r1, #0
	bl sub_02044C98
	mov r0, #7
	mov r1, #1
	bl sub_02044C98
	ldr r0, [r4, #4]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, pc}
_021EC0BA:
	ldr r0, [r4]
	ldr r1, [r0, #0x68]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1d
	bne _021EC0CA
	add r1, r2, #0
	bl ovy168_21ef3f0
_021EC0CA:
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ovy168_21ec064

	thumb_func_start ovy168_21ec0d0
ovy168_21ec0d0: ; 0x021EC0D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r2, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #5
	bls _021EC0E0
	b _021EC1EE
_021EC0E0:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EC0EC: ; jump table
	.short _021EC0F8 - _021EC0EC - 2 ; case 0
	.short _021EC168 - _021EC0EC - 2 ; case 1
	.short _021EC18A - _021EC0EC - 2 ; case 2
	.short _021EC1A6 - _021EC0EC - 2 ; case 3
	.short _021EC1CC - _021EC0EC - 2 ; case 4
	.short _021EC1EE - _021EC0EC - 2 ; case 5
_021EC0F8:
	ldr r5, [r4]
	ldr r6, _021EC204 ; =0x00000169
	add r1, r5, #0
	add r0, r6, #0
	bl ovy168_21eb7c0
	mov r7, #0
	add r1, r0, #0
	str r7, [sp]
	mov r0, #0xb1
	str r7, [sp, #4]
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	mov r2, #4
	mov r3, #0
	str r0, [sp, #8]
	ldr r0, [r4]
	ldr r0, [r0, #0x48]
	bl sub_0204AF50
	ldr r5, [r4]
	add r6, #0x11
	add r0, r6, #0
	add r1, r5, #0
	bl ovy168_21eb7c0
	add r1, r0, #0
	str r7, [sp]
	mov r0, #0xb1
	str r7, [sp, #4]
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	mov r2, #5
	mov r3, #0
	str r0, [sp, #8]
	ldr r0, [r4]
	ldr r0, [r0, #0x48]
	bl sub_0204AF50
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	ldr r0, [r4]
	mov r1, #5
	mov r2, #0
	mov r3, #0xc0
	bl ovy168_21ed44c
	ldr r0, [r4, #4]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
_021EC168:
	ldr r0, [r4, #0x20]
	cmp r0, #2
	beq _021EC172
	cmp r0, #5
	bne _021EC17C
_021EC172:
	ldr r0, [r4]
	mov r1, #0
	mov r2, #1
	bl ovy168_21ed184
_021EC17C:
	ldr r0, [r4, #4]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #4
	str r0, [r4, #0x18]
	pop {r3, r4, r5, r6, r7, pc}
_021EC18A:
	ldr r0, [r4, #0x18]
	sub r0, r0, #1
	str r0, [r4, #0x18]
	bne _021EC1FE
	ldr r0, [r4]
	mov r1, #0
	mov r2, #1
	bl ovy168_21ed090
	ldr r0, [r4, #4]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
_021EC1A6:
	ldr r0, [r4]
	ldr r1, [r0, #0x68]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1d
	bne _021EC1FE
	mov r1, #0xa8
	str r1, [sp]
	mov r1, #1
	lsl r1, r1, #0xc
	mov r2, #3
	lsl r2, r2, #0xc
	lsr r3, r1, #2
	bl ovy168_21ecea8
	ldr r0, [r4, #4]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
_021EC1CC:
	mov r0, #4
	mov r1, #0
	bl sub_02044C98
	mov r0, #5
	mov r1, #0
	bl sub_02044C98
	mov r0, #7
	mov r1, #1
	bl sub_02044C98
	ldr r0, [r4, #4]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
_021EC1EE:
	ldr r0, [r4]
	ldr r1, [r0, #0x68]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1d
	bne _021EC1FE
	add r1, r2, #0
	bl ovy168_21ef3f0
_021EC1FE:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EC204: .word 0x00000169
	thumb_func_end ovy168_21ec0d0

	thumb_func_start ovy168_21ec208
ovy168_21ec208: ; 0x021EC208
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r4, r0, #0
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _021EC21E
	cmp r0, #1
	beq _021EC27C
	cmp r0, #2
	b _021EC2A8
_021EC21E:
	ldr r0, [r5]
	bl ovy168_21ef6ec
	mov r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r6, #1
	str r6, [sp, #0xc]
	ldr r0, [r5]
	mov r1, #5
	mov r2, #0
	mov r3, #0
	bl ovy168_21ed44c
	mov r0, #0x98
	str r0, [sp]
	mov r1, #3
	ldr r0, [r5]
	ldr r3, _021EC2F0 ; =0xFFFFFC00
	lsl r1, r1, #0xc
	lsl r2, r6, #0xc
	bl ovy168_21ecea8
	ldr r0, [r5]
	bl ovy168_21ef5cc
	ldr r1, [r5]
	mov r0, #0xc
	str r0, [sp]
	ldr r0, _021EC2F4 ; =0x00000842
	str r4, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r1]
	mov r2, #3
	str r0, [sp, #0xc]
	ldr r0, [r1, #0x64]
	mov r1, #2
	mov r3, #1
	bl sub_02026FE4
	ldr r0, [r5, #4]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r5, #4]
	pop {r4, r5, r6, pc}
_021EC27C:
	ldr r0, [r5]
	ldr r1, [r0, #0x68]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1d
	bne _021EC2EA
	mov r1, #0
	mov r2, #0
	bl ovy168_21ed090
	mov r0, #5
	mov r1, #1
	bl sub_02044C98
	mov r0, #7
	mov r1, #0
	bl sub_02044C98
	ldr r0, [r5, #4]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r5, #4]
	pop {r4, r5, r6, pc}
_021EC2A8:
	ldr r1, [r5]
	ldr r0, [r1, #0x68]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1d
	bne _021EC2EA
	mov r6, #0xab
	lsl r6, r6, #2
	ldr r0, [r1, r6]
	bl sub_0204826C
	mov r0, #6
	bl sub_02044F90
	ldr r0, [r5]
	ldr r0, [r0, r6]
	bl BmpWin_FlushChar
	mov r0, #2
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r2, #5
	ldr r0, [r5]
	mov r1, #5
	add r2, #0xfb
	mov r3, #0xc0
	bl ovy168_21ed44c
	ldr r0, [r5]
	add r1, r4, #0
	bl ovy168_21ef3f0
_021EC2EA:
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_021EC2F0: .word 0xFFFFFC00
_021EC2F4: .word 0x00000842
	thumb_func_end ovy168_21ec208

	thumb_func_start ovy168_21ec2f8
ovy168_21ec2f8: ; 0x021EC2F8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #3
	bls _021EC308
	b _021EC476
_021EC308:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EC314: ; jump table
	.short _021EC31C - _021EC314 - 2 ; case 0
	.short _021EC3C6 - _021EC314 - 2 ; case 1
	.short _021EC45A - _021EC314 - 2 ; case 2
	.short _021EC476 - _021EC314 - 2 ; case 3
_021EC31C:
	ldr r5, [r4]
	ldr r6, _021EC4BC ; =0x00000169
	add r1, r5, #0
	add r0, r6, #0
	bl ovy168_21eb7c0
	mov r7, #0
	add r1, r0, #0
	str r7, [sp]
	mov r0, #0xb1
	str r7, [sp, #4]
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	mov r2, #4
	mov r3, #0
	str r0, [sp, #8]
	ldr r0, [r4]
	ldr r0, [r0, #0x48]
	bl sub_0204AF50
	ldr r5, [r4]
	add r6, #0x12
	add r0, r6, #0
	add r1, r5, #0
	bl ovy168_21eb7c0
	add r1, r0, #0
	str r7, [sp]
	mov r0, #0xb1
	str r7, [sp, #4]
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	mov r2, #5
	mov r3, #0
	str r0, [sp, #8]
	ldr r0, [r4]
	ldr r0, [r0, #0x48]
	bl sub_0204AF50
	ldr r0, [r4]
	bl ovy168_21ef6ec
	str r7, [sp]
	str r7, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r5, #1
	str r5, [sp, #0xc]
	ldr r0, [r4]
	mov r1, #5
	mov r2, #0
	mov r3, #0
	bl ovy168_21ed44c
	mov r0, #0x98
	str r0, [sp]
	mov r1, #3
	ldr r0, [r4]
	ldr r3, _021EC4C0 ; =0xFFFFFC00
	lsl r1, r1, #0xc
	lsl r2, r5, #0xc
	bl ovy168_21ecea8
	mov r0, #6
	bl sub_02044F90
	ldr r1, [r4]
	mov r0, #0xc
	str r0, [sp]
	ldr r0, _021EC4C4 ; =0x00000842
	str r7, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r1]
	mov r2, #3
	str r0, [sp, #0xc]
	ldr r0, [r1, #0x64]
	mov r1, #2
	mov r3, #1
	bl sub_020270F0
	ldr r0, [r4, #4]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
_021EC3C6:
	ldr r5, [r4]
	ldr r0, [r5, #0x68]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1d
	bne _021EC4B6
	mov r0, #0x17
	lsl r0, r0, #4
	add r1, r5, #0
	bl ovy168_21eb7c0
	mov r7, #0
	str r7, [sp]
	mov r6, #0xb1
	str r7, [sp, #4]
	lsl r6, r6, #2
	add r1, r0, #0
	ldrh r0, [r5, r6]
	mov r2, #4
	mov r3, #0
	str r0, [sp, #8]
	ldr r0, [r4]
	mov r5, #4
	ldr r0, [r0, #0x48]
	bl sub_0204AF50
	ldr r0, [r4]
	sub r6, #0x18
	ldr r0, [r0, r6]
	bl sub_0204826C
	mov r0, #6
	bl sub_02044F90
	ldr r0, [r4]
	ldr r3, _021EC4C8 ; =0x021F3744
	ldr r1, [r0, #0x68]
	lsl r1, r1, #0xb
	lsr r1, r1, #0x1e
	lsl r2, r1, #3
	mov r1, #8
	str r1, [sp]
	ldr r1, _021EC4CC ; =0x021F3740
	ldr r1, [r1, r2]
	ldr r2, [r3, r2]
	mov r3, #8
	bl ovy168_21ecfa8
	ldr r0, [r4]
	mov r1, #0
	mov r2, #0
	bl ovy168_21ed090
	ldr r0, [r4]
	mov r1, #0
	bl ovy168_21ed324
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	mov r1, #2
	str r1, [sp, #8]
	str r7, [sp, #0xc]
	ldr r0, [r4]
	sub r1, r1, #3
	mov r2, #0
	mov r3, #0
	bl ovy168_21ed44c
	ldr r0, [r4, #4]
	add sp, #0x10
	add r0, r0, #1
	str r5, [r4, #0x18]
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
_021EC45A:
	ldr r0, [r4, #0x18]
	sub r0, r0, #1
	str r0, [r4, #0x18]
	bne _021EC4B6
	ldr r0, [r4]
	mov r1, #0
	mov r2, #0
	bl ovy168_21ed184
	ldr r0, [r4, #4]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
_021EC476:
	ldr r1, [r4]
	ldr r0, [r1, #0x68]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1d
	bne _021EC4B6
	mov r5, #0xab
	lsl r5, r5, #2
	ldr r0, [r1, r5]
	bl BmpWin_FlushChar
	ldr r0, [r4]
	sub r5, #0xb4
	ldr r0, [r0, r5]
	mov r1, #1
	bl sub_0204BFD4
	mov r0, #2
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r2, #5
	ldr r0, [r4]
	mov r1, #5
	add r2, #0xfb
	mov r3, #0xc0
	bl ovy168_21ed44c
	ldr r0, [r4]
	add r1, r6, #0
	bl ovy168_21ef3f0
_021EC4B6:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EC4BC: .word 0x00000169
_021EC4C0: .word 0xFFFFFC00
_021EC4C4: .word 0x00000842
_021EC4C8: .word 0x021F3744
_021EC4CC: .word 0x021F3740
	thumb_func_end ovy168_21ec2f8

	thumb_func_start ovy168_21ec4d0
ovy168_21ec4d0: ; 0x021EC4D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r0, #0
	add r5, r1, #0
	mov r4, #0
	bl ovy168_21e012c
	bl ovy167_0219C988
	cmp r0, #2
	bne _021EC4E8
	mov r4, #1
_021EC4E8:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _021EC4F2
	cmp r0, #1
	b _021EC5AC
_021EC4F2:
	cmp r4, #0
	bne _021EC5A2
	ldr r6, [r5]
	ldr r4, _021EC624 ; =0x0000016E
	add r1, r6, #0
	add r0, r4, #0
	bl ovy168_21eb7c0
	mov r7, #0
	add r1, r0, #0
	str r7, [sp]
	mov r0, #0xb1
	str r7, [sp, #4]
	lsl r0, r0, #2
	ldrh r0, [r6, r0]
	mov r2, #4
	mov r3, #0
	str r0, [sp, #8]
	ldr r0, [r5]
	ldr r0, [r0, #0x48]
	bl sub_0204AF50
	ldr r6, [r5]
	add r0, r4, #0
	add r0, #0xb
	add r1, r6, #0
	bl ovy168_21eb7c0
	add r1, r0, #0
	str r7, [sp]
	mov r0, #0xb1
	str r7, [sp, #4]
	lsl r0, r0, #2
	ldrh r0, [r6, r0]
	mov r2, #5
	mov r3, #0
	str r0, [sp, #8]
	ldr r0, [r5]
	ldr r0, [r0, #0x48]
	bl sub_0204AF50
	ldr r0, [r5]
	bl ovy168_21ef6ec
	mov r0, #1
	str r0, [sp]
	str r7, [sp, #4]
	mov r6, #2
	str r6, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r5]
	mov r1, #5
	mov r2, #0
	mov r3, #0
	bl ovy168_21ed44c
	mov r0, #0x98
	str r0, [sp]
	mov r1, #3
	ldr r0, [r5]
	ldr r3, _021EC628 ; =0xFFFFFC00
	lsl r1, r1, #0xc
	lsl r2, r6, #0xb
	bl ovy168_21ecea8
	mov r0, #8
	str r0, [sp]
	add r4, #0x52
	ldr r0, [r5]
	mov r1, #0
	add r2, r4, #0
	mov r3, #8
	bl ovy168_21ecfa8
	ldr r1, [r5]
	mov r0, #0xc
	str r0, [sp]
	ldr r0, _021EC62C ; =0x00000842
	str r7, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r1]
	mov r2, #3
	str r0, [sp, #0xc]
	ldr r0, [r1, #0x64]
	mov r1, #2
	mov r3, #1
	bl sub_02026FE4
_021EC5A2:
	ldr r0, [r5, #4]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_021EC5AC:
	ldr r0, [r5]
	ldr r1, [r0, #0x68]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1d
	bne _021EC61E
	ldr r3, [r5, #0x1c]
	cmp r3, #0
	beq _021EC5D6
	mov r1, #0xaa
	lsl r1, r1, #2
	ldr r2, [r0, r1]
	add r1, #8
	str r2, [sp]
	ldr r0, [r0, r1]
	mov r1, #0x18
	mov r2, #0x38
	bl sub_02021CFC
	ldr r0, [r5, #0x1c]
	bl GFL_StrBufFree
_021EC5D6:
	mov r7, #0xab
	ldr r0, [r5]
	lsl r7, r7, #2
	ldr r0, [r0, r7]
	bl sub_0204826C
	mov r0, #6
	bl sub_02044F90
	ldr r0, [r5]
	ldr r0, [r0, r7]
	bl BmpWin_FlushChar
	cmp r4, #0
	bne _021EC60E
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [r5]
	ldr r2, [r5, #0x10]
	ldr r3, [r5, #0x14]
	mov r1, #4
	bl ovy168_21ed44c
_021EC60E:
	ldr r0, [r5]
	add r1, r6, #0
	bl ovy168_21ef3f0
	bl ovy168_21e012c
	bl ovy167_0219C988
_021EC61E:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EC624: .word 0x0000016E
_021EC628: .word 0xFFFFFC00
_021EC62C: .word 0x00000842
	thumb_func_end ovy168_21ec4d0

	thumb_func_start ovy168_21ec630
ovy168_21ec630: ; 0x021EC630
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	mov r1, #0x8e
	lsl r1, r1, #2
	add r3, r1, #0
	add r5, r0, #0
	add r3, #0x8c
	add r2, r1, #0
	ldrh r3, [r5, r3]
	ldr r0, [r5, #0x48]
	str r1, [sp, #0xc]
	add r2, r2, #1
	bl Oam_LoadNCERFile
	ldr r1, [sp, #0xc]
	mov r6, #0
	sub r1, #0x10
	str r0, [r5, r1]
	ldr r1, [sp, #0xc]
	str r6, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	add r1, r1, #2
	add r0, #0x8c
	ldrh r0, [r5, r0]
	mov r2, #1
	mov r3, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0x48]
	bl Oam_LoadNCLRFile
	ldr r1, [sp, #0xc]
	mov r2, #0
	sub r1, #0x14
	str r0, [r5, r1]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0xc]
	add r0, #0x8c
	ldrh r0, [r5, r0]
	sub r1, r1, #1
	add r3, sp, #0x4c
	str r0, [sp]
	ldr r0, [r5, #0x48]
	bl sub_0204B2DC
	add r4, r0, #0
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x4c]
	bl sub_0204BA40
	add r0, r4, #0
	bl GFL_HeapFree
	mov r3, #0x41
	lsl r3, r3, #2
	ldr r0, [r5, #0x64]
	mov r1, #3
	mov r2, #0
	add r3, #0xdc
	bl sub_02026F7C
	ldr r1, _021EC7A4 ; =0x021F35CC
	add r0, sp, #0x3c
	ldrh r2, [r1, #0x2e]
	strh r2, [r0]
	ldrh r2, [r1, #0x30]
	strh r2, [r0, #2]
	ldrh r2, [r1, #0x32]
	strh r2, [r0, #4]
	ldrh r1, [r1, #0x34]
	strh r1, [r0, #6]
	ldrh r0, [r0]
	str r0, [sp, #0x10]
	add r0, sp, #0x3c
	ldrh r0, [r0, #2]
	str r0, [sp, #0x14]
	add r0, sp, #0x3c
	ldrh r0, [r0, #4]
	str r0, [sp, #0x18]
	add r0, sp, #0x3c
	ldrh r0, [r0, #6]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0xc]
	str r0, [sp, #0x38]
	add r0, #0x8c
	str r0, [sp, #0x38]
	ldr r0, [sp, #0xc]
	str r0, [sp, #0x34]
	sub r0, #0xc
	str r0, [sp, #0x34]
	ldr r0, [sp, #0xc]
	str r0, [sp, #0x30]
	sub r0, #0x14
	str r0, [sp, #0x30]
	ldr r0, [sp, #0xc]
	str r0, [sp, #0x2c]
	sub r0, #0x10
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0xc]
	str r0, [sp, #0x28]
	sub r0, #8
	str r0, [sp, #0x28]
	ldr r0, [sp, #0xc]
	str r0, [sp, #0x24]
	sub r0, #8
	str r0, [sp, #0x24]
	ldr r0, [sp, #0xc]
	str r0, [sp, #0x20]
	sub r0, #8
	str r0, [sp, #0x20]
	ldr r0, [sp, #0xc]
	sub r0, #8
	str r0, [sp, #0xc]
_021EC718:
	ldr r1, [sp, #0x10]
	add r0, sp, #0x3c
	strh r1, [r0, #8]
	ldr r1, [sp, #0x14]
	ldr r3, [sp, #0x2c]
	strh r1, [r0, #0xa]
	ldr r1, [sp, #0x18]
	strh r1, [r0, #0xc]
	ldr r1, [sp, #0x1c]
	strh r1, [r0, #0xe]
	lsl r0, r6, #2
	ldr r1, _021EC7A8 ; =0x021F3A70
	add r4, r5, r0
	ldrb r2, [r1, r0]
	add r7, r1, r0
	add r1, sp, #0x3c
	strh r2, [r1, #8]
	ldrb r2, [r7, #1]
	add r0, sp, #0x44
	strh r2, [r1, #0xa]
	mov r1, #0x80
	sub r2, r1, r6
	add r1, sp, #0x3c
	strb r2, [r1, #0xe]
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x38]
	mov r1, #0x41
	ldrh r0, [r5, r0]
	ldr r2, [sp, #0x30]
	lsl r1, r1, #2
	str r0, [sp, #8]
	ldr r0, [sp, #0x34]
	ldr r1, [r5, r1]
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl Oam_CreateSprite
	ldr r1, [sp, #0x28]
	str r0, [r4, r1]
	ldr r0, [sp, #0x24]
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_0204C520
	ldr r0, [sp, #0x20]
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_0204C124
	ldr r0, [sp, #0xc]
	ldrb r1, [r7, #2]
	ldr r0, [r4, r0]
	mov r2, #1
	bl sub_0204C378
	add r6, r6, #1
	cmp r6, #0x16
	blt _021EC718
	mov r1, #0xa2
	lsl r1, r1, #2
	mov r0, #1
	str r0, [r5, r1]
	add r0, r5, #0
	bl ovy168_21ec998
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EC7A4: .word 0x021F35CC
_021EC7A8: .word 0x021F3A70
	thumb_func_end ovy168_21ec630

	thumb_func_start ovy168_21ec7ac
ovy168_21ec7ac: ; 0x021EC7AC
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0x23
	add r6, r0, #0
	mov r4, #0
	lsl r7, r7, #4
_021EC7B6:
	lsl r0, r4, #2
	add r5, r6, r0
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _021EC7C8
	bl sub_0204C108
	mov r0, #0
	str r0, [r5, r7]
_021EC7C8:
	add r4, r4, #1
	cmp r4, #0x16
	blt _021EC7B6
	mov r4, #0x8a
	lsl r4, r4, #2
	ldr r0, [r6, r4]
	bl sub_0204BE64
	sub r0, r4, #4
	ldr r0, [r6, r0]
	bl sub_0204BCD0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy168_21ec7ac

	thumb_func_start ovy168_21ec7e4
ovy168_21ec7e4: ; 0x021EC7E4
	add r2, r0, #0
	lsr r2, r1
	mov r0, #1
	and r0, r2
	bx lr
	.align 2, 0
	thumb_func_end ovy168_21ec7e4

	thumb_func_start ovy168_21ec7f0
ovy168_21ec7f0: ; 0x021EC7F0
	mov r2, #1
	ldr r3, [r0]
	lsl r2, r1
	add r1, r3, #0
	orr r1, r2
	str r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end ovy168_21ec7f0

	thumb_func_start ovy168_21ec800
ovy168_21ec800: ; 0x021EC800
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0xcb
	add r5, r0, #0
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	cmp r0, #0
	bne _021EC82C
	sub r0, r1, #2
	ldrb r0, [r5, r0]
	mov r4, #0
	cmp r0, #0
	ble _021EC82C
	add r7, r5, r1
	sub r6, r1, #2
_021EC81C:
	add r0, r7, #0
	add r1, r4, #0
	bl ovy168_21ec7f0
	ldrb r0, [r5, r6]
	add r4, r4, #1
	cmp r4, r0
	blt _021EC81C
_021EC82C:
	mov r4, #0
	mov r6, #0xcb
	add r7, r4, #0
	lsl r6, r6, #2
_021EC834:
	ldr r0, [r5, r6]
	add r1, r4, #0
	bl ovy168_21ec7e4
	cmp r0, #0
	bne _021EC84C
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	add r3, r7, #0
	bl ovy168_21ec938
_021EC84C:
	add r4, r4, #1
	cmp r4, #0x16
	blt _021EC834
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy168_21ec800

	thumb_func_start ovy168_21ec854
ovy168_21ec854: ; 0x021EC854
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r5, _021EC934 ; =0x00000329
	add r4, r0, #0
	ldrb r1, [r4, r5]
	cmp r1, #2
	bne _021EC930
	add r1, r5, #0
	sub r1, #0xa1
	ldr r1, [r4, r1]
	cmp r1, #1
	beq _021EC930
	bl ovy168_21ec630
	add r0, r4, #0
	bl ovy168_21ec800
	mov r0, #4
	mov r1, #0
	mov r6, #0
	bl sub_02044C98
	mov r0, #5
	mov r1, #1
	bl sub_02044C98
	mov r0, #6
	mov r1, #1
	bl sub_02044C98
	mov r0, #7
	mov r1, #0
	bl sub_02044C98
	mov r0, #0x10
	mov r1, #1
	bl sub_02046D84
	str r6, [sp]
	add r0, r5, #0
	add r1, r5, #0
	str r6, [sp, #4]
	sub r0, #0x65
	ldrh r0, [r4, r0]
	sub r1, #0xf8
	mov r2, #5
	str r0, [sp, #8]
	ldr r0, [r4, #0x48]
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	add r0, r5, #0
	add r1, r5, #0
	str r6, [sp, #4]
	sub r0, #0x65
	ldrh r0, [r4, r0]
	sub r1, #0xf4
	mov r2, #5
	str r0, [sp, #8]
	ldr r0, [r4, #0x48]
	mov r3, #0
	bl sub_0204AF50
	mov r0, #0xa0
	str r0, [sp]
	add r0, r5, #0
	sub r0, #0x65
	ldrh r0, [r4, r0]
	add r1, r5, #0
	sub r1, #0xf9
	str r0, [sp, #4]
	ldr r0, [r4, #0x48]
	mov r2, #4
	mov r3, #0
	bl sub_0204B0D4
	mov r0, #0x20
	mov r7, #0x1a
	lsl r7, r7, #4
	sub r5, #0x65
	str r0, [sp]
	ldrh r0, [r4, r5]
	mov r1, #7
	mov r2, #4
	str r0, [sp, #4]
	mov r0, #0x17
	add r3, r7, #0
	mov r5, #0x17
	bl sub_0204B0B8
	add r7, #0x40
	ldr r0, [r4, #0x64]
	mov r1, #1
	mov r2, #0
	add r3, r7, #0
	bl sub_02026F7C
	sub r5, #0x18
	str r6, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0
	mov r3, #0
	str r6, [sp, #0xc]
	bl ovy168_21ed44c
_021EC930:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EC934: .word 0x00000329
	thumb_func_end ovy168_21ec854

	thumb_func_start ovy168_21ec938
ovy168_21ec938: ; 0x021EC938
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	lsl r4, r2, #2
	mov r0, #0x23
	add r2, r5, r4
	lsl r0, r0, #4
	ldr r0, [r2, r0]
	add r6, r1, #0
	add r7, r3, #0
	bl sub_0204C124
	cmp r6, #0
	beq _021EC976
	mov r0, #0x23
	lsl r0, r0, #4
	add r5, r5, r0
	lsl r1, r7, #0x10
	ldr r0, [r5, r4]
	lsr r1, r1, #0x10
	bl sub_0204C488
	ldr r0, [r5, r4]
	mov r1, #1
	bl sub_0204C520
	ldr r1, _021EC978 ; =0x021F3A72
	ldr r0, [r5, r4]
	ldrb r1, [r1, r4]
	mov r2, #1
	bl sub_0204C378
_021EC976:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EC978: .word 0x021F3A72
	thumb_func_end ovy168_21ec938
_021EC97C:
	.byte 0x89, 0x00, 0x41, 0x18
	.byte 0x23, 0x20, 0x00, 0x01, 0x08, 0x58, 0x01, 0x4B, 0x01, 0x21, 0x18, 0x47, 0x21, 0xC5, 0x04, 0x02
	.byte 0xCB, 0x21, 0x89, 0x00, 0x40, 0x58, 0x70, 0x47

	thumb_func_start ovy168_21ec998
ovy168_21ec998: ; 0x021EC998
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r7, _021ECA3C ; =0x00000D53
	mov r4, #0xb1
	add r5, r0, #0
	mov r6, #6
	lsl r6, r6, #6
	str r7, [sp]
	lsl r4, r4, #2
	ldrh r0, [r5, r4]
	ldr r3, _021ECA40 ; =0x021F41C8
	add r1, r6, #0
	mov r2, #0
	bl GFL_HeapAllocate
	add r1, r4, #0
	sub r1, #0x38
	str r0, [r5, r1]
	mov r1, #0
	add r2, r6, #0
	blx MI_CpuFill8
	add r0, r7, #3
	str r0, [sp]
	add r7, r6, #0
	add r7, #0x60
	ldrh r0, [r5, r4]
	ldr r3, _021ECA40 ; =0x021F41C8
	add r1, r7, #0
	mov r2, #0
	bl GFL_HeapAllocate
	add r1, r4, #0
	sub r1, #0x34
	str r0, [r5, r1]
	mov r1, #0
	add r2, r7, #0
	blx MI_CpuFill8
	add r1, r6, #0
	ldrh r3, [r5, r4]
	ldr r0, [r5, #0x48]
	add r1, #0xba
	add r2, sp, #0xc
	bl sub_0204B37C
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	add r1, r4, #0
	sub r1, #0x38
	ldr r0, [r0, #0xc]
	ldr r1, [r5, r1]
	add r2, r6, #0
	blx MI_CpuCopy8
	ldr r0, [sp, #4]
	bl GFL_HeapFree
	add r6, #0xb0
	ldrh r3, [r5, r4]
	ldr r0, [r5, #0x48]
	add r1, r6, #0
	add r2, sp, #8
	bl sub_0204B37C
	add r6, r0, #0
	ldr r0, [sp, #8]
	add r1, r4, #0
	sub r1, #0x34
	ldr r0, [r0, #0xc]
	ldr r1, [r5, r1]
	add r2, r7, #0
	blx MI_CpuCopy8
	add r0, r6, #0
	bl GFL_HeapFree
	mov r0, #1
	sub r4, #0x20
	str r0, [r5, r4]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021ECA3C: .word 0x00000D53
_021ECA40: .word 0x021F41C8
	thumb_func_end ovy168_21ec998

	thumb_func_start ovy168_21eca44
ovy168_21eca44: ; 0x021ECA44
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	mov r6, #0xa3
	add r5, r0, #0
	lsl r6, r6, #2
	add r4, r1, #0
	ldr r2, [r5, r6]
	mov r0, #0x80
	lsl r1, r4, #7
	str r0, [sp]
	add r1, r2, r1
	ldr r0, [r5, #0x64]
	mov r2, #3
	mov r3, #0
	bl sub_02026E64
	add r0, r6, #4
	ldr r2, [r5, r0]
	mov r0, #0xa0
	add r1, r4, #0
	mul r1, r0
	str r0, [sp]
	add r1, r2, r1
	ldr r0, [r5, #0x64]
	mov r2, #1
	mov r3, #0
	bl sub_02026E64
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ovy168_21eca44

	thumb_func_start ovy168_21eca80
ovy168_21eca80: ; 0x021ECA80
	push {r3, r4, r5, r6, r7, lr}
	ldr r5, _021ECB28 ; =0x00000329
	add r4, r0, #0
	ldrb r1, [r4, r5]
	cmp r1, #2
	bne _021ECB26
	add r1, r5, #0
	sub r1, #0x85
	ldr r1, [r4, r1]
	cmp r1, #0
	beq _021ECB26
	add r1, r5, #0
	sub r1, #0x91
	ldr r1, [r4, r1]
	add r2, r1, #1
	add r1, r5, #0
	sub r1, #0x91
	str r2, [r4, r1]
	cmp r2, #4
	ble _021ECB26
	add r1, r5, #0
	mov r7, #0
	sub r1, #0x91
	str r7, [r4, r1]
	add r1, r5, #0
	sub r1, #0x95
	ldr r1, [r4, r1]
	add r6, r1, #1
	add r1, r5, #0
	sub r1, #0x95
	str r6, [r4, r1]
	add r1, r5, #0
	sub r1, #0x8d
	ldr r2, [r4, r1]
	ldr r1, _021ECB2C ; =0x021F361C
	lsl r3, r2, #2
	ldrsh r1, [r1, r3]
	cmp r6, r1
	blt _021ECB0C
	add r1, r5, #0
	sub r1, #0x95
	str r7, [r4, r1]
	add r1, r5, #0
	sub r1, #0x89
	ldr r1, [r4, r1]
	sub r3, r1, #1
	add r1, r5, #0
	sub r1, #0x89
	str r3, [r4, r1]
	cmp r3, #0
	bgt _021ECB0C
	add r1, r2, #0
	bl ovy168_21ecb4c
	add r1, r0, #0
	add r0, r4, #0
	bl ovy168_21ecb38
	add r1, r5, #0
	sub r1, #0x8d
	ldr r1, [r4, r1]
	add r0, r4, #0
	lsl r2, r1, #2
	ldr r1, _021ECB30 ; =0x021F361E
	ldrsh r1, [r1, r2]
	bl ovy168_21ecb84
	add r0, r0, #1
	sub r5, #0x89
	str r0, [r4, r5]
_021ECB0C:
	mov r1, #0xa7
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	sub r1, #8
	lsl r3, r2, #2
	ldr r2, _021ECB34 ; =0x021F41B0
	ldr r1, [r4, r1]
	ldr r2, [r2, r3]
	lsl r1, r1, #1
	ldrsh r1, [r2, r1]
	add r0, r4, #0
	bl ovy168_21eca44
_021ECB26:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021ECB28: .word 0x00000329
_021ECB2C: .word 0x021F361C
_021ECB30: .word 0x021F361E
_021ECB34: .word 0x021F41B0
	thumb_func_end ovy168_21eca80

	thumb_func_start ovy168_21ecb38
ovy168_21ecb38: ; 0x021ECB38
	mov r2, #0xa7
	lsl r2, r2, #2
	str r1, [r0, r2]
	sub r1, r2, #4
	mov r3, #0
	str r3, [r0, r1]
	sub r2, #8
	str r3, [r0, r2]
	bx lr
	.align 2, 0
	thumb_func_end ovy168_21ecb38

	thumb_func_start ovy168_21ecb4c
ovy168_21ecb4c: ; 0x021ECB4C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0
	add r5, r1, #0
	str r0, [sp]
	mov r4, #0
	mov r7, #3
_021ECB5A:
	add r0, r6, #0
	add r1, r7, #0
	bl ovy168_21ecb84
	cmp r0, r5
	beq _021ECB6C
	mov r1, #1
	str r1, [sp]
	b _021ECB72
_021ECB6C:
	add r4, r4, #1
	cmp r4, #0xa
	blt _021ECB5A
_021ECB72:
	ldr r1, [sp]
	cmp r1, #0
	bne _021ECB80
	add r0, r5, #1
	cmp r0, #2
	ble _021ECB80
	mov r0, #0
_021ECB80:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy168_21ecb4c

	thumb_func_start ovy168_21ecb84
ovy168_21ecb84: ; 0x021ECB84
	ldr r3, _021ECB8C ; =sub_02005748
	add r0, r1, #0
	bx r3
	nop
_021ECB8C: .word sub_02005748
	thumb_func_end ovy168_21ecb84

	thumb_func_start ovy168_21ecb90
ovy168_21ecb90: ; 0x021ECB90
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r4, r0, #0
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _021ECBA2
	cmp r0, #1
	b _021ECC58
_021ECBA2:
	ldr r6, [r5]
	ldr r4, _021ECC88 ; =0x0000016F
	add r1, r6, #0
	add r0, r4, #0
	bl ovy168_21eb7c0
	mov r7, #0
	add r1, r0, #0
	str r7, [sp]
	mov r0, #0xb1
	str r7, [sp, #4]
	lsl r0, r0, #2
	ldrh r0, [r6, r0]
	mov r2, #4
	mov r3, #0
	str r0, [sp, #8]
	ldr r0, [r5]
	ldr r0, [r0, #0x48]
	bl sub_0204AF50
	ldr r6, [r5]
	add r0, r4, #0
	add r0, #8
	add r1, r6, #0
	bl ovy168_21eb7c0
	add r1, r0, #0
	str r7, [sp]
	mov r0, #0xb1
	str r7, [sp, #4]
	lsl r0, r0, #2
	ldrh r0, [r6, r0]
	mov r2, #5
	mov r3, #0
	str r0, [sp, #8]
	ldr r0, [r5]
	ldr r0, [r0, #0x48]
	bl sub_0204AF50
	ldr r0, [r5]
	bl ovy168_21ef6ec
	mov r0, #1
	str r0, [sp]
	str r7, [sp, #4]
	mov r6, #2
	str r6, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r5]
	mov r1, #5
	mov r2, #0
	mov r3, #0
	bl ovy168_21ed44c
	mov r0, #0x98
	str r0, [sp]
	mov r1, #3
	ldr r0, [r5]
	ldr r3, _021ECC8C ; =0xFFFFFC00
	lsl r1, r1, #0xc
	lsl r2, r6, #0xb
	bl ovy168_21ecea8
	mov r0, #8
	str r0, [sp]
	add r4, #0x51
	ldr r0, [r5]
	mov r1, #0
	add r2, r4, #0
	mov r3, #8
	bl ovy168_21ecfa8
	ldr r1, [r5]
	mov r0, #0xc
	str r0, [sp]
	ldr r0, _021ECC90 ; =0x00000842
	str r7, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r1]
	mov r2, #3
	str r0, [sp, #0xc]
	ldr r0, [r1, #0x64]
	mov r1, #2
	mov r3, #1
	bl sub_02026FE4
	ldr r0, [r5, #4]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_021ECC58:
	ldr r0, [r5]
	ldr r0, [r0, #0x68]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1d
	bne _021ECC82
	mov r0, #4
	mov r1, #1
	bl sub_02044C98
	mov r0, #5
	mov r1, #1
	bl sub_02044C98
	mov r0, #7
	mov r1, #0
	bl sub_02044C98
	ldr r0, [r5]
	add r1, r4, #0
	bl ovy168_21ef3f0
_021ECC82:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021ECC88: .word 0x0000016F
_021ECC8C: .word 0xFFFFFC00
_021ECC90: .word 0x00000842
	thumb_func_end ovy168_21ecb90

	thumb_func_start ovy168_21ecc94
ovy168_21ecc94: ; 0x021ECC94
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _021ECCAA
	cmp r0, #1
	beq _021ECD5E
	cmp r0, #2
	b _021ECD7A
_021ECCAA:
	bl ovy168_21e0298
	cmp r0, #1
	bne _021ECCCC
	ldr r6, [r5]
	ldr r4, _021ECDC0 ; =0x0000023B
	add r1, r6, #0
	add r0, r4, #0
	bl ovy168_21eb7c0
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	add r4, #0x89
	add r1, r0, #0
	ldrh r0, [r6, r4]
	b _021ECCE6
_021ECCCC:
	ldr r4, [r5]
	mov r0, #0x17
	lsl r0, r0, #4
	add r1, r4, #0
	bl ovy168_21eb7c0
	mov r3, #0
	add r1, r0, #0
	str r3, [sp]
	mov r0, #0xb1
	str r3, [sp, #4]
	lsl r0, r0, #2
	ldrh r0, [r4, r0]
_021ECCE6:
	str r0, [sp, #8]
	ldr r0, [r5]
	mov r2, #4
	ldr r0, [r0, #0x48]
	bl sub_0204AF50
	mov r0, #0xab
	ldr r1, [r5]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0204826C
	ldr r0, [r5]
	bl ovy168_21ef5cc
	mov r0, #6
	bl sub_02044F90
	ldr r0, [r5]
	ldr r2, _021ECDC4 ; =0x021F3744
	ldr r1, [r0, #0x68]
	mov r3, #8
	lsl r1, r1, #0xb
	lsr r1, r1, #0x1e
	lsl r4, r1, #3
	ldr r1, _021ECDC8 ; =0x021F3740
	ldr r2, [r2, r4]
	ldr r1, [r1, r4]
	str r3, [sp]
	bl ovy168_21ecfa8
	ldr r0, [r5]
	mov r1, #0
	mov r2, #0
	mov r4, #0
	bl ovy168_21ed090
	ldr r0, [r5]
	mov r1, #0
	bl ovy168_21ed324
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	mov r1, #2
	str r1, [sp, #8]
	str r4, [sp, #0xc]
	ldr r0, [r5]
	sub r1, r1, #3
	mov r2, #0
	mov r3, #0
	bl ovy168_21ed44c
	mov r0, #4
	str r0, [r5, #0x18]
	ldr r0, [r5, #4]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r5, #4]
	pop {r4, r5, r6, pc}
_021ECD5E:
	ldr r0, [r5, #0x18]
	sub r0, r0, #1
	str r0, [r5, #0x18]
	bne _021ECDBA
	ldr r0, [r5]
	mov r1, #0
	mov r2, #0
	bl ovy168_21ed184
	ldr r0, [r5, #4]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r5, #4]
	pop {r4, r5, r6, pc}
_021ECD7A:
	ldr r1, [r5]
	ldr r0, [r1, #0x68]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1d
	bne _021ECDBA
	mov r4, #0xab
	lsl r4, r4, #2
	ldr r0, [r1, r4]
	bl BmpWin_FlushChar
	ldr r0, [r5]
	sub r4, #0xb4
	ldr r0, [r0, r4]
	mov r1, #1
	bl sub_0204BFD4
	mov r0, #2
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r2, #5
	ldr r0, [r5]
	mov r1, #5
	add r2, #0xfb
	mov r3, #0xc0
	bl ovy168_21ed44c
	ldr r0, [r5]
	add r1, r6, #0
	bl ovy168_21ef3f0
_021ECDBA:
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_021ECDC0: .word 0x0000023B
_021ECDC4: .word 0x021F3744
_021ECDC8: .word 0x021F3740
	thumb_func_end ovy168_21ecc94

	thumb_func_start ovy168_21ecdcc
ovy168_21ecdcc: ; 0x021ECDCC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _021ECDE2
	cmp r0, #1
	beq _021ECDF2
	cmp r0, #2
	b _021ECE46
_021ECDE2:
	ldr r0, [r5]
	bl ovy168_21ee240
	ldr r0, [r5, #4]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r5, #4]
	pop {r4, r5, r6, pc}
_021ECDF2:
	ldr r0, [r5]
	bl ovy168_21edf68
	mov r0, #0xab
	ldr r1, [r5]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0204826C
	mov r0, #6
	bl sub_02044F90
	ldr r0, [r5]
	ldr r2, _021ECE8C ; =0x021F3744
	ldr r1, [r0, #0x68]
	mov r3, #8
	lsl r1, r1, #0xb
	lsr r1, r1, #0x1e
	lsl r4, r1, #3
	ldr r1, _021ECE90 ; =0x021F3740
	ldr r2, [r2, r4]
	ldr r1, [r1, r4]
	str r3, [sp]
	bl ovy168_21ecfa8
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #2
	mov r2, #0
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r5]
	sub r1, r2, #1
	mov r3, #0
	bl ovy168_21ed44c
	ldr r0, [r5, #4]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r5, #4]
	pop {r4, r5, r6, pc}
_021ECE46:
	ldr r1, [r5]
	ldr r0, [r1, #0x68]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1d
	bne _021ECE86
	mov r4, #0xab
	lsl r4, r4, #2
	ldr r0, [r1, r4]
	bl BmpWin_FlushChar
	ldr r0, [r5]
	sub r4, #0xb4
	ldr r0, [r0, r4]
	mov r1, #1
	bl sub_0204BFD4
	mov r0, #2
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r2, #5
	ldr r0, [r5]
	mov r1, #5
	add r2, #0xfb
	mov r3, #0xc0
	bl ovy168_21ed44c
	ldr r0, [r5]
	add r1, r6, #0
	bl ovy168_21ef3f0
_021ECE86:
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_021ECE8C: .word 0x021F3744
_021ECE90: .word 0x021F3740
	thumb_func_end ovy168_21ecdcc

	thumb_func_start ovy168_21ece94
ovy168_21ece94: ; 0x021ECE94
	push {r3, lr}
	bl sub_0203A6D0
	ldr r2, [r0]
	mov r0, #1
	ldr r1, [r2, #0x68]
	bic r1, r0
	str r1, [r2, #0x68]
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy168_21ece94

	thumb_func_start ovy168_21ecea8
ovy168_21ecea8: ; 0x021ECEA8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _021ECF0C ; =0x00000EEB
	add r7, r3, #0
	str r0, [sp]
	mov r0, #0xb1
	lsl r0, r0, #2
	add r4, r1, #0
	ldrh r1, [r5, r0]
	ldr r0, _021ECF10 ; =0x00007FFF
	ldr r3, _021ECF14 ; =0x021F41C8
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	add r6, r2, #0
	lsr r0, r0, #0x10
	mov r1, #0x14
	mov r2, #0
	bl GFL_HeapAllocate
	add r1, r0, #0
	str r5, [r1]
	str r4, [r1, #4]
	str r6, [r1, #8]
	ldr r0, [sp, #0x18]
	str r7, [r1, #0xc]
	str r0, [r1, #0x10]
	ldr r0, _021ECF18 ; =ovy168_21ecf20
	mov r2, #0
	bl GFL_VBlankTCBAdd
	add r1, r0, #0
	ldr r2, _021ECF1C ; =ovy168_21ecf88
	add r0, r5, #0
	bl ovy168_21ef3c0
	ldr r2, [r5, #0x68]
	mov r1, #0xe
	add r0, r2, #0
	bic r0, r1
	lsl r1, r2, #0x1c
	lsr r1, r1, #0x1d
	add r1, r1, #1
	lsl r1, r1, #0x1d
	lsr r1, r1, #0x1c
	orr r0, r1
	str r0, [r5, #0x68]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021ECF0C: .word 0x00000EEB
_021ECF10: .word 0x00007FFF
_021ECF14: .word 0x021F41C8
_021ECF18: .word ovy168_21ecf20
_021ECF1C: .word ovy168_21ecf88
	thumb_func_end ovy168_21ecea8

	thumb_func_start ovy168_21ecf20
ovy168_21ecf20: ; 0x021ECF20
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r1, #0
	add r5, r0, #0
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	add r1, r1, r0
	str r1, [r4, #4]
	cmp r0, #0
	ble _021ECF3A
	ldr r0, [r4, #0x10]
	sub r0, r0, #2
	b _021ECF40
_021ECF3A:
	bge _021ECF42
	ldr r0, [r4, #0x10]
	add r0, r0, #2
_021ECF40:
	str r0, [r4, #0x10]
_021ECF42:
	ldr r1, [r4, #4]
	add r7, sp, #8
	add r0, r7, #0
	add r2, r1, #0
	bl MTX_Scale22_
	mov r6, #1
	lsl r6, r6, #8
	str r6, [sp]
	str r6, [sp, #4]
	mov r0, #7
	mov r1, #0
	mov r2, #0x80
	add r3, r7, #0
	bl sub_02044E88
	str r6, [sp]
	str r6, [sp, #4]
	ldr r2, [r4, #0x10]
	mov r0, #7
	mov r1, #3
	add r3, r7, #0
	bl sub_02044E88
	ldr r1, [r4, #4]
	ldr r0, [r4, #8]
	cmp r1, r0
	bne _021ECF82
	ldr r0, [r4]
	add r1, r5, #0
	bl ovy168_21ef3f0
_021ECF82:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy168_21ecf20

	thumb_func_start ovy168_21ecf88
ovy168_21ecf88: ; 0x021ECF88
	push {r3, lr}
	bl sub_0203A6D0
	ldr r1, [r0]
	mov r2, #0xe
	ldr r3, [r1, #0x68]
	add r0, r3, #0
	bic r0, r2
	lsl r2, r3, #0x1c
	lsr r2, r2, #0x1d
	sub r2, r2, #1
	lsl r2, r2, #0x1d
	lsr r2, r2, #0x1c
	orr r0, r2
	str r0, [r1, #0x68]
	pop {r3, pc}
	thumb_func_end ovy168_21ecf88

	thumb_func_start ovy168_21ecfa8
ovy168_21ecfa8: ; 0x021ECFA8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _021ED010 ; =0x00000F29
	add r7, r3, #0
	str r0, [sp]
	mov r0, #0xb1
	lsl r0, r0, #2
	add r4, r1, #0
	ldrh r1, [r5, r0]
	ldr r0, _021ED014 ; =0x00007FFF
	ldr r3, _021ED018 ; =0x021F41C8
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	add r6, r2, #0
	lsr r0, r0, #0x10
	mov r1, #0x18
	mov r2, #0
	bl GFL_HeapAllocate
	add r1, r0, #0
	str r5, [r1]
	mov r0, #0
	str r0, [r1, #4]
	str r4, [r1, #8]
	str r6, [r1, #0xc]
	ldr r0, [sp, #0x18]
	str r7, [r1, #0x10]
	str r0, [r1, #0x14]
	ldr r0, _021ED01C ; =ovy168_21ed024
	mov r2, #0
	bl GFL_VBlankTCBAdd
	add r1, r0, #0
	ldr r2, _021ED020 ; =ovy168_21ed070
	add r0, r5, #0
	bl ovy168_21ef3c0
	ldr r2, [r5, #0x68]
	mov r1, #0xe
	add r0, r2, #0
	bic r0, r1
	lsl r1, r2, #0x1c
	lsr r1, r1, #0x1d
	add r1, r1, #1
	lsl r1, r1, #0x1d
	lsr r1, r1, #0x1c
	orr r0, r1
	str r0, [r5, #0x68]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021ED010: .word 0x00000F29
_021ED014: .word 0x00007FFF
_021ED018: .word 0x021F41C8
_021ED01C: .word ovy168_21ed024
_021ED020: .word ovy168_21ed070
	thumb_func_end ovy168_21ecfa8

	thumb_func_start ovy168_21ed024
ovy168_21ed024: ; 0x021ED024
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _021ED04C
	ldr r2, [r4, #8]
	mov r0, #4
	mov r1, #0
	bl sub_02044CFC
	ldr r2, [r4, #0xc]
	mov r0, #4
	mov r1, #3
	bl sub_02044CFC
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
_021ED04C:
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x10]
	add r2, r1, r0
	mov r0, #4
	mov r1, #3
	str r2, [r4, #0xc]
	bl sub_02044CFC
	ldr r0, [r4, #0x14]
	sub r0, r0, #1
	str r0, [r4, #0x14]
	bne _021ED06C
	ldr r0, [r4]
	add r1, r5, #0
	bl ovy168_21ef3f0
_021ED06C:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy168_21ed024

	thumb_func_start ovy168_21ed070
ovy168_21ed070: ; 0x021ED070
	push {r3, lr}
	bl sub_0203A6D0
	ldr r1, [r0]
	mov r2, #0xe
	ldr r3, [r1, #0x68]
	add r0, r3, #0
	bic r0, r2
	lsl r2, r3, #0x1c
	lsr r2, r2, #0x1d
	sub r2, r2, #1
	lsl r2, r2, #0x1d
	lsr r2, r2, #0x1c
	orr r0, r2
	str r0, [r1, #0x68]
	pop {r3, pc}
	thumb_func_end ovy168_21ed070

	thumb_func_start ovy168_21ed090
ovy168_21ed090: ; 0x021ED090
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, _021ED0F4 ; =0x00000F64
	add r4, r2, #0
	str r0, [sp]
	mov r0, #0xb1
	lsl r0, r0, #2
	ldrh r1, [r5, r0]
	ldr r0, _021ED0F8 ; =0x00007FFF
	ldr r3, _021ED0FC ; =0x021F41C8
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0x10
	mov r2, #0
	mov r6, #0
	bl GFL_HeapAllocate
	add r1, r0, #0
	str r5, [r1]
	str r6, [r1, #4]
	str r4, [r1, #8]
	mov r0, #2
	str r0, [r1, #0xc]
	ldr r0, _021ED100 ; =ovy168_21ed108
	mov r2, #0
	bl GFL_VBlankTCBAdd
	add r1, r0, #0
	ldr r2, _021ED104 ; =ovy168_21ed164
	add r0, r5, #0
	bl ovy168_21ef3c0
	ldr r2, [r5, #0x68]
	mov r1, #0xe
	add r0, r2, #0
	bic r0, r1
	lsl r1, r2, #0x1c
	lsr r1, r1, #0x1d
	add r1, r1, #1
	lsl r1, r1, #0x1d
	lsr r1, r1, #0x1c
	orr r0, r1
	str r0, [r5, #0x68]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021ED0F4: .word 0x00000F64
_021ED0F8: .word 0x00007FFF
_021ED0FC: .word 0x021F41C8
_021ED100: .word ovy168_21ed108
_021ED104: .word ovy168_21ed164
	thumb_func_end ovy168_21ed090

	thumb_func_start ovy168_21ed108
ovy168_21ed108: ; 0x021ED108
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	sub r0, r0, #1
	str r0, [r4, #0xc]
	bne _021ED158
	ldr r2, [r4, #8]
	mov r0, #2
	lsl r6, r2, #4
	ldr r3, _021ED15C ; =0x021F36E0
	ldr r2, [r4, #4]
	add r3, r3, r6
	lsl r2, r2, #3
	str r0, [r4, #0xc]
	ldr r2, [r2, r3]
	mov r0, #5
	mov r1, #0
	bl sub_02044CFC
	ldr r3, [r4, #8]
	ldr r2, [r4, #4]
	lsl r6, r3, #4
	add r0, r2, #1
	ldr r3, _021ED160 ; =0x021F36E4
	str r0, [r4, #4]
	lsl r2, r2, #3
	add r3, r3, r6
	ldr r2, [r2, r3]
	mov r0, #5
	mov r1, #3
	bl sub_02044CFC
	ldr r0, [r4, #4]
	cmp r0, #2
	blt _021ED158
	ldr r0, [r4]
	add r1, r5, #0
	bl ovy168_21ef3f0
_021ED158:
	pop {r4, r5, r6, pc}
	nop
_021ED15C: .word 0x021F36E0
_021ED160: .word 0x021F36E4
	thumb_func_end ovy168_21ed108

	thumb_func_start ovy168_21ed164
ovy168_21ed164: ; 0x021ED164
	push {r3, lr}
	bl sub_0203A6D0
	ldr r1, [r0]
	mov r2, #0xe
	ldr r3, [r1, #0x68]
	add r0, r3, #0
	bic r0, r2
	lsl r2, r3, #0x1c
	lsr r2, r2, #0x1d
	sub r2, r2, #1
	lsl r2, r2, #0x1d
	lsr r2, r2, #0x1c
	orr r0, r2
	str r0, [r1, #0x68]
	pop {r3, pc}
	thumb_func_end ovy168_21ed164

	thumb_func_start ovy168_21ed184
ovy168_21ed184: ; 0x021ED184
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	ldr r0, _021ED29C ; =0x00000FA7
	add r6, r2, #0
	str r0, [sp]
	mov r0, #0xb1
	lsl r0, r0, #2
	add r4, r1, #0
	ldrh r1, [r5, r0]
	ldr r0, _021ED2A0 ; =0x00007FFF
	mov r2, #0
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	str r2, [sp, #0x10]
	ldr r3, _021ED2A4 ; =0x021F41C8
	lsr r0, r0, #0x10
	mov r1, #0x20
	mov r2, #0
	bl GFL_HeapAllocate
	ldr r1, _021ED2A8 ; =0x021F37B0
	add r7, r0, #0
	ldrh r2, [r1]
	add r0, sp, #0x20
	strh r2, [r0]
	ldrh r2, [r1, #2]
	strh r2, [r0, #2]
	ldrh r2, [r1, #4]
	strh r2, [r0, #4]
	ldrh r1, [r1, #6]
	mov r2, #0xb1
	lsl r2, r2, #2
	strh r1, [r0, #6]
	str r5, [r7]
	ldrh r2, [r5, r2]
	mov r0, #6
	mov r1, #0
	bl sub_0204BF1C
	str r0, [r7, #4]
	ldr r0, _021ED2AC ; =0x021F3B28
	lsl r1, r4, #5
	add r0, r0, r1
	lsl r1, r6, #2
	str r0, [sp, #0xc]
	add r0, r0, r1
	ldr r0, [r0, #0x18]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x14]
	mov r0, #0x41
	lsl r0, r0, #2
	add r0, r0, #4
	str r0, [sp, #0x1c]
	mov r0, #0x41
	lsl r0, r0, #2
	str r0, [sp, #0x18]
	add r0, #8
	str r0, [sp, #0x18]
_021ED200:
	ldr r0, [sp, #0x10]
	lsl r6, r0, #2
	ldr r0, [sp, #0xc]
	ldrsh r1, [r0, r6]
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	bne _021ED218
	add r1, r7, r6
	mov r0, #0
	str r0, [r1, #8]
	b _021ED262
_021ED218:
	add r0, sp, #0x20
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0xb1
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	mov r1, #0x41
	ldr r2, [sp, #0x1c]
	str r0, [sp, #8]
	ldr r3, [sp, #0x18]
	lsl r1, r1, #2
	ldr r0, [r7, #4]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	add r4, r7, r6
	bl Oam_CreateSprite
	ldr r1, [sp, #0xc]
	str r0, [r4, #8]
	add r1, r1, r6
	mov r2, #1
	bl Oam_SetSpritePosData
	ldr r0, [r4, #8]
	mov r1, #2
	bl sub_0204C244
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_0204C520
	ldr r0, [r4, #8]
	ldr r1, [sp, #0x14]
	bl sub_0204C488
_021ED262:
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #6
	blt _021ED200
	ldr r0, [r5]
	ldr r1, _021ED2B0 ; =ovy168_21ed2b8
	add r2, r7, #0
	mov r3, #0
	bl sub_0203A614
	add r1, r0, #0
	ldr r2, _021ED2B4 ; =ovy168_21ed2e4
	add r0, r5, #0
	bl ovy168_21ef3c0
	ldr r2, [r5, #0x68]
	mov r1, #0xe
	add r0, r2, #0
	bic r0, r1
	lsl r1, r2, #0x1c
	lsr r1, r1, #0x1d
	add r1, r1, #1
	lsl r1, r1, #0x1d
	lsr r1, r1, #0x1c
	orr r0, r1
	str r0, [r5, #0x68]
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021ED29C: .word 0x00000FA7
_021ED2A0: .word 0x00007FFF
_021ED2A4: .word 0x021F41C8
_021ED2A8: .word 0x021F37B0
_021ED2AC: .word 0x021F3B28
_021ED2B0: .word ovy168_21ed2b8
_021ED2B4: .word ovy168_21ed2e4
	thumb_func_end ovy168_21ed184

	thumb_func_start ovy168_21ed2b8
ovy168_21ed2b8: ; 0x021ED2B8
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r4, #0
_021ED2C0:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _021ED2D2
	bl sub_0204C560
	cmp r0, #0
	bne _021ED2E0
_021ED2D2:
	add r4, r4, #1
	cmp r4, #6
	blt _021ED2C0
	ldr r0, [r5]
	add r1, r6, #0
	bl ovy168_21ef3f0
_021ED2E0:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy168_21ed2b8

	thumb_func_start ovy168_21ed2e4
ovy168_21ed2e4: ; 0x021ED2E4
	push {r3, r4, r5, lr}
	bl sub_0203A6D0
	add r4, r0, #0
	mov r5, #0
_021ED2EE:
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _021ED2FC
	bl sub_0204C108
_021ED2FC:
	add r5, r5, #1
	cmp r5, #6
	blt _021ED2EE
	ldr r0, [r4, #4]
	bl sub_0204BF98
	ldr r1, [r4]
	mov r2, #0xe
	ldr r3, [r1, #0x68]
	add r0, r3, #0
	bic r0, r2
	lsl r2, r3, #0x1c
	lsr r2, r2, #0x1d
	sub r2, r2, #1
	lsl r2, r2, #0x1d
	lsr r2, r2, #0x1c
	orr r0, r2
	str r0, [r1, #0x68]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy168_21ed2e4

	thumb_func_start ovy168_21ed324
ovy168_21ed324: ; 0x021ED324
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _021ED37C ; =0x0000101D
	add r5, r1, #0
	str r0, [sp]
	mov r0, #0xb1
	lsl r0, r0, #2
	ldrh r1, [r4, r0]
	ldr r0, _021ED380 ; =0x00007FFF
	ldr r3, _021ED384 ; =0x021F41C8
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #8
	mov r2, #0
	bl GFL_HeapAllocate
	add r2, r0, #0
	str r4, [r2]
	str r5, [r2, #4]
	ldr r0, [r4]
	ldr r1, _021ED388 ; =ovy168_21ed390
	mov r3, #0
	bl sub_0203A614
	add r1, r0, #0
	ldr r2, _021ED38C ; =ovy168_21ed42c
	add r0, r4, #0
	bl ovy168_21ef3c0
	ldr r2, [r4, #0x68]
	mov r1, #0xe
	add r0, r2, #0
	bic r0, r1
	lsl r1, r2, #0x1c
	lsr r1, r1, #0x1d
	add r1, r1, #1
	lsl r1, r1, #0x1d
	lsr r1, r1, #0x1c
	orr r0, r1
	str r0, [r4, #0x68]
	pop {r3, r4, r5, pc}
	.align 2, 0
_021ED37C: .word 0x0000101D
_021ED380: .word 0x00007FFF
_021ED384: .word 0x021F41C8
_021ED388: .word ovy168_21ed390
_021ED38C: .word ovy168_21ed42c
	thumb_func_end ovy168_21ed324

	thumb_func_start ovy168_21ed390
ovy168_21ed390: ; 0x021ED390
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #0
	str r1, [sp, #4]
	str r0, [sp, #0xc]
_021ED3A0:
	ldr r0, [sp, #0xc]
	ldr r2, _021ED428 ; =0x021F3628
	lsl r3, r0, #3
	ldr r0, [sp, #4]
	ldr r0, [r0, #4]
	lsl r1, r0, #2
	add r0, r2, r3
	ldr r6, [r1, r0]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _021ED3BE
	ldr r0, [sp, #4]
	ldr r1, [r0]
	mov r0, #0x47
	b _021ED3CC
_021ED3BE:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	ldr r0, [r1, #0x68]
	lsl r0, r0, #0x11
	lsr r0, r0, #0x1f
	beq _021ED414
	mov r0, #0x53
_021ED3CC:
	lsl r0, r0, #2
	add r4, r1, r0
	mov r5, #0
_021ED3D2:
	lsl r7, r5, #3
	ldr r0, [r4, r7]
	add r1, sp, #0x10
	mov r2, #1
	bl Oam_GetSpritePosData
	add r1, sp, #0x10
	mov r0, #2
	ldrsh r0, [r1, r0]
	cmp r0, r6
	ble _021ED3EC
	sub r1, r0, #4
	b _021ED3F2
_021ED3EC:
	cmp r0, r6
	bge _021ED3FA
	add r1, r0, #4
_021ED3F2:
	add r0, sp, #0x10
	strh r1, [r0, #2]
	mov r0, #1
	str r0, [sp, #8]
_021ED3FA:
	ldr r0, [r4, r7]
	add r1, sp, #0x10
	mov r2, #1
	bl Oam_SetSpritePosData
	add r5, r5, #1
	cmp r5, #6
	blt _021ED3D2
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #2
	blt _021ED3A0
_021ED414:
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _021ED424
	ldr r0, [sp, #4]
	ldr r1, [sp]
	ldr r0, [r0]
	bl ovy168_21ef3f0
_021ED424:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021ED428: .word 0x021F3628
	thumb_func_end ovy168_21ed390

	thumb_func_start ovy168_21ed42c
ovy168_21ed42c: ; 0x021ED42C
	push {r3, lr}
	bl sub_0203A6D0
	ldr r1, [r0]
	mov r2, #0xe
	ldr r3, [r1, #0x68]
	add r0, r3, #0
	bic r0, r2
	lsl r2, r3, #0x1c
	lsr r2, r2, #0x1d
	sub r2, r2, #1
	lsl r2, r2, #0x1d
	lsr r2, r2, #0x1c
	orr r0, r2
	str r0, [r1, #0x68]
	pop {r3, pc}
	thumb_func_end ovy168_21ed42c

	thumb_func_start ovy168_21ed44c
ovy168_21ed44c: ; 0x021ED44C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _021ED4A4 ; =0x00001071
	add r7, r3, #0
	str r0, [sp]
	mov r0, #0xb1
	lsl r0, r0, #2
	add r4, r1, #0
	ldrh r1, [r5, r0]
	ldr r0, _021ED4A8 ; =0x00007FFF
	ldr r3, _021ED4AC ; =0x021F41C8
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	add r6, r2, #0
	lsr r0, r0, #0x10
	mov r1, #0x20
	mov r2, #0
	bl GFL_HeapAllocate
	add r1, r0, #0
	str r5, [r1]
	str r4, [r1, #4]
	str r6, [r1, #8]
	ldr r0, [sp, #0x18]
	str r7, [r1, #0xc]
	str r0, [r1, #0x10]
	ldr r0, [sp, #0x1c]
	mov r2, #0
	str r0, [r1, #0x14]
	ldr r0, [sp, #0x20]
	str r0, [r1, #0x18]
	ldr r0, [sp, #0x24]
	str r0, [r1, #0x1c]
	ldr r0, _021ED4B0 ; =ovy168_21ed4b4
	bl GFL_VBlankTCBAdd
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #0
	bl ovy168_21ef3c0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021ED4A4: .word 0x00001071
_021ED4A8: .word 0x00007FFF
_021ED4AC: .word 0x021F41C8
_021ED4B0: .word ovy168_21ed4b4
	thumb_func_end ovy168_21ed44c

	thumb_func_start ovy168_21ed4b4
ovy168_21ed4b4: ; 0x021ED4B4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r0, #0
	ldr r1, [r4, #4]
	mvn r0, r0
	cmp r1, r0
	beq _021ED4DE
	lsl r0, r1, #0x18
	ldr r2, [r4, #8]
	lsr r0, r0, #0x18
	mov r1, #0
	bl sub_02044CFC
	ldr r0, [r4, #4]
	ldr r2, [r4, #0xc]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r1, #3
	bl sub_02044CFC
_021ED4DE:
	ldr r1, [r4, #0x10]
	cmp r1, #2
	beq _021ED4EE
	lsl r1, r1, #0x18
	mov r0, #4
	lsr r1, r1, #0x18
	bl sub_02044C98
_021ED4EE:
	ldr r1, [r4, #0x14]
	cmp r1, #2
	beq _021ED4FE
	lsl r1, r1, #0x18
	mov r0, #5
	lsr r1, r1, #0x18
	bl sub_02044C98
_021ED4FE:
	ldr r1, [r4, #0x18]
	cmp r1, #2
	beq _021ED50E
	lsl r1, r1, #0x18
	mov r0, #6
	lsr r1, r1, #0x18
	bl sub_02044C98
_021ED50E:
	ldr r1, [r4, #0x1c]
	cmp r1, #2
	beq _021ED51E
	lsl r1, r1, #0x18
	mov r0, #7
	lsr r1, r1, #0x18
	bl sub_02044C98
_021ED51E:
	ldr r0, [r4]
	add r1, r5, #0
	bl ovy168_21ef3f0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy168_21ed4b4

	thumb_func_start ovy168_21ed528
ovy168_21ed528: ; 0x021ED528
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	ldr r0, [r0, #0x64]
	bl sub_02027780
	cmp r0, #0
	bne _021ED55A
	bl sub_0204E0E0
	cmp r0, #0
	bne _021ED55A
	ldr r0, [r4]
	ldr r1, [r0, #0x68]
	lsl r1, r1, #0xf
	lsr r1, r1, #0x1e
	cmp r1, #1
	bne _021ED552
	bl ovy168_21ea6b8
_021ED552:
	ldr r0, [r4]
	add r1, r5, #0
	bl ovy168_21ef3f0
_021ED55A:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy168_21ed528

	thumb_func_start ovy168_21ed55c
ovy168_21ed55c: ; 0x021ED55C
	push {r3, lr}
	bl sub_0203A6D0
	ldr r2, [r0]
	ldr r0, _021ED570 ; =0xFFFE7FFF
	ldr r1, [r2, #0x68]
	and r0, r1
	str r0, [r2, #0x68]
	pop {r3, pc}
	nop
_021ED570: .word 0xFFFE7FFF
	thumb_func_end ovy168_21ed55c

	thumb_func_start ovy168_21ed574
ovy168_21ed574: ; 0x021ED574
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	mov r6, #0x21
	ldr r0, [r5]
	lsl r6, r6, #4
	ldr r0, [r0, r6]
	add r1, sp, #0
	mov r2, #1
	bl Oam_GetSpritePosData
	add r4, sp, #0
	mov r0, #0
	ldrsh r0, [r4, r0]
	add r1, sp, #0
	mov r2, #1
	sub r0, #8
	strh r0, [r4]
	ldr r0, [r5]
	ldr r0, [r0, r6]
	bl Oam_SetSpritePosData
	ldr r1, [r5]
	add r0, r6, #4
	ldr r0, [r1, r0]
	add r1, sp, #0
	mov r2, #1
	bl Oam_GetSpritePosData
	mov r0, #0
	ldrsh r0, [r4, r0]
	mov r2, #1
	sub r0, #8
	strh r0, [r4]
	ldr r1, [r5]
	add r0, r6, #4
	ldr r0, [r1, r0]
	add r1, sp, #0
	bl Oam_SetSpritePosData
	mov r0, #0
	ldrsh r0, [r4, r0]
	cmp r0, #0xe0
	bne _021ED5D4
	ldr r0, [r5]
	add r1, r7, #0
	bl ovy168_21ef3f0
_021ED5D4:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy168_21ed574

	thumb_func_start ovy168_21ed5d8
ovy168_21ed5d8: ; 0x021ED5D8
	push {r3, lr}
	bl sub_0203A6D0
	ldr r1, [r0]
	mov r2, #0xe
	ldr r3, [r1, #0x68]
	add r0, r3, #0
	bic r0, r2
	lsl r2, r3, #0x1c
	lsr r2, r2, #0x1d
	sub r2, r2, #1
	lsl r2, r2, #0x1d
	lsr r2, r2, #0x1c
	orr r0, r2
	str r0, [r1, #0x68]
	pop {r3, pc}
	thumb_func_end ovy168_21ed5d8

	thumb_func_start ovy168_21ed5f8
ovy168_21ed5f8: ; 0x021ED5F8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _021ED678 ; =0x000010E0
	add r4, r1, #0
	str r0, [sp]
	mov r0, #0xb1
	lsl r0, r0, #2
	ldrh r1, [r5, r0]
	ldr r0, _021ED67C ; =0x00007FFF
	ldr r3, _021ED680 ; =0x021F41C8
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0x24
	mov r2, #1
	mov r7, #1
	bl GFL_HeapAllocate
	ldr r1, [r5, #0x68]
	add r2, r0, #0
	lsl r0, r1, #0xb
	sub r6, r4, #5
	lsr r4, r0, #0x1e
	add r3, r1, #0
	ldr r0, _021ED684 ; =0xFFE7FFFF
	lsl r1, r4, #1
	and r3, r0
	ldr r0, _021ED688 ; =0x021F35D6
	add r0, r0, r1
	ldrb r0, [r6, r0]
	add r1, r3, #0
	mov r3, #1
	lsl r0, r0, #0x1e
	lsr r0, r0, #0xb
	orr r1, r0
	mov r0, #1
	bic r1, r0
	add r0, r1, #0
	orr r0, r7
	str r0, [r5, #0x68]
	str r5, [r2]
	ldr r0, [r5]
	ldr r1, _021ED68C ; =ovy168_21ecdcc
	bl sub_0203A614
	add r1, r0, #0
	ldr r2, _021ED690 ; =ovy168_21ece94
	add r0, r5, #0
	bl ovy168_21ef3c0
	mov r0, #2
	bl ovy168_21e04b0
	ldr r0, _021ED694 ; =0x021F3658
	lsl r2, r4, #3
	lsl r1, r6, #2
	add r0, r0, r2
	ldr r0, [r1, r0]
	bl ovy168_21df2c8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021ED678: .word 0x000010E0
_021ED67C: .word 0x00007FFF
_021ED680: .word 0x021F41C8
_021ED684: .word 0xFFE7FFFF
_021ED688: .word 0x021F35D6
_021ED68C: .word ovy168_21ecdcc
_021ED690: .word ovy168_21ece94
_021ED694: .word 0x021F3658
	thumb_func_end ovy168_21ed5f8

	thumb_func_start ovy168_21ed698
ovy168_21ed698: ; 0x021ED698
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy168_21e0050
	cmp r0, #0
	beq _021ED6B4
	ldr r0, [r4, #4]
	bl ovy168_21e0274
	ldr r0, [r4]
	add r1, r5, #0
	bl ovy168_21ef3f0
_021ED6B4:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy168_21ed698

	thumb_func_start ovy168_21ed6b8
ovy168_21ed6b8: ; 0x021ED6B8
	push {r3, r4, r5, lr}
	ldr r2, _021ED724 ; =0x04001000
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r2]
	ldr r0, _021ED728 ; =0xFFFF1FFF
	and r1, r0
	mov r0, #6
	lsl r0, r0, #0xc
	orr r0, r1
	str r0, [r2]
	add r2, #0x48
	ldrh r1, [r2]
	mov r0, #0x3f
	bic r1, r0
	mov r0, #0x1f
	orr r1, r0
	ldr r0, [r4, #4]
	cmp r0, #1
	ble _021ED6E4
	mov r0, #0x20
	orr r1, r0
_021ED6E4:
	ldr r0, _021ED72C ; =0x04001048
	strh r1, [r0]
	ldrh r2, [r0]
	ldr r1, _021ED730 ; =0xFFFFC0FF
	and r2, r1
	mov r1, #0x1f
	lsl r1, r1, #8
	orr r2, r1
	ldr r1, [r4, #4]
	cmp r1, #3
	bne _021ED6FE
	lsr r0, r0, #0xd
	orr r2, r0
_021ED6FE:
	ldr r0, _021ED72C ; =0x04001048
	mov r1, #0x3f
	strh r2, [r0]
	ldrh r2, [r0, #2]
	bic r2, r1
	mov r1, #0x1f
	orr r1, r2
	strh r1, [r0, #2]
	mov r2, #0x10
	add r0, #8
	mov r1, #0x10
	sub r2, #0x18
	bl G2x_SetBlendBrightness_
	ldr r0, [r4]
	add r1, r5, #0
	bl ovy168_21ef3f0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021ED724: .word 0x04001000
_021ED728: .word 0xFFFF1FFF
_021ED72C: .word 0x04001048
_021ED730: .word 0xFFFFC0FF
	thumb_func_end ovy168_21ed6b8

	thumb_func_start ovy168_21ed734
ovy168_21ed734: ; 0x021ED734
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _021ED778 ; =0x04001000
	add r4, r1, #0
	ldr r2, [r0]
	ldr r1, _021ED77C ; =0xFFFF1FFF
	mov r3, #0x3f
	and r1, r2
	str r1, [r0]
	add r1, r0, #0
	add r1, #0x48
	ldrh r2, [r1]
	bic r2, r3
	strh r2, [r1]
	ldrh r6, [r1]
	ldr r2, _021ED780 ; =0xFFFFC0FF
	and r2, r6
	strh r2, [r1]
	add r1, r0, #0
	add r1, #0x4a
	ldrh r2, [r1]
	add r0, #0x50
	bic r2, r3
	strh r2, [r1]
	mov r1, #0
	mov r2, #0
	bl G2x_SetBlendBrightness_
	ldr r0, [r4]
	add r1, r5, #0
	bl ovy168_21ef3f0
	pop {r4, r5, r6, pc}
	nop
_021ED778: .word 0x04001000
_021ED77C: .word 0xFFFF1FFF
_021ED780: .word 0xFFFFC0FF
	thumb_func_end ovy168_21ed734

	thumb_func_start ovy168_21ed784
ovy168_21ed784: ; 0x021ED784
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, _021ED7C4 ; =0x00001198
	ldr r3, _021ED7C8 ; =0x021F41C8
	str r0, [sp]
	mov r0, #0xb1
	lsl r0, r0, #2
	ldrh r1, [r4, r0]
	ldr r0, _021ED7CC ; =0x00007FFF
	mov r2, #0
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #8
	bl GFL_HeapAllocate
	add r1, r0, #0
	ldr r0, _021ED7D0 ; =ovy168_21ed7d4
	mov r2, #0
	str r4, [r1]
	bl GFL_VBlankTCBAdd
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0
	bl ovy168_21ef3c0
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_021ED7C4: .word 0x00001198
_021ED7C8: .word 0x021F41C8
_021ED7CC: .word 0x00007FFF
_021ED7D0: .word ovy168_21ed7d4
	thumb_func_end ovy168_21ed784

	thumb_func_start ovy168_21ed7d4
ovy168_21ed7d4: ; 0x021ED7D4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, _021ED7F0 ; =0x04001050
	mov r1, #0
	mov r2, #0
	bl G2x_SetBlendBrightness_
	ldr r0, [r4]
	add r1, r5, #0
	bl ovy168_21ef3f0
	pop {r3, r4, r5, pc}
	nop
_021ED7F0: .word 0x04001050
	thumb_func_end ovy168_21ed7d4

	thumb_func_start ovy168_21ed7f4
ovy168_21ed7f4: ; 0x021ED7F4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r2, #0
	mov r2, #0
	add r7, r3, #0
	bl GFL_FontGetBlockWidth
	add r4, r0, #0
	asr r1, r4, #2
	lsr r1, r1, #0x1d
	add r1, r4, r1
	asr r5, r1, #3
	mov r1, #8
	bl FX_ModS32
	cmp r0, #0
	beq _021ED816
	add r5, r5, #1
_021ED816:
	str r4, [r6]
	str r5, [r7]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy168_21ed7f4

	thumb_func_start ovy168_21ed81c
ovy168_21ed81c: ; 0x021ED81C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x11c
	ldr r3, _021EDBB0 ; =0x021F3824
	add r2, sp, #0xfc
	add r4, r0, #0
	add r6, r1, #0
	ldmia r3!, {r0, r1}
	str r2, [sp, #0x28]
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r3, _021EDBB4 ; =0x021F3844
	add r2, sp, #0xdc
	str r2, [sp, #0x2c]
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r1, #0xb1
	lsl r1, r1, #2
	ldrh r1, [r4, r1]
	mov r0, #0x10
	bl GFL_StrBufCreate
	str r0, [sp, #0x20]
	ldr r0, [r4, #0x5c]
	mov r1, #0
	mov r5, #0
	bl sub_0204898C
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x5c]
	mov r1, #1
	bl sub_0204898C
	str r0, [sp, #0x10]
	mov r0, #0xb1
	lsl r0, r0, #2
	ldrh r0, [r4, r0]
	bl GFL_WordSetSystemCreateDefault
	mov r1, #0xb1
	lsl r1, r1, #2
	str r0, [sp, #0xa0]
	ldrh r1, [r4, r1]
	mov r0, #0x10
	bl GFL_StrBufCreate
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x5c]
	mov r1, #2
	bl sub_0204898C
	str r0, [sp, #0x14]
	mov r0, #0xb1
	lsl r0, r0, #2
	sub r0, #0xcc
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0204BFD4
	mov r0, #1
	lsl r0, r0, #8
	str r0, [sp, #0x3c]
	add r0, #0xcf
	str r0, [sp, #0x3c]
	mov r0, #1
	lsl r0, r0, #8
	str r0, [sp, #0x68]
	add r0, #0xf8
	str r0, [sp, #0x68]
	mov r0, #1
	lsl r0, r0, #8
	str r0, [sp, #0x64]
	add r0, #0xe0
	str r0, [sp, #0x64]
	mov r0, #1
	lsl r0, r0, #8
	str r0, [sp, #0x60]
	add r0, #0xf0
	str r0, [sp, #0x60]
	mov r0, #1
	lsl r0, r0, #8
	str r0, [sp, #0x5c]
	add r0, #0xf4
	str r0, [sp, #0x5c]
	mov r0, #1
	lsl r0, r0, #8
	str r0, [sp, #0x58]
	add r0, #0xfc
	str r0, [sp, #0x58]
	mov r0, #1
	lsl r0, r0, #8
	str r0, [sp, #0x54]
	add r0, #0xfc
	str r0, [sp, #0x54]
	mov r0, #0xb1
	lsl r0, r0, #2
	add r0, r4, r0
	str r0, [sp, #0x50]
	ldr r0, _021EDBB8 ; =0x00007FFF
	add r0, r0, #1
	str r0, [sp, #0x4c]
	mov r0, #1
	lsl r0, r0, #8
	str r0, [sp, #0x48]
	add r0, #0xfc
	str r0, [sp, #0x48]
	mov r0, #1
	lsl r0, r0, #8
	str r0, [sp, #0x44]
	add r0, #0xfc
	str r0, [sp, #0x44]
	mov r0, #0xb1
	lsl r0, r0, #2
	str r0, [sp, #0x8c]
	sub r0, #0x1c
	str r0, [sp, #0x8c]
	mov r0, #0xb1
	lsl r0, r0, #2
	str r0, [sp, #0x88]
	sub r0, #0x1c
	str r0, [sp, #0x88]
	mov r0, #0xb1
	lsl r0, r0, #2
	str r0, [sp, #0x84]
	sub r0, #0x14
	str r0, [sp, #0x84]
	mov r0, #0xb1
	lsl r0, r0, #2
	str r0, [sp, #0x80]
	sub r0, #0x1c
	str r0, [sp, #0x80]
	mov r0, #0xb1
	lsl r0, r0, #2
	str r0, [sp, #0x7c]
	sub r0, #0x14
	str r0, [sp, #0x7c]
	mov r0, #0xb1
	lsl r0, r0, #2
	str r0, [sp, #0x78]
	sub r0, #0x1c
	str r0, [sp, #0x78]
	mov r0, #0xb1
	lsl r0, r0, #2
	str r0, [sp, #0x74]
	sub r0, #0x1c
	str r0, [sp, #0x74]
	mov r0, #0xb1
	lsl r0, r0, #2
	str r0, [sp, #0x70]
	sub r0, #0x14
	str r0, [sp, #0x70]
	mov r0, #0xb1
	lsl r0, r0, #2
	str r0, [sp, #0x90]
	add r0, #0x1a
	str r0, [sp, #0x90]
	mov r0, #0xb1
	lsl r0, r0, #2
	str r0, [sp, #0x94]
	add r0, #0x22
	str r0, [sp, #0x94]
	mov r0, #0xb1
	lsl r0, r0, #2
	add r0, r4, r0
	str r0, [sp, #0x9c]
	ldr r0, _021EDBB8 ; =0x00007FFF
	add r0, r0, #1
	str r0, [sp, #0x98]
	b _021EDC0C
_021ED982:
	lsl r0, r5, #1
	ldrh r0, [r6, r0]
	cmp r0, #0
	bne _021ED98C
	b _021EDBCC
_021ED98C:
	mov r1, #0
	bl sub_02021280
	str r0, [sp, #0x30]
	lsl r1, r0, #2
	ldr r0, _021EDBBC ; =0x021F3864
	ldr r3, [sp, #0x5c]
	ldr r0, [r0, r1]
	lsl r1, r5, #2
	str r0, [sp, #0x24]
	ldr r0, _021EDBC0 ; =0x021F35F2
	add r2, r4, r1
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0xb1
	lsl r0, r0, #2
	ldrh r0, [r4, r0]
	ldr r1, [sp, #0x64]
	str r0, [sp, #8]
	ldr r0, [sp, #0x68]
	ldr r1, [r2, r1]
	ldr r2, [sp, #0x60]
	ldr r0, [r4, r0]
	ldr r2, [r4, r2]
	ldr r3, [r4, r3]
	bl Oam_CreateSprite
	lsl r2, r5, #2
	ldr r3, [sp, #0x58]
	add r1, r4, r2
	str r0, [r1, r3]
	ldr r0, [sp, #0x54]
	ldr r0, [r1, r0]
	ldr r1, _021EDBC4 ; =0x021F3638
	add r1, r1, r2
	mov r2, #1
	bl Oam_SetSpritePosData
	ldr r0, [sp, #0x50]
	ldrh r1, [r0]
	ldr r0, _021EDBB8 ; =0x00007FFF
	and r1, r0
	ldr r0, [sp, #0x4c]
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0xc]
	bl sub_0202D7E0
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x30]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0202D7F4
	add r1, r0, #0
	ldr r0, [sp, #0xc]
	mov r2, #0
	str r0, [sp]
	ldr r0, [sp, #0x34]
	add r3, sp, #0xac
	bl sub_0204B2B4
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x30]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0202D7E8
	add r1, r0, #0
	lsl r0, r5, #2
	add r2, r4, r0
	ldr r0, [sp, #0x48]
	ldr r0, [r2, r0]
	mov r2, #1
	bl sub_0204C378
	lsl r0, r5, #2
	add r1, r4, r0
	ldr r0, [sp, #0x44]
	ldr r0, [r1, r0]
	add r1, sp, #0xb8
	bl sub_0204C40C
	ldr r0, [sp, #0xac]
	mov r1, #0x66
	ldr r2, [sp, #0xc0]
	lsl r1, r1, #0x14
	add r1, r1, r2
	mov r2, #1
	ldr r0, [r0, #0x14]
	lsl r2, r2, #8
	blx MIi_CpuCopy16
	ldr r0, [sp, #0x38]
	bl GFL_HeapFree
	add r0, sp, #0xa4
	add r1, sp, #0xa4
	add r0, #2
	add r1, #1
	add r2, sp, #0xa4
	bl sub_02023370
	mov r0, #1
	mov r1, #2
	mov r2, #0
	bl sub_020232E8
	lsl r2, r5, #1
	ldrh r2, [r6, r2]
	ldr r0, [sp, #0xa0]
	mov r1, #0
	bl LoadMoveNameToStrbuf
	ldr r0, [sp, #0xa0]
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x1c]
	bl GFL_WordSetFormatStrbuf
	ldr r1, [sp, #0x8c]
	ldr r0, [sp, #0x20]
	ldr r1, [r4, r1]
	add r2, sp, #0xb4
	add r3, sp, #0xb0
	bl ovy168_21ed7f4
	ldr r0, [sp, #0x88]
	ldr r1, _021EDBC8 ; =0x021F3720
	ldr r0, [r4, r0]
	lsl r7, r5, #3
	str r0, [sp]
	ldr r0, [sp, #0x84]
	ldr r2, [sp, #0xb4]
	ldr r3, [r1, r7]
	lsr r1, r2, #0x1f
	add r1, r2, r1
	ldr r2, _021EDBC8 ; =0x021F3720
	asr r1, r1, #1
	sub r1, r3, r1
	add r2, r2, r7
	ldr r2, [r2, #4]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r4, r0]
	ldr r3, [sp, #0x20]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_02021CFC
	mov r0, #1
	add r2, r6, r5
	str r0, [sp]
	str r0, [sp, #4]
	ldrb r2, [r2, #8]
	ldr r0, [sp, #0xa0]
	mov r1, #0
	mov r3, #2
	bl StringSetNumber
	mov r0, #1
	add r2, r6, r5
	str r0, [sp]
	str r0, [sp, #4]
	ldrb r2, [r2, #0xc]
	ldr r0, [sp, #0xa0]
	mov r1, #1
	mov r3, #2
	bl StringSetNumber
	ldr r0, [sp, #0xa0]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x14]
	bl GFL_WordSetFormatStrbuf
	add r1, r6, r5
	ldrb r0, [r1, #8]
	ldrb r1, [r1, #0xc]
	bl ovy168_21ee2f4
	mov r1, #0x1f
	and r1, r0
	lsl r1, r1, #0x18
	lsr r2, r1, #0x18
	asr r3, r0, #5
	mov r1, #0x1f
	and r1, r3
	asr r3, r0, #0xa
	mov r0, #0x1f
	and r0, r3
	lsl r1, r1, #0x18
	lsl r0, r0, #0x18
	lsr r1, r1, #0x18
	lsr r0, r0, #0x18
	bl sub_020232E8
	ldr r0, [sp, #0x80]
	ldr r1, [sp, #0x28]
	ldr r0, [r4, r0]
	ldr r3, [sp, #0x28]
	str r0, [sp]
	add r2, r7, #0
	ldr r1, [r1, r2]
	add r2, r3, r2
	ldr r0, [sp, #0x7c]
	ldr r2, [r2, #4]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r4, r0]
	ldr r3, [sp, #0x10]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_02021CFC
	ldr r1, [sp, #0x78]
	ldr r0, [sp, #0x18]
	ldr r1, [r4, r1]
	add r2, sp, #0xb4
	add r3, sp, #0xb0
	bl ovy168_21ed7f4
	ldr r0, [sp, #0x74]
	ldr r1, [sp, #0x2c]
	ldr r0, [r4, r0]
	str r0, [sp]
	ldr r0, [sp, #0x70]
	ldr r2, [sp, #0xb4]
	ldr r3, [r1, r7]
	lsr r1, r2, #0x1f
	str r1, [sp, #0x6c]
	add r1, r2, r1
	ldr r2, [sp, #0x2c]
	str r1, [sp, #0x6c]
	add r2, r2, r7
	asr r1, r1, #1
	sub r1, r3, r1
	ldr r2, [r2, #4]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r4, r0]
	ldr r3, [sp, #0x18]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_02021CFC
	add r0, sp, #0xa4
	add r1, sp, #0xa4
	add r2, sp, #0xa4
	ldrb r0, [r0, #2]
	ldrb r1, [r1, #1]
	ldrb r2, [r2]
	bl sub_020232E8
	add r0, r6, r5
	ldrb r0, [r0, #8]
	mov r2, #1
	cmp r0, #0
	bne _021EDB94
	mov r2, #0
_021EDB94:
	ldr r0, [sp, #0x90]
	add r1, r4, r5
	strb r2, [r1, r0]
	lsl r0, r5, #1
	ldrh r0, [r6, r0]
	mov r2, #1
	cmp r0, #0
	bne _021EDBA6
	mov r2, #0
_021EDBA6:
	ldr r0, [sp, #0x94]
	add r1, r4, r5
	strb r2, [r1, r0]
	b _021EDBD0
	nop
_021EDBB0: .word 0x021F3824
_021EDBB4: .word 0x021F3844
_021EDBB8: .word 0x00007FFF
_021EDBBC: .word 0x021F3864
_021EDBC0: .word 0x021F35F2
_021EDBC4: .word 0x021F3638
_021EDBC8: .word 0x021F3720
_021EDBCC:
	ldr r0, [sp, #0x3c]
	str r0, [sp, #0x24]
_021EDBD0:
	ldr r0, [sp, #0x9c]
	add r2, sp, #0xa8
	ldrh r1, [r0]
	ldr r0, _021EDC50 ; =0x00007FFF
	and r1, r0
	ldr r0, [sp, #0x98]
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	ldr r1, [sp, #0x24]
	mov r0, #0xb
	bl sub_0204B354
	str r0, [sp, #0x40]
	mov r0, #0x20
	str r0, [sp]
	ldr r1, [sp, #0xa8]
	lsl r3, r5, #4
	add r3, #0x90
	lsl r3, r3, #0x10
	ldr r0, [r4, #0x64]
	ldr r1, [r1, #0xc]
	mov r2, #1
	lsr r3, r3, #0x10
	bl sub_02026E64
	ldr r0, [sp, #0x40]
	bl GFL_HeapFree
	add r5, r5, #1
_021EDC0C:
	cmp r5, #4
	bge _021EDC12
	b _021ED982
_021EDC12:
	ldr r1, _021EDC54 ; =0x000002DE
	mov r0, #1
	add r2, r4, r5
	strb r0, [r2, r1]
	ldr r2, [r4, #0x50]
	cmp r2, #2
	bne _021EDC26
	add r2, r5, #1
	add r2, r4, r2
	strb r0, [r2, r1]
_021EDC26:
	ldr r0, [sp, #0xa0]
	bl GFL_WordSetSystemFree
	ldr r0, [sp, #0x20]
	bl GFL_StrBufFree
	ldr r0, [sp, #0x10]
	bl GFL_StrBufFree
	ldr r0, [sp, #0x1c]
	bl GFL_StrBufFree
	ldr r0, [sp, #0x14]
	bl GFL_StrBufFree
	ldr r0, [sp, #0x18]
	bl GFL_StrBufFree
	add sp, #0x11c
	pop {r4, r5, r6, r7, pc}
	nop
_021EDC50: .word 0x00007FFF
_021EDC54: .word 0x000002DE
	thumb_func_end ovy168_21ed81c

	thumb_func_start ovy168_21edc58
ovy168_21edc58: ; 0x021EDC58
	push {r4, r5, r6, r7, lr}
	sub sp, #0x54
	add r4, r0, #0
	str r1, [sp, #4]
	ldr r1, [r4, #0x50]
	add r6, r2, #0
	cmp r1, #2
	bne _021EDC6C
	mov r0, #6
	b _021EDC6E
_021EDC6C:
	mov r0, #4
_021EDC6E:
	str r0, [sp, #0xc]
	cmp r1, #2
	bne _021EDC78
	mov r0, #1
	b _021EDC7A
_021EDC78:
	mov r0, #0
_021EDC7A:
	str r0, [sp, #8]
	add r0, sp, #0x44
	add r1, sp, #0x44
	add r0, #2
	add r1, #1
	add r2, sp, #0x44
	bl sub_02023370
	mov r1, #0xb1
	lsl r1, r1, #2
	str r1, [sp, #0x24]
	ldrh r1, [r4, r1]
	ldr r5, _021EDEA8 ; =0x00007FFF
	mov r0, #0xc
	add r2, r1, #0
	and r2, r5
	add r1, r5, #1
	orr r1, r2
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl GFL_StrBufCreate
	add r7, r0, #0
	ldr r0, [sp, #0x24]
	ldrh r0, [r4, r0]
	add r1, r0, #0
	and r1, r5
	add r0, r5, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl GFL_WordSetSystemCreateDefault
	str r0, [sp, #0x1c]
	mov r0, #1
	mov r1, #2
	mov r2, #0
	mov r5, #0
	bl sub_020232E8
	ldr r0, [sp, #0xc]
	cmp r0, #0
	ble _021EDD90
	ldr r1, [sp, #8]
	mov r2, #0x30
	ldr r0, _021EDEAC ; =0x021F3AC8
	mul r2, r1
	add r0, r0, r2
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x24]
	str r0, [sp, #0x30]
	sub r0, #0x1c
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x24]
	str r0, [sp, #0x2c]
	sub r0, #0x1c
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x24]
	str r0, [sp, #0x28]
	sub r0, #0x14
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x24]
	add r0, #0x1a
	str r0, [sp, #0x24]
_021EDCFA:
	mov r0, #0xc
	mul r0, r5
	add r1, r6, r0
	str r0, [sp, #0x14]
	mov r0, #4
	ldrsh r0, [r1, r0]
	str r1, [sp, #0x10]
	cmp r0, #0
	beq _021EDD7A
	ldr r1, [sp, #0x14]
	ldr r0, [r4, #0x5c]
	ldrb r1, [r6, r1]
	lsl r1, r1, #0x1e
	lsr r1, r1, #0x1e
	add r1, r1, #3
	bl sub_0204898C
	ldr r2, [sp, #0x10]
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	ldr r2, [r2, #8]
	mov r1, #0
	bl sub_02024464
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x20]
	add r1, r7, #0
	bl GFL_WordSetFormatStrbuf
	ldr r1, [sp, #0x30]
	add r0, r7, #0
	ldr r1, [r4, r1]
	add r2, sp, #0x50
	add r3, sp, #0x4c
	bl ovy168_21ed7f4
	ldr r0, [sp, #0x18]
	lsl r2, r5, #3
	add r0, r0, r2
	mov ip, r0
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x18]
	ldr r0, [r4, r0]
	ldr r2, [r1, r2]
	str r0, [sp]
	ldr r1, [sp, #0x50]
	ldr r0, [sp, #0x28]
	lsr r3, r1, #0x1f
	add r3, r1, r3
	asr r1, r3, #1
	sub r1, r2, r1
	mov r2, ip
	ldr r2, [r2, #4]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r4, r0]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	add r3, r7, #0
	bl sub_02021CFC
	ldr r0, [sp, #0x20]
	bl GFL_StrBufFree
_021EDD7A:
	ldr r0, [sp, #0x14]
	add r1, r4, r5
	ldrb r0, [r6, r0]
	add r5, r5, #1
	lsl r0, r0, #0x1d
	lsr r2, r0, #0x1f
	ldr r0, [sp, #0x24]
	strb r2, [r1, r0]
	ldr r0, [sp, #0xc]
	cmp r5, r0
	blt _021EDCFA
_021EDD90:
	ldr r0, _021EDEB0 ; =0x000002DE
	mov r2, #1
	add r1, r4, r5
	strb r2, [r1, r0]
	add r2, sp, #0x44
	ldrb r0, [r2, #2]
	ldrb r1, [r2, #1]
	ldrb r2, [r2]
	bl sub_020232E8
	ldr r0, [sp, #0x1c]
	bl GFL_WordSetSystemFree
	add r0, r7, #0
	bl GFL_StrBufFree
	add r0, r6, #0
	add r0, #0x48
	ldrb r0, [r0]
	add r6, #0x49
	ldr r5, _021EDEB4 ; =0x021F3C18
	sub r1, r0, #2
	lsr r0, r1, #0x1f
	add r0, r1, r0
	ldr r1, [r4, #0x6c]
	asr r2, r0, #1
	add r3, r1, #0
	ldr r0, _021EDEB8 ; =0xFFFFFC03
	ldrb r1, [r6]
	and r3, r0
	lsl r0, r1, #0x18
	lsr r0, r0, #0x16
	orr r0, r3
	str r0, [r4, #0x6c]
	ldr r3, [sp, #8]
	mov r0, #0xb4
	mul r0, r3
	mov r3, #0x3c
	mul r3, r2
	add r0, r5, r0
	lsl r1, r1, #2
	add r0, r3, r0
	ldr r0, [r1, r0]
	add r1, r4, #0
	bl ovy168_21eb7c0
	ldr r1, [sp, #4]
	mov r7, #3
	str r0, [r1, #0xc]
	ldr r0, [r4, #0x50]
	cmp r0, #2
	beq _021EDDFA
	mov r7, #2
_021EDDFA:
	mov r5, #0
	cmp r7, #0
	ble _021EDE4E
	ldr r0, _021EDEBC ; =0x000001E1
	str r0, [sp, #0x38]
	add r0, #0xe3
	str r0, [sp, #0x38]
	ldr r0, _021EDEA8 ; =0x00007FFF
	add r0, r0, #1
	str r0, [sp, #0x34]
_021EDE0E:
	ldr r3, [sp, #0x38]
	ldr r1, _021EDEBC ; =0x000001E1
	ldrh r6, [r4, r3]
	ldr r3, _021EDEA8 ; =0x00007FFF
	mov r0, #0xb
	and r6, r3
	ldr r3, [sp, #0x34]
	add r2, sp, #0x48
	orr r3, r6
	lsl r3, r3, #0x10
	lsr r3, r3, #0x10
	bl sub_0204B354
	add r6, r0, #0
	mov r0, #0x20
	str r0, [sp]
	ldr r1, [sp, #0x48]
	lsl r3, r5, #4
	add r3, #0x70
	lsl r3, r3, #0x10
	ldr r0, [r4, #0x64]
	ldr r1, [r1, #0xc]
	mov r2, #1
	lsr r3, r3, #0x10
	bl sub_02026E64
	add r0, r6, #0
	bl GFL_HeapFree
	add r5, r5, #1
	cmp r5, r7
	blt _021EDE0E
_021EDE4E:
	lsl r7, r7, #1
	cmp r5, r7
	bge _021EDEA2
	ldr r0, _021EDEC0 ; =0x000001E2
	str r0, [sp, #0x40]
	add r0, #0xe2
	str r0, [sp, #0x40]
	ldr r0, _021EDEA8 ; =0x00007FFF
	add r0, r0, #1
	str r0, [sp, #0x3c]
_021EDE62:
	ldr r3, [sp, #0x40]
	ldr r1, _021EDEC0 ; =0x000001E2
	ldrh r6, [r4, r3]
	ldr r3, _021EDEA8 ; =0x00007FFF
	mov r0, #0xb
	and r6, r3
	ldr r3, [sp, #0x3c]
	add r2, sp, #0x48
	orr r3, r6
	lsl r3, r3, #0x10
	lsr r3, r3, #0x10
	bl sub_0204B354
	add r6, r0, #0
	mov r0, #0x20
	str r0, [sp]
	ldr r1, [sp, #0x48]
	lsl r3, r5, #4
	add r3, #0x70
	lsl r3, r3, #0x10
	ldr r0, [r4, #0x64]
	ldr r1, [r1, #0xc]
	mov r2, #1
	lsr r3, r3, #0x10
	bl sub_02026E64
	add r0, r6, #0
	bl GFL_HeapFree
	add r5, r5, #1
	cmp r5, r7
	blt _021EDE62
_021EDEA2:
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
	nop
_021EDEA8: .word 0x00007FFF
_021EDEAC: .word 0x021F3AC8
_021EDEB0: .word 0x000002DE
_021EDEB4: .word 0x021F3C18
_021EDEB8: .word 0xFFFFFC03
_021EDEBC: .word 0x000001E1
_021EDEC0: .word 0x000001E2
	thumb_func_end ovy168_21edc58

	thumb_func_start ovy168_21edec4
ovy168_21edec4: ; 0x021EDEC4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #1
	mov r1, #2
	mov r2, #0
	bl sub_020232E8
	mov r4, #0xaa
	lsl r4, r4, #2
	ldr r0, [r6]
	ldr r1, [r5, r4]
	add r2, sp, #0x10
	add r3, sp, #0xc
	bl ovy168_21ed7f4
	ldr r0, [r5, r4]
	mov r7, #0x80
	str r0, [sp]
	ldr r2, [sp, #0x10]
	add r0, r4, #0
	lsr r1, r2, #0x1f
	add r1, r2, r1
	asr r1, r1, #1
	add r0, #8
	sub r1, r7, r1
	lsl r1, r1, #0x10
	ldr r0, [r5, r0]
	ldr r3, [r6]
	asr r1, r1, #0x10
	mov r2, #0x10
	bl sub_02021CFC
	ldr r0, [r6, #4]
	ldr r1, [r5, r4]
	add r2, sp, #0x10
	add r3, sp, #0xc
	bl ovy168_21ed7f4
	ldr r0, [r5, r4]
	ldr r3, [r6, #4]
	str r0, [sp]
	ldr r2, [sp, #0x10]
	add r0, r4, #0
	lsr r1, r2, #0x1f
	add r1, r2, r1
	asr r1, r1, #1
	add r0, #8
	sub r1, r7, r1
	lsl r1, r1, #0x10
	ldr r0, [r5, r0]
	asr r1, r1, #0x10
	mov r2, #0x40
	bl sub_02021CFC
	add r1, r4, #0
	add r1, #0x36
	mov r0, #1
	strb r0, [r5, r1]
	add r1, r4, #0
	add r1, #0x37
	strb r0, [r5, r1]
	add r7, #0xf7
	add r0, r7, #0
	add r1, r5, #0
	bl ovy168_21eb7c0
	add r1, r0, #0
	mov r0, #0
	str r0, [sp]
	add r4, #0x1c
	str r0, [sp, #4]
	ldrh r0, [r5, r4]
	mov r2, #5
	mov r3, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0x48]
	bl sub_0204AF50
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy168_21edec4

	thumb_func_start ovy168_21edf68
ovy168_21edf68: ; 0x021EDF68
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	mov r2, #0
	add r5, r0, #0
	add r4, r2, #0
	add r1, sp, #0x10
_021EDF74:
	lsl r0, r2, #1
	strh r4, [r1, r0]
	add r0, r1, r2
	strb r4, [r0, #8]
	add r2, r2, #1
	strb r4, [r0, #0xc]
	cmp r2, #4
	blt _021EDF74
	ldr r0, [r5, #0x68]
	mov r6, #0x33
	lsl r0, r0, #0xb
	lsr r0, r0, #0x1e
	lsl r0, r0, #2
	add r0, r5, r0
	lsl r6, r6, #4
	ldr r0, [r0, r6]
	bl ovy167_21bac48
	cmp r0, #0
	ble _021EDFD4
	add r7, sp, #0x18
_021EDF9E:
	ldr r0, [r5, #0x68]
	lsl r1, r4, #0x18
	lsl r0, r0, #0xb
	lsr r0, r0, #0x1e
	lsl r0, r0, #2
	add r0, r5, r0
	add r3, sp, #0x1c
	ldr r0, [r0, r6]
	lsr r1, r1, #0x18
	add r2, r7, r4
	add r3, r3, r4
	bl ovy167_21bad28
	lsl r2, r4, #1
	add r1, sp, #0x10
	strh r0, [r1, r2]
	ldr r0, [r5, #0x68]
	add r4, r4, #1
	lsl r0, r0, #0xb
	lsr r0, r0, #0x1e
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl ovy167_21bac48
	cmp r4, r0
	blt _021EDF9E
_021EDFD4:
	add r0, r5, #0
	add r1, sp, #0x10
	bl ovy168_21ed81c
	ldr r0, [r5, #0x68]
	ldr r2, _021EE10C ; =0x000002E3
	lsl r0, r0, #0xb
	lsr r0, r0, #0x1e
	lsl r1, r0, #1
	ldr r0, _021EE110 ; =0x021F35DC
	ldrb r0, [r0, r1]
	strb r0, [r5, r2]
	ldr r0, _021EE114 ; =0x021F35DD
	ldrb r1, [r0, r1]
	add r0, r2, #1
	strb r1, [r5, r0]
	add r0, r2, #0
	mov r1, #1
	sub r0, #0xc3
	str r1, [r5, r0]
	add r1, r2, #0
	mov r0, #0
	add r3, r0, #0
	sub r1, #0xc3
	add r2, #0x59
_021EE006:
	ldr r4, [r5, #0x68]
	lsl r6, r0, #2
	lsl r4, r4, #0xb
	lsr r4, r4, #0x1e
	lsl r4, r4, #4
	add r4, r5, r4
	add r4, r6, r4
	ldr r4, [r4, r2]
	cmp r4, #1
	bne _021EE01C
	str r3, [r5, r1]
_021EE01C:
	add r0, r0, #1
	cmp r0, #4
	blt _021EE006
	ldr r0, [r5, #0x68]
	mov r4, #0x33
	lsl r0, r0, #0xb
	lsr r0, r0, #0x1e
	lsl r0, r0, #2
	add r0, r5, r0
	lsl r4, r4, #4
	ldr r0, [r0, r4]
	bl ovy167_21bb368
	cmp r0, #0
	beq _021EE086
	mov r1, #0
	add r6, r1, #0
	sub r4, #0x52
_021EE040:
	add r0, r5, r1
	add r1, r1, #1
	strb r6, [r0, r4]
	cmp r1, #4
	blt _021EE040
	mov r0, #0x22
	lsl r0, r0, #4
	str r6, [r5, r0]
	mov r4, #8
	str r4, [sp]
	str r4, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r5]
	mov r2, #0x3e
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x64]
	mov r1, #2
	lsl r2, r2, #8
	add r3, r6, #0
	bl sub_020270F0
	str r4, [sp]
	str r4, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r5]
	mov r2, #7
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x64]
	mov r1, #8
	lsl r2, r2, #8
	add r3, r6, #0
	bl sub_020270F0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
_021EE086:
	mov r0, #0x22
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	cmp r1, #1
	bne _021EE0D4
	mov r1, #1
	add r0, #0xbe
	strb r1, [r5, r0]
	add r0, r5, #0
	bl ovy168_21eeafc
	mov r4, #8
	str r4, [sp]
	mov r2, #0x3e
	str r4, [sp, #4]
	mov r6, #0
	str r6, [sp, #8]
	ldr r0, [r5]
	mov r1, #2
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x64]
	lsl r2, r2, #8
	mov r3, #0
	bl sub_020270F0
	str r4, [sp]
	str r4, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r5]
	mov r2, #7
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x64]
	mov r1, #8
	lsl r2, r2, #8
	mov r3, #0
	bl sub_020270F0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
_021EE0D4:
	mov r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	ldr r0, [r5]
	mov r2, #0x3e
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x64]
	mov r1, #2
	lsl r2, r2, #8
	mov r3, #0
	bl sub_020270F0
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	ldr r0, [r5]
	mov r2, #7
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x64]
	mov r1, #8
	lsl r2, r2, #8
	mov r3, #0
	bl sub_020270F0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EE10C: .word 0x000002E3
_021EE110: .word 0x021F35DC
_021EE114: .word 0x021F35DD
	thumb_func_end ovy168_21edf68

	thumb_func_start ovy168_21ee118
ovy168_21ee118: ; 0x021EE118
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	mov r4, #0xb1
	add r5, r0, #0
	lsl r4, r4, #2
	ldrh r0, [r5, r4]
	add r6, r1, #0
	bl GFL_WordSetSystemCreateDefault
	add r7, r0, #0
	ldrh r1, [r5, r4]
	mov r0, #8
	bl GFL_StrBufCreate
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x5c]
	mov r1, #6
	bl sub_0204898C
	str r0, [sp, #8]
	add r0, sp, #0x10
	add r1, sp, #0x10
	add r0, #2
	add r1, #1
	add r2, sp, #0x10
	bl sub_02023370
	mov r0, #9
	mov r1, #0xa
	mov r2, #0
	bl sub_020232E8
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, [r6, #8]
	add r0, r7, #0
	mov r1, #0
	mov r3, #3
	bl StringSetNumber
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	add r0, r7, #0
	bl GFL_WordSetFormatStrbuf
	add r0, r4, #0
	sub r0, #0x1c
	ldr r0, [r5, r0]
	sub r4, #0x14
	str r0, [sp]
	ldr r0, [r5, r4]
	ldr r3, [sp, #0xc]
	mov r1, #0x8c
	mov r2, #8
	bl sub_02021CFC
	ldr r1, [r6]
	ldr r0, [r6, #4]
	cmp r1, r0
	beq _021EE19E
	mov r0, #7
	mov r1, #8
	mov r2, #0
	bl sub_020232E8
_021EE19E:
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, [r6, #4]
	add r0, r7, #0
	mov r1, #0
	mov r3, #3
	bl StringSetNumber
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	add r0, r7, #0
	bl GFL_WordSetFormatStrbuf
	mov r4, #0xaa
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	ldr r3, [sp, #0xc]
	str r0, [sp]
	add r0, r4, #0
	add r0, #8
	ldr r0, [r5, r0]
	mov r1, #0x60
	mov r2, #8
	bl sub_02021CFC
	mov r0, #1
	mov r1, #2
	mov r2, #0
	bl sub_020232E8
	ldr r0, [r5, #0x5c]
	mov r1, #7
	bl sub_0204898C
	add r6, r0, #0
	ldr r0, [r5, r4]
	add r4, #8
	str r0, [sp]
	ldr r0, [r5, r4]
	mov r1, #0x7c
	mov r2, #8
	add r3, r6, #0
	bl sub_02021CFC
	add r0, r6, #0
	bl GFL_StrBufFree
	add r2, sp, #0x10
	ldrb r0, [r2, #2]
	ldrb r1, [r2, #1]
	ldrb r2, [r2]
	bl sub_020232E8
	add r0, r7, #0
	bl GFL_WordSetSystemFree
	ldr r0, [sp, #8]
	bl GFL_StrBufFree
	ldr r0, [sp, #0xc]
	bl GFL_StrBufFree
	bl ovy168_21e00b8
	mov r1, #1
	bl sub_02026FD0
	add r1, r0, #0
	mov r0, #0x20
	str r0, [sp]
	ldr r0, [r5, #0x64]
	add r1, #0x40
	mov r2, #1
	mov r3, #0x70
	bl sub_02026E64
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy168_21ee118

	thumb_func_start ovy168_21ee240
ovy168_21ee240: ; 0x021EE240
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r1, [r5, #0x6c]
	mov r0, #2
	bic r1, r0
	str r1, [r5, #0x6c]
	mov r3, #0
	ldr r1, _021EE2EC ; =0x000002DE
	add r0, r3, #0
_021EE254:
	add r2, r5, r3
	add r3, r3, #1
	strb r0, [r2, r1]
	cmp r3, #8
	blt _021EE254
	ldr r1, _021EE2F0 ; =0x000002E6
	mov r4, #0
_021EE262:
	add r2, r5, r0
	add r0, r0, #1
	strb r4, [r2, r1]
	cmp r0, #4
	blt _021EE262
	mov r6, #0x2b
	lsl r6, r6, #4
	ldr r0, [r5, r6]
	add r1, r4, #0
	bl BmpWin_BitmapFill
	sub r0, r6, #4
	ldr r0, [r5, r0]
	bl BmpWin_FlushChar
	add r0, r6, #0
	add r0, #8
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl BmpWin_BitmapFill
	add r0, r6, #4
	ldr r0, [r5, r0]
	bl BmpWin_FlushChar
	add r0, r5, #0
	bl ovy168_21eead8
	add r0, r5, #0
	bl ovy168_21eeca4
	add r0, r5, #0
	bl ovy168_21ee8ac
	mov r2, #0x20
	str r2, [sp]
	str r2, [sp, #4]
	str r4, [sp, #8]
	mov r0, #4
	add r1, r4, #0
	mov r3, #2
	bl sub_02045604
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	ldr r0, [r5]
	mov r2, #0x3e
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x64]
	mov r1, #2
	lsl r2, r2, #8
	add r3, r4, #0
	bl sub_020270F0
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	ldr r0, [r5]
	mov r2, #7
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x64]
	mov r1, #8
	lsl r2, r2, #8
	add r3, r4, #0
	bl sub_020270F0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
_021EE2EC: .word 0x000002DE
_021EE2F0: .word 0x000002E6
	thumb_func_end ovy168_21ee240

	thumb_func_start ovy168_21ee2f4
ovy168_21ee2f4: ; 0x021EE2F4
	cmp r0, #0
	bne _021EE2FE
	mov r0, #0x1d
	lsl r0, r0, #8
	bx lr
_021EE2FE:
	cmp r1, r0
	bne _021EE308
	mov r0, #0x11
	lsl r0, r0, #6
	bx lr
_021EE308:
	cmp r1, #2
	bgt _021EE316
	cmp r0, #1
	bne _021EE352
	mov r0, #0x53
	lsl r0, r0, #6
	bx lr
_021EE316:
	cmp r1, #7
	bgt _021EE330
	cmp r0, #1
	beq _021EE324
	cmp r0, #2
	beq _021EE32A
	b _021EE352
_021EE324:
	mov r0, #0x53
	lsl r0, r0, #6
	bx lr
_021EE32A:
	mov r0, #0x32
	lsl r0, r0, #6
	bx lr
_021EE330:
	asr r2, r1, #1
	lsr r2, r2, #0x1e
	add r2, r1, r2
	asr r2, r2, #2
	cmp r0, r2
	bgt _021EE342
	mov r0, #0x53
	lsl r0, r0, #6
	bx lr
_021EE342:
	lsr r2, r1, #0x1f
	add r2, r1, r2
	asr r1, r2, #1
	cmp r0, r1
	bgt _021EE352
	mov r0, #0x32
	lsl r0, r0, #6
	bx lr
_021EE352:
	mov r0, #0x11
	lsl r0, r0, #6
	bx lr
	thumb_func_end ovy168_21ee2f4

	thumb_func_start ovy168_21ee358
ovy168_21ee358: ; 0x021EE358
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	add r5, r0, #0
	add r6, r1, #0
	ldr r1, [r5, #0x50]
	cmp r1, #3
	bne _021EE36A
	mov r0, #2
	b _021EE36C
_021EE36A:
	add r0, r1, #1
_021EE36C:
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x14]
	cmp r1, #0
	beq _021EE37A
	cmp r1, #3
	bne _021EE37C
_021EE37A:
	b _021EE60C
_021EE37C:
	mov r7, #0xb1
	lsl r7, r7, #2
	ldrh r2, [r5, r7]
	ldr r1, _021EE610 ; =0x00007FFF
	mov r0, #7
	and r2, r1
	add r1, r1, #1
	orr r1, r2
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0204AA30
	str r0, [sp, #0x1c]
	bl sub_02021154
	add r4, r0, #0
	bl sub_020211C8
	add r2, r0, #0
	ldrh r3, [r5, r7]
	ldr r0, [sp, #0x1c]
	add r1, r4, #0
	bl Oam_LoadNCERFile
	mov r1, #7
	lsl r1, r1, #6
	str r0, [r5, r1]
	bl sub_02021114
	add r1, r0, #0
	ldrh r0, [r5, r7]
	mov r4, #0x16
	lsl r4, r4, #4
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	mov r2, #1
	add r3, r4, #0
	bl sub_0204BC48
	add r4, #0x5c
	mov r1, #1
	str r0, [r5, r4]
	bl sub_0204BDC0
	add r2, r0, #0
	lsl r2, r2, #0xf
	ldr r0, [r5, #0x64]
	mov r1, #3
	lsr r2, r2, #0x10
	mov r3, #0x60
	mov r4, #0x60
	bl sub_02026F7C
	ldr r1, _021EE614 ; =0x04001040
	add r4, #0xa0
	ldr r0, [sp, #0x14]
	strh r4, [r1]
	strh r0, [r1, #4]
	strh r4, [r1, #2]
	strh r0, [r1, #6]
	ldr r0, [sp, #0xc]
	cmp r0, #1
	ble _021EE432
	ldr r0, _021EE618 ; =0x000014AE
	ldr r2, [sp, #0x14]
	str r0, [sp]
	ldrh r1, [r5, r7]
	ldr r0, _021EE610 ; =0x00007FFF
	ldr r3, _021EE61C ; =0x021F41C8
	and r1, r0
	mov r0, #1
	lsl r0, r0, #0xf
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #8
	bl GFL_HeapAllocate
	add r1, r0, #0
	ldr r0, [sp, #0xc]
	str r5, [r1]
	str r0, [r1, #4]
	ldr r0, _021EE620 ; =ovy168_21ed6b8
	ldr r2, [sp, #0x14]
	bl GFL_VBlankTCBAdd
	add r1, r0, #0
	ldr r2, [sp, #0x14]
	add r0, r5, #0
	bl ovy168_21ef3c0
_021EE432:
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bgt _021EE43E
	b _021EE606
_021EE43E:
	ldr r0, _021EE624 ; =0x04001042
	sub r0, r0, #2
	str r0, [sp, #0x20]
	mov r0, #0xb1
	lsl r0, r0, #2
	add r0, r5, r0
	str r0, [sp, #0x3c]
	mov r0, #0x1b
	lsl r0, r0, #4
	str r0, [sp, #0x38]
	add r0, #0x14
	str r0, [sp, #0x38]
	mov r0, #0x1b
	lsl r0, r0, #4
	str r0, [sp, #0x34]
	add r0, #0xc
	str r0, [sp, #0x34]
	mov r0, #0x1b
	lsl r0, r0, #4
	str r0, [sp, #0x30]
	add r0, #0x10
	str r0, [sp, #0x30]
	mov r0, #0x1b
	lsl r0, r0, #4
	str r0, [sp, #0x2c]
	add r0, #0x18
	str r0, [sp, #0x2c]
	mov r0, #0x1b
	lsl r0, r0, #4
	str r0, [sp, #0x28]
	add r0, #0x18
	str r0, [sp, #0x28]
	mov r0, #0x1b
	lsl r0, r0, #4
	str r0, [sp, #0x24]
	add r0, #0x18
	str r0, [sp, #0x24]
	mov r0, #0x1b
	lsl r0, r0, #4
	str r0, [sp, #0x40]
	add r0, #0x18
	str r0, [sp, #0x40]
	mov r0, #0x1b
	lsl r0, r0, #4
	str r0, [sp, #0x44]
	add r0, #0x18
	str r0, [sp, #0x44]
_021EE49C:
	ldr r0, [sp, #0x18]
	lsl r4, r0, #2
	add r0, r6, r4
	add r0, #0x98
	ldr r0, [r0]
	cmp r0, #0
	bne _021EE4AC
	b _021EE5F8
_021EE4AC:
	add r1, r5, r4
	str r1, [sp, #0x10]
	add r1, r6, r4
	add r2, r6, r4
	add r1, #0xa4
	add r2, #0xb0
	ldr r1, [r1]
	ldr r2, [r2]
	mov r3, #0
	bl sub_02020F94
	add r1, r0, #0
	mov r0, #0xb1
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	mov r2, #0
	mov r3, #1
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	bl Oam_LoadNCGRFile
	mov r1, #0x1b
	ldr r2, [sp, #0x10]
	lsl r1, r1, #4
	str r0, [r2, r1]
	ldr r0, [sp, #0x18]
	ldr r3, [sp, #0x30]
	lsl r0, r0, #3
	add r7, r5, r0
	ldr r0, _021EE628 ; =0x021F35F2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x3c]
	ldrh r0, [r0]
	str r0, [sp, #8]
	ldr r0, [sp, #0x38]
	ldr r1, [r2, r1]
	ldr r2, [sp, #0x34]
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl Oam_CreateSprite
	ldr r1, [sp, #0x2c]
	mov r2, #0xc
	str r0, [r7, r1]
	ldr r1, [r5, #0x50]
	ldr r0, [sp, #0x28]
	mul r2, r1
	ldr r1, _021EE62C ; =0x021F3780
	ldr r0, [r7, r0]
	add r1, r1, r2
	add r1, r1, r4
	mov r2, #1
	bl Oam_SetSpritePosData
	ldr r0, [sp, #0x24]
	mov r1, #1
	ldr r0, [r7, r0]
	bl sub_0204C520
	add r0, r6, #0
	add r0, #0xbc
	ldr r1, [r0]
	ldr r0, [sp, #0x18]
	cmp r1, r0
	bne _021EE540
	ldr r0, [sp, #0x40]
	mov r1, #1
	ldr r0, [r7, r0]
	bl sub_0204C488
	b _021EE5D4
_021EE540:
	ldr r0, [sp, #0x14]
	ldr r1, [r5, #0x50]
	cmp r0, #0
	bne _021EE592
	mov r0, #0xc
	add r2, r1, #0
	mul r2, r0
	ldr r0, _021EE62C ; =0x021F3780
	add r1, r0, r2
	ldrsh r3, [r1, r4]
	add r2, r1, r4
	mov r0, #2
	ldrsh r2, [r2, r0]
	add r0, r3, #0
	sub r0, #0x10
	lsl r1, r0, #8
	mov r0, #0xff
	lsl r0, r0, #8
	add r3, #0x10
	and r0, r1
	lsl r1, r3, #0x18
	lsr r1, r1, #0x18
	orr r1, r0
	ldr r0, [sp, #0x20]
	strh r1, [r0]
	add r0, r2, #0
	sub r0, #0x10
	lsl r1, r0, #8
	mov r0, #0xff
	lsl r0, r0, #8
	add r2, #0x10
	and r0, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	orr r1, r0
	ldr r0, _021EE624 ; =0x04001042
	strh r1, [r0, #2]
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
	b _021EE5D4
_021EE592:
	mov r0, #0xc
	add r2, r1, #0
	mul r2, r0
	ldr r0, _021EE62C ; =0x021F3780
	add r1, r0, r2
	ldrsh r3, [r1, r4]
	add r2, r1, r4
	mov r0, #2
	ldrsh r2, [r2, r0]
	add r0, r3, #0
	sub r0, #0x10
	lsl r1, r0, #8
	mov r0, #0xff
	lsl r0, r0, #8
	add r3, #0x10
	and r0, r1
	lsl r1, r3, #0x18
	lsr r1, r1, #0x18
	orr r1, r0
	ldr r0, _021EE624 ; =0x04001042
	strh r1, [r0]
	add r0, r2, #0
	sub r0, #0x10
	lsl r1, r0, #8
	mov r0, #0xff
	lsl r0, r0, #8
	add r2, #0x10
	and r0, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	orr r1, r0
	ldr r0, _021EE624 ; =0x04001042
	strh r1, [r0, #4]
_021EE5D4:
	add r0, r6, r4
	add r1, r6, r4
	add r2, r6, r4
	add r0, #0x98
	add r1, #0xa4
	add r2, #0xb0
	ldr r0, [r0]
	ldr r1, [r1]
	ldr r2, [r2]
	mov r3, #0
	bl sub_02021034
	add r1, r0, #0
	ldr r0, [sp, #0x44]
	mov r2, #0
	ldr r0, [r7, r0]
	bl sub_0204C378
_021EE5F8:
	ldr r0, [sp, #0x18]
	add r1, r0, #1
	ldr r0, [sp, #0xc]
	str r1, [sp, #0x18]
	cmp r1, r0
	bge _021EE606
	b _021EE49C
_021EE606:
	ldr r0, [sp, #0x1c]
	bl GFL_ArcToolFree
_021EE60C:
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EE610: .word 0x00007FFF
_021EE614: .word 0x04001040
_021EE618: .word 0x000014AE
_021EE61C: .word 0x021F41C8
_021EE620: .word ovy168_21ed6b8
_021EE624: .word 0x04001042
_021EE628: .word 0x021F35F2
_021EE62C: .word 0x021F3780
	thumb_func_end ovy168_21ee358

	thumb_func_start ovy168_21ee630
ovy168_21ee630: ; 0x021EE630
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0x1b
	lsl r0, r0, #4
	mov r7, #0x1b
	str r0, [sp, #4]
	add r0, #0x18
	lsl r7, r7, #4
	mov r6, #1
	mov r4, #0
	str r0, [sp, #4]
	add r7, #0x18
_021EE64A:
	lsl r0, r4, #3
	add r0, r5, r0
	ldr r0, [r0, r7]
	cmp r0, #0
	beq _021EE67A
	bl sub_0204C108
	lsl r0, r4, #2
	add r6, r5, r0
	mov r0, #0x1b
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	bl sub_0204B98C
	lsl r0, r4, #3
	add r2, r5, r0
	ldr r0, [sp, #4]
	mov r1, #0
	str r1, [r2, r0]
	mov r0, #0x1b
	sub r1, r1, #1
	lsl r0, r0, #4
	str r1, [r6, r0]
	mov r6, #0
_021EE67A:
	add r4, r4, #1
	cmp r4, #3
	blt _021EE64A
	mov r7, #7
	lsl r7, r7, #6
	mov r4, #0
	ldr r0, [r5, r7]
	mvn r4, r4
	cmp r0, r4
	beq _021EE694
	bl sub_0204BE64
	str r4, [r5, r7]
_021EE694:
	mov r7, #0x6f
	lsl r7, r7, #2
	mov r4, #0
	ldr r0, [r5, r7]
	mvn r4, r4
	cmp r0, r4
	beq _021EE6A8
	bl sub_0204BCD0
	str r4, [r5, r7]
_021EE6A8:
	cmp r6, #0
	bne _021EE6E2
	ldr r0, _021EE6E8 ; =0x0000151B
	ldr r3, _021EE6EC ; =0x021F41C8
	str r0, [sp]
	mov r0, #0xb1
	lsl r0, r0, #2
	ldrh r1, [r5, r0]
	ldr r0, _021EE6F0 ; =0x00007FFF
	mov r2, #0
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #8
	bl GFL_HeapAllocate
	add r1, r0, #0
	ldr r0, _021EE6F4 ; =ovy168_21ed734
	mov r2, #0
	str r5, [r1]
	bl GFL_VBlankTCBAdd
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #0
	bl ovy168_21ef3c0
_021EE6E2:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EE6E8: .word 0x0000151B
_021EE6EC: .word 0x021F41C8
_021EE6F0: .word 0x00007FFF
_021EE6F4: .word ovy168_21ed734
	thumb_func_end ovy168_21ee630

	thumb_func_start ovy168_21ee6f8
ovy168_21ee6f8: ; 0x021EE6F8
	mov r2, #0x71
	lsl r2, r2, #2
	ldr r0, [r0, r2]
	ldr r3, _021EE704 ; =sub_0204BFD4
	bx r3
	nop
_021EE704: .word sub_0204BFD4
	thumb_func_end ovy168_21ee6f8

	thumb_func_start ovy168_21ee708
ovy168_21ee708: ; 0x021EE708
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x58
	ldr r3, _021EE888 ; =0x021F37E0
	add r5, r0, #0
	add r6, r1, #0
	add r2, sp, #0x44
	ldmia r3!, {r0, r1}
	str r2, [sp, #0xc]
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	ldr r3, _021EE88C ; =0x021F37B8
	str r0, [r2]
	add r2, sp, #0x30
	ldmia r3!, {r0, r1}
	str r2, [sp, #0x10]
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	ldr r3, _021EE890 ; =0x021F37CC
	str r0, [r2]
	add r2, sp, #0x1c
	ldmia r3!, {r0, r1}
	str r2, [sp, #0x14]
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	bne _021EE74A
	b _021EE884
_021EE74A:
	ldr r0, _021EE894 ; =0x021F35F2
	mov r4, #0x41
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0xb1
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	lsl r4, r4, #2
	add r3, r4, #0
	str r0, [sp, #8]
	mov r0, #0xb1
	lsl r0, r0, #2
	sub r0, #0xb8
	add r2, r4, #4
	add r3, #8
	ldr r0, [r5, r0]
	ldr r1, [r5, r4]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl Oam_CreateSprite
	mov r1, #0xb1
	lsl r1, r1, #2
	sub r1, #0xb4
	str r0, [r5, r1]
	sub r1, r6, #1
	lsl r7, r1, #2
	ldr r1, [sp, #0x10]
	ldr r2, [r1, r7]
	add r1, r4, #0
	add r1, #0x2c
	add r2, r2, r1
	add r1, sp, #0x18
	strh r2, [r1]
	ldr r1, [sp, #0x14]
	ldr r2, [r1, r7]
	add r1, sp, #0x18
	add r2, #0x20
	strh r2, [r1, #2]
	add r1, sp, #0x18
	mov r2, #1
	bl Oam_SetSpritePosData
	mov r0, #0xb1
	lsl r0, r0, #2
	sub r0, #0xb4
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_0204C520
	mov r0, #0xb1
	lsl r0, r0, #2
	sub r0, #0xb4
	add r6, #0xe
	lsl r1, r6, #0x10
	ldr r0, [r5, r0]
	lsr r1, r1, #0x10
	bl sub_0204C488
	ldr r0, _021EE894 ; =0x021F35F2
	add r3, r4, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0xb1
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	add r2, r4, #4
	add r3, #8
	str r0, [sp, #8]
	mov r0, #0xb1
	lsl r0, r0, #2
	sub r0, #0xb8
	ldr r0, [r5, r0]
	ldr r1, [r5, r4]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl Oam_CreateSprite
	mov r1, #0xb1
	lsl r1, r1, #2
	sub r1, #0xb0
	str r0, [r5, r1]
	add r4, #0x2c
	add r1, sp, #0x18
	strh r4, [r1]
	mov r2, #0x20
	strh r2, [r1, #2]
	add r1, sp, #0x18
	mov r2, #1
	bl Oam_SetSpritePosData
	mov r0, #0xb1
	lsl r0, r0, #2
	sub r0, #0xb0
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_0204C520
	mov r0, #0xb1
	lsl r0, r0, #2
	sub r0, #0xb0
	ldr r0, [r5, r0]
	mov r1, #0xe
	bl sub_0204C488
	ldr r1, [sp, #0xc]
	mov r0, #0xb1
	lsl r0, r0, #2
	ldr r1, [r1, r7]
	sub r0, #0xb0
	lsl r1, r1, #0x18
	ldr r0, [r5, r0]
	lsr r1, r1, #0x18
	mov r2, #0
	bl sub_0204C378
	ldr r0, _021EE898 ; =0x00001555
	ldr r3, _021EE89C ; =0x021F41C8
	str r0, [sp]
	mov r0, #0xb1
	lsl r0, r0, #2
	ldrh r1, [r5, r0]
	ldr r0, _021EE8A0 ; =0x00007FFF
	mov r2, #0
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #4
	bl GFL_HeapAllocate
	add r2, r0, #0
	str r5, [r2]
	ldr r0, [r5]
	ldr r1, _021EE8A4 ; =ovy168_21ed574
	mov r3, #0
	bl sub_0203A614
	add r1, r0, #0
	ldr r2, _021EE8A8 ; =ovy168_21ed5d8
	add r0, r5, #0
	bl ovy168_21ef3c0
	ldr r2, [r5, #0x68]
	mov r1, #0xe
	add r0, r2, #0
	bic r0, r1
	lsl r1, r2, #0x1c
	lsr r1, r1, #0x1d
	add r1, r1, #1
	lsl r1, r1, #0x1d
	lsr r1, r1, #0x1c
	orr r0, r1
	str r0, [r5, #0x68]
_021EE884:
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EE888: .word 0x021F37E0
_021EE88C: .word 0x021F37B8
_021EE890: .word 0x021F37CC
_021EE894: .word 0x021F35F2
_021EE898: .word 0x00001555
_021EE89C: .word 0x021F41C8
_021EE8A0: .word 0x00007FFF
_021EE8A4: .word ovy168_21ed574
_021EE8A8: .word ovy168_21ed5d8
	thumb_func_end ovy168_21ee708

	thumb_func_start ovy168_21ee8ac
ovy168_21ee8ac: ; 0x021EE8AC
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0x21
	add r6, r0, #0
	mov r4, #0
	lsl r7, r7, #4
_021EE8B6:
	lsl r0, r4, #2
	add r5, r6, r0
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _021EE8C8
	bl sub_0204C108
	mov r0, #0
	str r0, [r5, r7]
_021EE8C8:
	add r4, r4, #1
	cmp r4, #2
	blt _021EE8B6
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy168_21ee8ac

	thumb_func_start ovy168_21ee8d0
ovy168_21ee8d0: ; 0x021EE8D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	cmp r1, #1
	bne _021EE8F0
	mov r0, #0x53
	lsl r0, r0, #2
	add r7, r5, r0
	mov r0, #0x94
	add r2, sp, #0x24
	strh r0, [r2]
	mov r0, #0x30
	strh r0, [r2, #2]
	sub r0, #0x38
	mov r2, #4
	b _021EE904
_021EE8F0:
	mov r0, #0x47
	lsl r0, r0, #2
	add r7, r5, r0
	mov r2, #0x58
	add r0, sp, #0x24
	strh r2, [r0]
	mov r2, #0x88
	strh r2, [r0, #2]
	mov r0, #0x10
	mov r2, #0
_021EE904:
	str r2, [sp, #0x10]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #0x14]
	mov r0, #0x46
	lsl r0, r0, #2
	str r0, [sp, #0x20]
	sub r0, #0x14
	str r0, [sp, #0x20]
	mov r0, #0x46
	lsl r0, r0, #2
	str r0, [sp, #0x1c]
	sub r0, #0x10
	mov r2, #0x48
	str r0, [sp, #0x1c]
	mov r0, #0x46
	mul r2, r1
	lsl r0, r0, #2
	add r1, r5, r2
	str r0, [sp, #0x18]
	sub r0, #0xc
	mov r4, #0
	str r1, [sp, #0xc]
	str r0, [sp, #0x18]
_021EE934:
	ldr r0, _021EE9A4 ; =0x021F35F2
	ldr r1, [sp, #0x20]
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0xb1
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x18]
	str r0, [sp, #8]
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	lsl r6, r4, #3
	bl Oam_CreateSprite
	str r0, [r7, r6]
	add r1, sp, #0x24
	mov r2, #1
	bl Oam_SetSpritePosData
	ldr r0, [r7, r6]
	mov r1, #1
	bl sub_0204C520
	mov r1, #0xc
	add r2, r4, #0
	mul r2, r1
	ldr r1, [sp, #0xc]
	ldr r0, [r7, r6]
	add r1, r1, r2
	add r1, #0x75
	ldrb r2, [r1]
	ldr r1, [sp, #0x10]
	add r1, r1, r2
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0204C488
	add r1, sp, #0x24
	mov r0, #0
	ldrsh r1, [r1, r0]
	ldr r0, [sp, #0x14]
	add r4, r4, #1
	add r1, r1, r0
	add r0, sp, #0x24
	strh r1, [r0]
	cmp r4, #6
	blt _021EE934
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EE9A4: .word 0x021F35F2
	thumb_func_end ovy168_21ee8d0

	thumb_func_start ovy168_21ee9a8
ovy168_21ee9a8: ; 0x021EE9A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r7, r0, #0
	mov r0, #0x47
	lsl r0, r0, #2
	str r0, [sp, #8]
	add r0, #0x30
	str r0, [sp, #8]
_021EE9BE:
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _021EE9CA
	ldr r1, [sp]
	ldr r0, [sp, #8]
	b _021EE9D0
_021EE9CA:
	mov r0, #0x47
	ldr r1, [sp]
	lsl r0, r0, #2
_021EE9D0:
	add r5, r1, r0
	mov r4, #0
_021EE9D4:
	lsl r6, r4, #3
	ldr r0, [r5, r6]
	cmp r0, #0
	beq _021EE9E2
	bl sub_0204C108
	str r7, [r5, r6]
_021EE9E2:
	add r4, r4, #1
	cmp r4, #6
	blt _021EE9D4
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #2
	blt _021EE9BE
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy168_21ee9a8

	thumb_func_start ovy168_21ee9f8
ovy168_21ee9f8: ; 0x021EE9F8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	ldr r3, _021EEAAC ; =0x021F37F4
	add r2, sp, #0x28
	add r5, r0, #0
	str r2, [sp, #0xc]
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, #0x5f
	lsl r0, r0, #2
	str r0, [sp, #0x24]
	sub r0, #0x6c
	str r0, [sp, #0x24]
	mov r0, #0x5f
	lsl r0, r0, #2
	str r0, [sp, #0x20]
	sub r0, #0x74
	str r0, [sp, #0x20]
	mov r0, #0x5f
	lsl r0, r0, #2
	str r0, [sp, #0x1c]
	sub r0, #0x68
	str r0, [sp, #0x1c]
	mov r0, #0x5f
	lsl r0, r0, #2
	add r0, r0, #4
	str r0, [sp, #0x18]
	mov r0, #0x5f
	lsl r0, r0, #2
	add r0, r0, #4
	str r0, [sp, #0x14]
	mov r0, #0x5f
	lsl r0, r0, #2
	add r0, r0, #4
	str r0, [sp, #0x10]
	mov r0, #0x5f
	lsl r0, r0, #2
	mov r6, #0
	add r7, r0, #4
_021EEA4E:
	lsl r0, r6, #3
	add r4, r5, r0
	ldr r0, _021EEAB0 ; =0x021F35F2
	ldr r1, [sp, #0x24]
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0xb1
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x1c]
	str r0, [sp, #8]
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl Oam_CreateSprite
	ldr r1, [sp, #0x18]
	str r0, [r4, r1]
	ldr r0, [sp, #0x14]
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_0204C520
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	lsl r2, r6, #2
	ldr r1, [r1, r2]
	ldr r0, [r4, r0]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0204C488
	ldr r0, [r4, r7]
	mov r1, #0
	bl sub_0204C124
	add r6, r6, #1
	cmp r6, #6
	blt _021EEA4E
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EEAAC: .word 0x021F37F4
_021EEAB0: .word 0x021F35F2
	thumb_func_end ovy168_21ee9f8

	thumb_func_start ovy168_21eeab4
ovy168_21eeab4: ; 0x021EEAB4
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #6
	add r6, r0, #0
	mov r4, #0
	lsl r7, r7, #6
_021EEABE:
	lsl r0, r4, #3
	add r5, r6, r0
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _021EEAD0
	bl sub_0204C108
	mov r0, #0
	str r0, [r5, r7]
_021EEAD0:
	add r4, r4, #1
	cmp r4, #6
	blt _021EEABE
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy168_21eeab4

	thumb_func_start ovy168_21eead8
ovy168_21eead8: ; 0x021EEAD8
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0x7f
	add r6, r0, #0
	mov r4, #0
	lsl r7, r7, #2
_021EEAE2:
	lsl r0, r4, #2
	add r5, r6, r0
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _021EEAF4
	bl sub_0204C108
	mov r0, #0
	str r0, [r5, r7]
_021EEAF4:
	add r4, r4, #1
	cmp r4, #4
	blt _021EEAE2
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy168_21eead8

	thumb_func_start ovy168_21eeafc
ovy168_21eeafc: ; 0x021EEAFC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x64
	add r6, r0, #0
	ldr r0, _021EECA0 ; =0x021F35F2
	mov r7, #0xb1
	str r0, [sp]
	mov r0, #1
	mov r1, #0x41
	lsl r1, r1, #2
	str r1, [sp, #0x20]
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x20]
	lsl r7, r7, #2
	str r0, [sp, #4]
	ldrh r0, [r6, r7]
	add r2, r2, #4
	add r3, #8
	str r0, [sp, #8]
	add r0, r7, #0
	sub r0, #0xac
	ldr r0, [r6, r0]
	ldr r1, [r6, r1]
	ldr r2, [r6, r2]
	ldr r3, [r6, r3]
	bl Oam_CreateSprite
	add r1, r7, #0
	sub r1, #0xa8
	str r0, [r6, r1]
	mov r1, #0x80
	add r4, sp, #0x30
	strh r1, [r4, #0xc]
	mov r1, #0x50
	strh r1, [r4, #0xe]
	add r1, sp, #0x3c
	mov r2, #1
	bl Oam_SetSpritePosData
	add r0, r7, #0
	sub r0, #0xa8
	ldr r0, [r6, r0]
	mov r1, #1
	bl sub_0204C520
	add r0, r7, #0
	sub r0, #0xa8
	ldr r0, [r6, r0]
	mov r1, #0x14
	bl sub_0204C488
	ldrh r1, [r6, r7]
	mov r0, #0x10
	bl GFL_StrBufCreate
	str r0, [sp, #0x18]
	ldr r0, [r6, #0x5c]
	mov r1, #0
	mov r5, #0
	bl sub_0204898C
	str r0, [sp, #0x14]
	ldrh r0, [r6, r7]
	bl GFL_WordSetSystemCreateDefault
	str r0, [sp, #0x10]
	ldrh r3, [r6, r7]
	mov r0, #0xe
	mov r1, #4
	mov r2, #0x20
	bl sub_02046E28
	mov r1, #0
	str r0, [sp, #0xc]
	bl BmpWin_BitmapFill
	add r0, sp, #0x30
	add r1, sp, #0x30
	add r0, #2
	add r1, #1
	add r2, sp, #0x30
	bl sub_02023370
	mov r0, #0xe
	mov r1, #0xa
	mov r2, #0
	bl sub_020232E8
	ldr r0, [sp, #0x10]
	mov r1, #0
	mov r2, #0xa5
	bl LoadMoveNameToStrbuf
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x14]
	bl GFL_WordSetFormatStrbuf
	add r1, r7, #0
	sub r1, #0x1c
	ldr r0, [sp, #0x18]
	ldr r1, [r6, r1]
	add r2, sp, #0x38
	add r3, sp, #0x34
	bl ovy168_21ed7f4
	add r0, r7, #0
	sub r0, #0x1c
	ldr r0, [r6, r0]
	ldr r3, [sp, #0x18]
	str r0, [sp]
	ldr r2, [sp, #0x38]
	ldr r0, [sp, #0xc]
	lsr r1, r2, #0x1f
	add r1, r2, r1
	asr r2, r1, #1
	mov r1, #0x38
	sub r1, r1, r2
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	mov r2, #8
	bl sub_02021CFC
	ldrb r0, [r4, #2]
	ldrb r1, [r4, #1]
	ldrb r2, [r4]
	bl sub_020232E8
	ldr r0, [sp, #0xc]
	bl sub_02046EF4
	sub r7, #0xa8
	add r4, r0, #0
	ldr r0, [r6, r7]
	add r1, sp, #0x40
	bl sub_0204C40C
	ldr r0, [sp, #0x20]
	mov r7, #0x66
	sub r0, r0, #4
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	lsl r7, r7, #0x14
	str r0, [sp, #0x2c]
	add r0, #0xbc
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x20]
	sub r0, r0, #4
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x20]
	str r0, [sp, #0x24]
	add r0, #0x7c
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x20]
	add r0, #0xa
	str r0, [sp, #0x20]
_021EEC32:
	lsl r2, r5, #3
	add r2, #0xde
	lsl r2, r2, #5
	ldr r0, [sp, #0x2c]
	add r6, r5, #0
	mul r6, r0
	ldr r1, [sp, #0x48]
	add r2, r7, r2
	add r1, r1, r2
	ldr r2, [sp, #0x1c]
	add r0, r4, r6
	blx MIi_CpuCopy16
	lsl r2, r5, #2
	ldr r0, [sp, #0x28]
	add r2, #0xfe
	lsl r2, r2, #5
	add r0, r6, r0
	ldr r1, [sp, #0x48]
	add r2, r7, r2
	add r1, r1, r2
	add r0, r4, r0
	mov r2, #0x80
	blx MIi_CpuCopy16
	ldr r0, [sp, #0x24]
	ldr r2, [sp, #0x20]
	lsl r3, r5, #1
	add r2, r3, r2
	lsl r2, r2, #5
	add r0, r6, r0
	ldr r1, [sp, #0x48]
	add r2, r7, r2
	add r1, r1, r2
	add r0, r4, r0
	mov r2, #0x40
	blx MIi_CpuCopy16
	add r5, r5, #1
	cmp r5, #4
	blt _021EEC32
	ldr r0, [sp, #0x18]
	bl GFL_StrBufFree
	ldr r0, [sp, #0x14]
	bl GFL_StrBufFree
	ldr r0, [sp, #0x10]
	bl GFL_WordSetSystemFree
	ldr r0, [sp, #0xc]
	bl sub_02046EDC
	add sp, #0x64
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021EECA0: .word 0x021F35F2
	thumb_func_end ovy168_21eeafc

	thumb_func_start ovy168_21eeca4
ovy168_21eeca4: ; 0x021EECA4
	push {r3, r4, r5, lr}
	mov r5, #0x87
	add r4, r0, #0
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021EECBA
	bl sub_0204C108
	mov r0, #0
	str r0, [r4, r5]
_021EECBA:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy168_21eeca4

	thumb_func_start ovy168_21eecbc
ovy168_21eecbc: ; 0x021EECBC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, [sp, #0x28]
	str r1, [sp]
	str r2, [sp, #4]
	add r5, r3, #0
	str r0, [sp, #0x28]
	bl GCTX_HIDGetPressedKeys
	add r7, r0, #0
	bl sub_0203DF20
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [r4, #0x6c]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bne _021EECE8
	mov r0, #2
	bic r7, r0
_021EECE8:
	ldr r1, [r4, #0x68]
	lsl r0, r1, #0x12
	lsr r0, r0, #0x1f
	beq _021EED14
	ldr r0, _021EEF88 ; =0xFFFFDFFF
	and r0, r1
	str r0, [r4, #0x68]
	add r0, r4, #0
	bl ovy168_21ef4c4
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r1, [r1]
	add r0, r4, #0
	bl ovy168_21ef048
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0204BFD4
_021EED14:
	mov r6, #0
	ldr r0, [sp, #0x28]
	mvn r6, r6
	cmp r0, r6
	beq _021EED4C
	mov r0, #0xbe
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	strb r1, [r0]
	ldr r1, [r4, #0x68]
	ldr r0, _021EEF8C ; =0xFFFFFE1F
	ldr r2, [sp, #4]
	and r1, r0
	ldr r0, _021EEF90 ; =0xFFFFE1FF
	and r1, r0
	mov r0, #0x1e
	lsl r0, r0, #8
	orr r0, r1
	ldr r1, [sp]
	str r0, [r4, #0x68]
	ldr r1, [r1]
	add r0, r4, #0
	bl ovy168_21ef048
	ldr r0, [sp, #0x28]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021EED4C:
	cmp r7, #0
	bne _021EED52
	b _021EEF08
_021EED52:
	mov r0, #0xbe
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldrb r1, [r0]
	cmp r1, #0
	bne _021EED60
	b _021EEEE6
_021EED60:
	ldr r3, [r4, #0x68]
	mov r1, #0xc
	lsl r0, r3, #0x17
	lsr r0, r0, #0x1c
	mul r1, r0
	ldr r0, [sp, #4]
	sub r6, #0x7f
	add r0, r0, r1
	cmp r7, #0x20
	bgt _021EED84
	bge _021EED9C
	cmp r7, #2
	bgt _021EED7E
	beq _021EEDA4
	b _021EEDBE
_021EED7E:
	cmp r7, #0x10
	beq _021EEDA0
	b _021EEDBE
_021EED84:
	cmp r7, #0x40
	bgt _021EED8C
	beq _021EED92
	b _021EEDBE
_021EED8C:
	cmp r7, #0x80
	beq _021EED98
	b _021EEDBE
_021EED92:
	mov r1, #6
_021EED94:
	ldrsb r6, [r0, r1]
	b _021EEDBE
_021EED98:
	mov r1, #7
	b _021EED94
_021EED9C:
	mov r1, #8
	b _021EED94
_021EEDA0:
	mov r1, #9
	b _021EED94
_021EEDA4:
	mov r1, #0xb
	ldrsb r2, [r0, r1]
	cmp r2, #0
	bge _021EEDBC
	lsl r1, r3, #0x1b
	lsr r1, r1, #0x1f
	cmp r1, #1
	bne _021EEDBE
	neg r1, r2
	lsl r1, r1, #0x18
	asr r6, r1, #0x18
	b _021EEDBE
_021EEDBC:
	add r6, r2, #0
_021EEDBE:
	cmp r7, #1
	bne _021EEE5C
	mov r1, #0xa
	ldrsb r0, [r0, r1]
	str r0, [sp, #0x28]
	cmp r0, #4
	bge _021EEDEC
	mov r1, #2
	ldr r0, [sp, #0xc]
	lsl r1, r1, #8
	tst r0, r1
	beq _021EEDEC
	ldr r0, [r4, #0x58]
	cmp r0, #5
	bne _021EEDEC
	ldr r0, [sp, #0x2c]
	cmp r0, #1
	beq _021EEDEA
	add r1, #0x20
	ldr r0, [r4, r1]
	cmp r0, #1
	bne _021EEDEC
_021EEDEA:
	b _021EEEFC
_021EEDEC:
	ldr r0, [sp, #0x28]
	cmp r0, #4
	bge _021EEE08
	mov r1, #2
	ldr r0, [sp, #0xc]
	lsl r1, r1, #8
	tst r0, r1
	beq _021EEE08
	ldr r0, [r4, #0x58]
	cmp r0, #2
	bne _021EEE08
	ldr r0, [sp, #0x2c]
	cmp r0, #1
	beq _021EEEFC
_021EEE08:
	ldr r0, [sp, #0x28]
	ldr r3, _021EEF94 ; =0x000002DE
	add r0, r4, r0
	ldrb r1, [r0, r3]
	cmp r1, #1
	bne _021EEE36
	ldr r1, [sp]
	ldr r2, [sp, #0x28]
	add r0, r4, #0
	bl ovy168_21ef47c
	cmp r0, #0
	bne _021EEE2A
	add r0, r4, #0
	bl ovy168_21ef71c
	b _021EEE30
_021EEE2A:
	add r0, r4, #0
	bl ovy168_21ef734
_021EEE30:
	mov r0, #1
	str r0, [sp, #8]
	b _021EEEFC
_021EEE36:
	ldr r1, [sp, #0x28]
	cmp r1, #4
	bge _021EEEFC
	add r2, r3, #0
	ldr r1, [sp, #0xc]
	sub r2, #0xde
	tst r1, r2
	beq _021EEEFC
	ldr r1, [r4, #0x58]
	cmp r1, #2
	bne _021EEEFC
	add r3, #8
	ldrb r0, [r0, r3]
	cmp r0, #1
	bne _021EEEFC
	add r0, r4, #0
	bl ovy168_21ef71c
	b _021EEEFC
_021EEE5C:
	mov r0, #0x7f
	mvn r0, r0
	cmp r6, r0
	beq _021EEEFC
	add r0, r4, #0
	bl ovy168_21ef704
	cmp r6, #0
	bge _021EEE8C
	ldr r0, [r4, #0x68]
	lsl r0, r0, #0x13
	lsr r1, r0, #0x1c
	neg r0, r6
	cmp r0, r1
	beq _021EEE84
	cmp r1, #0xf
	beq _021EEE84
_021EEE7E:
	lsl r0, r1, #0x18
	asr r6, r0, #0x18
	b _021EEEB4
_021EEE84:
	mov r0, #0
	mvn r0, r0
	mul r6, r0
	b _021EEEB4
_021EEE8C:
	mov r0, #0x40
	tst r0, r6
	beq _021EEEB4
	mov r1, #0x40
	bic r6, r1
	ldrb r1, [r5]
	mov r0, #0
	cmp r1, #0xff
	beq _021EEEB4
	ldr r1, [r4, #0x68]
	lsl r1, r1, #0x13
	lsr r1, r1, #0x1c
_021EEEA4:
	ldrb r2, [r5, r0]
	cmp r1, r2
	bne _021EEEAC
	b _021EEE7E
_021EEEAC:
	add r0, r0, #1
	ldrb r2, [r5, r0]
	cmp r2, #0xff
	bne _021EEEA4
_021EEEB4:
	ldr r2, [r4, #0x68]
	ldr r1, _021EEF90 ; =0xFFFFE1FF
	add r0, r2, #0
	lsl r2, r2, #0x17
	lsr r2, r2, #0x1c
	lsl r2, r2, #0x1c
	and r0, r1
	lsr r2, r2, #0x13
	orr r2, r0
	asr r0, r1, #4
	add r1, r2, #0
	and r1, r0
	lsl r0, r6, #0x1c
	lsr r0, r0, #0x17
	orr r0, r1
	str r0, [r4, #0x68]
	cmp r7, #2
	bne _021EEEFC
	cmp r6, #0xf
	beq _021EEEE2
	add r0, r4, #0
	bl ovy168_21ef734
_021EEEE2:
	str r6, [sp, #0x28]
	b _021EEE30
_021EEEE6:
	ldr r1, _021EEF98 ; =0x00000CF3
	tst r1, r7
	beq _021EEEFC
	mov r1, #1
	strb r1, [r0]
	add r0, r4, #0
	bl ovy168_21ef4c4
	add r0, r4, #0
	bl ovy168_21ef704
_021EEEFC:
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r1, [r1]
	add r0, r4, #0
	bl ovy168_21ef048
_021EEF08:
	ldr r0, [sp, #8]
	cmp r0, #1
	bne _021EEFF8
	ldr r0, [r4, #0x58]
	cmp r0, #5
	bhi _021EEFD4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EEF20: ; jump table
	.short _021EEFD4 - _021EEF20 - 2 ; case 0
	.short _021EEF5C - _021EEF20 - 2 ; case 1
	.short _021EEF2C - _021EEF20 - 2 ; case 2
	.short _021EEF9C - _021EEF20 - 2 ; case 3
	.short _021EEFD4 - _021EEF20 - 2 ; case 4
	.short _021EEF5C - _021EEF20 - 2 ; case 5
_021EEF2C:
	ldr r2, [r4, #0x68]
	ldr r1, [sp]
	lsl r2, r2, #0x17
	add r0, r4, #0
	lsr r2, r2, #0x1c
	bl ovy168_21ef47c
	cmp r0, #0
	bne _021EEF5C
	ldr r0, [r4, #0x68]
	mov r1, #0x2f
	lsl r0, r0, #0x17
	lsl r1, r1, #4
	lsr r0, r0, #0x1c
	add r2, r1, #0
	lsl r0, r0, #1
	add r2, #0x10
	add r0, r4, r0
	ldr r2, [r4, r2]
	ldrh r0, [r0, r1]
	lsl r2, r2, #1
	add r2, r4, r2
	sub r1, r1, #6
	strh r0, [r2, r1]
_021EEF5C:
	ldr r2, [r4, #0x68]
	ldr r1, [sp]
	lsl r2, r2, #0x17
	add r0, r4, #0
	lsr r2, r2, #0x1c
	bl ovy168_21ef47c
	cmp r0, #0
	bne _021EEF86
	mov r1, #3
	lsl r1, r1, #8
	ldr r2, [r4, r1]
	ldr r0, [r4, #0x68]
	lsl r2, r2, #3
	add r3, r4, r2
	ldr r2, [r4, #0x58]
	lsl r0, r0, #0x17
	lsr r0, r0, #0x1c
	add r2, r3, r2
	sub r1, #0x3a
	strb r0, [r2, r1]
_021EEF86:
	b _021EEFCC
	.align 2, 0
_021EEF88: .word 0xFFFFDFFF
_021EEF8C: .word 0xFFFFFE1F
_021EEF90: .word 0xFFFFE1FF
_021EEF94: .word 0x000002DE
_021EEF98: .word 0x00000CF3
_021EEF9C:
	ldr r1, [sp]
	ldr r2, [sp, #0x28]
	add r0, r4, #0
	bl ovy168_21ef47c
	cmp r0, #0
	bne _021EEFCC
	mov r1, #3
	lsl r1, r1, #8
	ldr r0, [r4, r1]
	lsl r2, r0, #3
	ldr r0, [r4, #0x68]
	add r2, r4, r2
	lsl r0, r0, #0x17
	lsr r3, r0, #0x1c
	add r0, r1, #0
	sub r0, #0x38
	ldrb r0, [r2, r0]
	sub r1, #0x3a
	lsl r0, r0, #4
	orr r3, r0
	ldr r0, [r4, #0x58]
	add r0, r2, r0
	strb r3, [r0, r1]
_021EEFCC:
	ldr r1, [r4, #0x6c]
	mov r0, #2
	orr r0, r1
	str r0, [r4, #0x6c]
_021EEFD4:
	ldr r1, [r4, #0x68]
	ldr r0, _021EF000 ; =0xFFFFFE1F
	and r1, r0
	ldr r0, _021EF004 ; =0xFFFFE1FF
	and r1, r0
	mov r0, #0x1e
	lsl r0, r0, #8
	orr r1, r0
	mov r0, #2
	lsl r0, r0, #0xc
	orr r0, r1
	str r0, [r4, #0x68]
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0204BFD4
_021EEFF8:
	ldr r0, [sp, #0x28]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EF000: .word 0xFFFFFE1F
_021EF004: .word 0xFFFFE1FF
	thumb_func_end ovy168_21eecbc

	thumb_func_start ovy168_21ef008
ovy168_21ef008: ; 0x021EF008
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0203DF44
	mov r5, #2
	add r1, r0, #0
	tst r1, r5
	beq _021EF022
	add r0, r4, #0
	bl ovy168_21ef734
	add r0, r5, #0
	pop {r3, r4, r5, pc}
_021EF022:
	mov r1, #0x20
	tst r1, r0
	beq _021EF032
	add r0, r4, #0
	bl ovy168_21ef71c
	mov r0, #0
	pop {r3, r4, r5, pc}
_021EF032:
	mov r1, #0x10
	tst r0, r1
	beq _021EF042
	add r0, r4, #0
	bl ovy168_21ef71c
	mov r0, #1
	pop {r3, r4, r5, pc}
_021EF042:
	sub r1, #0x11
	add r0, r1, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy168_21ef008

	thumb_func_start ovy168_21ef048
ovy168_21ef048: ; 0x021EF048
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	str r1, [sp]
	str r2, [sp, #4]
	mov r4, #0
	add r5, sp, #8
_021EF056:
	ldr r0, [r6, #0x68]
	lsl r0, r0, #0x17
	lsr r1, r0, #0x1c
	mov r0, #0xc
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp, #4]
	add r0, r0, r2
	ldrsb r0, [r4, r0]
	cmp r0, #0
	blt _021EF0D0
	lsl r1, r0, #2
	ldr r0, [sp]
	add r0, r0, r1
	cmp r4, #5
	bhi _021EF0AA
	add r1, r4, r4
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021EF082: ; jump table
	.short _021EF08E - _021EF082 - 2 ; case 0
	.short _021EF096 - _021EF082 - 2 ; case 1
	.short _021EF09A - _021EF082 - 2 ; case 2
	.short _021EF09E - _021EF082 - 2 ; case 3
	.short _021EF0A0 - _021EF082 - 2 ; case 4
	.short _021EF0A2 - _021EF082 - 2 ; case 5
_021EF08E:
	ldrb r1, [r0, #2]
_021EF090:
	strh r1, [r5]
	ldrb r0, [r0]
	b _021EF0A8
_021EF096:
	ldrb r1, [r0, #3]
	b _021EF090
_021EF09A:
	ldrb r1, [r0, #2]
	b _021EF0A4
_021EF09E:
	b _021EF0A2
_021EF0A0:
	b _021EF09A
_021EF0A2:
	ldrb r1, [r0, #3]
_021EF0A4:
	ldrb r0, [r0, #1]
	strh r1, [r5]
_021EF0A8:
	strh r0, [r5, #2]
_021EF0AA:
	mov r1, #0xbe
	lsl r1, r1, #2
	lsl r0, r4, #3
	ldr r1, [r6, r1]
	add r7, r6, r0
	mov r0, #6
	lsl r0, r0, #6
	ldrb r1, [r1]
	ldr r0, [r7, r0]
	bl sub_0204C124
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r7, r0]
	add r1, sp, #8
	mov r2, #1
	bl Oam_SetSpritePosData
	b _021EF0E0
_021EF0D0:
	lsl r0, r4, #3
	add r1, r6, r0
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_0204C124
_021EF0E0:
	add r4, r4, #1
	cmp r4, #6
	blt _021EF056
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy168_21ef048

	thumb_func_start ovy168_21ef0ec
ovy168_21ef0ec: ; 0x021EF0EC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	bpl _021EF0FA
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_021EF0FA:
	bl sub_0203DF20
	mov r1, #2
	lsl r1, r1, #8
	tst r0, r1
	beq _021EF11E
	cmp r5, #4
	bge _021EF11E
	ldr r0, [r4, #0x58]
	cmp r0, #2
	beq _021EF114
	cmp r0, #5
	bne _021EF11E
_021EF114:
	mov r0, #2
	lsl r0, r0, #0xe
	orr r0, r5
	str r0, [r4, #0x70]
	b _021EF120
_021EF11E:
	str r5, [r4, #0x70]
_021EF120:
	ldr r0, _021EF198 ; =0x000017DB
	ldr r3, _021EF19C ; =0x021F41C8
	str r0, [sp]
	mov r0, #0xb1
	lsl r0, r0, #2
	ldrh r1, [r4, r0]
	ldr r0, _021EF1A0 ; =0x00007FFF
	mov r7, #0x10
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0x10
	mov r2, #0
	mov r5, #0
	bl GFL_HeapAllocate
	add r2, r0, #0
	lsl r0, r7, #0xc
	tst r0, r6
	bne _021EF14E
	mov r5, #1
_021EF14E:
	ldr r1, [r4, #0x68]
	ldr r0, _021EF1A4 ; =0x7FFFFFFF
	and r1, r0
	lsl r0, r5, #0x1f
	orr r0, r1
	str r0, [r4, #0x68]
	str r4, [r2]
	mov r0, #0
	str r0, [r2, #4]
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	str r0, [r2, #8]
	mov r0, #0x22
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _021EF17A
	ldr r0, [r2, #8]
	cmp r0, #0
	bne _021EF17A
	mov r0, #1
	b _021EF17C
_021EF17A:
	mov r0, #0
_021EF17C:
	str r0, [r2, #0xc]
	ldr r0, [r4]
	ldr r1, _021EF1A8 ; =ovy168_21ef1b0
	mov r3, #0
	mov r5, #0
	bl sub_0203A614
	add r1, r0, #0
	ldr r2, _021EF1AC ; =ovy168_21ef284
	add r0, r4, #0
	bl ovy168_21ef3c0
	sub r0, r5, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EF198: .word 0x000017DB
_021EF19C: .word 0x021F41C8
_021EF1A0: .word 0x00007FFF
_021EF1A4: .word 0x7FFFFFFF
_021EF1A8: .word ovy168_21ef1b0
_021EF1AC: .word ovy168_21ef284
	thumb_func_end ovy168_21ef0ec

	thumb_func_start ovy168_21ef1b0
ovy168_21ef1b0: ; 0x021EF1B0
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021EF1CA
	cmp r0, #1
	beq _021EF212
	cmp r0, #2
	beq _021EF266
	add sp, #0x10
	pop {r3, r4, r5, pc}
_021EF1CA:
	ldr r0, [r4, #0xc]
	cmp r0, #1
	bne _021EF1E8
	ldr r2, [r4]
	mov r3, #0
	str r3, [sp]
	mov r1, #8
	ldr r0, _021EF280 ; =0x00007FFF
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r2]
	str r0, [sp, #0xc]
	ldr r0, [r2, #0x64]
	mov r2, #2
	b _021EF204
_021EF1E8:
	ldr r1, [r4]
	mov r3, #0
	str r3, [sp]
	mov r0, #8
	str r0, [sp, #4]
	ldr r0, _021EF280 ; =0x00007FFF
	str r0, [sp, #8]
	ldr r0, [r1]
	str r0, [sp, #0xc]
	ldr r2, [r4, #8]
	ldr r0, [r1, #0x64]
	lsl r2, r2, #0x10
	mov r1, #2
	lsr r2, r2, #0x10
_021EF204:
	bl sub_02026FE4
	ldr r0, [r4, #4]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
_021EF212:
	ldr r0, [r4]
	ldr r0, [r0, #0x64]
	bl sub_02027780
	cmp r0, #0
	bne _021EF27A
	ldr r0, [r4, #0xc]
	cmp r0, #1
	bne _021EF23C
	ldr r2, [r4]
	mov r1, #8
	str r1, [sp]
	mov r3, #0
	ldr r0, _021EF280 ; =0x00007FFF
	str r3, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r2]
	str r0, [sp, #0xc]
	ldr r0, [r2, #0x64]
	mov r2, #2
	b _021EF258
_021EF23C:
	ldr r1, [r4]
	mov r0, #8
	str r0, [sp]
	mov r3, #0
	ldr r0, _021EF280 ; =0x00007FFF
	str r3, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r1]
	str r0, [sp, #0xc]
	ldr r2, [r4, #8]
	ldr r0, [r1, #0x64]
	lsl r2, r2, #0x10
	mov r1, #2
	lsr r2, r2, #0x10
_021EF258:
	bl sub_02026FE4
	ldr r0, [r4, #4]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
_021EF266:
	ldr r0, [r4]
	ldr r0, [r0, #0x64]
	bl sub_02027780
	cmp r0, #0
	bne _021EF27A
	ldr r0, [r4]
	add r1, r5, #0
	bl ovy168_21ef3f0
_021EF27A:
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_021EF280: .word 0x00007FFF
	thumb_func_end ovy168_21ef1b0

	thumb_func_start ovy168_21ef284
ovy168_21ef284: ; 0x021EF284
	push {r3, lr}
	bl sub_0203A6D0
	ldr r2, [r0]
	ldr r0, _021EF298 ; =0x7FFFFFFF
	ldr r1, [r2, #0x68]
	and r0, r1
	str r0, [r2, #0x68]
	pop {r3, pc}
	nop
_021EF298: .word 0x7FFFFFFF
	thumb_func_end ovy168_21ef284

	thumb_func_start ovy168_21ef29c
ovy168_21ef29c: ; 0x021EF29C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r7, r1, #0
	bl ovy168_21e02e4
	cmp r0, #0
	beq _021EF356
	mov r4, #0xb1
	lsl r4, r4, #2
	ldrh r0, [r5, r4]
	bl GFL_WordSetSystemCreateDefault
	str r0, [sp, #8]
	ldrh r1, [r5, r4]
	mov r0, #6
	bl GFL_StrBufCreate
	add r6, r0, #0
	ldr r0, [r5, #0x5c]
	mov r1, #8
	bl sub_0204898C
	str r0, [sp, #0xc]
	add r0, sp, #0x10
	add r1, sp, #0x10
	add r0, #2
	add r1, #1
	add r2, sp, #0x10
	bl sub_02023370
	mov r0, #1
	mov r1, #2
	mov r2, #0
	bl sub_020232E8
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r7, #0xc4
	ldrb r2, [r7]
	ldr r0, [sp, #8]
	mov r1, #0
	mov r3, #2
	bl StringSetNumber
	ldr r0, [sp, #8]
	ldr r2, [sp, #0xc]
	add r1, r6, #0
	bl GFL_WordSetFormatStrbuf
	add r1, r4, #0
	sub r1, #0x1c
	ldr r1, [r5, r1]
	add r0, r6, #0
	add r2, sp, #0x18
	add r3, sp, #0x14
	bl ovy168_21ed7f4
	add r0, r4, #0
	sub r0, #0x1c
	ldr r0, [r5, r0]
	sub r4, #0xc
	str r0, [sp]
	ldr r2, [sp, #0x18]
	ldr r0, [r5, r4]
	lsr r1, r2, #0x1f
	add r1, r2, r1
	asr r2, r1, #1
	mov r1, #0xc
	sub r1, r1, r2
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	mov r2, #0
	add r3, r6, #0
	bl sub_02021CFC
	add r2, sp, #0x10
	ldrb r0, [r2, #2]
	ldrb r1, [r2, #1]
	ldrb r2, [r2]
	bl sub_020232E8
	ldr r0, [sp, #8]
	bl GFL_WordSetSystemFree
	ldr r0, [sp, #0xc]
	bl GFL_StrBufFree
	add r0, r6, #0
	bl GFL_StrBufFree
_021EF356:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy168_21ef29c

	thumb_func_start ovy168_21ef35c
ovy168_21ef35c: ; 0x021EF35C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #2
	bl ovy168_21e04b0
	mov r0, #8
	str r0, [sp]
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	mov r2, #0xa
	mov r3, #0
	bl ovy168_21dff2c
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ovy168_21ef35c

	thumb_func_start ovy168_21ef380
ovy168_21ef380: ; 0x021EF380
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl ovy168_21e008c
	mov r4, #0xbf
	lsl r4, r4, #2
	ldr r1, [r5, r4]
	bl ovy168_21f0b74
	add r6, r0, #0
	bl ovy168_21e006c
	ldr r1, [r5, r4]
	bl ovy168_21e8364
	orr r0, r6
	cmp r0, #1
	bne _021EF3BC
	mov r1, #0
	add r2, r4, #4
	add r0, r1, #0
	sub r4, #0x36
_021EF3AC:
	ldr r3, [r5, r2]
	lsl r3, r3, #3
	add r3, r5, r3
	add r3, r1, r3
	add r1, r1, #1
	strb r0, [r3, r4]
	cmp r1, #8
	blt _021EF3AC
_021EF3BC:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy168_21ef380

	thumb_func_start ovy168_21ef3c0
ovy168_21ef3c0: ; 0x021EF3C0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl ovy168_21ef438
	lsl r0, r0, #2
	add r0, r5, r0
	str r4, [r0, #8]
	str r6, [r0, #0x28]
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy168_21ef3c0

	thumb_func_start ovy168_21ef3d8
ovy168_21ef3d8: ; 0x021EF3D8
	mov r3, #0
_021EF3DA:
	lsl r2, r3, #2
	add r2, r0, r2
	ldr r2, [r2, #8]
	cmp r2, r1
	beq _021EF3EA
	add r3, r3, #1
	cmp r3, #8
	blt _021EF3DA
_021EF3EA:
	add r0, r3, #0
	bx lr
	.align 2, 0
	thumb_func_end ovy168_21ef3d8

	thumb_func_start ovy168_21ef3f0
ovy168_21ef3f0: ; 0x021EF3F0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	bl ovy168_21ef3d8
	add r4, r0, #0
	cmp r5, #0
	beq _021EF436
	add r0, r5, #0
	bl sub_0203A6D0
	add r7, r0, #0
	add r0, r6, #0
	str r0, [sp]
	add r0, #0x28
	lsl r4, r4, #2
	ldr r1, [r0, r4]
	str r0, [sp]
	cmp r1, #0
	beq _021EF41C
	add r0, r5, #0
	blx r1
_021EF41C:
	cmp r7, #0
	beq _021EF426
	add r0, r7, #0
	bl GFL_HeapFree
_021EF426:
	add r0, r5, #0
	bl GFL_TCBRemove
	mov r1, #0
	add r0, r6, r4
	str r1, [r0, #8]
	ldr r0, [sp]
	str r1, [r0, r4]
_021EF436:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy168_21ef3f0

	thumb_func_start ovy168_21ef438
ovy168_21ef438: ; 0x021EF438
	push {r3, lr}
	mov r2, #0
_021EF43C:
	lsl r1, r2, #2
	add r1, r0, r1
	ldr r1, [r1, #8]
	cmp r1, #0
	beq _021EF44C
	add r2, r2, #1
	cmp r2, #8
	blt _021EF43C
_021EF44C:
	cmp r2, #8
	bne _021EF458
	ldr r1, [r0, #8]
	bl ovy168_21ef3f0
	mov r2, #0
_021EF458:
	add r0, r2, #0
	pop {r3, pc}
	thumb_func_end ovy168_21ef438

	thumb_func_start ovy168_21ef45c
ovy168_21ef45c: ; 0x021EF45C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_021EF462:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _021EF472
	add r0, r5, #0
	bl ovy168_21ef3f0
_021EF472:
	add r4, r4, #1
	cmp r4, #8
	blt _021EF462
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy168_21ef45c

	thumb_func_start ovy168_21ef47c
ovy168_21ef47c: ; 0x021EF47C
	push {r4, r5}
	ldr r3, [r0, #0x68]
	lsl r3, r3, #0x1b
	lsr r3, r3, #0x1f
	beq _021EF48C
	ldr r3, [r0, #0x58]
	cmp r3, #1
	beq _021EF49A
_021EF48C:
	ldr r1, [r1, #4]
	lsl r0, r2, #2
	ldr r1, [r1, r0]
	mov r0, #1
	and r0, r1
	pop {r4, r5}
	bx lr
_021EF49A:
	ldr r4, [r1, #4]
	lsl r1, r2, #2
	ldr r2, [r4, r1]
	mov r1, #2
	and r1, r2
	asr r2, r1, #1
	cmp r2, #1
	bne _021EF4BC
	mov r4, #3
	lsl r4, r4, #8
	ldr r5, [r0, r4]
	mov r1, #0
	lsl r5, r5, #3
	add r0, r0, r5
	add r0, r0, r3
	sub r4, #0x3a
	strb r1, [r0, r4]
_021EF4BC:
	add r0, r2, #0
	pop {r4, r5}
	bx lr
	.align 2, 0
	thumb_func_end ovy168_21ef47c

	thumb_func_start ovy168_21ef4c4
ovy168_21ef4c4: ; 0x021EF4C4
	push {r4, r5}
	add r3, r0, #0
	ldr r2, [r3, #0x58]
	cmp r2, #5
	bhi _021EF578
	add r0, r2, r2
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EF4DA: ; jump table
	.short _021EF578 - _021EF4DA - 2 ; case 0
	.short _021EF516 - _021EF4DA - 2 ; case 1
	.short _021EF4E6 - _021EF4DA - 2 ; case 2
	.short _021EF53A - _021EF4DA - 2 ; case 3
	.short _021EF578 - _021EF4DA - 2 ; case 4
	.short _021EF516 - _021EF4DA - 2 ; case 5
_021EF4E6:
	mov r4, #3
	lsl r4, r4, #8
	ldr r0, [r3, r4]
	lsl r5, r0, #3
	lsl r0, r0, #1
	add r1, r3, r0
	add r0, r4, #0
	sub r0, #0x16
	ldrh r1, [r1, r0]
	add r0, r3, r5
	add r5, r0, r2
	add r2, r4, #0
	sub r2, #0x3a
	ldrb r2, [r5, r2]
	lsl r2, r2, #1
	add r5, r3, r2
	add r2, r4, #0
	sub r2, #0x10
	ldrh r2, [r5, r2]
	cmp r1, r2
	beq _021EF516
	mov r1, #0
	sub r4, #0x37
	strb r1, [r0, r4]
_021EF516:
	ldr r1, [r3, #0x68]
	ldr r0, _021EF584 ; =0xFFFFFE1F
	and r0, r1
	mov r1, #3
	lsl r1, r1, #8
	ldr r2, [r3, r1]
	sub r1, #0x3a
	lsl r2, r2, #3
	add r4, r3, r2
	ldr r2, [r3, #0x58]
	add r2, r4, r2
	ldrb r1, [r2, r1]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x17
	orr r0, r1
	str r0, [r3, #0x68]
	pop {r4, r5}
	bx lr
_021EF53A:
	mov r4, #3
	lsl r4, r4, #8
	ldr r0, [r3, r4]
	lsl r0, r0, #3
	add r1, r3, r0
	add r0, r4, #0
	add r2, r1, r2
	sub r0, #0x3a
	ldrb r0, [r2, r0]
	sub r4, #0x38
	mov r2, #0xf0
	and r2, r0
	ldrb r1, [r1, r4]
	asr r2, r2, #4
	cmp r2, r1
	bne _021EF56C
	ldr r2, [r3, #0x68]
	ldr r1, _021EF584 ; =0xFFFFFE1F
	lsl r0, r0, #0x1c
	and r1, r2
	lsr r0, r0, #0x17
	orr r0, r1
	str r0, [r3, #0x68]
	pop {r4, r5}
	bx lr
_021EF56C:
	ldr r1, [r3, #0x68]
	ldr r0, _021EF584 ; =0xFFFFFE1F
	and r0, r1
	str r0, [r3, #0x68]
	pop {r4, r5}
	bx lr
_021EF578:
	ldr r1, [r3, #0x68]
	ldr r0, _021EF584 ; =0xFFFFFE1F
	and r0, r1
	str r0, [r3, #0x68]
	pop {r4, r5}
	bx lr
	.align 2, 0
_021EF584: .word 0xFFFFFE1F
	thumb_func_end ovy168_21ef4c4

	thumb_func_start ovy168_21ef588
ovy168_21ef588: ; 0x021EF588
	push {r3, r4, lr}
	sub sp, #0x24
	add r4, r0, #0
	bl ovy168_21e012c
	bl ovy167_219bed4
	cmp r0, #4
	beq _021EF5C8
	bl ovy168_21e0304
	cmp r0, #0
	bne _021EF5C8
	mov r0, #0
	str r0, [sp]
	mov r0, #0xc2
	lsl r0, r0, #2
	add r0, r4, r0
	add r4, sp, #4
	add r1, r4, #0
	mov r2, #0x10
	mov r3, #8
	bl sub_0202780C
	bl ovy168_21e00b8
	mov r3, #0x20
	add r1, r4, #0
	mov r2, #1
	str r3, [sp]
	bl sub_02026E64
_021EF5C8:
	add sp, #0x24
	pop {r3, r4, pc}
	thumb_func_end ovy168_21ef588

	thumb_func_start ovy168_21ef5cc
ovy168_21ef5cc: ; 0x021EF5CC
	push {r3, r4, r5, lr}
	mov r5, #0xb
	add r4, r0, #0
	lsl r5, r5, #6
	ldr r0, [r4, r5]
	cmp r0, #1
	bne _021EF5EC
	bl ovy168_21e00b8
	add r5, #0x48
	mov r3, #0x20
	add r1, r4, r5
	mov r2, #1
	str r3, [sp]
	bl sub_02026E64
_021EF5EC:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy168_21ef5cc

	thumb_func_start ovy168_21ef5f0
ovy168_21ef5f0: ; 0x021EF5F0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x68]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	ldr r0, [r4, #0x50]
	bne _021EF662
	cmp r0, #2
	bne _021EF646
	bl ovy168_21e0298
	cmp r0, #1
	bne _021EF628
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #4
	bne _021EF61E
	ldr r0, _021EF6AC ; =0x00000171
	add r1, r4, #0
	bl ovy168_21eb7c0
	pop {r4, pc}
_021EF61E:
	ldr r0, _021EF6B0 ; =0x0000016B
	add r1, r4, #0
	bl ovy168_21eb7c0
	pop {r4, pc}
_021EF628:
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #4
	bne _021EF63C
	ldr r0, _021EF6B4 ; =0x00000169
	add r1, r4, #0
	bl ovy168_21eb7c0
	pop {r4, pc}
_021EF63C:
	ldr r0, _021EF6B8 ; =0x0000016A
	add r1, r4, #0
	bl ovy168_21eb7c0
	pop {r4, pc}
_021EF646:
	bl ovy168_21e0298
	cmp r0, #1
	bne _021EF658
	ldr r0, _021EF6AC ; =0x00000171
	add r1, r4, #0
	bl ovy168_21eb7c0
	pop {r4, pc}
_021EF658:
	ldr r0, _021EF6B4 ; =0x00000169
	add r1, r4, #0
	bl ovy168_21eb7c0
	pop {r4, pc}
_021EF662:
	cmp r0, #2
	bne _021EF68C
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #4
	beq _021EF68C
	bl ovy168_21e0298
	cmp r0, #1
	bne _021EF682
	ldr r0, _021EF6BC ; =0x00000173
	add r1, r4, #0
	bl ovy168_21eb7c0
	pop {r4, pc}
_021EF682:
	ldr r0, _021EF6C0 ; =0x0000016D
	add r1, r4, #0
	bl ovy168_21eb7c0
	pop {r4, pc}
_021EF68C:
	bl ovy168_21e0298
	cmp r0, #1
	bne _021EF69E
	ldr r0, _021EF6C4 ; =0x00000172
	add r1, r4, #0
	bl ovy168_21eb7c0
	pop {r4, pc}
_021EF69E:
	mov r0, #0x5b
	lsl r0, r0, #2
	add r1, r4, #0
	bl ovy168_21eb7c0
	pop {r4, pc}
	nop
_021EF6AC: .word 0x00000171
_021EF6B0: .word 0x0000016B
_021EF6B4: .word 0x00000169
_021EF6B8: .word 0x0000016A
_021EF6BC: .word 0x00000173
_021EF6C0: .word 0x0000016D
_021EF6C4: .word 0x00000172
	thumb_func_end ovy168_21ef5f0

	thumb_func_start ovy168_21ef6c8
ovy168_21ef6c8: ; 0x021EF6C8
	ldr r1, [r0, #0x58]
	cmp r1, #6
	beq _021EF6E6
	ldr r1, [r0, #0x54]
	cmp r1, #3
	bne _021EF6E6
	mov r1, #0xca
	lsl r1, r1, #2
	ldrb r0, [r0, r1]
	cmp r0, #2
	bne _021EF6E2
	mov r0, #1
	bx lr
_021EF6E2:
	mov r0, #0
	bx lr
_021EF6E6:
	mov r0, #1
	bx lr
	.align 2, 0
	thumb_func_end ovy168_21ef6c8

	thumb_func_start ovy168_21ef6ec
ovy168_21ef6ec: ; 0x021EF6EC
	push {r3, lr}
	bl ovy168_21ef6c8
	cmp r0, #0
	beq _021EF6FC
	ldr r0, _021EF700 ; =0x00000555
	bl GFL_SndSEPlay
_021EF6FC:
	pop {r3, pc}
	nop
_021EF700: .word 0x00000555
	thumb_func_end ovy168_21ef6ec

	thumb_func_start ovy168_21ef704
ovy168_21ef704: ; 0x021EF704
	push {r3, lr}
	bl ovy168_21ef6c8
	cmp r0, #0
	beq _021EF714
	ldr r0, _021EF718 ; =0x00000548
	bl GFL_SndSEPlay
_021EF714:
	pop {r3, pc}
	nop
_021EF718: .word 0x00000548
	thumb_func_end ovy168_21ef704

	thumb_func_start ovy168_21ef71c
ovy168_21ef71c: ; 0x021EF71C
	push {r3, lr}
	bl ovy168_21ef6c8
	cmp r0, #0
	beq _021EF72C
	ldr r0, _021EF730 ; =0x0000054D
	bl GFL_SndSEPlay
_021EF72C:
	pop {r3, pc}
	nop
_021EF730: .word 0x0000054D
	thumb_func_end ovy168_21ef71c

	thumb_func_start ovy168_21ef734
ovy168_21ef734: ; 0x021EF734
	push {r3, lr}
	bl ovy168_21ef6c8
	cmp r0, #0
	beq _021EF744
	ldr r0, _021EF748 ; =0x00000552
	bl GFL_SndSEPlay
_021EF744:
	pop {r3, pc}
	nop
_021EF748: .word 0x00000552
	thumb_func_end ovy168_21ef734

	thumb_func_start ovy168_21ef74c
ovy168_21ef74c: ; 0x021EF74C
	push {r3, lr}
	bl ovy168_21ef6c8
	cmp r0, #0
	beq _021EF75C
	ldr r0, _021EF760 ; =0x00000579
	bl GFL_SndSEPlay
_021EF75C:
	pop {r3, pc}
	nop
_021EF760: .word 0x00000579
	thumb_func_end ovy168_21ef74c

	thumb_func_start ovy168_21ef764
ovy168_21ef764: ; 0x021EF764
	push {r3, lr}
	bl ovy168_21ef6c8
	cmp r0, #0
	beq _021EF774
	ldr r0, _021EF778 ; =0x0000054D
	bl GFL_SndSEPlay
_021EF774:
	pop {r3, pc}
	nop
_021EF778: .word 0x0000054D
	thumb_func_end ovy168_21ef764

	thumb_func_start ovy168_21ef77c
ovy168_21ef77c: ; 0x021EF77C
	push {r3, lr}
	bl ovy168_21ef6c8
	cmp r0, #0
	beq _021EF78C
	ldr r0, _021EF790 ; =0x00000557
	bl GFL_SndSEPlay
_021EF78C:
	pop {r3, pc}
	nop
_021EF790: .word 0x00000557
	thumb_func_end ovy168_21ef77c

	thumb_func_start ovy168_21ef794
ovy168_21ef794: ; 0x021EF794
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r4, #0x55
	str r2, [sp, #8]
	lsl r4, r4, #2
	str r4, [sp]
	str r0, [sp, #4]
	ldr r6, _021EF830 ; =0x0000046C
	add r7, r1, #0
	ldr r0, [sp, #8]
	ldr r3, _021EF834 ; =0x021F41D8
	add r1, r6, #0
	mov r2, #1
	bl GFL_HeapAllocate
	add r5, r0, #0
	ldr r0, [sp, #8]
	sub r1, r6, #4
	strh r0, [r5, r1]
	ldrh r1, [r5, r1]
	mov r0, #0xb
	bl sub_0204AA30
	str r0, [r5, #4]
	sub r2, r6, #4
	ldrh r2, [r5, r2]
	mov r0, #0x28
	mov r1, #0
	bl sub_0204BF1C
	str r0, [r5]
	ldr r0, [sp, #4]
	str r0, [r5, #8]
	bl sub_02005C9C
	add r1, r6, #0
	sub r1, #8
	str r0, [r5, r1]
	add r4, #0xf
	str r4, [sp]
	ldr r0, [sp, #8]
	ldr r3, _021EF834 ; =0x021F41D8
	mov r1, #0x10
	mov r2, #1
	bl GFL_HeapAllocate
	add r4, r0, #0
	str r5, [r4]
	bl ovy168_21e00ac
	ldr r1, _021EF838 ; =ovy168_21f1ab4
	add r2, r4, #0
	mov r3, #0
	bl sub_0203A614
	str r0, [r5, #0xc]
	add r0, r6, #0
	sub r0, #0xc
	ldr r1, [r5, r0]
	ldr r0, _021EF83C ; =0xFCFFFFFF
	sub r6, #0xc
	and r1, r0
	lsl r0, r7, #0x1e
	lsr r0, r0, #6
	orr r0, r1
	str r0, [r5, r6]
	cmp r7, #2
	beq _021EF824
	add r0, r5, #0
	bl ovy168_21efe24
	b _021EF82A
_021EF824:
	add r0, r5, #0
	bl ovy168_21f1844
_021EF82A:
	add r0, r5, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021EF830: .word 0x0000046C
_021EF834: .word 0x021F41D8
_021EF838: .word ovy168_21f1ab4
_021EF83C: .word 0xFCFFFFFF
	thumb_func_end ovy168_21ef794

	thumb_func_start ovy168_21ef840
ovy168_21ef840: ; 0x021EF840
	push {r4, lr}
	add r4, r0, #0
	bl ovy168_21f0014
	mov r0, #0x46
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	beq _021EF85E
	bl sub_02005F0C
	mov r0, #0
	bl ovy168_21f1be8
_021EF85E:
	ldr r0, [r4]
	bl sub_0204BF98
	ldr r0, [r4, #4]
	bl GFL_ArcToolFree
	ldr r0, [r4, #0xc]
	bl sub_0203A6D0
	bl GFL_HeapFree
	ldr r0, [r4, #0xc]
	bl GFL_TCBRemove
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy168_21ef840

	thumb_func_start ovy168_21ef884
ovy168_21ef884: ; 0x021EF884
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	bl GCTX_HIDGetPressedKeys
	mov r4, #0x46
	lsl r4, r4, #4
	ldr r0, [r6, r4]
	lsl r0, r0, #9
	lsr r0, r0, #0x1f
	beq _021EF950
	bl ovy168_21e00e8
	ldr r2, [r6, r4]
	ldr r1, _021EFA8C ; =0xFFBFFFFF
	and r1, r2
	str r1, [r6, r4]
	cmp r0, #0
	beq _021EF950
	cmp r0, #1
	beq _021EF950
	mov r1, #0
	mov r0, #0
	mov r2, #0x84
_021EF8B4:
	add r3, r0, #0
	mul r3, r2
	add r3, r6, r3
	add r3, #0xb0
	ldr r3, [r3]
	lsl r3, r3, #0x1f
	lsr r3, r3, #0x1f
	beq _021EF8C8
	mov r1, #1
	b _021EF8CE
_021EF8C8:
	add r0, r0, #1
	cmp r0, #8
	blt _021EF8B4
_021EF8CE:
	cmp r1, #0
	bne _021EF950
	mov r2, #0x46
	lsl r2, r2, #4
	ldr r3, [r6, r2]
	add r7, r6, #0
	mov r1, #0x10
	add r0, r3, #0
	bic r0, r1
	lsl r1, r3, #0x1b
	lsr r3, r1, #0x1f
	mov r1, #1
	eor r1, r3
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1b
	orr r0, r1
	str r0, [r6, r2]
	add r0, r6, #0
	str r0, [sp, #0xc]
	add r0, #0x90
	mov r4, #0
	str r0, [sp, #0xc]
	add r7, #0xb0
_021EF8FC:
	mov r0, #1
	tst r0, r4
	bne _021EF94A
	mov r0, #0x84
	add r5, r4, #0
	mul r5, r0
	ldr r0, [r7, r5]
	lsl r1, r0, #2
	lsr r1, r1, #0x1f
	cmp r1, #1
	bne _021EF94A
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	beq _021EF94A
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #1
	bl ovy168_21f1c14
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r6, r5
	add r1, r6, r5
	add r0, #0x8c
	add r1, #0x88
	ldr r3, [sp, #0xc]
	ldr r0, [r0]
	ldr r1, [r1]
	mov r2, #0
	add r3, r3, r5
	bl ovy168_21f0d70
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0
	bl ovy168_21f1108
_021EF94A:
	add r4, r4, #1
	cmp r4, #8
	blt _021EF8FC
_021EF950:
	ldr r0, _021EFA90 ; =0xEFFFFFFF
	add r4, r6, #0
	asr r0, r0, #2
	mov r7, #0
	add r4, #0xb0
	str r0, [sp, #0x10]
_021EF95C:
	mov r0, #0x84
	add r5, r7, #0
	mul r5, r0
	ldr r0, [r4, r5]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _021EF972
	add r0, r6, #0
	add r1, r7, #0
	bl ovy168_21f0c28
_021EF972:
	ldr r0, [r4, r5]
	lsl r1, r0, #0x1e
	lsr r1, r1, #0x1f
	beq _021EF98E
	lsl r0, r0, #0x10
	lsr r0, r0, #0x18
	bne _021EF986
	ldr r0, _021EFA94 ; =0x0000056D
	bl GFL_SndSEPlay
_021EF986:
	add r0, r6, #0
	add r1, r7, #0
	bl ovy168_21f0cf4
_021EF98E:
	ldr r0, [r4, r5]
	lsl r1, r0, #3
	lsr r1, r1, #0x1f
	beq _021EF9DA
	lsl r0, r0, #0x10
	lsr r1, r0, #0x18
	cmp r1, #0x10
	bhs _021EF9AE
	add r1, r1, #1
	lsl r1, r1, #0x18
	ldr r2, [r4, r5]
	ldr r0, _021EFA98 ; =0xFFFF00FF
	lsr r1, r1, #0x10
	and r0, r2
	orr r0, r1
	str r0, [r4, r5]
_021EF9AE:
	ldr r0, [r4, r5]
	lsl r1, r0, #0x1e
	lsr r1, r1, #0x1f
	bne _021EF9DA
	lsl r0, r0, #0x10
	lsr r0, r0, #0x18
	cmp r0, #0x10
	bne _021EF9DA
	bl sub_02006280
	ldr r1, [r4, r5]
	ldr r0, _021EFA98 ; =0xFFFF00FF
	and r0, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x18
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x10
	orr r1, r0
	ldr r0, _021EFA90 ; =0xEFFFFFFF
	and r0, r1
	str r0, [r4, r5]
_021EF9DA:
	ldr r0, [r4, r5]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	beq _021EF9EA
	add r0, r6, #0
	add r1, r7, #0
	bl ovy168_21f1508
_021EF9EA:
	ldr r0, [r4, r5]
	lsl r0, r0, #0xb
	lsr r0, r0, #0x1f
	beq _021EF9FA
	add r0, r6, #0
	add r1, r7, #0
	bl ovy168_21f15d8
_021EF9FA:
	add r0, r6, r5
	ldr r2, [r0, #0x4c]
	str r0, [sp, #8]
	cmp r2, #0
	beq _021EFA68
	ldr r1, [r4, r5]
	lsl r0, r1, #5
	lsr r0, r0, #0x1f
	beq _021EFA68
	lsl r0, r1, #6
	lsr r3, r0, #0x1b
	beq _021EFA1E
	lsl r0, r1, #0x1c
	lsr r0, r0, #0x1f
	beq _021EFA1E
	lsl r0, r1, #2
	lsr r0, r0, #0x1f
	bne _021EFA2E
_021EFA1E:
	add r0, r2, #0
	mov r1, #0
	bl sub_0204C124
	ldr r1, [r4, r5]
	ldr r0, [sp, #0x10]
	and r0, r1
	b _021EFA4A
_021EFA2E:
	mov r1, #1
	add r0, r2, #0
	and r1, r3
	bl sub_0204C124
	ldr r1, [r4, r5]
	ldr r0, _021EFA9C ; =0xFC1FFFFF
	and r0, r1
	lsl r1, r1, #6
	lsr r1, r1, #0x1b
	sub r1, r1, #1
	lsl r1, r1, #0x1b
	lsr r1, r1, #6
	orr r0, r1
_021EFA4A:
	str r0, [r4, r5]
	mov r0, #0x46
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	beq _021EFA68
	mov r0, #1
	tst r0, r7
	bne _021EFA68
	ldr r0, [sp, #8]
	mov r1, #0
	ldr r0, [r0, #0x4c]
	bl sub_0204C124
_021EFA68:
	add r7, r7, #1
	cmp r7, #8
	bge _021EFA70
	b _021EF95C
_021EFA70:
	mov r0, #0x46
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	lsl r1, r0, #0xa
	lsr r1, r1, #0x1f
	bne _021EFA88
	lsl r0, r0, #6
	lsr r0, r0, #0x1e
	bne _021EFA88
	add r0, r6, #0
	bl ovy168_21f1880
_021EFA88:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021EFA8C: .word 0xFFBFFFFF
_021EFA90: .word 0xEFFFFFFF
_021EFA94: .word 0x0000056D
_021EFA98: .word 0xFFFF00FF
_021EFA9C: .word 0xFC1FFFFF
	thumb_func_end ovy168_21ef884

	thumb_func_start ovy168_21efaa0
ovy168_21efaa0: ; 0x021EFAA0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	ldr r7, [sp, #0x40]
	add r5, r0, #0
	mov r0, #0x84
	add r4, r7, #0
	mul r4, r0
	add r0, r5, #0
	str r0, [sp, #8]
	add r0, #0x80
	str r0, [sp, #8]
	str r1, [sp]
	ldr r1, [sp, #8]
	add r6, r2, #0
	mov r0, #0
	add r1, r1, r4
	mov r2, #0x44
	str r3, [sp, #4]
	blx MIi_CpuClear16
	add r0, r6, #0
	mov r1, #0xd
	bl ovy167_21bb1b4
	add r1, r5, r4
	add r1, #0x88
	str r0, [r1]
	add r0, r6, #0
	mov r1, #0xe
	bl ovy167_21bb1b4
	add r1, r5, r4
	add r2, r1, #0
	add r2, #0x8c
	str r0, [r2]
	add r2, r1, #0
	mov r0, #2
	add r2, #0x90
	lsl r0, r0, #0x1e
	str r0, [r2]
	add r1, #0xa8
	mov r0, #0
	str r0, [r1]
	add r0, r5, #0
	str r0, [sp, #0xc]
	add r0, #0xac
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #0xf
	bl ovy167_21bb1b4
	ldr r1, [sp, #0xc]
	add r2, r7, #0
	strb r0, [r1, r4]
	ldr r1, [sp, #4]
	ldr r0, [sp, #8]
	str r1, [r0, r4]
	mov r0, #1
	add r1, r5, r4
	and r2, r0
	add r0, r1, #0
	add r0, #0x84
	str r2, [r0]
	add r0, r5, #0
	add r0, #0xb0
	mov r2, #2
	lsl r2, r2, #0x1e
	ldr r3, [r0, r4]
	lsr r2, r2, #4
	orr r2, r3
	str r2, [r0, r4]
	ldr r0, [sp, #0xc]
	ldrb r0, [r0, r4]
	cmp r0, #0x64
	bhs _021EFBB0
	add r0, r6, #0
	bl ovy167_21bac44
	str r0, [sp, #0x10]
	add r0, r6, #0
	mov r1, #0x13
	bl ovy167_21bb1b4
	str r0, [sp, #0x14]
	add r0, r6, #0
	mov r1, #0xf
	bl ovy167_21bb1b4
	add r2, r0, #0
	ldr r1, [sp, #0x14]
	lsl r2, r2, #0x10
	lsl r1, r1, #0x10
	ldr r0, [sp, #0x10]
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_0201D5B4
	str r0, [sp, #0x18]
	add r0, r6, #0
	mov r1, #0x14
	bl ovy167_21bb1b4
	ldr r1, [sp, #0x18]
	sub r1, r0, r1
	add r0, r5, r4
	add r0, #0x94
	str r1, [r0]
	add r0, r6, #0
	bl ovy167_21bac44
	str r0, [sp, #0x1c]
	add r0, r6, #0
	mov r1, #0x13
	bl ovy167_21bb1b4
	str r0, [sp, #0x20]
	add r0, r6, #0
	mov r1, #0xf
	bl ovy167_21bb1b4
	add r2, r0, #0
	ldr r1, [sp, #0x20]
	add r2, r2, #1
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [sp, #0x1c]
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_0201D5B4
	ldr r1, [sp, #0x18]
	sub r1, r0, r1
	add r0, r5, r4
	add r0, #0x98
	str r1, [r0]
	b _021EFBBC
_021EFBB0:
	add r2, r1, #0
	add r2, #0x94
	mov r0, #0
	str r0, [r2]
	add r1, #0x98
	str r0, [r1]
_021EFBBC:
	add r0, r5, r4
	mov r2, #2
	add r1, r0, #0
	lsl r2, r2, #0x1e
	add r1, #0xa4
	str r2, [r1]
	add r1, r0, #0
	mov r2, #0
	add r1, #0xa0
	str r2, [r1]
	add r0, #0xae
	strb r2, [r0]
	ldr r0, [sp]
	add r1, r6, #0
	bl ovy167_219bf70
	add r1, r5, r4
	add r1, #0xaf
	strb r0, [r1]
	add r0, r6, #0
	bl ovy167_21bb064
	mov r1, #0xad
	mov r2, #0
	bl sub_0201CCF8
	cmp r0, #0
	bne _021EFBFE
	add r0, r5, r4
	mov r1, #2
	add r0, #0xad
	strb r1, [r0]
	b _021EFC0E
_021EFBFE:
	add r0, r6, #0
	bl ovy167_21bb064
	bl sub_0201CEB4
	add r1, r5, r4
	add r1, #0xad
	strb r0, [r1]
_021EFC0E:
	add r0, r6, #0
	mov r1, #5
	bl ovy167_21bbb14
	bl ovy167_21ce2b8
	cmp r0, #1
	bne _021EFC2C
	add r0, r6, #0
	bl ovy167_21bbaa8
	cmp r0, #5
	bne _021EFC2C
	mov r1, #6
	b _021EFC34
_021EFC2C:
	add r0, r6, #0
	bl ovy167_21bbaa8
	add r1, r0, #0
_021EFC34:
	add r0, r5, #0
	add r2, r7, #0
	bl ovy168_21f1628
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #0
	bl ovy168_21f06cc
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #1
	bl ovy168_21f1c14
	add r0, r5, #0
	add r0, #0x40
	add r0, r0, r4
	bl ovy168_21f0644
	add r0, r6, #0
	bl ovy167_21bb064
	add r3, r0, #0
	ldr r1, [sp, #4]
	add r0, r5, #0
	add r2, r7, #0
	bl ovy168_21f0560
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy168_21efaa0

	thumb_func_start ovy168_21efc70
ovy168_21efc70: ; 0x021EFC70
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	ldr r7, [sp, #0x38]
	add r5, r0, #0
	mov r0, #0x84
	add r4, r7, #0
	mul r4, r0
	add r0, r5, #0
	str r0, [sp, #0xc]
	add r0, #0x80
	str r0, [sp, #0xc]
	str r1, [sp]
	ldr r1, [sp, #0xc]
	add r6, r2, #0
	mov r0, #0
	add r1, r1, r4
	mov r2, #0x44
	str r3, [sp, #4]
	blx MIi_CpuClear16
	add r0, r6, #0
	mov r1, #0xa0
	mov r2, #0
	bl sub_0201CCF8
	add r1, r5, r4
	add r1, #0x88
	str r0, [r1]
	add r0, r6, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_0201CCF8
	add r1, r5, r4
	add r1, #0x8c
	str r0, [r1]
	add r1, r5, r4
	mov r0, #2
	add r1, #0x90
	lsl r0, r0, #0x1e
	str r0, [r1]
	add r1, r5, r4
	add r1, #0xa8
	mov r0, #0
	str r0, [r1]
	add r0, r5, #0
	str r0, [sp, #0x10]
	add r0, #0xac
	str r0, [sp, #0x10]
	add r0, r6, #0
	mov r1, #0x9e
	mov r2, #0
	bl sub_0201CCF8
	ldr r1, [sp, #0x10]
	mov r2, #2
	strb r0, [r1, r4]
	lsl r2, r2, #0x1e
	ldr r1, [sp, #4]
	ldr r0, [sp, #0xc]
	lsr r2, r2, #4
	str r1, [r0, r4]
	mov r0, #1
	add r1, r7, #0
	and r1, r0
	add r0, r5, r4
	add r0, #0x84
	str r1, [r0]
	add r1, r5, #0
	add r1, #0xb0
	ldr r0, [r1, r4]
	orr r0, r2
	str r0, [r1, r4]
	ldr r0, [sp, #0x10]
	ldrb r0, [r0, r4]
	cmp r0, #0x64
	bhs _021EFD7A
	add r0, r6, #0
	mov r1, #5
	mov r2, #0
	bl sub_0201CCF8
	str r0, [sp, #0x14]
	add r0, r6, #0
	mov r1, #0x6f
	mov r2, #0
	bl sub_0201CCF8
	str r0, [sp, #0x18]
	add r0, r5, #0
	str r0, [sp, #0x1c]
	add r0, #0xac
	str r0, [sp, #0x1c]
	ldr r2, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	ldrb r2, [r2, r4]
	lsr r0, r0, #0x10
	lsr r1, r1, #0x10
	bl sub_0201D5B4
	str r0, [sp, #0x20]
	add r0, r6, #0
	mov r1, #8
	mov r2, #0
	bl sub_0201CCF8
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x1c]
	sub r1, r0, r1
	add r0, r5, r4
	add r0, #0x94
	str r1, [r0]
	ldrb r2, [r2, r4]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	add r2, r2, #1
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	lsr r0, r0, #0x10
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_0201D5B4
	ldr r1, [sp, #0x20]
	sub r1, r0, r1
	add r0, r5, r4
	add r0, #0x98
	str r1, [r0]
	b _021EFD88
_021EFD7A:
	add r1, r5, r4
	add r1, #0x94
	mov r0, #0
	str r0, [r1]
	add r1, r5, r4
	add r1, #0x98
	str r0, [r1]
_021EFD88:
	mov r1, #2
	add r0, r5, r4
	lsl r1, r1, #0x1e
	add r0, #0xa4
	str r1, [r0]
	add r0, r5, r4
	mov r1, #0
	add r0, #0xa0
	str r1, [r0]
	add r0, r5, r4
	add r0, #0xae
	strb r1, [r0]
	add r0, r6, #0
	mov r1, #5
	mov r2, #0
	bl sub_0201CCF8
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, [sp]
	ldr r1, [sp, #8]
	bl sub_0200D660
	add r1, r5, r4
	add r1, #0xaf
	strb r0, [r1]
	ldr r0, [sp, #8]
	cmp r0, #0x20
	beq _021EFDD6
	cmp r0, #0x1d
	beq _021EFDD6
	add r0, r6, #0
	bl sub_0201CEB4
	add r1, r5, r4
	add r1, #0xad
	strb r0, [r1]
	b _021EFDDE
_021EFDD6:
	add r0, r5, r4
	mov r1, #2
	add r0, #0xad
	strb r1, [r0]
_021EFDDE:
	add r0, r6, #0
	bl sub_0201CF44
	add r1, r0, #0
	add r0, r5, #0
	add r2, r7, #0
	bl ovy168_21f1628
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #0
	bl ovy168_21f06cc
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #1
	bl ovy168_21f1c14
	add r0, r5, #0
	add r0, #0x40
	add r0, r0, r4
	bl ovy168_21f0644
	ldr r1, [sp, #4]
	add r0, r5, #0
	add r2, r7, #0
	add r3, r6, #0
	bl ovy168_21f0560
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy168_21efc70

	thumb_func_start ovy168_21efe1c
ovy168_21efe1c: ; 0x021EFE1C
	ldr r0, _021EFE20 ; =0x000001AF
	bx lr
	.align 2, 0
_021EFE20: .word 0x000001AF
	thumb_func_end ovy168_21efe1c

	thumb_func_start ovy168_21efe24
ovy168_21efe24: ; 0x021EFE24
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r0, #0
	mov r0, #0x46
	lsl r0, r0, #4
	str r0, [sp, #0x1c]
	ldr r1, [r5, r0]
	mov r0, #2
	lsl r0, r0, #0x16
	orr r1, r0
	ldr r0, [sp, #0x1c]
	mov r6, #0
	str r1, [r5, r0]
	add r0, #8
	add r4, r6, #0
	str r0, [sp, #0x1c]
_021EFE44:
	lsl r0, r6, #2
	add r7, r5, r0
	bl ovy168_21efe1c
	add r1, r0, #0
	ldr r0, [sp, #0x1c]
	lsl r3, r6, #0x15
	ldrh r0, [r5, r0]
	add r2, r4, #0
	lsr r3, r3, #0x10
	str r0, [sp]
	ldr r0, [r5, #4]
	bl sub_0204BBA0
	str r0, [r7, #0x18]
	bl ovy168_21e00b8
	str r0, [sp, #8]
	ldr r0, [r7, #0x18]
	add r1, r4, #0
	bl sub_0204BDC0
	add r2, r0, #0
	lsl r2, r2, #0xf
	ldr r0, [sp, #8]
	mov r1, #2
	lsr r2, r2, #0x10
	mov r3, #0x20
	bl sub_02026F7C
	add r6, r6, #1
	cmp r6, #6
	blt _021EFE44
	bl sub_0202D7E0
	ldr r1, _021F0008 ; =0x00000468
	ldrh r2, [r5, r1]
	ldr r1, _021F000C ; =0x00007FFF
	and r2, r1
	add r1, r1, #1
	orr r1, r2
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0204AA30
	add r6, r0, #0
	bl sub_0202D8B4
	add r1, r0, #0
	ldr r0, _021F0008 ; =0x00000468
	add r2, r4, #0
	ldrh r0, [r5, r0]
	add r3, r4, #0
	str r0, [sp]
	add r0, r6, #0
	bl Oam_LoadNCGRFile
	str r0, [r5, #0x30]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #1
	bl sub_0202D8B8
	add r7, r0, #0
	mov r0, #1
	bl sub_0202D8BC
	ldr r3, _021F0008 ; =0x00000468
	add r2, r0, #0
	ldrh r3, [r5, r3]
	add r0, r6, #0
	add r1, r7, #0
	bl Oam_LoadNCERFile
	str r0, [r5, #0x34]
	bl sub_0202D8B0
	add r1, r0, #0
	ldr r0, _021F0008 ; =0x00000468
	mov r3, #1
	ldrh r0, [r5, r0]
	add r2, r4, #0
	add r3, #0xff
	str r0, [sp]
	add r0, r6, #0
	bl sub_0204BBA0
	str r0, [r5, #0x38]
	bl sub_0202D8B0
	add r1, r0, #0
	ldr r0, _021F0008 ; =0x00000468
	mov r7, #0x12
	ldrh r0, [r5, r0]
	lsl r7, r7, #4
	add r2, r4, #0
	str r0, [sp]
	add r0, r6, #0
	add r3, r7, #0
	bl sub_0204BBA0
	str r0, [r5, #0x3c]
	bl ovy168_21e00b8
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x38]
	add r1, r4, #0
	bl sub_0204BDC0
	add r2, r0, #0
	lsl r2, r2, #0xf
	ldr r0, [sp, #0xc]
	mov r1, #2
	lsr r2, r2, #0x10
	mov r3, #0x20
	bl sub_02026F7C
	bl ovy168_21e00b8
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x3c]
	add r1, r4, #0
	bl sub_0204BDC0
	add r2, r0, #0
	lsl r2, r2, #0xf
	ldr r0, [sp, #0x10]
	mov r1, #2
	lsr r2, r2, #0x10
	mov r3, #0x20
	bl sub_02026F7C
	bl ovy168_21e00b8
	add r2, r7, #0
	mov r1, #2
	add r2, #0xe0
	mov r3, #8
	str r4, [sp]
	bl sub_020278AC
	add r0, r6, #0
	bl GFL_ArcToolFree
	ldr r0, _021F0008 ; =0x00000468
	add r7, #0x92
	ldrh r0, [r5, r0]
	add r1, r7, #0
	add r2, r4, #0
	str r0, [sp]
	ldr r0, [r5, #4]
	add r3, sp, #0x28
	bl sub_0204B2DC
	str r0, [r5, #0x10]
	ldr r0, [sp, #0x28]
	ldr r0, [r0, #0x14]
	str r0, [r5, #0x14]
	bl ovy168_21e00e8
	cmp r0, #3
	bhi _021EFFA8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EFF94: ; jump table
	.short _021EFF9C - _021EFF94 - 2 ; case 0
	.short _021EFFA2 - _021EFF94 - 2 ; case 1
	.short _021EFFA8 - _021EFF94 - 2 ; case 2
	.short _021EFFB0 - _021EFF94 - 2 ; case 3
_021EFF9C:
	ldr r7, [sp, #4]
	str r4, [sp, #4]
	b _021EFFB8
_021EFFA2:
	mov r4, #2
	mov r7, #5
	b _021EFFB8
_021EFFA8:
	mov r4, #2
	mov r7, #7
	mov r0, #2
	b _021EFFB6
_021EFFB0:
	mov r4, #2
	mov r7, #7
	mov r0, #3
_021EFFB6:
	str r0, [sp, #4]
_021EFFB8:
	cmp r4, r7
	bgt _021F0002
	ldr r0, _021F0010 ; =0x021F3D80
	add r6, sp, #0x20
	ldrh r1, [r0]
	strh r1, [r6]
	ldrh r0, [r0, #2]
	strh r0, [r6, #2]
	ldrh r0, [r6]
	str r0, [sp, #0x14]
	ldrh r0, [r6, #2]
	str r0, [sp, #0x18]
_021EFFD0:
	ldr r0, [sp, #0x14]
	strh r0, [r6, #4]
	ldr r0, [sp, #0x18]
	strh r0, [r6, #6]
	mov r0, #1
	tst r0, r4
	beq _021EFFE8
	mov r0, #4
	ldrsh r1, [r6, r0]
	sub r0, r0, #5
	mul r0, r1
	strh r0, [r6, #4]
_021EFFE8:
	ldr r1, [sp, #4]
	add r0, r5, #0
	add r2, r4, #0
	bl ovy168_21f008c
	add r0, r5, #0
	add r1, r4, #0
	add r2, sp, #0x24
	bl ovy168_21f06cc
	add r4, r4, #1
	cmp r4, r7
	ble _021EFFD0
_021F0002:
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_021F0008: .word 0x00000468
_021F000C: .word 0x00007FFF
_021F0010: .word 0x021F3D80
	thumb_func_end ovy168_21efe24

	thumb_func_start ovy168_21f0014
ovy168_21f0014: ; 0x021F0014
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x46
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	lsl r0, r0, #8
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _021F007E
	mov r4, #0
	cmp r4, #8
	bge _021F0042
_021F002C:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy168_21f0668
	add r0, r5, #0
	add r1, r4, #0
	bl ovy168_21f048c
	add r4, r4, #1
	cmp r4, #8
	blt _021F002C
_021F0042:
	mov r4, #0
_021F0044:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x18]
	bl sub_0204BCD0
	add r4, r4, #1
	cmp r4, #6
	blt _021F0044
	ldr r0, [r5, #0x30]
	bl sub_0204B98C
	ldr r0, [r5, #0x34]
	bl sub_0204BE64
	ldr r0, [r5, #0x38]
	bl sub_0204BCD0
	ldr r0, [r5, #0x3c]
	bl sub_0204BCD0
	ldr r0, [r5, #0x10]
	bl GFL_HeapFree
	mov r1, #0x46
	lsl r1, r1, #4
	ldr r2, [r5, r1]
	ldr r0, _021F0080 ; =0xFF7FFFFF
	and r0, r2
	str r0, [r5, r1]
_021F007E:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021F0080: .word 0xFF7FFFFF
	thumb_func_end ovy168_21f0014

	thumb_func_start ovy168_21f0084
ovy168_21f0084: ; 0x021F0084
	ldr r0, _021F0088 ; =0x000001B1
	bx lr
	.align 2, 0
_021F0088: .word 0x000001B1
	thumb_func_end ovy168_21f0084

	thumb_func_start ovy168_21f008c
ovy168_21f008c: ; 0x021F008C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x68
	add r4, r0, #0
	add r6, r2, #0
	mov r0, #0x84
	mul r0, r6
	str r0, [sp, #0x24]
	add r0, r4, r0
	add r7, r1, #0
	add r0, #0x80
	str r7, [r0]
	cmp r7, #4
	bhi _021F00BC
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F00B2: ; jump table
	.short _021F00BC - _021F00B2 - 2 ; case 0
	.short _021F00BC - _021F00B2 - 2 ; case 1
	.short _021F00E6 - _021F00B2 - 2 ; case 2
	.short _021F00E6 - _021F00B2 - 2 ; case 3
	.short _021F010E - _021F00B2 - 2 ; case 4
_021F00BC:
	mov r0, #1
	and r0, r6
	beq _021F00C6
	ldr r1, _021F03F4 ; =0x000001B3
	b _021F00C8
_021F00C6:
	ldr r1, _021F03F8 ; =0x000001B6
_021F00C8:
	str r1, [sp, #0x18]
	cmp r0, #0
	beq _021F00D4
	mov r1, #0x6d
	lsl r1, r1, #2
	b _021F00D6
_021F00D4:
	ldr r1, _021F03FC ; =0x000001B7
_021F00D6:
	str r1, [sp, #0x14]
	cmp r0, #0
	beq _021F00E0
	ldr r0, _021F0400 ; =0x000001B5
	b _021F010C
_021F00E0:
	mov r0, #0x6e
	lsl r0, r0, #2
	b _021F010C
_021F00E6:
	mov r0, #1
	and r0, r6
	beq _021F00F0
	ldr r1, _021F0404 ; =0x000001B9
	b _021F00F4
_021F00F0:
	mov r1, #0x6f
	lsl r1, r1, #2
_021F00F4:
	str r1, [sp, #0x18]
	cmp r0, #0
	beq _021F00FE
	ldr r1, _021F0408 ; =0x000001BA
	b _021F0100
_021F00FE:
	ldr r1, _021F040C ; =0x000001BD
_021F0100:
	str r1, [sp, #0x14]
	cmp r0, #0
	beq _021F010A
	ldr r0, _021F0410 ; =0x000001BB
	b _021F010C
_021F010A:
	ldr r0, _021F0414 ; =0x000001BE
_021F010C:
	str r0, [sp, #0x10]
_021F010E:
	cmp r7, #3
	bne _021F0182
	add r5, r6, #0
	cmp r6, #2
	blt _021F011A
	sub r5, r6, #2
_021F011A:
	cmp r6, #4
	bge _021F0124
	bl ovy168_21efe1c
	b _021F0128
_021F0124:
	bl ovy168_21f0084
_021F0128:
	str r0, [sp, #0xc]
	add r0, r4, #0
	str r0, [sp, #0x2c]
	add r0, #0x18
	str r0, [sp, #0x2c]
	lsl r0, r5, #2
	ldr r1, [sp, #0x2c]
	str r0, [sp, #0x30]
	ldr r0, [r1, r0]
	bl sub_0204BCD0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _021F0418 ; =0x00000468
	lsl r3, r5, #0x15
	ldrh r0, [r4, r0]
	ldr r1, [sp, #0xc]
	mov r2, #0
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	lsr r3, r3, #0x10
	bl Oam_LoadNCLRFile
	ldr r2, [sp, #0x2c]
	ldr r1, [sp, #0x30]
	str r0, [r2, r1]
	bl ovy168_21e00b8
	add r5, r0, #0
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x30]
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_0204BDC0
	add r2, r0, #0
	lsl r2, r2, #0xf
	add r0, r5, #0
	mov r1, #2
	lsr r2, r2, #0x10
	mov r3, #0x20
	bl sub_02026F7C
_021F0182:
	mov r0, #0x84
	add r5, r6, #0
	mul r5, r0
	add r0, r4, #0
	str r0, [sp, #0x34]
	add r0, #0x58
	str r0, [sp, #0x34]
	ldr r0, _021F0418 ; =0x00000468
	ldr r1, [sp, #0x18]
	ldrh r0, [r4, r0]
	mov r2, #0
	mov r3, #0
	str r0, [sp]
	ldr r0, [r4, #4]
	bl Oam_LoadNCGRFile
	ldr r1, [sp, #0x34]
	ldr r3, _021F0418 ; =0x00000468
	str r0, [r1, r5]
	add r0, r4, #0
	str r0, [sp, #0x38]
	add r0, #0x5c
	str r0, [sp, #0x38]
	ldrh r3, [r4, r3]
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	bl Oam_LoadNCERFile
	ldr r1, [sp, #0x38]
	mov r2, #0
	str r0, [r1, r5]
	add r0, r4, #0
	str r0, [sp, #0x3c]
	add r0, #0x60
	str r0, [sp, #0x3c]
	ldr r0, _021F0418 ; =0x00000468
	mov r1, #0x72
	ldrh r0, [r4, r0]
	lsl r1, r1, #2
	mov r3, #0
	str r0, [sp]
	ldr r0, [r4, #4]
	bl Oam_LoadNCGRFile
	ldr r1, [sp, #0x3c]
	mov r2, #0x72
	str r0, [r1, r5]
	ldr r3, _021F0418 ; =0x00000468
	add r0, r4, #0
	str r0, [sp, #0x40]
	add r0, #0x64
	mov r1, #0x72
	str r0, [sp, #0x40]
	lsl r1, r1, #2
	lsl r2, r2, #2
	ldrh r3, [r4, r3]
	ldr r0, [r4, #4]
	add r1, r1, #1
	add r2, r2, #2
	bl Oam_LoadNCERFile
	ldr r1, [sp, #0x40]
	mov r2, #0
	str r0, [r1, r5]
	add r0, r4, #0
	str r0, [sp, #0x44]
	add r0, #0x68
	str r0, [sp, #0x44]
	ldr r0, _021F0418 ; =0x00000468
	mov r1, #0x72
	ldrh r0, [r4, r0]
	lsl r1, r1, #2
	sub r1, #9
	str r0, [sp]
	ldr r0, [r4, #4]
	mov r3, #0
	bl Oam_LoadNCGRFile
	ldr r1, [sp, #0x44]
	mov r2, #0x72
	str r0, [r1, r5]
	ldr r3, _021F0418 ; =0x00000468
	add r0, r4, #0
	str r0, [sp, #0x48]
	add r0, #0x6c
	mov r1, #0x72
	str r0, [sp, #0x48]
	lsl r1, r1, #2
	lsl r2, r2, #2
	sub r2, r2, #7
	ldrh r3, [r4, r3]
	ldr r0, [r4, #4]
	sub r1, #8
	str r2, [sp, #0x4c]
	bl Oam_LoadNCERFile
	ldr r1, [sp, #0x48]
	mov r2, #0
	str r0, [r1, r5]
	add r0, r4, #0
	str r0, [sp, #0x50]
	add r0, #0x70
	str r0, [sp, #0x50]
	ldr r0, _021F0418 ; =0x00000468
	mov r1, #0x72
	ldrh r0, [r4, r0]
	lsl r1, r1, #2
	sub r1, r1, #6
	str r0, [sp]
	ldr r0, [r4, #4]
	mov r3, #0
	bl Oam_LoadNCGRFile
	ldr r1, [sp, #0x50]
	ldr r3, _021F0418 ; =0x00000468
	str r0, [r1, r5]
	add r0, r4, #0
	str r0, [sp, #0x54]
	add r0, #0x74
	mov r1, #0x72
	str r0, [sp, #0x54]
	lsl r1, r1, #2
	ldrh r3, [r4, r3]
	ldr r0, [r4, #4]
	ldr r2, [sp, #0x4c]
	sub r1, r1, #5
	bl Oam_LoadNCERFile
	ldr r1, [sp, #0x54]
	str r0, [r1, r5]
	mov r0, #1
	and r0, r6
	str r0, [sp, #0x1c]
	bne _021F02C4
	ldr r0, _021F0418 ; =0x00000468
	mov r1, #0x72
	ldrh r0, [r4, r0]
	lsl r1, r1, #2
	sub r1, r1, #3
	str r0, [sp]
	ldr r0, [r4, #4]
	mov r2, #0
	mov r3, #0
	bl Oam_LoadNCGRFile
	add r1, r4, r5
	str r0, [r1, #0x78]
	ldr r3, _021F0418 ; =0x00000468
	mov r1, #0x72
	mov r2, #0x72
	lsl r1, r1, #2
	lsl r2, r2, #2
	ldrh r3, [r4, r3]
	ldr r0, [r4, #4]
	sub r1, r1, #2
	sub r2, r2, #1
	bl Oam_LoadNCERFile
	add r1, r4, r5
	str r0, [r1, #0x7c]
_021F02C4:
	ldr r1, _021F041C ; =0x021F3DAC
	add r0, sp, #0x60
	ldrh r2, [r1]
	strh r2, [r0]
	ldrh r2, [r1, #2]
	strh r2, [r0, #2]
	ldrh r2, [r1, #4]
	strh r2, [r0, #4]
	ldrh r1, [r1, #6]
	strh r1, [r0, #6]
	add r0, r6, #0
	cmp r6, #2
	blt _021F02E0
	sub r0, r6, #2
_021F02E0:
	cmp r7, #2
	bne _021F02E8
	ldr r1, _021F0420 ; =0x021F3D92
	b _021F02F2
_021F02E8:
	cmp r7, #3
	bne _021F02F0
	ldr r1, _021F0424 ; =0x021F3D9A
	b _021F02F2
_021F02F0:
	ldr r1, _021F0428 ; =0x021F3D8C
_021F02F2:
	ldrb r1, [r1, r6]
	str r1, [sp, #0x28]
	ldr r1, [sp, #0x28]
	lsl r0, r0, #2
	add r2, r1, #2
	add r1, sp, #0x60
	strb r2, [r1, #6]
	str r0, [sp, #0x5c]
	add r0, sp, #0x60
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021F0418 ; =0x00000468
	add r1, r4, #0
	str r1, [sp, #0x58]
	add r1, #0x18
	str r1, [sp, #0x58]
	ldrh r0, [r4, r0]
	ldr r3, [sp, #0x58]
	ldr r2, [sp, #0x5c]
	str r0, [sp, #8]
	ldr r1, [sp, #0x34]
	ldr r2, [r3, r2]
	ldr r3, [sp, #0x38]
	ldr r0, [r4]
	ldr r1, [r1, r5]
	ldr r3, [r3, r5]
	bl Oam_CreateSprite
	add r1, r4, r5
	str r0, [r1, #0x40]
	ldr r0, [sp, #0x28]
	ldr r3, [sp, #0x58]
	add r1, r0, #1
	add r0, sp, #0x60
	strb r1, [r0, #6]
	add r0, sp, #0x60
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021F0418 ; =0x00000468
	ldr r2, [sp, #0x5c]
	ldrh r0, [r4, r0]
	ldr r1, [sp, #0x3c]
	str r0, [sp, #8]
	ldr r2, [r3, r2]
	ldr r3, [sp, #0x40]
	ldr r0, [r4]
	ldr r1, [r1, r5]
	ldr r3, [r3, r5]
	bl Oam_CreateSprite
	add r1, r4, r5
	str r0, [r1, #0x44]
	add r0, sp, #0x60
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021F0418 ; =0x00000468
	ldr r3, [sp, #0x58]
	ldrh r0, [r4, r0]
	ldr r2, [sp, #0x5c]
	ldr r1, [sp, #0x44]
	str r0, [sp, #8]
	ldr r2, [r3, r2]
	ldr r3, [sp, #0x48]
	ldr r0, [r4]
	ldr r1, [r1, r5]
	ldr r3, [r3, r5]
	bl Oam_CreateSprite
	add r1, r4, r5
	str r0, [r1, #0x48]
	bl ovy168_21e00e8
	cmp r0, #3
	bne _021F03B0
	cmp r6, #4
	blt _021F03B0
	add r6, r4, #0
	ldr r0, [sp, #0x24]
	add r6, #0x54
	add r0, r6, r0
	str r0, [sp, #0x20]
	add r0, sp, #0x60
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021F0418 ; =0x00000468
	ldrh r0, [r4, r0]
	str r0, [sp, #8]
	ldr r0, [r4]
	ldr r1, [r4, #0x30]
	ldr r2, [r4, #0x3c]
	b _021F03CE
_021F03B0:
	add r6, r4, #0
	ldr r0, [sp, #0x24]
	add r6, #0x54
	add r0, r6, r0
	str r0, [sp, #0x20]
	add r0, sp, #0x60
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021F0418 ; =0x00000468
	ldrh r0, [r4, r0]
	str r0, [sp, #8]
	ldr r0, [r4]
	ldr r1, [r4, #0x30]
	ldr r2, [r4, #0x38]
_021F03CE:
	ldr r3, [r4, #0x34]
	bl Oam_CreateSprite
	ldr r1, [sp, #0x24]
	str r0, [r6, r1]
	ldr r0, [sp, #0x20]
	mov r1, #1
	ldr r0, [r0]
	bl sub_0204C520
	ldr r0, [sp, #0x28]
	add r1, sp, #0x60
	strb r0, [r1, #6]
	add r0, sp, #0x60
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021F0418 ; =0x00000468
	b _021F042C
	.align 2, 0
_021F03F4: .word 0x000001B3
_021F03F8: .word 0x000001B6
_021F03FC: .word 0x000001B7
_021F0400: .word 0x000001B5
_021F0404: .word 0x000001B9
_021F0408: .word 0x000001BA
_021F040C: .word 0x000001BD
_021F0410: .word 0x000001BB
_021F0414: .word 0x000001BE
_021F0418: .word 0x00000468
_021F041C: .word 0x021F3DAC
_021F0420: .word 0x021F3D92
_021F0424: .word 0x021F3D9A
_021F0428: .word 0x021F3D8C
_021F042C:
	ldr r3, [sp, #0x58]
	ldrh r0, [r4, r0]
	add r6, r4, #0
	ldr r2, [sp, #0x5c]
	str r0, [sp, #8]
	ldr r1, [sp, #0x50]
	ldr r2, [r3, r2]
	ldr r3, [sp, #0x54]
	ldr r0, [r4]
	ldr r1, [r1, r5]
	ldr r3, [r3, r5]
	add r6, #0x4c
	bl Oam_CreateSprite
	mov r1, #0
	str r0, [r6, r5]
	bl sub_0204C124
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _021F0482
	cmp r7, #2
	beq _021F0482
	cmp r7, #3
	beq _021F0482
	add r0, sp, #0x60
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021F0488 ; =0x00000468
	ldr r6, [sp, #0x58]
	ldrh r0, [r4, r0]
	ldr r2, [sp, #0x5c]
	add r3, r4, r5
	str r0, [sp, #8]
	ldr r1, [r3, #0x78]
	ldr r0, [r4]
	ldr r2, [r6, r2]
	ldr r3, [r3, #0x7c]
	bl Oam_CreateSprite
	add r1, r4, r5
	str r0, [r1, #0x50]
_021F0482:
	add sp, #0x68
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F0488: .word 0x00000468
	thumb_func_end ovy168_21f008c

	thumb_func_start ovy168_21f048c
ovy168_21f048c: ; 0x021F048C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r1, [sp]
	add r5, r0, #0
	ldr r0, [sp]
	mov r1, #0x84
	add r4, r0, #0
	mul r4, r1
	add r1, r5, r4
	ldr r0, [r1, #0x40]
	cmp r0, #0
	beq _021F055C
	ldr r0, [r1, #0x58]
	bl sub_0204B98C
	add r0, r5, r4
	ldr r0, [r0, #0x60]
	bl sub_0204B98C
	add r0, r5, r4
	ldr r0, [r0, #0x68]
	bl sub_0204B98C
	add r0, r5, r4
	ldr r0, [r0, #0x70]
	bl sub_0204B98C
	add r0, r5, r4
	ldr r0, [r0, #0x5c]
	bl sub_0204BE64
	add r0, r5, r4
	ldr r0, [r0, #0x64]
	bl sub_0204BE64
	add r0, r5, r4
	ldr r0, [r0, #0x6c]
	bl sub_0204BE64
	add r0, r5, r4
	ldr r0, [r0, #0x74]
	bl sub_0204BE64
	add r6, r5, #0
	add r6, #0x40
	ldr r0, [r6, r4]
	bl sub_0204C108
	add r7, r5, #0
	add r7, #0x44
	ldr r0, [r7, r4]
	bl sub_0204C108
	add r0, r5, #0
	str r0, [sp, #4]
	add r0, #0x48
	str r0, [sp, #4]
	ldr r0, [r0, r4]
	bl sub_0204C108
	add r0, r5, #0
	str r0, [sp, #8]
	add r0, #0x4c
	str r0, [sp, #8]
	ldr r0, [r0, r4]
	bl sub_0204C108
	add r0, r5, #0
	str r0, [sp, #0xc]
	add r0, #0x54
	str r0, [sp, #0xc]
	ldr r0, [r0, r4]
	bl sub_0204C108
	mov r0, #0
	str r0, [r6, r4]
	ldr r1, [sp, #4]
	str r0, [r7, r4]
	str r0, [r1, r4]
	ldr r1, [sp, #8]
	str r0, [r1, r4]
	ldr r1, [sp, #0xc]
	str r0, [r1, r4]
	ldr r0, [sp]
	mov r1, #1
	tst r0, r1
	bne _021F054A
	add r0, r5, r4
	ldr r0, [r0, #0x78]
	bl sub_0204B98C
	add r0, r5, r4
	ldr r0, [r0, #0x7c]
	bl sub_0204BE64
_021F054A:
	add r0, r5, r4
	ldr r0, [r0, #0x50]
	cmp r0, #0
	beq _021F055C
	bl sub_0204C108
	mov r1, #0
	add r0, r5, r4
	str r1, [r0, #0x50]
_021F055C:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy168_21f048c

	thumb_func_start ovy168_21f0560
ovy168_21f0560: ; 0x021F0560
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r2, #0
	add r5, r0, #0
	mov r0, #0x84
	add r4, r6, #0
	mul r4, r0
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	add r7, r5, #0
	str r0, [sp, #4]
	add r0, r5, r4
	str r3, [sp, #8]
	add r7, #0x88
	add r0, #0x8c
	add r3, r5, #0
	add r3, #0x90
	ldr r0, [r0]
	ldr r1, [r7, r4]
	mov r2, #0
	add r3, r3, r4
	bl ovy168_21f0d70
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0
	bl ovy168_21f1108
	add r1, r5, r4
	ldr r0, [r1, #0x50]
	cmp r0, #0
	beq _021F05CA
	mov r0, #0xa
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r1, #0
	add r0, #0x98
	add r1, #0x94
	add r3, r5, #0
	add r3, #0xa4
	ldr r0, [r0]
	ldr r1, [r1]
	mov r2, #0
	add r3, r3, r4
	bl ovy168_21f0d70
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #1
	bl ovy168_21f1108
_021F05CA:
	add r6, r5, #0
	add r6, #0x40
	ldr r2, [sp, #8]
	add r0, r5, #0
	add r1, r6, r4
	bl ovy168_21f0ef8
	add r0, r5, #0
	add r1, r6, r4
	bl ovy168_21f1070
	ldr r2, [r7, r4]
	add r0, r5, #0
	add r1, r6, r4
	bl ovy168_21f1218
	add r0, r5, #0
	add r1, r6, r4
	bl ovy168_21f1348
	add r0, r5, r4
	add r0, #0x84
	ldr r0, [r0]
	cmp r0, #0
	beq _021F060C
	bl ovy168_21e00f8
	cmp r0, #0
	bne _021F060C
	add r0, r5, #0
	add r1, r6, r4
	bl ovy168_21f1458
_021F060C:
	add r0, r5, #0
	add r0, #0xb0
	ldr r2, [r0, r4]
	mov r1, #8
	add r3, r2, #0
	orr r3, r1
	ldr r2, _021F063C ; =0xFFF0FFFF
	lsl r1, r1, #0xe
	and r2, r3
	orr r1, r2
	str r1, [r0, r4]
	bl ovy168_21e00ac
	ldr r1, _021F0640 ; =ovy168_21f19c0
	add r2, r6, r4
	mov r3, #0
	bl sub_0203A614
	add r1, r5, r4
	add r1, #0xc0
	str r0, [r1]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021F063C: .word 0xFFF0FFFF
_021F0640: .word ovy168_21f19c0
	thumb_func_end ovy168_21f0560

	thumb_func_start ovy168_21f0644
ovy168_21f0644: ; 0x021F0644
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x4c]
	ldr r0, [r4, #0x48]
	cmp r1, #0x30
	bge _021F065E
	lsl r0, r0, #8
	mov r2, #0x30
	bl ovy168_21f1bfc
	lsr r0, r0, #8
	str r0, [r4, #0x78]
	pop {r4, pc}
_021F065E:
	mov r2, #0x30
	bl ovy168_21f1bfc
	str r0, [r4, #0x78]
	pop {r4, pc}
	thumb_func_end ovy168_21f0644

	thumb_func_start ovy168_21f0668
ovy168_21f0668: ; 0x021F0668
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r6, r5, #0
	mov r0, #0x84
	add r4, r1, #0
	mul r4, r0
	add r6, #0xb0
	ldr r0, [r6, r4]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	beq _021F06AC
	ldr r2, _021F06C8 ; =0x021F3D88
	add r0, sp, #0
	ldrh r3, [r2]
	strh r3, [r0]
	ldrh r2, [r2, #2]
	strh r2, [r0, #2]
	mov r2, #1
	tst r2, r1
	beq _021F069C
	mov r3, #0
	ldrsh r2, [r0, r3]
	sub r3, r3, #1
	mul r3, r2
	strh r3, [r0]
_021F069C:
	add r0, r5, #0
	add r2, sp, #0
	bl ovy168_21f06cc
	ldr r1, [r6, r4]
	mov r0, #8
	bic r1, r0
	str r1, [r6, r4]
_021F06AC:
	add r0, r5, r4
	add r0, #0xc0
	ldr r0, [r0]
	cmp r0, #0
	beq _021F06C2
	bl GFL_TCBRemove
	add r0, r5, r4
	mov r1, #0
	add r0, #0xc0
	str r1, [r0]
_021F06C2:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021F06C8: .word 0x021F3D88
	thumb_func_end ovy168_21f0668

	thumb_func_start ovy168_21f06cc
ovy168_21f06cc: ; 0x021F06CC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x7c
	str r0, [sp]
	ldr r0, _021F0860 ; =0x021F3DB4
	str r1, [sp, #4]
	ldrh r1, [r0]
	add r7, sp, #0x10
	mov ip, r2
	strh r1, [r7, #8]
	ldrh r1, [r0, #2]
	ldr r3, _021F0864 ; =0x021F3DBC
	add r2, sp, #0x64
	strh r1, [r7, #0xa]
	ldrh r1, [r0, #4]
	strh r1, [r7, #0xc]
	ldrh r0, [r0, #6]
	strh r0, [r7, #0xe]
	ldr r0, _021F0868 ; =0x021F3DA4
	ldrh r1, [r0]
	strh r1, [r7]
	ldrh r1, [r0, #2]
	strh r1, [r7, #2]
	ldrh r1, [r0, #4]
	strh r1, [r7, #4]
	ldrh r0, [r0, #6]
	mov r1, #0xc
	strh r0, [r7, #6]
_021F0702:
	ldrh r0, [r3]
	add r3, r3, #2
	strh r0, [r2]
	add r2, r2, #2
	sub r1, r1, #1
	bne _021F0702
	ldr r3, _021F086C ; =0x021F3DF0
	add r2, sp, #0x44
	mov r1, #0x10
_021F0714:
	ldrh r0, [r3]
	add r3, r3, #2
	strh r0, [r2]
	add r2, r2, #2
	sub r1, r1, #1
	bne _021F0714
	ldr r3, _021F0870 ; =0x021F3E10
	add r2, sp, #0x24
	mov r1, #0x10
_021F0726:
	ldrh r0, [r3]
	add r3, r3, #2
	strh r0, [r2]
	add r2, r2, #2
	sub r1, r1, #1
	bne _021F0726
	ldr r0, [sp, #4]
	mov r1, #0x84
	add r5, r0, #0
	ldr r0, [sp]
	mul r5, r1
	str r0, [sp, #0xc]
	add r0, #0x80
	str r0, [sp, #0xc]
	ldr r0, [r0, r5]
	cmp r0, #2
	bne _021F0754
	ldr r0, [sp, #4]
	lsl r1, r0, #2
	add r0, sp, #0x44
	ldrsh r6, [r0, r1]
	add r0, sp, #0x44
	b _021F076E
_021F0754:
	cmp r0, #3
	bne _021F0764
	ldr r0, [sp, #4]
	lsl r1, r0, #2
	add r0, sp, #0x24
	ldrsh r6, [r0, r1]
	add r0, sp, #0x24
	b _021F076E
_021F0764:
	ldr r0, [sp, #4]
	lsl r1, r0, #2
	add r0, sp, #0x64
	ldrsh r6, [r0, r1]
	add r0, sp, #0x64
_021F076E:
	add r0, #2
	ldrsh r4, [r0, r1]
	mov r0, ip
	cmp r0, #0
	beq _021F0788
	mov r1, #0
	mov r0, ip
	ldrsh r0, [r0, r1]
	mov r1, #2
	add r6, r6, r0
	mov r0, ip
	ldrsh r0, [r0, r1]
	add r4, r4, r0
_021F0788:
	ldr r0, [sp]
	strh r6, [r7, #0x10]
	strh r4, [r7, #0x12]
	add r0, r0, r5
	ldr r0, [r0, #0x40]
	cmp r0, #0
	beq _021F079E
	add r1, sp, #0x20
	mov r2, #0
	bl Oam_SetSpritePosData
_021F079E:
	ldr r0, [sp, #4]
	mov r1, #1
	and r0, r1
	str r0, [sp, #8]
	bne _021F07C6
	ldr r0, [sp, #0xc]
	ldr r0, [r0, r5]
	cmp r0, #0
	bne _021F07C6
	ldr r0, [sp]
	add r0, #0x44
	ldr r0, [r0, r5]
	cmp r0, #0
	beq _021F07C6
	add r1, r6, #0
	add r1, #0x10
	strh r1, [r7, #0x10]
	add r1, r4, #0
	add r1, #0xd
	b _021F07E6
_021F07C6:
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _021F07F0
	ldr r0, [sp, #0xc]
	ldr r0, [r0, r5]
	cmp r0, #1
	beq _021F07F0
	ldr r0, [sp]
	add r0, #0x44
	ldr r0, [r0, r5]
	cmp r0, #0
	beq _021F07F0
	add r1, r6, #0
	add r1, #0x10
	strh r1, [r7, #0x10]
	add r1, r4, #7
_021F07E6:
	strh r1, [r7, #0x12]
	add r1, sp, #0x20
	mov r2, #0
	bl Oam_SetSpritePosData
_021F07F0:
	ldr r0, [sp]
	add r0, #0x48
	ldr r0, [r0, r5]
	cmp r0, #0
	beq _021F0818
	ldr r1, [sp, #8]
	add r2, sp, #0x18
	lsl r1, r1, #2
	ldrsh r2, [r2, r1]
	add r2, r6, r2
	strh r2, [r7, #0x10]
	add r2, sp, #0x18
	add r2, #2
	ldrsh r1, [r2, r1]
	mov r2, #0
	add r1, r4, r1
	strh r1, [r7, #0x12]
	add r1, sp, #0x20
	bl Oam_SetSpritePosData
_021F0818:
	ldr r0, [sp]
	add r0, #0x54
	ldr r0, [r0, r5]
	cmp r0, #0
	beq _021F0840
	ldr r1, [sp, #8]
	add r2, sp, #0x10
	lsl r1, r1, #2
	ldrsh r2, [r2, r1]
	add r2, r6, r2
	strh r2, [r7, #0x10]
	add r2, sp, #0x10
	add r2, #2
	ldrsh r1, [r2, r1]
	mov r2, #0
	add r1, r4, r1
	strh r1, [r7, #0x12]
	add r1, sp, #0x20
	bl Oam_SetSpritePosData
_021F0840:
	ldr r0, [sp]
	add r0, #0x50
	str r0, [sp]
	ldr r0, [r0, r5]
	cmp r0, #0
	beq _021F085C
	add r6, #8
	strh r6, [r7, #0x10]
	add r4, #0x15
	add r1, sp, #0x20
	mov r2, #0
	strh r4, [r7, #0x12]
	bl Oam_SetSpritePosData
_021F085C:
	add sp, #0x7c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021F0860: .word 0x021F3DB4
_021F0864: .word 0x021F3DBC
_021F0868: .word 0x021F3DA4
_021F086C: .word 0x021F3DF0
_021F0870: .word 0x021F3E10
	thumb_func_end ovy168_21f06cc

	thumb_func_start ovy168_21f0874
ovy168_21f0874: ; 0x021F0874
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r3, #0x84
	add r1, r5, #0
	mul r4, r3
	add r1, #0x40
	add r1, r1, r4
	bl ovy168_21f0ba0
	add r0, r5, r4
	mov r1, #1
	add r0, #0xb4
	str r1, [r0]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy168_21f0874

	thumb_func_start ovy168_21f0894
ovy168_21f0894: ; 0x021F0894
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r3, #0x84
	add r1, r5, #0
	mul r4, r3
	add r1, #0x40
	add r1, r1, r4
	bl ovy168_21f0ba0
	add r0, r5, r4
	mov r1, #0
	add r0, #0xb4
	str r1, [r0]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy168_21f0894

	thumb_func_start ovy168_21f08b4
ovy168_21f08b4: ; 0x021F08B4
	push {r3, r4, r5, lr}
	mov r3, #0x84
	mul r3, r1
	add r1, r0, #0
	add r1, #0xb0
	ldr r5, [r1, r3]
	ldr r4, _021F08D8 ; =0xFFFF00FF
	add r0, #0x40
	and r5, r4
	mov r4, #1
	lsl r4, r4, #0x1c
	orr r4, r5
	str r4, [r1, r3]
	add r0, r0, r3
	add r1, r2, #0
	bl ovy168_21f0cb8
	pop {r3, r4, r5, pc}
	.align 2, 0
_021F08D8: .word 0xFFFF00FF
	thumb_func_end ovy168_21f08b4

	thumb_func_start ovy168_21f08dc
ovy168_21f08dc: ; 0x021F08DC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	mov r0, #0x84
	add r4, r2, #0
	mul r4, r0
	add r0, r5, r4
	add r0, #0x98
	add r6, r1, #0
	ldr r1, [r0]
	add r0, r5, r4
	add r0, #0x94
	ldr r0, [r0]
	sub r0, r1, r0
	str r0, [sp]
	add r0, r6, #0
	mov r1, #0xd
	bl ovy167_21bb1b4
	add r1, r5, r4
	add r1, #0x88
	str r0, [r1]
	add r0, r6, #0
	mov r1, #0xe
	bl ovy167_21bb1b4
	add r1, r5, r4
	add r1, #0x8c
	str r0, [r1]
	mov r1, #2
	add r0, r5, r4
	add r7, r5, #0
	lsl r1, r1, #0x1e
	add r0, #0x90
	str r1, [r0]
	add r0, r5, r4
	mov r1, #0
	add r0, #0xa8
	str r1, [r0]
	add r7, #0xac
	add r0, r6, #0
	mov r1, #0xf
	bl ovy167_21bb1b4
	strb r0, [r7, r4]
	ldrb r0, [r7, r4]
	cmp r0, #0x64
	bhs _021F0998
	add r0, r6, #0
	bl ovy167_21bac44
	str r0, [sp, #4]
	add r0, r6, #0
	mov r1, #0x13
	bl ovy167_21bb1b4
	add r7, r0, #0
	add r0, r6, #0
	mov r1, #0xf
	bl ovy167_21bb1b4
	add r2, r0, #0
	add r2, r2, #1
	lsl r1, r7, #0x10
	lsl r2, r2, #0x10
	ldr r0, [sp, #4]
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_0201D5B4
	add r7, r0, #0
	add r0, r6, #0
	bl ovy167_21bac44
	str r0, [sp, #8]
	add r0, r6, #0
	mov r1, #0x13
	bl ovy167_21bb1b4
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #0xf
	bl ovy167_21bb1b4
	add r2, r0, #0
	ldr r1, [sp, #0xc]
	lsl r2, r2, #0x10
	lsl r1, r1, #0x10
	ldr r0, [sp, #8]
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_0201D5B4
	b _021F09F2
_021F0998:
	add r0, r6, #0
	bl ovy167_21bac44
	str r0, [sp, #0x10]
	add r0, r6, #0
	mov r1, #0x13
	bl ovy167_21bb1b4
	add r7, r0, #0
	add r0, r6, #0
	mov r1, #0xf
	bl ovy167_21bb1b4
	add r2, r0, #0
	lsl r1, r7, #0x10
	lsl r2, r2, #0x10
	ldr r0, [sp, #0x10]
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_0201D5B4
	add r7, r0, #0
	add r0, r6, #0
	bl ovy167_21bac44
	str r0, [sp, #0x14]
	add r0, r6, #0
	mov r1, #0x13
	bl ovy167_21bb1b4
	str r0, [sp, #0x18]
	add r0, r6, #0
	mov r1, #0xf
	bl ovy167_21bb1b4
	add r2, r0, #0
	ldr r1, [sp, #0x18]
	sub r2, r2, #1
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [sp, #0x14]
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_0201D5B4
_021F09F2:
	sub r1, r7, r0
	add r0, r5, r4
	add r0, #0x9c
	str r1, [r0]
	add r0, r6, #0
	bl ovy167_21bac44
	str r0, [sp, #0x1c]
	add r0, r6, #0
	mov r1, #0x13
	bl ovy167_21bb1b4
	add r7, r0, #0
	add r0, r6, #0
	mov r1, #0xf
	bl ovy167_21bb1b4
	add r2, r0, #0
	lsl r1, r7, #0x10
	lsl r2, r2, #0x10
	ldr r0, [sp, #0x1c]
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_0201D5B4
	add r0, r6, #0
	bl ovy167_21bac44
	str r0, [sp, #0x20]
	add r0, r6, #0
	mov r1, #0x13
	bl ovy167_21bb1b4
	add r7, r0, #0
	add r0, r6, #0
	mov r1, #0xf
	bl ovy167_21bb1b4
	add r2, r0, #0
	sub r2, r2, #1
	lsl r1, r7, #0x10
	lsl r2, r2, #0x10
	ldr r0, [sp, #0x20]
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_0201D5B4
	add r0, r5, #0
	add r0, #0xb0
	ldr r2, [r0, r4]
	mov r1, #0xf0
	bic r2, r1
	mov r1, #4
	orr r2, r1
	ldr r1, _021F0A78 ; =0xFFFF00FF
	add r5, #0x40
	and r2, r1
	mov r1, #1
	lsl r1, r1, #0x1c
	orr r1, r2
	str r1, [r0, r4]
	ldr r1, [sp]
	add r0, r5, r4
	bl ovy168_21f0cb8
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021F0A78: .word 0xFFFF00FF
	thumb_func_end ovy168_21f08dc

	thumb_func_start ovy168_21f0a7c
ovy168_21f0a7c: ; 0x021F0A7C
	push {r3, r4}
	mov r1, #0
	add r0, #0xb0
	mov r2, #0x84
_021F0A84:
	add r3, r1, #0
	mul r3, r2
	ldr r4, [r0, r3]
	lsl r3, r4, #0x1f
	lsr r3, r3, #0x1f
	bne _021F0AA2
	lsl r3, r4, #0x1e
	lsr r3, r3, #0x1f
	bne _021F0AA2
	lsl r3, r4, #0x1d
	lsr r3, r3, #0x1f
	bne _021F0AA2
	lsl r3, r4, #3
	lsr r3, r3, #0x1f
	beq _021F0AA8
_021F0AA2:
	mov r0, #1
	pop {r3, r4}
	bx lr
_021F0AA8:
	add r1, r1, #1
	cmp r1, #8
	blt _021F0A84
	mov r0, #0
	pop {r3, r4}
	bx lr
	thumb_func_end ovy168_21f0a7c

	thumb_func_start ovy168_21f0ab4
ovy168_21f0ab4: ; 0x021F0AB4
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r5, r0, #0
	add r7, r1, #0
	add r6, r2, #0
	cmp r4, #8
	bge _021F0AF4
_021F0AC2:
	cmp r6, #2
	beq _021F0AD4
	mov r0, #0x84
	mul r0, r4
	add r0, r5, r0
	add r0, #0x84
	ldr r0, [r0]
	cmp r6, r0
	bne _021F0AEE
_021F0AD4:
	mov r0, #0x84
	mul r0, r4
	add r0, r5, r0
	add r0, #0xb0
	ldr r0, [r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	beq _021F0AEE
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	bl ovy168_21f0af8
_021F0AEE:
	add r4, r4, #1
	cmp r4, #8
	blt _021F0AC2
_021F0AF4:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy168_21f0ab4

	thumb_func_start ovy168_21f0af8
ovy168_21f0af8: ; 0x021F0AF8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r2, #0
	add r2, r5, #0
	mov r0, #0x84
	add r4, r7, #0
	mul r4, r0
	add r2, #0xb0
	ldr r3, [r2, r4]
	ldr r0, _021F0B58 ; =0xDFFFFFFF
	add r6, r1, #0
	and r0, r3
	lsl r3, r6, #0x1f
	lsr r3, r3, #2
	orr r0, r3
	str r0, [r2, r4]
	add r0, r5, r4
	ldr r0, [r0, #0x40]
	cmp r0, #0
	beq _021F0B2E
	bl sub_0204C124
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	bl ovy168_21f1c14
_021F0B2E:
	add r0, r5, r4
	ldr r0, [r0, #0x50]
	cmp r0, #0
	beq _021F0B3C
	add r1, r6, #0
	bl sub_0204C124
_021F0B3C:
	add r5, #0x54
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021F0B54
	bl sub_0204C4A0
	cmp r0, #0
	beq _021F0B54
	ldr r0, [r5, r4]
	add r1, r6, #0
	bl sub_0204C124
_021F0B54:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F0B58: .word 0xDFFFFFFF
	thumb_func_end ovy168_21f0af8
_021F0B5C:
	.byte 0x84, 0x22, 0x4A, 0x43
	.byte 0x80, 0x18, 0xB0, 0x30, 0x00, 0x68, 0x00, 0x07, 0xC0, 0x0F, 0x01, 0xD0, 0x01, 0x20, 0x70, 0x47
	.byte 0x00, 0x20, 0x70, 0x47

	thumb_func_start ovy168_21f0b74
ovy168_21f0b74: ; 0x021F0B74
	push {r3, r4}
	mov r2, #0x84
	mul r2, r1
	add r1, r0, r2
	ldr r1, [r1, #0x40]
	cmp r1, #0
	beq _021F0B92
	add r0, #0xb0
	ldr r3, [r0, r2]
	lsl r1, r3, #4
	lsr r4, r1, #0x1f
	ldr r1, _021F0B9C ; =0xF7FFFFFF
	and r1, r3
	str r1, [r0, r2]
	b _021F0B94
_021F0B92:
	mov r4, #1
_021F0B94:
	add r0, r4, #0
	pop {r3, r4}
	bx lr
	nop
_021F0B9C: .word 0xF7FFFFFF
	thumb_func_end ovy168_21f0b74

	thumb_func_start ovy168_21f0ba0
ovy168_21f0ba0: ; 0x021F0BA0
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	mov r0, #2
	add r4, r1, #0
	lsl r0, r0, #0x1e
	str r0, [r4, #0x50]
	ldr r0, [r4, #0x48]
	sub r1, r0, r2
	str r1, [r4, #0x68]
	cmp r0, #0
	bge _021F0BBC
	mov r0, #0
	str r0, [r4, #0x48]
_021F0BBC:
	ldr r1, [r4, #0x4c]
	ldr r0, [r4, #0x48]
	cmp r0, r1
	ble _021F0BC6
	str r1, [r4, #0x48]
_021F0BC6:
	ldr r1, [r4, #0x70]
	mov r0, #1
	bic r1, r0
	mov r0, #1
	orr r0, r1
	str r0, [r4, #0x70]
	ldr r0, [r4, #0x68]
	cmp r0, #0
	ble _021F0C22
	add r0, r4, #0
	bl ovy168_21f0644
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021F0BEC
	add r1, sp, #0
	mov r2, #0
	bl Oam_GetSpritePosData
_021F0BEC:
	ldr r6, [r4, #0x78]
	mov r1, #0x30
	sub r1, r1, r6
	lsl r1, r1, #0x10
	add r3, sp, #0
	mov r2, #0
	ldrsh r0, [r3, r2]
	asr r1, r1, #0x10
	sub r0, r0, r1
	strh r0, [r3]
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021F0C0C
	add r1, sp, #0
	bl Oam_SetSpritePosData
_021F0C0C:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021F0C18
	mov r1, #1
	bl sub_0204C124
_021F0C18:
	ldr r2, [r4, #0x78]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy168_21f1498
_021F0C22:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy168_21f0ba0

	thumb_func_start ovy168_21f0c28
ovy168_21f0c28: ; 0x021F0C28
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r7, r1, #0
	add r1, r5, #0
	mov r0, #0x84
	add r1, #0x40
	mul r0, r7
	add r4, r1, r0
	mov r0, #6
	str r0, [sp]
	ldr r0, [r4, #0x74]
	add r3, r4, #0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, [r4, #0x4c]
	ldr r1, [r4, #0x48]
	ldr r2, [r4, #0x68]
	add r3, #0x50
	bl ovy168_21f0d70
	add r6, r0, #0
	add r1, r7, #0
	add r0, r5, #0
	mov r7, #0
	mov r2, #0
	bl ovy168_21f1108
	sub r0, r7, #1
	cmp r6, r0
	bne _021F0CA4
	ldr r1, [r4, #0x48]
	ldr r0, [r4, #0x68]
	sub r2, r1, r0
	str r2, [r4, #0x48]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy168_21f1218
	add r0, r4, #0
	ldr r2, [r4, #0x70]
	mov r1, #1
	bic r2, r1
	str r2, [r4, #0x70]
	str r7, [r4, #0x50]
	ldr r1, [r4, #0x68]
	add r0, #0x70
	cmp r1, #0
	ble _021F0CAE
	ldr r2, [r0]
	ldr r1, _021F0CB4 ; =0xFC1FFFFF
	add sp, #8
	and r2, r1
	mov r1, #9
	lsl r1, r1, #0x16
	orr r2, r1
	mov r1, #1
	lsl r1, r1, #0x1a
	orr r1, r2
	str r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
_021F0CA4:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy168_21f1218
_021F0CAE:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F0CB4: .word 0xFC1FFFFF
	thumb_func_end ovy168_21f0c28

	thumb_func_start ovy168_21f0cb8
ovy168_21f0cb8: ; 0x021F0CB8
	mov r2, #2
	lsl r2, r2, #0x1e
	ldr r3, [r0, #0x54]
	str r2, [r0, #0x64]
	add r2, r3, r1
	bpl _021F0CC6
	sub r1, r1, r2
_021F0CC6:
	ldr r2, [r0, #0x58]
	add r3, r3, r1
	cmp r3, r2
	ble _021F0CD2
	sub r2, r3, r2
	sub r1, r1, r2
_021F0CD2:
	neg r1, r1
	str r1, [r0, #0x60]
	ldr r1, [r0, #0x54]
	cmp r1, #0
	bge _021F0CE0
	mov r1, #0
	str r1, [r0, #0x54]
_021F0CE0:
	ldr r2, [r0, #0x58]
	ldr r1, [r0, #0x54]
	cmp r1, r2
	ble _021F0CEA
	str r2, [r0, #0x54]
_021F0CEA:
	ldr r2, [r0, #0x70]
	mov r1, #2
	orr r1, r2
	str r1, [r0, #0x70]
	bx lr
	thumb_func_end ovy168_21f0cb8

	thumb_func_start ovy168_21f0cf4
ovy168_21f0cf4: ; 0x021F0CF4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r7, r1, #0
	add r1, r5, #0
	mov r0, #0x84
	add r1, #0x40
	mul r0, r7
	add r4, r1, r0
	ldr r0, [r4, #0x54]
	ldr r1, [r4, #0x60]
	ldr r2, [r4, #0x58]
	mov r3, #0xa
	bl ovy168_21f0eb4
	add r1, r0, #0
	bne _021F0D18
	mov r1, #1
_021F0D18:
	ldr r6, [r4, #0x60]
	add r0, r6, #0
	blx sub_0208D65C
	cmp r0, #0
	bge _021F0D26
	neg r0, r0
_021F0D26:
	cmp r0, #0
	bne _021F0D2C
	mov r0, #1
_021F0D2C:
	mov r1, #0xa
	lsl r0, r0, #0x10
	str r1, [sp]
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	add r3, r4, #0
	ldr r0, [r4, #0x58]
	ldr r1, [r4, #0x54]
	add r2, r6, #0
	add r3, #0x64
	bl ovy168_21f0d70
	add r6, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	mov r5, #1
	mov r2, #1
	bl ovy168_21f1108
	sub r0, r5, #2
	cmp r6, r0
	bne _021F0D6C
	ldr r1, [r4, #0x54]
	ldr r0, [r4, #0x60]
	sub r0, r1, r0
	str r0, [r4, #0x54]
	ldr r1, [r4, #0x70]
	mov r0, #2
	bic r1, r0
	str r1, [r4, #0x70]
	mov r0, #0
	str r0, [r4, #0x64]
_021F0D6C:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy168_21f0cf4

	thumb_func_start ovy168_21f0d70
ovy168_21f0d70: ; 0x021F0D70
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r1, sp, #0x18
	ldrb r1, [r1]
	add r5, r3, #0
	add r7, r2, #0
	mov r2, #2
	lsl r1, r1, #0x1b
	ldr r3, [r5]
	lsl r2, r2, #0x1e
	lsr r1, r1, #0x18
	ldr r6, [sp, #0x1c]
	cmp r3, r2
	bne _021F0D98
	cmp r0, r1
	bge _021F0D96
	lsl r2, r4, #8
	str r2, [r5]
	b _021F0D98
_021F0D96:
	str r4, [r5]
_021F0D98:
	sub r4, r4, r7
	bpl _021F0DA0
	mov r4, #0
	b _021F0DA6
_021F0DA0:
	cmp r4, r0
	ble _021F0DA6
	add r4, r0, #0
_021F0DA6:
	cmp r0, r1
	bge _021F0DBE
	ldr r3, [r5]
	asr r2, r3, #8
	cmp r4, r2
	bne _021F0DCA
	lsl r2, r3, #0x18
	lsr r2, r2, #0x18
	bne _021F0DCA
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_021F0DBE:
	ldr r2, [r5]
	cmp r4, r2
	bne _021F0DCA
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_021F0DCA:
	cmp r0, r1
	bge _021F0E10
	lsl r0, r0, #8
	blx sub_0208D65C
	cmp r7, #0
	ldr r1, [r5]
	bge _021F0DF0
	add r0, r1, r0
	str r0, [r5]
	asr r0, r0, #8
	cmp r0, r4
	bge _021F0DE8
	cmp r6, #0
	bne _021F0E34
_021F0DE8:
	lsl r0, r4, #8
	str r0, [r5]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F0DF0:
	sub r1, r1, r0
	str r1, [r5]
	asr r0, r1, #8
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, #0
	ble _021F0E00
	add r0, r0, #1
_021F0E00:
	cmp r0, r4
	ble _021F0E08
	cmp r6, #0
	bne _021F0E34
_021F0E08:
	lsl r0, r4, #8
	str r0, [r5]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F0E10:
	cmp r7, #0
	ldr r0, [r5]
	bge _021F0E24
	add r0, r0, r6
	str r0, [r5]
	cmp r0, r4
	bgt _021F0E22
	cmp r6, #0
	bne _021F0E32
_021F0E22:
	b _021F0E30
_021F0E24:
	sub r0, r0, r6
	str r0, [r5]
	cmp r0, r4
	blt _021F0E30
	cmp r6, #0
	bne _021F0E32
_021F0E30:
	str r4, [r5]
_021F0E32:
	ldr r0, [r5]
_021F0E34:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy168_21f0d70

	thumb_func_start ovy168_21f0e38
ovy168_21f0e38: ; 0x021F0E38
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r5, [sp, #0x18]
	sub r7, r1, r2
	bpl _021F0E46
	mov r7, #0
	b _021F0E4C
_021F0E46:
	cmp r7, r6
	ble _021F0E4C
	add r7, r6, #0
_021F0E4C:
	add r0, sp, #0x18
	ldrb r4, [r0, #4]
	mov r1, #0
	lsl r2, r4, #3
	cmp r4, #0
	ble _021F0E62
	add r0, r1, #0
_021F0E5A:
	strb r0, [r5, r1]
	add r1, r1, #1
	cmp r1, r4
	blt _021F0E5A
_021F0E62:
	cmp r6, r2
	ldr r1, [r3]
	bhs _021F0E76
	add r0, r1, #0
	mul r0, r2
	add r1, r6, #0
	blx sub_0208D868
	lsr r0, r0, #8
	b _021F0E80
_021F0E76:
	add r0, r1, #0
	mul r0, r2
	add r1, r6, #0
	blx sub_0208D868
_021F0E80:
	add r2, r0, #0
	cmp r0, #0
	bne _021F0E90
	cmp r7, #0
	ble _021F0E90
	mov r2, #1
	strb r2, [r5]
	b _021F0EAC
_021F0E90:
	mov r3, #0
	cmp r4, #0
	ble _021F0EAC
	mov r1, #8
_021F0E98:
	cmp r0, #8
	blo _021F0EA2
	strb r1, [r5, r3]
	sub r0, #8
	b _021F0EA6
_021F0EA2:
	strb r0, [r5, r3]
	b _021F0EAC
_021F0EA6:
	add r3, r3, #1
	cmp r3, r4
	blt _021F0E98
_021F0EAC:
	lsl r0, r2, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy168_21f0e38

	thumb_func_start ovy168_21f0eb4
ovy168_21f0eb4: ; 0x021F0EB4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	lsl r0, r3, #0x1b
	add r5, r2, #0
	lsr r6, r0, #0x18
	sub r4, r7, r1
	bpl _021F0EC6
	mov r4, #0
	b _021F0ECC
_021F0EC6:
	cmp r4, r5
	ble _021F0ECC
	add r4, r5, #0
_021F0ECC:
	add r0, r7, #0
	mul r0, r6
	add r1, r5, #0
	blx sub_0208D65C
	add r7, r0, #0
	add r0, r4, #0
	mul r0, r6
	add r1, r5, #0
	blx sub_0208D65C
	lsl r1, r7, #0x18
	lsl r0, r0, #0x18
	asr r1, r1, #0x18
	asr r0, r0, #0x18
	sub r0, r1, r0
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	bpl _021F0EF4
	neg r0, r0
_021F0EF4:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy168_21f0eb4

	thumb_func_start ovy168_21f0ef8
ovy168_21f0ef8: ; 0x021F0EF8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r1, #0
	add r4, r0, #0
	ldr r1, _021F1068 ; =0x00000468
	ldr r7, _021F106C ; =0x00007FFF
	ldrh r1, [r4, r1]
	str r2, [sp, #4]
	mov r0, #0xc
	add r2, r1, #0
	and r2, r7
	add r1, r7, #1
	orr r1, r2
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl GFL_StrBufCreate
	ldr r3, _021F1068 ; =0x00000468
	add r6, r0, #0
	ldrh r3, [r4, r3]
	mov r0, #8
	mov r1, #2
	and r7, r3
	mov r3, #0x20
	lsl r3, r3, #0xa
	orr r3, r7
	lsl r3, r3, #0x10
	mov r2, #0x20
	lsr r3, r3, #0x10
	bl sub_02046E28
	mov r1, #0
	add r7, r0, #0
	bl BmpWin_BitmapFill
	ldr r0, [sp, #4]
	mov r1, #0x73
	add r2, r6, #0
	bl sub_0201CCF8
	add r0, sp, #8
	add r1, sp, #8
	add r0, #2
	add r1, #1
	add r2, sp, #8
	bl sub_02023370
	mov r0, #1
	mov r1, #4
	mov r2, #0
	bl sub_020232E8
	ldr r1, [r4, #8]
	add r0, r6, #0
	mov r2, #0
	bl GFL_FontGetBlockWidth
	cmp r0, #0x30
	ldr r0, [r4, #8]
	ble _021F0F78
	str r0, [sp]
	add r0, r7, #0
	mov r1, #2
	b _021F0F7E
_021F0F78:
	str r0, [sp]
	add r0, r7, #0
	mov r1, #8
_021F0F7E:
	mov r2, #5
	add r3, r6, #0
	bl sub_02021CFC
	add r2, sp, #8
	ldrb r0, [r2, #2]
	ldrb r1, [r2, #1]
	ldrb r2, [r2]
	bl sub_020232E8
	ldr r0, [r5]
	cmp r0, #0
	beq _021F1058
	add r0, r7, #0
	bl sub_02046EF4
	add r4, r0, #0
	ldr r0, [r5]
	add r1, sp, #0xc
	bl sub_0204C40C
	ldr r0, [r5, #0x44]
	cmp r0, #0
	beq _021F1004
	mov r5, #0x19
	lsl r5, r5, #0x16
	add r2, r5, #0
	ldr r1, [sp, #0x10]
	add r2, #0x40
	add r1, r2, r1
	add r0, r4, #0
	mov r2, #0xc0
	blx MIi_CpuCopy16
	mov r1, #0xc0
	add r1, #0x80
	mov r0, #0xc0
	add r2, r5, r1
	ldr r1, [sp, #0x10]
	add r0, #0x40
	add r1, r2, r1
	add r0, r4, r0
	mov r2, #0xc0
	blx MIi_CpuCopy16
	mov r1, #1
	lsl r1, r1, #0xa
	add r2, r5, r1
	ldr r1, [sp, #0x10]
	add r0, r4, #0
	add r1, r2, r1
	add r0, #0xc0
	mov r2, #0x40
	blx MIi_CpuCopy16
	mov r1, #5
	lsl r1, r1, #8
	mov r0, #7
	add r2, r5, r1
	ldr r1, [sp, #0x10]
	lsl r0, r0, #6
	add r1, r2, r1
	add r0, r4, r0
	mov r2, #0x40
	blx MIi_CpuCopy16
	b _021F1058
_021F1004:
	mov r5, #0x19
	lsl r5, r5, #0x16
	add r2, r5, #0
	ldr r1, [sp, #0x10]
	add r2, #0x20
	add r1, r2, r1
	add r0, r4, #0
	mov r2, #0xe0
	blx MIi_CpuCopy16
	mov r1, #0xe0
	add r1, #0x40
	mov r0, #0xe0
	add r2, r5, r1
	ldr r1, [sp, #0x10]
	add r0, #0x20
	add r1, r2, r1
	add r0, r4, r0
	mov r2, #0xe0
	blx MIi_CpuCopy16
	mov r1, #1
	lsl r1, r1, #0xa
	add r2, r5, r1
	ldr r1, [sp, #0x10]
	add r0, r4, #0
	add r1, r2, r1
	add r0, #0xe0
	mov r2, #0x20
	blx MIi_CpuCopy16
	mov r1, #5
	lsl r1, r1, #8
	mov r0, #0x1e
	add r2, r5, r1
	ldr r1, [sp, #0x10]
	lsl r0, r0, #4
	add r1, r2, r1
	add r0, r4, r0
	mov r2, #0x20
	blx MIi_CpuCopy16
_021F1058:
	add r0, r6, #0
	bl GFL_StrBufFree
	add r0, r7, #0
	bl sub_02046EDC
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021F1068: .word 0x00000468
_021F106C: .word 0x00007FFF
	thumb_func_end ovy168_21f0ef8

	thumb_func_start ovy168_21f1070
ovy168_21f1070: ; 0x021F1070
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r7, r1, #0
	add r5, r0, #0
	add r0, r7, #0
	add r0, #0x6d
	ldrb r2, [r0]
	mov r0, #0xe
	lsl r0, r0, #6
	lsl r1, r2, #6
	add r6, r1, r0
	add r0, #0x20
	add r4, r1, r0
	cmp r2, #2
	bne _021F1094
	mov r6, #0x66
	lsl r6, r6, #4
	add r4, r6, #0
_021F1094:
	ldr r0, [r7]
	cmp r0, #0
	beq _021F1102
	add r1, sp, #0
	bl sub_0204C40C
	ldr r0, [r7, #0x44]
	cmp r0, #0
	beq _021F10D6
	mov r7, #0x19
	mov r1, #0x11
	ldr r0, [r5, #0x14]
	lsl r7, r7, #0x16
	lsl r1, r1, #6
	add r2, r7, r1
	ldr r1, [sp, #4]
	add r0, r0, r6
	add r1, r2, r1
	mov r2, #0x20
	blx MIi_CpuCopy16
	mov r1, #0x15
	lsl r1, r1, #6
	ldr r0, [r5, #0x14]
	add r2, r7, r1
	ldr r1, [sp, #4]
	add r0, r0, r4
	add r1, r2, r1
	mov r2, #0x20
	blx MIi_CpuCopy16
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
_021F10D6:
	mov r7, #0x19
	mov r1, #0x42
	ldr r0, [r5, #0x14]
	lsl r7, r7, #0x16
	lsl r1, r1, #4
	add r2, r7, r1
	ldr r1, [sp, #4]
	add r0, r0, r6
	add r1, r2, r1
	mov r2, #0x20
	blx MIi_CpuCopy16
	mov r1, #0x52
	lsl r1, r1, #4
	ldr r0, [r5, #0x14]
	add r2, r7, r1
	ldr r1, [sp, #4]
	add r0, r0, r4
	add r1, r2, r1
	mov r2, #0x20
	blx MIi_CpuCopy16
_021F1102:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy168_21f1070

	thumb_func_start ovy168_21f1108
ovy168_21f1108: ; 0x021F1108
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r5, r0, #0
	add r3, r5, #0
	mov r0, #0x84
	add r3, #0x40
	mul r0, r1
	add r7, r3, r0
	ldr r0, [r7, #8]
	cmp r0, #0
	beq _021F1214
	cmp r2, #0
	beq _021F112A
	cmp r2, #1
	beq _021F11C2
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
_021F112A:
	mov r2, #0x46
	lsl r2, r2, #4
	ldr r2, [r5, r2]
	lsl r2, r2, #0x1b
	lsr r2, r2, #0x1f
	beq _021F113C
	mov r2, #1
	tst r1, r2
	beq _021F1214
_021F113C:
	add r1, sp, #0xc
	bl sub_0204C40C
	add r0, sp, #0x30
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	add r3, r7, #0
	ldr r0, [r7, #0x4c]
	ldr r1, [r7, #0x48]
	ldr r2, [r7, #0x68]
	add r3, #0x50
	bl ovy168_21f0e38
	str r0, [sp, #8]
	ldr r1, [r7, #0x4c]
	ldr r0, [r7, #0x50]
	cmp r1, #0x30
	bge _021F1164
	asr r0, r0, #8
_021F1164:
	bl sub_0203373C
	cmp r0, #0
	beq _021F1174
	cmp r0, #1
	beq _021F1178
	cmp r0, #2
	b _021F117E
_021F1174:
	mov r6, #0
	b _021F1182
_021F1178:
	mov r6, #0x12
	lsl r6, r6, #4
	b _021F1182
_021F117E:
	mov r6, #9
	lsl r6, r6, #6
_021F1182:
	mov r4, #0
_021F1184:
	add r1, sp, #0x30
	ldrb r1, [r1, r4]
	ldr r0, [r5, #0x14]
	ldr r3, [sp, #0x10]
	lsl r1, r1, #5
	add r1, r6, r1
	add r0, r0, r1
	add r1, r4, #1
	lsl r2, r1, #5
	mov r1, #0x19
	lsl r1, r1, #0x16
	add r1, r1, r2
	add r1, r3, r1
	mov r2, #0x20
	blx MIi_CpuCopy16
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #6
	blo _021F1184
	ldr r0, [r7, #0x68]
	cmp r0, #0
	ble _021F1214
	ldr r2, [sp, #8]
	add r0, r5, #0
	add r1, r7, #0
	bl ovy168_21f1498
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
_021F11C2:
	ldr r0, [r7, #0x10]
	cmp r0, #0
	beq _021F1214
	add r1, sp, #0xc
	bl sub_0204C40C
	add r0, sp, #0x30
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	ldr r0, [r7, #0x58]
	ldr r1, [r7, #0x54]
	ldr r2, [r7, #0x60]
	add r7, #0x64
	add r3, r7, #0
	bl ovy168_21f0e38
	mov r6, #0x19
	mov r7, #1
	mov r4, #0
	lsl r6, r6, #0x16
	lsl r7, r7, #0xa
_021F11EE:
	add r1, sp, #0x30
	ldrb r1, [r1, r4]
	add r2, r4, #1
	lsl r2, r2, #5
	lsl r1, r1, #5
	ldr r0, [r5, #0x14]
	add r1, r1, r7
	add r0, r0, r1
	ldr r1, [sp, #0x10]
	add r2, r6, r2
	add r1, r1, r2
	mov r2, #0x20
	blx MIi_CpuCopy16
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0xa
	blo _021F11EE
_021F1214:
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy168_21f1108

	thumb_func_start ovy168_21f1218
ovy168_21f1218: ; 0x021F1218
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r7, r1, #0
	add r5, r0, #0
	ldr r0, [r7, #4]
	add r4, r2, #0
	cmp r0, #0
	bne _021F122A
	b _021F1342
_021F122A:
	add r1, sp, #0xc
	bl sub_0204C40C
	mov r2, #0x66
	add r1, sp, #4
	mov r6, #0
	lsl r2, r2, #4
	add r1, #2
	add r0, sp, #0
_021F123C:
	lsl r3, r6, #1
	add r6, r6, #1
	strh r2, [r1, r3]
	strh r2, [r0, r3]
	cmp r6, #3
	blt _021F123C
	cmp r4, #0x64
	blt _021F126A
	add r0, r4, #0
	mov r1, #0x64
	blx sub_0208D65C
	lsl r1, r0, #5
	mov r0, #0x52
	lsl r0, r0, #4
	add r1, r1, r0
	add r0, sp, #0
	strh r1, [r0, #6]
	add r0, r4, #0
	mov r1, #0x64
	blx sub_0208D65C
	add r4, r1, #0
_021F126A:
	cmp r4, #0xa
	bge _021F127A
	add r0, sp, #0
	ldrh r1, [r0, #6]
	mov r0, #0x66
	lsl r0, r0, #4
	cmp r1, r0
	beq _021F1298
_021F127A:
	add r0, r4, #0
	mov r1, #0xa
	blx sub_0208D65C
	lsl r1, r0, #5
	mov r0, #0x52
	lsl r0, r0, #4
	add r1, r1, r0
	add r0, sp, #0
	strh r1, [r0, #8]
	add r0, r4, #0
	mov r1, #0xa
	blx sub_0208D65C
	add r4, r1, #0
_021F1298:
	mov r0, #0x52
	lsl r1, r4, #5
	lsl r0, r0, #4
	add r1, r1, r0
	add r0, sp, #0
	strh r1, [r0, #0xa]
	ldr r6, [r7, #0x4c]
	mov r4, #0
	cmp r6, #0x64
	blt _021F12CC
	add r0, r6, #0
	mov r1, #0x64
	blx sub_0208D65C
	lsl r1, r0, #5
	mov r0, #0x52
	lsl r0, r0, #4
	add r1, r1, r0
	add r0, sp, #0
	strh r1, [r0]
	add r0, r6, #0
	mov r1, #0x64
	blx sub_0208D65C
	add r6, r1, #0
	add r4, r4, #1
_021F12CC:
	cmp r6, #0xa
	bge _021F12D4
	cmp r4, #0
	beq _021F12F6
_021F12D4:
	add r0, r6, #0
	mov r1, #0xa
	blx sub_0208D65C
	lsl r1, r0, #5
	mov r0, #0x52
	lsl r0, r0, #4
	add r2, r1, r0
	lsl r1, r4, #1
	add r0, sp, #0
	strh r2, [r0, r1]
	add r0, r6, #0
	mov r1, #0xa
	blx sub_0208D65C
	add r6, r1, #0
	add r4, r4, #1
_021F12F6:
	mov r0, #0x52
	lsl r1, r6, #5
	lsl r0, r0, #4
	add r2, r1, r0
	lsl r1, r4, #1
	add r0, sp, #0
	mov r7, #0x19
	strh r2, [r0, r1]
	mov r4, #0
	lsl r7, r7, #0x16
_021F130A:
	add r0, sp, #4
	lsl r6, r4, #1
	add r0, #2
	ldrh r0, [r0, r6]
	ldr r1, [r5, #0x14]
	lsl r2, r4, #5
	add r0, r1, r0
	ldr r1, [sp, #0x10]
	add r2, r7, r2
	add r1, r1, r2
	mov r2, #0x20
	blx MIi_CpuCopy16
	add r0, sp, #0
	add r2, r4, #4
	lsl r2, r2, #5
	ldrh r0, [r0, r6]
	ldr r1, [r5, #0x14]
	add r2, r7, r2
	add r0, r1, r0
	ldr r1, [sp, #0x10]
	add r1, r1, r2
	mov r2, #0x20
	blx MIi_CpuCopy16
	add r4, r4, #1
	cmp r4, #3
	blt _021F130A
_021F1342:
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy168_21f1218

	thumb_func_start ovy168_21f1348
ovy168_21f1348: ; 0x021F1348
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	ldr r4, _021F1450 ; =0x00000468
	add r6, r0, #0
	add r5, r1, #0
	ldrh r1, [r6, r4]
	ldr r7, _021F1454 ; =0x00007FFF
	mov r0, #4
	add r2, r1, #0
	and r2, r7
	add r1, r7, #1
	orr r1, r2
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl GFL_StrBufCreate
	ldrh r3, [r6, r4]
	str r0, [sp, #4]
	mov r0, #3
	and r7, r3
	mov r3, #0x20
	lsl r3, r3, #0xa
	orr r3, r7
	lsl r3, r3, #0x10
	mov r1, #2
	mov r2, #0x20
	lsr r3, r3, #0x10
	bl sub_02046E28
	mov r1, #0
	add r7, r0, #0
	bl BmpWin_BitmapFill
	ldr r0, [r5]
	cmp r0, #0
	beq _021F1440
	mov r0, #0
	add r1, r5, #0
	str r0, [sp]
	add r1, #0x6c
	ldrb r1, [r1]
	ldr r0, [sp, #4]
	mov r2, #3
	mov r3, #0
	bl sub_02024A14
	add r0, sp, #8
	add r1, sp, #8
	add r0, #2
	add r1, #1
	add r2, sp, #8
	bl sub_02023370
	mov r0, #1
	mov r1, #4
	mov r2, #0
	bl sub_020232E8
	ldr r0, [r6, #8]
	ldr r3, [sp, #4]
	str r0, [sp]
	add r0, r7, #0
	mov r1, #0
	mov r2, #5
	bl sub_02021CFC
	add r2, sp, #8
	ldrb r0, [r2, #2]
	ldrb r1, [r2, #1]
	ldrb r2, [r2]
	bl sub_020232E8
	add r0, r7, #0
	bl sub_02046EF4
	add r6, r0, #0
	ldr r0, [r5]
	add r1, sp, #0xc
	bl sub_0204C40C
	ldr r0, [r5, #0x44]
	cmp r0, #0
	beq _021F1418
	mov r5, #0x19
	lsl r5, r5, #0x16
	add r4, #0x18
	ldr r1, [sp, #0x10]
	add r2, r5, r4
	add r1, r2, r1
	add r0, r6, #0
	mov r2, #0x60
	blx MIi_CpuCopy16
	mov r1, #0x16
	lsl r1, r1, #6
	add r2, r5, r1
	ldr r1, [sp, #0x10]
	add r6, #0x60
	add r1, r2, r1
	add r0, r6, #0
	mov r2, #0x60
	blx MIi_CpuCopy16
	b _021F1440
_021F1418:
	mov r5, #0x19
	add r1, r4, #0
	lsl r5, r5, #0x16
	sub r1, #8
	add r2, r5, r1
	ldr r1, [sp, #0x10]
	add r0, r6, #0
	add r1, r2, r1
	mov r2, #0x60
	blx MIi_CpuCopy16
	add r4, #0xf8
	add r6, #0x60
	ldr r1, [sp, #0x10]
	add r2, r5, r4
	add r1, r2, r1
	add r0, r6, #0
	mov r2, #0x60
	blx MIi_CpuCopy16
_021F1440:
	ldr r0, [sp, #4]
	bl GFL_StrBufFree
	add r0, r7, #0
	bl sub_02046EDC
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021F1450: .word 0x00000468
_021F1454: .word 0x00007FFF
	thumb_func_end ovy168_21f1348

	thumb_func_start ovy168_21f1458
ovy168_21f1458: ; 0x021F1458
	push {r4, r5, lr}
	sub sp, #0x24
	add r5, r0, #0
	mov r4, #0x36
	ldr r0, [r1]
	lsl r4, r4, #4
	cmp r0, #0
	beq _021F1492
	add r1, #0x6f
	ldrb r1, [r1]
	cmp r1, #0
	bne _021F1474
	mov r4, #0x66
	lsl r4, r4, #4
_021F1474:
	add r1, sp, #0
	bl sub_0204C40C
	mov r2, #0x19
	mov r1, #0x12
	ldr r0, [r5, #0x14]
	lsl r2, r2, #0x16
	lsl r1, r1, #4
	add r2, r2, r1
	ldr r1, [sp, #4]
	add r0, r0, r4
	add r1, r2, r1
	mov r2, #0x20
	blx MIi_CpuCopy16
_021F1492:
	add sp, #0x24
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy168_21f1458

	thumb_func_start ovy168_21f1498
ovy168_21f1498: ; 0x021F1498
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r0, #0
	ldr r0, [r1, #0x78]
	sub r2, r0, r2
	ldr r0, [r1, #0xc]
	cmp r0, #0
	beq _021F1504
	mov r4, #0
	mov r3, #8
	add r1, sp, #0
_021F14AE:
	strb r3, [r1, r4]
	add r4, r4, #1
	cmp r4, #6
	blt _021F14AE
	mov r1, #5
	mov r4, #0
	add r3, sp, #0
_021F14BC:
	cmp r2, #8
	blt _021F14C6
	strb r4, [r3, r1]
	sub r2, #8
	b _021F14D0
_021F14C6:
	mov r3, #8
	sub r3, r3, r2
	add r2, sp, #0
	strb r3, [r2, r1]
	b _021F14D4
_021F14D0:
	sub r1, r1, #1
	bpl _021F14BC
_021F14D4:
	add r1, sp, #8
	bl sub_0204C40C
	mov r6, #0x19
	mov r4, #0
	lsl r6, r6, #0x16
	add r7, sp, #0
_021F14E2:
	ldrb r1, [r7, r4]
	ldr r0, [r5, #0x14]
	lsl r2, r1, #5
	mov r1, #0x6a
	lsl r1, r1, #4
	add r1, r2, r1
	add r0, r0, r1
	lsl r2, r4, #5
	ldr r1, [sp, #0xc]
	add r2, r6, r2
	add r1, r1, r2
	mov r2, #0x20
	blx MIi_CpuCopy16
	add r4, r4, #1
	cmp r4, #6
	blt _021F14E2
_021F1504:
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy168_21f1498

	thumb_func_start ovy168_21f1508
ovy168_21f1508: ; 0x021F1508
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r1, #0
	add r1, r5, #0
	mov r0, #0x84
	add r1, #0x40
	mul r0, r6
	add r4, r1, r0
	ldr r0, [r4, #0x70]
	lsl r1, r0, #0x1e
	lsr r1, r1, #0x1f
	bne _021F15CE
	lsl r1, r0, #0x18
	lsr r2, r1, #0x1c
	beq _021F1534
	cmp r2, #1
	beq _021F1554
	cmp r2, #2
	beq _021F1566
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021F1534:
	ldr r0, _021F15D4 ; =0x0000056E
	bl GFL_SndSEPlay
	ldr r2, [r4, #0x70]
	mov r1, #0xf0
	add r0, r2, #0
	bic r0, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x1c
	add r1, r1, #1
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x18
	orr r0, r1
	add sp, #8
	str r0, [r4, #0x70]
	pop {r3, r4, r5, r6, r7, pc}
_021F1554:
	mov r1, #0xf0
	bic r0, r1
	add r1, r2, #1
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x18
	orr r0, r1
	add sp, #8
	str r0, [r4, #0x70]
	pop {r3, r4, r5, r6, r7, pc}
_021F1566:
	mov r1, #0
	str r1, [r4, #0x54]
	ldr r0, [r4, #0x5c]
	add r3, r4, #0
	str r0, [r4, #0x58]
	mov r0, #2
	lsl r0, r0, #0x1e
	str r0, [r4, #0x64]
	str r1, [r4, #0x60]
	mov r0, #6
	str r0, [sp]
	mov r7, #1
	str r7, [sp, #4]
	ldr r0, [r4, #0x4c]
	ldr r1, [r4, #0x48]
	mov r2, #0
	add r3, #0x50
	bl ovy168_21f0d70
	mov r0, #0xa
	str r0, [sp]
	str r7, [sp, #4]
	add r3, r4, #0
	ldr r0, [r4, #0x58]
	ldr r1, [r4, #0x54]
	mov r2, #0
	add r3, #0x64
	bl ovy168_21f0d70
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0
	bl ovy168_21f1108
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #1
	bl ovy168_21f1108
	ldr r2, [r4, #0x48]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy168_21f1218
	add r0, r5, #0
	add r1, r4, #0
	bl ovy168_21f1348
	ldr r1, [r4, #0x70]
	mov r0, #4
	bic r1, r0
	str r1, [r4, #0x70]
_021F15CE:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F15D4: .word 0x0000056E
	thumb_func_end ovy168_21f1508

	thumb_func_start ovy168_21f15d8
ovy168_21f15d8: ; 0x021F15D8
	push {r3, r4, r5, lr}
	mov r2, #0xf
	mvn r2, r2
	add r4, sp, #0
	strh r2, [r4]
	mov r2, #0x46
	lsl r2, r2, #4
	ldr r3, [r0, r2]
	lsl r3, r3, #0xb
	lsr r3, r3, #0x10
	asr r3, r3, #4
	lsl r5, r3, #2
	ldr r3, _021F1620 ; =FX_SinCosTable_ ; 0x020946BC
	ldrsh r5, [r3, r5]
	asr r3, r5, #0xa
	lsr r3, r3, #0x15
	add r3, r5, r3
	asr r3, r3, #0xb
	strh r3, [r4, #2]
	ldr r4, [r0, r2]
	ldr r3, _021F1624 ; =0xFFE0001F
	and r3, r4
	lsl r4, r4, #0xb
	lsr r5, r4, #0x10
	add r4, r2, #0
	sub r4, #0x60
	add r4, r5, r4
	lsl r4, r4, #0x10
	lsr r4, r4, #0xb
	orr r3, r4
	str r3, [r0, r2]
	add r2, sp, #0
	bl ovy168_21f06cc
	pop {r3, r4, r5, pc}
	nop
_021F1620: .word FX_SinCosTable_
_021F1624: .word 0xFFE0001F
	thumb_func_end ovy168_21f15d8

	thumb_func_start ovy168_21f1628
ovy168_21f1628: ; 0x021F1628
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	ldr r6, _021F16A4 ; =0x021F3DD4
	add r3, sp, #0
	add r5, r0, #0
	add r4, r1, #0
	ldmia r6!, {r0, r1}
	add r7, r3, #0
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	str r0, [r3]
	mov r0, #0x46
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	lsl r0, r0, #6
	lsr r0, r0, #0x1e
	cmp r0, #2
	bne _021F1666
	lsl r0, r4, #2
	ldr r1, [r7, r0]
	mov r0, #0x84
	mul r0, r2
	add r0, r5, r0
	add r0, #0xbc
	str r1, [r0]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021F1666:
	mov r0, #0x84
	add r6, r2, #0
	mul r6, r0
	add r5, #0x54
	ldr r0, [r5, r6]
	cmp r0, #0
	beq _021F169E
	cmp r4, #0
	bne _021F168A
	mov r1, #0
	bl sub_0204C124
	ldr r0, [r5, r6]
	mov r1, #0
	bl sub_0204C488
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021F168A:
	mov r1, #1
	bl sub_0204C124
	lsl r1, r4, #2
	ldr r1, [r7, r1]
	ldr r0, [r5, r6]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0204C488
_021F169E:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021F16A4: .word 0x021F3DD4
	thumb_func_end ovy168_21f1628

	thumb_func_start ovy168_21f16a8
ovy168_21f16a8: ; 0x021F16A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r1, [sp]
	ldr r1, _021F1728 ; =0x021F3D84
	add r5, r0, #0
	ldrh r2, [r1]
	add r0, sp, #8
	add r6, r5, #0
	strh r2, [r0]
	ldrh r1, [r1, #2]
	mov r4, #0
	add r6, #0xb0
	strh r1, [r0, #2]
	ldrh r7, [r0]
	ldrh r0, [r0, #2]
	str r0, [sp, #4]
_021F16C8:
	mov r0, #0x84
	add r3, r4, #0
	mul r3, r0
	add r0, r5, r3
	ldr r0, [r0, #0x40]
	cmp r0, #0
	beq _021F16F6
	ldr r2, [r6, r3]
	lsl r0, r2, #0xb
	lsr r0, r0, #0x1f
	beq _021F16F6
	add r0, sp, #8
	ldr r1, [sp, #4]
	strh r7, [r0, #4]
	strh r1, [r0, #6]
	ldr r0, _021F172C ; =0xFFEFFFFF
	add r1, r4, #0
	and r0, r2
	str r0, [r6, r3]
	add r0, r5, #0
	add r2, sp, #0xc
	bl ovy168_21f06cc
_021F16F6:
	add r4, r4, #1
	cmp r4, #8
	blt _021F16C8
	ldr r0, [sp]
	cmp r0, #8
	beq _021F1724
	ldr r1, [sp]
	add r0, r5, #0
	add r3, r1, #0
	mov r2, #0x84
	mov r1, #1
	add r0, #0xb0
	mul r3, r2
	ldr r2, [r0, r3]
	lsl r1, r1, #0x14
	orr r1, r2
	str r1, [r0, r3]
	mov r1, #0x46
	lsl r1, r1, #4
	ldr r2, [r5, r1]
	ldr r0, _021F1730 ; =0xFFE0001F
	and r0, r2
	str r0, [r5, r1]
_021F1724:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021F1728: .word 0x021F3D84
_021F172C: .word 0xFFEFFFFF
_021F1730: .word 0xFFE0001F
	thumb_func_end ovy168_21f16a8

	thumb_func_start ovy168_21f1734
ovy168_21f1734: ; 0x021F1734
	mov r1, #0x46
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	bx lr
	thumb_func_end ovy168_21f1734

	thumb_func_start ovy168_21f1740
ovy168_21f1740: ; 0x021F1740
	push {r3, r4}
	mov r3, #0x46
	lsl r3, r3, #4
	ldr r4, [r0, r3]
	mov r2, #4
	lsl r1, r1, #0x1f
	bic r4, r2
	lsr r1, r1, #0x1d
	orr r1, r4
	str r1, [r0, r3]
	pop {r3, r4}
	bx lr
	thumb_func_end ovy168_21f1740

	thumb_func_start ovy168_21f1758
ovy168_21f1758: ; 0x021F1758
	ldr r2, _021F1760 ; =0x00000464
	str r1, [r0, r2]
	bx lr
	nop
_021F1760: .word 0x00000464
	thumb_func_end ovy168_21f1758

	thumb_func_start ovy168_21f1764
ovy168_21f1764: ; 0x021F1764
	push {r3, r4}
	mov r3, #0x46
	lsl r3, r3, #4
	ldr r4, [r0, r3]
	mov r2, #8
	lsl r1, r1, #0x1f
	bic r4, r2
	lsr r1, r1, #0x1c
	orr r1, r4
	str r1, [r0, r3]
	pop {r3, r4}
	bx lr
	thumb_func_end ovy168_21f1764

	thumb_func_start ovy168_21f177c
ovy168_21f177c: ; 0x021F177C
	push {r3, r4}
	mov r3, #0x46
	lsl r3, r3, #4
	ldr r4, [r0, r3]
	ldr r2, _021F1794 ; =0xFFDFFFFF
	lsl r1, r1, #0x1f
	and r2, r4
	lsr r1, r1, #0xa
	orr r1, r2
	str r1, [r0, r3]
	pop {r3, r4}
	bx lr
	.align 2, 0
_021F1794: .word 0xFFDFFFFF
	thumb_func_end ovy168_21f177c

	thumb_func_start ovy168_21f1798
ovy168_21f1798: ; 0x021F1798
	push {r3, r4, r5, lr}
	mov r4, #0x46
	lsl r4, r4, #4
	ldr r4, [r0, r4]
	lsl r4, r4, #6
	lsr r4, r4, #0x1e
	cmp r4, #2
	bne _021F17C4
	mov r4, #0x84
	mul r4, r1
	add r4, r0, r4
	add r4, #0xb0
	ldr r4, [r4]
	lsl r4, r4, #0x1c
	lsr r4, r4, #0x1f
	beq _021F17C4
	mov r4, #0
	str r4, [sp]
	bl ovy168_21f17f8
	mov r0, #1
	pop {r3, r4, r5, pc}
_021F17C4:
	mov r4, #0x84
	mul r4, r1
	add r5, r0, r4
	ldr r5, [r5, #0x40]
	cmp r5, #0
	beq _021F17E2
	add r5, r0, #0
	add r5, #0xb0
	ldr r4, [r5, r4]
	lsl r5, r4, #0x1c
	lsr r5, r5, #0x1f
	beq _021F17E2
	lsl r4, r4, #1
	lsr r4, r4, #0x1f
	beq _021F17EC
_021F17E2:
	mov r0, #0
	str r0, [r2]
	mov r1, #8
	str r1, [r3]
	pop {r3, r4, r5, pc}
_021F17EC:
	mov r4, #1
	str r4, [sp]
	bl ovy168_21f17f8
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ovy168_21f1798

	thumb_func_start ovy168_21f17f8
ovy168_21f17f8: ; 0x021F17F8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [sp, #0x18]
	add r7, r2, #0
	add r4, r3, #0
	cmp r0, #0
	bne _021F1814
	mov r0, #0x84
	add r6, r1, #0
	mul r6, r0
	add r0, r5, r6
	add r0, #0xbc
	ldr r0, [r0]
	b _021F1822
_021F1814:
	mov r0, #0x84
	add r6, r1, #0
	mul r6, r0
	add r0, r5, r6
	ldr r0, [r0, #0x54]
	bl sub_0204C4A0
_021F1822:
	str r0, [r4]
	add r0, r5, r6
	add r1, r5, r6
	add r0, #0x88
	add r1, #0x8c
	ldr r0, [r0]
	ldr r1, [r1]
	bl sub_0203373C
	str r0, [r7]
	ldr r0, [r4]
	cmp r0, #0
	bne _021F1840
	mov r0, #8
	str r0, [r4]
_021F1840:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy168_21f17f8

	thumb_func_start ovy168_21f1844
ovy168_21f1844: ; 0x021F1844
	add r1, r0, #0
	mov r2, #8
	add r1, #0xbc
	str r2, [r1]
	mov r1, #5
	lsl r1, r1, #6
	str r2, [r0, r1]
	bx lr
	thumb_func_end ovy168_21f1844

	thumb_func_start ovy168_21f1854
ovy168_21f1854: ; 0x021F1854
	mov r2, #0x46
	lsl r2, r2, #4
	mov r1, #1
	ldr r3, [r0, r2]
	lsl r1, r1, #0x16
	orr r1, r3
	str r1, [r0, r2]
	bx lr
	thumb_func_end ovy168_21f1854

	thumb_func_start ovy168_21f1864
ovy168_21f1864: ; 0x021F1864
	mov r2, #0x84
	add r3, r1, #0
	mul r3, r2
	add r1, r0, r3
	ldr r1, [r1, #0x40]
	cmp r1, #0
	beq _021F187E
	add r0, #0xb0
	mov r1, #1
	ldr r2, [r0, r3]
	lsl r1, r1, #0x1e
	orr r1, r2
	str r1, [r0, r3]
_021F187E:
	bx lr
	thumb_func_end ovy168_21f1864

	thumb_func_start ovy168_21f1880
ovy168_21f1880: ; 0x021F1880
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0x46
	add r5, r0, #0
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	beq _021F1910
	bl sub_02005EC0
	cmp r0, #0
	beq _021F189A
	b _021F19BA
_021F189A:
	ldr r1, [r5, r4]
	mov r0, #2
	bic r1, r0
	lsl r0, r1, #0x1d
	str r1, [r5, r4]
	lsr r0, r0, #0x1f
	beq _021F18DE
	bl sub_02005F0C
	ldr r0, [r5, r4]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	bne _021F18D0
	bl ovy168_21e021c
	cmp r0, #0
	beq _021F18D0
	add r0, r4, #4
	ldr r0, [r5, r0]
	ldr r1, _021F19BC ; =0x0000FFFF
	bl sub_02005DF4
	ldr r1, [r5, r4]
	mov r0, #8
	orr r0, r1
	str r0, [r5, r4]
	b _021F18D6
_021F18D0:
	mov r0, #0
	bl ovy168_21f1be8
_021F18D6:
	mov r0, #0x18
	bl sub_02005E68
	b _021F18F2
_021F18DE:
	mov r0, #1
	bl ovy168_21f1be8
	bl sub_02005ED4
	add r4, #0x1a
	ldr r1, _021F19BC ; =0x0000FFFF
	add r0, r4, #0
	bl sub_02005DF4
_021F18F2:
	mov r2, #0x46
	lsl r2, r2, #4
	ldr r3, [r5, r2]
	mov r1, #4
	add r0, r3, #0
	bic r0, r1
	lsl r1, r3, #0x1d
	lsr r3, r1, #0x1f
	mov r1, #1
	eor r1, r3
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1d
	orr r0, r1
	str r0, [r5, r2]
	pop {r3, r4, r5, r6, r7, pc}
_021F1910:
	mov r0, #0
	add r6, r5, #0
	str r0, [sp]
	mov r7, #0
	mov r4, #0
	add r6, #0xb0
_021F191C:
	mov r0, #0x84
	add r1, r4, #0
	mul r1, r0
	ldr r0, [r6, r1]
	lsl r2, r0, #0x1f
	lsr r2, r2, #0x1f
	bne _021F1936
	lsl r2, r0, #0x1e
	lsr r2, r2, #0x1f
	bne _021F1936
	lsl r2, r0, #0x1d
	lsr r2, r2, #0x1f
	beq _021F193C
_021F1936:
	mov r0, #1
	str r0, [sp]
	b _021F196C
_021F193C:
	add r2, r5, r1
	add r2, #0x84
	ldr r2, [r2]
	cmp r2, #0
	bne _021F196C
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	beq _021F196C
	add r0, r5, r1
	add r0, #0x80
	ldr r0, [r0]
	cmp r0, #4
	beq _021F196C
	add r0, r5, r1
	add r1, r5, r1
	add r0, #0x88
	add r1, #0x8c
	ldr r0, [r0]
	ldr r1, [r1]
	bl sub_0203373C
	cmp r0, #2
	bne _021F196C
	mov r7, #1
_021F196C:
	add r4, r4, #1
	cmp r4, #8
	blt _021F191C
	mov r4, #0x46
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	bne _021F198A
	bl sub_02005C9C
	add r1, r4, #4
	ldr r1, [r5, r1]
	cmp r1, r0
	bne _021F19BA
_021F198A:
	ldr r0, [sp]
	cmp r0, #0
	bne _021F19BA
	mov r0, #0x46
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	beq _021F19A0
	cmp r7, #0
	beq _021F19A8
_021F19A0:
	cmp r0, #0
	bne _021F19BA
	cmp r7, #1
	bne _021F19BA
_021F19A8:
	mov r1, #0x46
	lsl r1, r1, #4
	ldr r2, [r5, r1]
	mov r0, #2
	orr r0, r2
	str r0, [r5, r1]
	mov r0, #8
	bl sub_02005EA0
_021F19BA:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021F19BC: .word 0x0000FFFF
	thumb_func_end ovy168_21f1880

	thumb_func_start ovy168_21f19c0
ovy168_21f19c0: ; 0x021F19C0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	str r0, [sp]
	ldr r0, [r5, #0x44]
	cmp r0, #0
	beq _021F19D2
	mov r4, #8
	b _021F19D6
_021F19D2:
	mov r4, #7
	mvn r4, r4
_021F19D6:
	ldr r0, [r5]
	cmp r0, #0
	beq _021F1A5C
	add r1, sp, #4
	mov r2, #0
	mov r7, #0
	bl Oam_GetSpritePosData
	add r6, sp, #4
	lsl r0, r4, #0x10
	ldrsh r1, [r6, r7]
	asr r0, r0, #0x10
	mov r2, #0
	add r0, r1, r0
	strh r0, [r6]
	ldr r0, [r5]
	add r1, sp, #4
	bl Oam_SetSpritePosData
	ldr r0, [r5, #8]
	add r1, sp, #4
	mov r2, #0
	bl Oam_GetSpritePosData
	lsl r0, r4, #0x10
	ldrsh r1, [r6, r7]
	asr r0, r0, #0x10
	mov r2, #0
	add r0, r1, r0
	strh r0, [r6]
	ldr r0, [r5, #8]
	add r1, sp, #4
	bl Oam_SetSpritePosData
	ldr r0, [r5, #0x14]
	add r1, sp, #4
	mov r2, #0
	bl Oam_GetSpritePosData
	lsl r0, r4, #0x10
	ldrsh r1, [r6, r7]
	asr r0, r0, #0x10
	mov r2, #0
	add r0, r1, r0
	strh r0, [r6]
	ldr r0, [r5, #0x14]
	add r1, sp, #4
	bl Oam_SetSpritePosData
	ldr r0, [r5, #0x44]
	cmp r0, #0
	bne _021F1A5C
	ldr r0, [r5, #4]
	add r1, sp, #4
	add r2, r7, #0
	bl Oam_GetSpritePosData
	lsl r0, r4, #0x10
	ldrsh r1, [r6, r7]
	asr r0, r0, #0x10
	add r2, r7, #0
	add r0, r1, r0
	strh r0, [r6]
	ldr r0, [r5, #4]
	add r1, sp, #4
	bl Oam_SetSpritePosData
_021F1A5C:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _021F1A84
	add r7, sp, #4
	add r1, r7, #0
	mov r2, #0
	mov r6, #0
	bl Oam_GetSpritePosData
	add r1, sp, #4
	lsl r0, r4, #0x10
	ldrsh r2, [r1, r6]
	asr r0, r0, #0x10
	add r0, r2, r0
	strh r0, [r1]
	ldr r0, [r5, #0x10]
	add r1, r7, #0
	mov r2, #0
	bl Oam_SetSpritePosData
_021F1A84:
	ldr r1, [r5, #0x70]
	ldr r0, _021F1AB0 ; =0xFFF0FFFF
	and r0, r1
	lsl r1, r1, #0xc
	lsr r1, r1, #0x1c
	sub r1, r1, #1
	lsl r1, r1, #0x1c
	lsr r1, r1, #0xc
	orr r0, r1
	str r0, [r5, #0x70]
	lsl r0, r0, #0xc
	lsr r0, r0, #0x1c
	bne _021F1AAA
	ldr r0, [sp]
	bl GFL_TCBRemove
	mov r0, #0
	add r5, #0x80
	str r0, [r5]
_021F1AAA:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F1AB0: .word 0xFFF0FFFF
	thumb_func_end ovy168_21f19c0

	thumb_func_start ovy168_21f1ab4
ovy168_21f1ab4: ; 0x021F1AB4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	ldr r5, _021F1BE4 ; =0x021F3E30
	add r3, sp, #0x10
	add r4, r1, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r4, #4]
	cmp r0, #3
	bls _021F1AD8
	b _021F1BDE
_021F1AD8:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F1AE4: ; jump table
	.short _021F1AEC - _021F1AE4 - 2 ; case 0
	.short _021F1B56 - _021F1AE4 - 2 ; case 1
	.short _021F1B90 - _021F1AE4 - 2 ; case 2
	.short _021F1BBA - _021F1AE4 - 2 ; case 3
_021F1AEC:
	mov r3, #0
	add r6, r4, #0
	str r3, [r4, #8]
	add r6, #8
	mov r7, #0x84
_021F1AF6:
	add r1, r3, #0
	ldr r0, [r4]
	mul r1, r7
	add r5, r0, r1
	add r5, #0xb0
	ldr r5, [r5]
	lsl r5, r5, #0x1f
	lsr r5, r5, #0x1f
	beq _021F1B1C
	add r0, r0, r1
	add r0, #0xa8
	ldr r0, [r0]
	cmp r0, #0
	ble _021F1B1C
	lsl r1, r3, #2
	ldr r0, [r6]
	ldr r1, [r2, r1]
	orr r0, r1
	str r0, [r6]
_021F1B1C:
	add r3, r3, #1
	cmp r3, #8
	blt _021F1AF6
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021F1BDE
	bl ovy168_21e00b8
	add r5, r0, #0
	bl ovy168_21e00ac
	mov r3, #0
	str r3, [sp]
	mov r1, #8
	str r1, [sp, #4]
	mov r1, #0x10
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r2, [r4, #8]
	add r0, r5, #0
	lsl r2, r2, #0x10
	mov r1, #4
	lsr r2, r2, #0x10
	bl sub_02026FE4
	mov r0, #1
	add sp, #0x30
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
_021F1B56:
	bl ovy168_21e00b8
	bl sub_02027780
	cmp r0, #0
	bne _021F1BDE
	bl ovy168_21e00b8
	add r5, r0, #0
	bl ovy168_21e00ac
	mov r1, #8
	str r1, [sp]
	mov r3, #0
	str r3, [sp, #4]
	mov r1, #0x10
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r2, [r4, #8]
	add r0, r5, #0
	lsl r2, r2, #0x10
	mov r1, #4
	lsr r2, r2, #0x10
	bl sub_02026FE4
	mov r0, #2
	add sp, #0x30
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
_021F1B90:
	bl ovy168_21e00b8
	bl sub_02027780
	cmp r0, #0
	bne _021F1BDE
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	cmp r0, #3
	bne _021F1BB2
	mov r0, #0
	str r0, [r4, #0xc]
	mov r0, #3
	add sp, #0x30
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
_021F1BB2:
	mov r0, #0
	add sp, #0x30
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
_021F1BBA:
	ldr r0, [r4]
	mov r1, #0
	mov r2, #0x84
_021F1BC0:
	add r3, r1, #0
	mul r3, r2
	add r3, r0, r3
	add r3, #0xb0
	ldr r3, [r3]
	lsl r3, r3, #0x1f
	lsr r3, r3, #0x1f
	bne _021F1BD6
	add r1, r1, #1
	cmp r1, #8
	blt _021F1BC0
_021F1BD6:
	cmp r1, #8
	bne _021F1BDE
	mov r0, #0
	str r0, [r4, #4]
_021F1BDE:
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F1BE4: .word 0x021F3E30
	thumb_func_end ovy168_21f1ab4

	thumb_func_start ovy168_21f1be8
ovy168_21f1be8: ; 0x021F1BE8
	push {r4, lr}
	add r4, r0, #0
	bl sub_02011844
	cmp r0, #1
	beq _021F1BFA
	add r0, r4, #0
	bl sub_02005E54
_021F1BFA:
	pop {r4, pc}
	thumb_func_end ovy168_21f1be8

	thumb_func_start ovy168_21f1bfc
ovy168_21f1bfc: ; 0x021F1BFC
	push {r4, lr}
	add r4, r0, #0
	mul r0, r2
	blx sub_0208D868
	cmp r0, #0
	bne _021F1C10
	cmp r4, #0
	beq _021F1C10
	mov r0, #1
_021F1C10:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy168_21f1bfc

	thumb_func_start ovy168_21f1c14
ovy168_21f1c14: ; 0x021F1C14
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x84
	add r4, r1, #0
	mul r4, r0
	add r0, r5, r4
	add r0, #0x80
	ldr r0, [r0]
	add r6, r2, #0
	sub r0, r0, #2
	cmp r0, #1
	bhi _021F1C66
	cmp r6, #1
	bne _021F1C66
	mov r7, #1
	add r0, r1, #0
	tst r0, r7
	bne _021F1C66
	add r0, r5, #0
	add r0, #0x44
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _021F1C80
	mov r6, #0x46
	lsl r6, r6, #4
	ldr r1, [r5, r6]
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x1f
	bl sub_0204C124
	ldr r0, [r5, r6]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	beq _021F1C5A
	mov r7, #0
_021F1C5A:
	add r0, r5, r4
	ldr r0, [r0, #0x48]
	add r1, r7, #0
	bl sub_0204C124
	pop {r3, r4, r5, r6, r7, pc}
_021F1C66:
	add r0, r5, #0
	add r0, #0x44
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _021F1C80
	add r1, r6, #0
	bl sub_0204C124
	add r0, r5, r4
	ldr r0, [r0, #0x48]
	add r1, r6, #0
	bl sub_0204C124
_021F1C80:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy168_21f1c14

	thumb_func_start ovy168_21f1c84
ovy168_21f1c84: ; 0x021F1C84
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r0, #0
	ldr r0, _021F1D24 ; =0x00007FFF
	ldr r3, _021F1D28 ; =0x021F41E8
	and r1, r0
	add r5, r1, #0
	add r0, r0, #1
	orr r5, r0
	mov r1, #0x7e
	lsl r0, r5, #0x10
	str r1, [sp]
	lsr r0, r0, #0x10
	add r1, #0x8a
	mov r2, #1
	bl GFL_HeapAllocate
	add r4, r0, #0
	add r2, r4, #0
	add r3, r6, #0
	add r2, #0xe8
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r0, r4, #0
	add r0, #0xe0
	add r2, r4, #0
	strh r5, [r0]
	add r2, #0xe0
	ldrh r2, [r2]
	mov r0, #7
	mov r1, #0
	bl sub_0204BF1C
	str r0, [r4]
	ldr r0, [r6, #0x1c]
	cmp r0, #2
	beq _021F1CE0
	add r0, r4, #0
	bl ovy168_21f1d5c
_021F1CE0:
	mov r0, #0x8b
	str r0, [sp]
	lsl r0, r5, #0x10
	ldr r3, _021F1D28 ; =0x021F41E8
	lsr r0, r0, #0x10
	mov r1, #4
	mov r2, #0
	bl GFL_HeapAllocate
	add r5, r0, #0
	str r4, [r5]
	bl ovy168_21e00ac
	ldr r1, _021F1D2C ; =ovy168_21f1ff4
	add r2, r5, #0
	mov r3, #0
	bl sub_0203A614
	ldr r1, _021F1D30 ; =ovy168_21f2164
	mov r2, #0
	bl ovy168_21e035c
	add r0, r4, #0
	mov r1, #1
	add r0, #0xd8
	str r1, [r0]
	mov r0, #0x57
	lsl r0, r0, #4
	bl GFL_SndSEPlay
	add r0, r4, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021F1D24: .word 0x00007FFF
_021F1D28: .word 0x021F41E8
_021F1D2C: .word ovy168_21f1ff4
_021F1D30: .word ovy168_21f2164
	thumb_func_end ovy168_21f1c84

	thumb_func_start ovy168_21f1d34
ovy168_21f1d34: ; 0x021F1D34
	push {r4, lr}
	add r4, r0, #0
	bl ovy168_21f1fb8
	ldr r0, [r4]
	bl sub_0204BF98
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy168_21f1d34
_021F1D4C:
	.byte 0xD8, 0x30, 0x00, 0x68
	.byte 0x00, 0x28, 0x01, 0xD0, 0x01, 0x20, 0x70, 0x47, 0x00, 0x20, 0x70, 0x47

	thumb_func_start ovy168_21f1d5c
ovy168_21f1d5c: ; 0x021F1D5C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r7, r0, #0
	add r1, r7, #0
	add r1, #0xe0
	ldrh r2, [r1]
	ldr r1, _021F1F98 ; =0x00007FFF
	mov r0, #0xb
	and r2, r1
	add r1, r1, #1
	orr r1, r2
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0204AA30
	add r1, r7, #0
	mov r2, #1
	add r1, #0xe4
	str r2, [r1]
	add r1, r7, #0
	add r1, #0xe0
	ldrh r1, [r1]
	ldr r4, _021F1F9C ; =0x000001CB
	mov r2, #0
	str r1, [sp]
	add r1, r4, #0
	mov r3, #0
	str r0, [sp, #0x18]
	mov r6, #0
	bl Oam_LoadNCGRFile
	add r3, r7, #0
	add r3, #0xe0
	str r0, [r7, #4]
	ldrh r3, [r3]
	ldr r0, [sp, #0x18]
	add r1, r4, #2
	add r2, r4, #3
	bl Oam_LoadNCERFile
	str r0, [r7, #8]
	add r0, r7, #0
	add r0, #0xe0
	ldrh r0, [r0]
	add r1, r4, #1
	mov r2, #0
	str r0, [sp]
	ldr r0, [sp, #0x18]
	mov r3, #0xc0
	bl sub_0204BBA0
	str r0, [r7, #0xc]
	bl ovy168_21e00b8
	add r4, r0, #0
	ldr r0, [r7, #0xc]
	mov r1, #0
	bl sub_0204BDC0
	add r2, r0, #0
	lsl r2, r2, #0xf
	add r0, r4, #0
	mov r1, #2
	lsr r2, r2, #0x10
	mov r3, #0x20
	mov r5, #0x20
	bl sub_02026F7C
	add r0, sp, #0x28
	add r4, r7, #0
	strh r6, [r0]
	strh r6, [r0, #2]
	strh r6, [r0, #4]
	strh r6, [r0, #6]
	add r0, r7, #0
	add r0, #0xe8
	ldr r2, [r0]
	ldr r0, _021F1FA0 ; =0x021F3E50
	lsl r1, r2, #3
	ldrsh r0, [r0, r1]
	add r4, #0xe8
	cmp r2, #0
	str r0, [sp, #0x14]
	bne _021F1E08
	mov r5, #0x80
	b _021F1E0A
_021F1E08:
	sub r5, #0xa0
_021F1E0A:
	ldr r0, [sp, #0x14]
	mov r6, #0
	add r1, r0, r5
	add r0, sp, #0x28
	strh r1, [r0]
	ldr r1, [r4]
	lsl r2, r1, #3
	ldr r1, _021F1FA4 ; =0x021F3E52
	ldrsh r1, [r1, r2]
	strh r1, [r0, #2]
	sub r0, r6, #2
	str r0, [sp, #0x20]
	sub r0, #0xa
	str r0, [sp, #0x20]
	sub r0, r6, #2
	str r0, [sp, #0x24]
	sub r0, #0xd
	str r0, [sp, #0x24]
	add r0, r7, #0
	str r0, [sp, #0x1c]
	add r0, #0x28
	str r0, [sp, #0x1c]
_021F1E36:
	mov r0, #0x1c
	mul r0, r6
	str r0, [sp, #0x10]
	add r5, r7, r0
	add r0, sp, #0x28
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r7, #0
	add r0, #0xe0
	ldrh r0, [r0]
	str r0, [sp, #8]
	ldr r0, [r7]
	ldr r1, [r7, #4]
	ldr r2, [r7, #0xc]
	ldr r3, [r7, #8]
	bl Oam_CreateSprite
	ldr r2, [sp, #0x1c]
	ldr r1, [sp, #0x10]
	str r0, [r5, #0x10]
	add r1, r2, r1
	mov r2, #0
	bl Oam_GetSpritePosData
	ldr r0, [r5, #0x10]
	mov r1, #1
	bl sub_0204C520
	lsl r0, r6, #2
	add r0, r4, r0
	str r0, [sp, #0xc]
	ldr r1, [r4]
	mov r2, #0x14
	mul r2, r1
	ldr r1, [sp, #0xc]
	ldr r0, [r5, #0x10]
	ldr r1, [r1, #4]
	lsl r3, r1, #2
	ldr r1, _021F1FA8 ; =0x021F3E60
	add r1, r1, r2
	ldr r1, [r3, r1]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0204C488
	ldr r0, [sp, #0xc]
	ldr r0, [r0, #4]
	lsl r1, r0, #2
	ldr r0, _021F1FA8 ; =0x021F3E60
	add r0, r0, r1
	ldr r0, [r0, #0x28]
	add r1, r6, #1
	str r0, [r5, #0x20]
	mov r0, #6
	mul r0, r1
	str r0, [r5, #0x24]
	ldr r0, [sp, #0x14]
	str r0, [r5, #0x18]
	ldr r0, [r4]
	cmp r0, #0
	bne _021F1EB8
	mov r1, #1
	mvn r1, r1
	b _021F1EBA
_021F1EB8:
	mov r1, #2
_021F1EBA:
	add r0, r6, #1
	mul r1, r0
	ldr r0, [sp, #0x14]
	add r0, r0, r1
	str r0, [r5, #0x14]
	ldr r0, [r4]
	cmp r0, #0
	bne _021F1ECE
	ldr r0, [sp, #0x20]
	b _021F1ED0
_021F1ECE:
	mov r0, #0xc
_021F1ED0:
	str r0, [r5, #0x1c]
	ldr r0, [r4]
	mov r2, #0xf
	cmp r0, #0
	beq _021F1EDC
	ldr r2, [sp, #0x24]
_021F1EDC:
	ldr r1, [sp, #0x14]
	add r6, r6, #1
	add r1, r1, r2
	str r1, [sp, #0x14]
	cmp r6, #6
	blt _021F1E36
	cmp r0, #0
	bne _021F1EF0
	mov r1, #0x80
	b _021F1EF4
_021F1EF0:
	mov r1, #0x7f
	mvn r1, r1
_021F1EF4:
	lsl r2, r0, #3
	ldr r0, _021F1FAC ; =0x021F3E54
	add r5, r6, #0
	ldrsh r0, [r0, r2]
	add r6, r7, #0
	add r6, #0x10
	add r1, r0, r1
	add r0, sp, #0x28
	strh r1, [r0]
	ldr r1, [r4]
	lsl r2, r1, #3
	ldr r1, _021F1FB0 ; =0x021F3E56
	ldrsh r1, [r1, r2]
	strh r1, [r0, #2]
	mov r0, #0x1c
	mul r5, r0
	add r0, sp, #0x28
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r7, #0
	add r0, #0xe0
	ldrh r0, [r0]
	str r0, [sp, #8]
	ldr r0, [r7]
	ldr r1, [r7, #4]
	ldr r2, [r7, #0xc]
	ldr r3, [r7, #8]
	bl Oam_CreateSprite
	add r1, r7, #0
	add r1, #0x28
	str r0, [r6, r5]
	add r1, r1, r5
	mov r2, #0
	bl Oam_GetSpritePosData
	ldr r0, [r6, r5]
	mov r1, #1
	bl sub_0204C520
	ldr r2, [r4]
	ldr r0, [r6, r5]
	add r1, r2, #0
	mov r6, #0x14
	ldr r2, _021F1FB4 ; =0x021F3E70
	mul r1, r6
	ldr r1, [r2, r1]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0204C488
	ldr r0, [r4]
	add r3, r7, #0
	add r1, r0, #0
	mul r1, r6
	ldr r0, _021F1FB4 ; =0x021F3E70
	add r2, r7, r5
	ldr r0, [r0, r1]
	add r3, #0x14
	str r0, [r2, #0x20]
	mov r0, #0
	str r0, [r2, #0x24]
	ldr r0, [r4]
	sub r6, #0x24
	lsl r1, r0, #3
	ldr r0, _021F1FAC ; =0x021F3E54
	ldrsh r0, [r0, r1]
	str r0, [r3, r5]
	str r0, [r2, #0x18]
	ldr r0, [r4]
	cmp r0, #0
	beq _021F1F88
	mov r6, #0x10
_021F1F88:
	add r0, r7, r5
	str r6, [r0, #0x1c]
	ldr r0, [sp, #0x18]
	bl GFL_ArcToolFree
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F1F98: .word 0x00007FFF
_021F1F9C: .word 0x000001CB
_021F1FA0: .word 0x021F3E50
_021F1FA4: .word 0x021F3E52
_021F1FA8: .word 0x021F3E60
_021F1FAC: .word 0x021F3E54
_021F1FB0: .word 0x021F3E56
_021F1FB4: .word 0x021F3E70
	thumb_func_end ovy168_21f1d5c

	thumb_func_start ovy168_21f1fb8
ovy168_21f1fb8: ; 0x021F1FB8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0xe4
	ldr r0, [r0]
	cmp r0, #1
	bne _021F1FF2
	mov r4, #0
	mov r6, #0x1c
_021F1FC8:
	add r0, r4, #0
	mul r0, r6
	add r0, r5, r0
	ldr r0, [r0, #0x10]
	bl sub_0204C108
	add r4, r4, #1
	cmp r4, #7
	blt _021F1FC8
	ldr r0, [r5, #4]
	bl sub_0204B98C
	ldr r0, [r5, #0xc]
	bl sub_0204BCD0
	ldr r0, [r5, #8]
	bl sub_0204BE64
	mov r0, #0
	add r5, #0xe4
	str r0, [r5]
_021F1FF2:
	pop {r4, r5, r6, pc}
	thumb_func_end ovy168_21f1fb8

	thumb_func_start ovy168_21f1ff4
ovy168_21f1ff4: ; 0x021F1FF4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r2, [r5]
	str r0, [sp]
	add r1, r2, #0
	add r1, #0xe4
	ldr r1, [r1]
	mov r7, #0
	cmp r1, #0
	bne _021F200E
	bl ovy168_21e03ac
	pop {r3, r4, r5, r6, r7, pc}
_021F200E:
	add r2, #0xd4
	ldr r0, [r2]
	cmp r0, #0
	beq _021F201C
	cmp r0, #1
	beq _021F20EE
	pop {r3, r4, r5, r6, r7, pc}
_021F201C:
	add r6, r7, #0
_021F201E:
	ldr r1, [r5]
	mov r0, #0x1c
	add r4, r6, #0
	mul r4, r0
	add r2, r1, r4
	ldr r0, [r2, #0x24]
	cmp r0, #0
	beq _021F2036
	sub r0, r0, #1
	mov r7, #1
	str r0, [r2, #0x24]
	b _021F20D4
_021F2036:
	ldr r1, [r2, #0x1c]
	cmp r1, #0
	beq _021F20D4
	mov r0, #0x28
	ldrsh r0, [r2, r0]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add r0, r0, r1
	strh r0, [r2, #0x28]
	ldr r0, [r5]
	mov r7, #1
	add r1, r0, r4
	ldr r0, [r1, #0x1c]
	cmp r0, #0
	ldr r0, [r1, #0x14]
	ble _021F2060
	mov r2, #0x28
	ldrsh r2, [r1, r2]
	cmp r2, r0
	blt _021F2072
	b _021F2068
_021F2060:
	mov r2, #0x28
	ldrsh r2, [r1, r2]
	cmp r2, r0
	bgt _021F2072
_021F2068:
	strh r0, [r1, #0x28]
	ldr r0, [r5]
	add r1, r0, r4
	mov r0, #0
	str r0, [r1, #0x1c]
_021F2072:
	ldr r1, [r5]
	mov r2, #0
	add r0, r1, r4
	add r1, #0x28
	ldr r0, [r0, #0x10]
	add r1, r1, r4
	bl Oam_SetSpritePosData
	ldr r0, [r5]
	add r1, r0, r4
	ldr r0, [r1, #0x1c]
	cmp r0, #0
	bne _021F20D4
	ldr r0, [r1, #0x10]
	ldr r1, [r1, #0x20]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0204C488
	ldr r1, [r5]
	add r0, r1, r4
	ldr r0, [r0, #0x20]
	cmp r0, #9
	beq _021F20AC
	cmp r0, #0xa
	beq _021F20B2
	cmp r0, #0xb
	beq _021F20B2
	b _021F20B6
_021F20AC:
	ldr r0, _021F2160 ; =0x00000571
	add r0, r0, #1
	b _021F20B8
_021F20B2:
	mov r0, #0
	b _021F20B8
_021F20B6:
	ldr r0, _021F2160 ; =0x00000571
_021F20B8:
	cmp r0, #0
	beq _021F20D4
	add r1, #0xdc
	ldr r1, [r1]
	bl sub_020061DC
	ldr r0, [r5]
	add r1, r0, #0
	add r1, #0xdc
	ldr r2, [r1]
	mov r1, #1
	eor r1, r2
	add r0, #0xdc
	str r1, [r0]
_021F20D4:
	add r6, r6, #1
	cmp r6, #7
	blt _021F201E
	cmp r7, #0
	bne _021F215C
	ldr r1, [r5]
	add r0, r1, #0
	add r0, #0xd4
	ldr r0, [r0]
	add r1, #0xd4
	add r0, r0, #1
	str r0, [r1]
	pop {r3, r4, r5, r6, r7, pc}
_021F20EE:
	add r4, r7, #0
	mov r6, #0x28
_021F20F2:
	mov r0, #0x1c
	add r1, r4, #0
	mul r1, r0
	ldr r0, [r5]
	add r3, r0, r1
	ldrsh r0, [r3, r6]
	ldr r2, [r3, #0x18]
	cmp r0, r2
	bge _021F211E
	mov r0, #0x28
	ldrsh r0, [r3, r0]
	add r0, r0, #2
	strh r0, [r3, #0x28]
	ldr r0, [r5]
	mov r3, #0x28
	add r2, r0, r1
	ldrsh r3, [r2, r3]
	ldr r0, [r2, #0x18]
	cmp r3, r0
	blt _021F211C
	strh r0, [r2, #0x28]
_021F211C:
	b _021F213A
_021F211E:
	cmp r0, r2
	ble _021F213C
	mov r0, #0x28
	ldrsh r0, [r3, r0]
	sub r0, r0, #2
	strh r0, [r3, #0x28]
	ldr r0, [r5]
	mov r3, #0x28
	add r2, r0, r1
	ldrsh r3, [r2, r3]
	ldr r0, [r2, #0x18]
	cmp r3, r0
	bgt _021F213A
	strh r0, [r2, #0x28]
_021F213A:
	mov r7, #1
_021F213C:
	ldr r2, [r5]
	add r0, r2, r1
	add r2, #0x28
	add r1, r2, r1
	ldr r0, [r0, #0x10]
	mov r2, #0
	bl Oam_SetSpritePosData
	add r4, r4, #1
	cmp r4, #7
	blt _021F20F2
	cmp r7, #0
	bne _021F215C
	ldr r0, [sp]
	bl ovy168_21e03ac
_021F215C:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F2160: .word 0x00000571
	thumb_func_end ovy168_21f1ff4

	thumb_func_start ovy168_21f2164
ovy168_21f2164: ; 0x021F2164
	push {r3, lr}
	bl sub_0203A6D0
	ldr r0, [r0]
	mov r1, #0
	add r0, #0xd8
	str r1, [r0]
	pop {r3, pc}
	thumb_func_end ovy168_21f2164

	thumb_func_start ovy168_21f2174
ovy168_21f2174: ; 0x021F2174
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	mov r1, #0x81
	str r1, [sp]
	ldr r3, _021F2238 ; =0x021F41F8
	mov r1, #0x78
	mov r2, #1
	add r4, r0, #0
	bl GFL_HeapAllocate
	add r5, r0, #0
	add r0, #0x74
	add r1, r5, #0
	strh r4, [r0]
	add r1, #0x74
	ldrh r2, [r1]
	ldr r1, _021F223C ; =0x00007FFF
	mov r0, #0xb
	and r2, r1
	add r1, r1, #1
	orr r1, r2
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0204AA30
	add r2, r5, #0
	add r2, #0x74
	add r4, r0, #0
	ldrh r2, [r2]
	mov r0, #6
	mov r1, #0
	bl sub_0204BF1C
	add r2, r5, #0
	str r0, [r5]
	add r2, #0x74
	ldrh r2, [r2]
	mov r0, #6
	mov r1, #0
	bl sub_0204BF1C
	str r0, [r5, #4]
	add r0, r5, #0
	add r0, #0x74
	ldrh r0, [r0]
	ldr r6, _021F2240 ; =0x000001AB
	mov r2, #0
	str r0, [sp]
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #0
	bl Oam_LoadNCGRFile
	add r3, r5, #0
	str r0, [r5, #0x40]
	add r3, #0x74
	ldrh r3, [r3]
	add r0, r4, #0
	add r1, r6, #1
	add r2, r6, #2
	bl Oam_LoadNCERFile
	str r0, [r5, #0x44]
	bl ovy168_21efe1c
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x74
	ldrh r0, [r0]
	mov r2, #0
	mov r3, #0xe0
	str r0, [sp]
	add r0, r4, #0
	bl sub_0204BBA0
	str r0, [r5, #0x48]
	bl ovy168_21e00b8
	add r6, r0, #0
	ldr r0, [r5, #0x48]
	mov r1, #0
	bl sub_0204BDC0
	add r2, r0, #0
	lsl r2, r2, #0xf
	add r0, r6, #0
	mov r1, #2
	lsr r2, r2, #0x10
	mov r3, #0x20
	bl sub_02026F7C
	add r0, r4, #0
	bl GFL_ArcToolFree
	add r0, r5, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021F2238: .word 0x021F41F8
_021F223C: .word 0x00007FFF
_021F2240: .word 0x000001AB
	thumb_func_end ovy168_21f2174

	thumb_func_start ovy168_21f2244
ovy168_21f2244: ; 0x021F2244
	push {r4, lr}
	add r4, r0, #0
	bl ovy168_21f23b4
	ldr r0, [r4, #0x40]
	bl sub_0204B98C
	ldr r0, [r4, #0x44]
	bl sub_0204BE64
	ldr r0, [r4, #0x48]
	bl sub_0204BCD0
	ldr r0, [r4]
	bl sub_0204BF98
	ldr r0, [r4, #4]
	bl sub_0204BF98
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy168_21f2244

	thumb_func_start ovy168_21f2274
ovy168_21f2274: ; 0x021F2274
	push {r4, r5, r6, r7, lr}
	sub sp, #0x7c
	ldr r3, _021F23A0 ; =0x021F3EAC
	add r5, r0, #0
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	add r1, sp, #0x2c
	mov r0, #0
	add r2, sp, #0x64
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, _021F23A4 ; =0x021F3EA4
	ldr r4, _021F23A8 ; =0x021F3EC4
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r1, [sp, #0x24]
	str r0, [sp, #0x28]
	add r3, sp, #0x34
	mov r2, #6
_021F22AA:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021F22AA
	mov r0, #0
	str r0, [sp, #0x18]
_021F22B6:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _021F22C2
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _021F22CE
_021F22C2:
	ldr r0, [sp, #0x18]
	cmp r0, #1
	bne _021F2338
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _021F2338
_021F22CE:
	ldr r0, [sp, #0x18]
	add r1, sp, #0x24
	lsl r0, r0, #2
	str r0, [sp, #0x1c]
	ldr r0, [r1, r0]
	ldr r1, [sp, #0x18]
	mov r2, #0x18
	add r3, sp, #0x34
	mul r2, r1
	add r1, r3, r2
	str r1, [sp, #0x14]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	ldr r1, [sp, #0x18]
	mov r2, #0x1c
	mul r2, r1
	mov r4, #0
	add r7, r5, r2
	str r0, [sp, #0x20]
_021F22F4:
	lsl r0, r4, #2
	add r1, sp, #0x64
	ldr r2, [r1, r0]
	add r1, sp, #0x24
	strh r2, [r1, #8]
	ldr r2, [sp, #0x20]
	add r6, r7, r0
	strh r2, [r1, #0xa]
	ldr r1, [sp, #0x14]
	ldr r2, [r1, r0]
	add r1, sp, #0x24
	strh r2, [r1, #0xc]
	add r0, sp, #0x2c
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x74
	ldrh r0, [r0]
	str r0, [sp, #8]
	ldr r0, [sp, #0x1c]
	ldr r1, [r5, #0x40]
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x48]
	ldr r3, [r5, #0x44]
	bl Oam_CreateSprite
	mov r1, #1
	str r0, [r6, #8]
	bl sub_0204C520
	add r4, r4, #1
	cmp r4, #6
	blt _021F22F4
_021F2338:
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #2
	blt _021F22B6
	ldr r1, _021F23AC ; =0x0000176F
	ldr r0, [sp, #0xc]
	cmp r0, r1
	ble _021F234C
	str r1, [sp, #0xc]
_021F234C:
	ldr r1, _021F23AC ; =0x0000176F
	ldr r0, [sp, #0x10]
	cmp r0, r1
	ble _021F2356
	str r1, [sp, #0x10]
_021F2356:
	ldr r0, [sp, #0xc]
	str r0, [r5, #0x4c]
	ldr r0, [sp, #0x10]
	str r0, [r5, #0x50]
	bl OS_GetTick
	str r0, [r5, #0x5c]
	add r0, r5, #0
	str r1, [r5, #0x60]
	add r0, #0x5c
	ldmia r0!, {r2, r3}
	add r0, r5, #0
	add r0, #0x54
	stmia r0!, {r2, r3}
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl ovy168_21f2418
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	mov r3, #0
	bl ovy168_21f2418
	bl ovy168_21e00ac
	ldr r1, _021F23B0 ; =ovy168_21f26a0
	add r2, r5, #0
	mov r3, #0
	bl sub_0203A614
	str r0, [r5, #0x6c]
	add sp, #0x7c
	pop {r4, r5, r6, r7, pc}
	nop
_021F23A0: .word 0x021F3EAC
_021F23A4: .word 0x021F3EA4
_021F23A8: .word 0x021F3EC4
_021F23AC: .word 0x0000176F
_021F23B0: .word ovy168_21f26a0
	thumb_func_end ovy168_21f2274

	thumb_func_start ovy168_21f23b4
ovy168_21f23b4: ; 0x021F23B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r7, r0, #0
_021F23C0:
	ldr r1, [sp, #4]
	mov r0, #0x1c
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp]
	mov r4, #0
	add r6, r0, r2
_021F23CE:
	lsl r0, r4, #2
	add r5, r6, r0
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _021F23DE
	bl sub_0204C108
	str r7, [r5, #8]
_021F23DE:
	add r4, r4, #1
	cmp r4, #6
	blt _021F23CE
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #2
	blt _021F23C0
	ldr r0, [sp]
	ldr r0, [r0, #0x6c]
	cmp r0, #0
	beq _021F2400
	bl GFL_TCBRemove
	ldr r0, [sp]
	mov r1, #0
	str r1, [r0, #0x6c]
_021F2400:
	ldr r0, [sp]
	ldr r0, [r0, #0x70]
	cmp r0, #0
	beq _021F2412
	bl GFL_TCBRemove
	ldr r0, [sp]
	mov r1, #0
	str r1, [r0, #0x70]
_021F2412:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy168_21f23b4

	thumb_func_start ovy168_21f2418
ovy168_21f2418: ; 0x021F2418
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0x1c
	mul r0, r4
	add r0, r5, r0
	ldr r0, [r0, #8]
	add r6, r2, #0
	cmp r0, #0
	beq _021F245A
	cmp r6, #1
	bne _021F2450
	cmp r3, #1
	bne _021F2450
	bl OS_GetTick
	lsl r2, r4, #3
	add r2, r5, r2
	str r0, [r2, #0x54]
	lsl r0, r4, #2
	str r1, [r2, #0x58]
	mov r1, #0
	add r0, r5, r0
	str r1, [r0, #0x64]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy168_21f249c
_021F2450:
	lsl r0, r4, #2
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl sub_0204BFD4
_021F245A:
	pop {r4, r5, r6, pc}
	thumb_func_end ovy168_21f2418

	thumb_func_start ovy168_21f245c
ovy168_21f245c: ; 0x021F245C
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	bl OS_GetTick
	lsl r2, r6, #3
	add r3, r5, r2
	ldr r2, [r3, #0x54]
	ldr r3, [r3, #0x58]
	sub r2, r0, r2
	sbc r1, r3
	lsr r0, r2, #0x1a
	lsl r1, r1, #6
	orr r1, r0
	lsl r0, r2, #6
	ldr r2, _021F2498 ; =0x01FF6210
	mov r3, #0
	mov r4, #0
	blx sub_0208D5C4
	lsl r1, r6, #2
	add r1, r5, r1
	ldr r1, [r1, #0x4c]
	sub r0, r1, r0
	cmp r0, #0
	bgt _021F2492
	mov r4, #1
_021F2492:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_021F2498: .word 0x01FF6210
	thumb_func_end ovy168_21f245c

	thumb_func_start ovy168_21f249c
ovy168_21f249c: ; 0x021F249C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x54
	add r5, r0, #0
	ldr r0, _021F2698 ; =0x021F3E9C
	add r4, r1, #0
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r1, [sp, #0x4c]
	str r0, [sp, #0x50]
	bne _021F24B4
	mov r0, #0
	b _021F24B6
_021F24B4:
	mov r0, #1
_021F24B6:
	str r0, [sp, #0xc]
	lsl r6, r4, #2
	bl OS_GetTick
	lsl r2, r4, #3
	add r3, r5, r2
	ldr r2, [r3, #0x54]
	ldr r3, [r3, #0x58]
	sub r0, r0, r2
	sbc r1, r3
	lsr r2, r0, #0x1a
	lsl r1, r1, #6
	orr r1, r2
	ldr r2, _021F269C ; =0x01FF6210
	lsl r0, r0, #6
	mov r3, #0
	blx sub_0208D5C4
	add r1, r5, r6
	ldr r1, [r1, #0x4c]
	sub r7, r1, r0
	mov r0, #0x1c
	add r1, r5, #0
	mul r0, r4
	str r1, [sp, #0x24]
	add r1, #8
	str r0, [sp, #0x18]
	ldr r0, [r1, r0]
	str r1, [sp, #0x24]
	cmp r0, #0
	bne _021F24F6
	b _021F2692
_021F24F6:
	cmp r7, #0
	bge _021F24FC
	mov r7, #0
_021F24FC:
	add r0, r7, #0
	mov r1, #0x3c
	blx sub_0208D65C
	str r0, [sp, #0x28]
	add r0, r7, #0
	mov r1, #0x3c
	blx sub_0208D65C
	str r1, [sp, #8]
	ldr r0, [sp, #0x28]
	mov r1, #0xa
	blx sub_0208D65C
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x28]
	mov r1, #0xa
	blx sub_0208D65C
	str r1, [sp, #4]
	ldr r0, [sp, #8]
	mov r1, #0xa
	blx sub_0208D65C
	str r0, [sp, #0x1c]
	ldr r0, [sp, #8]
	mov r1, #0xa
	blx sub_0208D65C
	add r0, sp, #0x4c
	ldr r0, [r0, r6]
	str r1, [sp]
	cmp r7, r0
	bne _021F2546
	mov r1, #0xd
	add r0, r5, r6
	str r1, [r0, #0x64]
_021F2546:
	add r7, r5, #0
	add r7, #0x64
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #0x18]
	ldr r2, [r7, r6]
	ldr r0, [r1, r0]
	ldr r1, [sp, #0xc]
	add r1, r1, r2
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0204C488
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _021F2572
	ldr r0, [sp, #0x18]
	mov r1, #0
	add r0, r5, r0
	ldr r0, [r0, #0xc]
	bl sub_0204C124
	b _021F25A0
_021F2572:
	add r0, r5, #0
	str r0, [sp, #0x2c]
	add r0, #0xc
	str r0, [sp, #0x2c]
	mov r0, #0x1c
	mul r0, r4
	ldr r1, [sp, #0x2c]
	str r0, [sp, #0x30]
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_0204C124
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x30]
	ldr r0, [r1, r0]
	ldr r1, [sp, #0x20]
	add r2, r1, #3
	ldr r1, [r7, r6]
	add r1, r2, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0204C488
_021F25A0:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _021F25CA
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _021F25CA
	mov r0, #0x1c
	mul r0, r4
	str r0, [sp, #0x14]
	add r0, r5, r0
	ldr r0, [r0, #0x10]
	mov r1, #0
	bl sub_0204C124
	ldr r0, [sp, #0x14]
	mov r1, #0
	add r0, r5, r0
	ldr r0, [r0, #0x14]
	bl sub_0204C124
	b _021F262E
_021F25CA:
	mov r0, #0x1c
	add r1, r5, #0
	mul r0, r4
	str r1, [sp, #0x34]
	add r1, #0x10
	str r0, [sp, #0x10]
	ldr r0, [r1, r0]
	str r1, [sp, #0x34]
	mov r1, #1
	bl sub_0204C124
	add r1, r5, #0
	str r1, [sp, #0x38]
	add r1, #0x14
	ldr r0, [sp, #0x10]
	str r1, [sp, #0x38]
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_0204C124
	add r0, r5, #0
	str r0, [sp, #0x3c]
	add r0, #0x64
	str r0, [sp, #0x3c]
	lsl r0, r4, #2
	str r0, [sp, #0x40]
	ldr r1, [sp, #0x34]
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x3c]
	ldr r0, [r1, r0]
	ldr r1, [sp, #4]
	add r3, r1, #3
	ldr r1, [sp, #0x40]
	ldr r1, [r2, r1]
	add r1, r3, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0204C488
	ldr r1, [sp, #0x38]
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x3c]
	ldr r0, [r1, r0]
	ldr r1, [sp, #0x40]
	ldr r1, [r2, r1]
	add r1, r1, #2
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0204C488
_021F262E:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _021F264E
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _021F264E
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _021F264E
	ldr r0, [sp, #0x18]
	mov r1, #0
	add r0, r5, r0
	ldr r0, [r0, #0x18]
	bl sub_0204C124
	b _021F267C
_021F264E:
	add r0, r5, #0
	str r0, [sp, #0x44]
	add r0, #0x18
	str r0, [sp, #0x44]
	mov r0, #0x1c
	mul r0, r4
	ldr r1, [sp, #0x44]
	str r0, [sp, #0x48]
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_0204C124
	ldr r1, [sp, #0x44]
	ldr r0, [sp, #0x48]
	ldr r0, [r1, r0]
	ldr r1, [sp, #0x1c]
	add r2, r1, #3
	ldr r1, [r7, r6]
	add r1, r2, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0204C488
_021F267C:
	ldr r1, [sp]
	ldr r0, [sp, #0x18]
	add r2, r1, #3
	ldr r1, [r7, r6]
	add r0, r5, r0
	add r1, r2, r1
	lsl r1, r1, #0x10
	ldr r0, [r0, #0x1c]
	lsr r1, r1, #0x10
	bl sub_0204C488
_021F2692:
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
	nop
_021F2698: .word 0x021F3E9C
_021F269C: .word 0x01FF6210
	thumb_func_end ovy168_21f249c

	thumb_func_start ovy168_21f26a0
ovy168_21f26a0: ; 0x021F26A0
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #0
	bl ovy168_21f249c
	add r0, r4, #0
	mov r1, #1
	bl ovy168_21f249c
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy168_21f26a0

	thumb_func_start ovy168_21f26b8
ovy168_21f26b8: ; 0x021F26B8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0x6f
	str r0, [sp]
	ldr r3, _021F26D4 ; =0x021F4208
	add r0, r4, #0
	mov r1, #0xc
	mov r2, #1
	bl GFL_HeapAllocate
	str r5, [r0]
	strh r4, [r0, #8]
	pop {r3, r4, r5, pc}
	.align 2, 0
_021F26D4: .word 0x021F4208
	thumb_func_end ovy168_21f26b8

	thumb_func_start ovy168_21f26d8
ovy168_21f26d8: ; 0x021F26D8
	ldr r3, _021F26DC ; =GFL_HeapFree
	bx r3
	.align 2, 0
_021F26DC: .word GFL_HeapFree
	thumb_func_end ovy168_21f26d8

	thumb_func_start ovy168_21f26e0
ovy168_21f26e0: ; 0x021F26E0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #0x8e
	str r1, [sp]
	ldrh r1, [r0, #8]
	ldr r0, _021F271C ; =0x00007FFF
	add r4, r2, #0
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	ldr r3, _021F2720 ; =0x021F4208
	lsr r0, r0, #0x10
	mov r1, #8
	mov r2, #0
	bl GFL_HeapAllocate
	add r1, r0, #0
	str r5, [r1]
	ldr r0, _021F2724 ; =ovy168_21f2ad0
	mov r2, #0
	str r4, [r1, #4]
	bl GFL_VBlankTCBAdd
	mov r1, #0
	mov r2, #0
	bl ovy168_21e035c
	pop {r3, r4, r5, pc}
	nop
_021F271C: .word 0x00007FFF
_021F2720: .word 0x021F4208
_021F2724: .word ovy168_21f2ad0
	thumb_func_end ovy168_21f26e0

	thumb_func_start ovy168_21f2728
ovy168_21f2728: ; 0x021F2728
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	lsl r0, r3, #0xc
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x40]
	mov r7, #0
	lsl r0, r0, #0xc
	str r0, [sp, #0x14]
	mov r0, #3
	add r6, r1, #0
	add r4, r2, #0
	str r7, [sp, #0x18]
	bl sub_02044E60
	lsl r0, r0, #0xc
	str r0, [sp, #0x1c]
	mov r0, #3
	bl sub_02044E74
	lsl r0, r0, #0xc
	str r0, [sp, #0x20]
	str r7, [sp, #0x24]
	cmp r4, #4
	bne _021F276A
	mov r0, #1
	add r1, r6, #0
	tst r1, r0
	beq _021F276A
	ldr r1, [sp, #0x10]
	sub r0, r0, #2
	mul r0, r1
	str r0, [sp, #0x10]
_021F276A:
	cmp r4, #1
	bne _021F2786
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0x1c]
	add r0, r1, r0
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x20]
	add r0, r1, r0
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x24]
	add r0, r1, r0
	str r0, [sp, #0x18]
_021F2786:
	ldr r0, [sp, #0x44]
	add r1, r4, #0
	str r0, [sp]
	ldr r0, [sp, #0x48]
	add r2, sp, #0x1c
	str r0, [sp, #4]
	ldr r0, [sp, #0x4c]
	add r3, sp, #0x10
	str r0, [sp, #8]
	ldr r0, _021F27B4 ; =ovy168_21f2a64
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl ovy168_21f28e4
	ldr r1, [r5, #4]
	mov r0, #1
	bic r1, r0
	mov r0, #1
	orr r0, r1
	str r0, [r5, #4]
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F27B4: .word ovy168_21f2a64
	thumb_func_end ovy168_21f2728

	thumb_func_start ovy168_21f27b8
ovy168_21f27b8: ; 0x021F27B8
	ldr r0, [r0, #4]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _021F27C4
	mov r0, #1
	bx lr
_021F27C4:
	mov r0, #0
	bx lr
	thumb_func_end ovy168_21f27b8

	thumb_func_start ovy168_21f27c8
ovy168_21f27c8: ; 0x021F27C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0xe6
	str r0, [sp]
	add r7, r1, #0
	ldrh r1, [r5, #8]
	ldr r0, _021F28B8 ; =0x00007FFF
	str r3, [sp, #8]
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	mov r1, #0x23
	str r2, [sp, #4]
	ldr r3, _021F28BC ; =0x021F4208
	lsr r0, r0, #0x10
	lsl r1, r1, #4
	mov r2, #1
	ldr r6, [sp, #0x28]
	bl GFL_HeapAllocate
	add r4, r0, #0
	ldr r0, [sp, #0x20]
	str r5, [r4]
	str r0, [r4, #0xc]
	ldr r0, [sp, #4]
	cmp r6, #0
	str r0, [r4, #0x10]
	ldr r0, [sp, #8]
	str r0, [r4, #0x14]
	ldr r0, [sp, #0x24]
	str r0, [r4, #0x18]
	str r6, [r4, #0x1c]
	ble _021F2820
	lsl r0, r6, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021F282E
_021F2820:
	lsl r0, r6, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021F282E:
	blx sub_0208DA4C
	add r1, r0, #0
	ldr r0, [sp, #4]
	bl FX_Div
	mov r1, #0x8b
	lsl r1, r1, #2
	str r0, [r4, r1]
	cmp r7, #0
	beq _021F284A
	cmp r7, #1
	beq _021F284E
	b _021F2856
_021F284A:
	mov r0, #0xc0
	b _021F2852
_021F284E:
	mov r0, #1
	lsl r0, r0, #8
_021F2852:
	sub r1, #8
	str r0, [r4, r1]
_021F2856:
	mov r6, #0x22
	mov r0, #0
	lsl r6, r6, #4
	strh r0, [r4, r6]
	ldr r0, _021F28C0 ; =0x0000FFFF
	ldr r1, [sp, #8]
	mul r0, r1
	add r1, r6, #0
	sub r1, #0xb8
	blx sub_0208D65C
	add r2, r0, #0
	add r1, r6, #4
	add r0, r4, #0
	lsl r2, r2, #0x10
	ldr r1, [r4, r1]
	ldr r3, [sp, #4]
	add r0, #0x20
	lsr r2, r2, #0x10
	bl sub_02029B54
	ldr r0, [r5]
	ldr r1, _021F28C4 ; =ovy168_21f2af8
	add r2, r4, #0
	mov r3, #0
	bl sub_0203A614
	ldr r1, _021F28C8 ; =ovy168_21f2bfc
	mov r2, #0
	bl ovy168_21e035c
	ldr r0, _021F28CC ; =ovy168_21f2c4c
	add r1, r4, #0
	mov r2, #0
	bl sub_02005680
	str r0, [r4, #8]
	ldr r0, _021F28D0 ; =ovy168_21f2c14
	add r1, r4, #0
	mov r2, #0xa
	bl GFL_VBlankTCBAdd
	str r0, [r4, #4]
	ldr r1, [r5, #4]
	mov r0, #2
	orr r0, r1
	str r0, [r5, #4]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021F28B8: .word 0x00007FFF
_021F28BC: .word 0x021F4208
_021F28C0: .word 0x0000FFFF
_021F28C4: .word ovy168_21f2af8
_021F28C8: .word ovy168_21f2bfc
_021F28CC: .word ovy168_21f2c4c
_021F28D0: .word ovy168_21f2c14
	thumb_func_end ovy168_21f27c8

	thumb_func_start ovy168_21f28d4
ovy168_21f28d4: ; 0x021F28D4
	ldr r0, [r0, #4]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	beq _021F28E0
	mov r0, #1
	bx lr
_021F28E0:
	mov r0, #0
	bx lr
	thumb_func_end ovy168_21f28d4

	thumb_func_start ovy168_21f28e4
ovy168_21f28e4: ; 0x021F28E4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp, #4]
	mov r0, #0x4e
	lsl r0, r0, #2
	str r0, [sp]
	ldr r0, [sp, #4]
	add r6, r3, #0
	str r1, [sp, #8]
	add r7, r2, #0
	ldrh r0, [r0, #8]
	ldr r3, _021F2A5C ; =0x021F4208
	mov r1, #0x4c
	mov r2, #0
	ldr r5, [sp, #0x20]
	bl GFL_HeapAllocate
	add r4, r0, #0
	ldr r0, [sp, #4]
	str r0, [r4]
	ldr r0, [r7]
	str r0, [r4, #4]
	ldr r0, [r7, #4]
	str r0, [r4, #8]
	ldr r0, [r7, #8]
	str r0, [r4, #0xc]
	ldr r0, [sp, #8]
	str r0, [r4, #0x10]
	str r5, [r4, #0x38]
	str r5, [r4, #0x3c]
	mov r0, #0
	str r0, [r4, #0x40]
	ldr r0, [sp, #0x24]
	str r0, [r4, #0x44]
	ldr r0, [sp, #0x28]
	lsl r0, r0, #1
	str r0, [r4, #0x48]
	ldr r0, [r7]
	str r0, [r4, #0x14]
	ldr r0, [r7, #4]
	str r0, [r4, #0x18]
	ldr r0, [r7, #8]
	str r0, [r4, #0x1c]
	ldr r0, [r6]
	str r0, [r4, #0x20]
	ldr r0, [r6, #4]
	str r0, [r4, #0x24]
	ldr r0, [r6, #8]
	str r0, [r4, #0x28]
	ldr r0, [sp, #8]
	cmp r0, #3
	bhi _021F2A40
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F2958: ; jump table
	.short _021F2A40 - _021F2958 - 2 ; case 0
	.short _021F2960 - _021F2958 - 2 ; case 1
	.short _021F29A6 - _021F2958 - 2 ; case 2
	.short _021F299A - _021F2958 - 2 ; case 3
_021F2960:
	cmp r5, #0
	ble _021F2976
	lsl r0, r5, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021F2984
_021F2976:
	lsl r0, r5, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021F2984:
	blx sub_0208DA4C
	add r3, r0, #0
	add r0, r4, #0
	add r2, r4, #0
	add r0, #0x14
	add r1, r6, #0
	add r2, #0x2c
	bl ovy168_21e0b7c
	b _021F2A40
_021F299A:
	ldr r0, [r4, #0x3c]
	lsl r0, r0, #1
	str r0, [r4, #0x3c]
	ldr r0, [r4, #0x48]
	lsl r0, r0, #1
	str r0, [r4, #0x48]
_021F29A6:
	cmp r5, #0
	ble _021F29BE
	lsl r7, r5, #0xc
	add r0, r7, #0
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021F29CE
_021F29BE:
	lsl r7, r5, #0xc
	add r0, r7, #0
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021F29CE:
	blx sub_0208DA4C
	add r1, r0, #0
	ldr r0, [r6]
	bl FX_Div
	str r0, [r4, #0x2c]
	cmp r5, #0
	ble _021F29F2
	add r0, r7, #0
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021F2A00
_021F29F2:
	add r0, r7, #0
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021F2A00:
	blx sub_0208DA4C
	add r1, r0, #0
	ldr r0, [r6, #4]
	bl FX_Div
	str r0, [r4, #0x30]
	cmp r5, #0
	ble _021F2A24
	add r0, r7, #0
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021F2A32
_021F2A24:
	add r0, r7, #0
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021F2A32:
	blx sub_0208DA4C
	add r1, r0, #0
	ldr r0, [r6, #8]
	bl FX_Div
	str r0, [r4, #0x34]
_021F2A40:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x2c]
	ldr r0, [r0]
	add r2, r4, #0
	mov r3, #0
	bl sub_0203A614
	ldr r1, _021F2A60 ; =ovy168_21f2abc
	mov r2, #0
	bl ovy168_21e035c
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021F2A5C: .word 0x021F4208
_021F2A60: .word ovy168_21f2abc
	thumb_func_end ovy168_21f28e4

	thumb_func_start ovy168_21f2a64
ovy168_21f2a64: ; 0x021F2A64
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	ldr r0, [r5, #0x10]
	ldr r6, [r5]
	cmp r0, #4
	bne _021F2A94
	ldr r1, [r5, #4]
	ldr r0, [r5, #0x20]
	add r0, r1, r0
	str r0, [r5, #4]
	ldr r1, [r5, #8]
	ldr r0, [r5, #0x24]
	add r0, r1, r0
	str r0, [r5, #8]
	ldr r0, [r5, #0x38]
	cmp r0, #0
	bne _021F2A8C
	mov r4, #1
	b _021F2AA0
_021F2A8C:
	sub r0, r0, #1
	str r0, [r5, #0x38]
	mov r4, #0
	b _021F2AA0
_021F2A94:
	add r0, r5, #0
	add r0, #0x10
	add r1, r5, #4
	bl ovy168_21e0c50
	add r4, r0, #0
_021F2AA0:
	ldr r1, [r5, #4]
	ldr r2, [r5, #8]
	add r0, r6, #0
	asr r1, r1, #0xc
	asr r2, r2, #0xc
	bl ovy168_21f26e0
	cmp r4, #1
	bne _021F2AB8
	add r0, r7, #0
	bl ovy168_21e03ac
_021F2AB8:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy168_21f2a64

	thumb_func_start ovy168_21f2abc
ovy168_21f2abc: ; 0x021F2ABC
	push {r3, lr}
	bl sub_0203A6D0
	ldr r2, [r0]
	mov r0, #1
	ldr r1, [r2, #4]
	bic r1, r0
	str r1, [r2, #4]
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy168_21f2abc

	thumb_func_start ovy168_21f2ad0
ovy168_21f2ad0: ; 0x021F2AD0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203A6D0
	add r4, r0, #0
	ldr r2, [r4]
	mov r0, #3
	mov r1, #0
	bl sub_02044CFC
	ldr r2, [r4, #4]
	mov r0, #3
	mov r1, #3
	bl sub_02044CFC
	add r0, r5, #0
	bl ovy168_21e03ac
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy168_21f2ad0

	thumb_func_start ovy168_21f2af8
ovy168_21f2af8: ; 0x021F2AF8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r7, r0, #0
	ldr r0, [r4, #0x18]
	cmp r0, #3
	bhi _021F2BD0
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021F2B10: ; jump table
	.short _021F2BD0 - _021F2B10 - 2 ; case 0
	.short _021F2B18 - _021F2B10 - 2 ; case 1
	.short _021F2B54 - _021F2B10 - 2 ; case 2
	.short _021F2B18 - _021F2B10 - 2 ; case 3
_021F2B18:
	mov r1, #0x8a
	lsl r1, r1, #2
	ldrh r2, [r4, r1]
	ldr r1, [r4, #0x1c]
	cmp r2, r1
	bge _021F2B4A
	cmp r2, #0
	beq _021F2B3A
	lsl r0, r2, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021F2B48
_021F2B3A:
	lsl r0, r2, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021F2B48:
	b _021F2B8A
_021F2B4A:
	cmp r0, #3
	bne _021F2BD0
	mov r0, #2
	str r0, [r4, #0x18]
	b _021F2BD0
_021F2B54:
	mov r0, #0x8a
	lsl r0, r0, #2
	ldrh r1, [r4, r0]
	ldr r2, [r4, #0xc]
	ldr r0, [r4, #0x1c]
	sub r0, r2, r0
	cmp r1, r0
	ble _021F2BD0
	sub r0, r2, r1
	cmp r0, #0
	ble _021F2B7C
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021F2B8A
_021F2B7C:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021F2B8A:
	blx sub_0208DA4C
	mov r5, #0x8b
	add r2, r0, #0
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	asr r3, r2, #0x1f
	asr r1, r0, #0x1f
	blx sub_0208D60C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r6, r2, #0xc
	orr r6, r0
	ldr r1, [r4, #0x14]
	ldr r0, _021F2BF8 ; =0x0000FFFF
	mul r0, r1
	add r1, r5, #0
	sub r1, #0xc4
	blx sub_0208D65C
	add r2, r0, #0
	sub r5, #8
	add r0, r4, #0
	lsl r2, r2, #0x10
	ldr r1, [r4, r5]
	add r0, #0x20
	lsr r2, r2, #0x10
	add r3, r6, #0
	bl sub_02029B54
_021F2BD0:
	mov r0, #0x8a
	lsl r0, r0, #2
	ldrh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, r0]
	ldrh r1, [r4, r0]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	blt _021F2BF4
	ldr r0, [r4, #8]
	bl GFL_TCBRemove
	ldr r0, [r4, #4]
	bl GFL_TCBRemove
	add r0, r7, #0
	bl ovy168_21e03ac
_021F2BF4:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F2BF8: .word 0x0000FFFF
	thumb_func_end ovy168_21f2af8

	thumb_func_start ovy168_21f2bfc
ovy168_21f2bfc: ; 0x021F2BFC
	push {r3, lr}
	bl sub_0203A6D0
	ldr r3, [r0]
	mov r1, #2
	ldr r2, [r3, #4]
	bic r2, r1
	str r2, [r3, #4]
	bl GFL_HeapFree
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy168_21f2bfc

	thumb_func_start ovy168_21f2c14
ovy168_21f2c14: ; 0x021F2C14
	push {r4, lr}
	mov r2, #0x22
	lsl r2, r2, #4
	ldrsh r0, [r1, r2]
	add r4, r1, r2
	add r0, r0, #1
	strh r0, [r4]
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bge _021F2C3A
	mov r0, #0
	ldrsh r3, [r4, r0]
	add r0, r2, #4
	ldr r0, [r1, r0]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add r0, r3, r0
	strh r0, [r4]
	pop {r4, pc}
_021F2C3A:
	mov r0, #0
	add r2, r2, #4
	ldrsh r0, [r4, r0]
	ldr r1, [r1, r2]
	blx sub_0208D868
	strh r1, [r4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy168_21f2c14

	thumb_func_start ovy168_21f2c4c
ovy168_21f2c4c: ; 0x021F2C4C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r0, #3
	add r6, r1, #0
	bl sub_02044E60
	str r0, [sp]
	mov r0, #3
	bl sub_02044E74
	mov r4, #0x22
	lsl r4, r4, #4
	ldrsh r1, [r6, r4]
	ldr r5, _021F2CD4 ; =0x04000006
	str r0, [sp, #4]
	add r2, r1, #1
	ldrh r0, [r5]
	add r1, r4, #4
	ldr r7, [r6, r1]
	add r0, r0, r2
	add r1, r7, #0
	blx sub_0208D868
	sub r0, r5, #2
	ldrh r2, [r0]
	mov r0, #2
	tst r2, r0
	beq _021F2CD0
	cmp r7, #0xc0
	beq _021F2CB0
	add r0, #0xfe
	cmp r7, r0
	bne _021F2CD0
	lsl r1, r1, #1
	add r2, r6, r1
	mov r1, #0x20
	ldrsh r2, [r2, r1]
	ldr r1, [sp, #4]
	ldr r0, [sp]
	add r1, r1, r2
	lsl r2, r1, #0x10
	ldr r1, _021F2CD8 ; =0x01FF0000
	sub r4, #0x21
	and r0, r4
	and r1, r2
	orr r0, r1
	add r5, #0x16
	add sp, #8
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021F2CB0:
	lsl r0, r1, #1
	add r1, r6, r0
	mov r0, #0x20
	ldrsh r1, [r1, r0]
	ldr r0, [sp]
	sub r4, #0x21
	add r0, r0, r1
	add r2, r0, #0
	ldr r0, [sp, #4]
	and r2, r4
	lsl r1, r0, #0x10
	ldr r0, _021F2CD8 ; =0x01FF0000
	add r5, #0x16
	and r0, r1
	orr r0, r2
	str r0, [r5]
_021F2CD0:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021F2CD4: .word 0x04000006
_021F2CD8: .word 0x01FF0000
	thumb_func_end ovy168_21f2c4c

	thumb_func_start ovy168_21f2cdc
ovy168_21f2cdc: ; 0x021F2CDC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp, #0xc]
	add r5, r2, #0
	mov r0, #0x52
	add r7, r1, #0
	str r0, [sp]
	ldr r3, _021F2D8C ; =0x021F4214
	add r0, r5, #0
	mov r1, #0x30
	mov r2, #1
	bl GFL_HeapAllocate
	add r4, r0, #0
	ldr r1, _021F2D90 ; =0x00007FFF
	add r2, r5, #0
	and r2, r1
	add r1, r1, #1
	orr r1, r2
	lsl r1, r1, #0x10
	mov r0, #0xb
	lsr r1, r1, #0x10
	bl sub_0204AA30
	strh r5, [r4, #0x2c]
	ldr r1, _021F2D94 ; =0x000001E7
	mov r2, #0
	mov r3, #1
	add r6, r0, #0
	str r5, [sp]
	bl Oam_LoadNCGRFile
	ldr r1, _021F2D94 ; =0x000001E7
	ldr r2, _021F2D94 ; =0x000001E7
	str r0, [r4, #0xc]
	add r0, r6, #0
	add r1, r1, #2
	add r2, r2, #3
	add r3, r5, #0
	bl Oam_LoadNCERFile
	str r0, [r4, #0x14]
	mov r0, #0
	ldr r1, _021F2D94 ; =0x000001E7
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	lsl r3, r7, #0x15
	add r0, r6, #0
	add r1, r1, #1
	mov r2, #1
	lsr r3, r3, #0x10
	str r5, [sp, #8]
	bl Oam_LoadNCLRFile
	mov r1, #1
	str r0, [r4, #0x10]
	bl sub_0204BDC0
	add r2, r0, #0
	lsl r2, r2, #0xf
	ldr r0, [sp, #0xc]
	mov r1, #3
	lsr r2, r2, #0x10
	mov r3, #0x20
	bl sub_02026F7C
	mov r0, #1
	mov r1, #0
	add r2, r5, #0
	bl sub_0204BF1C
	str r0, [r4]
	add r0, r6, #0
	bl GFL_ArcToolFree
	bl ovy168_21e00ac
	ldr r1, _021F2D98 ; =ovy168_21f2f30
	add r2, r4, #0
	mov r3, #0
	bl sub_0203A614
	str r0, [r4, #8]
	add r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F2D8C: .word 0x021F4214
_021F2D90: .word 0x00007FFF
_021F2D94: .word 0x000001E7
_021F2D98: .word ovy168_21f2f30
	thumb_func_end ovy168_21f2cdc

	thumb_func_start ovy168_21f2d9c
ovy168_21f2d9c: ; 0x021F2D9C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl GFL_TCBRemove
	add r0, r4, #0
	bl ovy168_21f2e84
	ldr r0, [r4, #0xc]
	bl sub_0204B98C
	ldr r0, [r4, #0x14]
	bl sub_0204BE64
	ldr r0, [r4, #0x10]
	bl sub_0204BCD0
	ldr r0, [r4]
	bl sub_0204BF98
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	thumb_func_end ovy168_21f2d9c

	thumb_func_start ovy168_21f2dcc
ovy168_21f2dcc: ; 0x021F2DCC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r4, r3, #0
	add r7, r2, #0
	ldr r3, _021F2E7C ; =0x021F3EF4
	add r2, sp, #0x18
	add r5, r0, #0
	add r6, r1, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r5, #0x28]
	cmp r0, #0
	beq _021F2DF4
	add sp, #0x30
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F2DF4:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _021F2E04
	add r0, r5, #0
	bl ovy168_21f2e84
	mov r0, #0
	str r0, [r5, #4]
_021F2E04:
	add r0, sp, #0xc
	strh r6, [r0, #0xc]
	strh r7, [r0, #0xe]
	add r0, sp, #0x18
	str r0, [sp]
	mov r6, #1
	str r6, [sp, #4]
	ldrh r0, [r5, #0x2c]
	str r0, [sp, #8]
	ldr r0, [r5]
	ldr r1, [r5, #0xc]
	ldr r2, [r5, #0x10]
	ldr r3, [r5, #0x14]
	bl sub_0204C0A4
	str r0, [r5, #4]
	mov r1, #0
	bl sub_0204C488
	ldr r0, [r5, #4]
	mov r1, #0
	bl sub_0204C4D4
	ldr r0, [r5, #4]
	mov r1, #1
	bl sub_0204C520
	ldr r0, [r5, #4]
	mov r1, #1
	bl sub_0204C124
	cmp r4, #0
	beq _021F2E4A
	str r4, [r5, #0x1c]
	b _021F2E4C
_021F2E4A:
	str r6, [r5, #0x1c]
_021F2E4C:
	ldr r0, [sp, #0x4c]
	cmp r0, #0
	beq _021F2E54
	b _021F2E56
_021F2E54:
	mov r0, #1
_021F2E56:
	str r0, [r5, #0x24]
	mov r1, #0
	ldr r0, [sp, #0x48]
	str r1, [r5, #0x18]
	str r0, [r5, #0x20]
	str r1, [r5, #0x28]
	str r5, [sp, #0x10]
	add r0, sp, #0xc
	strh r1, [r0]
	strh r1, [r0, #2]
	ldr r0, _021F2E80 ; =ovy168_21f2e9c
	add r1, sp, #0xc
	str r0, [sp, #0x14]
	ldr r0, [r5, #4]
	bl sub_0204C5B0
	mov r0, #1
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021F2E7C: .word 0x021F3EF4
_021F2E80: .word ovy168_21f2e9c
	thumb_func_end ovy168_21f2dcc

	thumb_func_start ovy168_21f2e84
ovy168_21f2e84: ; 0x021F2E84
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021F2E96
	bl sub_0204C108
	mov r0, #0
	str r0, [r4, #4]
_021F2E96:
	pop {r4, pc}
	thumb_func_end ovy168_21f2e84

	thumb_func_start ovy168_21f2e98
ovy168_21f2e98: ; 0x021F2E98
	ldr r0, [r0, #0x28]
	bx lr
	thumb_func_end ovy168_21f2e98

	thumb_func_start ovy168_21f2e9c
ovy168_21f2e9c: ; 0x021F2E9C
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	cmp r0, #3
	bhi _021F2F26
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F2EB4: ; jump table
	.short _021F2EBC - _021F2EB4 - 2 ; case 0
	.short _021F2EEE - _021F2EB4 - 2 ; case 1
	.short _021F2F14 - _021F2EB4 - 2 ; case 2
	.short _021F2F26 - _021F2EB4 - 2 ; case 3
_021F2EBC:
	ldr r0, [r4, #0x1c]
	sub r0, r0, #1
	str r0, [r4, #0x1c]
	bne _021F2F26
	ldr r0, [r4, #4]
	mov r1, #1
	mov r5, #1
	bl sub_0204C488
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	str r4, [sp, #0x10]
	add r0, sp, #0
	strh r5, [r0, #0xc]
	ldr r1, [r4, #0x20]
	strh r1, [r0, #0xe]
	ldr r0, _021F2F2C ; =ovy168_21f2e9c
	add r1, sp, #0xc
	str r0, [sp, #0x14]
	ldr r0, [r4, #4]
	bl sub_0204C5B0
	add sp, #0x18
	pop {r3, r4, r5, pc}
_021F2EEE:
	mov r0, #1
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x18]
	mov r1, #2
	add r0, r0, #1
	str r0, [r4, #0x18]
	str r4, [sp, #4]
	add r0, sp, #0
	strh r1, [r0]
	mov r1, #0
	strh r1, [r0, #2]
	ldr r0, _021F2F2C ; =ovy168_21f2e9c
	add r1, sp, #0
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	bl sub_0204C5B0
	add sp, #0x18
	pop {r3, r4, r5, pc}
_021F2F14:
	ldr r0, [r4, #4]
	mov r5, #0
	mov r1, #0
	bl sub_0204C124
	str r5, [r4, #0x28]
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
_021F2F26:
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_021F2F2C: .word ovy168_21f2e9c
	thumb_func_end ovy168_21f2e9c

	thumb_func_start ovy168_21f2f30
ovy168_21f2f30: ; 0x021F2F30
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021F2F52
	ldr r1, [r4, #0x28]
	cmp r1, #0
	beq _021F2F52
	ldr r1, [r4, #0x24]
	sub r1, r1, #1
	str r1, [r4, #0x24]
	bne _021F2F52
	mov r1, #0
	mov r5, #0
	bl sub_0204C124
	str r5, [r4, #0x28]
_021F2F52:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy168_21f2f30
_021F2F54:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2F, 0x57, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x83, 0x34, 0xFF, 0xFF, 0x00, 0x04, 0x05, 0x06
	.byte 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x9A, 0x29, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x33, 0x6B, 0x00, 0x00, 0x33, 0x6B, 0x00, 0x00, 0xCD, 0x14, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF0, 0xFF, 0xFF
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF0, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0xF0, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF0, 0xFF, 0xFF
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0xF0, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x08, 0x00, 0xB4, 0x30, 0x1F, 0x02, 0x4E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x35, 0x02, 0x00, 0x00, 0x36, 0x02, 0x00, 0x00
	.byte 0x4A, 0x02, 0x00, 0x00, 0x4B, 0x02, 0x00, 0x00, 0x4C, 0x02, 0x00, 0x00, 0x4D, 0x02, 0x00, 0x00
	.byte 0x4E, 0x02, 0x00, 0x00, 0x4F, 0x02, 0x00, 0x00, 0x50, 0x02, 0x00, 0x00, 0x51, 0x02, 0x00, 0x00
	.byte 0x52, 0x02, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0xA9, 0x14, 0x1E, 0x02, 0xED, 0x18, 0x1E, 0x02, 0xB1, 0x19, 0x1E, 0x02
	.byte 0x39, 0x1A, 0x1E, 0x02, 0x8D, 0x1A, 0x1E, 0x02, 0xF9, 0x1A, 0x1E, 0x02, 0x1D, 0x1B, 0x1E, 0x02
	.byte 0x79, 0x1C, 0x1E, 0x02, 0x49, 0x1D, 0x1E, 0x02, 0x45, 0x1E, 0x1E, 0x02, 0xBD, 0x1F, 0x1E, 0x02
	.byte 0x45, 0x21, 0x1E, 0x02, 0x81, 0x21, 0x1E, 0x02, 0x71, 0x22, 0x1E, 0x02, 0x75, 0x23, 0x1E, 0x02
	.byte 0xFD, 0x24, 0x1E, 0x02, 0x85, 0x26, 0x1E, 0x02, 0x91, 0x26, 0x1E, 0x02, 0x9D, 0x26, 0x1E, 0x02
	.byte 0x1D, 0x27, 0x1E, 0x02, 0xB1, 0x27, 0x1E, 0x02, 0x39, 0x28, 0x1E, 0x02, 0xBD, 0x28, 0x1E, 0x02
	.byte 0x35, 0x29, 0x1E, 0x02, 0xAD, 0x29, 0x1E, 0x02, 0x25, 0x2A, 0x1E, 0x02, 0x8D, 0x2A, 0x1E, 0x02
	.byte 0xD9, 0x2A, 0x1E, 0x02, 0x59, 0x2B, 0x1E, 0x02, 0xB5, 0x2B, 0x1E, 0x02, 0x05, 0x2C, 0x1E, 0x02
	.byte 0x89, 0x2C, 0x1E, 0x02, 0xC1, 0x2C, 0x1E, 0x02, 0x19, 0x2D, 0x1E, 0x02, 0x9D, 0x2D, 0x1E, 0x02
	.byte 0xE1, 0x2D, 0x1E, 0x02, 0xF5, 0x2D, 0x1E, 0x02, 0xB5, 0x2E, 0x1E, 0x02, 0x19, 0x2F, 0x1E, 0x02
	.byte 0x6D, 0x2F, 0x1E, 0x02, 0x75, 0x30, 0x1E, 0x02, 0x99, 0x30, 0x1E, 0x02, 0xF9, 0x30, 0x1E, 0x02
	.byte 0x49, 0x31, 0x1E, 0x02, 0x6D, 0x31, 0x1E, 0x02, 0x19, 0x32, 0x1E, 0x02, 0xB5, 0x32, 0x1E, 0x02
	.byte 0x1D, 0x33, 0x1E, 0x02, 0x89, 0x33, 0x1E, 0x02, 0xB9, 0x33, 0x1E, 0x02, 0x19, 0x34, 0x1E, 0x02
	.byte 0x41, 0x34, 0x1E, 0x02, 0x89, 0x35, 0x1E, 0x02, 0xFD, 0x35, 0x1E, 0x02, 0x1D, 0x36, 0x1E, 0x02
	.byte 0x9D, 0x37, 0x1E, 0x02, 0x11, 0x38, 0x1E, 0x02, 0x35, 0x38, 0x1E, 0x02, 0x59, 0x38, 0x1E, 0x02
	.byte 0x69, 0x38, 0x1E, 0x02, 0xAD, 0x38, 0x1E, 0x02, 0x4D, 0x39, 0x1E, 0x02, 0x85, 0x39, 0x1E, 0x02
	.byte 0x99, 0x39, 0x1E, 0x02, 0xB5, 0x39, 0x1E, 0x02, 0x6D, 0x3A, 0x1E, 0x02, 0xC5, 0x3A, 0x1E, 0x02
	.byte 0xE5, 0x3A, 0x1E, 0x02, 0x5D, 0x3C, 0x1E, 0x02, 0x71, 0x3C, 0x1E, 0x02, 0x35, 0x3D, 0x1E, 0x02
	.byte 0x05, 0x3E, 0x1E, 0x02, 0x5D, 0x3E, 0x1E, 0x02, 0x7D, 0x3E, 0x1E, 0x02, 0x9D, 0x3E, 0x1E, 0x02
	.byte 0x01, 0x3F, 0x1E, 0x02, 0x5D, 0x3F, 0x1E, 0x02, 0x71, 0x3F, 0x1E, 0x02, 0x14, 0x00, 0x00, 0x00
	.byte 0x6B, 0x00, 0x00, 0x00, 0x30, 0x10, 0x00, 0x00, 0xBF, 0x11, 0x00, 0x00, 0xB8, 0x11, 0x00, 0x00
	.byte 0x8E, 0x11, 0x00, 0x00, 0x6A, 0x0E, 0x00, 0x00, 0x20, 0x13, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00
	.byte 0x73, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x63, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00
	.byte 0x73, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x63, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00
	.byte 0x6B, 0x00, 0x00, 0x00, 0x40, 0x10, 0x00, 0x00, 0x9C, 0x10, 0x00, 0x00, 0x80, 0x0D, 0x00, 0x00
	.byte 0x40, 0x14, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x10, 0x16, 0x00, 0x00, 0x30, 0x10, 0x00, 0x00
	.byte 0x00, 0x13, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00
	.byte 0x00, 0x13, 0x00, 0x00, 0xF0, 0x11, 0x00, 0x00, 0xF0, 0x11, 0x00, 0x00, 0x70, 0x12, 0x00, 0x00
	.byte 0x0E, 0x11, 0x00, 0x00, 0xC4, 0x0E, 0x00, 0x00, 0xF0, 0x13, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x66, 0x06, 0x00, 0x00, 0x00, 0x70, 0x00, 0x00, 0xCD, 0x04, 0x00, 0x00, 0x66, 0x06, 0x00, 0x00
	.byte 0x00, 0x60, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x7F, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00
	.byte 0x6B, 0x00, 0x00, 0x00, 0x28, 0x00, 0x00, 0x00, 0x57, 0x00, 0x00, 0x00, 0x00, 0xE5, 0xFF, 0xFF
	.byte 0x66, 0x06, 0x00, 0x00, 0x00, 0x66, 0x00, 0x00, 0xCD, 0x26, 0x00, 0x00, 0x66, 0x06, 0x00, 0x00
	.byte 0x00, 0x5A, 0xFF, 0xFF, 0x00, 0x28, 0x00, 0x00, 0x66, 0x06, 0x00, 0x00, 0x00, 0x7A, 0x00, 0x00
	.byte 0xCD, 0xDC, 0xFF, 0xFF, 0x66, 0x06, 0x00, 0x00, 0x00, 0x47, 0xFF, 0xFF, 0x00, 0x80, 0x00, 0x00
	.byte 0x55, 0xD5, 0x00, 0x00, 0xAB, 0x2A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x55, 0x55, 0x00, 0x00
	.byte 0xAA, 0xAA, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x07, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x70, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x66, 0x06, 0x00, 0x00
	.byte 0x00, 0x40, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x88, 0x00, 0x00
	.byte 0xCD, 0x26, 0x00, 0x00, 0x66, 0x06, 0x00, 0x00, 0x00, 0x40, 0xFF, 0xFF, 0x85, 0x35, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x90, 0x00, 0x00, 0xCD, 0xDC, 0xFF, 0xFF, 0x66, 0x06, 0x00, 0x00
	.byte 0x00, 0x40, 0xFF, 0xFF, 0x00, 0xC0, 0xFF, 0xFF, 0x66, 0x06, 0x00, 0x00, 0x00, 0x70, 0x00, 0x00
	.byte 0x00, 0x48, 0x00, 0x00, 0x66, 0x06, 0x00, 0x00, 0x00, 0x40, 0xFF, 0xFF, 0x00, 0x0C, 0x00, 0x00
	.byte 0x66, 0x06, 0x00, 0x00, 0x00, 0x4C, 0x00, 0x00, 0xCD, 0x0B, 0x00, 0x00, 0x66, 0x06, 0x00, 0x00
	.byte 0x00, 0x70, 0xFF, 0xFF, 0x00, 0x53, 0x00, 0x00, 0x66, 0x06, 0x00, 0x00, 0x00, 0x63, 0x00, 0x00
	.byte 0xCD, 0xB9, 0xFF, 0xFF, 0x66, 0x06, 0x00, 0x00, 0x00, 0x40, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00
	.byte 0x66, 0x06, 0x00, 0x00, 0x00, 0x70, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x66, 0x06, 0x00, 0x00
	.byte 0x00, 0x80, 0xFF, 0xFF, 0xB4, 0xBA, 0xFF, 0xFF, 0x66, 0x06, 0x00, 0x00, 0x01, 0xE8, 0x00, 0x00
	.byte 0x4A, 0x45, 0x00, 0x00, 0x66, 0x06, 0x00, 0x00, 0xFF, 0x07, 0xFF, 0xFF, 0x4A, 0x45, 0x00, 0x00
	.byte 0x66, 0x06, 0x00, 0x00, 0x01, 0xE8, 0x00, 0x00, 0xB4, 0xBA, 0xFF, 0xFF, 0x66, 0x06, 0x00, 0x00
	.byte 0xFF, 0x07, 0xFF, 0xFF, 0x13, 0xC0, 0x00, 0x00, 0x00, 0xEE, 0x00, 0xEE, 0x2F, 0x80, 0x00, 0xFC
	.byte 0x00, 0xFC, 0x00, 0xFC, 0x32, 0x40, 0x00, 0xFC, 0x00, 0xFC, 0x00, 0xFC, 0x33, 0x40, 0x00, 0xFC
	.byte 0x00, 0xFC, 0x00, 0xFC, 0x3A, 0xC0, 0x00, 0x00, 0x00, 0xEE, 0x00, 0xEE, 0x6F, 0x80, 0x00, 0xFC
	.byte 0x00, 0xFA, 0x00, 0xF4, 0x80, 0xC0, 0x00, 0x00, 0x00, 0xEE, 0x00, 0xEE, 0xA7, 0xC0, 0x00, 0x00
	.byte 0x00, 0xEE, 0x00, 0xEE, 0xE3, 0xC0, 0x00, 0xFC, 0x00, 0xFA, 0x00, 0xFE, 0xF4, 0x80, 0x00, 0xFC
	.byte 0x00, 0xF7, 0x00, 0xF4, 0xFD, 0xC0, 0x00, 0xFC, 0x00, 0xF4, 0x00, 0x01, 0xFE, 0xC0, 0x00, 0xFC
	.byte 0x00, 0xF4, 0x00, 0x01, 0xFE, 0x80, 0x00, 0xFC, 0x00, 0xF6, 0x00, 0xF0, 0x01, 0xC1, 0x00, 0xF8
	.byte 0x00, 0xEC, 0x00, 0x01, 0x06, 0xC1, 0x00, 0x00, 0x00, 0xEE, 0x00, 0xEE, 0x06, 0x81, 0x00, 0xFC
	.byte 0x00, 0xF7, 0x00, 0xF4, 0x08, 0xC1, 0x00, 0x00, 0x00, 0xEE, 0x00, 0xEE, 0x1B, 0xC1, 0x00, 0xFC
	.byte 0x00, 0xE8, 0x00, 0xF8, 0x30, 0xC1, 0x00, 0x00, 0x00, 0xEE, 0x00, 0xF0, 0x31, 0xC1, 0x00, 0x00
	.byte 0x00, 0xEE, 0x00, 0xEE, 0x3D, 0xC1, 0x00, 0x00, 0x00, 0xEE, 0x00, 0xEE, 0x67, 0xC1, 0x00, 0x00
	.byte 0x00, 0xE6, 0x00, 0xEE, 0x75, 0x81, 0x00, 0xFC, 0x00, 0xF6, 0x00, 0xF0, 0x78, 0xC1, 0x00, 0xF8
	.byte 0x00, 0xEC, 0x00, 0x01, 0x84, 0xC1, 0x00, 0x00, 0x00, 0xEA, 0x00, 0xEE, 0x84, 0x81, 0x00, 0xFC
	.byte 0x00, 0xF7, 0x00, 0xF4, 0x85, 0xC1, 0x00, 0x00, 0x00, 0xEA, 0x00, 0xEE, 0x85, 0x81, 0x00, 0xFC
	.byte 0x00, 0xF7, 0x00, 0xF4, 0x88, 0xC1, 0x00, 0xF8, 0x00, 0xEC, 0x00, 0x01, 0xC2, 0x41, 0x00, 0xFC
	.byte 0x00, 0xFC, 0x00, 0xFC, 0xC2, 0x01, 0x00, 0xFC, 0x00, 0xFC, 0x00, 0xFC, 0xD2, 0xC1, 0x00, 0xFC
	.byte 0x00, 0xF4, 0x00, 0x01, 0xD3, 0xC1, 0x00, 0xFC, 0x00, 0xF4, 0x00, 0x01, 0xE3, 0xC1, 0x00, 0xFC
	.byte 0x00, 0xF0, 0x00, 0xFC, 0xE5, 0xC1, 0x00, 0x00, 0x00, 0xE0, 0x00, 0xF8, 0xE5, 0x81, 0x00, 0xFC
	.byte 0x00, 0xF7, 0x00, 0xF4, 0xF7, 0xC1, 0x00, 0xFC, 0x00, 0xF0, 0x00, 0xFA, 0xF7, 0x81, 0x00, 0xFC
	.byte 0x00, 0xF7, 0x00, 0xF4, 0xFE, 0xC1, 0x00, 0xFC, 0x00, 0xF0, 0x00, 0xF8, 0x09, 0xC2, 0x00, 0xFC
	.byte 0x00, 0xF4, 0x00, 0x01, 0x3B, 0xC2, 0x00, 0xF8, 0x00, 0xEC, 0x00, 0x01, 0x54, 0xC2, 0x00, 0xFC
	.byte 0x00, 0xF0, 0x00, 0xFC, 0x64, 0xC2, 0x00, 0xFC, 0x00, 0xE4, 0x00, 0xF8, 0x6B, 0xC2, 0x00, 0x00
	.byte 0x00, 0xEE, 0x00, 0xEE, 0x72, 0xC2, 0x00, 0xFC, 0x00, 0xEA, 0x00, 0xFA, 0x83, 0xC2, 0x00, 0xFC
	.byte 0x00, 0xF4, 0x00, 0x01, 0x83, 0x82, 0x00, 0xFC, 0x00, 0xF6, 0x00, 0xF6, 0x84, 0xC2, 0x00, 0xFC
	.byte 0x00, 0xF4, 0x00, 0x01, 0x10, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x02, 0x03, 0x05
	.byte 0x06, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x02, 0x01, 0x00, 0x03, 0x03, 0x00, 0x01, 0x01, 0x01, 0x00
	.byte 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x00, 0x01, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x02, 0x01, 0x00, 0x00, 0x60, 0x37, 0x1F, 0x02, 0xA8, 0x36, 0x1F, 0x02, 0xC4, 0x36, 0x1F, 0x02
	.byte 0x00, 0x37, 0x1F, 0x02, 0x70, 0x36, 0x1F, 0x02, 0x8C, 0x36, 0x1F, 0x02, 0x04, 0x00, 0x04, 0x00
	.byte 0x04, 0x00, 0x04, 0x00, 0x02, 0x00, 0x02, 0x00, 0x88, 0x00, 0x00, 0x00, 0x88, 0x00, 0x00, 0x00
	.byte 0x18, 0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00, 0x22, 0x00, 0x41, 0x00, 0xA2, 0x00, 0x41, 0x00
	.byte 0x22, 0x00, 0x71, 0x00, 0xA2, 0x00, 0x71, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x47, 0x02, 0x00, 0x00, 0x46, 0x02, 0x00, 0x00
	.byte 0x45, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x45, 0x02, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00
	.byte 0x00, 0x04, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC0, 0x00, 0x00, 0x00
	.byte 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x20, 0x50, 0x00, 0x80, 0x20, 0x50, 0x80, 0xFF, 0x50, 0x80, 0x00, 0x80, 0x50, 0x80, 0x80, 0xFF
	.byte 0x90, 0xC0, 0xB0, 0xFF, 0x98, 0xC0, 0x00, 0x50, 0x98, 0xC0, 0x50, 0xA0, 0xFF, 0x00, 0x00, 0x00
	.byte 0x40, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0xC0, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00
	.byte 0x40, 0x00, 0x00, 0x00, 0x3A, 0x00, 0x00, 0x00, 0xC0, 0x00, 0x00, 0x00, 0x3A, 0x00, 0x00, 0x00
	.byte 0x00, 0x01, 0x00, 0x00, 0xC0, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0xC0, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC0, 0x01, 0x00, 0x00
	.byte 0x38, 0x68, 0x40, 0xC0, 0x38, 0x68, 0x40, 0xC0, 0x38, 0x68, 0x40, 0xC0, 0x38, 0x68, 0x40, 0xC0
	.byte 0x90, 0xC0, 0xB0, 0xFF, 0x98, 0xC0, 0x00, 0x50, 0x98, 0xC0, 0x50, 0xA0, 0xFF, 0x00, 0x00, 0x00
	.byte 0x80, 0x00, 0x70, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x68, 0x00, 0x70, 0x00
	.byte 0x98, 0x00, 0x70, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x58, 0x00, 0x70, 0x00, 0x80, 0x00, 0x70, 0x00
	.byte 0xA8, 0x00, 0x70, 0x00, 0x68, 0x00, 0x70, 0x00, 0x98, 0x00, 0x70, 0x00, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x05, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0xF4, 0xFF, 0xFF, 0xFF
	.byte 0xF4, 0xFF, 0xFF, 0xFF, 0xF8, 0xFF, 0xFF, 0xFF, 0xF8, 0xFF, 0xFF, 0xFF, 0xF4, 0xFF, 0xFF, 0xFF
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00
	.byte 0x48, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00, 0x28, 0x00, 0x00, 0x00
	.byte 0x98, 0x00, 0x00, 0x00, 0x35, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0xB5, 0x00, 0x00, 0x00
	.byte 0x1A, 0x00, 0x00, 0x00, 0x35, 0x00, 0x00, 0x00, 0x4A, 0x00, 0x00, 0x00, 0xB5, 0x00, 0x00, 0x00
	.byte 0x4A, 0x00, 0x00, 0x00, 0x5A, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0xDA, 0x00, 0x00, 0x00
	.byte 0x1A, 0x00, 0x00, 0x00, 0x5A, 0x00, 0x00, 0x00, 0x4A, 0x00, 0x00, 0x00, 0xDA, 0x00, 0x00, 0x00
	.byte 0x4A, 0x00, 0x00, 0x00, 0xD0, 0x01, 0x00, 0x00, 0xD6, 0x01, 0x00, 0x00, 0xD9, 0x01, 0x00, 0x00
	.byte 0xD7, 0x01, 0x00, 0x00, 0xD8, 0x01, 0x00, 0x00, 0xDC, 0x01, 0x00, 0x00, 0xDB, 0x01, 0x00, 0x00
	.byte 0xDD, 0x01, 0x00, 0x00, 0xDF, 0x01, 0x00, 0x00, 0xD1, 0x01, 0x00, 0x00, 0xD2, 0x01, 0x00, 0x00
	.byte 0xD4, 0x01, 0x00, 0x00, 0xD3, 0x01, 0x00, 0x00, 0xD5, 0x01, 0x00, 0x00, 0xDE, 0x01, 0x00, 0x00
	.byte 0xDA, 0x01, 0x00, 0x00, 0xE0, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x80, 0xFB
	.byte 0x80, 0x80, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x80, 0xFB, 0x80, 0x80, 0x00, 0x04
	.byte 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x80, 0xFB, 0x80, 0x80, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00
	.byte 0xFF, 0xFF, 0x80, 0xFB, 0x80, 0x80, 0x00, 0x04, 0x04, 0x04, 0x04, 0x04, 0xFF, 0xFF, 0x00, 0x80
	.byte 0x05, 0x80, 0x04, 0x04, 0x05, 0x05, 0x05, 0x05, 0xFF, 0xFF, 0x00, 0x80, 0x80, 0x04, 0x05, 0x04
	.byte 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x80, 0xFB, 0x80, 0x80, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00
	.byte 0xFF, 0xFF, 0x80, 0xFB, 0x80, 0x80, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x80, 0xFB
	.byte 0x80, 0x80, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x80, 0xFB, 0x80, 0x80, 0x00, 0x04
	.byte 0x04, 0x04, 0x04, 0x04, 0xFF, 0xFF, 0x00, 0x80, 0x05, 0x80, 0x04, 0x04, 0x06, 0x06, 0x06, 0x06
	.byte 0xFF, 0xFF, 0x00, 0x80, 0x80, 0x04, 0x06, 0x04, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x80, 0x02
	.byte 0x80, 0x01, 0x00, 0x04, 0x01, 0x01, 0x01, 0x01, 0xFF, 0xFF, 0x80, 0x03, 0x00, 0x80, 0x01, 0x04
	.byte 0x02, 0x02, 0x02, 0x02, 0xFF, 0xFF, 0x00, 0x05, 0x80, 0x03, 0x02, 0x04, 0x03, 0x03, 0x03, 0x03
	.byte 0xFF, 0xFF, 0x01, 0x04, 0x02, 0x80, 0x03, 0x04, 0x04, 0x04, 0x04, 0x04, 0xFF, 0xFF, 0x03, 0x80
	.byte 0x05, 0x80, 0x04, 0x04, 0x05, 0x05, 0x05, 0x05, 0xFF, 0xFF, 0x02, 0x80, 0x80, 0x04, 0x05, 0x04
	.byte 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x80, 0x02, 0x80, 0x01, 0x00, 0x04, 0x01, 0x01, 0x01, 0x01
	.byte 0xFF, 0xFF, 0x80, 0x03, 0x00, 0x80, 0x01, 0x04, 0x02, 0x02, 0x02, 0x02, 0xFF, 0xFF, 0x00, 0x05
	.byte 0x80, 0x03, 0x02, 0x04, 0x03, 0x03, 0x03, 0x03, 0xFF, 0xFF, 0x01, 0x04, 0x02, 0x80, 0x03, 0x04
	.byte 0x04, 0x04, 0x04, 0x04, 0xFF, 0xFF, 0x03, 0x80, 0x05, 0x80, 0x04, 0x04, 0x06, 0x06, 0x06, 0x06
	.byte 0xFF, 0xFF, 0x02, 0x80, 0x80, 0x04, 0x06, 0x04, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x80, 0xFB
	.byte 0x80, 0x80, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x80, 0xFB, 0x80, 0x80, 0x00, 0x04
	.byte 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x80, 0xFB, 0x80, 0x80, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00
	.byte 0xFF, 0xFF, 0x80, 0xFB, 0x80, 0x80, 0x00, 0x04, 0x04, 0x04, 0x04, 0x04, 0xFF, 0xFF, 0x00, 0x80
	.byte 0x06, 0x80, 0x04, 0x04, 0x05, 0x05, 0x05, 0x05, 0xFF, 0xFF, 0x00, 0x80, 0x80, 0x06, 0x05, 0x04
	.byte 0x06, 0x06, 0x06, 0x06, 0xFF, 0xFF, 0x00, 0x80, 0x05, 0x04, 0x06, 0x04, 0x00, 0x00, 0x00, 0x00
	.byte 0xFF, 0xFF, 0x80, 0x02, 0x80, 0x01, 0x00, 0x04, 0x01, 0x01, 0x01, 0x01, 0xFF, 0xFF, 0x80, 0x03
	.byte 0x00, 0x80, 0x01, 0x04, 0x02, 0x02, 0x02, 0x02, 0xFF, 0xFF, 0x00, 0x45, 0x80, 0x03, 0x02, 0x04
	.byte 0x03, 0x03, 0x03, 0x03, 0xFF, 0xFF, 0x01, 0x04, 0x02, 0x80, 0x03, 0x04, 0x04, 0x04, 0x04, 0x04
	.byte 0xFF, 0xFF, 0x03, 0x80, 0x06, 0x80, 0x04, 0x04, 0x05, 0x05, 0x05, 0x05, 0xFF, 0xFF, 0x02, 0x80
	.byte 0x80, 0x06, 0x05, 0x04, 0x06, 0x06, 0x06, 0x06, 0xFF, 0xFF, 0x02, 0x80, 0x05, 0x04, 0x06, 0x04
	.byte 0x20, 0x68, 0x03, 0x00, 0x50, 0x68, 0x03, 0x00, 0x80, 0x68, 0x03, 0x00, 0xB0, 0x68, 0x03, 0x00
	.byte 0xE0, 0x68, 0x03, 0x00, 0x08, 0x88, 0x02, 0x00, 0x38, 0x88, 0x02, 0x00, 0x68, 0x88, 0x02, 0x00
	.byte 0x98, 0x88, 0x02, 0x00, 0xC8, 0x88, 0x02, 0x00, 0xF8, 0x88, 0x02, 0x00, 0x20, 0xA8, 0x01, 0x00
	.byte 0x50, 0xA8, 0x01, 0x00, 0x80, 0xA8, 0x01, 0x00, 0xB0, 0xA8, 0x01, 0x00, 0xE0, 0xA8, 0x01, 0x00
	.byte 0x08, 0xC8, 0x00, 0x00, 0x38, 0xC8, 0x00, 0x00, 0x68, 0xC8, 0x00, 0x00, 0x98, 0xC8, 0x00, 0x00
	.byte 0xC8, 0xC8, 0x00, 0x00, 0xF8, 0xC8, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x44, 0x00, 0x00, 0x00
	.byte 0xC0, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0xC0, 0x00, 0x00, 0x00, 0x44, 0x00, 0x00, 0x00
	.byte 0x40, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00, 0x44, 0x00, 0x00, 0x00
	.byte 0xD0, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x44, 0x00, 0x00, 0x00
	.byte 0x80, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0xD0, 0x00, 0x00, 0x00, 0x44, 0x00, 0x00, 0x00
	.byte 0x30, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x40, 0x00, 0x38, 0x00, 0xC0, 0x00, 0x38, 0x00
	.byte 0x40, 0x00, 0x68, 0x00, 0xC0, 0x00, 0x68, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x08, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x40, 0x00, 0x38, 0x00, 0xC0, 0x00, 0x38, 0x00
	.byte 0x40, 0x00, 0x68, 0x00, 0xC0, 0x00, 0x68, 0x00, 0x40, 0x00, 0x68, 0x00, 0xC0, 0x00, 0x68, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x40, 0x00, 0x38, 0x00, 0xC0, 0x00, 0x38, 0x00
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x08, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x04, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x04, 0x04
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x08, 0x06, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x04, 0x01, 0x0C, 0x02, 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0xA2, 0x01, 0x00, 0x00, 0x9F, 0x01, 0x00, 0x00
	.byte 0x9E, 0x01, 0x00, 0x00, 0x9B, 0x01, 0x00, 0x00, 0xA0, 0x01, 0x00, 0x00, 0x9A, 0x01, 0x00, 0x00
	.byte 0x9C, 0x01, 0x00, 0x00, 0x9D, 0x01, 0x00, 0x00, 0x99, 0x01, 0x00, 0x00, 0x9D, 0x01, 0x00, 0x00
	.byte 0x99, 0x01, 0x00, 0x00, 0x9A, 0x01, 0x00, 0x00, 0x9C, 0x01, 0x00, 0x00, 0x9D, 0x01, 0x00, 0x00
	.byte 0xA2, 0x01, 0x00, 0x00, 0xA3, 0x01, 0x00, 0x00, 0x9F, 0x01, 0x00, 0x00, 0x9D, 0x01, 0x00, 0x00
	.byte 0x9B, 0x01, 0x00, 0x00, 0xA1, 0x01, 0x00, 0x00, 0x9A, 0x01, 0x00, 0x00, 0x9C, 0x01, 0x00, 0x00
	.byte 0x9E, 0x01, 0x00, 0x00, 0x99, 0x01, 0x00, 0x00, 0x9E, 0x01, 0x00, 0x00, 0x99, 0x01, 0x00, 0x00
	.byte 0x9A, 0x01, 0x00, 0x00, 0x9C, 0x01, 0x00, 0x00, 0x9E, 0x01, 0x00, 0x00, 0xA3, 0x01, 0x00, 0x00
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x94, 0x01, 0x00, 0x00
	.byte 0x8E, 0x01, 0x00, 0x00, 0x97, 0x01, 0x00, 0x00, 0x85, 0x01, 0x00, 0x00, 0x91, 0x01, 0x00, 0x00
	.byte 0x82, 0x01, 0x00, 0x00, 0x89, 0x01, 0x00, 0x00, 0x8B, 0x01, 0x00, 0x00, 0x80, 0x01, 0x00, 0x00
	.byte 0x8B, 0x01, 0x00, 0x00, 0x80, 0x01, 0x00, 0x00, 0x81, 0x01, 0x00, 0x00, 0x89, 0x01, 0x00, 0x00
	.byte 0x8B, 0x01, 0x00, 0x00, 0x87, 0x01, 0x00, 0x00, 0x93, 0x01, 0x00, 0x00, 0x8D, 0x01, 0x00, 0x00
	.byte 0x96, 0x01, 0x00, 0x00, 0x84, 0x01, 0x00, 0x00, 0x90, 0x01, 0x00, 0x00, 0x81, 0x01, 0x00, 0x00
	.byte 0x89, 0x01, 0x00, 0x00, 0x8A, 0x01, 0x00, 0x00, 0x80, 0x01, 0x00, 0x00, 0x8A, 0x01, 0x00, 0x00
	.byte 0x80, 0x01, 0x00, 0x00, 0x81, 0x01, 0x00, 0x00, 0x89, 0x01, 0x00, 0x00, 0x8A, 0x01, 0x00, 0x00
	.byte 0x93, 0x01, 0x00, 0x00, 0x95, 0x01, 0x00, 0x00, 0x8F, 0x01, 0x00, 0x00, 0x98, 0x01, 0x00, 0x00
	.byte 0x86, 0x01, 0x00, 0x00, 0x92, 0x01, 0x00, 0x00, 0x83, 0x01, 0x00, 0x00, 0x89, 0x01, 0x00, 0x00
	.byte 0x8C, 0x01, 0x00, 0x00, 0x80, 0x01, 0x00, 0x00, 0x8C, 0x01, 0x00, 0x00, 0x80, 0x01, 0x00, 0x00
	.byte 0x81, 0x01, 0x00, 0x00, 0x89, 0x01, 0x00, 0x00, 0x8C, 0x01, 0x00, 0x00, 0x88, 0x01, 0x00, 0x00
	.byte 0x80, 0x00, 0x00, 0x00, 0xF0, 0xFF, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x03
	.byte 0x00, 0x00, 0x03, 0x00, 0x06, 0x06, 0x03, 0x03, 0x00, 0x00, 0x03, 0x00, 0x03, 0x03, 0x06, 0x06
	.byte 0x00, 0x00, 0x00, 0x00, 0xE2, 0xFF, 0x08, 0x00, 0xDA, 0xFF, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x01, 0x08, 0x00, 0x07, 0x00, 0x00, 0x00, 0x07, 0x00, 0xD8, 0x00, 0x78, 0x00
	.byte 0x2C, 0x00, 0x28, 0x00, 0xD8, 0x00, 0x64, 0x00, 0x30, 0x00, 0x1C, 0x00, 0xDC, 0x00, 0x80, 0x00
	.byte 0x2C, 0x00, 0x34, 0x00, 0x08, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00
	.byte 0xD8, 0x00, 0x78, 0x00, 0x2C, 0x00, 0x28, 0x00, 0xD8, 0x00, 0x62, 0x00, 0x30, 0x00, 0x14, 0x00
	.byte 0xDC, 0x00, 0x75, 0x00, 0x2C, 0x00, 0x27, 0x00, 0xE0, 0x00, 0x88, 0x00, 0x28, 0x00, 0x3A, 0x00
	.byte 0xD8, 0x00, 0x78, 0x00, 0x2C, 0x00, 0x28, 0x00, 0xDC, 0x00, 0x75, 0x00, 0x2C, 0x00, 0x27, 0x00
	.byte 0xD8, 0x00, 0x62, 0x00, 0x30, 0x00, 0x14, 0x00, 0xE0, 0x00, 0x88, 0x00, 0x28, 0x00, 0x3A, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00
	.byte 0xA6, 0x00, 0x70, 0x00, 0xB8, 0x00, 0x78, 0x00, 0x5A, 0x00, 0x28, 0x00, 0x38, 0x00, 0x30, 0x00
	.byte 0x09, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x0B, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x2C, 0x01, 0x00, 0x00
	.byte 0x0F, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x88, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x40, 0x00, 0x00, 0x00, 0x44, 0x00, 0x00, 0x00, 0x48, 0x00, 0x00, 0x00, 0x4E, 0x00, 0x00, 0x00
	.byte 0x52, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x62, 0x74, 0x6C, 0x76, 0x5F, 0x73, 0x74, 0x61, 0x67, 0x65, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x62, 0x74, 0x6C, 0x76, 0x5F, 0x66, 0x69, 0x65, 0x6C, 0x64, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x62, 0x74, 0x6C, 0x76, 0x5F, 0x63, 0x61, 0x6D, 0x65, 0x72, 0x61, 0x2E, 0x63, 0x00, 0x00, 0x00
	.byte 0x4A, 0x02, 0x00, 0x00, 0x4B, 0x02, 0x00, 0x00, 0x35, 0x02, 0x00, 0x00, 0x4C, 0x02, 0x00, 0x00
	.byte 0x4D, 0x02, 0x00, 0x00, 0x4E, 0x02, 0x00, 0x00, 0x4F, 0x02, 0x00, 0x00, 0x50, 0x02, 0x00, 0x00
	.byte 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x01, 0x01, 0x01, 0x01, 0x01
	.byte 0x01, 0x01, 0x01, 0x01, 0x00, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01
	.byte 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x62, 0x74, 0x6C, 0x76
	.byte 0x5F, 0x65, 0x66, 0x66, 0x65, 0x63, 0x74, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x33, 0x8B, 0x00, 0x00
	.byte 0x33, 0x7B, 0x00, 0x00, 0xCD, 0x7C, 0x01, 0x00, 0x33, 0x9B, 0x00, 0x00, 0x33, 0x6B, 0x00, 0x00
	.byte 0xCD, 0x14, 0x01, 0x00, 0x33, 0x6B, 0x00, 0x00, 0x33, 0x7B, 0x00, 0x00, 0xCD, 0xEC, 0x01, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x9A, 0x39, 0x00, 0x00, 0x00, 0xD8, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00
	.byte 0x9A, 0x39, 0x00, 0x00, 0x00, 0x68, 0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x9A, 0x29, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xA6, 0x5C, 0x00, 0x00, 0x33, 0x5F, 0x00, 0x00, 0xC3, 0x3C, 0x01, 0x00
	.byte 0x94, 0x69, 0x00, 0x00, 0x33, 0x6F, 0x00, 0x00, 0x79, 0x6E, 0x00, 0x00, 0x73, 0xF1, 0xFF, 0xFF
	.byte 0x9A, 0x1D, 0x00, 0x00, 0xF6, 0x27, 0x00, 0x00, 0x61, 0xFE, 0xFF, 0xFF, 0x9A, 0x2D, 0x00, 0x00
	.byte 0xAC, 0x59, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00
	.byte 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00
	.byte 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x33, 0x2B, 0x00, 0x00, 0x33, 0x53, 0x00, 0x00, 0xCD, 0x14, 0x01, 0x00
	.byte 0x94, 0x89, 0x00, 0x00, 0x33, 0x6F, 0x00, 0x00, 0x79, 0x6E, 0x00, 0x00, 0x33, 0x6B, 0x00, 0x00
	.byte 0x33, 0x53, 0x00, 0x00, 0xCD, 0x14, 0x01, 0x00, 0x94, 0x49, 0x00, 0x00, 0x33, 0x6F, 0x00, 0x00
	.byte 0x79, 0x6E, 0x00, 0x00, 0x00, 0xC0, 0xFF, 0xFF, 0x9A, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x9F, 0x21, 0x00, 0x00, 0x9A, 0x2D, 0x00, 0x00, 0xAC, 0x59, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00
	.byte 0x9A, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x61, 0xDE, 0xFF, 0xFF, 0x9A, 0x2D, 0x00, 0x00
	.byte 0xAC, 0x59, 0xFF, 0xFF, 0x33, 0x1B, 0x00, 0x00, 0x33, 0x63, 0x00, 0x00, 0xCD, 0x44, 0x01, 0x00
	.byte 0x94, 0xB9, 0x00, 0x00, 0x33, 0x6F, 0x00, 0x00, 0x79, 0x6E, 0x00, 0x00, 0xA6, 0x5C, 0x00, 0x00
	.byte 0x33, 0x5F, 0x00, 0x00, 0xC3, 0x3C, 0x01, 0x00, 0x94, 0x69, 0x00, 0x00, 0x33, 0x6F, 0x00, 0x00
	.byte 0x79, 0x6E, 0x00, 0x00, 0x33, 0x6B, 0x00, 0x00, 0x33, 0x63, 0x00, 0x00, 0xCD, 0x44, 0x01, 0x00
	.byte 0x94, 0x29, 0x00, 0x00, 0x33, 0x6F, 0x00, 0x00, 0x79, 0x6E, 0x00, 0x00, 0x00, 0xB0, 0xFF, 0xFF
	.byte 0x9A, 0x21, 0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x9F, 0x51, 0x00, 0x00, 0x9A, 0x2D, 0x00, 0x00
	.byte 0xAC, 0x59, 0xFF, 0xFF, 0x73, 0xF1, 0xFF, 0xFF, 0x9A, 0x1D, 0x00, 0x00, 0xF6, 0x27, 0x00, 0x00
	.byte 0x61, 0xFE, 0xFF, 0xFF, 0x9A, 0x2D, 0x00, 0x00, 0xAC, 0x59, 0xFF, 0xFF, 0x00, 0x50, 0x00, 0x00
	.byte 0x9A, 0x21, 0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x61, 0xBE, 0xFF, 0xFF, 0x9A, 0x2D, 0x00, 0x00
	.byte 0xAC, 0x59, 0xFF, 0xFF, 0x62, 0x74, 0x6C, 0x76, 0x5F, 0x65, 0x66, 0x66, 0x76, 0x6D, 0x2E, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x30, 0x38, 0x40, 0x00, 0x62, 0x74, 0x6C, 0x76, 0x5F, 0x6D, 0x63, 0x73
	.byte 0x73, 0x2E, 0x63, 0x00, 0x62, 0x74, 0x6C, 0x76, 0x5F, 0x63, 0x6C, 0x61, 0x63, 0x74, 0x2E, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0xC8, 0x39, 0x1F, 0x02, 0xA8, 0x38, 0x1F, 0x02, 0xF0, 0x38, 0x1F, 0x02
	.byte 0xEA, 0x35, 0x1F, 0x02, 0xE2, 0x35, 0x1F, 0x02, 0xD2, 0x35, 0x1F, 0x02, 0x1C, 0x3A, 0x1F, 0x02
	.byte 0x38, 0x39, 0x1F, 0x02, 0x80, 0x39, 0x1F, 0x02, 0x62, 0x74, 0x6C, 0x76, 0x5F, 0x69, 0x6E, 0x70
	.byte 0x75, 0x74, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x62, 0x74, 0x6C, 0x76, 0x5F, 0x67, 0x61, 0x75
	.byte 0x67, 0x65, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x62, 0x74, 0x6C, 0x76, 0x5F, 0x62, 0x5F, 0x67
	.byte 0x61, 0x75, 0x67, 0x65, 0x2E, 0x63, 0x00, 0x00, 0x62, 0x74, 0x6C, 0x76, 0x5F, 0x74, 0x69, 0x6D
	.byte 0x65, 0x72, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x62, 0x74, 0x6C, 0x76, 0x5F, 0x62, 0x67, 0x2E
	.byte 0x63, 0x00, 0x00, 0x00, 0x62, 0x74, 0x6C, 0x76, 0x5F, 0x66, 0x69, 0x6E, 0x67, 0x65, 0x72, 0x5F
	.byte 0x63, 0x75, 0x72, 0x73, 0x6F, 0x72, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021F2F54
