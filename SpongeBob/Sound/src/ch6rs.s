	.include "MPlayDef.s"

	.equ	ch6rs_grp, voicegroup000
	.equ	ch6rs_pri, 128
	.equ	ch6rs_rev, reverb_set+50
	.equ	ch6rs_mvl, 127
	.equ	ch6rs_key, 0
	.equ	ch6rs_tbs, 1
	.equ	ch6rs_exg, 0
	.equ	ch6rs_cmp, 1

	.section .rodata
	.global	ch6rs
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

ch6rs_1:
	.byte		VOL   , 127*ch6rs_mvl/mxv
	.byte	KEYSH , ch6rs_key+0
ch6rs_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 100*ch6rs_tbs/2
	.byte		VOICE , 92
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Ds2 
	.byte	W04
	.byte		N12   , En2 
	.byte	W12
	.byte		N04   , Ds2 
	.byte	W04
	.byte		N12   , En2 
	.byte	W12
	.byte		N04   , An2 
	.byte	W04
	.byte		        Gn2 
	.byte	W04
	.byte		        Ds2 
	.byte	W04
	.byte		N12   , En2 
	.byte	W12
	.byte		N32   , Cn2 
	.byte	W32
@ 001   ----------------------------------------
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		        Dn2 
	.byte	W08
	.byte		        Ds2 
	.byte	W08
	.byte		N24   , En2 
	.byte	W24
	.byte		N08   , An1 
	.byte	W08
	.byte		        As1 
	.byte	W16
	.byte		        Gn1 
	.byte	W08
	.byte		        As1 
	.byte	W08
@ 002   ----------------------------------------
	.byte		N24   , An1 
	.byte	W64
	.byte		N04   , Ds2 
	.byte	W04
	.byte		N12   , En2 
	.byte	W12
	.byte		VOICE , 26
	.byte		N08   , Gs1 
	.byte	W08
	.byte		        Gs1 , v056
	.byte	W08
@ 003   ----------------------------------------
	.byte		        As1 , v127
	.byte	W08
	.byte		        As1 , v056
	.byte	W08
	.byte		        Bn1 , v127
	.byte	W08
	.byte		        Bn1 , v056
	.byte	W08
	.byte		VOICE , 16
	.byte		N08   , Cn2 , v060
	.byte	W08
	.byte		N04   , Cn2 , v052
	.byte	W04
	.byte		        Cn2 , v060
	.byte	W04
	.byte		N08   , En2 
	.byte	W08
	.byte		N04   , En2 , v052
	.byte	W04
	.byte		        En2 , v060
	.byte	W04
	.byte		N08   , An2 
	.byte	W08
	.byte		        An2 , v072
	.byte	W08
	.byte		        Gn2 , v060
	.byte	W08
	.byte		        En1 
	.byte	W08
@ 004   ----------------------------------------
	.byte		        Fn1 
	.byte	W08
	.byte		N04   , Fn1 , v052
	.byte	W04
	.byte		        Fn1 , v060
	.byte	W04
	.byte		N08   , An1 
	.byte	W08
	.byte		N04   , An1 , v052
	.byte	W04
	.byte		        An1 , v060
	.byte	W04
	.byte		N08   , Cn2 
	.byte	W08
	.byte		        Cn2 , v072
	.byte	W08
	.byte		        Dn2 , v060
	.byte	W08
	.byte		        Bn1 
	.byte	W08
	.byte		        Cn2 
	.byte	W08
	.byte		N04   , Cn2 , v052
	.byte	W04
	.byte		        Cn2 , v060
	.byte	W04
	.byte		N08   , En2 
	.byte	W08
	.byte		N04   , En2 , v052
	.byte	W04
	.byte		        En2 , v060
	.byte	W04
@ 005   ----------------------------------------
ch6rs_1_005:
	.byte		N08   , An2 , v060
	.byte	W08
	.byte		        An2 , v072
	.byte	W08
	.byte		        Gn2 , v060
	.byte	W08
	.byte		        En1 
	.byte	W08
	.byte		        Fn1 
	.byte	W08
	.byte		N04   , Fn1 , v052
	.byte	W04
	.byte		        Fn1 , v060
	.byte	W04
	.byte		N08   , An1 
	.byte	W08
	.byte		N04   , An1 , v052
	.byte	W04
	.byte		        An1 , v060
	.byte	W04
	.byte		N08   , Cn2 
	.byte	W08
	.byte		        Cn2 , v072
	.byte	W08
	.byte		        Dn2 , v060
	.byte	W08
	.byte		        Bn1 
	.byte	W08
	.byte	PEND
@ 006   ----------------------------------------
	.byte		        Cn2 
	.byte	W08
	.byte		        Cn2 , v072
	.byte	W08
	.byte		        Bn1 , v060
	.byte	W08
	.byte		        Bn1 , v072
	.byte	W08
	.byte		N16   , An1 , v060
	.byte	W16
	.byte		        En1 
	.byte	W16
	.byte		N12   , Fn1 
	.byte	W12
	.byte		N04   
	.byte	W04
	.byte		N16   , Cn2 
	.byte	W16
@ 007   ----------------------------------------
	.byte		        Gn1 
	.byte	W16
	.byte		N08   , Dn2 
	.byte	W08
	.byte		        Bn1 
	.byte	W08
	.byte		        Cn2 
	.byte	W08
	.byte		N04   , Cn2 , v052
	.byte	W04
	.byte		        Cn2 , v060
	.byte	W04
	.byte		N08   , En2 
	.byte	W08
	.byte		N04   , En2 , v052
	.byte	W04
	.byte		        En2 , v060
	.byte	W04
	.byte		N08   , An2 
	.byte	W08
	.byte		        An2 , v072
	.byte	W08
	.byte		        Gn2 , v060
	.byte	W08
	.byte		        Gn1 
	.byte	W08
@ 008   ----------------------------------------
	.byte		        Cn1 
	.byte	W08
	.byte		        Cn1 , v052
	.byte	W56
	.byte		        Cn2 , v060
	.byte	W08
	.byte		N04   , Cn2 , v052
	.byte	W04
	.byte		        Cn2 , v060
	.byte	W04
	.byte		N08   , En2 
	.byte	W08
	.byte		N04   , En2 , v052
	.byte	W04
	.byte		        En2 , v060
	.byte	W04
@ 009   ----------------------------------------
	.byte	PATT
	 .word	ch6rs_1_005
@ 010   ----------------------------------------
	.byte		N08   , Cn2 , v060
	.byte	W08
	.byte		N04   , Cn2 , v052
	.byte	W04
	.byte		        Cn2 , v060
	.byte	W04
	.byte		N08   , En2 
	.byte	W08
	.byte		N04   , En2 , v052
	.byte	W04
	.byte		        En2 , v060
	.byte	W04
	.byte		N08   , An2 
	.byte	W08
	.byte		        An2 , v072
	.byte	W08
	.byte		        Gn2 , v060
	.byte	W08
	.byte		        En1 
	.byte	W08
	.byte		        Fn1 
	.byte	W08
	.byte		N04   , Fn1 , v052
	.byte	W04
	.byte		        Fn1 , v060
	.byte	W04
	.byte		N08   , An1 
	.byte	W08
	.byte		N04   , An1 , v052
	.byte	W04
	.byte		        An1 , v060
	.byte	W04
@ 011   ----------------------------------------
	.byte		N08   , Cn2 
	.byte	W08
	.byte		        Cn2 , v072
	.byte	W08
	.byte		        Dn2 , v060
	.byte	W08
	.byte		        Bn1 
	.byte	W08
	.byte		        Cn2 
	.byte	W08
	.byte		        Cn2 , v072
	.byte	W08
	.byte		        Bn1 , v060
	.byte	W08
	.byte		        Bn1 , v072
	.byte	W08
	.byte		N16   , An1 , v060
	.byte	W16
	.byte		        En1 
	.byte	W16
@ 012   ----------------------------------------
	.byte		N12   , Fn1 
	.byte	W12
	.byte		N04   
	.byte	W04
	.byte		N16   , Cn2 
	.byte	W16
	.byte		        Gn1 
	.byte	W16
	.byte		N08   , Dn2 
	.byte	W08
	.byte		        Gn1 
	.byte	W08
	.byte		        Gs1 
	.byte	W08
	.byte		N04   , Gs1 , v052
	.byte	W04
	.byte		        Gs1 , v060
	.byte	W04
	.byte		N08   , Ds2 
	.byte	W08
	.byte		N04   , Ds2 , v052
	.byte	W04
	.byte		        Ds2 , v060
	.byte	W04
@ 013   ----------------------------------------
	.byte		N08   , As1 
	.byte	W08
	.byte		        As1 , v072
	.byte	W08
	.byte		        Fn2 , v060
	.byte	W08
	.byte		        As1 
	.byte	W08
	.byte		        Cn2 
	.byte	W08
	.byte		        Cn2 , v052
	.byte	W56
@ 014   ----------------------------------------
ch6rs_1_014:
	.byte		N08   , Fn1 , v060
	.byte	W08
	.byte		N04   , Fn1 , v052
	.byte	W04
	.byte		        Fn1 , v060
	.byte	W04
	.byte		N08   , An1 
	.byte	W08
	.byte		N04   , An1 , v052
	.byte	W04
	.byte		        An1 , v060
	.byte	W04
	.byte		N08   , Cn2 
	.byte	W08
	.byte		        Cn2 , v072
	.byte	W08
	.byte		        Dn2 , v060
	.byte	W08
	.byte		        Cn2 
	.byte	W08
	.byte		        Fn1 
	.byte	W08
	.byte		N04   , Fn1 , v052
	.byte	W04
	.byte		        Fn1 , v060
	.byte	W04
	.byte		N08   , An1 
	.byte	W08
	.byte		N04   , An1 , v052
	.byte	W04
	.byte		        An1 , v060
	.byte	W04
	.byte	PEND
@ 015   ----------------------------------------
	.byte		N08   , Cn2 
	.byte	W08
	.byte		        Cn2 , v072
	.byte	W08
	.byte		        Dn2 , v060
	.byte	W08
	.byte		        Cn2 
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N04   , Cn2 , v052
	.byte	W04
	.byte		        Cn2 , v060
	.byte	W04
	.byte		N08   , En2 
	.byte	W08
	.byte		N04   , En2 , v052
	.byte	W04
	.byte		        En2 , v060
	.byte	W04
	.byte		N08   , An2 
	.byte	W08
	.byte		        An2 , v072
	.byte	W08
	.byte		        Gn2 , v060
	.byte	W08
	.byte		        Gn2 , v072
	.byte	W08
@ 016   ----------------------------------------
	.byte		        Cn2 , v060
	.byte	W08
	.byte		N04   , Cn2 , v052
	.byte	W04
	.byte		        Cn2 , v060
	.byte	W04
	.byte		N08   , En2 
	.byte	W08
	.byte		        An2 
	.byte	W08
	.byte		        As2 
	.byte	W08
	.byte		        Gn2 
	.byte	W08
	.byte		        An2 
	.byte	W08
	.byte		        Gn2 
	.byte	W08
	.byte		        Fn1 
	.byte	W08
	.byte		N04   , Fn1 , v052
	.byte	W04
	.byte		        Fn1 , v060
	.byte	W04
	.byte		N08   , An1 
	.byte	W08
	.byte		N04   , An1 , v052
	.byte	W04
	.byte		        An1 , v060
	.byte	W04
@ 017   ----------------------------------------
	.byte		N08   , Cn2 
	.byte	W08
	.byte		        Cn2 , v072
	.byte	W08
	.byte		        Dn2 , v060
	.byte	W08
	.byte		        Cn2 
	.byte	W08
	.byte		        Fn1 
	.byte	W08
	.byte		N04   , Fn1 , v052
	.byte	W04
	.byte		        Fn1 , v060
	.byte	W04
	.byte		N08   , An1 
	.byte	W08
	.byte		N04   , An1 , v052
	.byte	W04
	.byte		        An1 , v060
	.byte	W04
	.byte		N08   , Cn2 
	.byte	W08
	.byte		        Cn2 , v072
	.byte	W08
	.byte		        Dn2 , v060
	.byte	W08
	.byte		        Cn2 
	.byte	W08
@ 018   ----------------------------------------
	.byte		N08   
	.byte	W08
	.byte		N04   , Cn2 , v052
	.byte	W04
	.byte		        Cn2 , v060
	.byte	W04
	.byte		N08   , En2 
	.byte	W08
	.byte		N04   , En2 , v052
	.byte	W04
	.byte		        En2 , v060
	.byte	W04
	.byte		N08   , An2 
	.byte	W08
	.byte		        An2 , v072
	.byte	W08
	.byte		        Gn2 , v060
	.byte	W08
	.byte		        Gn2 , v072
	.byte	W08
	.byte		        Cn2 , v060
	.byte	W08
	.byte		N04   , Cn2 , v052
	.byte	W04
	.byte		        Cn2 , v060
	.byte	W04
	.byte		N08   , En2 
	.byte	W08
	.byte		        An2 
	.byte	W08
@ 019   ----------------------------------------
	.byte		        As2 
	.byte	W08
	.byte		        Gn2 
	.byte	W08
	.byte		        An2 
	.byte	W08
	.byte		        Gn2 
	.byte	W08
	.byte		        Fn1 
	.byte	W08
	.byte		N04   , Fn1 , v052
	.byte	W04
	.byte		        Fn1 , v060
	.byte	W04
	.byte		N08   , An1 
	.byte	W08
	.byte		N04   , An1 , v052
	.byte	W04
	.byte		        An1 , v060
	.byte	W04
	.byte		N08   , Cn2 
	.byte	W08
	.byte		        Cn2 , v072
	.byte	W08
	.byte		        Dn2 , v060
	.byte	W08
	.byte		        Cn2 
	.byte	W08
@ 020   ----------------------------------------
	.byte		        Fn1 
	.byte	W08
	.byte		N04   , Fn1 , v052
	.byte	W04
	.byte		        Fn1 , v060
	.byte	W04
	.byte		N08   , An1 
	.byte	W08
	.byte		N04   , An1 , v052
	.byte	W04
	.byte		        An1 , v060
	.byte	W04
	.byte		N08   , Cn2 
	.byte	W08
	.byte		        Cn2 , v072
	.byte	W08
	.byte		        Dn2 , v060
	.byte	W08
	.byte		        Cn2 
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N04   , Cn2 , v052
	.byte	W04
	.byte		        Cn2 , v060
	.byte	W04
	.byte		N08   , En2 
	.byte	W08
	.byte		N04   , En2 , v052
	.byte	W04
	.byte		        En2 , v060
	.byte	W04
@ 021   ----------------------------------------
	.byte		N08   , An2 
	.byte	W08
	.byte		        An2 , v072
	.byte	W08
	.byte		        Gn2 , v060
	.byte	W08
	.byte		        Gn2 , v072
	.byte	W08
	.byte		        Cn2 , v060
	.byte	W08
	.byte		N04   , Cn2 , v052
	.byte	W04
	.byte		        Cn2 , v060
	.byte	W04
	.byte		N08   , En2 
	.byte	W08
	.byte		        An2 
	.byte	W08
	.byte		        As2 
	.byte	W08
	.byte		        Gn2 
	.byte	W08
	.byte		        An2 
	.byte	W08
	.byte		        Gn2 
	.byte	W08
@ 022   ----------------------------------------
	.byte	PATT
	 .word	ch6rs_1_014
@ 023   ----------------------------------------
	.byte		N08   , Cn2 , v060
	.byte	W08
	.byte		        Cn2 , v072
	.byte	W08
	.byte		        Dn2 , v060
	.byte	W08
	.byte		        Cn2 
	.byte	W08
	.byte		        Dn1 
	.byte	W08
	.byte		N04   , Dn1 , v052
	.byte	W04
	.byte		        Dn1 , v060
	.byte	W04
	.byte		N08   , Fs1 
	.byte	W08
	.byte		N04   , Fs1 , v052
	.byte	W04
	.byte		        Fs1 , v060
	.byte	W04
	.byte		N08   , An1 
	.byte	W08
	.byte		        An1 , v072
	.byte	W08
	.byte		        Dn2 , v060
	.byte	W08
	.byte		        Dn2 , v072
	.byte	W08
@ 024   ----------------------------------------
	.byte		        Gn1 , v060
	.byte	W08
	.byte		        Gn1 , v052
	.byte	W56
	.byte		VOICE , 27
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 92
	.byte		N04   , Ds2 
	.byte	W04
	.byte		N12   , En2 
	.byte	W12
	.byte		N04   , Ds2 
	.byte	W04
	.byte		N12   , En2 
	.byte	W04
@ 025   ----------------------------------------
	.byte	W08
	.byte		N04   , An2 
	.byte	W04
	.byte		        Gn2 
	.byte	W04
	.byte		        Ds2 
	.byte	W04
	.byte		N12   , En2 
	.byte	W12
	.byte		N32   , Cn2 
	.byte	W40
	.byte		N08   
	.byte	W08
	.byte		        Dn2 
	.byte	W08
	.byte		        Ds2 
	.byte	W08
@ 026   ----------------------------------------
	.byte		N24   , En2 
	.byte	W24
	.byte		N08   , An1 
	.byte	W08
	.byte		        As1 
	.byte	W16
	.byte		        Gn1 
	.byte	W08
	.byte		        As1 
	.byte	W08
	.byte		N24   , An1 
	.byte	W32
@ 027   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 .word	ch6rs_1_B1
ch6rs_1_B2:
@ 028   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

ch6rs_2:
	.byte		VOL   , 127*ch6rs_mvl/mxv
	.byte	KEYSH , ch6rs_key+0
ch6rs_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 16
	.byte		N08   , Cn2 , v060
	.byte	W08
	.byte		N04   , Cn2 , v052
	.byte	W04
	.byte		        Cn2 , v060
	.byte	W04
	.byte		N08   , En2 
	.byte	W08
	.byte		N04   , En2 , v052
	.byte	W04
	.byte		        En2 , v060
	.byte	W04
	.byte		N08   , An2 
	.byte	W08
	.byte		        An2 , v072
	.byte	W08
	.byte		        Gn2 , v060
	.byte	W08
	.byte		        En1 
	.byte	W08
	.byte		        Fn1 
	.byte	W08
	.byte		N04   , Fn1 , v052
	.byte	W04
	.byte		        Fn1 , v060
	.byte	W04
	.byte		N08   , An1 
	.byte	W08
	.byte		N04   , An1 , v052
	.byte	W04
	.byte		        An1 , v060
	.byte	W04
@ 001   ----------------------------------------
	.byte		N08   , Cn2 
	.byte	W08
	.byte		        Cn2 , v072
	.byte	W08
	.byte		        Dn2 , v060
	.byte	W08
	.byte		        Bn1 
	.byte	W08
	.byte		        Cn2 
	.byte	W08
	.byte		N04   , Cn2 , v052
	.byte	W04
	.byte		        Cn2 , v060
	.byte	W04
	.byte		N08   , En2 
	.byte	W08
	.byte		N04   , En2 , v052
	.byte	W04
	.byte		        En2 , v060
	.byte	W04
	.byte		N08   , An2 
	.byte	W08
	.byte		        An2 , v072
	.byte	W08
	.byte		        Gn2 , v060
	.byte	W08
	.byte		        En1 
	.byte	W08
@ 002   ----------------------------------------
	.byte		        Fn1 
	.byte	W08
	.byte		N04   , Fn1 , v052
	.byte	W04
	.byte		        Fn1 , v060
	.byte	W04
	.byte		N08   , An1 
	.byte	W08
	.byte		N04   , An1 , v052
	.byte	W04
	.byte		        An1 , v060
	.byte	W04
	.byte		N08   , Cn2 
	.byte	W08
	.byte		        Cn2 , v072
	.byte	W08
	.byte		        Dn2 , v060
	.byte	W08
	.byte		        Bn1 
	.byte	W08
	.byte		VOICE , 92
	.byte		N16   , Cn1 , v127
	.byte	W32
@ 003   ----------------------------------------
	.byte	W32
	.byte		VOICE , 27
	.byte		N08   , Cn2 
	.byte	W08
	.byte		VOICE , 26
	.byte		N08   , Gs1 
	.byte	W08
	.byte		        As1 
	.byte	W08
	.byte		        Bn1 
	.byte	W08
	.byte		VOICE , 27
	.byte		N08   , Cn2 
	.byte	W08
	.byte		VOICE , 26
	.byte		N08   , Ds2 
	.byte	W08
	.byte		        Fn2 
	.byte	W08
	.byte		        Ds2 
	.byte	W08
@ 004   ----------------------------------------
	.byte		VOICE , 27
	.byte		N08   , Cs2 
	.byte	W08
	.byte		VOICE , 26
	.byte		N08   , Gs1 
	.byte	W08
	.byte		        Gs1 , v052
	.byte	W08
	.byte		N12   , Bn1 , v127
	.byte	W12
	.byte		N08   , Bn1 , v052
	.byte	W08
	.byte		        As1 , v127
	.byte	W08
	.byte		N04   , As1 , v052
	.byte	W04
	.byte		N08   , Bn1 , v127
	.byte	W08
	.byte		VOICE , 27
	.byte		N08   , Cn2 
	.byte	W08
	.byte		VOICE , 26
	.byte		N08   , Ds2 
	.byte	W08
	.byte		        Cn2 
	.byte	W08
	.byte		        Gs1 
	.byte	W08
@ 005   ----------------------------------------
	.byte		        Fs1 
	.byte	W08
	.byte		        Gs1 
	.byte	W08
	.byte		        Fn1 
	.byte	W08
	.byte		        Ds1 
	.byte	W08
	.byte		VOICE , 27
	.byte		N08   , Fn1 
	.byte	W08
	.byte		VOICE , 26
	.byte		N08   , Gs1 
	.byte	W08
	.byte		        As1 
	.byte	W08
	.byte		N12   , Gs1 
	.byte	W12
	.byte		        Gs1 , v052
	.byte	W12
	.byte		N08   , Gs1 , v044
	.byte	W08
	.byte		N04   , As1 , v127
	.byte	W04
	.byte		        Bn1 
	.byte	W04
@ 006   ----------------------------------------
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Cn2 , v072
	.byte	W12
	.byte		N08   , Cn2 , v052
	.byte	W08
	.byte		VOICE , 27
	.byte		N12   , Fn2 , v127
	.byte	W12
	.byte		VOICE , 26
	.byte		N08   , Fn2 , v072
	.byte	W08
	.byte		        Fn2 , v127
	.byte	W08
	.byte		N04   , En2 
	.byte	W04
	.byte		N08   , Ds2 
	.byte	W08
	.byte		        Ds2 , v064
	.byte	W08
	.byte		        Cn2 , v127
	.byte	W08
	.byte		        Cn2 , v064
	.byte	W08
@ 007   ----------------------------------------
	.byte		VOICE , 27
	.byte		N08   , As1 , v127
	.byte	W08
	.byte		VOICE , 26
	.byte		N08   , As1 , v064
	.byte	W08
	.byte		        Gn1 , v127
	.byte	W08
	.byte		        Gn1 , v064
	.byte	W08
	.byte		N12   , Gs1 , v127
	.byte	W12
	.byte		        Gs1 , v064
	.byte	W12
	.byte		N56   , Gs1 , v052
	.byte	W40
@ 008   ----------------------------------------
	.byte	W16
	.byte		N08   , Gs1 , v127
	.byte	W08
	.byte		        Gs1 , v052
	.byte	W08
	.byte		        As1 , v127
	.byte	W08
	.byte		        As1 , v052
	.byte	W08
	.byte		        Bn1 , v127
	.byte	W08
	.byte		        Bn1 , v052
	.byte	W08
	.byte		VOICE , 27
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 26
	.byte		N08   , Gs1 
	.byte	W08
	.byte		        As1 
	.byte	W08
	.byte		        Bn1 
	.byte	W08
@ 009   ----------------------------------------
	.byte		VOICE , 27
	.byte		N08   , Cn2 
	.byte	W08
	.byte		VOICE , 26
	.byte		N08   , Ds2 
	.byte	W08
	.byte		        Fn2 
	.byte	W08
	.byte		        Ds2 
	.byte	W08
	.byte		VOICE , 27
	.byte		N08   , Cs2 
	.byte	W08
	.byte		VOICE , 26
	.byte		N08   , Gs1 
	.byte	W08
	.byte		        Gs1 , v052
	.byte	W08
	.byte		N12   , Bn1 , v127
	.byte	W12
	.byte		N08   , Bn1 , v052
	.byte	W08
	.byte		        As1 , v127
	.byte	W08
	.byte		N04   , As1 , v052
	.byte	W04
	.byte		N08   , Bn1 , v127
	.byte	W08
@ 010   ----------------------------------------
	.byte		VOICE , 27
	.byte		N08   , Cn2 
	.byte	W08
	.byte		VOICE , 26
	.byte		N08   , Ds2 
	.byte	W08
	.byte		        Cn2 
	.byte	W08
	.byte		        Gs1 
	.byte	W08
	.byte		        Fs1 
	.byte	W08
	.byte		        Gs1 
	.byte	W08
	.byte		        Fn1 
	.byte	W08
	.byte		        Ds1 
	.byte	W08
	.byte		VOICE , 27
	.byte		N08   , Fn1 
	.byte	W08
	.byte		VOICE , 26
	.byte		N08   , Gs1 
	.byte	W08
	.byte		        As1 
	.byte	W08
	.byte		N12   , Gs1 
	.byte	W08
@ 011   ----------------------------------------
	.byte	W04
	.byte		        Gs1 , v052
	.byte	W12
	.byte		N08   , Gs1 , v044
	.byte	W08
	.byte		N04   , As1 , v127
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Cn2 , v072
	.byte	W12
	.byte		N08   , Cn2 , v052
	.byte	W08
	.byte		VOICE , 27
	.byte		N12   , Fn2 , v127
	.byte	W12
	.byte		VOICE , 26
	.byte		N12   , Fn2 , v072
	.byte	W12
	.byte		N04   , En2 , v127
	.byte	W04
	.byte		        Fn2 
	.byte	W04
@ 012   ----------------------------------------
	.byte		VOICE , 27
	.byte		N08   , Gs2 
	.byte	W08
	.byte		VOICE , 26
	.byte		N08   , Gs2 , v052
	.byte	W08
	.byte		        Fn2 , v127
	.byte	W08
	.byte		        Fn2 , v052
	.byte	W08
	.byte		        Ds2 , v127
	.byte	W08
	.byte		        Ds2 , v052
	.byte	W08
	.byte		        Cn2 , v127
	.byte	W08
	.byte		        Cn2 , v052
	.byte	W08
	.byte		VOICE , 27
	.byte		N12   , Gs1 , v127
	.byte	W12
	.byte		VOICE , 26
	.byte		N12   , Gs1 , v052
	.byte	W12
	.byte		N04   , Ds2 , v127
	.byte	W04
	.byte		        Dn2 
	.byte	W04
@ 013   ----------------------------------------
	.byte		N08   , Cs2 
	.byte	W08
	.byte		N04   , As1 
	.byte	W04
	.byte		        Gs1 
	.byte	W04
	.byte		N08   , Fs1 
	.byte	W08
	.byte		VOICE , 25
	.byte		N08   , Gn1 
	.byte	W08
	.byte		VOICE , 27
	.byte		N08   , As1 
	.byte	W08
	.byte		VOICE , 26
	.byte		N08   , Cn2 
	.byte	W08
	.byte		VOICE , 27
	.byte		N08   , As1 , v064
	.byte	W08
	.byte		VOICE , 26
	.byte		N08   , Cn2 
	.byte	W08
	.byte		VOICE , 27
	.byte		N08   , As1 , v052
	.byte	W08
	.byte		VOICE , 26
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		        Ds2 
	.byte	W08
	.byte		        En2 
	.byte	W08
@ 014   ----------------------------------------
	.byte		N12   , Fn2 
	.byte	W12
	.byte		N08   , Fn2 , v052
	.byte	W08
	.byte		N04   , En2 , v127
	.byte	W04
	.byte		        Fn2 
	.byte	W04
	.byte		        Cs2 
	.byte	W04
	.byte		        Ds2 
	.byte	W04
	.byte		        As1 
	.byte	W04
	.byte		        Gs1 
	.byte	W04
	.byte		VOICE , 27
	.byte		N08   , Cs2 
	.byte	W08
	.byte		VOICE , 26
	.byte		N04   , Gs1 
	.byte	W04
	.byte		        Cn2 
	.byte	W04
	.byte		        As1 
	.byte	W04
	.byte		        Gs1 
	.byte	W04
	.byte		        Fs1 
	.byte	W04
	.byte		        Fn1 
	.byte	W04
	.byte		        Ds1 
	.byte	W04
	.byte		MOD   , 34
	.byte		N12   , Fn1 
	.byte	W12
	.byte		MOD   , 0
	.byte		N16   , Fn1 , v052
	.byte	W04
@ 015   ----------------------------------------
	.byte	W12
	.byte		N08   , Ds2 , v127
	.byte	W08
	.byte		N04   , Ds2 , v052
	.byte	W04
	.byte		N08   , Cs2 , v127
	.byte	W08
	.byte		        Cn2 
	.byte	W08
	.byte		N04   , Ds2 
	.byte	W04
	.byte		N08   , As1 
	.byte	W08
	.byte		N04   , Cn2 
	.byte	W04
	.byte		N08   , Gs1 
	.byte	W08
	.byte		N04   , Gs1 , v052
	.byte	W04
	.byte		        Gn1 , v127
	.byte	W04
	.byte		        Gs1 
	.byte	W04
	.byte		        As1 
	.byte	W04
	.byte		VOICE , 27
	.byte		N04   , Cn2 
	.byte	W04
	.byte		VOICE , 26
	.byte		N04   , As1 
	.byte	W04
	.byte		        Gs1 
	.byte	W04
	.byte		        Gn1 
	.byte	W04
@ 016   ----------------------------------------
	.byte		MOD   , 34
	.byte		N16   , Ds1 
	.byte	W16
	.byte		MOD   , 0
	.byte		N20   , Ds1 , v072
	.byte	W20
	.byte		N08   , Ds1 , v052
	.byte	W08
	.byte		        Ds1 , v127
	.byte	W08
	.byte		N04   , Ds1 , v052
	.byte	W04
	.byte		N08   , En1 , v127
	.byte	W08
	.byte		        Fn1 
	.byte	W08
	.byte		        Gs1 
	.byte	W08
	.byte		VOICE , 27
	.byte		N08   , As1 
	.byte	W08
	.byte		VOICE , 26
	.byte		N08   , Gs1 
	.byte	W08
@ 017   ----------------------------------------
	.byte		        Gs1 , v052
	.byte	W08
	.byte		        Ds1 , v127
	.byte	W08
	.byte		        Ds1 , v052
	.byte	W08
	.byte		        En1 , v127
	.byte	W08
	.byte		        Fn1 
	.byte	W08
	.byte		        Gs1 
	.byte	W08
	.byte		        As1 
	.byte	W08
	.byte		VOICE , 27
	.byte		N08   , Cs2 
	.byte	W08
	.byte		VOICE , 26
	.byte		N08   , Cs2 , v052
	.byte	W08
	.byte		        Fn2 , v127
	.byte	W08
	.byte		        Ds2 
	.byte	W08
	.byte		        Bn1 
	.byte	W08
@ 018   ----------------------------------------
	.byte		VOICE , 27
	.byte		N08   , Cn2 
	.byte	W08
	.byte		VOICE , 26
	.byte		N08   , Ds2 
	.byte	W08
	.byte		        Fn2 
	.byte	W08
	.byte		        Ds2 
	.byte	W08
	.byte		        Ds2 , v052
	.byte	W08
	.byte		        Cn2 , v127
	.byte	W08
	.byte		        Cn2 , v052
	.byte	W08
	.byte		        Bn1 , v127
	.byte	W08
	.byte		VOICE , 27
	.byte		N08   , Cn2 
	.byte	W08
	.byte		VOICE , 26
	.byte		N08   , Ds2 
	.byte	W08
	.byte		        Cn2 
	.byte	W08
	.byte		        As1 
	.byte	W08
@ 019   ----------------------------------------
	.byte		VOICE , 27
	.byte		N08   , Gs1 
	.byte	W08
	.byte		VOICE , 26
	.byte		N08   , Cn2 
	.byte	W08
	.byte		        Gs1 
	.byte	W08
	.byte		        Fs1 
	.byte	W08
	.byte		VOICE , 27
	.byte		N12   , Fn1 
	.byte	W12
	.byte		VOICE , 25
	.byte		N12   
	.byte	W12
	.byte		        Fn1 , v052
	.byte	W12
	.byte		N04   , Ds1 , v127
	.byte	W04
	.byte		        Fn1 
	.byte	W04
	.byte		        An1 
	.byte	W04
	.byte		VOICE , 26
	.byte		N04   , Gs1 
	.byte	W04
	.byte		VOICE , 25
	.byte		N04   , An1 
	.byte	W04
	.byte		        Fn1 
	.byte	W04
	.byte		N16   , Ds1 
	.byte	W04
@ 020   ----------------------------------------
	.byte	W12
	.byte		        Ds1 , v052
	.byte	W16
	.byte		N08   , Ds1 , v044
	.byte	W08
	.byte		VOICE , 26
	.byte		N04   , Cs2 , v127
	.byte	W04
	.byte		        Cn2 
	.byte	W04
	.byte		        As1 
	.byte	W04
	.byte		        Cn2 
	.byte	W04
	.byte		        Cs2 
	.byte	W04
	.byte		        Cn2 
	.byte	W04
	.byte		        Gs1 
	.byte	W04
	.byte		N16   , Ds1 
	.byte	W16
	.byte		        Ds1 , v052
	.byte	W16
@ 021   ----------------------------------------
	.byte		        Ds1 , v044
	.byte	W16
	.byte		N08   , Ds1 , v040
	.byte	W08
	.byte		N04   , Ds1 , v127
	.byte	W04
	.byte		        Gs1 
	.byte	W04
	.byte		        Fn2 
	.byte	W04
	.byte		        Gs1 
	.byte	W04
	.byte		        Ds1 
	.byte	W04
	.byte		N08   , Ds2 
	.byte	W08
	.byte		N04   , Ds1 
	.byte	W04
	.byte		        Cs2 
	.byte	W04
	.byte		        As1 
	.byte	W04
	.byte		VOICE , 27
	.byte		N04   , Cn2 
	.byte	W04
	.byte		VOICE , 26
	.byte		N04   , Gs1 
	.byte	W04
	.byte		        Ds1 
	.byte	W04
	.byte		N08   , As1 
	.byte	W08
	.byte		N04   , Ds1 
	.byte	W04
	.byte		N08   , As1 
	.byte	W08
@ 022   ----------------------------------------
	.byte		VOICE , 27
	.byte		N08   , Gs1 
	.byte	W08
	.byte		VOICE , 26
	.byte		N08   , Gs1 , v052
	.byte	W08
	.byte		        As1 , v127
	.byte	W08
	.byte		        Gs1 
	.byte	W08
	.byte		VOICE , 27
	.byte		N08   , Cs2 
	.byte	W08
	.byte		VOICE , 26
	.byte		N08   , Cs2 , v052
	.byte	W08
	.byte		        Ds2 , v127
	.byte	W08
	.byte		        Cs2 
	.byte	W08
	.byte		VOICE , 27
	.byte		N08   , Fn2 
	.byte	W08
	.byte		VOICE , 26
	.byte		N08   , Gs2 
	.byte	W08
	.byte		VOICE , 27
	.byte		N08   , Fn2 
	.byte	W08
	.byte		VOICE , 26
	.byte		N08   , Ds2 
	.byte	W08
@ 023   ----------------------------------------
	.byte		        Cs2 
	.byte	W08
	.byte		N16   , Gs1 
	.byte	W16
	.byte		N08   , Gs1 , v052
	.byte	W08
	.byte		VOICE , 27
	.byte		N08   , As1 , v127
	.byte	W08
	.byte		VOICE , 26
	.byte		N08   , Cn2 
	.byte	W08
	.byte		        Dn2 
	.byte	W08
	.byte		        As1 
	.byte	W08
	.byte		        Fn2 
	.byte	W08
	.byte		        Ds2 
	.byte	W08
	.byte		        Dn2 
	.byte	W08
	.byte		        Fn2 
	.byte	W08
@ 024   ----------------------------------------
	.byte		VOICE , 27
	.byte		N08   , Gn2 
	.byte	W08
	.byte		VOICE , 26
	.byte		N08   , As2 
	.byte	W08
	.byte		        Gn2 
	.byte	W08
	.byte		        Ds2 
	.byte	W08
	.byte		VOICE , 27
	.byte		N08   , Cs2 
	.byte	W08
	.byte		VOICE , 26
	.byte		N08   , As2 
	.byte	W08
	.byte		        Cs2 
	.byte	W08
	.byte		        Bn1 
	.byte	W08
	.byte		VOICE , 16
	.byte		N08   , Cn2 , v060
	.byte	W08
	.byte		N04   , Cn2 , v052
	.byte	W04
	.byte		        Cn2 , v060
	.byte	W04
	.byte		N08   , En2 
	.byte	W08
	.byte		N04   , En2 , v052
	.byte	W04
	.byte		        En2 , v060
	.byte	W04
@ 025   ----------------------------------------
	.byte		N08   , An2 
	.byte	W08
	.byte		        An2 , v072
	.byte	W08
	.byte		        Gn2 , v060
	.byte	W08
	.byte		        En1 
	.byte	W08
	.byte		        Fn1 
	.byte	W08
	.byte		N04   , Fn1 , v052
	.byte	W04
	.byte		        Fn1 , v060
	.byte	W04
	.byte		N08   , An1 
	.byte	W08
	.byte		N04   , An1 , v052
	.byte	W04
	.byte		        An1 , v060
	.byte	W04
	.byte		N08   , Cn2 
	.byte	W08
	.byte		        Cn2 , v072
	.byte	W08
	.byte		        Dn2 , v060
	.byte	W08
	.byte		        Bn1 
	.byte	W08
@ 026   ----------------------------------------
	.byte		        Cn2 
	.byte	W08
	.byte		N04   , Cn2 , v052
	.byte	W04
	.byte		        Cn2 , v060
	.byte	W04
	.byte		N08   , En2 
	.byte	W08
	.byte		N04   , En2 , v052
	.byte	W04
	.byte		        En2 , v060
	.byte	W04
	.byte		N08   , An2 
	.byte	W08
	.byte		        An2 , v072
	.byte	W08
	.byte		        Gn2 , v060
	.byte	W08
	.byte		        En1 
	.byte	W08
	.byte		        Fn1 
	.byte	W08
	.byte		N04   , Fn1 , v052
	.byte	W04
	.byte		        Fn1 , v060
	.byte	W04
	.byte		N08   , An1 
	.byte	W08
	.byte		N04   , An1 , v052
	.byte	W04
	.byte		        An1 , v060
	.byte	W04
@ 027   ----------------------------------------
	.byte		N08   , Cn2 
	.byte	W08
	.byte		        Cn2 , v072
	.byte	W08
	.byte		        Dn2 , v060
	.byte	W08
	.byte		        Bn1 
	.byte	W72
	.byte	GOTO
	 .word	ch6rs_2_B1
ch6rs_2_B2:
@ 028   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

ch6rs_3:
	.byte		VOL   , 127*ch6rs_mvl/mxv
	.byte	KEYSH , ch6rs_key+0
ch6rs_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 92
	.byte		N16   , Cn1 , v127
	.byte	W16
	.byte		N04   , Gn1 
	.byte	W04
	.byte		        An1 
	.byte	W04
	.byte		        Cn2 
	.byte	W04
	.byte		        Gn1 
	.byte	W04
	.byte		        Ds2 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		        Ds2 
	.byte	W04
	.byte		        Dn2 
	.byte	W04
	.byte		N08   , Cn2 
	.byte	W08
	.byte		N04   , Gn1 
	.byte	W04
	.byte		        Gs1 
	.byte	W04
	.byte		N08   , An1 
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		        Gs1 
	.byte	W08
	.byte		        An1 
	.byte	W08
@ 001   ----------------------------------------
	.byte	W32
	.byte		N04   , Fs2 
	.byte	W04
	.byte		        Gn2 
	.byte	W04
	.byte		N08   
	.byte	W08
	.byte		        Fs2 
	.byte	W08
	.byte		        Fn2 
	.byte	W08
	.byte		        En2 
	.byte	W08
	.byte		        Cn2 
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		        Dn2 
	.byte	W08
@ 002   ----------------------------------------
	.byte		N16   , Fn1 
	.byte	W16
	.byte		N08   , En1 
	.byte	W08
	.byte		N16   , Fn1 
	.byte	W16
	.byte		N08   , An1 
	.byte	W08
	.byte		        Gn1 
	.byte	W08
	.byte		        Gn0 
	.byte	W08
	.byte		N16   , As1 
	.byte	W32
@ 003   ----------------------------------------
	.byte	W12
	.byte		VOICE , 5
	.byte		N04   , Cn2 , v072
	.byte	W04
	.byte		N16   , Cn2 , v127
	.byte	W16
	.byte		VOICE , 8
	.byte		N08   
	.byte	W08
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N08   
	.byte	W08
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N08   
	.byte	W08
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N08   
	.byte	W08
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W04
@ 004   ----------------------------------------
ch6rs_3_004:
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N08   
	.byte	W08
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N08   
	.byte	W08
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N08   
	.byte	W08
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N08   
	.byte	W08
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N08   
	.byte	W08
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	ch6rs_3_004
@ 006   ----------------------------------------
	.byte	PATT
	 .word	ch6rs_3_004
@ 007   ----------------------------------------
	.byte	PATT
	 .word	ch6rs_3_004
@ 008   ----------------------------------------
	.byte		VOICE , 6
	.byte		N64   , Cn2 , v104
	.byte	W64
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N08   
	.byte	W08
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W04
@ 009   ----------------------------------------
	.byte	PATT
	 .word	ch6rs_3_004
@ 010   ----------------------------------------
	.byte	PATT
	 .word	ch6rs_3_004
@ 011   ----------------------------------------
	.byte	PATT
	 .word	ch6rs_3_004
@ 012   ----------------------------------------
	.byte	PATT
	 .word	ch6rs_3_004
@ 013   ----------------------------------------
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N08   
	.byte	W08
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		VOICE , 6
	.byte		N64   , Cn2 , v104
	.byte	W64
@ 014   ----------------------------------------
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N08   
	.byte	W08
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N08   
	.byte	W08
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N08   
	.byte	W08
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N08   
	.byte	W08
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N08   
	.byte	W08
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W04
@ 015   ----------------------------------------
	.byte	PATT
	 .word	ch6rs_3_004
@ 016   ----------------------------------------
	.byte	PATT
	 .word	ch6rs_3_004
@ 017   ----------------------------------------
	.byte	PATT
	 .word	ch6rs_3_004
@ 018   ----------------------------------------
	.byte	PATT
	 .word	ch6rs_3_004
@ 019   ----------------------------------------
	.byte	PATT
	 .word	ch6rs_3_004
@ 020   ----------------------------------------
	.byte	PATT
	 .word	ch6rs_3_004
@ 021   ----------------------------------------
	.byte	PATT
	 .word	ch6rs_3_004
@ 022   ----------------------------------------
	.byte	PATT
	 .word	ch6rs_3_004
@ 023   ----------------------------------------
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N08   
	.byte	W08
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N08   
	.byte	W08
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N08   
	.byte	W08
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N08   
	.byte	W08
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N08   
	.byte	W08
	.byte		N04   
	.byte	W04
	.byte		N12   
	.byte	W04
@ 024   ----------------------------------------
	.byte	W08
	.byte		VOICE , 89
	.byte		N04   , Cn2 , v068
	.byte	W04
	.byte		        Cn2 , v104
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v068
	.byte	W04
	.byte		        Cn2 , v104
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v068
	.byte	W04
	.byte		        Cn2 , v104
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 61
	.byte		N08   
	.byte	W08
	.byte		VOICE , 92
	.byte		N16   , Cn1 
	.byte	W16
	.byte		N04   , Gn1 
	.byte	W04
	.byte		        An1 
	.byte	W04
	.byte		        Cn2 
	.byte	W04
	.byte		        Gn1 
	.byte	W04
@ 025   ----------------------------------------
	.byte		        Ds2 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		        Ds2 
	.byte	W04
	.byte		        Dn2 
	.byte	W04
	.byte		N08   , Cn2 
	.byte	W08
	.byte		N04   , Gn1 
	.byte	W04
	.byte		        Gs1 
	.byte	W04
	.byte		N08   , An1 
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		        Gs1 
	.byte	W08
	.byte		        An1 
	.byte	W40
@ 026   ----------------------------------------
	.byte		N04   , Fs2 
	.byte	W04
	.byte		        Gn2 
	.byte	W04
	.byte		N08   
	.byte	W08
	.byte		        Fs2 
	.byte	W08
	.byte		        Fn2 
	.byte	W08
	.byte		        En2 
	.byte	W08
	.byte		        Cn2 
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		        Dn2 
	.byte	W08
	.byte		N16   , Fn1 
	.byte	W16
	.byte		N08   , En1 
	.byte	W08
	.byte		N16   , Fn1 
	.byte	W08
@ 027   ----------------------------------------
	.byte	W08
	.byte		N08   , An1 
	.byte	W08
	.byte		        Gn1 
	.byte	W08
	.byte		        Gn0 
	.byte	W72
	.byte	GOTO
	 .word	ch6rs_3_B1
ch6rs_3_B2:
@ 028   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

ch6rs_4:
	.byte		VOL   , 127*ch6rs_mvl/mxv
	.byte	KEYSH , ch6rs_key+0
ch6rs_4_B1:
@ 000   ----------------------------------------
ch6rs_4_000:
	.byte		VOICE , 61
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 5
	.byte		N08   
	.byte	W08
	.byte		VOICE , 61
	.byte		N08   
	.byte	W08
	.byte		VOICE , 5
	.byte		N08   
	.byte	W08
	.byte		VOICE , 61
	.byte		N08   
	.byte	W08
	.byte		VOICE , 5
	.byte		N08   
	.byte	W08
	.byte		VOICE , 61
	.byte		N08   
	.byte	W08
	.byte		VOICE , 5
	.byte		N08   
	.byte	W08
	.byte		VOICE , 61
	.byte		N08   
	.byte	W08
	.byte		VOICE , 5
	.byte		N08   
	.byte	W08
	.byte		VOICE , 61
	.byte		N08   
	.byte	W08
	.byte		VOICE , 5
	.byte		N08   
	.byte	W08
	.byte	PEND
@ 001   ----------------------------------------
ch6rs_4_001:
	.byte		VOICE , 61
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 5
	.byte		N08   
	.byte	W08
	.byte		VOICE , 61
	.byte		N04   
	.byte	W04
	.byte		VOICE , 5
	.byte		N04   , Cn2 , v048
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 61
	.byte		N08   
	.byte	W08
	.byte		VOICE , 5
	.byte		N08   
	.byte	W08
	.byte		VOICE , 61
	.byte		N08   
	.byte	W08
	.byte		VOICE , 5
	.byte		N08   
	.byte	W08
	.byte		VOICE , 61
	.byte		N08   
	.byte	W08
	.byte		VOICE , 5
	.byte		N08   
	.byte	W08
	.byte		VOICE , 61
	.byte		N08   
	.byte	W08
	.byte		VOICE , 5
	.byte		N08   
	.byte	W08
	.byte	PEND
@ 002   ----------------------------------------
	.byte		VOICE , 61
	.byte		N08   
	.byte	W08
	.byte		VOICE , 5
	.byte		N08   
	.byte	W08
	.byte		VOICE , 61
	.byte		N08   
	.byte	W08
	.byte		VOICE , 5
	.byte		N08   
	.byte	W08
	.byte		VOICE , 61
	.byte		N04   
	.byte	W04
	.byte		VOICE , 5
	.byte		N04   , Cn2 , v048
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 61
	.byte		N04   
	.byte	W04
	.byte		VOICE , 5
	.byte		N04   , Cn2 , v048
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 61
	.byte		N16   
	.byte	W16
	.byte		N16   
	.byte	W16
@ 003   ----------------------------------------
	.byte		N16   
	.byte	W16
	.byte		N12   
	.byte	W12
	.byte		VOICE , 0
	.byte	W04
	.byte		        61
	.byte		N08   
	.byte	W08
	.byte		VOICE , 5
	.byte		N08   
	.byte	W08
	.byte		VOICE , 61
	.byte		N08   
	.byte	W08
	.byte		VOICE , 5
	.byte		N08   
	.byte	W08
	.byte		VOICE , 61
	.byte		N08   
	.byte	W08
	.byte		VOICE , 5
	.byte		N08   
	.byte	W08
	.byte		VOICE , 61
	.byte		N08   
	.byte	W08
	.byte		VOICE , 5
	.byte		N08   
	.byte	W08
@ 004   ----------------------------------------
ch6rs_4_004:
	.byte		VOICE , 61
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 5
	.byte		N08   
	.byte	W08
	.byte		VOICE , 61
	.byte		N08   
	.byte	W08
	.byte		VOICE , 5
	.byte		N08   
	.byte	W08
	.byte		VOICE , 61
	.byte		N08   
	.byte	W08
	.byte		VOICE , 5
	.byte		N08   
	.byte	W08
	.byte		VOICE , 61
	.byte		N04   
	.byte	W04
	.byte		VOICE , 5
	.byte		N04   , Cn2 , v048
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 61
	.byte		N08   
	.byte	W08
	.byte		VOICE , 5
	.byte		N08   
	.byte	W08
	.byte		VOICE , 61
	.byte		N08   
	.byte	W08
	.byte		VOICE , 5
	.byte		N08   
	.byte	W08
	.byte	PEND
@ 005   ----------------------------------------
	.byte		VOICE , 61
	.byte		N08   
	.byte	W08
	.byte		VOICE , 5
	.byte		N08   
	.byte	W08
	.byte		VOICE , 61
	.byte		N08   
	.byte	W08
	.byte		VOICE , 5
	.byte		N08   
	.byte	W08
	.byte		VOICE , 61
	.byte		N08   
	.byte	W08
	.byte		VOICE , 5
	.byte		N08   
	.byte	W08
	.byte		VOICE , 61
	.byte		N08   
	.byte	W08
	.byte		VOICE , 5
	.byte		N08   
	.byte	W08
	.byte		VOICE , 61
	.byte		N04   
	.byte	W04
	.byte		VOICE , 5
	.byte		N04   , Cn2 , v048
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 61
	.byte		N04   
	.byte	W04
	.byte		VOICE , 5
	.byte		N04   , Cn2 , v048
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
@ 006   ----------------------------------------
	.byte	PATT
	 .word	ch6rs_4_000
@ 007   ----------------------------------------
	.byte		VOICE , 61
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 5
	.byte		N08   
	.byte	W08
	.byte		VOICE , 61
	.byte		N04   
	.byte	W04
	.byte		VOICE , 5
	.byte		N04   , Cn2 , v048
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 61
	.byte		N08   
	.byte	W08
	.byte		VOICE , 5
	.byte		N08   
	.byte	W08
	.byte		VOICE , 61
	.byte		N08   
	.byte	W08
	.byte		VOICE , 5
	.byte		N08   
	.byte	W08
	.byte		VOICE , 61
	.byte		N08   
	.byte	W08
	.byte		VOICE , 5
	.byte		N08   
	.byte	W08
	.byte		VOICE , 61
	.byte		N04   
	.byte	W04
	.byte		VOICE , 5
	.byte		N04   , Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
@ 008   ----------------------------------------
	.byte		VOICE , 61
	.byte		N16   
	.byte	W16
	.byte		N16   
	.byte	W16
	.byte		N16   
	.byte	W16
	.byte		N16   
	.byte	W16
	.byte		N08   
	.byte	W08
	.byte		VOICE , 5
	.byte		N08   
	.byte	W08
	.byte		VOICE , 61
	.byte		N08   
	.byte	W08
	.byte		VOICE , 5
	.byte		N08   
	.byte	W08
@ 009   ----------------------------------------
ch6rs_4_009:
	.byte		VOICE , 61
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 5
	.byte		N08   
	.byte	W08
	.byte		VOICE , 61
	.byte		N08   
	.byte	W08
	.byte		VOICE , 5
	.byte		N08   
	.byte	W08
	.byte		VOICE , 61
	.byte		N08   
	.byte	W08
	.byte		VOICE , 5
	.byte		N08   
	.byte	W08
	.byte		VOICE , 61
	.byte		N08   
	.byte	W08
	.byte		VOICE , 5
	.byte		N08   
	.byte	W08
	.byte		VOICE , 61
	.byte		N08   
	.byte	W08
	.byte		VOICE , 5
	.byte		N08   
	.byte	W08
	.byte		VOICE , 61
	.byte		N04   
	.byte	W04
	.byte		VOICE , 5
	.byte		N04   , Cn2 , v048
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte	PEND
@ 010   ----------------------------------------
	.byte	PATT
	 .word	ch6rs_4_000
@ 011   ----------------------------------------
	.byte		VOICE , 61
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 5
	.byte		N04   , Cn2 , v048
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 61
	.byte		N04   
	.byte	W04
	.byte		VOICE , 5
	.byte		N04   , Cn2 , v048
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 61
	.byte		N08   
	.byte	W08
	.byte		VOICE , 5
	.byte		N08   
	.byte	W08
	.byte		VOICE , 61
	.byte		N08   
	.byte	W08
	.byte		VOICE , 5
	.byte		N08   
	.byte	W08
	.byte		VOICE , 61
	.byte		N08   
	.byte	W08
	.byte		VOICE , 5
	.byte		N08   
	.byte	W08
	.byte		VOICE , 61
	.byte		N08   
	.byte	W08
	.byte		VOICE , 5
	.byte		N08   
	.byte	W08
@ 012   ----------------------------------------
	.byte	PATT
	 .word	ch6rs_4_004
@ 013   ----------------------------------------
	.byte		VOICE , 61
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 5
	.byte		N08   
	.byte	W08
	.byte		VOICE , 61
	.byte		N04   
	.byte	W04
	.byte		VOICE , 5
	.byte		N04   , Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 61
	.byte		N16   
	.byte	W16
	.byte		N16   
	.byte	W16
	.byte		N16   
	.byte	W16
	.byte		N16   
	.byte	W16
@ 014   ----------------------------------------
	.byte		N08   
	.byte	W08
	.byte		VOICE , 5
	.byte		N08   
	.byte	W08
	.byte		VOICE , 61
	.byte		N08   
	.byte	W08
	.byte		VOICE , 5
	.byte		N08   
	.byte	W08
	.byte		VOICE , 61
	.byte		N08   
	.byte	W08
	.byte		VOICE , 5
	.byte		N08   
	.byte	W08
	.byte		VOICE , 61
	.byte		N08   
	.byte	W08
	.byte		VOICE , 5
	.byte		N08   
	.byte	W08
	.byte		VOICE , 61
	.byte		N08   
	.byte	W08
	.byte		VOICE , 5
	.byte		N08   
	.byte	W08
	.byte		VOICE , 61
	.byte		N08   
	.byte	W08
	.byte		VOICE , 5
	.byte		N08   
	.byte	W08
@ 015   ----------------------------------------
	.byte	PATT
	 .word	ch6rs_4_001
@ 016   ----------------------------------------
	.byte		VOICE , 61
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 5
	.byte		N08   
	.byte	W08
	.byte		VOICE , 61
	.byte		N08   
	.byte	W08
	.byte		VOICE , 5
	.byte		N08   
	.byte	W08
	.byte		VOICE , 61
	.byte		N04   
	.byte	W04
	.byte		VOICE , 5
	.byte		N04   , Cn2 , v048
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 61
	.byte		N04   
	.byte	W04
	.byte		VOICE , 5
	.byte		N04   , Cn2 , v048
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 61
	.byte		N08   
	.byte	W08
	.byte		VOICE , 5
	.byte		N08   
	.byte	W08
	.byte		VOICE , 61
	.byte		N08   
	.byte	W08
	.byte		VOICE , 5
	.byte		N08   
	.byte	W08
@ 017   ----------------------------------------
	.byte	PATT
	 .word	ch6rs_4_009
@ 018   ----------------------------------------
	.byte	PATT
	 .word	ch6rs_4_000
@ 019   ----------------------------------------
	.byte		VOICE , 61
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 5
	.byte		N04   , Cn2 , v048
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 61
	.byte		N08   
	.byte	W08
	.byte		VOICE , 5
	.byte		N08   
	.byte	W08
	.byte		VOICE , 61
	.byte		N08   
	.byte	W08
	.byte		VOICE , 5
	.byte		N08   
	.byte	W08
	.byte		VOICE , 61
	.byte		N08   
	.byte	W08
	.byte		VOICE , 5
	.byte		N08   
	.byte	W08
	.byte		VOICE , 61
	.byte		N08   
	.byte	W08
	.byte		VOICE , 5
	.byte		N08   
	.byte	W08
	.byte		VOICE , 61
	.byte		N08   
	.byte	W08
	.byte		VOICE , 5
	.byte		N08   
	.byte	W08
@ 020   ----------------------------------------
	.byte	PATT
	 .word	ch6rs_4_004
@ 021   ----------------------------------------
	.byte		VOICE , 61
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 5
	.byte		N08   
	.byte	W08
	.byte		VOICE , 61
	.byte		N08   
	.byte	W08
	.byte		VOICE , 5
	.byte		N08   
	.byte	W08
	.byte		VOICE , 61
	.byte		N08   
	.byte	W08
	.byte		VOICE , 5
	.byte		N08   
	.byte	W08
	.byte		VOICE , 61
	.byte		N08   
	.byte	W08
	.byte		VOICE , 5
	.byte		N08   
	.byte	W08
	.byte		VOICE , 61
	.byte		N04   
	.byte	W04
	.byte		VOICE , 5
	.byte		N12   , Cn2 , v048
	.byte	W12
	.byte		VOICE , 61
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 5
	.byte		N12   , Cn2 , v048
	.byte	W12
@ 022   ----------------------------------------
	.byte	PATT
	 .word	ch6rs_4_000
@ 023   ----------------------------------------
	.byte	PATT
	 .word	ch6rs_4_001
@ 024   ----------------------------------------
	.byte		VOICE , 61
	.byte		N48   , Cn2 , v127
	.byte	W48
	.byte		VOICE , 5
	.byte		N04   
	.byte	W04
	.byte		N12   , Cn2 , v104
	.byte	W12
	.byte		VOICE , 61
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 5
	.byte		N08   
	.byte	W08
	.byte		VOICE , 61
	.byte		N08   
	.byte	W08
	.byte		VOICE , 5
	.byte		N08   
	.byte	W08
@ 025   ----------------------------------------
	.byte	PATT
	 .word	ch6rs_4_009
@ 026   ----------------------------------------
	.byte	PATT
	 .word	ch6rs_4_000
@ 027   ----------------------------------------
	.byte		VOICE , 61
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 5
	.byte		N04   , Cn2 , v048
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 61
	.byte		N04   
	.byte	W04
	.byte		VOICE , 5
	.byte		N04   , Cn2 , v048
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W72
	.byte	GOTO
	 .word	ch6rs_4_B1
ch6rs_4_B2:
@ 028   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

ch6rs:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	ch6rs_pri	@ Priority
	.byte	ch6rs_rev	@ Reverb.

	.word	ch6rs_grp

	.word	ch6rs_1
	.word	ch6rs_2
	.word	ch6rs_3
	.word	ch6rs_4

	.end
