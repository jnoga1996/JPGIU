	.file	"main.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.section	.rodata
.LC1:
	.string	"%d "
.LC0:
	.word	100
	.word	5
	.word	8
	.word	3
	.word	9
	.word	11
	.word	8
	.word	1
	.word	2
	.word	24
	.text
.global	main
	.type	main, @function
main:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,28
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 28 */
/* stack size = 30 */
.L__stack_usage = 30
	ldi r24,lo8(10)
	ldi r25,0
	std Y+6,r25
	std Y+5,r24
	ldi r24,lo8(20)
	ldi r30,lo8(.LC0)
	ldi r31,hi8(.LC0)
	mov r26,r28
	mov r27,r29
	adiw r26,9
	0:
	ld r0,Z+
	st X+,r0
	dec r24
	brne 0b
	std Y+2,__zero_reg__
	std Y+1,__zero_reg__
	rjmp .L2
.L6:
	std Y+4,__zero_reg__
	std Y+3,__zero_reg__
	rjmp .L3
.L5:
	ldd r24,Y+3
	ldd r25,Y+4
	lsl r24
	rol r25
	mov r18,r28
	mov r19,r29
	subi r18,-1
	sbci r19,-1
	add r24,r18
	adc r25,r19
	adiw r24,8
	mov r30,r24
	mov r31,r25
	ld r18,Z
	ldd r19,Z+1
	ldd r24,Y+3
	ldd r25,Y+4
	adiw r24,1
	lsl r24
	rol r25
	mov r20,r28
	mov r21,r29
	subi r20,-1
	sbci r21,-1
	add r24,r20
	adc r25,r21
	adiw r24,8
	mov r30,r24
	mov r31,r25
	ld r24,Z
	ldd r25,Z+1
	cp r24,r18
	cpc r25,r19
	brlt .+2
	rjmp .L4
	ldd r24,Y+3
	ldd r25,Y+4
	lsl r24
	rol r25
	mov r18,r28
	mov r19,r29
	subi r18,-1
	sbci r19,-1
	add r24,r18
	adc r25,r19
	adiw r24,8
	mov r30,r24
	mov r31,r25
	ld r24,Z
	ldd r25,Z+1
	std Y+8,r25
	std Y+7,r24
	ldd r24,Y+3
	ldd r25,Y+4
	adiw r24,1
	lsl r24
	rol r25
	mov r18,r28
	mov r19,r29
	subi r18,-1
	sbci r19,-1
	add r24,r18
	adc r25,r19
	adiw r24,8
	mov r30,r24
	mov r31,r25
	ld r18,Z
	ldd r19,Z+1
	ldd r24,Y+3
	ldd r25,Y+4
	lsl r24
	rol r25
	mov r20,r28
	mov r21,r29
	subi r20,-1
	sbci r21,-1
	add r24,r20
	adc r25,r21
	adiw r24,8
	mov r30,r24
	mov r31,r25
	std Z+1,r19
	st Z,r18
	ldd r24,Y+3
	ldd r25,Y+4
	adiw r24,1
	lsl r24
	rol r25
	mov r18,r28
	mov r19,r29
	subi r18,-1
	sbci r19,-1
	add r24,r18
	adc r25,r19
	adiw r24,8
	ldd r18,Y+7
	ldd r19,Y+8
	mov r30,r24
	mov r31,r25
	std Z+1,r19
	st Z,r18
.L4:
	ldd r24,Y+3
	ldd r25,Y+4
	adiw r24,1
	std Y+4,r25
	std Y+3,r24
.L3:
	ldd r18,Y+5
	ldd r19,Y+6
	ldd r24,Y+1
	ldd r25,Y+2
	mov r20,r18
	mov r21,r19
	sub r20,r24
	sbc r21,r25
	mov r24,r20
	mov r25,r21
	mov r18,r24
	mov r19,r25
	subi r18,1
	sbc r19,__zero_reg__
	ldd r24,Y+3
	ldd r25,Y+4
	cp r24,r18
	cpc r25,r19
	brge .+2
	rjmp .L5
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	std Y+2,r25
	std Y+1,r24
.L2:
	ldd r24,Y+5
	ldd r25,Y+6
	mov r18,r24
	mov r19,r25
	subi r18,1
	sbc r19,__zero_reg__
	ldd r24,Y+1
	ldd r25,Y+2
	cp r24,r18
	cpc r25,r19
	brge .+2
	rjmp .L6
	std Y+2,__zero_reg__
	std Y+1,__zero_reg__
	rjmp .L7
.L8:
	ldd r24,Y+1
	ldd r25,Y+2
	lsl r24
	rol r25
	mov r18,r28
	mov r19,r29
	subi r18,-1
	sbci r19,-1
	add r24,r18
	adc r25,r19
	adiw r24,8
	mov r30,r24
	mov r31,r25
	ld r24,Z
	ldd r25,Z+1
	mov r18,r25
	push r18
	push r24
	ldi r24,lo8(.LC1)
	ldi r25,hi8(.LC1)
	mov r24,r25
	push r24
	ldi r24,lo8(.LC1)
	ldi r25,hi8(.LC1)
	push r24
	rcall printf
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	std Y+2,r25
	std Y+1,r24
.L7:
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r24,Y+5
	ldd r25,Y+6
	cp r18,r24
	cpc r19,r25
	brlt .L8
	nop
/* epilogue start */
	adiw r28,28
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	main, .-main
	.ident	"GCC: (GNU) 5.4.0"
.global __do_copy_data
