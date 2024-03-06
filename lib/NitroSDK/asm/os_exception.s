	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.public OS_EnableProtectionUnit
	.public OS_DisableProtectionUnit

	.text
    
	thumb_func_start OS_InitException
OS_InitException: ; 0x0207B894
	push {r3, r4, r5, lr}
	ldr r0, _0207B8D0 ; =0x02FFFD9C
	ldr r1, [r0]
	mov r0, #0x26
	lsl r0, r0, #0x14
	cmp r1, r0
	blo _0207B8AA
	mov r0, #0xa
	lsl r0, r0, #0x16
	cmp r1, r0
	blo _0207B8AC
_0207B8AA:
	mov r1, #0
_0207B8AC:
	ldr r0, _0207B8D4 ; =0x0214C4D0
	cmp r1, #0
	str r1, [r0]
	bne _0207B8C8
	ldr r5, _0207B8D8 ; =OSi_ExceptionHandler
	ldr r4, _0207B8D0 ; =0x02FFFD9C
	str r5, [r4]
	bl OS_IsRunOnTwl
	cmp r0, #0
	bne _0207B8C8
	ldr r0, _0207B8DC ; =0xFF7FFFFF
	and r0, r4
	str r5, [r0]
_0207B8C8:
	ldr r0, _0207B8D4 ; =0x0214C4D0
	mov r1, #0
	str r1, [r0, #8]
	pop {r3, r4, r5, pc}
	.align 2, 0
_0207B8D0: .word 0x02FFFD9C
_0207B8D4: .word 0x0214C4D0
_0207B8D8: .word OSi_ExceptionHandler
_0207B8DC: .word 0xFF7FFFFF
	thumb_func_end OS_InitException

	arm_func_start OSi_ExceptionHandler
OSi_ExceptionHandler: ; OSi_ExceptionHandler
	ldr ip, _0207B94C ; =0x0214C4D0
	ldr ip, [ip]
	cmp ip, #0
	movne lr, pc
	bxne ip
	ldr ip, _0207B950 ; =0x02000000
	stmdb ip!, {r0, r1, r2, r3, sp, lr}
	and r0, sp, #1
	mov sp, ip
	mrs r1, cpsr
	and r1, r1, #0x1f
	teq r1, #0x17
	bne _0207B91C
	bl OSi_GetAndDisplayContext
	b _0207B928
_0207B91C:
	teq r1, #0x1b
	bne _0207B928
	bl OSi_GetAndDisplayContext
_0207B928:
	ldr ip, _0207B94C ; =0x0214C4D0
	ldr ip, [ip]
	cmp ip, #0
_0207B934:
	beq _0207B934
_0207B938:
	mov r0, r0
	b _0207B938
    ldmfd sp!, {r0-r3, r12, lr}
    mov sp, r12
    bx lr
_0207B94C: .word 0x0214C4D0
_0207B950: .word 0x02000000
	arm_func_end OSi_ExceptionHandler

	arm_func_start OSi_GetAndDisplayContext
OSi_GetAndDisplayContext: ; 0x0207B954
	stmdb sp!, {r0, lr}
	bl OSi_SetExContext
	bl OSi_DisplayExContext
	ldmia sp!, {r0, lr}
	bx lr
	arm_func_end OSi_GetAndDisplayContext

	arm_func_start OSi_SetExContext
OSi_SetExContext: ; 0x0207B968
	ldr r1, _0207B9E4 ; =0x0214C4FC
	str r0, [r1, #0x6c]
	ldr r0, [ip]
	str r0, [r1, #4]
	ldr r0, [ip, #4]
	str r0, [r1, #8]
	ldr r0, [ip, #8]
	str r0, [r1, #0xc]
	ldr r0, [ip, #0xc]
	str r0, [r1, #0x10]
	ldr r2, [ip, #0x10]
	bic r2, r2, #1
	add r0, r1, #0x14
	stmia r0, {r4, r5, r6, r7, r8, sb, sl, fp}
	ldr r0, [r2]
	str r0, [r1, #0x64]
	ldr r3, [r2, #4]
	str r3, [r1]
	ldr r0, [r2, #8]
	str r0, [r1, #0x34]
	ldr r0, [r2, #0xc]
	str r0, [r1, #0x40]
	mrs r0, cpsr
	orr r3, r3, #0x80
	bic r3, r3, #0x20
	msr cpsr_fsxc, r3
	str sp, [r1, #0x38]
	str lr, [r1, #0x3c]
	mrs r2, spsr
	msr cpsr_fsxc, r0
	bx lr
	.align 2, 0
_0207B9E4: .word 0x0214C4FC
	arm_func_end OSi_SetExContext

	arm_func_start OSi_DisplayExContext
OSi_DisplayExContext: ; 0x0207B9E8
	stmdb sp!, {r3, lr}
	ldr r0, _0207BA4C ; =0x0214C4D0
	ldr r0, [r0, #8]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	mrs r2, cpsr
	mov r0, sp
	ldr r1, _0207BA50 ; =0x0000009F
	msr cpsr_fsxc, r1
	mov r1, sp
	mov sp, r0
	stmdb sp!, {r1, r2}
	bl OS_EnableProtectionUnit
	ldr r0, _0207BA54 ; =0x0214C4FC
	ldr r1, _0207BA58 ; =0x0214C4D4
	ldr r1, [r1]
	ldr ip, _0207BA5C ; =0x0214C4D8
	ldr ip, [ip]
	ldr lr, _0207BA60 ; =_0207BA38
	bx ip
_0207BA38:
	bl OS_DisableProtectionUnit
	ldmfd sp!, {r1,r2}
	mov sp, r1
	msr cpsr_fsxc, r2
	ldmia sp!, {r1, r2}
_0207BA4C: .word 0x0214C4D0
_0207BA50: .word 0x0000009F
_0207BA54: .word 0x0214C4FC
_0207BA58: .word 0x0214C4D4
_0207BA5C: .word 0x0214C4D8
_0207BA60: .word _0207BA38
	arm_func_end OSi_DisplayExContext