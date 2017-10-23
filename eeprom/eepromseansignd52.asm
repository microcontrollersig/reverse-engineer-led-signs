;
;  D52 V3.3.6 8052 Disassembly of eepromseansign.bin
;  10/23/17 13:24
;
	org	0
;
X0000:	ljmp	X0800		; 0000   02 08 00   ...
;
	org	4
;
X0004:	nop			; 0004   00         .
;
	org	8
;
X0008:	nop			; 0008   00         .
X0009:	nop			; 0009   00         .
X000a:	nop			; 000a   00         .
;
	org	0eh
;
X000e:	nop			; 000e   00         .
X000f:	nop			; 000f   00         .
X0010:	nop			; 0010   00         .
X0011:	nop			; 0011   00         .
;
	org	13h
;
X0013:	nop			; 0013   00         .
;
	org	15h
;
X0015:	nop			; 0015   00         .
X0016:	nop			; 0016   00         .
;
	org	1bh
;
X001b:	nop			; 001b   00         .
;
	org	1fh
;
X001f:	nop			; 001f   00         .
;
	org	23h
;
	push	psw		; 0023   c0 d0      @P
	orl	psw,#18h	; 0025   43 d0 18   CP.
	nop			; 0028   00         .
;
	org	30h
;
	jbc	ri,X0042	; 0030   10 98 0f   ...
X0033:	mov	dpl,r3		; 0033   8b 82      ..
	mov	dph,r4		; 0035   8c 83      ..
X0037:	mov	a,r7		; 0037   ef         o
	nop			; 0038   00         .
;
	org	40h
;
	sjmp	X0037		; 0040   80 f5      .u
;
X0042:	mov	a,sbuf		; 0042   e5 99      e.
	jb	20h.0,X0062	; 0044   20 00 1b    ..
	jb	20h.0,X004a	; 0047   20 00 00    ..
X004a:	nop			; 004a   00         .
;
	org	4fh
;
	sjmp	X0033		; 004f   80 e2      .b
;
	anl	20h,#0f7h	; 0051   53 20 f7   S w
	add	a,#80h		; 0054   24 80      $.
	jnc	X0058		; 0056   50 00      P.
X0058:	nop			; 0058   00         .
;
	org	5eh
;
	mov	r2,2fh		; 005e   aa 2f      */
	sjmp	X0033		; 0060   80 d1      .Q
;
X0062:	mov	dph,r2		; 0062   8a 83      ..
	mov	dpl,r1		; 0064   89 82      ..
	nop			; 0066   00         .
;
	org	6eh
;
	inc	a		; 006e   04         .
	jnz	X0033		; 006f   70 c2      pB
	mov	20h,#2		; 0071   75 20 02   u .
	mov	dpl,r5		; 0074   8d 82      ..
	nop			; 0076   00         .
;
	org	7dh
;
	mov	a,2fh		; 007d   e5 2f      e/
	movx	@dptr,a		; 007f   f0         p
	mov	2eh,r1		; 0080   89 2e      ..
	mov	2fh,r2		; 0082   8a 2f      ./
	sjmp	X0086		; 0084   80 00      ..
;
X0086:	nop			; 0086   00         .
;
	org	100h
;
X0100:	nop			; 0100   00         .
;
	org	112h
;
X0112:	nop			; 0112   00         .
;
	org	121h
;
	inc	a		; 0121   04         .
	inc	rb0r0		; 0122   05 00      ..
	inc	a		; 0124   04         .
	nop			; 0125   00         .
;
	org	130h
;
	inc	r6		; 0130   0e         .
	inc	a		; 0131   04         .
	inc	r6		; 0132   0e         .
	dec	r7		; 0133   1f         .
	inc	r0		; 0134   08         .
	nop			; 0135   00         .
;
	org	13eh
;
	ljmp	X0e0e		; 013e   02 0e 0e   ...
;
	inc	a		; 0141   04         .
	inc	r7		; 0142   0f         .
	inc	r6		; 0143   0e         .
	inc	r7		; 0144   0f         .
	nop			; 0145   00         .
;
	org	14dh
;
	acall	X0011		; 014d   11 11      ..
	inc	r6		; 014f   0e         .
	inc	r7		; 0150   0f         .
	inc	r6		; 0151   0e         .
	inc	r7		; 0152   0f         .
	inc	r6		; 0153   0e         .
	dec	r7		; 0154   1f         .
	nop			; 0155   00         .
;
	org	15dh
;
	inc	r6		; 015d   0e         .
	inc	a		; 015e   04         .
	nop			; 015f   00         .
	ljmp	X0001		; 0160   02 00 01   ...
;
	org	164h
;
	jbc	20h.0,X0167	; 0164   10 00 00   ...
X0167:	nop			; 0167   00         .
;
	org	17bh
;
	jbc	20h.4,X017f	; 017b   10 04 01   ...
	dec	r7		; 017e   1f         .
X017f:	nop			; 017f   00         .
;
	org	221h
;
	inc	a		; 0221   04         .
	inc	rb0r0		; 0222   05 00      ..
	nop			; 0224   00         .
;
	org	22ah
;
	dec	rb0r4		; 022a   15 04      ..
	nop			; 022c   00         .
;
	org	22fh
;
	jbc	22h.1,X0238	; 022f   10 11 06   ...
	nop			; 0232   00         .
;
	org	238h
;
X0238:	nop			; 0238   00         .
;
	org	23ah
;
	inc	@r0		; 023a   06         .
	inc	@r0		; 023b   06         .
	inc	a		; 023c   04         .
	nop			; 023d   00         .
	inc	a		; 023e   04         .
	acall	X0011		; 023f   11 11      ..
	inc	r2		; 0241   0a         .
	nop			; 0242   00         .
;
	org	24ah
;
	inc	a		; 024a   04         .
	inc	r1		; 024b   09         .
	ajmp	X001b		; 024c   01 1b      ..
;
	acall	X0011		; 024e   11 11      ..
	acall	X0011		; 0250   11 11      ..
	nop			; 0252   00         .
;
	org	259h
;
	acall	X0010		; 0259   11 10      ..
	ljmp	X0708		; 025b   02 07 08   ...
;
	inc	r6		; 025e   0e         .
	inc	r6		; 025f   0e         .
	inc	a		; 0260   04         .
	nop			; 0261   00         .
;
	org	268h
;
	ajmp	X0000		; 0268   01 00      ..
;
	org	26bh
;
	ajmp	X0004		; 026b   01 04      ..
;
	org	27bh
;
	inc	r0		; 027b   08         .
	inc	a		; 027c   04         .
	ljmp	X1f10		; 027d   02 1f 10   ...
;
	org	308h
;
X0308:	nop			; 0308   00         .
;
	org	328h
;
	ljmp	X080e		; 0328   02 08 0e   ...
;
	inc	a		; 032b   04         .
	nop			; 032c   00         .
;
	org	32fh
;
	inc	r0		; 032f   08         .
	nop			; 0330   00         .
;
	org	338h
;
	acall	X0011		; 0338   11 11      ..
	inc	@r0		; 033a   06         .
	inc	@r0		; 033b   06         .
	ljmp	X1f08		; 033c   02 1f 08   ...
;
	inc	r0		; 033f   08         .
	nop			; 0340   00         .
;
	org	347h
;
	ajmp	X0011		; 0347   01 11      ..
;
	inc	a		; 0349   04         .
	inc	a		; 034a   04         .
	inc	rb0r1		; 034b   05 01      ..
	dec	rb2r3		; 034d   15 13      ..
	nop			; 034f   00         .
;
	org	357h
;
	acall	X000a		; 0357   11 0a      ..
	inc	r2		; 0359   0a         .
	inc	r0		; 035a   08         .
	ljmp	X0308		; 035b   02 03 08   ...
;
	dec	rb0r0		; 035e   15 00      ..
	nop			; 0360   00         .
;
	org	366h
;
	ljmp	X110d		; 0366   02 11 0d   ...
;
	inc	@r0		; 0369   06         .
	inc	r4		; 036a   0c         .
	inc	r1		; 036b   09         .
	inc	a		; 036c   04         .
	inc	r3		; 036d   0b         .
	nop			; 036e   00         .
;
	org	375h
;
	acall	X0011		; 0375   11 11      ..
	acall	X0011		; 0377   11 11      ..
	acall	X001f		; 0379   11 1f      ..
	inc	r0		; 037b   08         .
	inc	a		; 037c   04         .
	nop			; 037d   00         .
;
	org	41eh
;
X041e:	nop			; 041e   00         .
;
	org	425h
;
	inc	a		; 0425   04         .
	ljmp	X0002		; 0426   02 00 02   ...
;
	inc	r0		; 0429   08         .
	inc	a		; 042a   04         .
	dec	r7		; 042b   1f         .
	nop			; 042c   00         .
;
	org	435h
;
	jbc	21h.7,X043c	; 0435   10 0f 04   ...
	inc	r6		; 0438   0e         .
	dec	r6		; 0439   1e         .
	nop			; 043a   00         .
;
	org	43ch
;
X043c:	ajmp	X0000		; 043c   01 00      ..
;
	org	445h
;
	inc	r7		; 0445   0f         .
	inc	r7		; 0446   0f         .
	ajmp	X001f		; 0447   01 1f      ..
;
	inc	a		; 0449   04         .
	inc	a		; 044a   04         .
	rr	a		; 044b   03         .
	ajmp	X0000		; 044c   01 00      ..
;
	org	455h
;
	acall	X0011		; 0455   11 11      ..
	dec	rb0r4		; 0457   15 04      ..
	inc	a		; 0459   04         .
	inc	a		; 045a   04         .
	ljmp	X0500		; 045b   02 05 00   ...
;
	org	465h
;
	acall	X000f		; 0465   11 0f      ..
	acall	X0013		; 0467   11 13      ..
	inc	a		; 0469   04         .
	inc	r0		; 046a   08         .
	inc	rb0r4		; 046b   05 04      ..
	nop			; 046d   00         .
;
	org	475h
;
	acall	X0011		; 0475   11 11      ..
	acall	X000a		; 0477   11 0a      ..
	acall	X0008		; 0479   11 08      ..
	inc	a		; 047b   04         .
	inc	a		; 047c   04         .
	nop			; 047d   00         .
;
	org	500h
;
X0500:	nop			; 0500   00         .
;
	org	525h
;
	ljmp	X1500		; 0525   02 15 00   ...
;
	ljmp	X080e		; 0528   02 08 0e   ...
;
	inc	a		; 052b   04         .
	nop			; 052c   00         .
;
	org	533h
;
	jbc	23h.7,X0546	; 0533   10 1f 10   ...
	acall	X0004		; 0536   11 04      ..
	acall	X0010		; 0538   11 10      ..
	inc	@r0		; 053a   06         .
	nop			; 053b   00         .
;
	org	542h
;
	lcall	X0112		; 0542   12 01 12   ...
	ajmp	X0001		; 0545   01 01      ..
;
	dec	r1		; 0547   19         .
	acall	X0004		; 0548   11 04      ..
	nop			; 054a   00         .
;
	org	551h
;
	dec	rb0r5		; 0551   15 05      ..
	jbc	20h.4,X0567	; 0553   10 04 11   ...
	acall	X0015		; 0556   11 15      ..
	inc	r2		; 0558   0a         .
	nop			; 0559   00         .
;
	org	561h
;
	dec	r6		; 0561   1e         .
	acall	X0001		; 0562   11 01      ..
	acall	X001f		; 0564   11 1f      ..
	ljmp	X1e11		; 0566   02 1e 11   ...
;
	org	571h
;
	dec	r6		; 0571   1e         .
	ajmp	X000e		; 0572   01 0e      ..
;
	ljmp	X1111		; 0574   02 11 11   ...
;
	dec	rb0r4		; 0577   15 04      ..
	nop			; 0579   00         .
;
	org	621h
;
	inc	a		; 0621   04         .
	nop			; 0622   00         .
	inc	r2		; 0623   0a         .
	inc	r7		; 0624   0f         .
	dec	r1		; 0625   19         .
	inc	r1		; 0626   09         .
	nop			; 0627   00         .
	inc	a		; 0628   04         .
	nop			; 0629   00         .
;
	org	631h
;
	inc	a		; 0631   04         .
	ljmp	X1108		; 0632   02 11 08   ...
;
	acall	X0011		; 0635   11 11      ..
	inc	a		; 0637   04         .
	acall	X0000		; 0638   11 00      ..
	nop			; 063a   00         .
;
	org	640h
;
	ajmp	X0011		; 0640   01 11      ..
;
	lcall	X1112		; 0642   12 11 12   ...
	ajmp	X0001		; 0645   01 01      ..
;
	acall	X0000		; 0647   11 00      ..
	nop			; 0649   00         .
;
	org	650h
;
	ajmp	X0009		; 0650   01 09      ..
;
	inc	r1		; 0652   09         .
	acall	X0004		; 0653   11 04      ..
	acall	X000a		; 0655   11 0a      ..
	dec	rb0r0		; 0657   15 00      ..
	nop			; 0659   00         .
;
	org	661h
;
	acall	X0011		; 0661   11 11      ..
	acall	X0011		; 0663   11 11      ..
	ajmp	X0002		; 0665   01 02      ..
;
	jbc	20h.0,X066a	; 0667   10 00 00   ...
X066a:	nop			; 066a   00         .
;
	org	66fh
;
	acall	X0001		; 066f   11 01      ..
	jbc	20h.1,X0684	; 0671   10 01 10   ...
	lcall	X1900		; 0674   12 19 00   ...
	nop			; 0677   00         .
;
	org	67dh
;
	ljmp	X1f0f		; 067d   02 1f 0f   ...
;
	org	684h
;
X0684:	nop			; 0684   00         .
;
	org	708h
;
X0708:	nop			; 0708   00         .
;
	org	721h
;
	inc	a		; 0721   04         .
	nop			; 0722   00         .
;
	org	724h
;
	inc	a		; 0724   04         .
	nop			; 0725   00         .
;
	org	72ch
;
	ajmp	X0000		; 072c   01 00      ..
;
	inc	@r0		; 072e   06         .
	nop			; 072f   00         .
	inc	r6		; 0730   0e         .
	inc	r6		; 0731   0e         .
	dec	r7		; 0732   1f         .
	inc	r6		; 0733   0e         .
	nop			; 0734   00         .
;
	org	73bh
;
	ajmp	X0008		; 073b   01 08      ..
;
	org	73eh
;
	ljmp	X041e		; 073e   02 04 1e   ...
;
	acall	X000f		; 0741   11 0f      ..
	nop			; 0743   00         .
;
	org	74ah
;
	ljmp	X111f		; 074a   02 11 1f   ...
;
	acall	X0011		; 074d   11 11      ..
	inc	r6		; 074f   0e         .
	ajmp	X0016		; 0750   01 16      ..
;
	org	75ah
;
	dec	r7		; 075a   1f         .
	inc	r6		; 075b   0e         .
	nop			; 075c   00         .
	inc	r6		; 075d   0e         .
	inc	a		; 075e   04         .
	nop			; 075f   00         .
;
	org	761h
;
	dec	r6		; 0761   1e         .
	nop			; 0762   00         .
;
	org	76ah
;
	inc	@r0		; 076a   06         .
	inc	r1		; 076b   09         .
	inc	r6		; 076c   0e         .
	dec	rb2r1		; 076d   15 11      ..
	inc	r6		; 076f   0e         .
	ajmp	X0010		; 0770   01 10      ..
;
	org	77ah
;
	dec	r7		; 077a   1f         .
	jbc	20h.4,X077f	; 077b   10 04 01   ...
	dec	r7		; 077e   1f         .
X077f:	nop			; 077f   00         .
;
	org	800h
;
X0800:	mov	rb3r1,#0	; 0800   75 19 00   u..
	nop			; 0803   00         .
;
	org	809h
;
	mov	th0,#0		; 0809   75 8c 00   u..
	mov	th1,#0fdh	; 080c   75 8d fd   u.}
	mov	tcon,#0		; 080f   75 88 00   u..
	nop			; 0812   00         .
;
	org	818h
;
	setb	ps		; 0818   d2 bc      R<
	mov	20h,#0		; 081a   75 20 00   u .
	mov	21h,#0		; 081d   75 21 00   u!.
	nop			; 0820   00         .
;
	org	826h
;
	mov	p1,#0		; 0826   75 90 00   u..
	mov	p2,#0		; 0829   75 a0 00   u .
	acall	X0c00		; 082c   91 00      ..
	nop			; 082e   00         .
;
	org	834h
;
	mov	2fh,#10h	; 0834   75 2f 10   u/.
X0837:	mov	p2,#0		; 0837   75 a0 00   u .
	mov	r0,#0		; 083a   78 00      x.
	nop			; 083c   00         .
;
	org	843h
;
	jnb	20h.1,X084a	; 0843   30 01 04   0..
	acall	X0bb5		; 0846   71 b5      q5
	sjmp	X0837		; 0848   80 ed      .m
;
X084a:	nop			; 084a   00         .
;
	org	851h
;
	mov	dph,23h		; 0851   85 23 83   .#.
	movx	a,@dptr		; 0854   e0         `
	inc	a		; 0855   04         .
	jz	X0837		; 0856   60 df      `_
	acall	X0800		; 0858   11 00      ..
	nop			; 085a   00         .
;
	org	861h
;
	rl	a		; 0861   23         #
	mov	p2,#0		; 0862   75 a0 00   u .
	mov	r0,a		; 0865   f8         x
	movx	a,@r0		; 0866   e2         b
	mov	24h,a		; 0867   f5 24      u$
	nop			; 0869   00         .
;
	org	86dh
;
X086d:	nop			; 086d   00         .
;
	org	870h
;
	mov	dpl,24h		; 0870   85 24 82   .$.
	mov	dph,25h		; 0873   85 25 83   .%.
	movx	a,@dptr		; 0876   e0         `
	jnb	20h.0,X087a	; 0877   30 00 00   0..
X087a:	nop			; 087a   00         .
;
	org	87fh
;
	mov	24h,dpl		; 087f   85 82 24   ..$
	mov	25h,dph		; 0882   85 83 25   ..%
	cjne	a,#0afh,X0888	; 0885   b4 af 00   4/.
X0888:	nop			; 0888   00         .
;
	org	88fh
;
	sjmp	X086d		; 088f   80 dc      .\
;
X0891:	inc	dptr		; 0891   a3         #
	anl	dph,#0dfh	; 0892   53 83 df   S._
	orl	dph,#0		; 0895   43 83 00   C..
	nop			; 0898   00         .
;
	org	89fh
;
	ajmp	X08b1		; 089f   01 b1      .1
;
	ajmp	X08e5		; 08a1   01 e5      .e
;
	ajmp	X091a		; 08a3   21 1a      !.
;
	ajmp	X0948		; 08a5   21 48      !H
;
	org	8afh
;
	ajmp	X0a59		; 08af   41 59      AY
;
X08b1:	acall	X0bf9		; 08b1   71 f9      qy
	acall	X0abd		; 08b3   51 bd      Q=
	mov	rb0r0,dpl	; 08b5   85 82 00   ...
	nop			; 08b8   00         .
;
	org	8beh
;
	acall	X0b29		; 08be   71 29      q)
	jb	acc.7,X08d9	; 08c0   20 e7 16    g.
	mov	p2,#7		; 08c3   75 a0 07   u .
	nop			; 08c6   00         .
;
	org	8cdh
;
	mov	r3,#6		; 08cd   7b 06      {.
	mov	r2,#7		; 08cf   7a 07      z.
X08d1:	acall	X0b59		; 08d1   71 59      qY
	djnz	r2,X08d1	; 08d3   da fc      Z|
	nop			; 08d5   00         .
;
	org	8d9h
;
X08d9:	nop			; 08d9   00         .
;
	org	8dbh
;
X08db:	nop			; 08db   00         .
;
	org	8ddh
;
X08dd:	acall	X0b59		; 08dd   71 59      qY
	djnz	r2,X08dd	; 08df   da fc      Z|
	djnz	r3,X08db	; 08e1   db f8      [x
	sjmp	X086d		; 08e3   80 88      ..
;
X08e5:	nop			; 08e5   00         .
;
	org	8edh
;
X08ed:	acall	X0b29		; 08ed   71 29      q)
	jb	acc.7,X0904	; 08ef   20 e7 12    g.
	lcall	X0a2d		; 08f2   12 0a 2d   ..-
	nop			; 08f5   00         .
;
	org	8f7h
;
X08f7:	nop			; 08f7   00         .
;
	org	8fch
;
X08fc:	acall	X0b81		; 08fc   71 81      q.
	djnz	r2,X08fc	; 08fe   da fc      Z|
	djnz	r3,X08f7	; 0900   db f5      [u
	sjmp	X08ed		; 0902   80 e9      .i
;
X0904:	nop			; 0904   00         .
;
	org	906h
;
X0906:	nop			; 0906   00         .
;
	org	90bh
;
X090b:	acall	X0b81		; 090b   71 81      q.
	djnz	r2,X090b	; 090d   da fc      Z|
	djnz	r3,X0906	; 090f   db f5      [u
X0911:	mov	rb0r0,26h	; 0911   85 26 00   .&.
	nop			; 0914   00         .
;
	org	91ah
;
X091a:	mov	r3,#0		; 091a   7b 00      {.
	mov	p2,#7		; 091c   75 a0 07   u .
	mov	dph,#6		; 091f   75 83 06   u..
	nop			; 0922   00         .
;
	org	926h
;
X0926:	nop			; 0926   00         .
;
	org	92ah
;
	djnz	r0,X0926	; 092a   d8 fa      Xz
	movx	a,@dptr		; 092c   e0         `
	movx	@r0,a		; 092d   f2         r
	dec	p2		; 092e   15 a0      . 
	djnz	dph,X0933	; 0930   d5 83 00   U..
X0933:	nop			; 0933   00         .
;
	org	938h
;
X0938:	nop			; 0938   00         .
	djnz	r0,X0938	; 0939   d8 fd      X}
	movx	@r0,a		; 093b   f2         r
	sjmp	X0940		; 093c   80 02      ..
;
	acall	X0ad2		; 093e   51 d2      QR
X0940:	acall	X0b00		; 0940   71 00      q.
	nop			; 0942   00         .
;
	org	948h
;
X0948:	mov	r3,#8		; 0948   7b 08      {.
	mov	p2,#1		; 094a   75 a0 01   u .
	mov	dph,#2		; 094d   75 83 02   u..
	nop			; 0950   00         .
;
	org	956h
;
X0956:	nop			; 0956   00         .
;
	org	958h
;
	dec	dpl		; 0958   15 82      ..
	djnz	r0,X0956	; 095a   d8 fa      Xz
	movx	a,@dptr		; 095c   e0         `
	movx	@r0,a		; 095d   f2         r
	inc	p2		; 095e   05 a0      . 
	nop			; 0960   00         .
;
	org	967h
;
	mov	r0,#13h		; 0967   78 13      x.
	clr	a		; 0969   e4         d
X096a:	movx	@r0,a		; 096a   f2         r
	djnz	r0,X096a	; 096b   d8 fd      X}
	movx	@r0,a		; 096d   f2         r
	sjmp	X0970		; 096e   80 00      ..
;
X0970:	nop			; 0970   00         .
;
	org	976h
;
	sjmp	X0911		; 0976   80 99      ..
;
	mov	26h,24h		; 0978   85 24 26   .$&
	mov	27h,25h		; 097b   85 25 27   .%'
	nop			; 097e   00         .
;
	org	986h
;
X0986:	acall	X09ed		; 0986   31 ed      1m
	inc	b		; 0988   05 f0      .p
	jb	acc.7,X09b0	; 098a   20 e7 23    g#
	mov	a,rb0r0		; 098d   e5 00      e.
	nop			; 098f   00         .
;
	org	996h
;
	lcall	X0a2d		; 0996   12 0a 2d   ..-
X0999:	dec	r3		; 0999   1b         .
	acall	X0a13		; 099a   51 13      Q.
	inc	r3		; 099c   0b         .
	acall	X0b00		; 099d   71 00      q.
	nop			; 099f   00         .
;
	org	9a6h
;
	mov	2dh,#1		; 09a6   75 2d 01   u-.
	djnz	r3,X0986	; 09a9   db db      [[
	acall	X0abd		; 09ab   51 bd      Q=
	ljmp	X0000		; 09ad   02 00 00   ...
;
X09b0:	nop			; 09b0   00         .
;
	org	9b6h
;
	mov	b,#1		; 09b6   75 f0 01   up.
	sjmp	X0999		; 09b9   80 de      .^
;
	acall	X0abd		; 09bb   51 bd      Q=
	mov	rb0r0,rb0r0	; 09bd   85 00 00   ...
	nop			; 09c0   00         .
;
	org	9c5h
;
	mov	b,#6		; 09c5   75 f0 06   up.
	mov	2dh,#8		; 09c8   75 2d 08   u-.
	lcall	X0000		; 09cb   12 00 00   ...
X09ce:	nop			; 09ce   00         .
;
	org	9d3h
;
	mov	b,#6		; 09d3   75 f0 06   up.
	jb	acc.7,X09dc	; 09d6   20 e7 03    g.
	lcall	X0a00		; 09d9   12 0a 00   ...
X09dc:	nop			; 09dc   00         .
;
	org	9e3h
;
	mov	2dh,#8		; 09e3   75 2d 08   u-.
	inc	r3		; 09e6   0b         .
	cjne	r3,#14h,X09ce	; 09e7   bb 14 e4   ;.d
	ljmp	X0000		; 09ea   02 00 00   ...
;
X09ed:	nop			; 09ed   00         .
;
	org	9f3h
;
	movx	a,@dptr		; 09f3   e0         `
	mov	r7,#0		; 09f4   7f 00      ..
	jb	acc.7,X0a12	; 09f6   20 e7 19    g.
	mov	dph,#0		; 09f9   75 83 00   u..
	nop			; 09fc   00         .
;
	org	0a00h
;
X0a00:	nop			; 0a00   00         .
;
	org	0a03h
;
	cpl	a		; 0a03   f4         t
	anl	a,#3fh		; 0a04   54 3f      T?
	mov	r4,b		; 0a06   ac f0      ,p
X0a08:	rrc	a		; 0a08   13         .
	djnz	r4,X0a08	; 0a09   dc fd      \}
	nop			; 0a0b   00         .
;
	org	0a12h
;
X0a12:	nop			; 0a12   00         .
X0a13:	mov	dpl,r3		; 0a13   8b 82      ..
	mov	dph,#7		; 0a15   75 83 07   u..
	mov	a,r7		; 0a18   ef         o
	rlc	a		; 0a19   33         3
	mov	r7,a		; 0a1a   ff         .
;
	org	0a23h
;
	mov	r4,2dh		; 0a23   ac 2d      ,-
X0a25:	rl	a		; 0a25   23         #
	djnz	r4,X0a25	; 0a26   dc fd      \}
	movx	@dptr,a		; 0a28   f0         p
	djnz	dph,X0a2c	; 0a29   d5 83 00   U..
X0a2c:	nop			; 0a2c   00         .
X0a2d:	nop			; 0a2d   00         .
;
	org	0a33h
;
	inc	27h		; 0a33   05 27      .'
	orl	27h,#10h	; 0a35   43 27 10   C'.
	ret			; 0a38   22         "
;
	mov	a,26h		; 0a39   e5 26      e&
	nop			; 0a3b   00         .
;
	org	0a42h
;
	dec	26h		; 0a42   15 26      .&
	ret			; 0a44   22         "
;
	mov	r3,#7		; 0a45   7b 07      {.
	acall	X0baa		; 0a47   71 aa      q*
	djnz	r3,X0a4b	; 0a49   db 00      [.
X0a4b:	nop			; 0a4b   00         .
;
	org	0a50h
;
X0a50:	nop			; 0a50   00         .
;
	org	0a52h
;
	inc	r3		; 0a52   0b         .
	cjne	r3,#8,X0a50	; 0a53   bb 08 fa   ;.z
	ljmp	X0911		; 0a56   02 09 11   ...
;
X0a59:	mov	r2,#0		; 0a59   7a 00      z.
	nop			; 0a5b   00         .
;
	org	0a5dh
;
X0a5d:	nop			; 0a5d   00         .
;
	org	0a62h
;
	djnz	r2,X0a5d	; 0a62   da f9      Zy
	mov	th0,#80h	; 0a64   75 8c 80   u..
	mov	r4,#30h		; 0a67   7c 30      |0
	acall	X0b00		; 0a69   71 00      q.
	nop			; 0a6b   00         .
;
	org	0a71h
;
	add	a,#5fh		; 0a71   24 5f      $_
	rl	a		; 0a73   23         #
	jmp	@a+dptr		; 0a74   73         s
;
	sjmp	X0a9d		; 0a75   80 26      .&
;
	sjmp	X0a9d		; 0a77   80 24      .$
;
	org	0a81h
;
	sjmp	X0a9d		; 0a81   80 1a      ..
;
	sjmp	X0a9d		; 0a83   80 18      ..
;
	sjmp	X0a9d		; 0a85   80 16      ..
;
	sjmp	X0aa0		; 0a87   80 17      ..
;
	org	0a91h
;
	sjmp	X0aaa		; 0a91   80 17      ..
;
	sjmp	X0ab2		; 0a93   80 1d      ..
;
	sjmp	X0ab5		; 0a95   80 1e      ..
;
	sjmp	X0ab5		; 0a97   80 1c      ..
;
	org	0a9dh
;
X0a9d:	nop			; 0a9d   00         .
;
	org	0aa0h
;
X0aa0:	setb	29h.0		; 0aa0   d2 48      RH
	mov	2ch,#38h	; 0aa2   75 2c 38   u,8
	ret			; 0aa5   22         "
;
	ret			; 0aa6   22         "
;
	setb	20h.0		; 0aa7   d2 00      R.
	nop			; 0aa9   00         .
X0aaa:	nop			; 0aaa   00         .
;
	org	0aafh
;
	acall	X0b50		; 0aaf   71 50      qP
	ret			; 0ab1   22         "
;
X0ab2:	acall	X0c3d		; 0ab2   91 3d      .=
	ret			; 0ab4   22         "
;
X0ab5:	rr	a		; 0ab5   03         .
	nop			; 0ab6   00         .
;
	org	0abdh
;
X0abd:	mov	dpl,24h		; 0abd   85 24 82   .$.
	mov	dph,25h		; 0ac0   85 25 83   .%.
	acall	X0891		; 0ac3   11 91      ..
	nop			; 0ac5   00         .
;
	org	0acch
;
	mov	27h,dph		; 0acc   85 83 27   ..'
	ret			; 0acf   22         "
;
	mov	p2,r2		; 0ad0   8a a0      . 
X0ad2:	mov	rb0r0,24h	; 0ad2   85 24 00   .$.
	nop			; 0ad5   00         .
;
	org	0adch
;
	acall	X0afd		; 0adc   51 fd      Q}
	xch	a,@r0		; 0ade   c6         F
	acall	X0af6		; 0adf   51 f6      Qv
	rrc	a		; 0ae1   13         .
	mov	2ah.6,c		; 0ae2   92 56      .V
	nop			; 0ae4   00         .
;
	org	0aech
;
	swap	a		; 0aec   c4         D
	xchd	a,@r0		; 0aed   d6         V
	acall	X0af6		; 0aee   51 f6      Qv
	rl	a		; 0af0   23         #
	rl	a		; 0af1   23         #
	orl	a,@r0		; 0af2   46         F
	mov	@r0,a		; 0af3   f6         v
	nop			; 0af4   00         .
;
	org	0af6h
;
X0af6:	nop			; 0af6   00         .
;
	org	0afbh
;
	sjmp	X0b0d		; 0afb   80 10      ..
;
X0afd:	mov	dph,27h		; 0afd   85 27 83   .'.
X0b00:	mov	dpl,26h		; 0b00   85 26 82   .&.
	nop			; 0b03   00         .
;
	org	0b08h
;
X0b08:	nop			; 0b08   00         .
;
	org	0b0ah
;
	djnz	r1,X0b08	; 0b0a   d9 fc      Y|
	movx	@r1,a		; 0b0c   f3         s
X0b0d:	dec	sp		; 0b0d   15 81      ..
	dec	sp		; 0b0f   15 81      ..
	ret			; 0b11   22         "
;
	org	0b1ah
;
	jnz	X0b20		; 0b1a   70 04      p.
	inc	27h		; 0b1c   05 27      .'
	setb	27h.4		; 0b1e   d2 3c      R<
X0b20:	clr	a		; 0b20   e4         d
	movc	a,@a+dptr	; 0b21   93         .
	nop			; 0b22   00         .
;
	org	0b29h
;
X0b29:	mov	r1,26h		; 0b29   a9 26      )&
	mov	p2,27h		; 0b2b   85 27 a0   .' 
	movx	a,@r1		; 0b2e   e3         c
	jb	20h.0,X0b32	; 0b2f   20 00 00    ..
X0b32:	nop			; 0b32   00         .
;
	org	0b37h
;
	mov	dph,#7		; 0b37   75 83 07   u..
	mov	dpl,a		; 0b3a   f5 82      u.
X0b3c:	clr	a		; 0b3c   e4         d
	movc	a,@a+dptr	; 0b3d   93         .
	jnb	20h.0,X0b41	; 0b3e   30 00 00   0..
X0b41:	nop			; 0b41   00         .
;
	org	0b47h
;
	djnz	dph,X0b3c	; 0b47   d5 83 f2   U.r
	ret			; 0b4a   22         "
;
X0b4b:	mov	r4,#2		; 0b4b   7c 02      |.
	mov	rb0r0,2bh	; 0b4d   85 2b 00   .+.
X0b50:	nop			; 0b50   00         .
;
	org	0b56h
;
	djnz	r4,X0b50	; 0b56   dc f8      \x
	ret			; 0b58   22         "
;
X0b59:	mov	p2,r2		; 0b59   8a a0      . 
	mov	r1,#14h		; 0b5b   79 14      y.
	clr	c		; 0b5d   c3         C
	nop			; 0b5e   00         .
;
	org	0b66h
;
	mov	dph,r2		; 0b66   8a 83      ..
	mov	r0,#13h		; 0b68   78 13      x.
	mov	dpl,#0		; 0b6a   75 82 00   u..
	orl	rb0r0,#0	; 0b6d   43 00 00   C..
	nop			; 0b70   00         .
;
	org	0b74h
;
X0b74:	nop			; 0b74   00         .
;
	org	0b76h
;
	inc	dpl		; 0b76   05 82      ..
	djnz	r0,X0b74	; 0b78   d8 fa      Xz
	movx	a,@dptr		; 0b7a   e0         `
	movx	@r0,a		; 0b7b   f2         r
	mov	a,dph		; 0b7c   e5 83      e.
	nop			; 0b7e   00         .
;
	org	0b81h
;
X0b81:	nop			; 0b81   00         .
;
	org	0b86h
;
	clr	c		; 0b86   c3         C
X0b87:	movx	a,@r1		; 0b87   e3         c
	rrc	a		; 0b88   13         .
	movx	@r1,a		; 0b89   f3         s
	djnz	r1,X0b87	; 0b8a   d9 fb      Y{
	movx	a,@r1		; 0b8c   e3         c
	nop			; 0b8d   00         .
;
	org	0b94h
;
	orl	p2,#80h		; 0b94   43 a0 80   C .
	mov	a,#0		; 0b97   74 00      t.
	acall	X0c09		; 0b99   91 09      ..
	movx	a,@dptr		; 0b9b   e0         `
	nop			; 0b9c   00         .
;
	org	0ba3h
;
	mov	a,dph		; 0ba3   e5 83      e.
	acall	X0c09		; 0ba5   91 09      ..
	inc	dph		; 0ba7   05 83      ..
	ret			; 0ba9   22         "
;
X0baa:	mov	a,r3		; 0baa   eb         k
	nop			; 0bab   00         .
;
	org	0bb2h
;
	acall	X0b4b		; 0bb2   71 4b      qK
	ret			; 0bb4   22         "
;
X0bb5:	mov	dpl,2eh		; 0bb5   85 2e 82   ...
	mov	rb0r0,2fh	; 0bb8   85 2f 00   ./.
	nop			; 0bbb   00         .
;
	org	0bbfh
;
X0bbf:	nop			; 0bbf   00         .
;
	org	0bc2h
;
	movx	a,@r0		; 0bc2   e2         b
	mov	r1,a		; 0bc3   f9         y
	mov	a,dpl		; 0bc4   e5 82      e.
	movx	@r0,a		; 0bc6   f2         r
	inc	r0		; 0bc7   08         .
	movx	a,@r0		; 0bc8   e2         b
	xch	a,rb0r0		; 0bc9   c5 00      E.
	nop			; 0bcb   00         .
;
	org	0bd2h
;
	acall	X0891		; 0bd2   11 91      ..
	inc	r1		; 0bd4   09         .
	cjne	r1,#0,X0bdc	; 0bd5   b9 00 04   9..
	inc	rb0r0		; 0bd8   05 00      ..
	nop			; 0bda   00         .
;
	org	0bdch
;
X0bdc:	nop			; 0bdc   00         .
;
	org	0be0h
;
	cjne	r0,#0,X0bbf	; 0be0   b8 00 dc   8.\
	mov	2eh,dpl		; 0be3   85 82 2e   ...
	mov	rb0r0,dph	; 0be6   85 83 00   ...
	nop			; 0be9   00         .
;
	org	0bf0h
;
	movx	@r1,a		; 0bf0   f3         s
	inc	r1		; 0bf1   09         .
	mov	a,dph		; 0bf2   e5 83      e.
	movx	@r1,a		; 0bf4   f3         s
	mov	20h,#4		; 0bf5   75 20 04   u .
	nop			; 0bf8   00         .
X0bf9:	nop			; 0bf9   00         .
;
	org	0bffh
;
	mov	p2,r2		; 0bff   8a a0      . 
	mov	r1,#0		; 0c01   79 00      y.
X0c03:	movx	@r1,a		; 0c03   f3         s
	djnz	r1,X0c03	; 0c04   d9 fd      Y}
	djnz	r2,X0c08	; 0c06   da 00      Z.
X0c08:	nop			; 0c08   00         .
X0c09:	nop			; 0c09   00         .
;
	org	0c0fh
;
	mov	2ch,#46h	; 0c0f   75 2c 46   u,F
	cpl	29h.1		; 0c12   b2 49      2I
	jnb	29h.1,X0c19	; 0c14   30 49 02   0I.
	nop			; 0c17   00         .
;
	org	0c19h
;
X0c19:	nop			; 0c19   00         .
;
	org	0c1eh
;
	mov	28h,#0		; 0c1e   75 28 00   u(.
	ret			; 0c21   22         "
;
	mov	p2,#0		; 0c22   75 a0 00   u .
	clr	a		; 0c25   e4         d
	nop			; 0c26   00         .
;
	org	0c29h
;
X0c29:	nop			; 0c29   00         .
;
	org	0c2eh
;
	xch	a,r1		; 0c2e   c9         I
	movx	@r0,a		; 0c2f   f2         r
	xch	a,r1		; 0c30   c9         I
	djnz	r0,X0c29	; 0c31   d8 f6      Xv
	mov	dptr,#X0fff	; 0c33   90 0f ff   ...
	nop			; 0c36   00         .
;
	org	0c3dh
;
X0c3d:	mov	dptr,#X0100	; 0c3d   90 01 00   ...
	clr	a		; 0c40   e4         d
	movx	@dptr,a		; 0c41   f0         p
	inc	dptr		; 0c42   a3         #
	mov	a,dph		; 0c43   e5 83      e.
	nop			; 0c45   00         .
;
	org	0e0eh
;
X0e0e:	mov	r7,a		; 0e0e   ff         .
;
	org	0fffh
;
X0fff:	mov	r7,a		; 0fff   ff         .
;
	org	1108h
;
X1108:	nop			; 1108   00         .
;
	org	110dh
;
X110d:	mov	r7,a		; 110d   ff         .
;
	org	1111h
;
X1111:	mov	r7,a		; 1111   ff         .
X1112:	mov	r7,a		; 1112   ff         .
;
	org	111fh
;
X111f:	mov	r7,a		; 111f   ff         .
;
	org	1500h
;
X1500:	mov	r7,a		; 1500   ff         .
;
	org	1900h
;
X1900:	mov	r7,a		; 1900   ff         .
;
	org	1e11h
;
X1e11:	mov	r7,a		; 1e11   ff         .
;
	org	1f08h
;
X1f08:	nop			; 1f08   00         .
;
	org	1f0fh
;
X1f0f:	mov	r7,a		; 1f0f   ff         .
X1f10:	mov	r7,a		; 1f10   ff         .
;
;	Register/Memory Equates
;
rb0r0	equ	0
rb0r1	equ	1
rb0r4	equ	4
rb0r5	equ	5
rb2r1	equ	11h
rb2r3	equ	13h
rb3r1	equ	19h
;
;	Miscellaneous equates
;
;  These are addresses referenced in the code but
;  which are in the middle of a multibyte instruction
;  or are addresses outside the initialized space
;
X0001	equ	1
X0002	equ	2
X0546	equ	546h
X0567	equ	567h
X080e	equ	80eh
X0c00	equ	0c00h
;
	end
;

