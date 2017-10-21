label12	CODE	1h
label19	CODE	238h
label21	CODE	2h
label29	CODE	80Eh
label38	CODE	456h
label46	CODE	546h
label48	CODE	567h
label56	CODE	66Eh

	ORG	0h
label9:	ljmp	label0
	nop
label16:
	nop
	nop
label17:
	nop
	nop
label20:
	nop
label54:
	nop
label33:
	nop
	inc	28h
	reti
label11:
	nop
label40:
	nop
label25:
	nop
label13:
	nop
label39:
	nop
label43:
	nop
	nop
label49:
	nop
label62:
	nop
	nop
	nop
label47:
	nop
	nop
label24:
	nop
	nop
	nop
	nop
label14:
	nop
	nop
	nop
	nop
	push	PSW
	orl	PSW, #18h
	mov	R7, A
	jbc	TI, label1
	mov	R3, DPL
	mov	R4, DPH
	jbc	RI, label2
label6:	mov	DPL, R3
	mov	DPH, R4
label3:	mov	A, R7
	pop	PSW
	reti
label1:	mov	A, @R0
	jz	label3
	mov	SBUF, A
	sjmp	label3
label2:	mov	A, SBUF
	jb	0h, label4
	jb	3h, label5
	cjne	A, #2h, label6
	setb	3h
	sjmp	label6
label5:	anl	20h, #0F7h
	add	A, #80h
	jnc	label6
	setb	0h
	rl	A
	mov	R5, A
	mov	R1, 2Eh
	mov	R2, 2Fh
	sjmp	label6
label4:	mov	DPH, R2
	mov	DPL, R1
	movx	@DPTR, A
	lcall	label7
	mov	R2, DPH
	mov	R1, DPL
	inc	A
	jnz	label6
	mov	20h, #2h
	mov	DPL, R5
	mov	DPH, #0h
	mov	A, 2Eh
	movx	@DPTR, A
	inc	DPTR
	mov	A, 2Fh
	movx	@DPTR, A
	mov	2Eh, R1
	mov	2Fh, R2
	sjmp	label6
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
label32:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc	A
	inc	0h
	inc	A
	rr	A
	ljmp	label8
	ljmp	label9
	nop
	nop
	nop
	nop
	inc	R6
	inc	A
	inc	R6
	dec	R7
	inc	R0
	dec	R7
	inc	R4
	dec	R7
	inc	R6
	inc	R6
	nop
	nop
	inc	R0
	nop
	ljmp	label10
	inc	A
	inc	R7
	inc	R6
	inc	R7
	dec	R7
	dec	R7
	inc	R6
	acall	label11
	inc	R6
	acall	label12
	acall	label13
	inc	R6
	inc	R7
	inc	R6
	inc	R7
	inc	R6
	dec	R7
	acall	label13
	acall	label13
	acall	label14
	inc	R6
	nop
	inc	R6
	inc	A
	nop
	ljmp	label12
	nop
	jbc	0h, label15
	nop
	ajmp	label16
	inc	R0
	ajmp	label17
	nop
	nop
	nop
	nop
	nop
	nop
label15:
	nop
	ljmp	label9
	nop
	nop
	nop
	nop
	jbc	4h, label18
	dec	R7
label18:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
label50:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc	A
	inc	0Ah
	dec	R6
	rrc	A
	inc	4h
	inc	A
	inc	A
	dec	4h
	nop
	nop
	nop
	jbc	11h, label19
	acall	label20
	inc	R4
	ajmp	label21
	jbc	11h, label22
	inc	@R0
	inc	@R0
	inc	A
	nop
	inc	A
	acall	label13
	inc	R2
	lcall	label23
	ajmp	label12
	acall	label13
	inc	A
	inc	A
label22:
	inc	R1
	ajmp	label24
	acall	label13
	acall	label13
	acall	label13
	inc	A
	acall	label13
	acall	label13
	acall	label25
	ljmp	label26
	inc	R6
	inc	R6
	inc	A
	nop
	ajmp	label9
	jbc	0h, label27
	dec	R6
	ajmp	label9
	nop
	ajmp	label16
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ljmp	label9
	nop
	nop
label27:
	nop
	nop
	inc	R0
	inc	A
	ljmp	label28
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
label34:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc	A
	inc	1Fh
	inc	8h
	inc	2h
	ljmp	label29
	inc	A
	nop
	nop
	nop
	inc	R0
	dec	R1
	inc	A
	jbc	4h, label30
	inc	R7
	ajmp	label20
	acall	label13
	inc	@R0
	inc	@R0
	ljmp	label31
label30:
	inc	R0
	dec	11h
	lcall	label32
	ajmp	label12
	ajmp	label13
	inc	A
	inc	A
	inc	1h
	dec	13h
	acall	label13
	acall	label13
	ajmp	label16
	acall	label13
	acall	label33
	inc	R2
	inc	R0
	ljmp	label34
	dec	11h
	inc	R0
	inc	R6
	inc	R5
	inc	R6
	dec	@R0
	inc	R6
	ljmp	label35
	inc	@R0
	inc	R4
	inc	R1
	inc	A
	inc	R3
	inc	R5
	inc	R6
	inc	R7
	dec	@R0
	inc	R5
	inc	R6
	inc	@R1
	acall	label13
	acall	label13
	acall	label14
	inc	R0
	inc	A
	ljmp	label36
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
label60:
	nop
	nop
	nop
	inc	A
	nop
	inc	R2
	inc	R6
	inc	A
	ljmp	label21
	inc	R0
	inc	A
	dec	R7
	nop
	dec	R7
	nop
	inc	A
	dec	4h
	inc	R0
	inc	R0
	inc	R1
	jbc	0Fh, label37
	inc	R6
	dec	R6
	nop
	nop
label37:
	ajmp	label9
	jbc	4h, label38
	acall	label11
	ajmp	label39
	inc	R7
	inc	R7
	ajmp	label14
	inc	A
	inc	A
	rr	A
	ajmp	label13
	dec	11h
	inc	R7
	acall	label40
	inc	R6
	inc	A
	acall	label13
	dec	4h
	inc	A
	inc	A
	ljmp	label41
	inc	A
	dec	R7
	nop
	jbc	13h, label42
	dec	R1
label42:
	acall	label40
	acall	label43
	inc	A
	inc	R0
	inc	4h
	dec	13h
	acall	label13
	dec	R1
	rrc	A
	ajmp	label21
	acall	label13
	acall	label33
	acall	label20
	inc	A
	inc	A
	inc	A
	dec	R7
	inc	0h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
label41:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	dec	R7
	dec	A
	ljmp	label44
	ljmp	label29
	inc	A
	inc	@R0
	nop
	nop
	ljmp	label45
	inc	A
	jbc	1Fh, label46
	acall	label16
	acall	label25
	inc	@R0
	inc	@R0
	ljmp	label31
	inc	A
	inc	R5
	dec	R7
	lcall	label32
	ajmp	label12
	dec	R1
	acall	label16
	inc	A
	inc	1h
	acall	label47
	acall	label12
	dec	5h
	jbc	4h, label48
	acall	label49
	inc	R2
	inc	A
	ljmp	label50
	inc	R0
	inc	A
	acall	label9
	dec	R6
	acall	label12
	acall	label14
	ljmp	label51
	inc	A
	inc	R0
	rr	A
	inc	A
	dec	11h
	acall	label40
	dec	R6
	ajmp	label11
	ljmp	label52
	dec	4h
	dec	R6
	inc	A
	inc	R0
	dec	2h
	dec	R7
	rr	A
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
label8:	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc	A
	nop
	inc	R2
	inc	R7
	dec	R1
	inc	R1
	nop
	inc	A
	inc	A
	dec	4h
	inc	@R0
	nop
	inc	@R0
	ajmp	label13
	inc	A
	ljmp	label53
	acall	label13
	inc	A
	acall	label20
	inc	@R0
	inc	@R0
	inc	A
	nop
	inc	A
	nop
	ajmp	label13
	lcall	label23
	ajmp	label12
	acall	label13
	inc	A
	inc	9h
	ajmp	label13
	acall	label13
	ajmp	label54
	inc	R1
	acall	label16
	acall	label33
	dec	11h
	inc	A
	ajmp	label21
	jbc	8h, label55
	inc	R6
	nop
	acall	label13
label55:
	acall	label13
	ajmp	label21
	jbc	11h, label56
	inc	R1
	inc	4h
	dec	11h
	acall	label12
	jbc	1h, label57
	lcall	label58
	dec	0Ah
	jbc	2h, label57
	inc	R6
	ljmp	label59
	nop
	nop
	nop
	nop
label57:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
label26:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc	A
	nop
	nop
	inc	A
	dec	R0
	dec	@R0
	nop
	inc	R0
	ljmp	label9
	ajmp	label9
	inc	@R0
	nop
	inc	R6
	inc	R6
	dec	R7
	inc	R6
	inc	R0
	inc	R6
	inc	R6
	inc	A
	inc	R6
	inc	@R0
	nop
	ajmp	label20
	nop
	ljmp	label60
	acall	label40
	inc	R6
	inc	R7
	dec	R7
	ajmp	label11
	acall	label11
	ljmp	label61
	acall	label13
	inc	R6
	ajmp	label62
	acall	label11
	inc	A
	inc	R6
	inc	A
	inc	R2
	acall	label16
	dec	R7
	inc	R6
	nop
	inc	R6
	inc	A
	nop
	nop
	dec	R6
	inc	R7
	inc	R6
	dec	R6
	inc	R6
	ljmp	label63
	inc	R6
	inc	@R0
	inc	R1
	inc	R6
	dec	11h
	inc	R6
	ajmp	label25
	ajmp	label40
	inc	R4
	dec	@R0
	inc	A
	inc	R2
	acall	label11
	dec	R7
	jbc	4h, label64
	dec	R7
label64:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
label0:	mov	19h, #0h
	mov	1Ah, #10h
	mov	TMOD, #22h
	mov	TH0, #0h
	mov	TH1, #0FDh
	mov	TCON, #50h
	mov	SCON, #70h
	mov	IE, #92h
	setb	PS
	mov	20h, #0h
	mov	21h, #8h
	mov	29h, #0h
	mov	2Bh, #80h
	mov	P1, #0h
	mov	P2, #0h
	acall	label65
	mov	P1, #0h
	mov	2Eh, #80h
	mov	2Fh, #10h
label68:
	mov	P2, #0h
	mov	R0, #0h
	movx	A, @R0
	mov	22h, A
	inc	R0
	movx	A, @R0
	mov	23h, A
label70:
	jnb	1h, label66
	acall	label67
	sjmp	label68
label66:
	clr	A
	lcall	label69
	mov	DPL, 22h
	mov	DPH, 23h
	movx	A, @DPTR
	inc	A
	jz	label68
	acall	label7
	mov	22h, DPL
	mov	23h, DPH
	dec	A
	rl	A
	mov	P2, #0h
	mov	R0, A
	movx	A, @R0
	mov	24h, A
	inc	R0
	movx	A, @R0
	mov	25h, A
label75:
	jb	1h, label70
	mov	DPL, 24h
	mov	DPH, 25h
	movx	A, @DPTR
	jnb	0E7h, label71
	inc	A
	jz	label70
	acall	label7
	mov	24h, DPL
	mov	25h, DPH
	cjne	A, #0AFh, label72
	sjmp	label73
label72:
	mov	29h, #0h
label73:
	acall	label74
	sjmp	label75
label7:	inc	DPTR
	anl	DPH, #0DFh
	orl	DPH, #10h
	ret
label71:
	mov	A, 21h
	mov	DPTR, #89Fh
	jmp	@A+DPTR
	ajmp	label76
	ajmp	label77
	ajmp	label78
	ajmp	label79
	ajmp	label80
	ajmp	label81
	ajmp	label82
	ajmp	label83
	ajmp	label84
label76:
	acall	label85
	acall	label86
	mov	24h, DPL
	mov	25h, DPH
label94:
	lcall	label87
	acall	label88
	jb	0E7h, label89
	mov	P2, #7h
label90:
	movx	A, @R1
	rl	A
	rl	A
	movx	@R1, A
	djnz	P2, label90
	mov	R3, #6h
label93:
	mov	R2, #7h
label92:
	acall	label91
	djnz	R2, label92
	djnz	R3, label93
	sjmp	label94
label89:
	mov	R3, #0A0h
label96:
	mov	R2, #7h
label95:
	acall	label91
	djnz	R2, label95
	djnz	R3, label96
	sjmp	label75
label77:
	acall	label85
	mov	26h, 24h
	mov	27h, 25h
label102:
	acall	label88
	jb	0E7h, label97
	lcall	label98
	mov	R3, #6h
label101:
	mov	R2, #7h
	mov	DPH, #1h
label100:
	acall	label99
	djnz	R2, label100
	djnz	R3, label101
	sjmp	label102
label97:
	mov	R3, #0A0h
label104:
	mov	R2, #7h
	mov	DPH, #1h
label103:
	acall	label99
	djnz	R2, label103
	djnz	R3, label104
label113:
	mov	24h, 26h
	mov	25h, 27h
	ljmp	label75
label78:
	mov	R3, #0h
label112:
	mov	P2, #7h
	mov	DPH, #6h
label106:
	mov	R0, #13h
	mov	DPL, R0
label105:
	movx	A, @DPTR
	movx	@R0, A
	dec	DPL
	djnz	R0, label105
	movx	A, @DPTR
	movx	@R0, A
	dec	P2
	djnz	DPH, label106
	mov	A, R3
	jnz	label107
	mov	R0, #13h
label108:
	movx	@R0, A
	djnz	R0, label108
	movx	@R0, A
	sjmp	label109
label107:
	acall	label110
label109:
	acall	label111
	inc	R3
	cjne	R3, #8h, label112
	sjmp	label113
label79:
	mov	R3, #8h
label119:
	mov	P2, #1h
	mov	DPH, #2h
	mov	R2, #6h
label115:
	mov	R0, #13h
	mov	DPL, R0
label114:
	movx	A, @DPTR
	movx	@R0, A
	dec	DPL
	djnz	R0, label114
	movx	A, @DPTR
	movx	@R0, A
	inc	P2
	inc	DPH
	djnz	R2, label115
	cjne	R3, #8h, label116
	mov	R0, #13h
	clr	A
label117:
	movx	@R0, A
	djnz	R0, label117
	movx	@R0, A
	sjmp	label118
label116:
	acall	label110
label118:
	acall	label111
	djnz	R3, label119
	sjmp	label113
label80:
	mov	26h, 24h
	mov	27h, 25h
	mov	R3, #14h
	mov	B, #1h
	mov	2Dh, #1h
label124:
	acall	label120
	inc	B
	jb	0E7h, label121
	mov	A, B
	xrl	A, #7h
	jnz	label122
	mov	B, #1h
	lcall	label98
label122:
	dec	R3
	acall	label123
	inc	R3
	acall	label111
	mov	A, 2Dh
	inc	2Dh
	jnb	0E3h, label124
	mov	2Dh, #1h
	djnz	R3, label124
	acall	label86
	ljmp	label113
label121:
	mov	A, B
	xrl	A, #7h
	jnz	label122
	mov	B, #1h
	sjmp	label122
label81:
	acall	label86
	mov	24h, DPL
	mov	25h, DPH
	mov	R3, #0h
	mov	B, #6h
	mov	2Dh, #8h
	lcall	label87
label126:
	acall	label120
	djnz	B, label125
	mov	B, #6h
	jb	0E7h, label125
	lcall	label87
label125:
	acall	label123
	acall	label111
	djnz	2Dh, label126
	mov	2Dh, #8h
	inc	R3
	cjne	R3, #14h, label126
	ljmp	label75
label120:
	mov	DPL, 26h
	mov	DPH, 27h
	movx	A, @DPTR
	mov	R7, #0h
	jb	0E7h, label127
	mov	DPH, #7h
	mov	DPL, A
label130:
	clr	A
	movc	A, @A+DPTR
	jnb	4Ah, label128
	cpl	A
label128:
	anl	A, #3Fh
	mov	R4, B
label129:
	rrc	A
	djnz	R4, label129
	mov	A, R7
	rrc	A
	mov	R7, A
	djnz	DPH, label130
	clr	A
label127:
	ret
label123:
	mov	DPL, R3
	mov	DPH, #7h
label133:
	mov	A, R7
	rlc	A
	mov	R7, A
	movx	A, @DPTR
	mov	R4, 2Dh
label131:
	rr	A
	djnz	R4, label131
	mov	0E7h, C
	mov	R4, 2Dh
label132:
	rl	A
	djnz	R4, label132
	movx	@DPTR, A
	djnz	DPH, label133
	ret
label98:
	inc	26h
	mov	A, 26h
	jnz	label134
	inc	27h
	orl	27h, #10h
label134:
	ret
label87:
	mov	A, 26h
	jnz	label135
	dec	27h
	orl	27h, #10h
label135:
	dec	26h
	ret
label82:
	mov	R3, #7h
label137:
	acall	label136
	djnz	R3, label137
	ljmp	label113
label83:
	mov	R3, #1h
label138:
	acall	label136
	inc	R3
	cjne	R3, #8h, label138
	ljmp	label113
label84:
	mov	R2, #7h
	mov	R3, #1h
label141:
	acall	label139
	inc	R3
	acall	label140
	djnz	R2, label141
	mov	TH0, #80h
	mov	R4, #30h
	acall	label142
	ljmp	label113
label74:
	mov	DPTR, #0A75h
	add	A, #5Fh
	rl	A
	jmp	@A+DPTR
	sjmp	label143
	sjmp	label143
	sjmp	label143
	sjmp	label143
	sjmp	label143
	sjmp	label143
	sjmp	label143
	sjmp	label143
	sjmp	label143
	sjmp	label144
	sjmp	label145
	sjmp	label145
	sjmp	label145
	sjmp	label146
	sjmp	label147
	sjmp	label148
	sjmp	label149
	sjmp	label149
	sjmp	label149
	sjmp	label149
label143:
	mov	21h, A
	ret
label144:
	setb	48h
	mov	2Ch, #38h
	ret
label145:
	ret
label146:
	setb	4Ah
	ret
label147:
	mov	TH0, #80h
	mov	R4, #38h
	acall	label142
	ret
label148:
	acall	label150
	ret
label149:
	rr	A
	rr	A
	rr	A
	anl	A, #0C0h
	mov	2Bh, A
	ret
label86:
	mov	DPL, 24h
	mov	DPH, 25h
label151:
	acall	label7
	movx	A, @DPTR
	jnb	0E7h, label151
	mov	26h, DPL
	mov	27h, DPH
	ret
label139:
	mov	P2, R2
label110:
	mov	26h, 24h
	mov	27h, 25h
	mov	R0, #2Ah
	mov	R1, #14h
label154:
	acall	label152
	xch	A, @R0
	acall	label153
	rrc	A
	mov	56h, C
	rrc	A
	mov	57h, C
	anl	A, #0Fh
	xch	A, @R0
	acall	label153
	swap	A
	xchd	A, @R0
	acall	label153
	rl	A
	rl	A
	orl	A, @R0
	mov	@R0, A
	sjmp	label154
label153:
	movx	@R1, A
	djnz	R1, label152
	mov	A, @R0
	movx	@R1, A
	sjmp	label155
label152:
	mov	DPH, 27h
	mov	DPL, 26h
	movx	A, @DPTR
	jnb	0E7h, label156
	mov	A, @R0
label157:
	movx	@R1, A
	clr	A
	djnz	R1, label157
	movx	@R1, A
label155:
	dec	SP
	dec	SP
	ret
label156:
	mov	DPL, A
	mov	DPH, R3
	inc	26h
	mov	A, 26h
	jnz	label158
	inc	27h
	setb	3Ch
label158:
	clr	A
	movc	A, @A+DPTR
	jnb	4Ah, label159
	cpl	A
label159:
	anl	A, #3Fh
	ret
label88:
	mov	R1, 26h
	mov	P2, 27h
	movx	A, @R1
	jb	0E7h, label160
	mov	R1, #14h
	mov	P2, #1h
	mov	DPH, #7h
	mov	DPL, A
label162:
	clr	A
	movc	A, @A+DPTR
	jnb	4Ah, label161
	cpl	A
label161:
	anl	A, #3Fh
	movx	@R1, A
	inc	P2
	djnz	DPH, label162
label160:
	ret
label111:
	mov	R4, #2h
	mov	TH0, 2Bh
label142:
	mov	R2, #7h
label163:
	acall	label140
	djnz	R2, label163
	djnz	R4, label142
	ret
label91:
	mov	P2, R2
	mov	R1, #14h
	clr	C
label164:
	movx	A, @R1
	rlc	A
	movx	@R1, A
	djnz	R1, label164
	movx	A, @R1
	rlc	A
	movx	@R1, A
label140:
	mov	DPH, R2
	mov	R0, #13h
	mov	DPL, #0h
	orl	P2, #80h
	mov	A, #0h
	acall	label165
label166:
	movx	A, @DPTR
	movx	@R0, A
	inc	DPL
	djnz	R0, label166
	movx	A, @DPTR
	movx	@R0, A
	mov	A, DPH
	acall	label165
	ret
label99:
	mov	P2, DPH
	mov	R1, #14h
	clr	C
label167:
	movx	A, @R1
	rrc	A
	movx	@R1, A
	djnz	R1, label167
	movx	A, @R1
	rrc	A
	movx	@R1, A
	mov	R0, #13h
	mov	DPL, #13h
	orl	P2, #80h
	mov	A, #0h
	acall	label165
label168:
	movx	A, @DPTR
	movx	@R0, A
	dec	DPL
	djnz	R0, label168
	movx	A, @DPTR
	movx	@R0, A
	mov	A, DPH
	acall	label165
	inc	DPH
	ret
label136:
	mov	A, R3
	add	A, #0F7h
	cpl	A
	mov	P2, A
	acall	label110
	acall	label111
	ret
label67:
	mov	DPL, 2Eh
	mov	DPH, 2Fh
	mov	R0, #0h
	mov	A, 1Dh
label171:
	mov	P2, #0h
	movx	A, @R0
	mov	R1, A
	mov	A, DPL
	movx	@R0, A
	inc	R0
	movx	A, @R0
	xch	A, DPH
	movx	@R0, A
	xch	A, DPH
	mov	P2, A
label170:
	movx	A, @R1
	movx	@DPTR, A
	acall	label7
	inc	R1
	cjne	R1, #0h, label169
	inc	P2
	setb	0A4h
label169:
	inc	A
	jnz	label170
	inc	R0
	cjne	R0, #0h, label171
	mov	2Eh, DPL
	mov	2Fh, DPH
	mov	P2, #7h
	mov	R1, #0FEh
	mov	A, DPL
	movx	@R1, A
	inc	R1
	mov	A, DPH
	movx	@R1, A
	mov	20h, #4h
	ret
label85:
	mov	TH0, 2Bh
	clr	A
	mov	R2, #7h
label173:
	mov	P2, R2
	mov	R1, #0h
label172:
	movx	@R1, A
	djnz	R1, label172
	djnz	R2, label173
	ret
label165:
	jnb	48h, label69
	djnz	2Ch, label174
	mov	2Ch, #46h
	cpl	49h
label174:
	jnb	49h, label69
	mov	A, #0h
label69:
	jnb	43h, $
	mov	P1, A
	mov	28h, #0h
	ret
label65:
	mov	P2, #0h
	clr	A
	mov	R0, A
	mov	R1, #10h
label175:
	movx	@R0, A
	dec	A
	anl	A, #7Fh
	dec	R0
	xch	A, R1
	movx	@R0, A
	xch	A, R1
	djnz	R0, label175
	mov	DPTR, #0FFFh
	mov	A, #0FFh
label176:
	movx	@DPTR, A
	inc	DPTR
	cjne	A, DPL, label176
label150:
	mov	DPTR, #100h
label177:
	clr	A
	movx	@DPTR, A
	inc	DPTR
	mov	A, DPH
	jnb	0E3h, label177
	ret
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
label10:
	mov	R7, A
	mov	R7, A
	mov	R7, A
label63:
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
label53:
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
label35:
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
label52:
	mov	R7, A
label23:
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
label61:
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
label45:
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
label44:
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
label58:
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
label51:
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
label31:
	mov	R7, A
label36:
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
label59:
	mov	R7, A
label28:
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A
	mov	R7, A

	END