	.include "MPlayDef.s"

	.equ	ch323_grp, voicegroup000
	.equ	ch323_pri, 128
	.equ	ch323_rev, reverb_set+50
	.equ	ch323_mvl, 127
	.equ	ch323_key, 0
	.equ	ch323_tbs, 1
	.equ	ch323_exg, 0
	.equ	ch323_cmp, 1

	.section .rodata
	.global	ch323
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

ch323_1:
	.byte		VOL   , 127*ch323_mvl/mxv
	.byte	KEYSH , ch323_key+0
ch323_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 100*ch323_tbs/2
	.byte		VOICE , 48
	.byte		N17   , Bn1 , v127
	.byte	W17
	.byte		VOICE , 49
	.byte		N17   
	.byte	W17
	.byte		VOICE , 50
	.byte		N11   
	.byte	W12
	.byte		VOICE , 48
	.byte		N11   
	.byte	W11
	.byte		VOICE , 49
	.byte		N17   
	.byte	W17
	.byte		VOICE , 50
	.byte		N05   
	.byte	W06
	.byte		VOICE , 46
	.byte		N11   
	.byte	W12
	.byte		VOICE , 48
	.byte		N17   
	.byte	W04
@ 001   ----------------------------------------
	.byte	W13
	.byte		VOICE , 49
	.byte		N17   
	.byte	W17
	.byte		VOICE , 50
	.byte		N11   
	.byte	W12
	.byte		VOICE , 48
	.byte		N11   
	.byte	W11
	.byte		VOICE , 49
	.byte		N11   
	.byte	W12
	.byte		VOICE , 51
	.byte		N11   
	.byte	W11
	.byte		VOICE , 46
	.byte		N11   
	.byte	W12
	.byte		VOICE , 48
	.byte		N17   
	.byte	W08
@ 002   ----------------------------------------
ch323_1_002:
	.byte	W09
	.byte		VOICE , 49
	.byte		N17   , Bn1 , v127
	.byte	W17
	.byte		VOICE , 50
	.byte		N11   
	.byte	W12
	.byte		VOICE , 48
	.byte		N11   
	.byte	W11
	.byte		VOICE , 49
	.byte		N17   
	.byte	W17
	.byte		VOICE , 50
	.byte		N05   
	.byte	W06
	.byte		VOICE , 46
	.byte		N11   
	.byte	W12
	.byte		VOICE , 48
	.byte		N17   
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
	.byte	W05
	.byte		VOICE , 49
	.byte		N17   
	.byte	W17
	.byte		VOICE , 50
	.byte		N11   
	.byte	W12
	.byte		VOICE , 51
	.byte		N11   
	.byte	W11
	.byte		VOICE , 46
	.byte		N17   
	.byte	W17
	.byte		VOICE , 50
	.byte		N05   
	.byte	W06
	.byte		VOICE , 51
	.byte		N11   
	.byte	W12
	.byte		VOICE , 48
	.byte		N17   
	.byte	W16
@ 004   ----------------------------------------
ch323_1_004:
	.byte	W01
	.byte		VOICE , 49
	.byte		N17   , Bn1 , v127
	.byte	W17
	.byte		VOICE , 50
	.byte		N11   
	.byte	W12
	.byte		VOICE , 48
	.byte		N11   
	.byte	W11
	.byte		VOICE , 49
	.byte		N17   
	.byte	W17
	.byte		VOICE , 50
	.byte		N05   
	.byte	W06
	.byte		VOICE , 46
	.byte		N11   
	.byte	W12
	.byte		VOICE , 48
	.byte		N17   
	.byte	W17
	.byte		VOICE , 49
	.byte		N17   
	.byte	W03
	.byte	PEND
@ 005   ----------------------------------------
ch323_1_005:
	.byte	W14
	.byte		VOICE , 50
	.byte		N11   , Bn1 , v127
	.byte	W12
	.byte		VOICE , 48
	.byte		N11   
	.byte	W11
	.byte		VOICE , 49
	.byte		N11   
	.byte	W12
	.byte		VOICE , 51
	.byte		N11   
	.byte	W11
	.byte		VOICE , 46
	.byte		N11   
	.byte	W12
	.byte		VOICE , 48
	.byte		N17   
	.byte	W17
	.byte		VOICE , 49
	.byte		N17   
	.byte	W07
	.byte	PEND
@ 006   ----------------------------------------
ch323_1_006:
	.byte	W10
	.byte		VOICE , 50
	.byte		N11   , Bn1 , v127
	.byte	W12
	.byte		VOICE , 48
	.byte		N11   
	.byte	W11
	.byte		VOICE , 49
	.byte		N17   
	.byte	W17
	.byte		VOICE , 50
	.byte		N05   
	.byte	W06
	.byte		VOICE , 46
	.byte		N11   
	.byte	W12
	.byte		VOICE , 48
	.byte		N17   
	.byte	W17
	.byte		VOICE , 49
	.byte		N17   
	.byte	W11
	.byte	PEND
@ 007   ----------------------------------------
ch323_1_007:
	.byte	W06
	.byte		VOICE , 50
	.byte		N11   , Bn1 , v127
	.byte	W12
	.byte		VOICE , 48
	.byte		N11   
	.byte	W11
	.byte		VOICE , 49
	.byte		N11   
	.byte	W12
	.byte		VOICE , 51
	.byte		N11   
	.byte	W11
	.byte		VOICE , 46
	.byte		N11   
	.byte	W12
	.byte		VOICE , 48
	.byte		N17   
	.byte	W17
	.byte		VOICE , 49
	.byte		N17   
	.byte	W15
	.byte	PEND
@ 008   ----------------------------------------
ch323_1_008:
	.byte	W02
	.byte		VOICE , 50
	.byte		N11   , Bn1 , v127
	.byte	W12
	.byte		VOICE , 48
	.byte		N11   
	.byte	W11
	.byte		VOICE , 49
	.byte		N17   
	.byte	W17
	.byte		VOICE , 50
	.byte		N05   
	.byte	W06
	.byte		VOICE , 46
	.byte		N11   
	.byte	W12
	.byte		VOICE , 48
	.byte		N17   
	.byte	W17
	.byte		VOICE , 49
	.byte		N17   
	.byte	W17
	.byte		VOICE , 50
	.byte		N11   
	.byte	W02
	.byte	PEND
@ 009   ----------------------------------------
ch323_1_009:
	.byte	W10
	.byte		VOICE , 48
	.byte		N11   , Bn1 , v127
	.byte	W11
	.byte		VOICE , 49
	.byte		N11   
	.byte	W12
	.byte		VOICE , 51
	.byte		N11   
	.byte	W11
	.byte		VOICE , 46
	.byte		N11   
	.byte	W12
	.byte		VOICE , 48
	.byte		N17   
	.byte	W17
	.byte		VOICE , 49
	.byte		N17   
	.byte	W17
	.byte		VOICE , 50
	.byte		N11   
	.byte	W06
	.byte	PEND
@ 010   ----------------------------------------
ch323_1_010:
	.byte	W06
	.byte		VOICE , 48
	.byte		N11   , Bn1 , v127
	.byte	W11
	.byte		VOICE , 49
	.byte		N17   
	.byte	W17
	.byte		VOICE , 50
	.byte		N05   
	.byte	W06
	.byte		VOICE , 46
	.byte		N11   
	.byte	W12
	.byte		VOICE , 48
	.byte		N17   
	.byte	W17
	.byte		VOICE , 49
	.byte		N17   
	.byte	W17
	.byte		VOICE , 50
	.byte		N11   
	.byte	W10
	.byte	PEND
@ 011   ----------------------------------------
ch323_1_011:
	.byte	W02
	.byte		VOICE , 48
	.byte		N11   , Bn1 , v127
	.byte	W11
	.byte		VOICE , 49
	.byte		N11   
	.byte	W12
	.byte		VOICE , 51
	.byte		N11   
	.byte	W11
	.byte		VOICE , 46
	.byte		N11   
	.byte	W12
	.byte		VOICE , 48
	.byte		N17   
	.byte	W17
	.byte		VOICE , 49
	.byte		N17   
	.byte	W17
	.byte		VOICE , 50
	.byte		N11   
	.byte	W12
	.byte		VOICE , 48
	.byte		N11   
	.byte	W02
	.byte	PEND
@ 012   ----------------------------------------
	.byte	W09
	.byte		VOICE , 49
	.byte		N17   
	.byte	W17
	.byte		VOICE , 50
	.byte		N05   
	.byte	W06
	.byte		VOICE , 46
	.byte		N11   
	.byte	W12
	.byte		VOICE , 48
	.byte		N17   
	.byte	W17
	.byte		VOICE , 49
	.byte		N17   
	.byte	W17
	.byte		VOICE , 50
	.byte		N11   
	.byte	W12
	.byte		VOICE , 51
	.byte		N11   
	.byte	W06
@ 013   ----------------------------------------
	.byte	W05
	.byte		VOICE , 46
	.byte		N17   
	.byte	W17
	.byte		VOICE , 50
	.byte		N05   
	.byte	W06
	.byte		VOICE , 51
	.byte		N11   
	.byte	W12
	.byte		VOICE , 48
	.byte		N17   
	.byte	W17
	.byte		VOICE , 49
	.byte		N17   
	.byte	W17
	.byte		VOICE , 50
	.byte		N11   
	.byte	W12
	.byte		VOICE , 48
	.byte		N11   
	.byte	W10
@ 014   ----------------------------------------
	.byte	W01
	.byte		VOICE , 49
	.byte		N17   
	.byte	W17
	.byte		VOICE , 50
	.byte		N05   
	.byte	W06
	.byte		VOICE , 46
	.byte		N11   
	.byte	W12
	.byte		VOICE , 48
	.byte		N17   
	.byte	W17
	.byte		VOICE , 49
	.byte		N17   
	.byte	W17
	.byte		VOICE , 50
	.byte		N11   
	.byte	W12
	.byte		VOICE , 48
	.byte		N11   
	.byte	W11
	.byte		VOICE , 49
	.byte		N11   
	.byte	W03
@ 015   ----------------------------------------
	.byte	W09
	.byte		VOICE , 51
	.byte		N11   
	.byte	W11
	.byte		VOICE , 46
	.byte		N11   
	.byte	W12
	.byte		VOICE , 48
	.byte		N17   
	.byte	W17
	.byte		VOICE , 49
	.byte		N17   
	.byte	W17
	.byte		VOICE , 50
	.byte		N11   
	.byte	W12
	.byte		VOICE , 48
	.byte		N11   
	.byte	W11
	.byte		VOICE , 49
	.byte		N17   
	.byte	W07
@ 016   ----------------------------------------
	.byte	W10
	.byte		VOICE , 50
	.byte		N05   
	.byte	W06
	.byte		VOICE , 46
	.byte		N11   
	.byte	W12
	.byte		VOICE , 48
	.byte		N17   
	.byte	W17
	.byte		VOICE , 49
	.byte		N17   
	.byte	W17
	.byte		VOICE , 50
	.byte		N11   
	.byte	W12
	.byte		VOICE , 48
	.byte		N11   
	.byte	W11
	.byte		VOICE , 49
	.byte		N11   
	.byte	W11
@ 017   ----------------------------------------
	.byte	W01
	.byte		VOICE , 51
	.byte		N11   
	.byte	W11
	.byte		VOICE , 46
	.byte		N11   
	.byte	W12
	.byte		VOICE , 48
	.byte		N17   
	.byte	W17
	.byte		VOICE , 49
	.byte		N17   
	.byte	W17
	.byte		VOICE , 50
	.byte		N11   
	.byte	W12
	.byte		VOICE , 48
	.byte		N11   
	.byte	W11
	.byte		VOICE , 49
	.byte		N17   
	.byte	W15
@ 018   ----------------------------------------
	.byte	W02
	.byte		VOICE , 50
	.byte		N05   
	.byte	W06
	.byte		VOICE , 46
	.byte		N11   
	.byte	W12
	.byte		VOICE , 48
	.byte		N17   
	.byte	W17
	.byte		VOICE , 49
	.byte		N17   
	.byte	W17
	.byte		VOICE , 50
	.byte		N11   
	.byte	W12
	.byte		VOICE , 48
	.byte		N11   
	.byte	W11
	.byte		VOICE , 49
	.byte		N11   
	.byte	W12
	.byte		VOICE , 51
	.byte		N11   
	.byte	W07
@ 019   ----------------------------------------
	.byte	W04
	.byte		VOICE , 46
	.byte		N11   
	.byte	W12
	.byte		VOICE , 48
	.byte		N17   
	.byte	W17
	.byte		VOICE , 49
	.byte		N17   
	.byte	W17
	.byte		VOICE , 50
	.byte		N11   
	.byte	W12
	.byte		VOICE , 48
	.byte		N11   
	.byte	W11
	.byte		VOICE , 49
	.byte		N17   
	.byte	W17
	.byte		VOICE , 50
	.byte		N05   
	.byte	W06
@ 020   ----------------------------------------
	.byte		VOICE , 46
	.byte		N11   
	.byte	W12
	.byte		VOICE , 48
	.byte		N17   
	.byte	W17
	.byte		VOICE , 49
	.byte		N17   
	.byte	W17
	.byte		VOICE , 50
	.byte		N11   
	.byte	W12
	.byte		VOICE , 48
	.byte		N11   
	.byte	W11
	.byte		VOICE , 49
	.byte		N11   
	.byte	W12
	.byte		VOICE , 51
	.byte		N11   
	.byte	W11
	.byte		VOICE , 46
	.byte		N11   
	.byte	W04
@ 021   ----------------------------------------
	.byte	W08
	.byte		VOICE , 48
	.byte		N17   
	.byte	W17
	.byte		VOICE , 49
	.byte		N17   
	.byte	W17
	.byte		VOICE , 50
	.byte		N11   
	.byte	W12
	.byte		VOICE , 48
	.byte		N11   
	.byte	W11
	.byte		VOICE , 49
	.byte		N17   
	.byte	W17
	.byte		VOICE , 50
	.byte		N05   
	.byte	W06
	.byte		VOICE , 46
	.byte		N11   
	.byte	W08
@ 022   ----------------------------------------
	.byte	W04
	.byte		VOICE , 48
	.byte		N17   
	.byte	W17
	.byte		VOICE , 49
	.byte		N17   
	.byte	W17
	.byte		VOICE , 50
	.byte		N11   
	.byte	W12
	.byte		VOICE , 48
	.byte		N11   
	.byte	W11
	.byte		VOICE , 49
	.byte		N11   
	.byte	W12
	.byte		VOICE , 51
	.byte		N11   
	.byte	W11
	.byte		VOICE , 46
	.byte		N11   
	.byte	W12
@ 023   ----------------------------------------
	.byte		VOICE , 48
	.byte		N17   
	.byte	W17
	.byte		VOICE , 49
	.byte		N17   
	.byte	W17
	.byte		VOICE , 50
	.byte		N11   
	.byte	W12
	.byte		VOICE , 48
	.byte		N11   
	.byte	W11
	.byte		VOICE , 49
	.byte		N17   
	.byte	W17
	.byte		VOICE , 50
	.byte		N05   
	.byte	W06
	.byte		VOICE , 46
	.byte		N11   
	.byte	W12
	.byte		VOICE , 48
	.byte		N17   
	.byte	W04
@ 024   ----------------------------------------
	.byte	W13
	.byte		VOICE , 49
	.byte		N17   
	.byte	W17
	.byte		VOICE , 50
	.byte		N11   
	.byte	W12
	.byte		VOICE , 46
	.byte		N23   
	.byte	W23
	.byte		VOICE , 51
	.byte		N23   
	.byte	W23
	.byte		VOICE , 48
	.byte		N17   
	.byte	W08
@ 025   ----------------------------------------
	.byte	PATT
	 .word	ch323_1_002
@ 026   ----------------------------------------
	.byte	W05
	.byte		VOICE , 49
	.byte		N17   , Bn1 , v127
	.byte	W17
	.byte		VOICE , 50
	.byte		N11   
	.byte	W12
	.byte		VOICE , 48
	.byte		N11   
	.byte	W11
	.byte		VOICE , 49
	.byte		N11   
	.byte	W12
	.byte		VOICE , 51
	.byte		N11   
	.byte	W11
	.byte		VOICE , 46
	.byte		N11   
	.byte	W12
	.byte		VOICE , 48
	.byte		N17   
	.byte	W16
@ 027   ----------------------------------------
	.byte	PATT
	 .word	ch323_1_004
@ 028   ----------------------------------------
	.byte	PATT
	 .word	ch323_1_005
@ 029   ----------------------------------------
	.byte	PATT
	 .word	ch323_1_006
@ 030   ----------------------------------------
	.byte	PATT
	 .word	ch323_1_007
@ 031   ----------------------------------------
	.byte	PATT
	 .word	ch323_1_008
@ 032   ----------------------------------------
	.byte	PATT
	 .word	ch323_1_009
@ 033   ----------------------------------------
	.byte	PATT
	 .word	ch323_1_010
@ 034   ----------------------------------------
	.byte	PATT
	 .word	ch323_1_011
@ 035   ----------------------------------------
	.byte	W09
	.byte		VOICE , 49
	.byte		N17   , Bn1 , v127
	.byte	W17
	.byte		VOICE , 50
	.byte		N05   
	.byte	W06
	.byte		VOICE , 46
	.byte		N11   
	.byte	W64
	.byte	GOTO
	 .word	ch323_1_B1
ch323_1_B2:
@ 036   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

ch323_2:
	.byte		VOL   , 127*ch323_mvl/mxv
	.byte	KEYSH , ch323_key+0
ch323_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 16
	.byte		N11   , Bn1 , v127
	.byte	W11
	.byte		N05   , Bn1 , v064
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		N11   , Fs2 
	.byte	W11
	.byte		        Fs2 , v064
	.byte	W12
	.byte		        Bn1 , v127
	.byte	W11
	.byte		N05   , Bn1 , v064
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		N11   , Fs1 
	.byte	W11
	.byte		        Bn1 
	.byte	W12
	.byte		        En2 
	.byte	W04
@ 001   ----------------------------------------
	.byte	W07
	.byte		N05   , En2 , v064
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		N11   , En1 
	.byte	W11
	.byte		N05   , En1 , v064
	.byte	W06
	.byte		        An1 , v127
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W11
	.byte		        Fs1 
	.byte	W12
	.byte		        Bn1 
	.byte	W11
	.byte		        Fs2 
	.byte	W12
	.byte		        Bn1 
	.byte	W08
@ 002   ----------------------------------------
	.byte	W03
	.byte		N05   , Bn1 , v064
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		N11   , Fs2 
	.byte	W11
	.byte		        Fs2 , v064
	.byte	W12
	.byte		        Bn1 , v127
	.byte	W11
	.byte		N05   , Bn1 , v064
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		N11   , Fs1 
	.byte	W11
	.byte		        Cs1 
	.byte	W12
	.byte		        Fs1 
	.byte	W11
	.byte		N05   , Fs1 , v064
	.byte	W01
@ 003   ----------------------------------------
	.byte	W05
	.byte		        Ds1 , v127
	.byte	W06
	.byte		N11   , En1 
	.byte	W11
	.byte		        En1 , v064
	.byte	W12
	.byte		        An1 , v127
	.byte	W11
	.byte		N23   , Bn1 
	.byte	W23
	.byte		N11   , Fs2 , v096
	.byte	W12
	.byte		        Bn1 , v127
	.byte	W11
	.byte		N05   , Bn1 , v064
	.byte	W05
@ 004   ----------------------------------------
	.byte	W01
	.byte		        Bn1 , v127
	.byte	W06
	.byte		N11   , Fs2 
	.byte	W11
	.byte		        Fs2 , v064
	.byte	W12
	.byte		        Bn1 , v127
	.byte	W11
	.byte		N05   , Bn1 , v064
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		N11   , Fs1 
	.byte	W11
	.byte		        Bn1 
	.byte	W12
	.byte		        En2 
	.byte	W11
	.byte		N05   , En2 , v064
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W03
@ 005   ----------------------------------------
	.byte	W03
	.byte		N11   , En1 
	.byte	W11
	.byte		N05   , En1 , v064
	.byte	W06
	.byte		        An1 , v127
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W11
	.byte		        Bn1 , v064
	.byte	W12
	.byte		        As1 , v127
	.byte	W11
	.byte		        Fs1 
	.byte	W12
	.byte		        Gs1 
	.byte	W11
	.byte		N05   , Gs1 , v064
	.byte	W06
	.byte		        Ds1 , v127
	.byte	W06
	.byte		N11   , Gs1 
	.byte	W01
@ 006   ----------------------------------------
	.byte	W10
	.byte		        Gs1 , v064
	.byte	W12
	.byte		        En1 , v127
	.byte	W11
	.byte		N05   , En1 , v064
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		N11   , En2 
	.byte	W11
	.byte		        En1 
	.byte	W12
	.byte		        Fs1 
	.byte	W11
	.byte		N05   , Fs1 , v064
	.byte	W06
	.byte		        Cs1 , v127
	.byte	W06
	.byte		N11   , Fs1 
	.byte	W05
@ 007   ----------------------------------------
	.byte	W06
	.byte		        Fs1 , v064
	.byte	W12
	.byte		        Bn1 , v127
	.byte	W11
	.byte		N05   , Bn1 , v064
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		N11   , Fs1 
	.byte	W11
	.byte		N11   
	.byte	W12
	.byte		        Bn1 
	.byte	W11
	.byte		N05   , Bn1 , v064
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		N11   , Fs2 
	.byte	W09
@ 008   ----------------------------------------
	.byte	W02
	.byte		        Fs2 , v064
	.byte	W12
	.byte		        Bn1 , v127
	.byte	W11
	.byte		N05   , Bn1 , v064
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		N11   , Fs1 
	.byte	W11
	.byte		N11   
	.byte	W12
	.byte		        Bn1 
	.byte	W11
	.byte		N05   , Bn1 , v064
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		N11   , Fs2 
	.byte	W11
	.byte		        Fs2 , v064
	.byte	W02
@ 009   ----------------------------------------
	.byte	W10
	.byte		        Bn1 , v127
	.byte	W11
	.byte		N05   , Bn1 , v064
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		N11   , Fs1 
	.byte	W11
	.byte		N11   
	.byte	W12
	.byte		        Bn1 
	.byte	W11
	.byte		N05   , Bn1 , v064
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		N11   , Fs2 
	.byte	W11
	.byte		        Fs2 , v064
	.byte	W06
@ 010   ----------------------------------------
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W11
	.byte		N05   , Bn1 , v064
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		N11   , Fs1 
	.byte	W11
	.byte		        Bn1 
	.byte	W12
	.byte		        En2 
	.byte	W11
	.byte		N05   , En2 , v064
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		N11   , En1 
	.byte	W11
	.byte		N05   , En1 , v064
	.byte	W06
	.byte		        An1 , v127
	.byte	W04
@ 011   ----------------------------------------
	.byte	W02
	.byte		N11   , Bn1 
	.byte	W11
	.byte		        Fs1 
	.byte	W12
	.byte		        Bn1 
	.byte	W11
	.byte		        Fs2 
	.byte	W12
	.byte		        Bn1 
	.byte	W11
	.byte		N05   , Bn1 , v064
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		N11   , Fs2 
	.byte	W11
	.byte		        Fs2 , v064
	.byte	W12
	.byte		        Bn1 , v127
	.byte	W02
@ 012   ----------------------------------------
	.byte	W09
	.byte		N05   , Bn1 , v064
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		N11   , Fs1 
	.byte	W11
	.byte		        Cs1 
	.byte	W12
	.byte		        Fs1 
	.byte	W11
	.byte		N05   , Fs1 , v064
	.byte	W06
	.byte		        Ds1 , v127
	.byte	W06
	.byte		N11   , En1 
	.byte	W11
	.byte		        En1 , v064
	.byte	W12
	.byte		        An1 , v127
	.byte	W06
@ 013   ----------------------------------------
	.byte	W05
	.byte		        Bn1 
	.byte	W12
	.byte		        Bn1 , v064
	.byte	W11
	.byte		        Fs2 , v096
	.byte	W12
	.byte		        Bn1 , v127
	.byte	W11
	.byte		N05   , Bn1 , v064
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		N11   , Fs2 
	.byte	W11
	.byte		        Fs2 , v064
	.byte	W12
	.byte		        Bn1 , v127
	.byte	W10
@ 014   ----------------------------------------
	.byte	W01
	.byte		N05   , Bn1 , v064
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		N11   , Fs1 
	.byte	W11
	.byte		        Bn1 
	.byte	W12
	.byte		        En2 
	.byte	W11
	.byte		N05   , En2 , v064
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		N11   , En1 
	.byte	W11
	.byte		N05   , En1 , v064
	.byte	W06
	.byte		        An1 , v127
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W11
	.byte		        Bn1 , v064
	.byte	W03
@ 015   ----------------------------------------
	.byte	W09
	.byte		        As1 , v127
	.byte	W11
	.byte		        Fs1 
	.byte	W12
	.byte		        Gs1 
	.byte	W11
	.byte		N05   , Gs1 , v064
	.byte	W06
	.byte		        Ds1 , v127
	.byte	W06
	.byte		N11   , Gs1 
	.byte	W11
	.byte		        Gs1 , v064
	.byte	W12
	.byte		        En1 , v127
	.byte	W11
	.byte		N05   , En1 , v064
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W01
@ 016   ----------------------------------------
	.byte	W05
	.byte		N11   , En2 
	.byte	W11
	.byte		        En1 
	.byte	W12
	.byte		        Fs1 
	.byte	W11
	.byte		N05   , Fs1 , v064
	.byte	W06
	.byte		        Cs1 , v127
	.byte	W06
	.byte		N11   , Fs1 
	.byte	W11
	.byte		        Fs1 , v064
	.byte	W12
	.byte		        Bn1 , v127
	.byte	W11
	.byte		N05   , Bn1 , v064
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W05
@ 017   ----------------------------------------
	.byte	W01
	.byte		N11   , Fs1 
	.byte	W11
	.byte		N11   
	.byte	W12
	.byte		        Bn1 
	.byte	W11
	.byte		N05   , Bn1 , v064
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		N11   , Fs2 
	.byte	W11
	.byte		        Fs2 , v064
	.byte	W12
	.byte		        Bn1 , v127
	.byte	W11
	.byte		N05   , Bn1 , v064
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		N11   , Fs1 
	.byte	W03
@ 018   ----------------------------------------
	.byte	W08
	.byte		        Bn1 
	.byte	W12
	.byte		        En2 
	.byte	W11
	.byte		N05   , En2 , v064
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		N11   , En1 
	.byte	W11
	.byte		N05   , En1 , v064
	.byte	W06
	.byte		        An1 , v127
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W11
	.byte		        Bn1 , v064
	.byte	W12
	.byte		        As1 , v127
	.byte	W07
@ 019   ----------------------------------------
	.byte	W04
	.byte		        Fs1 
	.byte	W12
	.byte		        Gs1 
	.byte	W11
	.byte		N05   , Gs1 , v064
	.byte	W06
	.byte		        Ds1 , v127
	.byte	W06
	.byte		N11   , Gs1 
	.byte	W11
	.byte		        Gs1 , v064
	.byte	W12
	.byte		        En1 , v127
	.byte	W11
	.byte		N05   , En1 , v064
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		N11   , En2 
	.byte	W11
@ 020   ----------------------------------------
	.byte		        En1 
	.byte	W12
	.byte		        Fs1 
	.byte	W11
	.byte		N05   , Fs1 , v064
	.byte	W06
	.byte		        Cs1 , v127
	.byte	W06
	.byte		N11   , Fs1 
	.byte	W11
	.byte		        Fs1 , v064
	.byte	W12
	.byte		        Bn1 , v127
	.byte	W11
	.byte		N05   , Bn1 , v064
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		N11   , Fs1 
	.byte	W11
	.byte		N11   
	.byte	W04
@ 021   ----------------------------------------
	.byte	W08
	.byte		        Bn1 
	.byte	W11
	.byte		N05   , Bn1 , v064
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		N11   , Fs2 
	.byte	W11
	.byte		        Fs2 , v064
	.byte	W12
	.byte		        Bn1 , v127
	.byte	W11
	.byte		N05   , Bn1 , v064
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		N11   , Fs1 
	.byte	W11
	.byte		        Bn1 
	.byte	W08
@ 022   ----------------------------------------
	.byte	W04
	.byte		        En2 
	.byte	W11
	.byte		N05   , En2 , v064
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		N11   , En1 
	.byte	W11
	.byte		N05   , En1 , v064
	.byte	W06
	.byte		        An1 , v127
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W11
	.byte		        Bn1 , v064
	.byte	W12
	.byte		        As1 , v127
	.byte	W11
	.byte		        Fs1 
	.byte	W12
@ 023   ----------------------------------------
	.byte		        Gs1 
	.byte	W11
	.byte		N05   , Gs1 , v064
	.byte	W06
	.byte		        Ds1 , v127
	.byte	W06
	.byte		N11   , Gs1 
	.byte	W11
	.byte		        Gs1 , v064
	.byte	W12
	.byte		        En1 , v127
	.byte	W11
	.byte		N05   , En1 , v064
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		N11   , En2 
	.byte	W11
	.byte		        En1 
	.byte	W12
	.byte		        Fs1 
	.byte	W04
@ 024   ----------------------------------------
	.byte	W07
	.byte		N05   , Fs1 , v064
	.byte	W06
	.byte		        Cs1 , v127
	.byte	W06
	.byte		N11   , Fs1 
	.byte	W11
	.byte		        Fs1 , v064
	.byte	W12
	.byte		        Bn1 , v127
	.byte	W11
	.byte		N05   , Bn1 , v064
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		N11   , Fs1 
	.byte	W11
	.byte		N11   
	.byte	W12
	.byte		        En1 
	.byte	W08
@ 025   ----------------------------------------
	.byte	W03
	.byte		N05   , En1 , v064
	.byte	W06
	.byte		        En1 , v127
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W11
	.byte		        Bn1 , v064
	.byte	W12
	.byte		        En1 , v127
	.byte	W11
	.byte		N05   , En1 , v064
	.byte	W06
	.byte		        En1 , v127
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W11
	.byte		        Bn0 
	.byte	W12
	.byte		        Fn1 
	.byte	W11
	.byte		N05   , Fn1 , v064
	.byte	W01
@ 026   ----------------------------------------
	.byte	W05
	.byte		        Fn1 , v127
	.byte	W06
	.byte		N11   , Cn2 
	.byte	W11
	.byte		        Cn2 , v064
	.byte	W12
	.byte		        Fn1 , v127
	.byte	W11
	.byte		N05   , Fn1 , v064
	.byte	W06
	.byte		        Fn1 , v127
	.byte	W06
	.byte		N11   , Cn2 
	.byte	W11
	.byte		        Fn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W11
	.byte		N05   , Gn1 , v064
	.byte	W05
@ 027   ----------------------------------------
	.byte	W01
	.byte		        Gn1 , v127
	.byte	W06
	.byte		N11   , Dn2 
	.byte	W11
	.byte		        Dn2 , v064
	.byte	W12
	.byte		        Gn1 , v127
	.byte	W11
	.byte		N05   , Gn1 , v064
	.byte	W06
	.byte		        Gn1 , v127
	.byte	W06
	.byte		N11   , Dn2 
	.byte	W11
	.byte		        Gn1 
	.byte	W12
	.byte		        Fn1 
	.byte	W11
	.byte		N05   , Fn1 , v064
	.byte	W06
	.byte		        Fn1 , v127
	.byte	W03
@ 028   ----------------------------------------
	.byte	W03
	.byte		N11   , Cn2 
	.byte	W11
	.byte		        Cn2 , v064
	.byte	W12
	.byte		        Fn1 , v127
	.byte	W11
	.byte		N05   , Fn1 , v064
	.byte	W06
	.byte		        Fn1 , v127
	.byte	W06
	.byte		N11   , Cn2 
	.byte	W11
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W11
	.byte		N05   , Gn1 , v064
	.byte	W06
	.byte		        Gn1 , v127
	.byte	W06
	.byte		N11   , Dn2 
	.byte	W01
@ 029   ----------------------------------------
	.byte	W10
	.byte		        Dn2 , v064
	.byte	W12
	.byte		        Gn1 , v127
	.byte	W11
	.byte		N05   , Gn1 , v064
	.byte	W06
	.byte		        Gn1 , v127
	.byte	W06
	.byte		N11   , Dn2 
	.byte	W11
	.byte		        Gn1 
	.byte	W12
	.byte		        Fn1 
	.byte	W11
	.byte		N05   , Fn1 , v064
	.byte	W06
	.byte		        Fn1 , v127
	.byte	W06
	.byte		N11   , Cn2 
	.byte	W05
@ 030   ----------------------------------------
	.byte	W06
	.byte		        Cn2 , v064
	.byte	W12
	.byte		        Fn1 , v127
	.byte	W11
	.byte		N05   , Fn1 , v064
	.byte	W06
	.byte		        Fn1 , v127
	.byte	W06
	.byte		N11   , Cn2 
	.byte	W11
	.byte		        Cn1 
	.byte	W12
	.byte		        En1 
	.byte	W11
	.byte		N05   , En1 , v064
	.byte	W06
	.byte		        En1 , v127
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W09
@ 031   ----------------------------------------
	.byte	W02
	.byte		        Bn1 , v064
	.byte	W12
	.byte		        En1 , v127
	.byte	W11
	.byte		N05   , En1 , v064
	.byte	W06
	.byte		        En1 , v127
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W11
	.byte		        Bn0 
	.byte	W12
	.byte		        An1 
	.byte	W11
	.byte		N05   , An1 , v064
	.byte	W06
	.byte		        An1 , v127
	.byte	W06
	.byte		N11   , En2 
	.byte	W11
	.byte		        En2 , v064
	.byte	W02
@ 032   ----------------------------------------
	.byte	W10
	.byte		        An1 , v127
	.byte	W11
	.byte		N05   , An1 , v064
	.byte	W06
	.byte		        An1 , v127
	.byte	W06
	.byte		N11   , En2 
	.byte	W11
	.byte		        En1 
	.byte	W12
	.byte		        Gs1 
	.byte	W11
	.byte		N05   , Gs1 , v064
	.byte	W06
	.byte		        Gs1 , v127
	.byte	W06
	.byte		N11   , Ds2 
	.byte	W11
	.byte		        Ds2 , v064
	.byte	W06
@ 033   ----------------------------------------
	.byte	W06
	.byte		        Gs1 , v127
	.byte	W11
	.byte		N05   , Gs1 , v064
	.byte	W06
	.byte		        Gs1 , v127
	.byte	W06
	.byte		N11   , Ds2 
	.byte	W11
	.byte		        Gs1 
	.byte	W12
	.byte		        Gn1 
	.byte	W11
	.byte		N05   , Gn1 , v064
	.byte	W06
	.byte		        Gn1 , v127
	.byte	W06
	.byte		N11   , Dn2 
	.byte	W11
	.byte		        Dn2 , v064
	.byte	W10
@ 034   ----------------------------------------
	.byte	W02
	.byte		        Gn1 , v127
	.byte	W11
	.byte		N05   , Gn1 , v064
	.byte	W06
	.byte		        Gn1 , v127
	.byte	W06
	.byte		N11   , Dn2 
	.byte	W11
	.byte		        Gn1 
	.byte	W12
	.byte		        Fs1 
	.byte	W11
	.byte		N05   , Fs1 , v064
	.byte	W06
	.byte		        Fs1 , v127
	.byte	W06
	.byte		N11   , Cs2 
	.byte	W11
	.byte		        Cs2 , v064
	.byte	W12
	.byte		        Fs1 , v127
	.byte	W02
@ 035   ----------------------------------------
	.byte	W09
	.byte		N05   , Fs1 , v064
	.byte	W06
	.byte		        Fs1 , v127
	.byte	W06
	.byte		N11   , Cs2 
	.byte	W11
	.byte		        Cs1 
	.byte	W64
	.byte	GOTO
	 .word	ch323_2_B1
ch323_2_B2:
@ 036   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

ch323_3:
	.byte		VOL   , 127*ch323_mvl/mxv
	.byte	KEYSH , ch323_key+0
ch323_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 22
	.byte		N11   , Bn1 , v068
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   , Bn1 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N05   , Bn1 , v068
	.byte	W06
	.byte		VOICE , 53
	.byte		N11   , Bn1 , v127
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   
	.byte	W06
	.byte		VOICE , 102
	.byte		N05   
	.byte	W06
	.byte		VOICE , 22
	.byte		N11   , Bn1 , v068
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   , Bn1 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N05   , Bn1 , v068
	.byte	W06
	.byte		VOICE , 102
	.byte		N11   , Bn1 , v127
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   
	.byte	W06
	.byte		VOICE , 102
	.byte		N05   
	.byte	W06
	.byte		VOICE , 22
	.byte		N11   , En2 , v068
	.byte	W04
@ 001   ----------------------------------------
	.byte	W07
	.byte		VOICE , 54
	.byte		N05   , En2 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N05   , En2 , v068
	.byte	W06
	.byte		VOICE , 53
	.byte		N11   , En2 , v127
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   
	.byte	W06
	.byte		VOICE , 102
	.byte		N05   
	.byte	W06
	.byte		VOICE , 22
	.byte		N11   , Bn1 , v068
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   , Bn1 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N05   , Bn1 , v068
	.byte	W06
	.byte		VOICE , 53
	.byte		N11   , Bn1 , v127
	.byte	W11
	.byte		VOICE , 54
	.byte		N11   
	.byte	W12
	.byte		VOICE , 22
	.byte		N11   , Bn1 , v068
	.byte	W08
@ 002   ----------------------------------------
	.byte	W03
	.byte		VOICE , 54
	.byte		N05   , Bn1 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N05   , Bn1 , v068
	.byte	W06
	.byte		VOICE , 53
	.byte		N11   , Bn1 , v127
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   
	.byte	W06
	.byte		VOICE , 102
	.byte		N05   
	.byte	W06
	.byte		VOICE , 22
	.byte		N11   , Bn1 , v068
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   , Bn1 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N05   , Bn1 , v068
	.byte	W06
	.byte		VOICE , 102
	.byte		N11   , Bn1 , v127
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   
	.byte	W06
	.byte		VOICE , 102
	.byte		N05   
	.byte	W06
	.byte		VOICE , 55
	.byte		N11   , Fs2 
	.byte	W11
	.byte		VOICE , 57
	.byte		N05   
	.byte	W01
@ 003   ----------------------------------------
	.byte	W05
	.byte		VOICE , 58
	.byte		N05   
	.byte	W06
	.byte		VOICE , 53
	.byte		N11   , En2 
	.byte	W11
	.byte		VOICE , 22
	.byte		N05   , En2 , v068
	.byte	W06
	.byte		VOICE , 102
	.byte		N05   , En2 , v127
	.byte	W06
	.byte		VOICE , 53
	.byte		N11   , An1 
	.byte	W11
	.byte		        Bn1 
	.byte	W12
	.byte		VOICE , 54
	.byte		N05   
	.byte	W05
	.byte		VOICE , 102
	.byte		N05   
	.byte	W06
	.byte		VOICE , 22
	.byte		N11   , Bn1 , v068
	.byte	W12
	.byte		N11   
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   , Bn1 , v127
	.byte	W05
@ 004   ----------------------------------------
	.byte	W01
	.byte		VOICE , 22
	.byte		N05   , Bn1 , v068
	.byte	W06
	.byte		VOICE , 53
	.byte		N11   , Bn1 , v127
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   
	.byte	W06
	.byte		VOICE , 102
	.byte		N05   
	.byte	W06
	.byte		VOICE , 22
	.byte		N11   , Bn1 , v068
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   , Bn1 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N05   , Bn1 , v068
	.byte	W06
	.byte		VOICE , 102
	.byte		N11   , Bn1 , v127
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   
	.byte	W06
	.byte		VOICE , 102
	.byte		N05   
	.byte	W06
	.byte		VOICE , 22
	.byte		N11   , En2 , v068
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   , En2 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N05   , En2 , v068
	.byte	W03
@ 005   ----------------------------------------
	.byte	W03
	.byte		VOICE , 53
	.byte		N11   , En2 , v127
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   
	.byte	W06
	.byte		VOICE , 102
	.byte		N05   
	.byte	W06
	.byte		VOICE , 22
	.byte		N11   , Bn1 , v068
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   , Bn1 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N05   , Bn1 , v068
	.byte	W06
	.byte		VOICE , 53
	.byte		N11   , Fs2 , v127
	.byte	W11
	.byte		VOICE , 22
	.byte		N05   , Fs2 , v068
	.byte	W06
	.byte		VOICE , 102
	.byte		N05   , Fs2 , v127
	.byte	W06
	.byte		VOICE , 55
	.byte		N11   , Gs2 
	.byte	W11
	.byte		VOICE , 57
	.byte		N05   
	.byte	W06
	.byte		VOICE , 55
	.byte		N05   , Gs2 , v096
	.byte	W06
	.byte		VOICE , 58
	.byte		N11   , Gs2 , v127
	.byte	W01
@ 006   ----------------------------------------
	.byte	W10
	.byte		VOICE , 57
	.byte		N05   
	.byte	W06
	.byte		VOICE , 55
	.byte		N05   
	.byte	W06
	.byte		VOICE , 22
	.byte		N11   , En2 , v068
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   , En2 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N05   , En2 , v068
	.byte	W06
	.byte		VOICE , 53
	.byte		N11   , En2 , v127
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   
	.byte	W06
	.byte		VOICE , 102
	.byte		N05   
	.byte	W06
	.byte		VOICE , 22
	.byte		N11   , Fs2 , v068
	.byte	W11
	.byte		VOICE , 102
	.byte		N05   , Fs2 , v127
	.byte	W06
	.byte		VOICE , 54
	.byte		N05   
	.byte	W06
	.byte		VOICE , 53
	.byte		N11   , En2 
	.byte	W05
@ 007   ----------------------------------------
	.byte	W06
	.byte		VOICE , 22
	.byte		N05   , En2 , v068
	.byte	W06
	.byte		VOICE , 102
	.byte		N05   , En2 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N11   , Bn1 , v068
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   , Bn1 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N05   , Bn1 , v068
	.byte	W06
	.byte		VOICE , 102
	.byte		N11   , Bn1 , v127
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   
	.byte	W06
	.byte		VOICE , 102
	.byte		N05   
	.byte	W06
	.byte		VOICE , 22
	.byte		N11   , Bn1 , v068
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   , Bn1 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N05   , Bn1 , v068
	.byte	W06
	.byte		VOICE , 53
	.byte		N11   , Bn1 , v127
	.byte	W09
@ 008   ----------------------------------------
	.byte	W02
	.byte		VOICE , 54
	.byte		N05   
	.byte	W06
	.byte		VOICE , 102
	.byte		N05   
	.byte	W06
	.byte		VOICE , 22
	.byte		N11   , Bn1 , v068
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   , Bn1 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N05   , Bn1 , v068
	.byte	W06
	.byte		VOICE , 102
	.byte		N11   , Bn1 , v127
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   
	.byte	W06
	.byte		VOICE , 102
	.byte		N05   
	.byte	W06
	.byte		VOICE , 22
	.byte		N11   , Bn1 , v068
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   , Bn1 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N05   , Bn1 , v068
	.byte	W06
	.byte		VOICE , 53
	.byte		N11   , Bn1 , v127
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   
	.byte	W02
@ 009   ----------------------------------------
	.byte	W04
	.byte		VOICE , 102
	.byte		N05   
	.byte	W06
	.byte		VOICE , 22
	.byte		N11   , Bn1 , v068
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   , Bn1 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N05   , Bn1 , v068
	.byte	W06
	.byte		VOICE , 102
	.byte		N11   , Bn1 , v127
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   
	.byte	W06
	.byte		VOICE , 102
	.byte		N05   
	.byte	W06
	.byte		VOICE , 22
	.byte		N11   , Bn1 , v068
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   , Bn1 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N05   , Bn1 , v068
	.byte	W06
	.byte		VOICE , 53
	.byte		N11   , Bn1 , v127
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   
	.byte	W06
@ 010   ----------------------------------------
	.byte		VOICE , 102
	.byte		N05   
	.byte	W06
	.byte		VOICE , 22
	.byte		N11   , Bn1 , v068
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   , Bn1 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N05   , Bn1 , v068
	.byte	W06
	.byte		VOICE , 102
	.byte		N11   , Bn1 , v127
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   
	.byte	W06
	.byte		VOICE , 102
	.byte		N05   
	.byte	W06
	.byte		VOICE , 22
	.byte		N11   , En2 , v068
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   , En2 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N05   , En2 , v068
	.byte	W06
	.byte		VOICE , 53
	.byte		N11   , En2 , v127
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   
	.byte	W06
	.byte		VOICE , 102
	.byte		N05   
	.byte	W04
@ 011   ----------------------------------------
	.byte	W02
	.byte		VOICE , 22
	.byte		N11   , Bn1 , v068
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   , Bn1 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N05   , Bn1 , v068
	.byte	W06
	.byte		VOICE , 53
	.byte		N11   , Bn1 , v127
	.byte	W11
	.byte		VOICE , 54
	.byte		N11   
	.byte	W12
	.byte		VOICE , 22
	.byte		N11   , Bn1 , v068
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   , Bn1 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N05   , Bn1 , v068
	.byte	W06
	.byte		VOICE , 53
	.byte		N11   , Bn1 , v127
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   
	.byte	W06
	.byte		VOICE , 102
	.byte		N05   
	.byte	W06
	.byte		VOICE , 22
	.byte		N11   , Bn1 , v068
	.byte	W02
@ 012   ----------------------------------------
	.byte	W09
	.byte		VOICE , 54
	.byte		N05   , Bn1 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N05   , Bn1 , v068
	.byte	W06
	.byte		VOICE , 102
	.byte		N11   , Bn1 , v127
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   
	.byte	W06
	.byte		VOICE , 102
	.byte		N05   
	.byte	W06
	.byte		VOICE , 55
	.byte		N11   , Fs2 
	.byte	W11
	.byte		VOICE , 57
	.byte		N05   
	.byte	W06
	.byte		VOICE , 58
	.byte		N05   
	.byte	W06
	.byte		VOICE , 53
	.byte		N11   , En2 
	.byte	W11
	.byte		VOICE , 22
	.byte		N05   , En2 , v068
	.byte	W06
	.byte		VOICE , 102
	.byte		N05   , En2 , v127
	.byte	W06
	.byte		VOICE , 53
	.byte		N11   , An1 
	.byte	W06
@ 013   ----------------------------------------
	.byte	W05
	.byte		        Bn1 
	.byte	W12
	.byte		VOICE , 54
	.byte		N05   
	.byte	W05
	.byte		VOICE , 102
	.byte		N05   
	.byte	W06
	.byte		VOICE , 22
	.byte		N11   , Bn1 , v068
	.byte	W12
	.byte		N11   
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   , Bn1 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N05   , Bn1 , v068
	.byte	W06
	.byte		VOICE , 53
	.byte		N11   , Bn1 , v127
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   
	.byte	W06
	.byte		VOICE , 102
	.byte		N05   
	.byte	W06
	.byte		VOICE , 22
	.byte		N11   , Bn1 , v068
	.byte	W10
@ 014   ----------------------------------------
	.byte	W01
	.byte		VOICE , 54
	.byte		N05   , Bn1 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N05   , Bn1 , v068
	.byte	W06
	.byte		VOICE , 102
	.byte		N11   , Bn1 , v127
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   
	.byte	W06
	.byte		VOICE , 102
	.byte		N05   
	.byte	W06
	.byte		VOICE , 22
	.byte		N11   , En2 , v068
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   , En2 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N05   , En2 , v068
	.byte	W06
	.byte		VOICE , 53
	.byte		N11   , En2 , v127
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   
	.byte	W06
	.byte		VOICE , 102
	.byte		N05   
	.byte	W06
	.byte		VOICE , 22
	.byte		N11   , Bn1 , v068
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   , Bn1 , v127
	.byte	W03
@ 015   ----------------------------------------
	.byte	W03
	.byte		VOICE , 22
	.byte		N05   , Bn1 , v068
	.byte	W06
	.byte		VOICE , 53
	.byte		N11   , Fs2 , v127
	.byte	W11
	.byte		VOICE , 22
	.byte		N05   , Fs2 , v068
	.byte	W06
	.byte		VOICE , 102
	.byte		N05   , Fs2 , v127
	.byte	W06
	.byte		VOICE , 55
	.byte		N11   , Gs2 
	.byte	W11
	.byte		VOICE , 57
	.byte		N05   
	.byte	W06
	.byte		VOICE , 55
	.byte		N05   , Gs2 , v096
	.byte	W06
	.byte		VOICE , 58
	.byte		N11   , Gs2 , v127
	.byte	W11
	.byte		VOICE , 57
	.byte		N05   
	.byte	W06
	.byte		VOICE , 55
	.byte		N05   
	.byte	W06
	.byte		VOICE , 22
	.byte		N11   , En2 , v068
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   , En2 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N05   , En2 , v068
	.byte	W01
@ 016   ----------------------------------------
	.byte	W05
	.byte		VOICE , 53
	.byte		N11   , En2 , v127
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   
	.byte	W06
	.byte		VOICE , 102
	.byte		N05   
	.byte	W06
	.byte		VOICE , 22
	.byte		N11   , Fs2 , v068
	.byte	W11
	.byte		VOICE , 102
	.byte		N05   , Fs2 , v127
	.byte	W06
	.byte		VOICE , 54
	.byte		N05   
	.byte	W06
	.byte		VOICE , 53
	.byte		N11   , En2 
	.byte	W11
	.byte		VOICE , 22
	.byte		N05   , En2 , v068
	.byte	W06
	.byte		VOICE , 102
	.byte		N05   , En2 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N11   , Bn1 , v068
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   , Bn1 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N05   , Bn1 , v068
	.byte	W05
@ 017   ----------------------------------------
	.byte	W01
	.byte		VOICE , 102
	.byte		N11   , Bn1 , v127
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   
	.byte	W06
	.byte		VOICE , 102
	.byte		N05   
	.byte	W06
	.byte		VOICE , 22
	.byte		N11   , Bn1 , v068
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   , Bn1 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N05   , Bn1 , v068
	.byte	W06
	.byte		VOICE , 53
	.byte		N11   , Bn1 , v127
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   
	.byte	W06
	.byte		VOICE , 102
	.byte		N05   
	.byte	W06
	.byte		VOICE , 22
	.byte		N11   , Bn1 , v068
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   , Bn1 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N05   , Bn1 , v068
	.byte	W06
	.byte		VOICE , 102
	.byte		N11   , Bn1 , v127
	.byte	W03
@ 018   ----------------------------------------
	.byte	W08
	.byte		VOICE , 54
	.byte		N05   
	.byte	W06
	.byte		VOICE , 102
	.byte		N05   
	.byte	W06
	.byte		VOICE , 22
	.byte		N11   , En2 , v068
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   , En2 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N05   , En2 , v068
	.byte	W06
	.byte		VOICE , 53
	.byte		N11   , En2 , v127
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   
	.byte	W06
	.byte		VOICE , 102
	.byte		N05   
	.byte	W06
	.byte		VOICE , 22
	.byte		N11   , Bn1 , v068
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   , Bn1 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N05   , Bn1 , v068
	.byte	W06
	.byte		VOICE , 53
	.byte		N11   , Fs2 , v127
	.byte	W07
@ 019   ----------------------------------------
	.byte	W04
	.byte		VOICE , 22
	.byte		N05   , Fs2 , v068
	.byte	W06
	.byte		VOICE , 102
	.byte		N05   , Fs2 , v127
	.byte	W06
	.byte		VOICE , 55
	.byte		N11   , Gs2 
	.byte	W11
	.byte		VOICE , 57
	.byte		N05   
	.byte	W06
	.byte		VOICE , 55
	.byte		N05   , Gs2 , v096
	.byte	W06
	.byte		VOICE , 58
	.byte		N11   , Gs2 , v127
	.byte	W11
	.byte		VOICE , 57
	.byte		N05   
	.byte	W06
	.byte		VOICE , 55
	.byte		N05   
	.byte	W06
	.byte		VOICE , 22
	.byte		N11   , En2 , v068
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   , En2 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N05   , En2 , v068
	.byte	W06
	.byte		VOICE , 53
	.byte		N11   , En2 , v127
	.byte	W11
@ 020   ----------------------------------------
	.byte		VOICE , 54
	.byte		N05   
	.byte	W06
	.byte		VOICE , 102
	.byte		N05   
	.byte	W06
	.byte		VOICE , 22
	.byte		N11   , Fs2 , v068
	.byte	W11
	.byte		VOICE , 102
	.byte		N05   , Fs2 , v127
	.byte	W06
	.byte		VOICE , 54
	.byte		N05   
	.byte	W06
	.byte		VOICE , 53
	.byte		N11   , En2 
	.byte	W11
	.byte		VOICE , 22
	.byte		N05   , En2 , v068
	.byte	W06
	.byte		VOICE , 102
	.byte		N05   , En2 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N11   , Bn1 , v068
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   , Bn1 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N05   , Bn1 , v068
	.byte	W06
	.byte		VOICE , 102
	.byte		N11   , Bn1 , v127
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   
	.byte	W04
@ 021   ----------------------------------------
	.byte	W02
	.byte		VOICE , 102
	.byte		N05   
	.byte	W06
	.byte		VOICE , 22
	.byte		N11   , Bn1 , v068
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   , Bn1 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N05   , Bn1 , v068
	.byte	W06
	.byte		VOICE , 53
	.byte		N11   , Bn1 , v127
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   
	.byte	W06
	.byte		VOICE , 102
	.byte		N05   
	.byte	W06
	.byte		VOICE , 22
	.byte		N11   , Bn1 , v068
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   , Bn1 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N05   , Bn1 , v068
	.byte	W06
	.byte		VOICE , 102
	.byte		N11   , Bn1 , v127
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   
	.byte	W06
	.byte		VOICE , 102
	.byte		N05   
	.byte	W02
@ 022   ----------------------------------------
	.byte	W04
	.byte		VOICE , 22
	.byte		N11   , En2 , v068
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   , En2 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N05   , En2 , v068
	.byte	W06
	.byte		VOICE , 53
	.byte		N11   , En2 , v127
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   
	.byte	W06
	.byte		VOICE , 102
	.byte		N05   
	.byte	W06
	.byte		VOICE , 22
	.byte		N11   , Bn1 , v068
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   , Bn1 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N05   , Bn1 , v068
	.byte	W06
	.byte		VOICE , 53
	.byte		N11   , Fs2 , v127
	.byte	W11
	.byte		VOICE , 22
	.byte		N05   , Fs2 , v068
	.byte	W06
	.byte		VOICE , 102
	.byte		N05   , Fs2 , v127
	.byte	W06
@ 023   ----------------------------------------
	.byte		VOICE , 55
	.byte		N11   , Gs2 
	.byte	W11
	.byte		VOICE , 57
	.byte		N05   
	.byte	W06
	.byte		VOICE , 55
	.byte		N05   , Gs2 , v096
	.byte	W06
	.byte		VOICE , 58
	.byte		N11   , Gs2 , v127
	.byte	W11
	.byte		VOICE , 57
	.byte		N05   
	.byte	W06
	.byte		VOICE , 55
	.byte		N05   
	.byte	W06
	.byte		VOICE , 22
	.byte		N11   , En2 , v068
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   , En2 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N05   , En2 , v068
	.byte	W06
	.byte		VOICE , 53
	.byte		N11   , En2 , v127
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   
	.byte	W06
	.byte		VOICE , 102
	.byte		N05   
	.byte	W06
	.byte		VOICE , 22
	.byte		N11   , Fs2 , v068
	.byte	W04
@ 024   ----------------------------------------
	.byte	W07
	.byte		VOICE , 102
	.byte		N05   , Fs2 , v127
	.byte	W06
	.byte		VOICE , 54
	.byte		N05   
	.byte	W06
	.byte		VOICE , 53
	.byte		N11   , En2 
	.byte	W11
	.byte		VOICE , 22
	.byte		N05   , En2 , v068
	.byte	W06
	.byte		VOICE , 102
	.byte		N05   , En2 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N11   , Bn1 , v068
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   , Bn1 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N05   , Bn1 , v068
	.byte	W06
	.byte		VOICE , 102
	.byte		N11   , Bn1 , v127
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   
	.byte	W06
	.byte		VOICE , 102
	.byte		N05   
	.byte	W06
	.byte		VOICE , 22
	.byte		N11   , En2 , v068
	.byte	W08
@ 025   ----------------------------------------
	.byte	W03
	.byte		VOICE , 102
	.byte		N05   , En2 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N05   , En2 , v068
	.byte	W06
	.byte		VOICE , 53
	.byte		N11   , En2 , v127
	.byte	W11
	.byte		VOICE , 22
	.byte		N05   , En2 , v068
	.byte	W06
	.byte		VOICE , 53
	.byte		N05   , En2 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N11   , En2 , v068
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   , En2 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N05   , En2 , v068
	.byte	W06
	.byte		VOICE , 102
	.byte		N11   , En2 , v127
	.byte	W11
	.byte		VOICE , 22
	.byte		N05   , En2 , v068
	.byte	W06
	.byte		VOICE , 53
	.byte		N05   , En2 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N11   , Fn2 , v068
	.byte	W11
	.byte		VOICE , 102
	.byte		N05   , Fn2 , v127
	.byte	W01
@ 026   ----------------------------------------
	.byte	W05
	.byte		VOICE , 22
	.byte		N05   , Fn2 , v068
	.byte	W06
	.byte		VOICE , 53
	.byte		N11   , Fn2 , v127
	.byte	W11
	.byte		VOICE , 22
	.byte		N05   , Fn2 , v068
	.byte	W06
	.byte		VOICE , 53
	.byte		N05   , Fn2 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N11   , Fn2 , v068
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   , Fn2 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N05   , Fn2 , v068
	.byte	W06
	.byte		VOICE , 102
	.byte		N11   , Fn2 , v127
	.byte	W11
	.byte		VOICE , 22
	.byte		N05   , Fn2 , v068
	.byte	W06
	.byte		VOICE , 53
	.byte		N05   , Fn2 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N11   , Gn1 , v068
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   , Gn1 , v127
	.byte	W05
@ 027   ----------------------------------------
	.byte	W01
	.byte		VOICE , 22
	.byte		N05   , Gn1 , v068
	.byte	W06
	.byte		VOICE , 53
	.byte		N11   , Gn1 , v127
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   
	.byte	W06
	.byte		VOICE , 102
	.byte		N05   
	.byte	W06
	.byte		VOICE , 22
	.byte		N11   , Gn1 , v068
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   , Gn1 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N05   , Gn1 , v068
	.byte	W06
	.byte		VOICE , 102
	.byte		N11   , Gn1 , v127
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   
	.byte	W06
	.byte		VOICE , 102
	.byte		N05   
	.byte	W06
	.byte		VOICE , 22
	.byte		N11   , Fn2 , v068
	.byte	W11
	.byte		VOICE , 102
	.byte		N05   , Fn2 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N05   , Fn2 , v068
	.byte	W03
@ 028   ----------------------------------------
	.byte	W03
	.byte		VOICE , 53
	.byte		N11   , Fn2 , v127
	.byte	W11
	.byte		VOICE , 22
	.byte		N05   , Fn2 , v068
	.byte	W06
	.byte		VOICE , 53
	.byte		N05   , Fn2 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N11   , Fn2 , v068
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   , Fn2 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N05   , Fn2 , v068
	.byte	W06
	.byte		VOICE , 102
	.byte		N11   , Fn2 , v127
	.byte	W11
	.byte		VOICE , 22
	.byte		N05   , Fn2 , v068
	.byte	W06
	.byte		VOICE , 53
	.byte		N05   , Fn2 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N11   , Gn1 , v068
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   , Gn1 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N05   , Gn1 , v068
	.byte	W06
	.byte		VOICE , 53
	.byte		N11   , Gn1 , v127
	.byte	W01
@ 029   ----------------------------------------
	.byte	W10
	.byte		VOICE , 54
	.byte		N05   
	.byte	W06
	.byte		VOICE , 102
	.byte		N05   
	.byte	W06
	.byte		VOICE , 22
	.byte		N11   , Gn1 , v068
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   , Gn1 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N05   , Gn1 , v068
	.byte	W06
	.byte		VOICE , 102
	.byte		N11   , Gn1 , v127
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   
	.byte	W06
	.byte		VOICE , 102
	.byte		N05   
	.byte	W06
	.byte		VOICE , 22
	.byte		N11   , Fn2 , v068
	.byte	W11
	.byte		VOICE , 102
	.byte		N05   , Fn2 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N05   , Fn2 , v068
	.byte	W06
	.byte		VOICE , 53
	.byte		N11   , Fn2 , v127
	.byte	W05
@ 030   ----------------------------------------
	.byte	W06
	.byte		VOICE , 22
	.byte		N05   , Fn2 , v068
	.byte	W06
	.byte		VOICE , 53
	.byte		N05   , Fn2 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N11   , Fn2 , v068
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   , Fn2 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N05   , Fn2 , v068
	.byte	W06
	.byte		VOICE , 102
	.byte		N11   , Fn2 , v127
	.byte	W11
	.byte		VOICE , 22
	.byte		N05   , Fn2 , v068
	.byte	W06
	.byte		VOICE , 53
	.byte		N05   , Fn2 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N11   , En2 , v068
	.byte	W11
	.byte		VOICE , 102
	.byte		N05   , En2 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N05   , En2 , v068
	.byte	W06
	.byte		VOICE , 53
	.byte		N11   , En2 , v127
	.byte	W09
@ 031   ----------------------------------------
	.byte	W02
	.byte		VOICE , 22
	.byte		N05   , En2 , v068
	.byte	W06
	.byte		VOICE , 53
	.byte		N05   , En2 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N11   , En2 , v068
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   , En2 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N05   , En2 , v068
	.byte	W06
	.byte		VOICE , 102
	.byte		N11   , En2 , v127
	.byte	W11
	.byte		VOICE , 22
	.byte		N05   , En2 , v068
	.byte	W06
	.byte		VOICE , 53
	.byte		N05   , En2 , v127
	.byte	W06
	.byte		VOICE , 55
	.byte		N11   , An2 
	.byte	W11
	.byte		VOICE , 56
	.byte		N05   , An1 
	.byte	W06
	.byte		VOICE , 55
	.byte		N05   , An2 
	.byte	W06
	.byte		VOICE , 58
	.byte		N11   
	.byte	W11
	.byte		VOICE , 56
	.byte		N05   , An1 
	.byte	W02
@ 032   ----------------------------------------
	.byte	W04
	.byte		VOICE , 57
	.byte		N05   , An2 
	.byte	W06
	.byte		VOICE , 55
	.byte		N11   
	.byte	W11
	.byte		VOICE , 56
	.byte		N05   , An1 
	.byte	W06
	.byte		VOICE , 55
	.byte		N05   , An2 
	.byte	W06
	.byte		VOICE , 57
	.byte		N11   
	.byte	W11
	.byte		VOICE , 56
	.byte		N05   , An1 
	.byte	W06
	.byte		VOICE , 57
	.byte		N05   , An2 
	.byte	W06
	.byte		VOICE , 22
	.byte		N11   , Gs1 , v068
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   , Gs1 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N05   , Gs1 , v068
	.byte	W06
	.byte		VOICE , 53
	.byte		N11   , Gs1 , v127
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   
	.byte	W06
@ 033   ----------------------------------------
	.byte		VOICE , 102
	.byte		N05   
	.byte	W06
	.byte		VOICE , 22
	.byte		N11   , Gs1 , v068
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   , Gs1 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N05   , Gs1 , v068
	.byte	W06
	.byte		VOICE , 102
	.byte		N11   , Gs1 , v127
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   
	.byte	W06
	.byte		VOICE , 102
	.byte		N05   
	.byte	W06
	.byte		VOICE , 22
	.byte		N11   , Gn1 , v068
	.byte	W11
	.byte		VOICE , 102
	.byte		N05   , Gn1 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N05   , Gn1 , v068
	.byte	W06
	.byte		VOICE , 53
	.byte		N11   , Gn1 , v127
	.byte	W11
	.byte		VOICE , 22
	.byte		N05   , Gn1 , v068
	.byte	W06
	.byte		VOICE , 53
	.byte		N05   , Gn1 , v127
	.byte	W04
@ 034   ----------------------------------------
	.byte	W02
	.byte		VOICE , 22
	.byte		N11   , Gn1 , v068
	.byte	W11
	.byte		VOICE , 54
	.byte		N05   , Gn1 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N05   , Gn1 , v068
	.byte	W06
	.byte		VOICE , 102
	.byte		N11   , Gn1 , v127
	.byte	W11
	.byte		VOICE , 22
	.byte		N05   , Gn1 , v068
	.byte	W06
	.byte		VOICE , 53
	.byte		N05   , Gn1 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N11   , Fs1 , v068
	.byte	W11
	.byte		VOICE , 102
	.byte		N05   , Fs1 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N05   , Fs1 , v068
	.byte	W06
	.byte		VOICE , 53
	.byte		N11   , Fs1 , v127
	.byte	W11
	.byte		VOICE , 22
	.byte		N05   , Fs1 , v068
	.byte	W06
	.byte		VOICE , 53
	.byte		N05   , Fs1 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N11   , Fs1 , v068
	.byte	W02
@ 035   ----------------------------------------
	.byte	W09
	.byte		VOICE , 54
	.byte		N05   , Fs1 , v127
	.byte	W06
	.byte		VOICE , 22
	.byte		N05   , Fs1 , v068
	.byte	W06
	.byte		VOICE , 102
	.byte		N11   , Fs1 , v127
	.byte	W11
	.byte		VOICE , 22
	.byte		N05   , Fs1 , v068
	.byte	W06
	.byte		VOICE , 53
	.byte		N05   , Fs1 , v127
	.byte	W56
	.byte	W02
	.byte	GOTO
	 .word	ch323_3_B1
ch323_3_B2:
@ 036   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

ch323_4:
	.byte		VOL   , 127*ch323_mvl/mxv
	.byte	KEYSH , ch323_key+0
ch323_4_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 59
	.byte		N05   , Fs2 , v127
	.byte	W05
	.byte		        Gs2 
	.byte	W12
	.byte		        Fs2 
	.byte	W06
	.byte		        Ds2 
	.byte	W05
	.byte		        Bn1 
	.byte	W12
	.byte		        Ds2 
	.byte	W06
	.byte		        Fs2 
	.byte	W05
	.byte		        Gs2 
	.byte	W12
	.byte		        Fs2 
	.byte	W06
	.byte		N11   , Ds2 
	.byte	W23
	.byte		N05   , Gs2 
	.byte	W04
@ 001   ----------------------------------------
	.byte	W01
	.byte		        Bn2 
	.byte	W12
	.byte		        Gs2 
	.byte	W06
	.byte		        En2 
	.byte	W05
	.byte		        Bn1 
	.byte	W12
	.byte		        Cs2 
	.byte	W06
	.byte		        Ds2 
	.byte	W05
	.byte		        Fs2 
	.byte	W12
	.byte		        Gs2 
	.byte	W06
	.byte		N11   , Fs2 
	.byte	W28
	.byte		N05   
	.byte	W03
@ 002   ----------------------------------------
	.byte	W09
	.byte		        Gs2 
	.byte	W06
	.byte		        Ds2 
	.byte	W05
	.byte		        Bn1 
	.byte	W12
	.byte		        Ds2 
	.byte	W06
	.byte		        Fs2 
	.byte	W05
	.byte		        Gs2 
	.byte	W12
	.byte		        Fs2 
	.byte	W06
	.byte		N11   , Ds2 
	.byte	W17
	.byte		N05   , Fs2 
	.byte	W06
	.byte		        En2 
	.byte	W11
	.byte		N05   
	.byte	W01
@ 003   ----------------------------------------
	.byte	W05
	.byte		        Fs2 
	.byte	W06
	.byte		        Dn2 
	.byte	W05
	.byte		        Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Cs2 
	.byte	W11
	.byte		MOD   , 42
	.byte		N23   , Ds2 
	.byte	W23
	.byte		MOD   , 0
	.byte	W17
	.byte		N05   , Gs2 
	.byte	W11
@ 004   ----------------------------------------
	.byte	W01
	.byte		        Fs2 
	.byte	W06
	.byte		        Ds2 
	.byte	W05
	.byte		        Bn1 
	.byte	W12
	.byte		        Ds2 
	.byte	W06
	.byte		        Fs2 
	.byte	W05
	.byte		        Gs2 
	.byte	W12
	.byte		        Fs2 
	.byte	W06
	.byte		N11   , Ds2 
	.byte	W23
	.byte		N05   , Gs2 
	.byte	W05
	.byte		        Bn2 
	.byte	W12
	.byte		        Gs2 
	.byte	W03
@ 005   ----------------------------------------
	.byte	W03
	.byte		        En2 
	.byte	W05
	.byte		        Bn1 
	.byte	W12
	.byte		        Cs2 
	.byte	W06
	.byte		N11   , Ds2 
	.byte	W11
	.byte		N05   , En2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N11   , Cs2 
	.byte	W11
	.byte		N05   , Ds2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W17
	.byte		N05   , Cs2 
	.byte	W06
	.byte		        Ds2 
	.byte	W01
@ 006   ----------------------------------------
	.byte	W04
	.byte		        Bn1 
	.byte	W12
	.byte		        Fs1 
	.byte	W06
	.byte		        Gs1 
	.byte	W05
	.byte		        Bn1 
	.byte	W12
	.byte		        Cs2 
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W28
	.byte		        Fs2 
	.byte	W12
	.byte		N05   , En2 
	.byte	W06
	.byte		        Ds2 
	.byte	W05
@ 007   ----------------------------------------
	.byte		        Bn1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Bn1 
	.byte	W78
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W44
	.byte		VOICE , 36
	.byte		N05   , Ds2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Fs2 
	.byte	W05
	.byte		        Gs2 
	.byte	W12
	.byte		        Fs2 
	.byte	W06
	.byte		        Ds2 
	.byte	W05
	.byte		        Bn1 
	.byte	W12
@ 010   ----------------------------------------
	.byte		        Ds2 
	.byte	W06
	.byte		        Fs2 
	.byte	W05
	.byte		        Gs2 
	.byte	W12
	.byte		        Fs2 
	.byte	W06
	.byte		N11   , Ds2 
	.byte	W23
	.byte		N05   , Gs2 
	.byte	W05
	.byte		        Bn2 
	.byte	W12
	.byte		        Gs2 
	.byte	W06
	.byte		        En2 
	.byte	W05
	.byte		        Bn1 
	.byte	W12
	.byte		        Cs2 
	.byte	W04
@ 011   ----------------------------------------
	.byte	W02
	.byte		        Ds2 
	.byte	W05
	.byte		        Fs2 
	.byte	W12
	.byte		        Gs2 
	.byte	W06
	.byte		N11   , Fs2 
	.byte	W28
	.byte		N05   
	.byte	W12
	.byte		        Gs2 
	.byte	W06
	.byte		        Ds2 
	.byte	W05
	.byte		        Bn1 
	.byte	W12
	.byte		        Ds2 
	.byte	W06
	.byte		        Fs2 
	.byte	W02
@ 012   ----------------------------------------
	.byte	W03
	.byte		        Gs2 
	.byte	W12
	.byte		        Fs2 
	.byte	W06
	.byte		N11   , Ds2 
	.byte	W17
	.byte		N05   , Fs2 
	.byte	W06
	.byte		        En2 
	.byte	W11
	.byte		N05   
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Dn2 
	.byte	W05
	.byte		        Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
@ 013   ----------------------------------------
	.byte	W05
	.byte		N23   , Ds2 
	.byte	W40
	.byte		N05   , Gs2 
	.byte	W12
	.byte		        Fs2 
	.byte	W06
	.byte		        Ds2 
	.byte	W05
	.byte		        Bn1 
	.byte	W12
	.byte		        Ds2 
	.byte	W06
	.byte		        Fs2 
	.byte	W05
	.byte		        Gs2 
	.byte	W05
@ 014   ----------------------------------------
	.byte	W07
	.byte		        Fs2 
	.byte	W06
	.byte		N11   , Ds2 
	.byte	W23
	.byte		N05   , Gs2 
	.byte	W05
	.byte		        Bn2 
	.byte	W12
	.byte		        Gs2 
	.byte	W06
	.byte		        En2 
	.byte	W05
	.byte		        Bn1 
	.byte	W12
	.byte		        Cs2 
	.byte	W06
	.byte		N11   , Ds2 
	.byte	W11
	.byte		N05   , En2 
	.byte	W03
@ 015   ----------------------------------------
	.byte	W03
	.byte		        Ds2 
	.byte	W06
	.byte		N11   , Cs2 
	.byte	W11
	.byte		N05   , Ds2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W17
	.byte		N05   , Cs2 
	.byte	W06
	.byte		        Ds2 
	.byte	W05
	.byte		        Bn1 
	.byte	W12
	.byte		        Fs1 
	.byte	W06
	.byte		        Gs1 
	.byte	W05
	.byte		        Bn1 
	.byte	W12
	.byte		        Cs2 
	.byte	W01
@ 016   ----------------------------------------
	.byte	W05
	.byte		N11   , Bn1 
	.byte	W28
	.byte		        Fs2 
	.byte	W12
	.byte		N05   , En2 
	.byte	W06
	.byte		        Ds2 
	.byte	W05
	.byte		        Bn1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Bn1 
	.byte	W22
@ 017   ----------------------------------------
	.byte	W24
	.byte		VOICE , 59
	.byte		N17   , Gs1 
	.byte	W17
	.byte		        Fs1 
	.byte	W17
	.byte		N11   , Fs1 , v064
	.byte	W12
	.byte		N05   , Fs1 , v048
	.byte	W05
	.byte		N11   , Bn1 , v127
	.byte	W12
	.byte		N05   , Fs1 
	.byte	W06
	.byte		        Bn1 
	.byte	W03
@ 018   ----------------------------------------
	.byte	W02
	.byte		        Cs2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		N11   
	.byte	W11
	.byte		N05   , Fs2 , v064
	.byte	W06
	.byte		N17   , En2 , v127
	.byte	W17
	.byte		N11   , En2 , v064
	.byte	W12
	.byte		        En2 , v127
	.byte	W11
	.byte		N05   , En2 , v064
	.byte	W06
	.byte		N17   , Ds2 , v127
	.byte	W13
@ 019   ----------------------------------------
	.byte	W04
	.byte		N11   , Ds2 , v064
	.byte	W12
	.byte		N05   , Cs2 , v127
	.byte	W05
	.byte		        Ds2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W11
	.byte		        Gs1 
	.byte	W12
	.byte		N05   , Fs1 
	.byte	W06
	.byte		        Gs1 
	.byte	W05
	.byte		N11   
	.byte	W12
	.byte		N17   , Bn1 
	.byte	W17
@ 020   ----------------------------------------
	.byte		        Bn1 , v064
	.byte	W17
	.byte		N11   , Bn1 , v048
	.byte	W12
	.byte		        Cs2 , v127
	.byte	W11
	.byte		N05   , Ds2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W05
	.byte		        Bn0 , v080
	.byte	W06
	.byte		        En1 , v127
	.byte	W06
	.byte		N17   , Ds1 
	.byte	W17
	.byte		N11   , Ds1 , v064
	.byte	W04
@ 021   ----------------------------------------
	.byte	W08
	.byte		N05   , Gs1 , v104
	.byte	W05
	.byte		N11   , Gs1 , v127
	.byte	W12
	.byte		        Fs1 
	.byte	W11
	.byte		N05   , Fs1 , v048
	.byte	W06
	.byte		N11   , Bn1 , v127
	.byte	W12
	.byte		N05   , Bn1 , v048
	.byte	W05
	.byte		N11   , Bn1 , v127
	.byte	W12
	.byte		N05   , Fs1 
	.byte	W06
	.byte		        Bn1 
	.byte	W05
	.byte		        Cs2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Fs2 
	.byte	W02
@ 022   ----------------------------------------
	.byte	W04
	.byte		N17   
	.byte	W17
	.byte		        En2 
	.byte	W17
	.byte		N11   , En2 , v064
	.byte	W12
	.byte		N17   , En2 , v127
	.byte	W17
	.byte		        Ds2 
	.byte	W17
	.byte		N11   , Ds2 , v064
	.byte	W12
@ 023   ----------------------------------------
	.byte		N05   , Gs2 , v127
	.byte	W05
	.byte		        Bn1 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N11   , Ds2 
	.byte	W11
	.byte		        Cs2 
	.byte	W12
	.byte		N05   , As1 
	.byte	W06
	.byte		        Bn1 
	.byte	W05
	.byte		        Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N11   , Gs1 
	.byte	W11
	.byte		N17   , Fs1 
	.byte	W18
	.byte		        Fs1 , v064
	.byte	W04
@ 024   ----------------------------------------
	.byte	W13
	.byte		N11   , Cs2 , v127
	.byte	W11
	.byte		N05   , Ds2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N11   
	.byte	W11
	.byte		N05   , Bn1 , v048
	.byte	W06
	.byte		VOICE , 64
	.byte		N05   , Cn2 , v127
	.byte	W06
	.byte		N40   
	.byte	W30
	.byte	W01
@ 025   ----------------------------------------
	.byte	W09
	.byte		VOICE , 2
	.byte		N11   , Gs1 , v104
	.byte	W11
	.byte		N05   , Bn1 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		N11   , Gs2 
	.byte	W11
	.byte		N05   , Gs2 , v064
	.byte	W06
	.byte		        Fs2 , v104
	.byte	W06
	.byte		N11   , En2 
	.byte	W11
	.byte		        Bn1 
	.byte	W12
	.byte		N05   , An1 
	.byte	W05
	.byte		        Bn1 
	.byte	W06
	.byte		N11   , An1 
	.byte	W01
@ 026   ----------------------------------------
	.byte	W11
	.byte		N05   , An1 , v064
	.byte	W05
	.byte		        Bn1 
	.byte	W06
	.byte		N11   , An1 
	.byte	W12
	.byte		N05   , An1 , v048
	.byte	W05
	.byte		        Bn1 
	.byte	W06
	.byte		N11   , An1 
	.byte	W12
	.byte		N05   , An1 , v040
	.byte	W05
	.byte		        Fn1 , v104
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W11
	.byte		N05   , Bn1 , v064
	.byte	W05
@ 027   ----------------------------------------
	.byte	W01
	.byte		N11   , Cn2 , v104
	.byte	W11
	.byte		N05   , Cn2 , v064
	.byte	W06
	.byte		N11   , Bn1 , v104
	.byte	W12
	.byte		        Bn1 , v064
	.byte	W11
	.byte		N05   , Bn1 , v048
	.byte	W06
	.byte		N11   , Gn1 , v104
	.byte	W11
	.byte		N05   , Gn1 , v048
	.byte	W06
	.byte		N11   , An1 , v104
	.byte	W12
	.byte		MOD   , 42
	.byte		N32   
	.byte	W20
@ 028   ----------------------------------------
	.byte	W14
	.byte		MOD   , 0
	.byte		N28   , An1 , v048
	.byte	W28
	.byte	W01
	.byte		N56   , An1 , v040
	.byte	W52
	.byte	W01
@ 029   ----------------------------------------
	.byte	W04
	.byte		N11   , En2 , v104
	.byte	W12
	.byte		N05   , Dn2 
	.byte	W06
	.byte		N11   , An2 
	.byte	W11
	.byte		N05   , Bn2 
	.byte	W06
	.byte		N11   , Gn2 
	.byte	W11
	.byte		        Dn2 
	.byte	W12
	.byte		N05   , Bn1 
	.byte	W06
	.byte		N11   , Gn1 
	.byte	W11
	.byte		N05   , Gn1 , v064
	.byte	W06
	.byte		MOD   , 42
	.byte		N17   , An1 , v104
	.byte	W11
@ 030   ----------------------------------------
	.byte	W06
	.byte		MOD   , 0
	.byte		N17   , An1 , v064
	.byte	W17
	.byte		        An1 , v048
	.byte	W18
	.byte		N05   , An1 , v040
	.byte	W05
	.byte		        Cn2 , v104
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Gs1 
	.byte	W05
	.byte		        An1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N11   , En1 
	.byte	W11
	.byte		N05   , En2 
	.byte	W04
@ 031   ----------------------------------------
	.byte	W02
	.byte		        Dn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Bn1 
	.byte	W05
	.byte		        Cn2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N11   , Gs1 
	.byte	W11
	.byte		N05   , Fn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		MOD   , 42
	.byte		N17   , Cn2 
	.byte	W17
	.byte		MOD   , 0
	.byte		N05   , Bn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W05
	.byte		N11   , En2 
	.byte	W08
@ 032   ----------------------------------------
	.byte	W04
	.byte		MOD   , 42
	.byte		N17   , Bn2 
	.byte	W17
	.byte		MOD   , 0
	.byte		N17   , Bn2 , v064
	.byte	W17
	.byte		        Bn2 , v048
	.byte	W18
	.byte		VOICE , 59
	.byte		N05   , Ds2 , v127
	.byte	W05
	.byte		        Fn2 
	.byte	W12
	.byte		        Ds2 
	.byte	W06
	.byte		        Cn2 
	.byte	W05
	.byte		        Gs1 
	.byte	W12
@ 033   ----------------------------------------
	.byte		VOICE , 2
	.byte		N05   , Fn2 , v104
	.byte	W06
	.byte		        Ds2 
	.byte	W05
	.byte		        Fn2 
	.byte	W12
	.byte		        Ds2 
	.byte	W06
	.byte		        Cn2 
	.byte	W05
	.byte		MOD   , 42
	.byte		N11   , Gs1 
	.byte	W12
	.byte		VOICE , 59
	.byte		MOD   , 0
	.byte		N05   , Dn2 , v127
	.byte	W06
	.byte		N05   
	.byte	W05
	.byte		        En2 
	.byte	W12
	.byte		        Dn2 
	.byte	W06
	.byte		        Bn1 
	.byte	W05
	.byte		        Gn1 
	.byte	W12
	.byte		VOICE , 2
	.byte		N05   , En2 , v104
	.byte	W04
@ 034   ----------------------------------------
	.byte	W02
	.byte		        Dn2 
	.byte	W05
	.byte		        En2 
	.byte	W12
	.byte		        Dn2 
	.byte	W06
	.byte		        Bn1 
	.byte	W05
	.byte		MOD   , 42
	.byte		N17   , Gn1 
	.byte	W18
	.byte		VOICE , 59
	.byte		MOD   , 0
	.byte		N05   , Cs2 , v127
	.byte	W05
	.byte		N11   , Ds2 
	.byte	W12
	.byte		N05   , Cs2 
	.byte	W06
	.byte		        As1 
	.byte	W05
	.byte		N11   , Fs1 
	.byte	W12
	.byte		N05   , As1 
	.byte	W06
	.byte		        Cs2 
	.byte	W02
@ 035   ----------------------------------------
	.byte	W03
	.byte		N11   , Ds2 
	.byte	W12
	.byte		N05   , Cs2 
	.byte	W06
	.byte		N23   , As1 
	.byte	W72
	.byte	W03
	.byte	GOTO
	 .word	ch323_4_B1
ch323_4_B2:
@ 036   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

ch323:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	ch323_pri	@ Priority
	.byte	ch323_rev	@ Reverb.

	.word	ch323_grp

	.word	ch323_1
	.word	ch323_2
	.word	ch323_3
	.word	ch323_4

	.end
