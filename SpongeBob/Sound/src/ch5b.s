	.include "MPlayDef.s"

	.equ	ch5b_grp, voicegroup000
	.equ	ch5b_pri, 128
	.equ	ch5b_rev, reverb_set+50
	.equ	ch5b_mvl, 127
	.equ	ch5b_key, 0
	.equ	ch5b_tbs, 1
	.equ	ch5b_exg, 0
	.equ	ch5b_cmp, 1

	.section .rodata
	.global	ch5b
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

ch5b_1:
	.byte		VOL   , 127*ch5b_mvl/mxv
	.byte	KEYSH , ch5b_key+0
ch5b_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 100*ch5b_tbs/2
	.byte		VOICE , 84
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		        Cn2 , v080
	.byte	W08
	.byte		VOICE , 85
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 84
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		        Cn2 , v080
	.byte	W08
	.byte		VOICE , 85
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 84
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		        Cn2 , v080
	.byte	W08
	.byte		VOICE , 85
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 84
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
@ 001   ----------------------------------------
ch5b_1_001:
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		        Cn2 , v080
	.byte	W08
	.byte		VOICE , 85
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 84
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		        Cn2 , v080
	.byte	W08
	.byte		VOICE , 85
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 84
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		        Cn2 , v080
	.byte	W08
	.byte		VOICE , 85
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 84
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte	PEND
@ 002   ----------------------------------------
	.byte	PATT
	 .word	ch5b_1_001
@ 003   ----------------------------------------
	.byte	PATT
	 .word	ch5b_1_001
@ 004   ----------------------------------------
	.byte	PATT
	 .word	ch5b_1_001
@ 005   ----------------------------------------
	.byte	PATT
	 .word	ch5b_1_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	ch5b_1_001
@ 007   ----------------------------------------
	.byte	PATT
	 .word	ch5b_1_001
	.byte	GOTO
	 .word	ch5b_1_B1
ch5b_1_B2:
@ 008   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

ch5b_2:
	.byte		VOL   , 127*ch5b_mvl/mxv
	.byte	KEYSH , ch5b_key+0
ch5b_2_B1:
@ 000   ----------------------------------------
ch5b_2_000:
	.byte		VOICE , 69
	.byte		N08   , Dn2 , v127
	.byte	W08
	.byte		VOICE , 41
	.byte		N08   
	.byte	W08
	.byte		        Dn2 , v064
	.byte	W08
	.byte		        Cs2 , v127
	.byte	W08
	.byte		VOICE , 69
	.byte		N08   , Dn2 
	.byte	W08
	.byte		VOICE , 41
	.byte		N08   
	.byte	W08
	.byte		        Dn2 , v064
	.byte	W08
	.byte		        Cs2 , v127
	.byte	W08
	.byte		VOICE , 69
	.byte		N08   , Dn2 
	.byte	W08
	.byte		VOICE , 41
	.byte		N08   
	.byte	W08
	.byte		        Dn2 , v064
	.byte	W08
	.byte		        Cs2 , v127
	.byte	W08
	.byte	PEND
@ 001   ----------------------------------------
	.byte	PATT
	 .word	ch5b_2_000
@ 002   ----------------------------------------
	.byte	PATT
	 .word	ch5b_2_000
@ 003   ----------------------------------------
	.byte	PATT
	 .word	ch5b_2_000
@ 004   ----------------------------------------
	.byte	PATT
	 .word	ch5b_2_000
@ 005   ----------------------------------------
	.byte	PATT
	 .word	ch5b_2_000
@ 006   ----------------------------------------
	.byte	PATT
	 .word	ch5b_2_000
@ 007   ----------------------------------------
	.byte	PATT
	 .word	ch5b_2_000
	.byte	GOTO
	 .word	ch5b_2_B1
ch5b_2_B2:
@ 008   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

ch5b_3:
	.byte		VOL   , 127*ch5b_mvl/mxv
	.byte	KEYSH , ch5b_key+0
ch5b_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 14
	.byte		N04   , Dn2 , v127
	.byte	W04
	.byte		        As1 
	.byte	W04
	.byte		N08   , En1 
	.byte	W08
	.byte		N16   , Gn1 
	.byte	W16
	.byte		N08   , Ds2 
	.byte	W08
	.byte		        Gs1 
	.byte	W08
	.byte		N16   , Dn1 
	.byte	W16
	.byte		N04   , An1 
	.byte	W04
	.byte		        An2 
	.byte	W04
	.byte		N08   , En2 
	.byte	W08
	.byte		        Dn2 
	.byte	W08
	.byte		        Gn1 
	.byte	W08
@ 001   ----------------------------------------
	.byte		        Ds2 
	.byte	W08
	.byte		        Ds1 
	.byte	W08
	.byte		        Gs1 
	.byte	W08
	.byte		        Gs1 , v080
	.byte	W08
	.byte		N04   , Dn2 , v127
	.byte	W04
	.byte		        As1 
	.byte	W04
	.byte		N08   , En1 
	.byte	W08
	.byte		N16   , Gn1 
	.byte	W16
	.byte		N08   , Ds2 
	.byte	W08
	.byte		        Gs1 
	.byte	W08
	.byte		N16   , Dn1 
	.byte	W16
@ 002   ----------------------------------------
	.byte		N04   , An1 
	.byte	W04
	.byte		        An2 
	.byte	W04
	.byte		N08   , En2 
	.byte	W08
	.byte		        Dn2 
	.byte	W08
	.byte		        Gn1 
	.byte	W08
	.byte		        Ds2 
	.byte	W08
	.byte		        Ds1 
	.byte	W08
	.byte		        Gs1 
	.byte	W08
	.byte		        Gs1 , v080
	.byte	W08
	.byte		N04   , Dn2 , v127
	.byte	W04
	.byte		        As1 
	.byte	W04
	.byte		N08   , En1 
	.byte	W08
	.byte		        Gn1 
	.byte	W08
	.byte		VOICE , 70
	.byte		N04   , En2 
	.byte	W04
	.byte		        Fn2 
	.byte	W04
@ 003   ----------------------------------------
	.byte		N08   , Fs2 
	.byte	W08
	.byte		        Dn2 
	.byte	W08
	.byte		        Cn2 
	.byte	W08
	.byte		N04   , Bn1 
	.byte	W04
	.byte		        As1 
	.byte	W04
	.byte		N24   , An1 
	.byte	W24
	.byte		N04   , Bn1 
	.byte	W04
	.byte		        Cn2 
	.byte	W04
	.byte		N08   , Bn1 
	.byte	W08
	.byte		        An1 
	.byte	W08
	.byte		        Gs1 
	.byte	W08
	.byte		        Bn1 
	.byte	W08
@ 004   ----------------------------------------
	.byte		        An1 
	.byte	W08
	.byte		        Fs1 
	.byte	W08
	.byte		VOICE , 36
	.byte		N04   , An1 , v080
	.byte	W04
	.byte		        An1 , v052
	.byte	W04
	.byte		        Bn1 , v080
	.byte	W04
	.byte		        Bn1 , v052
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v052
	.byte	W08
	.byte		N04   , Bn1 , v080
	.byte	W04
	.byte		        Cn2 
	.byte	W04
	.byte		        Cn2 , v052
	.byte	W04
	.byte		        Bn1 , v080
	.byte	W04
	.byte		        Bn1 , v052
	.byte	W04
	.byte		        An1 , v080
	.byte	W04
	.byte		N08   , An1 , v052
	.byte	W08
	.byte		N04   , Fs1 , v080
	.byte	W04
	.byte		        Dn1 
	.byte	W04
	.byte		        Dn1 , v052
	.byte	W04
	.byte		        As0 , v080
	.byte	W04
	.byte		        As0 , v052
	.byte	W04
@ 005   ----------------------------------------
	.byte		        An0 , v080
	.byte	W04
	.byte		N12   , An0 , v052
	.byte	W28
	.byte		VOICE , 14
	.byte		N04   , Dn2 , v127
	.byte	W04
	.byte		        As1 
	.byte	W04
	.byte		N08   , En1 
	.byte	W08
	.byte		N16   , Gn1 
	.byte	W16
	.byte		VOICE , 70
	.byte		N12   , An2 
	.byte	W12
	.byte		N04   , Gs2 
	.byte	W04
	.byte		N08   , An2 
	.byte	W08
	.byte		        Bn2 
	.byte	W08
@ 006   ----------------------------------------
	.byte		        An2 
	.byte	W08
	.byte		N16   , Fs2 
	.byte	W16
	.byte		N04   , Dn2 
	.byte	W04
	.byte		        Cs2 
	.byte	W04
	.byte		N08   , Cn2 
	.byte	W08
	.byte		N04   , Bn1 
	.byte	W04
	.byte		        As1 
	.byte	W04
	.byte		N08   , An1 
	.byte	W08
	.byte		        Fs1 
	.byte	W08
	.byte		        Dn1 
	.byte	W08
	.byte		        Cn1 
	.byte	W08
	.byte		VOICE , 36
	.byte		N04   , An1 , v080
	.byte	W04
	.byte		        An1 , v052
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		        Cn2 , v052
	.byte	W04
@ 007   ----------------------------------------
	.byte		        En2 , v080
	.byte	W04
	.byte		N08   , En2 , v052
	.byte	W08
	.byte		N04   , Cn2 , v080
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		        En2 , v052
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		        Cn2 , v052
	.byte	W04
	.byte		        Dn2 , v080
	.byte	W04
	.byte		N08   , Dn2 , v052
	.byte	W08
	.byte		N04   , An1 , v080
	.byte	W04
	.byte		        Dn2 
	.byte	W04
	.byte		        Dn2 , v052
	.byte	W04
	.byte		        An1 , v080
	.byte	W04
	.byte		        An1 , v052
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W04
	.byte		N12   , Cn2 , v052
	.byte	W28
	.byte	GOTO
	 .word	ch5b_3_B1
ch5b_3_B2:
@ 008   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

ch5b_4:
	.byte		VOL   , 127*ch5b_mvl/mxv
	.byte	KEYSH , ch5b_key+0
ch5b_4_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 80
	.byte		N08   , Dn1 , v127
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		        Dn1 , v064
	.byte	W08
	.byte		        An1 , v127
	.byte	W08
	.byte		        Dn1 
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		        Dn1 , v064
	.byte	W08
	.byte		        An1 , v127
	.byte	W08
	.byte		        Dn1 
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		        Dn1 , v064
	.byte	W08
	.byte		        An1 , v127
	.byte	W08
@ 001   ----------------------------------------
ch5b_4_001:
	.byte		N08   , Dn1 , v127
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		        Dn1 , v064
	.byte	W08
	.byte		        An1 , v127
	.byte	W08
	.byte		        Dn1 
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		        Dn1 , v064
	.byte	W08
	.byte		        An1 , v127
	.byte	W08
	.byte		        Dn1 
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		        Dn1 , v064
	.byte	W08
	.byte		        An1 , v127
	.byte	W08
	.byte	PEND
@ 002   ----------------------------------------
	.byte	PATT
	 .word	ch5b_4_001
@ 003   ----------------------------------------
	.byte	PATT
	 .word	ch5b_4_001
@ 004   ----------------------------------------
	.byte	PATT
	 .word	ch5b_4_001
@ 005   ----------------------------------------
	.byte	PATT
	 .word	ch5b_4_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	ch5b_4_001
@ 007   ----------------------------------------
	.byte	PATT
	 .word	ch5b_4_001
	.byte	GOTO
	 .word	ch5b_4_B1
ch5b_4_B2:
@ 008   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

ch5b:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	ch5b_pri	@ Priority
	.byte	ch5b_rev	@ Reverb.

	.word	ch5b_grp

	.word	ch5b_1
	.word	ch5b_2
	.word	ch5b_3
	.word	ch5b_4

	.end
