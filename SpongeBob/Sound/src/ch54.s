	.include "MPlayDef.s"

	.equ	ch54_grp, voicegroup000
	.equ	ch54_pri, 128
	.equ	ch54_rev, reverb_set+50
	.equ	ch54_mvl, 127
	.equ	ch54_key, 0
	.equ	ch54_tbs, 1
	.equ	ch54_exg, 0
	.equ	ch54_cmp, 1

	.section .rodata
	.global	ch54
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

ch54_1:
	.byte		VOL   , 127*ch54_mvl/mxv
	.byte	KEYSH , ch54_key+0
ch54_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 100*ch54_tbs/2
	.byte		VOICE , 36
	.byte		N12   , En1 , v127
	.byte	W12
	.byte		N04   , En1 , v052
	.byte	W04
	.byte		N08   , Gs1 , v096
	.byte	W08
	.byte		N12   , Bn0 , v127
	.byte	W12
	.byte		N04   , Bn0 , v052
	.byte	W04
	.byte		N08   , Gs1 , v096
	.byte	W08
	.byte		N12   , En1 , v127
	.byte	W12
	.byte		N04   , En1 , v052
	.byte	W04
	.byte		N08   , Gs1 , v096
	.byte	W08
	.byte		N12   , Bn0 , v127
	.byte	W12
	.byte		N04   , Bn0 , v052
	.byte	W04
	.byte		N08   , Gs1 , v096
	.byte	W08
@ 001   ----------------------------------------
ch54_1_001:
	.byte		N12   , Bn0 , v127
	.byte	W12
	.byte		N04   , Bn0 , v052
	.byte	W04
	.byte		N08   , An1 , v096
	.byte	W08
	.byte		N12   , Fs0 , v127
	.byte	W12
	.byte		N04   , Fs0 , v052
	.byte	W04
	.byte		N08   , An1 , v096
	.byte	W08
	.byte		N12   , En1 , v127
	.byte	W12
	.byte		N04   , En1 , v052
	.byte	W04
	.byte		N08   , Gs1 , v096
	.byte	W08
	.byte		N12   , Bn0 , v127
	.byte	W12
	.byte		N04   , Bn0 , v052
	.byte	W04
	.byte		N08   , Gs1 , v096
	.byte	W08
	.byte	PEND
@ 002   ----------------------------------------
ch54_1_002:
	.byte		N12   , En1 , v127
	.byte	W12
	.byte		N04   , En1 , v052
	.byte	W04
	.byte		N08   , Gs1 , v096
	.byte	W08
	.byte		N12   , Bn0 , v127
	.byte	W12
	.byte		N04   , Bn0 , v052
	.byte	W04
	.byte		N08   , Gs1 , v096
	.byte	W08
	.byte		N12   , En1 , v127
	.byte	W12
	.byte		N04   , En1 , v052
	.byte	W04
	.byte		N08   , Gs1 , v096
	.byte	W08
	.byte		N12   , Bn0 , v127
	.byte	W12
	.byte		N04   , Bn0 , v052
	.byte	W04
	.byte		N08   , Gs1 , v096
	.byte	W08
	.byte	PEND
@ 003   ----------------------------------------
ch54_1_003:
	.byte		N12   , Bn0 , v127
	.byte	W12
	.byte		N04   , Bn0 , v052
	.byte	W04
	.byte		N08   , An1 , v096
	.byte	W08
	.byte		N12   , Fs0 , v127
	.byte	W12
	.byte		N04   , Fs0 , v052
	.byte	W04
	.byte		N08   , An1 , v096
	.byte	W08
	.byte		N12   , En1 , v127
	.byte	W12
	.byte		N04   , En1 , v052
	.byte	W04
	.byte		N08   , Bn0 , v096
	.byte	W08
	.byte		N12   , En1 , v127
	.byte	W12
	.byte		N04   , Bn0 , v052
	.byte	W04
	.byte		N08   , Gs1 , v096
	.byte	W08
	.byte	PEND
@ 004   ----------------------------------------
ch54_1_004:
	.byte		N12   , An0 , v127
	.byte	W12
	.byte		N04   , An0 , v052
	.byte	W04
	.byte		N08   , Cs2 , v096
	.byte	W08
	.byte		N12   , An0 , v127
	.byte	W12
	.byte		N04   , An0 , v052
	.byte	W04
	.byte		N08   , Cs2 , v096
	.byte	W08
	.byte		N12   , En1 , v127
	.byte	W12
	.byte		N04   , En1 , v052
	.byte	W04
	.byte		N08   , Gs1 , v096
	.byte	W08
	.byte		N12   , Bn0 , v127
	.byte	W12
	.byte		N04   , Bn0 , v052
	.byte	W04
	.byte		N08   , Gs1 , v096
	.byte	W08
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	ch54_1_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	ch54_1_004
@ 007   ----------------------------------------
	.byte		N12   , Bn0 , v127
	.byte	W12
	.byte		N04   , Bn0 , v052
	.byte	W04
	.byte		N08   , An1 , v096
	.byte	W08
	.byte		N12   , Fs0 , v127
	.byte	W12
	.byte		N04   , Fs0 , v052
	.byte	W04
	.byte		N08   , An1 , v096
	.byte	W08
	.byte		N12   , En1 , v127
	.byte	W12
	.byte		N04   , En1 , v052
	.byte	W04
	.byte		N08   , Bn0 , v096
	.byte	W08
	.byte		N12   , En1 , v127
	.byte	W12
	.byte		N04   , En1 , v052
	.byte	W04
	.byte		N08   , Gs1 , v096
	.byte	W08
@ 008   ----------------------------------------
	.byte	PATT
	 .word	ch54_1_002
@ 009   ----------------------------------------
	.byte	PATT
	 .word	ch54_1_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	ch54_1_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	ch54_1_003
@ 012   ----------------------------------------
	.byte	PATT
	 .word	ch54_1_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	ch54_1_001
@ 014   ----------------------------------------
	.byte	PATT
	 .word	ch54_1_004
@ 015   ----------------------------------------
ch54_1_015:
	.byte		N12   , Bn0 , v127
	.byte	W12
	.byte		N04   , Bn0 , v052
	.byte	W04
	.byte		N08   , An1 , v096
	.byte	W08
	.byte		N12   , Fs0 , v127
	.byte	W12
	.byte		N04   , Fs0 , v052
	.byte	W04
	.byte		N08   , An1 , v096
	.byte	W08
	.byte		N12   , Bn0 , v127
	.byte	W12
	.byte		N04   , Bn0 , v052
	.byte	W04
	.byte		N08   , An1 , v096
	.byte	W08
	.byte		N12   , Fs0 , v127
	.byte	W12
	.byte		N04   , Fs0 , v052
	.byte	W04
	.byte		N08   , An1 , v096
	.byte	W08
	.byte	PEND
@ 016   ----------------------------------------
	.byte	PATT
	 .word	ch54_1_015
@ 017   ----------------------------------------
	.byte	PATT
	 .word	ch54_1_002
@ 018   ----------------------------------------
	.byte		N12   , En1 , v127
	.byte	W12
	.byte		N04   , En1 , v052
	.byte	W04
	.byte		N08   , Gs1 , v096
	.byte	W08
	.byte		N12   , Bn0 , v127
	.byte	W12
	.byte		N04   , Bn0 , v052
	.byte	W04
	.byte		N08   , Gs1 , v096
	.byte	W08
	.byte		N12   , En1 , v127
	.byte	W12
	.byte		        En1 , v052
	.byte	W12
	.byte		VOICE , 0
	.byte	W24
@ 019   ----------------------------------------
	.byte	W80
	.byte		        36
	.byte		N04   , En2 , v127
	.byte	W04
	.byte		        Gs2 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
@ 020   ----------------------------------------
	.byte		        En2 
	.byte	W04
	.byte		        Gs2 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		        Gs2 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		N08   , En2 
	.byte	W08
	.byte		N04   , Cs2 
	.byte	W04
	.byte		        Dn2 
	.byte	W04
	.byte		        Ds2 
	.byte	W04
	.byte		        Fs2 
	.byte	W04
	.byte		        Ds2 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        Ds2 
	.byte	W04
	.byte		        Fs2 
	.byte	W04
	.byte		        Ds2 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        Ds2 
	.byte	W04
	.byte		        Fs2 
	.byte	W04
	.byte		        Ds2 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
@ 021   ----------------------------------------
	.byte		N08   , Ds2 
	.byte	W08
	.byte		N04   , Cs2 
	.byte	W04
	.byte		        Ds2 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		        Gs2 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        Gs1 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        Gs1 
	.byte	W04
	.byte		        Fs1 
	.byte	W04
	.byte		        En1 
	.byte	W04
	.byte		        Gs1 
	.byte	W04
	.byte		        En1 
	.byte	W04
	.byte		        Cs1 
	.byte	W04
	.byte		N08   , Bn0 
	.byte	W08
	.byte		N04   , Cs1 
	.byte	W04
	.byte		        Dn1 
	.byte	W04
	.byte		        Ds1 
	.byte	W04
	.byte		        Dn1 
	.byte	W04
	.byte		        Ds1 
	.byte	W04
	.byte		        Fs1 
	.byte	W04
@ 022   ----------------------------------------
	.byte		        An1 
	.byte	W04
	.byte		        Cs2 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        Gn1 
	.byte	W04
	.byte		        Gs1 
	.byte	W04
	.byte		        Fs1 
	.byte	W04
	.byte		        Gs1 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        Gs1 
	.byte	W04
	.byte		        En1 
	.byte	W04
	.byte		        Bn0 
	.byte	W04
	.byte		        En1 
	.byte	W04
	.byte		        Gs1 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		        Gs2 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		        Gs2 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
@ 023   ----------------------------------------
	.byte		N08   , En2 
	.byte	W08
	.byte		N04   , Cs1 
	.byte	W04
	.byte		        Dn1 
	.byte	W04
	.byte		        Ds1 
	.byte	W04
	.byte		        Fs1 
	.byte	W04
	.byte		        An1 
	.byte	W04
	.byte		        Dn2 
	.byte	W04
	.byte		        Ds2 
	.byte	W04
	.byte		        Fs2 
	.byte	W04
	.byte		        Ds2 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        Ds2 
	.byte	W04
	.byte		        Fs2 
	.byte	W04
	.byte		        Ds2 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		N08   , Ds2 
	.byte	W08
	.byte		N04   , Cs2 
	.byte	W04
	.byte		        Ds2 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		        Gs2 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
@ 024   ----------------------------------------
	.byte		        Gs1 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        Gs1 
	.byte	W04
	.byte		        Fs1 
	.byte	W04
	.byte		        En1 
	.byte	W04
	.byte		        Gs1 
	.byte	W04
	.byte		        En1 
	.byte	W04
	.byte		        Cs1 
	.byte	W04
	.byte		N08   , Bn0 
	.byte	W08
	.byte		N04   , Cs1 
	.byte	W04
	.byte		        Dn1 
	.byte	W04
	.byte		        Ds1 
	.byte	W04
	.byte		        Dn1 
	.byte	W04
	.byte		        Ds1 
	.byte	W04
	.byte		        Fs1 
	.byte	W04
	.byte		        An1 
	.byte	W04
	.byte		        Fs1 
	.byte	W04
	.byte		        Ds1 
	.byte	W04
	.byte		        Bn0 
	.byte	W04
	.byte		MOD   , 34
	.byte		N16   , En1 
	.byte	W16
@ 025   ----------------------------------------
	.byte		MOD   , 0
	.byte		N08   , En1 , v064
	.byte	W08
	.byte		        Gs1 , v127
	.byte	W08
	.byte		N04   , An1 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        An1 
	.byte	W04
	.byte		        Gs1 
	.byte	W04
	.byte		        An1 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        An1 
	.byte	W04
	.byte		        Gs1 
	.byte	W04
	.byte		        An1 
	.byte	W04
	.byte		N08   , Cs2 
	.byte	W08
	.byte		N04   , An1 
	.byte	W04
	.byte		N08   , En1 
	.byte	W08
	.byte		        An1 
	.byte	W08
	.byte		N04   , Bn1 
	.byte	W04
	.byte		N08   , Dn2 
	.byte	W08
	.byte		N04   , Bn1 
	.byte	W04
@ 026   ----------------------------------------
	.byte		N08   , Gs1 
	.byte	W08
	.byte		        Bn1 
	.byte	W08
	.byte		N04   , An1 
	.byte	W04
	.byte		N08   , Cs2 
	.byte	W08
	.byte		N04   , An1 
	.byte	W04
	.byte		N16   , En1 
	.byte	W16
	.byte		N04   , An1 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        An1 
	.byte	W04
	.byte		        Gs1 
	.byte	W04
	.byte		        An1 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        An1 
	.byte	W04
	.byte		        Gs1 
	.byte	W04
	.byte		        An1 
	.byte	W04
	.byte		N08   , Cs2 
	.byte	W08
	.byte		N04   , An1 
	.byte	W04
@ 027   ----------------------------------------
	.byte		N08   , En1 
	.byte	W08
	.byte		        An1 
	.byte	W08
	.byte		N04   , Gs1 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        Gs1 
	.byte	W04
	.byte		        En1 
	.byte	W04
	.byte		        Ds1 
	.byte	W04
	.byte		        Fs1 
	.byte	W04
	.byte		        Ds1 
	.byte	W04
	.byte		        Bn0 
	.byte	W04
	.byte		        En1 
	.byte	W04
	.byte		        Ds1 
	.byte	W04
	.byte		        En1 
	.byte	W04
	.byte		        Fs1 
	.byte	W04
	.byte		        Gs1 
	.byte	W04
	.byte		        Fs1 
	.byte	W04
	.byte		        En1 
	.byte	W04
	.byte		        Bn0 
	.byte	W04
	.byte		        Cs1 
	.byte	W04
	.byte		        Cn1 
	.byte	W04
	.byte		        Cs1 
	.byte	W04
	.byte		        En1 
	.byte	W04
@ 028   ----------------------------------------
	.byte		        An1 
	.byte	W04
	.byte		        En1 
	.byte	W04
	.byte		        Cs1 
	.byte	W04
	.byte		        Fn1 
	.byte	W04
	.byte		        Fs1 
	.byte	W04
	.byte		        Fn1 
	.byte	W04
	.byte		        Fs1 
	.byte	W04
	.byte		        An1 
	.byte	W04
	.byte		N08   , Dn2 
	.byte	W08
	.byte		        Dn2 , v064
	.byte	W08
	.byte		N04   , Gn1 , v127
	.byte	W04
	.byte		        Fs1 
	.byte	W04
	.byte		        Gn1 
	.byte	W04
	.byte		        An1 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        An1 
	.byte	W04
	.byte		        Gn1 
	.byte	W04
	.byte		        Fs1 
	.byte	W04
	.byte		        En1 
	.byte	W04
	.byte		        Ds1 
	.byte	W04
	.byte		        En1 
	.byte	W04
	.byte		        Gn1 
	.byte	W04
@ 029   ----------------------------------------
	.byte		N08   , Cn2 
	.byte	W08
	.byte		        Cn2 , v064
	.byte	W08
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		        Ds2 
	.byte	W04
	.byte		        Cn2 
	.byte	W04
	.byte		        An1 
	.byte	W04
	.byte		        Fn1 
	.byte	W04
	.byte		        En1 
	.byte	W04
	.byte		        Ds1 
	.byte	W04
	.byte		        Cn1 
	.byte	W04
	.byte		        Dn1 
	.byte	W04
	.byte		        Cs1 
	.byte	W04
	.byte		        Dn1 
	.byte	W04
	.byte		        Fn1 
	.byte	W04
	.byte		N08   , As1 
	.byte	W08
	.byte		N04   , As1 , v064
	.byte	W04
	.byte		        Cn2 , v127
	.byte	W04
	.byte		MOD   , 34
	.byte		N24   , Cs2 
	.byte	W16
@ 030   ----------------------------------------
	.byte	W08
	.byte		MOD   , 0
	.byte		N08   , Dn2 
	.byte	W08
	.byte		        Ds2 
	.byte	W08
	.byte		        Ds2 , v064
	.byte	W08
	.byte		        Ds2 , v127
	.byte	W08
	.byte		        Ds2 , v064
	.byte	W08
	.byte		N04   , En2 , v127
	.byte	W04
	.byte		        Gs2 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		        Gs2 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		        Gs2 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
@ 031   ----------------------------------------
	.byte		N08   , En2 
	.byte	W08
	.byte		N04   , Cs2 
	.byte	W04
	.byte		        Dn2 
	.byte	W04
	.byte		        Ds2 
	.byte	W04
	.byte		        Fs2 
	.byte	W04
	.byte		        Ds2 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        Ds2 
	.byte	W04
	.byte		        Fs2 
	.byte	W04
	.byte		        Ds2 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        Ds2 
	.byte	W04
	.byte		        Fs2 
	.byte	W04
	.byte		        Ds2 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		N08   , Ds2 
	.byte	W08
	.byte		N04   , Cs2 
	.byte	W04
	.byte		        Ds2 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		        Gs2 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
@ 032   ----------------------------------------
	.byte		        Gs1 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        Gs1 
	.byte	W04
	.byte		        Fs1 
	.byte	W04
	.byte		        En1 
	.byte	W04
	.byte		        Gs1 
	.byte	W04
	.byte		        En1 
	.byte	W04
	.byte		        Cs1 
	.byte	W04
	.byte		N08   , Bn0 
	.byte	W08
	.byte		N04   , Cs1 
	.byte	W04
	.byte		        Dn1 
	.byte	W04
	.byte		        Ds1 
	.byte	W04
	.byte		        Dn1 
	.byte	W04
	.byte		        Ds1 
	.byte	W04
	.byte		        Fs1 
	.byte	W04
	.byte		        An1 
	.byte	W04
	.byte		        Cs2 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        Gn1 
	.byte	W04
	.byte		        Gs1 
	.byte	W04
	.byte		        Fs1 
	.byte	W04
	.byte		        Gs1 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
@ 033   ----------------------------------------
	.byte		        En2 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        Gs1 
	.byte	W04
	.byte		        En1 
	.byte	W04
	.byte		        Bn0 
	.byte	W04
	.byte		        En1 
	.byte	W04
	.byte		        Gs1 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		        Gs2 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		        Gs2 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		N08   , En2 
	.byte	W08
	.byte		N04   , Cs1 
	.byte	W04
	.byte		        Dn1 
	.byte	W04
	.byte		        Ds1 
	.byte	W04
	.byte		        Fs1 
	.byte	W04
	.byte		        An1 
	.byte	W04
	.byte		        Dn2 
	.byte	W04
@ 034   ----------------------------------------
	.byte		        Ds2 
	.byte	W04
	.byte		        Fs2 
	.byte	W04
	.byte		        Ds2 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        Ds2 
	.byte	W04
	.byte		        Fs2 
	.byte	W04
	.byte		        Ds2 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		N08   , Ds2 
	.byte	W08
	.byte		N04   , Cs2 
	.byte	W04
	.byte		        Ds2 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		        Gs2 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        Gs1 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        Gs1 
	.byte	W04
	.byte		        Fs1 
	.byte	W04
	.byte		        En1 
	.byte	W04
	.byte		        Gs1 
	.byte	W04
	.byte		        En1 
	.byte	W04
	.byte		        Cs1 
	.byte	W04
@ 035   ----------------------------------------
	.byte		N08   , Bn0 
	.byte	W08
	.byte		N04   , Cs1 
	.byte	W04
	.byte		        Dn1 
	.byte	W04
	.byte		        Ds1 
	.byte	W04
	.byte		        Dn1 
	.byte	W04
	.byte		        Ds1 
	.byte	W04
	.byte		        Fs1 
	.byte	W04
	.byte		        An1 
	.byte	W04
	.byte		        Fs1 
	.byte	W04
	.byte		        Ds1 
	.byte	W04
	.byte		        Bn0 
	.byte	W04
	.byte		MOD   , 34
	.byte		N16   , En1 
	.byte	W16
	.byte		MOD   , 0
	.byte		N08   , En1 , v064
	.byte	W08
	.byte		        Gs1 , v127
	.byte	W08
	.byte		N04   , An1 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        An1 
	.byte	W04
	.byte		        Gs1 
	.byte	W04
@ 036   ----------------------------------------
	.byte		        An1 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        An1 
	.byte	W04
	.byte		        Gs1 
	.byte	W04
	.byte		        An1 
	.byte	W04
	.byte		N08   , Cs2 
	.byte	W08
	.byte		N04   , An1 
	.byte	W04
	.byte		N08   , En1 
	.byte	W08
	.byte		        An1 
	.byte	W08
	.byte		N04   , Bn1 
	.byte	W04
	.byte		N08   , Dn2 
	.byte	W08
	.byte		N04   , Bn1 
	.byte	W04
	.byte		N08   , Gs1 
	.byte	W08
	.byte		        Bn1 
	.byte	W08
	.byte		N04   , An1 
	.byte	W04
	.byte		N08   , Cs2 
	.byte	W08
	.byte		N04   , An1 
	.byte	W04
@ 037   ----------------------------------------
	.byte		N16   , En1 
	.byte	W16
	.byte		N04   , An1 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        An1 
	.byte	W04
	.byte		        Gs1 
	.byte	W04
	.byte		        An1 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        An1 
	.byte	W04
	.byte		        Gs1 
	.byte	W04
	.byte		        An1 
	.byte	W04
	.byte		N08   , Cs2 
	.byte	W08
	.byte		N04   , An1 
	.byte	W04
	.byte		N08   , En1 
	.byte	W08
	.byte		        An1 
	.byte	W08
	.byte		N04   , Gs1 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        Gs1 
	.byte	W04
	.byte		        En1 
	.byte	W04
@ 038   ----------------------------------------
	.byte		        Ds1 
	.byte	W04
	.byte		        Fs1 
	.byte	W04
	.byte		        Ds1 
	.byte	W04
	.byte		        Bn0 
	.byte	W04
	.byte		        En1 
	.byte	W04
	.byte		        Ds1 
	.byte	W04
	.byte		        En1 
	.byte	W04
	.byte		        Fs1 
	.byte	W04
	.byte		        Gs1 
	.byte	W04
	.byte		        Fs1 
	.byte	W04
	.byte		        En1 
	.byte	W04
	.byte		        Bn0 
	.byte	W04
	.byte		        Cs1 
	.byte	W04
	.byte		        Cn1 
	.byte	W04
	.byte		        Cs1 
	.byte	W04
	.byte		        En1 
	.byte	W04
	.byte		        An1 
	.byte	W04
	.byte		        En1 
	.byte	W04
	.byte		        Cs1 
	.byte	W04
	.byte		        Fn1 
	.byte	W04
	.byte		        Fs1 
	.byte	W04
	.byte		        Fn1 
	.byte	W04
	.byte		        Fs1 
	.byte	W04
	.byte		        An1 
	.byte	W04
@ 039   ----------------------------------------
	.byte		N08   , Dn2 
	.byte	W08
	.byte		        Dn2 , v064
	.byte	W08
	.byte		N04   , Gn1 , v127
	.byte	W04
	.byte		        Fs1 
	.byte	W04
	.byte		        Gn1 
	.byte	W04
	.byte		        An1 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        An1 
	.byte	W04
	.byte		        Gn1 
	.byte	W04
	.byte		        Fs1 
	.byte	W04
	.byte		        En1 
	.byte	W04
	.byte		        Ds1 
	.byte	W04
	.byte		        En1 
	.byte	W04
	.byte		        Gn1 
	.byte	W04
	.byte		N08   , Cn2 
	.byte	W08
	.byte		        Cn2 , v064
	.byte	W08
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		        Ds2 
	.byte	W04
	.byte		        Cn2 
	.byte	W04
	.byte		        An1 
	.byte	W04
@ 040   ----------------------------------------
	.byte		        Fn1 
	.byte	W04
	.byte		        En1 
	.byte	W04
	.byte		        Ds1 
	.byte	W04
	.byte		        Cn1 
	.byte	W04
	.byte		        Dn1 
	.byte	W04
	.byte		        Cs1 
	.byte	W04
	.byte		        Dn1 
	.byte	W04
	.byte		        Fn1 
	.byte	W04
	.byte		N08   , As1 
	.byte	W08
	.byte		N04   , As1 , v064
	.byte	W04
	.byte		        Cn2 , v127
	.byte	W04
	.byte		MOD   , 34
	.byte		N24   , Cs2 
	.byte	W24
	.byte		MOD   , 0
	.byte		N08   , Dn2 
	.byte	W08
	.byte		        Ds2 
	.byte	W08
	.byte		        Ds2 , v064
	.byte	W08
@ 041   ----------------------------------------
	.byte		        Ds2 , v127
	.byte	W08
	.byte		        Ds2 , v064
	.byte	W08
	.byte		        En2 , v127
	.byte	W08
	.byte		        En2 , v056
	.byte	W08
	.byte		        Ds2 , v127
	.byte	W08
	.byte		        Ds2 , v056
	.byte	W08
	.byte		        Dn2 , v127
	.byte	W08
	.byte		        Dn2 , v056
	.byte	W08
	.byte		        Ds2 , v127
	.byte	W08
	.byte		        Ds2 , v056
	.byte	W08
	.byte		        En2 , v127
	.byte	W08
	.byte		        En2 , v056
	.byte	W08
@ 042   ----------------------------------------
	.byte		        Ds2 , v127
	.byte	W08
	.byte		        Ds2 , v056
	.byte	W08
	.byte		        Dn2 , v127
	.byte	W08
	.byte		        Dn2 , v056
	.byte	W08
	.byte		        Ds2 , v127
	.byte	W08
	.byte		        Ds2 , v056
	.byte	W08
	.byte		N12   , En1 , v127
	.byte	W12
	.byte		N04   , En1 , v052
	.byte	W04
	.byte		N08   , Gs1 , v096
	.byte	W08
	.byte		N12   , Bn0 , v127
	.byte	W12
	.byte		N04   , Bn0 , v052
	.byte	W04
	.byte		N08   , Gs1 , v096
	.byte	W08
@ 043   ----------------------------------------
	.byte	PATT
	 .word	ch54_1_002
@ 044   ----------------------------------------
	.byte		N12   , En1 , v127
	.byte	W12
	.byte		N04   , En1 , v052
	.byte	W04
	.byte		N08   , Gs1 , v096
	.byte	W08
	.byte		N12   , Bn0 , v127
	.byte	W12
	.byte		N04   , Bn0 , v052
	.byte	W04
	.byte		N08   , Gs1 , v096
	.byte	W56
	.byte	GOTO
	 .word	ch54_1_B1
ch54_1_B2:
@ 045   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

ch54_2:
	.byte		VOL   , 127*ch54_mvl/mxv
	.byte	KEYSH , ch54_key+0
ch54_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 36
	.byte	W16
	.byte		N08   , Bn1 , v096
	.byte	W24
	.byte		N08   
	.byte	W24
	.byte		N08   
	.byte	W24
	.byte		N08   
	.byte	W08
@ 001   ----------------------------------------
ch54_2_001:
	.byte	W16
	.byte		N08   , Fs1 , v096
	.byte	W24
	.byte		N08   
	.byte	W24
	.byte		        Bn1 
	.byte	W24
	.byte		N08   
	.byte	W08
	.byte	PEND
@ 002   ----------------------------------------
ch54_2_002:
	.byte	W16
	.byte		N08   , Bn1 , v127
	.byte	W24
	.byte		N08   
	.byte	W24
	.byte		N08   
	.byte	W24
	.byte		N08   
	.byte	W08
	.byte	PEND
@ 003   ----------------------------------------
ch54_2_003:
	.byte	W16
	.byte		N08   , Fs1 , v127
	.byte	W24
	.byte		N08   
	.byte	W48
	.byte		        Bn1 
	.byte	W08
	.byte	PEND
@ 004   ----------------------------------------
ch54_2_004:
	.byte	W16
	.byte		N08   , En1 , v096
	.byte	W24
	.byte		N08   
	.byte	W24
	.byte		        Bn1 
	.byte	W24
	.byte		N08   
	.byte	W08
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	ch54_2_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	ch54_2_004
@ 007   ----------------------------------------
	.byte	W16
	.byte		N08   , Fs1 , v096
	.byte	W24
	.byte		N08   
	.byte	W48
	.byte		        Bn1 
	.byte	W08
@ 008   ----------------------------------------
ch54_2_008:
	.byte	W16
	.byte		N08   , Bn1 , v096
	.byte	W24
	.byte		N08   
	.byte	W24
	.byte		N08   
	.byte	W24
	.byte		N08   
	.byte	W08
	.byte	PEND
@ 009   ----------------------------------------
	.byte	PATT
	 .word	ch54_2_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	ch54_2_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	ch54_2_003
@ 012   ----------------------------------------
	.byte	PATT
	 .word	ch54_2_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	ch54_2_001
@ 014   ----------------------------------------
	.byte	PATT
	 .word	ch54_2_004
@ 015   ----------------------------------------
ch54_2_015:
	.byte	W16
	.byte		N08   , Fs1 , v096
	.byte	W24
	.byte		N08   
	.byte	W24
	.byte		N08   
	.byte	W24
	.byte		N08   
	.byte	W08
	.byte	PEND
@ 016   ----------------------------------------
	.byte	PATT
	 .word	ch54_2_015
@ 017   ----------------------------------------
	.byte	PATT
	 .word	ch54_2_008
@ 018   ----------------------------------------
ch54_2_018:
	.byte	W16
	.byte		N08   , Bn1 , v096
	.byte	W24
	.byte		N08   
	.byte	W56
	.byte	PEND
@ 019   ----------------------------------------
	.byte	W36
	.byte		VOICE , 86
	.byte		N44   , Cn2 , v104
	.byte	W44
	.byte		VOICE , 80
	.byte		N08   , En1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Gs1 , v096
	.byte	W08
@ 020   ----------------------------------------
	.byte		VOICE , 80
	.byte		N08   , Bn1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Gs1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , En1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Gs1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , Bn1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Gs1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , Bn1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Fs1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , Fs1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Fs1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , Bn1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Fs1 , v096
	.byte	W08
@ 021   ----------------------------------------
	.byte		VOICE , 80
	.byte		N08   , Fs1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Fs1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , En1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Gs1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , Bn1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Gs1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , En1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Gs1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , Bn1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Gs1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , Bn1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Fs1 , v096
	.byte	W08
@ 022   ----------------------------------------
	.byte		VOICE , 80
	.byte		N08   , Fs1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Fs1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , En1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Gs1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , Bn1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Gs1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , En1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Gs1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , Bn1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Gs1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , En1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Gs1 , v096
	.byte	W08
@ 023   ----------------------------------------
ch54_2_023:
	.byte		VOICE , 80
	.byte		N08   , Bn1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Gs1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , Bn1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Fs1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , Fs1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Fs1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , Bn1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Fs1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , Fs1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Fs1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , En1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Gs1 , v096
	.byte	W08
	.byte	PEND
@ 024   ----------------------------------------
ch54_2_024:
	.byte		VOICE , 80
	.byte		N08   , Bn1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Gs1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , En1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Gs1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , Bn1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Gs1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , Bn1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Fs1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , Fs1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Fs1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , En1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Gs1 , v096
	.byte	W08
	.byte	PEND
@ 025   ----------------------------------------
	.byte		VOICE , 80
	.byte		N08   , Bn1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Gs1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , An1 , v127
	.byte	W08
	.byte		VOICE , 39
	.byte		N08   , An1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , En1 , v127
	.byte	W08
	.byte		VOICE , 39
	.byte		N08   , An1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , An1 , v127
	.byte	W08
	.byte		VOICE , 39
	.byte		N08   , An1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , En1 , v127
	.byte	W08
	.byte		VOICE , 39
	.byte		N08   , An1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , En1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Bn1 , v096
	.byte	W08
@ 026   ----------------------------------------
	.byte		VOICE , 80
	.byte		N08   , Bn1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Bn1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , An1 , v127
	.byte	W08
	.byte		VOICE , 39
	.byte		N08   , An1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , En1 , v127
	.byte	W08
	.byte		VOICE , 39
	.byte		N08   , An1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , An1 , v127
	.byte	W08
	.byte		VOICE , 39
	.byte		N08   , An1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , En1 , v127
	.byte	W08
	.byte		VOICE , 39
	.byte		N08   , An1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , An1 , v127
	.byte	W08
	.byte		VOICE , 39
	.byte		N08   , An1 , v096
	.byte	W08
@ 027   ----------------------------------------
	.byte		VOICE , 80
	.byte		N08   , En1 , v127
	.byte	W08
	.byte		VOICE , 39
	.byte		N08   , An1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , Bn1 , v127
	.byte	W08
	.byte		VOICE , 39
	.byte		N08   , Bn1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , Fs1 , v127
	.byte	W08
	.byte		VOICE , 39
	.byte		N08   , Bn1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , En1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Gs1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , Bn0 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Gs1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , An1 , v127
	.byte	W08
	.byte		VOICE , 39
	.byte		N08   , An1 , v096
	.byte	W08
@ 028   ----------------------------------------
	.byte		VOICE , 80
	.byte		N08   , En1 , v127
	.byte	W08
	.byte		VOICE , 39
	.byte		N08   , An1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , Dn2 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Fs1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , An1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Fs1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , Gn1 , v127
	.byte	W08
	.byte		VOICE , 39
	.byte		N08   , Gn1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , Dn1 , v127
	.byte	W08
	.byte		VOICE , 39
	.byte		N08   , Gn1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 39
	.byte		N08   , Gn1 , v096
	.byte	W08
@ 029   ----------------------------------------
	.byte		VOICE , 80
	.byte		N08   , Gn1 , v127
	.byte	W08
	.byte		VOICE , 39
	.byte		N08   , Gn1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , Fn1 , v127
	.byte	W08
	.byte		VOICE , 39
	.byte		N08   , Fn1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 39
	.byte		N08   , Fn1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , As1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Dn1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , Fn1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Dn1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , An1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Cs1 , v096
	.byte	W08
@ 030   ----------------------------------------
	.byte		VOICE , 80
	.byte		N08   , En1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Cs1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , Bn1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Ds1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , Fs1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Ds1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , En1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Gs1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , Bn1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Gs1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , En1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Gs1 , v096
	.byte	W08
@ 031   ----------------------------------------
	.byte	PATT
	 .word	ch54_2_023
@ 032   ----------------------------------------
	.byte	PATT
	 .word	ch54_2_024
@ 033   ----------------------------------------
	.byte		VOICE , 80
	.byte		N08   , Bn1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Gs1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , En1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Gs1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , Bn1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Gs1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , En1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Gs1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , Bn1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Gs1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , Bn1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Fs1 , v096
	.byte	W08
@ 034   ----------------------------------------
	.byte		VOICE , 80
	.byte		N08   , Fs1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Fs1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , Bn1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Fs1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , Fs1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Fs1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , En1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Gs1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , Bn1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Gs1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , En1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Gs1 , v096
	.byte	W08
@ 035   ----------------------------------------
	.byte		VOICE , 80
	.byte		N08   , Bn1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Gs1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , Bn1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Fs1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , Fs1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Fs1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , En1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Gs1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , Bn1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Gs1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , An1 , v127
	.byte	W08
	.byte		VOICE , 39
	.byte		N08   , An1 , v096
	.byte	W08
@ 036   ----------------------------------------
	.byte		VOICE , 80
	.byte		N08   , En1 , v127
	.byte	W08
	.byte		VOICE , 39
	.byte		N08   , An1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , An1 , v127
	.byte	W08
	.byte		VOICE , 39
	.byte		N08   , An1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , En1 , v127
	.byte	W08
	.byte		VOICE , 39
	.byte		N08   , An1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , En1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Bn1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , Bn1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Bn1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , An1 , v127
	.byte	W08
	.byte		VOICE , 39
	.byte		N08   , An1 , v096
	.byte	W08
@ 037   ----------------------------------------
	.byte		VOICE , 80
	.byte		N08   , En1 , v127
	.byte	W08
	.byte		VOICE , 39
	.byte		N08   , An1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , An1 , v127
	.byte	W08
	.byte		VOICE , 39
	.byte		N08   , An1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , En1 , v127
	.byte	W08
	.byte		VOICE , 39
	.byte		N08   , An1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , An1 , v127
	.byte	W08
	.byte		VOICE , 39
	.byte		N08   , An1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , En1 , v127
	.byte	W08
	.byte		VOICE , 39
	.byte		N08   , An1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , Bn1 , v127
	.byte	W08
	.byte		VOICE , 39
	.byte		N08   , Bn1 , v096
	.byte	W08
@ 038   ----------------------------------------
	.byte		VOICE , 80
	.byte		N08   , Fs1 , v127
	.byte	W08
	.byte		VOICE , 39
	.byte		N08   , Bn1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , En1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Gs1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , Bn0 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Gs1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , An1 , v127
	.byte	W08
	.byte		VOICE , 39
	.byte		N08   , An1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , En1 , v127
	.byte	W08
	.byte		VOICE , 39
	.byte		N08   , An1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , Dn2 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Fs1 , v096
	.byte	W08
@ 039   ----------------------------------------
	.byte		VOICE , 80
	.byte		N08   , An1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Fs1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , Gn1 , v127
	.byte	W08
	.byte		VOICE , 39
	.byte		N08   , Gn1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , Dn1 , v127
	.byte	W08
	.byte		VOICE , 39
	.byte		N08   , Gn1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 39
	.byte		N08   , Gn1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , Gn1 , v127
	.byte	W08
	.byte		VOICE , 39
	.byte		N08   , Gn1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , Fn1 , v127
	.byte	W08
	.byte		VOICE , 39
	.byte		N08   , Fn1 , v096
	.byte	W08
@ 040   ----------------------------------------
	.byte		VOICE , 80
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 39
	.byte		N08   , Fn1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , As1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Dn1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , Fn1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Dn1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , An1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Cs1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , En1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Cs1 , v096
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , Bn1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Ds1 , v096
	.byte	W08
@ 041   ----------------------------------------
	.byte		VOICE , 80
	.byte		N08   , Fs1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N08   , Ds1 , v096
	.byte	W08
	.byte		VOICE , 36
	.byte		N08   , Gs1 , v127
	.byte	W08
	.byte		        Gs1 , v056
	.byte	W08
	.byte		        Fs1 , v127
	.byte	W08
	.byte		        Fs1 , v056
	.byte	W08
	.byte		        Fn1 , v127
	.byte	W08
	.byte		        Fn1 , v056
	.byte	W08
	.byte		        Fs1 , v127
	.byte	W08
	.byte		N04   , Fs2 
	.byte	W04
	.byte		        Gn2 
	.byte	W04
	.byte		N08   , Gs2 
	.byte	W08
	.byte		        Gs2 , v056
	.byte	W08
@ 042   ----------------------------------------
	.byte		        Fs2 , v127
	.byte	W08
	.byte		        Fs2 , v056
	.byte	W08
	.byte		        Fn2 , v127
	.byte	W08
	.byte		        Fn2 , v056
	.byte	W08
	.byte		        Fs2 , v127
	.byte	W08
	.byte		        Fs2 , v056
	.byte	W08
	.byte		VOICE , 61
	.byte		N16   , Cn2 , v127
	.byte	W16
	.byte		VOICE , 36
	.byte		N08   , Bn1 , v096
	.byte	W24
	.byte		N08   
	.byte	W08
@ 043   ----------------------------------------
	.byte	W16
	.byte		N08   
	.byte	W24
	.byte		N08   
	.byte	W48
	.byte		N08   
	.byte	W08
@ 044   ----------------------------------------
	.byte	PATT
	 .word	ch54_2_018
	.byte	GOTO
	 .word	ch54_2_B1
ch54_2_B2:
@ 045   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

ch54_3:
	.byte		VOL   , 127*ch54_mvl/mxv
	.byte	KEYSH , ch54_key+0
ch54_3_B1:
@ 000   ----------------------------------------
ch54_3_000:
	.byte		VOICE , 36
	.byte		N12   , Bn1 , v127
	.byte	W12
	.byte		N04   , Cs2 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        As1 
	.byte	W04
	.byte		N12   , Bn1 
	.byte	W12
	.byte		N04   , Cs2 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        As1 
	.byte	W04
	.byte		N08   , Bn1 
	.byte	W08
	.byte		        En2 
	.byte	W08
	.byte		        Bn1 
	.byte	W08
	.byte		        Gs1 
	.byte	W08
	.byte		        Bn1 
	.byte	W08
	.byte		        En2 
	.byte	W08
	.byte	PEND
@ 001   ----------------------------------------
ch54_3_001:
	.byte		N08   , Ds2 , v127
	.byte	W08
	.byte		        Fs2 
	.byte	W08
	.byte		        Ds2 
	.byte	W08
	.byte		        Bn1 
	.byte	W08
	.byte		        Ds2 
	.byte	W08
	.byte		        Fs2 
	.byte	W08
	.byte		        En2 
	.byte	W08
	.byte		        Gs2 
	.byte	W08
	.byte		        En2 
	.byte	W08
	.byte		        Bn1 
	.byte	W08
	.byte		        Bn1 , v052
	.byte	W08
	.byte		        Bn1 , v044
	.byte	W08
	.byte	PEND
@ 002   ----------------------------------------
ch54_3_002:
	.byte		N12   , Bn1 , v127
	.byte	W12
	.byte		N04   , Cs2 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        As1 
	.byte	W04
	.byte		N12   , Bn1 
	.byte	W12
	.byte		N04   , Cs2 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        As1 
	.byte	W04
	.byte		N08   , Bn1 
	.byte	W08
	.byte		        En2 
	.byte	W08
	.byte		        Bn1 
	.byte	W08
	.byte		        Gs1 
	.byte	W08
	.byte		        Bn1 
	.byte	W08
	.byte		        En2 
	.byte	W08
	.byte	PEND
@ 003   ----------------------------------------
ch54_3_003:
	.byte		N08   , Ds2 , v127
	.byte	W08
	.byte		        Fs2 
	.byte	W08
	.byte		        Ds2 
	.byte	W08
	.byte		        Bn1 
	.byte	W08
	.byte		        Ds2 
	.byte	W08
	.byte		        Fs2 
	.byte	W08
	.byte		N16   , En2 
	.byte	W16
	.byte		VOICE , 64
	.byte		N08   , En2 , v080
	.byte	W08
	.byte		N24   , En2 , v127
	.byte	W24
	.byte	PEND
@ 004   ----------------------------------------
ch54_3_004:
	.byte		VOICE , 36
	.byte		N12   , Cs2 , v127
	.byte	W12
	.byte		N04   , An1 
	.byte	W04
	.byte		        Cs2 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		N08   , An2 
	.byte	W08
	.byte		        Gs2 
	.byte	W08
	.byte		        Fs2 
	.byte	W08
	.byte		N12   , Bn1 
	.byte	W12
	.byte		N04   , Gs1 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		N08   , Gs2 
	.byte	W08
	.byte		        Fs2 
	.byte	W08
	.byte		        En2 
	.byte	W08
	.byte	PEND
@ 005   ----------------------------------------
ch54_3_005:
	.byte		N04   , Ds2 , v127
	.byte	W04
	.byte		        Fs2 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        Fs2 
	.byte	W04
	.byte		        Ds2 
	.byte	W04
	.byte		        Fs2 
	.byte	W04
	.byte		        An2 
	.byte	W04
	.byte		        Fs2 
	.byte	W04
	.byte		        Ds2 
	.byte	W04
	.byte		        Fs2 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		        Ds2 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		        Gs2 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        Dn2 
	.byte	W04
	.byte		        Gs2 
	.byte	W04
	.byte		        Dn2 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        Gs1 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        Cn2 
	.byte	W04
	.byte	PEND
@ 006   ----------------------------------------
ch54_3_006:
	.byte		N12   , Cs2 , v127
	.byte	W12
	.byte		N04   , An1 
	.byte	W04
	.byte		        Cs2 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		N08   , An2 
	.byte	W08
	.byte		        Gs2 
	.byte	W08
	.byte		        Fs2 
	.byte	W08
	.byte		N12   , Bn1 
	.byte	W12
	.byte		N04   , Gs1 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		N08   , Gs2 
	.byte	W08
	.byte		        Fs2 
	.byte	W08
	.byte		        En2 
	.byte	W08
	.byte	PEND
@ 007   ----------------------------------------
	.byte	PATT
	 .word	ch54_3_003
@ 008   ----------------------------------------
	.byte	PATT
	 .word	ch54_3_000
@ 009   ----------------------------------------
	.byte	PATT
	 .word	ch54_3_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	ch54_3_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	ch54_3_003
@ 012   ----------------------------------------
	.byte	PATT
	 .word	ch54_3_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	ch54_3_005
@ 014   ----------------------------------------
	.byte	PATT
	 .word	ch54_3_006
@ 015   ----------------------------------------
	.byte		N08   , Ds2 , v127
	.byte	W08
	.byte		        Fs2 
	.byte	W08
	.byte		        Ds2 
	.byte	W08
	.byte		        Bn1 
	.byte	W08
	.byte		        Ds2 
	.byte	W08
	.byte		        Fs2 
	.byte	W08
	.byte		MOD   , 34
	.byte		N28   , An2 
	.byte	W28
	.byte		MOD   , 0
	.byte		N04   , Bn2 
	.byte	W04
	.byte		        An2 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        An2 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
@ 016   ----------------------------------------
	.byte		        An2 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        An2 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        An2 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        An2 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        An2 
	.byte	W04
	.byte		        Gs2 
	.byte	W04
	.byte		        Fs2 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		        Ds2 
	.byte	W04
	.byte		        Cs2 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        An1 
	.byte	W04
	.byte		N20   , Bn1 
	.byte	W20
	.byte		N04   , An1 
	.byte	W04
	.byte		        Gs1 
	.byte	W04
	.byte		        Fs1 
	.byte	W04
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	W88
	.byte		N24   , Bn1 , v048
	.byte	W08
@ 019   ----------------------------------------
	.byte	W16
	.byte		N32   , Cs2 
	.byte	W32
	.byte		        Ds2 
	.byte	W32
	.byte		VOICE , 6
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
@ 020   ----------------------------------------
	.byte		VOICE , 61
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
	.byte		VOICE , 61
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
	.byte		VOICE , 61
	.byte		N16   , Cn2 , v127
	.byte	W16
	.byte		VOICE , 6
	.byte		N12   
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
	.byte		VOICE , 61
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
	.byte		VOICE , 61
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
@ 021   ----------------------------------------
	.byte		VOICE , 61
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
	.byte		VOICE , 6
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
	.byte		VOICE , 61
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
	.byte		VOICE , 61
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
	.byte		VOICE , 61
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
	.byte		VOICE , 61
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
@ 022   ----------------------------------------
	.byte		VOICE , 61
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
	.byte		VOICE , 61
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   
	.byte	W04
	.byte		VOICE , 61
	.byte		N04   
	.byte	W04
	.byte		VOICE , 38
	.byte		N08   , Cn2 , v080
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		VOICE , 6
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
	.byte		VOICE , 61
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
	.byte		VOICE , 61
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
@ 023   ----------------------------------------
ch54_3_023:
	.byte		VOICE , 61
	.byte		N16   , Cn2 , v127
	.byte	W16
	.byte		VOICE , 6
	.byte		N12   
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
	.byte		VOICE , 61
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
	.byte		VOICE , 61
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
	.byte		VOICE , 61
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
	.byte		VOICE , 6
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
	.byte	PEND
@ 024   ----------------------------------------
ch54_3_024:
	.byte		VOICE , 61
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
	.byte		VOICE , 61
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
	.byte		VOICE , 61
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
	.byte		VOICE , 61
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
	.byte		VOICE , 61
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
	.byte		VOICE , 61
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   
	.byte	W04
	.byte	PEND
@ 025   ----------------------------------------
	.byte		VOICE , 61
	.byte		N16   
	.byte	W16
	.byte		VOICE , 6
	.byte		N12   
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
	.byte		VOICE , 61
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
	.byte		VOICE , 61
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
	.byte		VOICE , 61
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
	.byte		VOICE , 61
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
@ 026   ----------------------------------------
ch54_3_026:
	.byte		VOICE , 61
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
	.byte		VOICE , 61
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
	.byte		VOICE , 61
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
	.byte		VOICE , 6
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
	.byte		VOICE , 61
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
	.byte		VOICE , 61
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
	.byte	PEND
@ 027   ----------------------------------------
	.byte		VOICE , 61
	.byte		N16   , Cn2 , v127
	.byte	W16
	.byte		VOICE , 6
	.byte		N12   
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
	.byte		VOICE , 61
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
	.byte		VOICE , 61
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   
	.byte	W04
	.byte		VOICE , 61
	.byte		N08   
	.byte	W08
	.byte		VOICE , 38
	.byte		N08   
	.byte	W08
	.byte		VOICE , 6
	.byte		N12   
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
@ 028   ----------------------------------------
ch54_3_028:
	.byte		VOICE , 61
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
	.byte		VOICE , 61
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
	.byte		VOICE , 61
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
	.byte		VOICE , 61
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
	.byte		VOICE , 61
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
	.byte		VOICE , 61
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
	.byte	PEND
@ 029   ----------------------------------------
	.byte		VOICE , 61
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
	.byte		VOICE , 61
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
	.byte		VOICE , 61
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
	.byte		VOICE , 61
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
	.byte		VOICE , 61
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
	.byte		VOICE , 6
	.byte		N16   , Cn2 , v127
	.byte	W16
@ 030   ----------------------------------------
	.byte		VOICE , 61
	.byte		N16   
	.byte	W16
	.byte		N12   
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v080
	.byte	W04
	.byte		VOICE , 61
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 6
	.byte		N12   
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
	.byte		VOICE , 61
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
	.byte		VOICE , 61
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
@ 031   ----------------------------------------
	.byte	PATT
	 .word	ch54_3_023
@ 032   ----------------------------------------
	.byte	PATT
	 .word	ch54_3_024
@ 033   ----------------------------------------
	.byte		VOICE , 61
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 38
	.byte		N08   , Cn2 , v080
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		VOICE , 6
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
	.byte		VOICE , 61
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
	.byte		VOICE , 61
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
	.byte		VOICE , 61
	.byte		N16   , Cn2 , v127
	.byte	W16
	.byte		VOICE , 6
	.byte		N12   
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
@ 034   ----------------------------------------
	.byte	PATT
	 .word	ch54_3_026
@ 035   ----------------------------------------
	.byte		VOICE , 61
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
	.byte		VOICE , 61
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
	.byte		VOICE , 61
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
	.byte		VOICE , 61
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   
	.byte	W04
	.byte		VOICE , 61
	.byte		N16   
	.byte	W16
	.byte		VOICE , 6
	.byte		N12   
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
@ 036   ----------------------------------------
	.byte	PATT
	 .word	ch54_3_028
@ 037   ----------------------------------------
	.byte		VOICE , 61
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
	.byte		VOICE , 6
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
	.byte		VOICE , 61
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
	.byte		VOICE , 61
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
	.byte		VOICE , 61
	.byte		N16   , Cn2 , v127
	.byte	W16
	.byte		VOICE , 6
	.byte		N12   
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
@ 038   ----------------------------------------
	.byte		VOICE , 61
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
	.byte		VOICE , 61
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   
	.byte	W04
	.byte		VOICE , 61
	.byte		N08   
	.byte	W08
	.byte		VOICE , 38
	.byte		N08   
	.byte	W08
	.byte		VOICE , 6
	.byte		N12   
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
	.byte		VOICE , 61
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
	.byte		VOICE , 61
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
@ 039   ----------------------------------------
	.byte	PATT
	 .word	ch54_3_028
@ 040   ----------------------------------------
	.byte		VOICE , 61
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
	.byte		VOICE , 61
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
	.byte		VOICE , 61
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v068
	.byte	W04
	.byte		VOICE , 6
	.byte		N16   , Cn2 , v127
	.byte	W16
	.byte		VOICE , 61
	.byte		N16   
	.byte	W16
	.byte		N12   
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v080
	.byte	W04
@ 041   ----------------------------------------
	.byte		VOICE , 61
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 80
	.byte		N08   , Bn1 
	.byte	W08
	.byte		VOICE , 40
	.byte		N04   , Ds1 , v096
	.byte	W04
	.byte		VOICE , 0
	.byte	W04
	.byte		        80
	.byte		N08   , Fs1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N04   , Ds1 , v096
	.byte	W04
	.byte		VOICE , 0
	.byte	W04
	.byte		        80
	.byte		N08   , Bn1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N04   , Ds1 , v096
	.byte	W04
	.byte		VOICE , 0
	.byte	W04
	.byte		        80
	.byte		N08   , Fs1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N04   , Ds1 , v096
	.byte	W04
	.byte		VOICE , 0
	.byte	W04
	.byte		        80
	.byte		N08   , Bn1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N04   , Ds1 , v096
	.byte	W04
	.byte		VOICE , 0
	.byte	W04
@ 042   ----------------------------------------
	.byte		        80
	.byte		N08   , Fs1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N04   , Ds1 , v096
	.byte	W04
	.byte		VOICE , 0
	.byte	W04
	.byte		        80
	.byte		N08   , Bn1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N04   , Ds1 , v096
	.byte	W04
	.byte		VOICE , 0
	.byte	W04
	.byte		        80
	.byte		N08   , Fs1 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N04   , Ds1 , v096
	.byte	W04
	.byte		VOICE , 0
	.byte	W04
	.byte		        6
	.byte		TIE   , Cn2 , v127
	.byte	W48
@ 043   ----------------------------------------
	.byte	W96
@ 044   ----------------------------------------
	.byte	W48
	.byte		EOT   
	.byte	W48
	.byte	GOTO
	 .word	ch54_3_B1
ch54_3_B2:
@ 045   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

ch54_4:
	.byte		VOL   , 127*ch54_mvl/mxv
	.byte	KEYSH , ch54_key+0
ch54_4_B1:
@ 000   ----------------------------------------
ch54_4_000:
	.byte		VOICE , 0
	.byte	W12
	.byte		        36
	.byte		N12   , Bn1 , v060
	.byte	W12
	.byte		N04   , Cs2 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        As1 
	.byte	W04
	.byte		N12   , Bn1 
	.byte	W12
	.byte		N04   , Cs2 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        As1 
	.byte	W04
	.byte		N08   , Bn1 
	.byte	W08
	.byte		        En2 
	.byte	W08
	.byte		        Bn1 
	.byte	W08
	.byte		        Gs1 
	.byte	W08
	.byte		        Bn1 
	.byte	W04
	.byte	PEND
@ 001   ----------------------------------------
ch54_4_001:
	.byte	W04
	.byte		N08   , En2 , v060
	.byte	W08
	.byte		        Ds2 
	.byte	W08
	.byte		        Fs2 
	.byte	W08
	.byte		        Ds2 
	.byte	W08
	.byte		        Bn1 
	.byte	W08
	.byte		        Ds2 
	.byte	W08
	.byte		        Fs2 
	.byte	W08
	.byte		        En2 
	.byte	W08
	.byte		        Gs2 
	.byte	W08
	.byte		        En2 
	.byte	W08
	.byte		        Bn1 
	.byte	W08
	.byte		VOICE , 0
	.byte	W04
	.byte	PEND
@ 002   ----------------------------------------
ch54_4_002:
	.byte	W12
	.byte		VOICE , 36
	.byte		N12   , Bn1 , v060
	.byte	W12
	.byte		N04   , Cs2 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        As1 
	.byte	W04
	.byte		N12   , Bn1 
	.byte	W12
	.byte		N04   , Cs2 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        As1 
	.byte	W04
	.byte		N08   , Bn1 
	.byte	W08
	.byte		        En2 
	.byte	W08
	.byte		        Bn1 
	.byte	W08
	.byte		        Gs1 
	.byte	W08
	.byte		        Bn1 
	.byte	W04
	.byte	PEND
@ 003   ----------------------------------------
ch54_4_003:
	.byte	W04
	.byte		N08   , En2 , v060
	.byte	W08
	.byte		        Ds2 
	.byte	W08
	.byte		        Fs2 
	.byte	W08
	.byte		        Ds2 
	.byte	W08
	.byte		        Bn1 
	.byte	W08
	.byte		        Ds2 
	.byte	W08
	.byte		        Fs2 
	.byte	W08
	.byte		        En2 
	.byte	W36
	.byte	PEND
@ 004   ----------------------------------------
ch54_4_004:
	.byte	W12
	.byte		N12   , Cs2 , v060
	.byte	W12
	.byte		N04   , An1 
	.byte	W04
	.byte		        Cs2 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		N08   , An2 
	.byte	W08
	.byte		        Gs2 
	.byte	W08
	.byte		        Fs2 
	.byte	W08
	.byte		N12   , Bn1 
	.byte	W12
	.byte		N04   , Gs1 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		N08   , Gs2 
	.byte	W08
	.byte		        Fs2 
	.byte	W04
	.byte	PEND
@ 005   ----------------------------------------
ch54_4_005:
	.byte	W04
	.byte		N08   , En2 , v060
	.byte	W08
	.byte		N04   , Ds2 
	.byte	W04
	.byte		        Fs2 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        Fs2 
	.byte	W04
	.byte		        Ds2 
	.byte	W04
	.byte		        Fs2 
	.byte	W04
	.byte		        An2 
	.byte	W04
	.byte		        Fs2 
	.byte	W04
	.byte		        Ds2 
	.byte	W04
	.byte		        Fs2 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		        Ds2 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		        Gs2 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        Dn2 
	.byte	W04
	.byte		        Gs2 
	.byte	W04
	.byte		        Dn2 
	.byte	W04
	.byte		N16   , Bn1 
	.byte	W04
	.byte	PEND
@ 006   ----------------------------------------
	.byte	PATT
	 .word	ch54_4_004
@ 007   ----------------------------------------
	.byte	PATT
	 .word	ch54_4_003
@ 008   ----------------------------------------
	.byte	PATT
	 .word	ch54_4_000
@ 009   ----------------------------------------
	.byte	PATT
	 .word	ch54_4_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	ch54_4_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	ch54_4_003
@ 012   ----------------------------------------
	.byte	PATT
	 .word	ch54_4_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	ch54_4_005
@ 014   ----------------------------------------
	.byte	PATT
	 .word	ch54_4_004
@ 015   ----------------------------------------
	.byte	W04
	.byte		N08   , En2 , v060
	.byte	W08
	.byte		        Ds2 
	.byte	W08
	.byte		        Fs2 
	.byte	W08
	.byte		        Ds2 
	.byte	W08
	.byte		        Bn1 
	.byte	W08
	.byte		        Ds2 
	.byte	W08
	.byte		        Fs2 
	.byte	W08
	.byte		N28   , An2 
	.byte	W28
	.byte		N04   , Bn2 
	.byte	W04
	.byte		        An2 
	.byte	W04
@ 016   ----------------------------------------
	.byte		        Bn2 
	.byte	W04
	.byte		        An2 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        An2 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        An2 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        An2 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        An2 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        An2 
	.byte	W04
	.byte		        Gs2 
	.byte	W04
	.byte		        Fs2 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		        Ds2 
	.byte	W04
	.byte		        Cs2 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        An1 
	.byte	W04
	.byte		N16   , Bn1 
	.byte	W16
	.byte		N04   , An1 
	.byte	W04
@ 017   ----------------------------------------
	.byte		        Gs1 
	.byte	W04
	.byte		        Fs1 
	.byte	W04
	.byte		N20   , En1 
	.byte	W88
@ 018   ----------------------------------------
	.byte	W76
	.byte		N24   , Bn1 , v127
	.byte	W20
@ 019   ----------------------------------------
	.byte	W04
	.byte		MOD   , 34
	.byte		N28   , Cs2 
	.byte	W28
	.byte		MOD   , 0
	.byte		N04   , Dn2 
	.byte	W04
	.byte		MOD   , 34
	.byte		N48   , Ds2 
	.byte	W48
	.byte		VOICE , 38
	.byte		MOD   , 0
	.byte		N04   , Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
@ 020   ----------------------------------------
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v104
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
@ 021   ----------------------------------------
ch54_4_021:
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		N04   , Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v104
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte	PEND
@ 022   ----------------------------------------
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v104
	.byte	W08
	.byte		        Cn2 , v064
	.byte	W08
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		N04   , Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
@ 023   ----------------------------------------
ch54_4_023:
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v104
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		N04   , Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte	PEND
@ 024   ----------------------------------------
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v104
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N12   , Cn2 , v104
	.byte	W08
@ 025   ----------------------------------------
	.byte	W04
	.byte		N04   , Cn2 , v080
	.byte	W04
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		N04   , Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
@ 026   ----------------------------------------
ch54_4_026:
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		N04   , Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte	PEND
@ 027   ----------------------------------------
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v104
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v104
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		N08   , Cn2 , v104
	.byte	W08
	.byte		        Cn2 , v064
	.byte	W08
	.byte		N04   , Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
@ 028   ----------------------------------------
ch54_4_028:
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte	PEND
@ 029   ----------------------------------------
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		        Cn2 , v127
	.byte	W04
	.byte		VOICE , 36
	.byte		N04   , Gs1 
	.byte	W04
	.byte		MOD   , 34
	.byte		N24   , An1 
	.byte	W16
@ 030   ----------------------------------------
	.byte	W08
	.byte		MOD   , 0
	.byte		N08   , As1 
	.byte	W08
	.byte		        Bn1 
	.byte	W08
	.byte		        Bn1 , v064
	.byte	W08
	.byte		        Bn1 , v127
	.byte	W08
	.byte		VOICE , 61
	.byte		N12   , Bn1 , v064
	.byte	W12
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
@ 031   ----------------------------------------
	.byte	PATT
	 .word	ch54_4_023
@ 032   ----------------------------------------
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v104
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v104
	.byte	W08
@ 033   ----------------------------------------
	.byte		        Cn2 , v064
	.byte	W08
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		N04   , Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v104
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
@ 034   ----------------------------------------
	.byte	PATT
	 .word	ch54_4_026
@ 035   ----------------------------------------
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v104
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N12   , Cn2 , v104
	.byte	W12
	.byte		N04   , Cn2 , v080
	.byte	W04
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		N04   , Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
@ 036   ----------------------------------------
	.byte	PATT
	 .word	ch54_4_028
@ 037   ----------------------------------------
	.byte	PATT
	 .word	ch54_4_021
@ 038   ----------------------------------------
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v104
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		N08   , Cn2 , v104
	.byte	W08
	.byte		        Cn2 , v064
	.byte	W08
	.byte		N04   , Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
@ 039   ----------------------------------------
	.byte	PATT
	 .word	ch54_4_028
@ 040   ----------------------------------------
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		        Cn2 , v127
	.byte	W04
	.byte		VOICE , 36
	.byte		N04   , Gs1 
	.byte	W04
	.byte		MOD   , 34
	.byte		N24   , An1 
	.byte	W24
	.byte		MOD   , 0
	.byte		N08   , As1 
	.byte	W08
	.byte		        Bn1 
	.byte	W08
	.byte		        Bn1 , v064
	.byte	W08
@ 041   ----------------------------------------
	.byte		        Bn1 , v127
	.byte	W08
	.byte		VOICE , 61
	.byte		N08   , Bn1 , v064
	.byte	W08
	.byte		VOICE , 38
	.byte		N04   , Cn2 
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
@ 042   ----------------------------------------
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v104
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 80
	.byte		TIE   , En1 
	.byte	W48
@ 043   ----------------------------------------
	.byte	W96
@ 044   ----------------------------------------
	.byte	W48
	.byte		EOT   
	.byte	W48
	.byte	GOTO
	 .word	ch54_4_B1
ch54_4_B2:
@ 045   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

ch54:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	ch54_pri	@ Priority
	.byte	ch54_rev	@ Reverb.

	.word	ch54_grp

	.word	ch54_1
	.word	ch54_2
	.word	ch54_3
	.word	ch54_4

	.end
