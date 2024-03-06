	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
    
	thumb_func_start RTC_ConvertDateToDay
RTC_ConvertDateToDay: ; 0x0207D0B4
	push {r3, r4}
	ldr r2, [r0]
	cmp r2, #0x64
	bhs _0207D0DE
	ldr r1, [r0, #4]
	cmp r1, #1
	blo _0207D0DE
	cmp r1, #0xc
	bhi _0207D0DE
	ldr r3, [r0, #8]
	cmp r3, #1
	blo _0207D0DE
	cmp r3, #0x1f
	bhi _0207D0DE
	ldr r0, [r0, #0xc]
	cmp r0, #7
	bge _0207D0DE
	cmp r1, #1
	blo _0207D0DE
	cmp r1, #0xc
	bls _0207D0E6
_0207D0DE:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4}
	bx lr
_0207D0E6:
	ldr r0, _0207D10C ; =0x0209B758
	sub r4, r3, #1
	lsl r3, r1, #2
	ldr r0, [r0, r3]
	add r3, r4, r0
	cmp r1, #3
	blo _0207D0FC
	mov r0, #3
	tst r0, r2
	bne _0207D0FC
	add r3, r3, #1
_0207D0FC:
	ldr r0, _0207D110 ; =0x0000016D
	mul r0, r2
	add r1, r3, r0
	add r0, r2, #3
	lsr r0, r0, #2
	add r0, r1, r0
	pop {r3, r4}
	bx lr
	.align 2, 0
_0207D10C: .word 0x0209B758
_0207D110: .word 0x0000016D
	thumb_func_end RTC_ConvertDateToDay

	thumb_func_start RTCi_ConvertTimeToSecond
RTCi_ConvertTimeToSecond: ; 0x0207D114
	push {r3, r4}
	ldr r1, [r0]
	ldr r4, [r0, #8]
	ldr r3, [r0, #4]
	mov r0, #0x3c
	add r2, r1, #0
	mul r2, r0
	add r1, r3, r2
	mul r0, r1
	add r0, r4, r0
	pop {r3, r4}
	bx lr
	thumb_func_end RTCi_ConvertTimeToSecond

	thumb_func_start RTC_ConvertDateTimeToSecond
RTC_ConvertDateTimeToSecond: ; 0x0207D12C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	bl RTC_ConvertDateToDay
	mov r5, #0
	add r6, r0, #0
	mvn r5, r5
	cmp r6, r5
	bne _0207D144
	add r0, r5, #0
	add r1, r5, #0
	pop {r4, r5, r6, pc}
_0207D144:
	add r0, r4, #0
	bl RTCi_ConvertTimeToSecond
	add r4, r0, #0
	cmp r4, r5
	bne _0207D154
	add r2, r5, #0
	b _0207D166
_0207D154:
	ldr r2, _0207D16C ; =0x00015180
	asr r1, r6, #0x1f
	add r0, r6, #0
	mov r3, #0
	blx sub_0208D60C
	asr r2, r4, #0x1f
	add r5, r4, r0
	adc r2, r1
_0207D166:
	add r0, r5, #0
	add r1, r2, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_0207D16C: .word 0x00015180
	thumb_func_end RTC_ConvertDateTimeToSecond

	thumb_func_start RTC_ConvertDayToDate
RTC_ConvertDayToDate: ; 0x0207D170
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bpl _0207D17A
	mov r4, #0
_0207D17A:
	ldr r0, _0207D1F8 ; =0x00008EAC
	cmp r4, r0
	ble _0207D182
	add r4, r0, #0
_0207D182:
	add r0, r4, #6
	mov r1, #7
	blx sub_0208D65C
	str r1, [r5, #0xc]
	ldr r1, _0207D1FC ; =0x0000016D
	mov r3, #0
	mov r0, #3
_0207D192:
	add r2, r3, #0
	add r6, r4, #0
	tst r2, r0
	bne _0207D19E
	add r2, r1, #1
	b _0207D1A0
_0207D19E:
	add r2, r1, #0
_0207D1A0:
	sub r4, r4, r2
	bpl _0207D1A8
	add r4, r6, #0
	b _0207D1AE
_0207D1A8:
	add r3, r3, #1
	cmp r3, #0x63
	blo _0207D192
_0207D1AE:
	ldr r0, _0207D1FC ; =0x0000016D
	cmp r4, r0
	ble _0207D1B6
	add r4, r0, #0
_0207D1B6:
	mov r0, #3
	str r3, [r5]
	tst r0, r3
	bne _0207D1D8
	cmp r4, #0x3c
	bge _0207D1D6
	cmp r4, #0x1f
	bge _0207D1CA
	mov r0, #1
	b _0207D1CE
_0207D1CA:
	mov r0, #2
	sub r4, #0x1f
_0207D1CE:
	str r0, [r5, #4]
	add r0, r4, #1
	str r0, [r5, #8]
	pop {r4, r5, r6, pc}
_0207D1D6:
	sub r4, r4, #1
_0207D1D8:
	ldr r1, _0207D200 ; =0x0209B75C
	mov r3, #0xb
_0207D1DC:
	lsl r2, r3, #2
	ldr r0, [r1, r2]
	cmp r4, r0
	blt _0207D1F2
	add r0, r3, #1
	str r0, [r5, #4]
	ldr r0, [r1, r2]
	sub r0, r4, r0
	add r0, r0, #1
	str r0, [r5, #8]
	pop {r4, r5, r6, pc}
_0207D1F2:
	sub r3, r3, #1
	bpl _0207D1DC
	pop {r4, r5, r6, pc}
	.align 2, 0
_0207D1F8: .word 0x00008EAC
_0207D1FC: .word 0x0000016D
_0207D200: .word 0x0209B75C
	thumb_func_end RTC_ConvertDayToDate

	thumb_func_start RTCi_ConvertSecondToTime
RTCi_ConvertSecondToTime: ; 0x0207D204
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bpl _0207D20E
	mov r4, #0
_0207D20E:
	ldr r0, _0207D240 ; =0x0001517F
	cmp r4, r0
	ble _0207D216
	add r4, r0, #0
_0207D216:
	add r0, r4, #0
	mov r1, #0x3c
	blx sub_0208D65C
	str r1, [r5, #8]
	add r0, r4, #0
	mov r1, #0x3c
	blx sub_0208D65C
	add r4, r0, #0
	mov r1, #0x3c
	blx sub_0208D65C
	str r1, [r5, #4]
	add r0, r4, #0
	mov r1, #0x3c
	blx sub_0208D65C
	str r0, [r5]
	pop {r3, r4, r5, pc}
	nop
_0207D240: .word 0x0001517F
	thumb_func_end RTCi_ConvertSecondToTime

	thumb_func_start RTC_ConvertSecondToDateTime
RTC_ConvertSecondToDateTime: ; 0x0207D244
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r6, r0, #0
	add r4, r2, #0
	mov r1, #0
	add r5, r3, #0
	mov r0, #0
	sub r1, r4, r1
	mov ip, r5
	mov r1, ip
	sbc r1, r0
	bge _0207D260
	mov r4, #0
	b _0207D26C
_0207D260:
	mov r1, #0
	ldr r0, _0207D298 ; =0xBC19137F
	sub r0, r0, r4
	sbc r1, r5
	bge _0207D26E
	ldr r4, _0207D298 ; =0xBC19137F
_0207D26C:
	mov r5, #0
_0207D26E:
	ldr r2, _0207D29C ; =0x00015180
	add r0, r4, #0
	add r1, r5, #0
	mov r3, #0
	blx sub_0208D404
	add r1, r0, #0
	add r0, r7, #0
	bl RTCi_ConvertSecondToTime
	ldr r2, _0207D29C ; =0x00015180
	add r0, r4, #0
	add r1, r5, #0
	mov r3, #0
	blx sub_0208D414
	add r1, r0, #0
	add r0, r6, #0
	bl RTC_ConvertDayToDate
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0207D298: .word 0xBC19137F
_0207D29C: .word 0x00015180
	thumb_func_end RTC_ConvertSecondToDateTime

	thumb_func_start RTC_GetDayOfWeek
RTC_GetDayOfWeek: ; 0x0207D2A0
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x7d
	ldr r2, [r0]
	lsl r1, r1, #4
	add r5, r2, r1
	ldr r1, [r0, #4]
	ldr r7, [r0, #8]
	sub r4, r1, #2
	cmp r4, #1
	bge _0207D2B8
	add r4, #0xc
	sub r5, r5, #1
_0207D2B8:
	add r0, r5, #0
	mov r1, #0x64
	blx sub_0208D65C
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0x64
	blx sub_0208D65C
	mov r0, #0x1a
	mul r0, r4
	add r5, r1, #0
	sub r0, r0, #2
	mov r1, #0xa
	blx sub_0208D65C
	asr r1, r6, #1
	lsr r1, r1, #0x1e
	add r1, r6, r1
	asr r2, r1, #2
	asr r1, r5, #1
	lsr r1, r1, #0x1e
	add r1, r5, r1
	add r0, r7, r0
	asr r1, r1, #2
	add r0, r5, r0
	add r0, r1, r0
	add r1, r2, r0
	lsl r0, r6, #2
	add r0, r6, r0
	add r0, r1, r0
	mov r1, #7
	blx sub_0208D65C
	add r0, r1, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end RTC_GetDayOfWeek