	.include "MPlayDef.s"

	.equ	ch6top_grp, voicegroup000
	.equ	ch6top_pri, 128
	.equ	ch6top_rev, reverb_set+50
	.equ	ch6top_mvl, 127
	.equ	ch6top_key, 0
	.equ	ch6top_tbs, 1
	.equ	ch6top_exg, 0
	.equ	ch6top_cmp, 1

	.section .rodata
	.global	ch6top
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

ch6top_1:
	.byte		VOL   , 127*ch6top_mvl/mxv
	.byte	KEYSH , ch6top_key+0
ch6top_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 100*ch6top_tbs/2
	.byte		VOICE , 88
	.byte		N08   , Fs2 , v127
	.byte	W08
	.byte		        Bn2 
	.byte	W08
	.byte		        As2 
	.byte	W08
	.byte		        Bn2 
	.byte	W16
	.byte		N08   
	.byte	W08
	.byte		        Cs3 
	.byte	W08
	.byte		        Bn2 
	.byte	W08
	.byte		        An2 
	.byte	W08
	.byte		        En2 
	.byte	W08
	.byte		        Dn2 
	.byte	W08
	.byte		        Cs2 
	.byte	W08
@ 001   ----------------------------------------
	.byte	W24
	.byte		        Fs2 
	.byte	W08
	.byte		        Gn2 
	.byte	W08
	.byte		        Fs2 
	.byte	W08
	.byte		        Dn2 
	.byte	W08
	.byte		        Bn1 
	.byte	W16
	.byte		N08   
	.byte	W08
	.byte		        Dn2 
	.byte	W08
	.byte		        En2 
	.byte	W08
@ 002   ----------------------------------------
	.byte		        Fs2 
	.byte	W08
	.byte		        Gs2 
	.byte	W08
	.byte		        An2 
	.byte	W08
	.byte		        As2 
	.byte	W16
	.byte		        Bn2 
	.byte	W08
	.byte		        Gs2 
	.byte	W08
	.byte		        En2 
	.byte	W08
	.byte		        Ds2 
	.byte	W08
	.byte		        Bn2 
	.byte	W08
	.byte		        As2 
	.byte	W08
	.byte		        Bn2 
	.byte	W08
@ 003   ----------------------------------------
ch6top_1_003:
	.byte	W08
	.byte		N08   , Bn2 , v127
	.byte	W08
	.byte		        Cs3 
	.byte	W08
	.byte		        Bn2 
	.byte	W08
	.byte		        An2 
	.byte	W08
	.byte		        En2 
	.byte	W08
	.byte		        Dn2 
	.byte	W08
	.byte		        Cs2 
	.byte	W32
	.byte		        Fs2 
	.byte	W08
	.byte	PEND
@ 004   ----------------------------------------
	.byte		        Gn2 
	.byte	W08
	.byte		        Dn2 
	.byte	W08
	.byte		        Bn1 
	.byte	W08
	.byte		        Fs2 
	.byte	W08
	.byte		        Cs2 
	.byte	W08
	.byte		        As1 
	.byte	W08
	.byte		        Fs1 
	.byte	W08
	.byte		        As1 
	.byte	W08
	.byte		        Dn2 
	.byte	W08
	.byte		        Bn1 
	.byte	W08
	.byte		        Gn1 
	.byte	W08
	.byte		        Cs2 
	.byte	W08
@ 005   ----------------------------------------
	.byte		        As1 
	.byte	W08
	.byte		        Fs1 
	.byte	W08
	.byte		        En1 
	.byte	W08
	.byte		        Fs1 
	.byte	W08
	.byte		N16   , Ds1 
	.byte	W64
@ 006   ----------------------------------------
	.byte	W56
	.byte		N08   , Ds2 
	.byte	W08
	.byte		        Fs2 
	.byte	W08
	.byte		        Bn2 
	.byte	W08
	.byte		        As2 
	.byte	W08
	.byte		        Bn2 
	.byte	W08
@ 007   ----------------------------------------
	.byte	PATT
	 .word	ch6top_1_003
@ 008   ----------------------------------------
	.byte		N08   , Gn2 , v127
	.byte	W08
	.byte		        Fs2 
	.byte	W08
	.byte		        Dn2 
	.byte	W08
	.byte		        Bn1 
	.byte	W16
	.byte		N08   
	.byte	W08
	.byte		        Dn2 
	.byte	W08
	.byte		        En2 
	.byte	W08
	.byte		        Fs2 
	.byte	W08
	.byte		        Gs2 
	.byte	W08
	.byte		        An2 
	.byte	W08
	.byte		        As2 
	.byte	W08
@ 009   ----------------------------------------
	.byte	W08
	.byte		        Bn2 
	.byte	W08
	.byte		        Gs2 
	.byte	W08
	.byte		        En2 
	.byte	W08
	.byte		        Ds2 
	.byte	W08
	.byte		        Bn2 
	.byte	W08
	.byte		        As2 
	.byte	W08
	.byte		        Bn2 
	.byte	W16
	.byte		N08   
	.byte	W08
	.byte		        Cs3 
	.byte	W08
	.byte		        Bn2 
	.byte	W08
@ 010   ----------------------------------------
	.byte		        An2 
	.byte	W08
	.byte		        En2 
	.byte	W08
	.byte		        Dn2 
	.byte	W08
	.byte		        Cs2 
	.byte	W32
	.byte		        Fs2 
	.byte	W08
	.byte		        Gn2 
	.byte	W08
	.byte		        Dn2 
	.byte	W08
	.byte		        Bn1 
	.byte	W08
	.byte		        Fs2 
	.byte	W08
@ 011   ----------------------------------------
	.byte		        Cs2 
	.byte	W08
	.byte		        As1 
	.byte	W08
	.byte		        Fs1 
	.byte	W08
	.byte		        As1 
	.byte	W08
	.byte		        Dn2 
	.byte	W08
	.byte		        Bn1 
	.byte	W08
	.byte		        Gn1 
	.byte	W08
	.byte		        Cs2 
	.byte	W08
	.byte		        As1 
	.byte	W08
	.byte		        Fs1 
	.byte	W08
	.byte		        En1 
	.byte	W08
	.byte		        Fs1 
	.byte	W08
@ 012   ----------------------------------------
	.byte		N16   , Ds1 
	.byte	W96
@ 013   ----------------------------------------
	.byte	W32
	.byte		N08   , Bn0 
	.byte	W08
	.byte		        Fs1 
	.byte	W16
	.byte		        Fs0 
	.byte	W08
	.byte		        Cn1 
	.byte	W08
	.byte		        En1 
	.byte	W08
	.byte		N08   
	.byte	W16
@ 014   ----------------------------------------
	.byte		        Bn0 
	.byte	W08
	.byte		        Fs1 
	.byte	W16
	.byte		        Fs0 
	.byte	W08
	.byte		        Cn1 
	.byte	W08
	.byte		        En1 
	.byte	W08
	.byte		N08   
	.byte	W16
	.byte		        Dn0 
	.byte	W08
	.byte		        Fs1 
	.byte	W16
	.byte		        GnM1
	.byte	W08
@ 015   ----------------------------------------
	.byte		        GsM1
	.byte	W08
	.byte		        Ds1 
	.byte	W08
	.byte		N08   
	.byte	W16
	.byte		        Dn0 
	.byte	W08
	.byte		        Fs1 
	.byte	W16
	.byte		        GnM1
	.byte	W08
	.byte		        GsM1
	.byte	W08
	.byte		        Ds1 
	.byte	W08
	.byte		N08   
	.byte	W16
@ 016   ----------------------------------------
	.byte		        Dn0 
	.byte	W08
	.byte		        Fs1 
	.byte	W16
	.byte		        AnM1
	.byte	W08
	.byte		        Dn0 
	.byte	W08
	.byte		        Fs1 
	.byte	W08
	.byte		N08   
	.byte	W16
	.byte		        En1 
	.byte	W08
	.byte		        Bn1 
	.byte	W16
	.byte		        Bn0 
	.byte	W08
@ 017   ----------------------------------------
	.byte		        Fn1 
	.byte	W08
	.byte		        An1 
	.byte	W08
	.byte		N08   
	.byte	W16
	.byte		        En1 
	.byte	W08
	.byte		        Bn1 
	.byte	W16
	.byte		        Bn0 
	.byte	W08
	.byte		        Fn1 
	.byte	W08
	.byte		        An1 
	.byte	W08
	.byte		N08   
	.byte	W16
@ 018   ----------------------------------------
	.byte		        Gn0 
	.byte	W08
	.byte		        Bn1 
	.byte	W16
	.byte		        Cn0 
	.byte	W08
	.byte		        Cs0 
	.byte	W08
	.byte		        Gs1 
	.byte	W08
	.byte		N08   
	.byte	W16
	.byte		        Gn0 
	.byte	W08
	.byte		        Bn1 
	.byte	W16
	.byte		        Cn0 
	.byte	W08
@ 019   ----------------------------------------
	.byte		        Cs0 
	.byte	W08
	.byte		        Gs1 
	.byte	W08
	.byte		N08   
	.byte	W80
	.byte	GOTO
	 .word	ch6top_1_B1
ch6top_1_B2:
@ 020   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

ch6top_2:
	.byte		VOL   , 127*ch6top_mvl/mxv
	.byte	KEYSH , ch6top_key+0
ch6top_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 88
	.byte		N08   , Bn0 , v127
	.byte	W16
	.byte		        Fs0 
	.byte	W16
	.byte		        Bn0 
	.byte	W16
	.byte		        Fs0 
	.byte	W08
	.byte		        Gs0 
	.byte	W08
	.byte		        An0 
	.byte	W16
	.byte		        Cs1 
	.byte	W16
@ 001   ----------------------------------------
	.byte		        Fs1 
	.byte	W16
	.byte		        En1 
	.byte	W16
	.byte		        Gn0 
	.byte	W16
	.byte		        Bn0 
	.byte	W16
	.byte		        Fs1 
	.byte	W16
	.byte		        En1 
	.byte	W08
	.byte		        Bn0 
	.byte	W08
@ 002   ----------------------------------------
	.byte		        Fs0 
	.byte	W16
	.byte		        As0 
	.byte	W16
	.byte		        Cs1 
	.byte	W16
	.byte		        En1 
	.byte	W08
	.byte		        As0 
	.byte	W08
	.byte		        Bn0 
	.byte	W16
	.byte		        Fs0 
	.byte	W16
@ 003   ----------------------------------------
ch6top_2_003:
	.byte		N08   , Bn0 , v127
	.byte	W16
	.byte		        Fs0 
	.byte	W08
	.byte		        Gs0 
	.byte	W08
	.byte		        An0 
	.byte	W16
	.byte		        Cs1 
	.byte	W16
	.byte		        Fs1 
	.byte	W16
	.byte		        En1 
	.byte	W16
	.byte	PEND
@ 004   ----------------------------------------
	.byte		        Gn0 
	.byte	W32
	.byte		        As0 
	.byte	W24
	.byte		        Fs0 
	.byte	W08
	.byte		        Bn0 
	.byte	W32
@ 005   ----------------------------------------
	.byte		        Fs0 
	.byte	W24
	.byte		        As0 
	.byte	W08
	.byte		        Bn0 
	.byte	W16
	.byte		        Fs0 
	.byte	W16
	.byte		        Bn0 
	.byte	W16
	.byte		        Fs0 
	.byte	W08
	.byte		        Gs0 
	.byte	W08
@ 006   ----------------------------------------
	.byte		        Bn0 
	.byte	W16
	.byte		        Fs0 
	.byte	W08
	.byte		        Gs0 
	.byte	W08
	.byte		        Bn0 
	.byte	W08
	.byte		        Cs1 
	.byte	W08
	.byte		        Ds1 
	.byte	W16
	.byte		        Bn0 
	.byte	W16
	.byte		        Fs0 
	.byte	W16
@ 007   ----------------------------------------
	.byte	PATT
	 .word	ch6top_2_003
@ 008   ----------------------------------------
	.byte		N08   , Gn0 , v127
	.byte	W16
	.byte		        Bn0 
	.byte	W16
	.byte		        Fs1 
	.byte	W16
	.byte		        En1 
	.byte	W08
	.byte		        Bn0 
	.byte	W08
	.byte		        Fs0 
	.byte	W16
	.byte		        As0 
	.byte	W16
@ 009   ----------------------------------------
	.byte		        Cs1 
	.byte	W16
	.byte		        En1 
	.byte	W08
	.byte		        As0 
	.byte	W08
	.byte		        Bn0 
	.byte	W16
	.byte		        Fs0 
	.byte	W16
	.byte		        Bn0 
	.byte	W16
	.byte		        Fs0 
	.byte	W08
	.byte		        Gs0 
	.byte	W08
@ 010   ----------------------------------------
	.byte		        An0 
	.byte	W16
	.byte		        Cs1 
	.byte	W16
	.byte		        Fs1 
	.byte	W16
	.byte		        En1 
	.byte	W16
	.byte		        Gn0 
	.byte	W32
@ 011   ----------------------------------------
	.byte		        As0 
	.byte	W24
	.byte		        Fs0 
	.byte	W08
	.byte		        Bn0 
	.byte	W32
	.byte		        Fs0 
	.byte	W24
	.byte		        As0 
	.byte	W08
@ 012   ----------------------------------------
	.byte		        Bn0 
	.byte	W16
	.byte		        Fs0 
	.byte	W16
	.byte		        Bn0 
	.byte	W16
	.byte		        Fs0 
	.byte	W08
	.byte		        Gs0 
	.byte	W08
	.byte		        Bn0 
	.byte	W16
	.byte		        Fs0 
	.byte	W16
@ 013   ----------------------------------------
	.byte		        Bn0 
	.byte	W40
	.byte		        Ds1 
	.byte	W32
	.byte		        Cn1 
	.byte	W08
	.byte		N08   
	.byte	W16
@ 014   ----------------------------------------
	.byte	W08
	.byte		        Ds1 
	.byte	W32
	.byte		        Cn1 
	.byte	W08
	.byte		N08   
	.byte	W24
	.byte		        Dn1 
	.byte	W24
@ 015   ----------------------------------------
	.byte	W08
	.byte		        Cn1 
	.byte	W08
	.byte		N08   
	.byte	W24
	.byte		        Dn1 
	.byte	W32
	.byte		        Cn1 
	.byte	W08
	.byte		N08   
	.byte	W16
@ 016   ----------------------------------------
	.byte	W08
	.byte		        Dn1 
	.byte	W32
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W24
	.byte		        Gs1 
	.byte	W24
@ 017   ----------------------------------------
	.byte	W08
	.byte		        Fn1 
	.byte	W08
	.byte		N08   
	.byte	W24
	.byte		        Gs1 
	.byte	W32
	.byte		        Fn1 
	.byte	W08
	.byte		N08   
	.byte	W16
@ 018   ----------------------------------------
	.byte	W08
	.byte		        Gn1 
	.byte	W32
	.byte		        Fn1 
	.byte	W08
	.byte		N08   
	.byte	W24
	.byte		        Gn1 
	.byte	W24
@ 019   ----------------------------------------
	.byte	W08
	.byte		        Fn1 
	.byte	W08
	.byte		N08   
	.byte	W80
	.byte	GOTO
	 .word	ch6top_2_B1
ch6top_2_B2:
@ 020   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

ch6top_3:
	.byte		VOL   , 127*ch6top_mvl/mxv
	.byte	KEYSH , ch6top_key+0
ch6top_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte	W08
	.byte		        88
	.byte		N08   , Ds2 , v064
	.byte	W16
	.byte		N08   
	.byte	W16
	.byte		N08   
	.byte	W16
	.byte		N08   
	.byte	W16
	.byte		        Cs2 
	.byte	W16
	.byte		N08   
	.byte	W08
@ 001   ----------------------------------------
	.byte	W08
	.byte		N08   
	.byte	W16
	.byte		N08   
	.byte	W16
	.byte		        Bn1 
	.byte	W16
	.byte		N08   
	.byte	W16
	.byte		N08   
	.byte	W16
	.byte		N08   
	.byte	W08
@ 002   ----------------------------------------
	.byte	W08
	.byte		        As1 
	.byte	W16
	.byte		N08   
	.byte	W16
	.byte		N08   
	.byte	W16
	.byte		N08   
	.byte	W16
	.byte		        Ds2 
	.byte	W16
	.byte		N08   
	.byte	W08
@ 003   ----------------------------------------
ch6top_3_003:
	.byte	W08
	.byte		N08   , Ds2 , v064
	.byte	W16
	.byte		N08   
	.byte	W16
	.byte		        Cs2 
	.byte	W16
	.byte		N08   
	.byte	W16
	.byte		N08   
	.byte	W16
	.byte		N08   
	.byte	W08
	.byte	PEND
@ 004   ----------------------------------------
	.byte	W08
	.byte		N04   , Bn1 
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N12   , Cs2 
	.byte	W12
	.byte		N04   
	.byte	W04
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W16
	.byte		N04   , Dn2 
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
@ 005   ----------------------------------------
	.byte		N12   , En2 
	.byte	W12
	.byte		N04   
	.byte	W04
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W16
	.byte		        Ds2 
	.byte	W16
	.byte		N08   
	.byte	W16
	.byte		N08   
	.byte	W16
	.byte		N08   
	.byte	W08
@ 006   ----------------------------------------
	.byte	W08
	.byte		N08   
	.byte	W16
	.byte		N08   
	.byte	W16
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N08   
	.byte	W24
	.byte		N08   
	.byte	W16
	.byte		N08   
	.byte	W08
@ 007   ----------------------------------------
	.byte	PATT
	 .word	ch6top_3_003
@ 008   ----------------------------------------
	.byte	W08
	.byte		N08   , Bn1 , v064
	.byte	W16
	.byte		N08   
	.byte	W16
	.byte		N08   
	.byte	W16
	.byte		N08   
	.byte	W16
	.byte		        As1 
	.byte	W16
	.byte		N08   
	.byte	W08
@ 009   ----------------------------------------
	.byte	W08
	.byte		N08   
	.byte	W16
	.byte		N08   
	.byte	W16
	.byte		        Ds2 
	.byte	W16
	.byte		N08   
	.byte	W16
	.byte		N08   
	.byte	W16
	.byte		N08   
	.byte	W08
@ 010   ----------------------------------------
	.byte	W08
	.byte		        Cs2 
	.byte	W16
	.byte		N08   
	.byte	W16
	.byte		N08   
	.byte	W16
	.byte		N08   
	.byte	W16
	.byte		N04   , Bn1 
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
@ 011   ----------------------------------------
	.byte		N12   , Cs2 
	.byte	W12
	.byte		N04   
	.byte	W04
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W16
	.byte		N04   , Dn2 
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N12   , En2 
	.byte	W12
	.byte		N04   
	.byte	W04
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
@ 012   ----------------------------------------
	.byte	W08
	.byte		        Ds2 
	.byte	W16
	.byte		N08   
	.byte	W16
	.byte		N08   
	.byte	W16
	.byte		N08   
	.byte	W16
	.byte		N08   
	.byte	W16
	.byte		N08   
	.byte	W08
@ 013   ----------------------------------------
	.byte	W08
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N08   
	.byte	W24
	.byte		N04   , As2 , v127
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		N08   , Cs3 
	.byte	W08
	.byte		N04   , Bn2 
	.byte	W04
	.byte		        As2 
	.byte	W04
	.byte		N08   , An2 
	.byte	W08
	.byte		        Gn2 
	.byte	W08
	.byte		        Fs2 
	.byte	W08
	.byte		        En2 
	.byte	W08
@ 014   ----------------------------------------
	.byte		        Ds2 
	.byte	W08
	.byte		        Cs2 
	.byte	W08
	.byte		N16   , Bn1 
	.byte	W16
	.byte		        An1 
	.byte	W16
	.byte		        Gn1 
	.byte	W16
	.byte		N24   , Fs1 
	.byte	W24
	.byte		N08   , Dn1 
	.byte	W08
@ 015   ----------------------------------------
	.byte		N16   , Fn1 
	.byte	W16
	.byte		N08   , Ds1 
	.byte	W08
	.byte		N04   , Fn1 
	.byte	W04
	.byte		        Ds1 
	.byte	W04
	.byte		N16   , Dn1 
	.byte	W16
	.byte		        An1 
	.byte	W16
	.byte		        Cn2 
	.byte	W16
	.byte		        Ds2 
	.byte	W16
@ 016   ----------------------------------------
	.byte		N72   , Dn2 
	.byte	W72
	.byte		N04   , Ds3 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		N08   , Fs3 
	.byte	W08
	.byte		N04   , En3 
	.byte	W04
	.byte		        Ds3 
	.byte	W04
@ 017   ----------------------------------------
	.byte		N08   , Dn3 
	.byte	W08
	.byte		        Cn3 
	.byte	W08
	.byte		        Bn2 
	.byte	W08
	.byte		        An2 
	.byte	W08
	.byte		        Gs2 
	.byte	W08
	.byte		        Fs2 
	.byte	W08
	.byte		N16   , En2 
	.byte	W16
	.byte		        Dn2 
	.byte	W16
	.byte		        Cn2 
	.byte	W16
@ 018   ----------------------------------------
	.byte		N24   , Bn1 
	.byte	W24
	.byte		TIE   , As1 
	.byte	W72
@ 019   ----------------------------------------
	.byte	W32
	.byte		EOT   
	.byte	W64
	.byte	GOTO
	 .word	ch6top_3_B1
ch6top_3_B2:
@ 020   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

ch6top_4:
	.byte		VOL   , 127*ch6top_mvl/mxv
	.byte	KEYSH , ch6top_key+0
ch6top_4_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte	W08
	.byte		        88
	.byte		N08   , Fs2 , v064
	.byte	W16
	.byte		N08   
	.byte	W16
	.byte		N08   
	.byte	W16
	.byte		N08   
	.byte	W16
	.byte		        En2 
	.byte	W16
	.byte		N08   
	.byte	W08
@ 001   ----------------------------------------
	.byte	W08
	.byte		N08   
	.byte	W16
	.byte		N08   
	.byte	W16
	.byte		        Dn2 
	.byte	W16
	.byte		N08   
	.byte	W16
	.byte		N08   
	.byte	W16
	.byte		N08   
	.byte	W08
@ 002   ----------------------------------------
	.byte	W08
	.byte		        En2 
	.byte	W16
	.byte		N08   
	.byte	W16
	.byte		N08   
	.byte	W16
	.byte		N08   
	.byte	W16
	.byte		        Fs2 
	.byte	W16
	.byte		N08   
	.byte	W08
@ 003   ----------------------------------------
ch6top_4_003:
	.byte	W08
	.byte		N08   , Fs2 , v064
	.byte	W16
	.byte		N08   
	.byte	W16
	.byte		        En2 
	.byte	W16
	.byte		N08   
	.byte	W16
	.byte		N08   
	.byte	W16
	.byte		N08   
	.byte	W08
	.byte	PEND
@ 004   ----------------------------------------
	.byte	W08
	.byte		N04   , Dn2 
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N12   , En2 
	.byte	W12
	.byte		N04   
	.byte	W04
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W16
	.byte		N04   , Bn1 
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
@ 005   ----------------------------------------
	.byte		N12   , Cs2 
	.byte	W12
	.byte		N04   
	.byte	W04
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W16
	.byte		        Fs2 
	.byte	W16
	.byte		N08   
	.byte	W16
	.byte		N08   
	.byte	W16
	.byte		N08   
	.byte	W08
@ 006   ----------------------------------------
	.byte	W08
	.byte		N08   
	.byte	W16
	.byte		N08   
	.byte	W16
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N08   
	.byte	W24
	.byte		N08   
	.byte	W16
	.byte		N08   
	.byte	W08
@ 007   ----------------------------------------
	.byte	PATT
	 .word	ch6top_4_003
@ 008   ----------------------------------------
	.byte	W08
	.byte		N08   , Dn2 , v064
	.byte	W16
	.byte		N08   
	.byte	W16
	.byte		N08   
	.byte	W16
	.byte		N08   
	.byte	W16
	.byte		        En2 
	.byte	W16
	.byte		N08   
	.byte	W08
@ 009   ----------------------------------------
	.byte	W08
	.byte		N08   
	.byte	W16
	.byte		N08   
	.byte	W16
	.byte		        Fs2 
	.byte	W16
	.byte		N08   
	.byte	W16
	.byte		N08   
	.byte	W16
	.byte		N08   
	.byte	W08
@ 010   ----------------------------------------
	.byte	W08
	.byte		        En2 
	.byte	W16
	.byte		N08   
	.byte	W16
	.byte		N08   
	.byte	W16
	.byte		N08   
	.byte	W16
	.byte		N04   , Dn2 
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
@ 011   ----------------------------------------
	.byte		N12   , En2 
	.byte	W12
	.byte		N04   
	.byte	W04
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W16
	.byte		N04   , Bn1 
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N12   , Cs2 
	.byte	W12
	.byte		N04   
	.byte	W04
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
@ 012   ----------------------------------------
	.byte	W08
	.byte		        Fs2 
	.byte	W16
	.byte		N08   
	.byte	W16
	.byte		N08   
	.byte	W16
	.byte		N08   
	.byte	W16
	.byte		N08   
	.byte	W16
	.byte		N08   
	.byte	W08
@ 013   ----------------------------------------
	.byte	W08
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N08   
	.byte	W36
	.byte		N04   , As2 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		N08   , Cs3 
	.byte	W08
	.byte		N04   , Bn2 
	.byte	W04
	.byte		        As2 
	.byte	W04
	.byte		N08   , An2 
	.byte	W08
	.byte		        Gn2 
	.byte	W08
	.byte		        Fs2 
	.byte	W04
@ 014   ----------------------------------------
	.byte	W04
	.byte		        En2 
	.byte	W08
	.byte		        Ds2 
	.byte	W08
	.byte		        Cs2 
	.byte	W08
	.byte		N16   , Bn1 
	.byte	W16
	.byte		        An1 
	.byte	W16
	.byte		        Gn1 
	.byte	W16
	.byte		N24   , Fs1 
	.byte	W20
@ 015   ----------------------------------------
	.byte	W04
	.byte		N08   , Dn1 
	.byte	W08
	.byte		N16   , Fn1 
	.byte	W16
	.byte		N08   , Ds1 
	.byte	W08
	.byte		N04   , Fn1 
	.byte	W04
	.byte		        Ds1 
	.byte	W04
	.byte		N16   , Dn1 
	.byte	W16
	.byte		        An1 
	.byte	W16
	.byte		        Cn2 
	.byte	W16
	.byte		        Ds2 
	.byte	W04
@ 016   ----------------------------------------
	.byte	W12
	.byte		N72   , Dn2 
	.byte	W72
	.byte		N04   , Ds3 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		N08   , Fs3 
	.byte	W04
@ 017   ----------------------------------------
	.byte	W04
	.byte		N04   , En3 
	.byte	W04
	.byte		        Ds3 
	.byte	W04
	.byte		N08   , Dn3 
	.byte	W08
	.byte		        Cn3 
	.byte	W08
	.byte		        Bn2 
	.byte	W08
	.byte		        An2 
	.byte	W08
	.byte		        Gs2 
	.byte	W08
	.byte		        Fs2 
	.byte	W08
	.byte		N16   , En2 
	.byte	W16
	.byte		        Dn2 
	.byte	W16
	.byte		        Cn2 
	.byte	W04
@ 018   ----------------------------------------
	.byte	W12
	.byte		N24   , Bn1 
	.byte	W24
	.byte		N92   , As1 
	.byte	W60
@ 019   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 .word	ch6top_4_B1
ch6top_4_B2:
@ 020   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

ch6top:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	ch6top_pri	@ Priority
	.byte	ch6top_rev	@ Reverb.

	.word	ch6top_grp

	.word	ch6top_1
	.word	ch6top_2
	.word	ch6top_3
	.word	ch6top_4

	.end
