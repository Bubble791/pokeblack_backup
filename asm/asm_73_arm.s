	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	arm_func_start sub_02078624
sub_02078624: ; 0x02078624
	mov r3, #0
_02078628:
	cmp r3, r2
	strlth r0, [r1, r3]
	addlt r3, r3, #2
	blt _02078628
	bx lr
	arm_func_end sub_02078624

	arm_func_start sub_0207863C
sub_0207863C: ; 0x0207863C
	mov ip, #0
_02078640:
	cmp ip, r2
	ldrlth r3, [r0, ip]
	strlth r3, [r1, ip]
	addlt ip, ip, #2
	blt _02078640
	bx lr
	arm_func_end sub_0207863C

	arm_func_start sub_02078658
sub_02078658: ; 0x02078658
	add ip, r1, r2
_0207865C:
	cmp r1, ip
	stmltia r1!, {r0}
	blt _0207865C
	bx lr
	arm_func_end sub_02078658

	arm_func_start sub_0207866C
sub_0207866C: ; 0x0207866C
	add ip, r1, r2
_02078670:
	cmp r1, ip
	ldmltia r0!, {r2}
	stmltia r1!, {r2}
	blt _02078670
	bx lr
	arm_func_end sub_0207866C

	arm_func_start sub_02078684
sub_02078684: ; 0x02078684
	add ip, r0, r2
_02078688:
	cmp r0, ip
	ldmltia r0!, {r2}
	strlt r2, [r1]
	blt _02078688
	bx lr
	arm_func_end sub_02078684

	arm_func_start sub_0207869C
sub_0207869C: ; 0x0207869C
	stmdb sp!, {r4, r5, r6, r7, r8, sb}
	add sb, r1, r2
	mov ip, r2, lsr #5
	add ip, r1, ip, lsl #5
	mov r2, r0
	mov r3, r2
	mov r4, r2
	mov r5, r2
	mov r6, r2
	mov r7, r2
	mov r8, r2
_020786C8:
	cmp r1, ip
	stmltia r1!, {r0, r2, r3, r4, r5, r6, r7, r8}
	blt _020786C8
_020786D4:
	cmp r1, sb
	stmltia r1!, {r0}
	blt _020786D4
	ldmia sp!, {r4, r5, r6, r7, r8, sb}
	bx lr
	arm_func_end sub_0207869C

	arm_func_start sub_020786E8
sub_020786E8: ; 0x020786E8
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl}
	add sl, r1, r2
	mov ip, r2, lsr #5
	add ip, r1, ip, lsl #5
_020786F8:
	cmp r1, ip
	ldmltia r0!, {r2, r3, r4, r5, r6, r7, r8, sb}
	stmltia r1!, {r2, r3, r4, r5, r6, r7, r8, sb}
	blt _020786F8
_02078708:
	cmp r1, sl
	ldmltia r0!, {r2}
	stmltia r1!, {r2}
	blt _02078708
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl}
	bx lr
	arm_func_end sub_020786E8

	arm_func_start sub_02078720
sub_02078720: ; 0x02078720
	ldmia r0!, {r2, r3, ip}
	stmia r1!, {r2, r3, ip}
	ldmia r0!, {r2, r3, ip}
	stmia r1!, {r2, r3, ip}
	ldmia r0!, {r2, r3}
	stmia r1!, {r2, r3}
	bx lr
	arm_func_end sub_02078720

	arm_func_start sub_0207873C
sub_0207873C: ; 0x0207873C
	ldmia r0!, {r2, r3, ip}
	stmia r1!, {r2, r3, ip}
	ldmia r0!, {r2, r3, ip}
	stmia r1!, {r2, r3, ip}
	ldmia r0!, {r2, r3, ip}
	stmia r1!, {r2, r3, ip}
	bx lr
	arm_func_end sub_0207873C

	arm_func_start sub_02078758
sub_02078758: ; 0x02078758
	ldmia r0!, {r2, r3, ip}
	stmia r1!, {r2, r3, ip}
	ldmia r0!, {r2, r3, ip}
	stmia r1!, {r2, r3, ip}
	ldmia r0!, {r2, r3, ip}
	stmia r1!, {r2, r3, ip}
	ldmia r0!, {r2, r3, ip}
	stmia r1!, {r2, r3, ip}
	bx lr
	arm_func_end sub_02078758

	arm_func_start sub_0207877C
sub_0207877C: ; 0x0207877C
	ldmia r0!, {r2, r3, ip}
	stmia r1!, {r2, r3, ip}
	ldmia r0!, {r2, r3, ip}
	stmia r1!, {r2, r3, ip}
	ldmia r0!, {r2, r3, ip}
	stmia r1!, {r2, r3, ip}
	ldmia r0!, {r2, r3, ip}
	stmia r1!, {r2, r3, ip}
	ldmia r0, {r0, r2, r3, ip}
	stmia r1!, {r0, r2, r3, ip}
	bx lr
	arm_func_end sub_0207877C

	arm_func_start sub_020787A8
sub_020787A8: ; 0x020787A8
	cmp r2, #0
	bxeq lr
	tst r0, #1
	beq _020787D4
	ldrh ip, [r0, #-1]
	and ip, ip, #0xff
	orr r3, ip, r1, lsl #8
	strh r3, [r0, #-1]
	add r0, r0, #1
	subs r2, r2, #1
	bxeq lr
_020787D4:
	cmp r2, #2
	blo _0207881C
	orr r1, r1, r1, lsl #8
	tst r0, #2
	beq _020787F4
	strh r1, [r0], #2
	subs r2, r2, #2
	bxeq lr
_020787F4:
	orr r1, r1, r1, lsl #16
	bics r3, r2, #3
	beq _02078814
	sub r2, r2, r3
	add ip, r3, r0
_02078808:
	str r1, [r0], #4
	cmp r0, ip
	blo _02078808
_02078814:
	tst r2, #2
	strneh r1, [r0], #2
_0207881C:
	tst r2, #1
	bxeq lr
	ldrh r3, [r0]
	and r3, r3, #0xff00
	and r1, r1, #0xff
	orr r1, r1, r3
	strh r1, [r0]
	bx lr
	arm_func_end sub_020787A8

	arm_func_start sub_0207883C
sub_0207883C: ; 0x0207883C
	cmp r2, #0
	bxeq lr
	cmp r2, #8
	bgt _0207887C
	rsb r3, r2, #8
	add pc, pc, r3, lsl #2
	mov r0, r0
	strb r1, [r0], #1
	strb r1, [r0], #1
	strb r1, [r0], #1
	strb r1, [r0], #1
	strb r1, [r0], #1
	strb r1, [r0], #1
	strb r1, [r0], #1
	strb r1, [r0], #1
	bx lr
_0207887C:
	orr r1, r1, r1, lsl #8
	orr r1, r1, r1, lsl #16
	tst r0, #1
	subne r2, r2, #1
	strneb r1, [r0], #1
	tst r0, #2
	subne r2, r2, #2
	strneh r1, [r0], #2
	tst r0, #4
	subne r2, r2, #4
	strne r1, [r0], #4
	cmp r2, #0x20
	blt _020788E8
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl}
	mov r4, r1
	mov r5, r1
	mov r6, r1
	mov r7, r1
	mov r8, r1
	mov sb, r1
	mov sl, r1
	subs r2, r2, #0x20
_020788D4:
	stmgeia r0!, {r1, r4, r5, r6, r7, r8, sb, sl}
	subges r2, r2, #0x20
	bge _020788D4
	add r2, r2, #0x20
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl}
_020788E8:
	cmp r2, #4
	blt _02078904
	subs r2, r2, #4
_020788F4:
	strge r1, [r0], #4
	subs r2, r2, #4
	bge _020788F4
	add r2, r2, #4
_02078904:
	subs r2, r2, #1
	strgeb r1, [r0], #1
	subges r2, r2, #1
	strgeb r1, [r0], #1
	subges r2, r2, #1
	strgeb r1, [r0], #1
	bx lr
	arm_func_end sub_0207883C

	arm_func_start sub_02078920
sub_02078920: ; 0x02078920
	cmp r2, #0
	bxeq lr
	tst r1, #1
	beq _02078960
	ldrh ip, [r1, #-1]
	and ip, ip, #0xff
	tst r0, #1
	ldrneh r3, [r0, #-1]
	movne r3, r3, lsr #8
	ldreqh r3, [r0]
	orr r3, ip, r3, lsl #8
	strh r3, [r1, #-1]
	add r0, r0, #1
	add r1, r1, #1
	subs r2, r2, #1
	bxeq lr
_02078960:
	eor ip, r1, r0
	tst ip, #1
	beq _020789B4
	bic r0, r0, #1
	ldrh ip, [r0], #2
	mov r3, ip, lsr #8
	subs r2, r2, #2
	blo _02078998
_02078980:
	ldrh ip, [r0], #2
	orr ip, r3, ip, lsl #8
	strh ip, [r1], #2
	mov r3, ip, lsr #0x10
	subs r2, r2, #2
	bhs _02078980
_02078998:
	tst r2, #1
	bxeq lr
	ldrh ip, [r1]
	and ip, ip, #0xff00
	orr ip, ip, r3
	strh ip, [r1]
	bx lr
_020789B4:
	tst ip, #2
	beq _020789E0
	bics r3, r2, #1
	beq _02078A2C
	sub r2, r2, r3
	add ip, r3, r1
_020789CC:
	ldrh r3, [r0], #2
	strh r3, [r1], #2
	cmp r1, ip
	blo _020789CC
	b _02078A2C
_020789E0:
	cmp r2, #2
	blo _02078A2C
	tst r1, #2
	beq _02078A00
	ldrh r3, [r0], #2
	strh r3, [r1], #2
	subs r2, r2, #2
	bxeq lr
_02078A00:
	bics r3, r2, #3
	beq _02078A20
	sub r2, r2, r3
	add ip, r3, r1
_02078A10:
	ldr r3, [r0], #4
	str r3, [r1], #4
	cmp r1, ip
	blo _02078A10
_02078A20:
	tst r2, #2
	ldrneh r3, [r0], #2
	strneh r3, [r1], #2
_02078A2C:
	tst r2, #1
	bxeq lr
	ldrh r2, [r1]
	ldrh r0, [r0]
	and r2, r2, #0xff00
	and r0, r0, #0xff
	orr r0, r2, r0
	strh r0, [r1]
	bx lr
	arm_func_end sub_02078920

	arm_func_start sub_02078A50
sub_02078A50: ; 0x02078A50
	add ip, r0, r2
	cmp r0, ip
	bhs _02078A78
_02078A5C:
	ldrb r3, [r0], #1
	ldrb r2, [r1], #1
	subs r2, r3, r2
	movne r0, r2
	bxne lr
	cmp r0, ip
	blo _02078A5C
_02078A78:
	mov r0, #0
	bx lr
	arm_func_end sub_02078A50
_02078A80:
	cmp r2, #8
	bgt _02078AD8
	rsb r3, r2, #8
	add pc, pc, r3, lsl #3
	mov r0, r0
	ldrb r3, [r0], #1
	strb r3, [r1], #1
	ldrb r3, [r0], #1
	strb r3, [r1], #1
	ldrb r3, [r0], #1
	strb r3, [r1], #1
	ldrb r3, [r0], #1
	strb r3, [r1], #1
	ldrb r3, [r0], #1
	strb r3, [r1], #1
	ldrb r3, [r0], #1
	strb r3, [r1], #1
	ldrb r3, [r0], #1
	strb r3, [r1], #1
	ldrb r3, [r0], #1
	strb r3, [r1], #1
	bx lr
_02078AD8:
	tst r0, #1
	subne r2, r2, #1
	ldrneb r3, [r0], #1
	strneb r3, [r1], #1
	tst r0, #2
	subne r2, r2, #2
	ldrneb r3, [r0], #1
	strneb r3, [r1], #1
	ldrneb r3, [r0], #1
	strneb r3, [r1], #1
	and r3, r1, #3
	bic r1, r1, #3
	cmp r3, #0
	beq _02078B24
	cmp r3, #1
	beq _02078B60
	cmp r3, #2
	beq _02078BF8
	b _02078C90
_02078B24:
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	subs r2, r2, #0x20
_02078B2C:
	ldmgeia r0!, {r4, r5, r6, r7, r8, sb, sl, lr}
	stmgeia r1!, {r4, r5, r6, r7, r8, sb, sl, lr}
	subges r2, r2, #0x20
	bge _02078B2C
	add r2, r2, #0x20
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	subs r2, r2, #4
_02078B48:
	ldrge r3, [r0], #4
	strge r3, [r1], #4
	subges r2, r2, #4
	bge _02078B48
	add r2, r2, #4
	b _02078D28
_02078B60:
	ldr ip, [r1]
	mov ip, ip, lsl #0x18
	mov ip, ip, lsr #0x18
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	subs r2, r2, #0x20
_02078B74:
	ldmgeia r0!, {r4, r5, r6, r7, r8, sb, sl, lr}
	movge r3, r4, lsr #0x18
	orrge r4, ip, r4, lsl #8
	movge ip, r5, lsr #0x18
	orrge r5, r3, r5, lsl #8
	movge r3, r6, lsr #0x18
	orrge r6, ip, r6, lsl #8
	movge ip, r7, lsr #0x18
	orrge r7, r3, r7, lsl #8
	movge r3, r8, lsr #0x18
	orrge r8, ip, r8, lsl #8
	movge ip, sb, lsr #0x18
	orrge sb, r3, sb, lsl #8
	movge r3, sl, lsr #0x18
	orrge sl, ip, sl, lsl #8
	movge ip, lr, lsr #0x18
	orrge lr, r3, lr, lsl #8
	stmgeia r1!, {r4, r5, r6, r7, r8, sb, sl, lr}
	subges r2, r2, #0x20
	bge _02078B74
	add r2, r2, #0x20
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	subs r2, r2, #4
_02078BD0:
	ldrge r3, [r0], #4
	orrge ip, ip, r3, lsl #8
	strge ip, [r1], #4
	movge ip, r3, lsr #0x18
	subges r2, r2, #4
	bge _02078BD0
	add r2, r2, #4
	sub r0, r0, #1
	add r2, r2, #1
	b _02078D28
_02078BF8:
	ldr ip, [r1]
	mov ip, ip, lsl #0x10
	mov ip, ip, lsr #0x10
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	subs r2, r2, #0x20
_02078C0C:
	ldmgeia r0!, {r4, r5, r6, r7, r8, sb, sl, lr}
	movge r3, r4, lsr #0x10
	orrge r4, ip, r4, lsl #16
	movge ip, r5, lsr #0x10
	orrge r5, r3, r5, lsl #16
	movge r3, r6, lsr #0x10
	orrge r6, ip, r6, lsl #16
	movge ip, r7, lsr #0x10
	orrge r7, r3, r7, lsl #16
	movge r3, r8, lsr #0x10
	orrge r8, ip, r8, lsl #16
	movge ip, sb, lsr #0x10
	orrge sb, r3, sb, lsl #16
	movge r3, sl, lsr #0x10
	orrge sl, ip, sl, lsl #16
	movge ip, lr, lsr #0x10
	orrge lr, r3, lr, lsl #16
	stmgeia r1!, {r4, r5, r6, r7, r8, sb, sl, lr}
	subges r2, r2, #0x20
	bge _02078C0C
	add r2, r2, #0x20
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	subs r2, r2, #4
_02078C68:
	ldrge r3, [r0], #4
	orrge ip, ip, r3, lsl #16
	strge ip, [r1], #4
	movge ip, r3, lsr #0x10
	subges r2, r2, #4
	bge _02078C68
	add r2, r2, #4
	sub r0, r0, #2
	add r2, r2, #2
	b _02078D28
_02078C90:
	ldr ip, [r1]
	mov ip, ip, lsl #8
	mov ip, ip, lsr #8
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	subs r2, r2, #0x20
_02078CA4:
	ldmgeia r0!, {r4, r5, r6, r7, r8, sb, sl, lr}
	movge r3, r4, lsr #8
	orrge r4, ip, r4, lsl #24
	movge ip, r5, lsr #8
	orrge r5, r3, r5, lsl #24
	movge r3, r6, lsr #8
	orrge r6, ip, r6, lsl #24
	movge ip, r7, lsr #8
	orrge r7, r3, r7, lsl #24
	movge r3, r8, lsr #8
	orrge r8, ip, r8, lsl #24
	movge ip, sb, lsr #8
	orrge sb, r3, sb, lsl #24
	movge r3, sl, lsr #8
	orrge sl, ip, sl, lsl #24
	movge ip, lr, lsr #8
	orrge lr, r3, lr, lsl #24
	stmgeia r1!, {r4, r5, r6, r7, r8, sb, sl, lr}
	subges r2, r2, #0x20
	bge _02078CA4
	add r2, r2, #0x20
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	subs r2, r2, #4
_02078D00:
	ldrge r3, [r0], #4
	orrge ip, ip, r3, lsl #24
	strge ip, [r1], #4
	movge ip, r3, lsr #8
	subges r2, r2, #4
	bge _02078D00
	add r2, r2, #4
	sub r0, r0, #3
	add r2, r2, #3
	b _02078D28
_02078D28:
	tst r2, #4
	ldrneb r3, [r0], #1
	strneb r3, [r1], #1
	ldrneb r3, [r0], #1
	strneb r3, [r1], #1
	ldrneb r3, [r0], #1
	strneb r3, [r1], #1
	ldrneb r3, [r0], #1
	strneb r3, [r1], #1
	tst r2, #2
	ldrneb r3, [r0], #1
	strneb r3, [r1], #1
	ldrneb r3, [r0], #1
	strneb r3, [r1], #1
	tst r2, #1
	ldrneb r3, [r0], #1
	strneb r3, [r1], #1
	bx lr

	arm_func_start sub_02078D70
sub_02078D70: ; 0x02078D70
	cmp r2, #0
	subnes r3, r0, r1
	bxeq lr
	bgt _02078A80
	add r1, r1, r2
	add r0, r0, r2
	cmp r2, #8
	bgt _02078DE0
	rsb r3, r2, #8
	add pc, pc, r3, lsl #3
	mov r0, r0
	ldrb r3, [r0, #-1]!
	strb r3, [r1, #-1]!
	ldrb r3, [r0, #-1]!
	strb r3, [r1, #-1]!
	ldrb r3, [r0, #-1]!
	strb r3, [r1, #-1]!
	ldrb r3, [r0, #-1]!
	strb r3, [r1, #-1]!
	ldrb r3, [r0, #-1]!
	strb r3, [r1, #-1]!
	ldrb r3, [r0, #-1]!
	strb r3, [r1, #-1]!
	ldrb r3, [r0, #-1]!
	strb r3, [r1, #-1]!
	ldrb r3, [r0, #-1]!
	strb r3, [r1, #-1]!
	bx lr
_02078DE0:
	tst r0, #2
	subne r2, r2, #2
	ldrneb r3, [r0, #-1]!
	strneb r3, [r1, #-1]!
	ldrneb r3, [r0, #-1]!
	strneb r3, [r1, #-1]!
	tst r0, #1
	subne r2, r2, #1
	ldrneb r3, [r0, #-1]!
	strneb r3, [r1, #-1]!
	and r3, r1, #3
	bic r1, r1, #3
	cmp r3, #0
	beq _02078E2C
	cmp r3, #1
	beq _02078E68
	cmp r3, #2
	beq _02078F04
	b _02078FA0
_02078E2C:
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	subs r2, r2, #0x20
_02078E34:
	ldmgedb r0!, {r4, r5, r6, r7, r8, sb, sl, lr}
	stmgedb r1!, {r4, r5, r6, r7, r8, sb, sl, lr}
	subges r2, r2, #0x20
	bge _02078E34
	add r2, r2, #0x20
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	subs r2, r2, #4
_02078E50:
	ldrge r3, [r0, #-4]!
	strge r3, [r1, #-4]!
	subges r2, r2, #4
	bge _02078E50
	add r2, r2, #4
	b _0207903C
_02078E68:
	ldr ip, [r1]
	mov ip, ip, lsr #8
	mov ip, ip, lsl #8
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	subs r2, r2, #0x20
_02078E7C:
	ldmgedb r0!, {r4, r5, r6, r7, r8, sb, sl, lr}
	movge r3, lr, lsl #8
	orrge lr, ip, lr, lsr #24
	movge ip, sl, lsl #8
	orrge sl, r3, sl, lsr #24
	movge r3, sb, lsl #8
	orrge sb, ip, sb, lsr #24
	movge ip, r8, lsl #8
	orrge r8, r3, r8, lsr #24
	movge r3, r7, lsl #8
	orrge r7, ip, r7, lsr #24
	movge ip, r6, lsl #8
	orrge r6, r3, r6, lsr #24
	movge r3, r5, lsl #8
	orrge r5, ip, r5, lsr #24
	movge ip, r4, lsl #8
	orrge r4, r3, r4, lsr #24
	stmgeda r1!, {r4, r5, r6, r7, r8, sb, sl, lr}
	subges r2, r2, #0x20
	bge _02078E7C
	add r2, r2, #0x20
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	subs r2, r2, #4
_02078ED8:
	ldrge r3, [r0, #-4]!
	orrge ip, ip, r3, lsr #24
	strge ip, [r1], #-4
	movge ip, r3, lsl #8
	subges r2, r2, #4
	bge _02078ED8
	add r2, r2, #4
	add r1, r1, #4
	add r0, r0, #3
	add r2, r2, #3
	b _0207903C
_02078F04:
	ldr ip, [r1]
	mov ip, ip, lsr #0x10
	mov ip, ip, lsl #0x10
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	subs r2, r2, #0x20
_02078F18:
	ldmgedb r0!, {r4, r5, r6, r7, r8, sb, sl, lr}
	movge r3, lr, lsl #0x10
	orrge lr, ip, lr, lsr #16
	movge ip, sl, lsl #0x10
	orrge sl, r3, sl, lsr #16
	movge r3, sb, lsl #0x10
	orrge sb, ip, sb, lsr #16
	movge ip, r8, lsl #0x10
	orrge r8, r3, r8, lsr #16
	movge r3, r7, lsl #0x10
	orrge r7, ip, r7, lsr #16
	movge ip, r6, lsl #0x10
	orrge r6, r3, r6, lsr #16
	movge r3, r5, lsl #0x10
	orrge r5, ip, r5, lsr #16
	movge ip, r4, lsl #0x10
	orrge r4, r3, r4, lsr #16
	stmgeda r1!, {r4, r5, r6, r7, r8, sb, sl, lr}
	subges r2, r2, #0x20
	bge _02078F18
	add r2, r2, #0x20
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	subs r2, r2, #4
_02078F74:
	ldrge r3, [r0, #-4]!
	orrge ip, ip, r3, lsr #16
	strge ip, [r1], #-4
	movge ip, r3, lsl #0x10
	subges r2, r2, #4
	bge _02078F74
	add r2, r2, #4
	add r1, r1, #4
	add r0, r0, #2
	add r2, r2, #2
	b _0207903C
_02078FA0:
	ldr ip, [r1]
	mov ip, ip, lsr #0x18
	mov ip, ip, lsl #0x18
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	subs r2, r2, #0x20
_02078FB4:
	ldmgedb r0!, {r4, r5, r6, r7, r8, sb, sl, lr}
	movge r3, lr, lsl #0x18
	orrge lr, ip, lr, lsr #8
	movge ip, sl, lsl #0x18
	orrge sl, r3, sl, lsr #8
	movge r3, sb, lsl #0x18
	orrge sb, ip, sb, lsr #8
	movge ip, r8, lsl #0x18
	orrge r8, r3, r8, lsr #8
	movge r3, r7, lsl #0x18
	orrge r7, ip, r7, lsr #8
	movge ip, r6, lsl #0x18
	orrge r6, r3, r6, lsr #8
	movge r3, r5, lsl #0x18
	orrge r5, ip, r5, lsr #8
	movge ip, r4, lsl #0x18
	orrge r4, r3, r4, lsr #8
	stmgeda r1!, {r4, r5, r6, r7, r8, sb, sl, lr}
	subges r2, r2, #0x20
	bge _02078FB4
	add r2, r2, #0x20
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	subs r2, r2, #4
_02079010:
	ldrge r3, [r0, #-4]!
	orrge ip, ip, r3, lsr #8
	strge ip, [r1], #-4
	movge ip, r3, lsl #0x18
	subges r2, r2, #4
	bge _02079010
	add r2, r2, #4
	add r1, r1, #4
	add r0, r0, #1
	add r2, r2, #1
	b _0207903C
_0207903C:
	tst r2, #4
	ldrneb r3, [r0, #-1]!
	strneb r3, [r1, #-1]!
	ldrneb r3, [r0, #-1]!
	strneb r3, [r1, #-1]!
	ldrneb r3, [r0, #-1]!
	strneb r3, [r1, #-1]!
	ldrneb r3, [r0, #-1]!
	strneb r3, [r1, #-1]!
	tst r2, #2
	ldrneb r3, [r0, #-1]!
	strneb r3, [r1, #-1]!
	ldrneb r3, [r0, #-1]!
	strneb r3, [r1, #-1]!
	tst r2, #1
	ldrneb r3, [r0, #-1]!
	strneb r3, [r1, #-1]!
	bx lr
	arm_func_end sub_02078D70

