
	.vers "st62T10"
	.romsize 2
	.W_ON
	.pp_on               	; This directive is to be included when the

        .input "6220_reg.asm"

;***	RYTHMISH ZYGOU, KATO ORIO, KATHISTERISH, EPANALHPSI KYKLOU. qwerty

COUNT	 .EQU 0B0H 
WATCHTIM .EQU 0FEH 
TMZ      .EQU 7                 ; This bit must be cleared by user software
DOUT     .EQU 4                 ; CLOCK GIA ADCONVER
EOC	 .EQU 6			; is set hight.
FIR	 .EQU 7			;FIRST OPT ON DRB
SEC	 .EQU 6			;SECONT OPT ON DRB
RES_TIME .EQU 006H		; X 10 sec =XRONOS GIA RESET TOY METRITH
				; 6 = 1 min

B	.DEF 084H
C	.DEF 085H

CAP_OV_TST	.DEF 088H
LEDOFF		.DEF 089H
OVERCAP 	.DEF 08AH
OVERTIME	.DEF 08BH

WD_TEST	.DEF 08CH
STACKA	.DEF 08DH
STACKX	.DEF 08EH
FLAG	.DEF 08FH

TR0	.DEF 090H
TR1	.DEF 091H
TR2	.DEF 092H

TB1	.DEF 093H
TB2	.DEF 094H		;X=(X)-(Y)
TB3	.DEF 095H		;X=(X)+(Y)

BIN1	.DEF 096H
BIN2	.DEF 097H
BIN3	.DEF 098H

ROTATE	.DEF 099H
L1	.DEF 09AH		;KATHE KENO = HI BYTE
L2	.DEF 09BH		;KATHE KENO = LO BYTE

LITRA	.DEF 09CH		;ANALISH /?LITRA SET OUTPUT
TOGLE	.DEF 09DH		;ANALISH /2      RES OUTPUT
STABIL	.DEF 09EH		;METRITHS GIA STABIL
STAB2	.DEF 09FH

;***	DRB JUMPER SETING	***
;***	1=WITH JUMPER  0= WITHOUT JUMPER

;***	PB3 PB4
;*** 	JP1 JP2   ANALISH
;***	 0   0  =   0 
;***	 0   1  =   1 
;***	 1   0  =   2 
;***	 1   1  =   3

;***	PB2 PB1 PB0				      ANALISH
;***	JP3 JP4 JP5	   YDR	 ADD  ADD/LITRO  0    1    2    3  
;***	 0   0   0	=  2"	(20806)	{6,2997} 1    2    5    10 L/PALMO
;***	 0   0   1	=  2,5"	(34268)	{3,8249} 1    2    5    10 L/PALMO
;***	 0   1   0	=  3"	(51400)	{2,5500} 1    2    5    10 L/PALMO
;***	 0   1   1	=  1,5"	(290)	{99,810} 1    2    5    10 L/PALMO
OLDIA20	.EQU 20806
OLDIA25 .EQU 34268
OLDIA30 .EQU 51400
OLDIA15 .EQU 290

;	NEW YDROMETER
;***	 1   0   0	=  2"	(56890)	{2,3040} 1    2    5    10 L/PALMO
;***	 1   0   1	=  2,5"	(56890)	{2,3040} 1    2    5    10 L/PALMO
;***	 1   1   0	=  3"	(59168)	{2,2153} 1    2    5    10 L/PALMO
;***	 1   1   1	=  1,5"	(   )	{      } 1    2    5    10 L/PALMO

NWDIA20	.EQU 56890
NWDIA25 .EQU 56890
NWDIA30 .EQU 59167
NWDIA15 .EQU 32768


;***	2" => 1 PERISTROFH =3,81 LITRA   Qn= 7,0 L/SEC   44
;***  2,5" => 1 PERISTROFH =6,27 LITRA   Qn=12,5 L/SEC   48
;***	3" => 1 PERISTROFH =9,41 LITRA   Qn=18,0 L/SEC   46
;***  1,5" => 1 PERISTROFH =0,24 LITRA

;***	2" => 1 PERISTROFH =10,417 LITRA Qn= 7,0  L/SEC  16 
;***  2,5" => 1 PERISTROFH =10,417 LITRA Qn=12,5  L/SEC  29
;***	3" => 1 PERISTROFH =10,834 LITRA Qn=18,0  L/SEC  40
;***  1,5" => 1 PERISTROFH =0,

;	2" , 2,5", 3" 
;Qn   = 15 , 25  , 40
;QMAX = 25 , 45  , 65
