	.include "MPlayDef.s"

	.equ	ch34_grp, voicegroup000
	.equ	ch34_pri, 128
	.equ	ch34_rev, reverb_set+50
	.equ	ch34_mvl, 127
	.equ	ch34_key, 0
	.equ	ch34_tbs, 1
	.equ	ch34_exg, 0
	.equ	ch34_cmp, 1

	.section .rodata
	.global	ch34
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

ch34_1:
	.byte		VOL   , 127*ch34_mvl/mxv
	.byte	KEYSH , ch34_key+0
ch34_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 100*ch34_tbs/2
	.byte		VOICE , 50
	.byte		N11   , Bn1 , v127
	.byte	W11
	.byte		N05   
	.byte	W06
	.byte		VOICE , 48
	.byte		N17   
	.byte	W17
	.byte		VOICE , 49
	.byte		N11   
	.byte	W12
	.byte		VOICE , 50
	.byte		N05   
	.byte	W05
	.byte		VOICE , 48
	.byte		N17   
	.byte	W18
	.byte		VOICE , 50
	.byte		N11   
	.byte	W11
	.byte		N05   
	.byte	W06
	.byte		VOICE , 48
	.byte		N17   
	.byte	W10
@ 001   ----------------------------------------
ch34_1_001:
	.byte	W07
	.byte		VOICE , 49
	.byte		N11   , Bn1 , v127
	.byte	W12
	.byte		VOICE , 50
	.byte		N05   
	.byte	W05
	.byte		VOICE , 48
	.byte		N17   
	.byte	W18
	.byte		VOICE , 50
	.byte		N11   
	.byte	W11
	.byte		N05   
	.byte	W06
	.byte		VOICE , 48
	.byte		N17   
	.byte	W17
	.byte		VOICE , 49
	.byte		N11   
	.byte	W12
	.byte		VOICE , 50
	.byte		N05   
	.byte	W05
	.byte		VOICE , 48
	.byte		N17   
	.byte	W03
	.byte	PEND
@ 002   ----------------------------------------
ch34_1_002:
	.byte	W15
	.byte		VOICE , 50
	.byte		N11   , Bn1 , v127
	.byte	W11
	.byte		N05   
	.byte	W06
	.byte		VOICE , 48
	.byte		N17   
	.byte	W17
	.byte		VOICE , 49
	.byte		N11   
	.byte	W12
	.byte		VOICE , 50
	.byte		N05   
	.byte	W05
	.byte		VOICE , 48
	.byte		N17   
	.byte	W18
	.byte		VOICE , 50
	.byte		N11   
	.byte	W11
	.byte		N05   
	.byte	W01
	.byte	PEND
@ 003   ----------------------------------------
ch34_1_003:
	.byte	W05
	.byte		VOICE , 48
	.byte		N17   , Bn1 , v127
	.byte	W17
	.byte		VOICE , 49
	.byte		N11   
	.byte	W12
	.byte		VOICE , 50
	.byte		N05   
	.byte	W05
	.byte		VOICE , 48
	.byte		N17   
	.byte	W18
	.byte		VOICE , 50
	.byte		N11   
	.byte	W11
	.byte		N05   
	.byte	W06
	.byte		VOICE , 48
	.byte		N17   
	.byte	W17
	.byte		VOICE , 49
	.byte		N11   
	.byte	W05
	.byte	PEND
@ 004   ----------------------------------------
ch34_1_004:
	.byte	W07
	.byte		VOICE , 50
	.byte		N05   , Bn1 , v127
	.byte	W05
	.byte		VOICE , 48
	.byte		N17   
	.byte	W18
	.byte		VOICE , 50
	.byte		N11   
	.byte	W11
	.byte		N05   
	.byte	W06
	.byte		VOICE , 48
	.byte		N17   
	.byte	W17
	.byte		VOICE , 49
	.byte		N11   
	.byte	W12
	.byte		VOICE , 50
	.byte		N05   
	.byte	W05
	.byte		VOICE , 48
	.byte		N17   
	.byte	W15
	.byte	PEND
@ 005   ----------------------------------------
	.byte	W03
	.byte		VOICE , 50
	.byte		N11   
	.byte	W11
	.byte		N05   
	.byte	W06
	.byte		VOICE , 48
	.byte		N17   
	.byte	W17
	.byte		VOICE , 49
	.byte		N11   
	.byte	W12
	.byte		VOICE , 50
	.byte		N05   
	.byte	W05
	.byte		VOICE , 48
	.byte		N17   
	.byte	W18
	.byte		VOICE , 50
	.byte		N11   
	.byte	W11
	.byte		N05   
	.byte	W06
	.byte		VOICE , 48
	.byte		N17   
	.byte	W07
@ 006   ----------------------------------------
	.byte	W10
	.byte		VOICE , 49
	.byte		N11   
	.byte	W12
	.byte		VOICE , 50
	.byte		N05   
	.byte	W05
	.byte		VOICE , 48
	.byte		N17   
	.byte	W18
	.byte		VOICE , 50
	.byte		N11   
	.byte	W11
	.byte		N05   
	.byte	W06
	.byte		VOICE , 48
	.byte		N17   
	.byte	W17
	.byte		VOICE , 49
	.byte		N11   
	.byte	W12
	.byte		VOICE , 50
	.byte		N05   
	.byte	W05
@ 007   ----------------------------------------
	.byte		VOICE , 48
	.byte		N17   
	.byte	W18
	.byte		VOICE , 50
	.byte		N11   
	.byte	W11
	.byte		N05   
	.byte	W06
	.byte		VOICE , 48
	.byte		N17   
	.byte	W17
	.byte		VOICE , 49
	.byte		N11   
	.byte	W12
	.byte		VOICE , 50
	.byte		N05   
	.byte	W05
	.byte		VOICE , 48
	.byte		N17   
	.byte	W18
	.byte		VOICE , 50
	.byte		N11   
	.byte	W09
@ 008   ----------------------------------------
	.byte	W02
	.byte		N05   
	.byte	W06
	.byte		VOICE , 48
	.byte		N17   
	.byte	W17
	.byte		VOICE , 49
	.byte		N11   
	.byte	W12
	.byte		VOICE , 50
	.byte		N05   
	.byte	W05
	.byte		VOICE , 48
	.byte		N17   
	.byte	W18
	.byte		VOICE , 50
	.byte		N11   
	.byte	W11
	.byte		N05   
	.byte	W06
	.byte		VOICE , 48
	.byte		N17   
	.byte	W17
	.byte		VOICE , 49
	.byte		N11   
	.byte	W02
@ 009   ----------------------------------------
	.byte	W10
	.byte		VOICE , 50
	.byte		N05   
	.byte	W05
	.byte		VOICE , 48
	.byte		N17   
	.byte	W18
	.byte		VOICE , 50
	.byte		N11   
	.byte	W11
	.byte		N05   
	.byte	W06
	.byte		VOICE , 48
	.byte		N17   
	.byte	W17
	.byte		VOICE , 49
	.byte		N11   
	.byte	W12
	.byte		VOICE , 50
	.byte		N05   
	.byte	W05
	.byte		VOICE , 48
	.byte		N17   
	.byte	W12
@ 010   ----------------------------------------
	.byte	W06
	.byte		VOICE , 50
	.byte		N11   
	.byte	W11
	.byte		N05   
	.byte	W06
	.byte		VOICE , 48
	.byte		N17   
	.byte	W17
	.byte		VOICE , 49
	.byte		N11   
	.byte	W12
	.byte		VOICE , 50
	.byte		N05   
	.byte	W05
	.byte		VOICE , 48
	.byte		N17   
	.byte	W18
	.byte		VOICE , 50
	.byte		N11   
	.byte	W11
	.byte		N05   
	.byte	W06
	.byte		VOICE , 48
	.byte		N17   
	.byte	W04
@ 011   ----------------------------------------
	.byte	W13
	.byte		VOICE , 49
	.byte		N11   
	.byte	W12
	.byte		VOICE , 50
	.byte		N05   
	.byte	W05
	.byte		VOICE , 48
	.byte		N17   
	.byte	W18
	.byte		VOICE , 50
	.byte		N11   
	.byte	W11
	.byte		N05   
	.byte	W06
	.byte		VOICE , 48
	.byte		N17   
	.byte	W17
	.byte		VOICE , 49
	.byte		N11   
	.byte	W12
	.byte		VOICE , 50
	.byte		N05   
	.byte	W02
@ 012   ----------------------------------------
	.byte	W03
	.byte		VOICE , 48
	.byte		N17   
	.byte	W18
	.byte		VOICE , 50
	.byte		N11   
	.byte	W11
	.byte		N05   
	.byte	W06
	.byte		VOICE , 48
	.byte		N17   
	.byte	W17
	.byte		VOICE , 49
	.byte		N11   
	.byte	W12
	.byte		VOICE , 50
	.byte		N05   
	.byte	W05
	.byte		VOICE , 48
	.byte		N17   
	.byte	W18
	.byte		VOICE , 50
	.byte		N11   
	.byte	W06
@ 013   ----------------------------------------
	.byte	W05
	.byte		N05   
	.byte	W06
	.byte		VOICE , 48
	.byte		N17   
	.byte	W17
	.byte		VOICE , 49
	.byte		N11   
	.byte	W12
	.byte		VOICE , 50
	.byte		N05   
	.byte	W05
	.byte		VOICE , 48
	.byte		N17   
	.byte	W18
	.byte		VOICE , 50
	.byte		N11   
	.byte	W11
	.byte		N05   
	.byte	W06
	.byte		VOICE , 48
	.byte		N17   
	.byte	W16
@ 014   ----------------------------------------
	.byte	W01
	.byte		VOICE , 49
	.byte		N11   
	.byte	W12
	.byte		VOICE , 50
	.byte		N05   
	.byte	W05
	.byte		VOICE , 48
	.byte		N17   
	.byte	W18
	.byte		VOICE , 50
	.byte		N11   
	.byte	W11
	.byte		N05   
	.byte	W06
	.byte		VOICE , 48
	.byte		N17   
	.byte	W17
	.byte		VOICE , 49
	.byte		N11   
	.byte	W12
	.byte		VOICE , 50
	.byte		N05   
	.byte	W05
	.byte		VOICE , 48
	.byte		N17   
	.byte	W09
@ 015   ----------------------------------------
	.byte	W09
	.byte		VOICE , 50
	.byte		N11   
	.byte	W11
	.byte		N05   
	.byte	W06
	.byte		VOICE , 48
	.byte		N17   
	.byte	W17
	.byte		VOICE , 49
	.byte		N11   
	.byte	W12
	.byte		VOICE , 50
	.byte		N05   
	.byte	W05
	.byte		VOICE , 48
	.byte		N17   
	.byte	W18
	.byte		VOICE , 50
	.byte		N11   
	.byte	W11
	.byte		N05   
	.byte	W06
	.byte		VOICE , 48
	.byte		N17   
	.byte	W01
@ 016   ----------------------------------------
	.byte	W16
	.byte		VOICE , 49
	.byte		N11   
	.byte	W12
	.byte		VOICE , 50
	.byte		N05   
	.byte	W05
	.byte		VOICE , 48
	.byte		N17   
	.byte	W18
	.byte		VOICE , 50
	.byte		N11   
	.byte	W11
	.byte		N05   
	.byte	W06
	.byte		VOICE , 48
	.byte		N17   
	.byte	W17
	.byte		VOICE , 49
	.byte		N11   
	.byte	W11
@ 017   ----------------------------------------
	.byte	W01
	.byte		VOICE , 50
	.byte		N05   
	.byte	W05
	.byte		VOICE , 48
	.byte		N17   
	.byte	W18
	.byte		VOICE , 50
	.byte		N11   
	.byte	W11
	.byte		N05   
	.byte	W06
	.byte		VOICE , 48
	.byte		N17   
	.byte	W17
	.byte		VOICE , 49
	.byte		N11   
	.byte	W12
	.byte		VOICE , 50
	.byte		N05   
	.byte	W05
	.byte		VOICE , 48
	.byte		N17   
	.byte	W18
	.byte		VOICE , 50
	.byte		N11   
	.byte	W03
@ 018   ----------------------------------------
	.byte	W08
	.byte		N05   
	.byte	W06
	.byte		VOICE , 48
	.byte		N17   
	.byte	W17
	.byte		VOICE , 49
	.byte		N11   
	.byte	W12
	.byte		VOICE , 50
	.byte		N05   
	.byte	W05
	.byte		VOICE , 48
	.byte		N17   
	.byte	W18
	.byte		VOICE , 50
	.byte		N11   
	.byte	W11
	.byte		N05   
	.byte	W06
	.byte		VOICE , 48
	.byte		N17   
	.byte	W13
@ 019   ----------------------------------------
	.byte	W04
	.byte		VOICE , 49
	.byte		N11   
	.byte	W12
	.byte		VOICE , 50
	.byte		N05   
	.byte	W05
	.byte		VOICE , 48
	.byte		N17   
	.byte	W18
	.byte		VOICE , 50
	.byte		N11   
	.byte	W11
	.byte		N05   
	.byte	W06
	.byte		VOICE , 48
	.byte		N17   
	.byte	W17
	.byte		VOICE , 49
	.byte		N11   
	.byte	W12
	.byte		VOICE , 50
	.byte		N05   
	.byte	W05
	.byte		VOICE , 48
	.byte		N17   
	.byte	W06
@ 020   ----------------------------------------
	.byte	W12
	.byte		VOICE , 50
	.byte		N11   
	.byte	W11
	.byte		N05   
	.byte	W06
	.byte		VOICE , 48
	.byte		N17   
	.byte	W17
	.byte		VOICE , 49
	.byte		N11   
	.byte	W12
	.byte		VOICE , 50
	.byte		N05   
	.byte	W05
	.byte		VOICE , 48
	.byte		N17   
	.byte	W18
	.byte		VOICE , 50
	.byte		N11   
	.byte	W11
	.byte		N05   
	.byte	W04
@ 021   ----------------------------------------
	.byte	W02
	.byte		VOICE , 48
	.byte		N17   
	.byte	W17
	.byte		VOICE , 49
	.byte		N11   
	.byte	W12
	.byte		VOICE , 50
	.byte		N05   
	.byte	W05
	.byte		VOICE , 48
	.byte		N17   
	.byte	W18
	.byte		VOICE , 50
	.byte		N11   
	.byte	W11
	.byte		N05   
	.byte	W06
	.byte		VOICE , 48
	.byte		N17   
	.byte	W17
	.byte		VOICE , 49
	.byte		N11   
	.byte	W08
@ 022   ----------------------------------------
	.byte	W04
	.byte		VOICE , 50
	.byte		N05   
	.byte	W05
	.byte		VOICE , 48
	.byte		N17   
	.byte	W18
	.byte		VOICE , 50
	.byte		N11   
	.byte	W11
	.byte		N05   
	.byte	W06
	.byte		VOICE , 48
	.byte		N17   
	.byte	W17
	.byte		VOICE , 49
	.byte		N11   
	.byte	W12
	.byte		VOICE , 50
	.byte		N05   
	.byte	W05
	.byte		VOICE , 48
	.byte		N17   
	.byte	W18
@ 023   ----------------------------------------
	.byte		VOICE , 50
	.byte		N11   
	.byte	W11
	.byte		N05   
	.byte	W06
	.byte		VOICE , 48
	.byte		N17   
	.byte	W17
	.byte		VOICE , 49
	.byte		N11   
	.byte	W12
	.byte		VOICE , 50
	.byte		N05   
	.byte	W05
	.byte		VOICE , 48
	.byte		N17   
	.byte	W18
	.byte		VOICE , 50
	.byte		N11   
	.byte	W11
	.byte		N05   
	.byte	W06
	.byte		VOICE , 48
	.byte		N17   
	.byte	W10
@ 024   ----------------------------------------
	.byte	PATT
	 .word	ch34_1_001
@ 025   ----------------------------------------
	.byte	PATT
	 .word	ch34_1_002
@ 026   ----------------------------------------
	.byte	PATT
	 .word	ch34_1_003
@ 027   ----------------------------------------
	.byte	PATT
	 .word	ch34_1_004
@ 028   ----------------------------------------
	.byte	W03
	.byte		VOICE , 50
	.byte		N11   , Bn1 , v127
	.byte	W11
	.byte		N05   
	.byte	W06
	.byte		VOICE , 48
	.byte		N17   
	.byte	W17
	.byte		VOICE , 49
	.byte		N11   
	.byte	W12
	.byte		VOICE , 50
	.byte		N05   
	.byte	W05
	.byte		VOICE , 48
	.byte		N17   
	.byte	W42
	.byte	GOTO
	 .word	ch34_1_B1
ch34_1_B2:
@ 029   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

ch34_2:
	.byte		VOL   , 127*ch34_mvl/mxv
	.byte	KEYSH , ch34_key+0
ch34_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 52
	.byte		N11   , Bn1 , v127
	.byte	W11
	.byte		N05   , Dn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W05
	.byte		        Cs2 
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W12
	.byte		N05   , Dn2 
	.byte	W05
	.byte		        Fs1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W11
	.byte		N05   , Dn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W04
@ 001   ----------------------------------------
	.byte	W01
	.byte		        Cs2 
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W12
	.byte		N05   , Dn2 
	.byte	W05
	.byte		        Fs1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W11
	.byte		N05   , Dn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W05
	.byte		        Cs2 
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W12
	.byte		N05   , Dn2 
	.byte	W05
	.byte		        Fs1 
	.byte	W03
@ 002   ----------------------------------------
	.byte	W03
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W11
	.byte		N05   , Dn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W05
	.byte		        Cs2 
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W12
	.byte		N05   , Dn2 
	.byte	W05
	.byte		        Fs1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W11
	.byte		N05   , Dn2 
	.byte	W01
@ 003   ----------------------------------------
	.byte	W05
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W05
	.byte		        Cs2 
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W12
	.byte		N05   , Dn2 
	.byte	W05
	.byte		        Fs1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W11
	.byte		N05   , Dn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W05
	.byte		        Cs2 
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W05
@ 004   ----------------------------------------
	.byte	W07
	.byte		N05   , Dn2 
	.byte	W05
	.byte		        Fs1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W11
	.byte		N05   , Dn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W05
	.byte		        Cs2 
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W12
	.byte		N05   , Dn2 
	.byte	W05
	.byte		        Fs1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W03
@ 005   ----------------------------------------
	.byte	W03
	.byte		N11   , Bn1 
	.byte	W11
	.byte		N05   , Dn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W05
	.byte		        Cs2 
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W12
	.byte		N05   , Dn2 
	.byte	W05
	.byte		        Fs1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W11
	.byte		N05   , Dn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W01
@ 006   ----------------------------------------
	.byte	W04
	.byte		        Cs2 
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W12
	.byte		N05   , Dn2 
	.byte	W05
	.byte		        Fs1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W11
	.byte		N05   , Dn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W05
	.byte		        Cs2 
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W12
	.byte		N05   , Dn2 
	.byte	W05
@ 007   ----------------------------------------
	.byte		        Fs1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W11
	.byte		N05   , Dn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W05
	.byte		        Cs2 
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W12
	.byte		N05   , Dn2 
	.byte	W05
	.byte		        Fs1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W09
@ 008   ----------------------------------------
	.byte	W02
	.byte		N05   , Dn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W05
	.byte		        Cs2 
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W12
	.byte		N05   , Dn2 
	.byte	W05
	.byte		        Fs1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W11
	.byte		N05   , Dn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W05
	.byte		        Cs2 
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W02
@ 009   ----------------------------------------
	.byte	W10
	.byte		N05   , Dn2 
	.byte	W05
	.byte		        Fs1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W11
	.byte		N05   , Dn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W05
	.byte		        Cs2 
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W12
	.byte		N05   , Dn2 
	.byte	W05
	.byte		        Fs1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
@ 010   ----------------------------------------
	.byte		        Fs1 
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W11
	.byte		N05   , Dn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W05
	.byte		        Cs2 
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W12
	.byte		N05   , Dn2 
	.byte	W05
	.byte		        Fs1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W11
	.byte		N05   , Dn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W04
@ 011   ----------------------------------------
	.byte	W02
	.byte		        Fs1 
	.byte	W05
	.byte		        Cs2 
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W12
	.byte		N05   , Dn2 
	.byte	W05
	.byte		        Fs1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		VOICE , 69
	.byte		N17   , Bn1 
	.byte	W17
	.byte		N17   
	.byte	W17
	.byte		N17   
	.byte	W14
@ 012   ----------------------------------------
	.byte	W03
	.byte		N17   
	.byte	W18
	.byte		        Cs2 
	.byte	W17
	.byte		N17   
	.byte	W17
	.byte		N17   
	.byte	W17
	.byte		N17   
	.byte	W18
	.byte		        Dn2 
	.byte	W06
@ 013   ----------------------------------------
	.byte	W11
	.byte		N17   
	.byte	W17
	.byte		N17   
	.byte	W17
	.byte		N17   
	.byte	W18
	.byte		        Cs2 
	.byte	W17
	.byte		N17   
	.byte	W16
@ 014   ----------------------------------------
	.byte	W01
	.byte		N17   
	.byte	W17
	.byte		N17   
	.byte	W18
	.byte		        Dn2 
	.byte	W17
	.byte		N17   
	.byte	W17
	.byte		N17   
	.byte	W17
	.byte		N17   
	.byte	W09
@ 015   ----------------------------------------
	.byte	W09
	.byte		        Cs2 
	.byte	W17
	.byte		N17   
	.byte	W17
	.byte		N17   
	.byte	W17
	.byte		N17   
	.byte	W18
	.byte		        Cn2 
	.byte	W17
	.byte		N17   
	.byte	W01
@ 016   ----------------------------------------
	.byte	W16
	.byte		N17   
	.byte	W17
	.byte		N17   
	.byte	W18
	.byte		        Bn1 
	.byte	W17
	.byte		N17   
	.byte	W17
	.byte		N17   
	.byte	W11
@ 017   ----------------------------------------
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		VOICE , 47
	.byte		N05   , As1 
	.byte	W06
	.byte		VOICE , 52
	.byte		N11   , Bn1 
	.byte	W11
	.byte		N05   , Dn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W05
	.byte		        Cs2 
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W12
	.byte		N05   , Dn2 
	.byte	W05
	.byte		        Fs1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W03
@ 018   ----------------------------------------
	.byte	W08
	.byte		N05   , Dn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W05
	.byte		        Cs2 
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W12
	.byte		N05   , Dn2 
	.byte	W05
	.byte		        Fs1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W11
	.byte		N05   , Dn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W05
	.byte		        Cs2 
	.byte	W02
@ 019   ----------------------------------------
	.byte	W04
	.byte		N11   , Bn1 
	.byte	W12
	.byte		N05   , Dn2 
	.byte	W05
	.byte		        Fs1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W11
	.byte		N05   , Dn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W05
	.byte		        Cs2 
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W12
	.byte		N05   , Dn2 
	.byte	W05
	.byte		        Fs1 
	.byte	W06
@ 020   ----------------------------------------
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W11
	.byte		N05   , Dn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W05
	.byte		        Cs2 
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W12
	.byte		N05   , Dn2 
	.byte	W05
	.byte		        Fs1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W11
	.byte		N05   , Dn2 
	.byte	W04
@ 021   ----------------------------------------
	.byte	W02
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W05
	.byte		        Cs2 
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W12
	.byte		N05   , Dn2 
	.byte	W05
	.byte		        Fs1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W11
	.byte		N05   , Dn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W05
	.byte		        Cs2 
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W08
@ 022   ----------------------------------------
	.byte	W04
	.byte		N05   , Dn2 
	.byte	W05
	.byte		        Fs1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W11
	.byte		N05   , Dn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W05
	.byte		        Cs2 
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W12
	.byte		N05   , Dn2 
	.byte	W05
	.byte		        Fs1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
@ 023   ----------------------------------------
	.byte		VOICE , 69
	.byte		N17   , Bn1 
	.byte	W17
	.byte		N17   
	.byte	W17
	.byte		N17   
	.byte	W17
	.byte		N17   
	.byte	W18
	.byte		        Cs2 
	.byte	W17
	.byte		N17   
	.byte	W10
@ 024   ----------------------------------------
	.byte	W07
	.byte		N17   
	.byte	W17
	.byte		N17   
	.byte	W18
	.byte		        Dn2 
	.byte	W17
	.byte		N17   
	.byte	W17
	.byte		N17   
	.byte	W17
	.byte		N17   
	.byte	W03
@ 025   ----------------------------------------
	.byte	W15
	.byte		        Cs2 
	.byte	W17
	.byte		N17   
	.byte	W17
	.byte		N17   
	.byte	W17
	.byte		N17   
	.byte	W18
	.byte		        Dn2 
	.byte	W12
@ 026   ----------------------------------------
	.byte	W05
	.byte		N17   
	.byte	W17
	.byte		N17   
	.byte	W17
	.byte		N17   
	.byte	W18
	.byte		        Cs2 
	.byte	W17
	.byte		N17   
	.byte	W17
	.byte		N17   
	.byte	W05
@ 027   ----------------------------------------
	.byte	W12
	.byte		N17   
	.byte	W18
	.byte		        Cn2 
	.byte	W17
	.byte		N17   
	.byte	W17
	.byte		N17   
	.byte	W17
	.byte		N17   
	.byte	W15
@ 028   ----------------------------------------
	.byte	W03
	.byte		        Bn1 
	.byte	W17
	.byte		N17   
	.byte	W17
	.byte		N17   
	.byte	W17
	.byte		N11   
	.byte	W12
	.byte		VOICE , 47
	.byte		N05   , As1 
	.byte	W30
	.byte	GOTO
	 .word	ch34_2_B1
ch34_2_B2:
@ 029   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

ch34_3:
	.byte		VOL   , 127*ch34_mvl/mxv
	.byte	KEYSH , ch34_key+0
ch34_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 16
	.byte		N05   , Bn1 , v127
	.byte	W05
	.byte		        Bn1 , v064
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W06
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        Fs1 , v127
	.byte	W05
	.byte		        Fs1 , v064
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		        Bn1 , v064
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W05
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        An1 , v127
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Bn1 
	.byte	W05
	.byte		        Bn1 , v064
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W06
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        Fs1 , v127
	.byte	W04
@ 001   ----------------------------------------
ch34_3_001:
	.byte	W01
	.byte		N05   , Fs1 , v064
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		        Bn1 , v064
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W05
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        An1 , v127
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Bn1 
	.byte	W05
	.byte		        Bn1 , v064
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W06
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        Fs1 , v127
	.byte	W05
	.byte		        Fs1 , v064
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		        Bn1 , v064
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W05
	.byte		        Fs2 , v064
	.byte	W03
	.byte	PEND
@ 002   ----------------------------------------
ch34_3_002:
	.byte	W03
	.byte		N05   , An1 , v127
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Bn1 
	.byte	W05
	.byte		        Bn1 , v064
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W06
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        Fs1 , v127
	.byte	W05
	.byte		        Fs1 , v064
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		        Bn1 , v064
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W05
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        An1 , v127
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Bn1 
	.byte	W05
	.byte		        Bn1 , v064
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W01
	.byte	PEND
@ 003   ----------------------------------------
ch34_3_003:
	.byte	W05
	.byte		N05   , Fs2 , v064
	.byte	W06
	.byte		        Fs1 , v127
	.byte	W05
	.byte		        Fs1 , v064
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		        Bn1 , v064
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W05
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        An1 , v127
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Bn1 
	.byte	W05
	.byte		        Bn1 , v064
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W06
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        Fs1 , v127
	.byte	W05
	.byte		        Fs1 , v064
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W05
	.byte	PEND
@ 004   ----------------------------------------
ch34_3_004:
	.byte	W01
	.byte		N05   , Bn1 , v064
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W05
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        An1 , v127
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Bn1 
	.byte	W05
	.byte		        Bn1 , v064
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W06
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        Fs1 , v127
	.byte	W05
	.byte		        Fs1 , v064
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		        Bn1 , v064
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W05
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        An1 , v127
	.byte	W06
	.byte		        As1 
	.byte	W03
	.byte	PEND
@ 005   ----------------------------------------
	.byte	W03
	.byte		        Bn1 
	.byte	W05
	.byte		        Bn1 , v064
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W06
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        Fs1 , v127
	.byte	W05
	.byte		        Fs1 , v064
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		        Bn1 , v064
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W05
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        An1 , v127
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Bn1 
	.byte	W05
	.byte		        Bn1 , v064
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W06
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        Fs1 , v127
	.byte	W01
@ 006   ----------------------------------------
	.byte	W04
	.byte		        Fs1 , v064
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		        Bn1 , v064
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W05
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        An1 , v127
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Bn1 
	.byte	W05
	.byte		        Bn1 , v064
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W06
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        Fs1 , v127
	.byte	W05
	.byte		        Fs1 , v064
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		        Bn1 , v064
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W05
@ 007   ----------------------------------------
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        An1 , v127
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Bn1 
	.byte	W05
	.byte		        Bn1 , v064
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W06
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        Fs1 , v127
	.byte	W05
	.byte		        Fs1 , v064
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		        Bn1 , v064
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W05
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        An1 , v127
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Bn1 
	.byte	W05
	.byte		        Bn1 , v064
	.byte	W04
@ 008   ----------------------------------------
	.byte	W02
	.byte		        Fs2 , v127
	.byte	W06
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        Fs1 , v127
	.byte	W05
	.byte		        Fs1 , v064
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		        Bn1 , v064
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W05
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        An1 , v127
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Bn1 
	.byte	W05
	.byte		        Bn1 , v064
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W06
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        Fs1 , v127
	.byte	W05
	.byte		        Fs1 , v064
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W02
@ 009   ----------------------------------------
	.byte	W04
	.byte		        Bn1 , v064
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W05
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        An1 , v127
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Bn1 
	.byte	W05
	.byte		        Bn1 , v064
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W06
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        Fs1 , v127
	.byte	W05
	.byte		        Fs1 , v064
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		        Bn1 , v064
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W05
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        An1 , v127
	.byte	W06
@ 010   ----------------------------------------
	.byte		        As1 
	.byte	W06
	.byte		        Bn1 
	.byte	W05
	.byte		        Bn1 , v064
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W06
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        Fs1 , v127
	.byte	W05
	.byte		        Fs1 , v064
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		        Bn1 , v064
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W05
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        An1 , v127
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Bn1 
	.byte	W05
	.byte		        Bn1 , v064
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W06
	.byte		        Fs2 , v064
	.byte	W04
@ 011   ----------------------------------------
	.byte	W02
	.byte		        Fs1 , v127
	.byte	W05
	.byte		        Fs1 , v064
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		        Bn1 , v064
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W05
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        An1 , v127
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Bn1 
	.byte	W05
	.byte		        Bn1 , v064
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W06
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        Fs1 , v127
	.byte	W05
	.byte		        Fs1 , v064
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		        Bn1 , v064
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W02
@ 012   ----------------------------------------
	.byte	W03
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        An1 , v127
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Bn1 
	.byte	W05
	.byte		        Bn1 , v064
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W06
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        Fs1 , v127
	.byte	W05
	.byte		        Fs1 , v064
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		        Bn1 , v064
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W05
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        An1 , v127
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Bn1 
	.byte	W05
	.byte		        Bn1 , v064
	.byte	W01
@ 013   ----------------------------------------
	.byte	W05
	.byte		        Fs2 , v127
	.byte	W06
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        Fs1 , v127
	.byte	W05
	.byte		        Fs1 , v064
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		        Bn1 , v064
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W05
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        An1 , v127
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Bn1 
	.byte	W05
	.byte		        Bn1 , v064
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W06
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        Fs1 , v127
	.byte	W05
	.byte		        Fs1 , v064
	.byte	W05
@ 014   ----------------------------------------
	.byte	W01
	.byte		        Bn1 , v127
	.byte	W06
	.byte		        Bn1 , v064
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W05
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        An1 , v127
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Bn1 
	.byte	W05
	.byte		        Bn1 , v064
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W06
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        Fs1 , v127
	.byte	W05
	.byte		        Fs1 , v064
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		        Bn1 , v064
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W05
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        An1 , v127
	.byte	W03
@ 015   ----------------------------------------
	.byte	W03
	.byte		        As1 
	.byte	W06
	.byte		        Bn1 
	.byte	W05
	.byte		        Bn1 , v064
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W06
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        Fs1 , v127
	.byte	W05
	.byte		        Fs1 , v064
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		        Bn1 , v064
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W05
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        An1 , v127
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Bn1 
	.byte	W05
	.byte		        Bn1 , v064
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W06
	.byte		        Fs2 , v064
	.byte	W01
@ 016   ----------------------------------------
	.byte	W05
	.byte		        Fs1 , v127
	.byte	W05
	.byte		        Fs1 , v064
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		        Bn1 , v064
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W05
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        An1 , v127
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Bn1 
	.byte	W05
	.byte		        Bn1 , v064
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W06
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        Fs1 , v127
	.byte	W05
	.byte		        Fs1 , v064
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		        Bn1 , v064
	.byte	W05
@ 017   ----------------------------------------
	.byte	W01
	.byte		        Fs2 , v127
	.byte	W05
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        An1 , v127
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Bn1 
	.byte	W05
	.byte		        Bn1 , v064
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W06
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        Fs1 , v127
	.byte	W05
	.byte		        Fs1 , v064
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		        Bn1 , v064
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W05
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        An1 , v127
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Bn1 
	.byte	W03
@ 018   ----------------------------------------
	.byte	W02
	.byte		        Bn1 , v064
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W06
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        Fs1 , v127
	.byte	W05
	.byte		        Fs1 , v064
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		        Bn1 , v064
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W05
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        An1 , v127
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Bn1 
	.byte	W05
	.byte		        Bn1 , v064
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W06
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        Fs1 , v127
	.byte	W05
	.byte		        Fs1 , v064
	.byte	W02
@ 019   ----------------------------------------
	.byte	W04
	.byte		        Bn1 , v127
	.byte	W06
	.byte		        Bn1 , v064
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W05
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        An1 , v127
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Bn1 
	.byte	W05
	.byte		        Bn1 , v064
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W06
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        Fs1 , v127
	.byte	W05
	.byte		        Fs1 , v064
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		        Bn1 , v064
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W05
	.byte		        Fs2 , v064
	.byte	W06
@ 020   ----------------------------------------
	.byte		        An1 , v127
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Bn1 
	.byte	W05
	.byte		        Bn1 , v064
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W06
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        Fs1 , v127
	.byte	W05
	.byte		        Fs1 , v064
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		        Bn1 , v064
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W05
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        An1 , v127
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Bn1 
	.byte	W05
	.byte		        Bn1 , v064
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W04
@ 021   ----------------------------------------
	.byte	W02
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        Fs1 , v127
	.byte	W05
	.byte		        Fs1 , v064
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		        Bn1 , v064
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W05
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        An1 , v127
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Bn1 
	.byte	W05
	.byte		        Bn1 , v064
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W06
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        Fs1 , v127
	.byte	W05
	.byte		        Fs1 , v064
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		        Bn1 , v064
	.byte	W02
@ 022   ----------------------------------------
	.byte	W04
	.byte		        Fs2 , v127
	.byte	W05
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        An1 , v127
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Bn1 
	.byte	W05
	.byte		        Bn1 , v064
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W06
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        Fs1 , v127
	.byte	W05
	.byte		        Fs1 , v064
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		        Bn1 , v064
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W05
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        An1 , v127
	.byte	W06
	.byte		        As1 
	.byte	W06
@ 023   ----------------------------------------
	.byte		        Bn1 
	.byte	W05
	.byte		        Bn1 , v064
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W06
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        Fs1 , v127
	.byte	W05
	.byte		        Fs1 , v064
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		        Bn1 , v064
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W05
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        An1 , v127
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Bn1 
	.byte	W05
	.byte		        Bn1 , v064
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W06
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        Fs1 , v127
	.byte	W04
@ 024   ----------------------------------------
	.byte	PATT
	 .word	ch34_3_001
@ 025   ----------------------------------------
	.byte	PATT
	 .word	ch34_3_002
@ 026   ----------------------------------------
	.byte	PATT
	 .word	ch34_3_003
@ 027   ----------------------------------------
	.byte	PATT
	 .word	ch34_3_004
@ 028   ----------------------------------------
	.byte	W03
	.byte		N05   , Bn1 , v127
	.byte	W05
	.byte		        Bn1 , v064
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W06
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        Fs1 , v127
	.byte	W05
	.byte		        Fs1 , v064
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		        Bn1 , v064
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W05
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        An1 , v127
	.byte	W06
	.byte		        As1 
	.byte	W30
	.byte	GOTO
	 .word	ch34_3_B1
ch34_3_B2:
@ 029   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

ch34_4:
	.byte		VOL   , 127*ch34_mvl/mxv
	.byte	KEYSH , ch34_key+0
ch34_4_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 47
	.byte		N11   , Bn1 , v127
	.byte	W11
	.byte		        Bn1 , v072
	.byte	W12
	.byte		TIE   , Bn1 , v052
	.byte	W72
	.byte	W01
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W66
	.byte		EOT   
	.byte		N11   , Fs1 , v127
	.byte	W12
	.byte		N05   , Fs1 , v072
	.byte	W06
	.byte		N11   , Bn1 , v127
	.byte	W11
	.byte		        Bn1 , v072
	.byte	W01
@ 003   ----------------------------------------
	.byte	W11
	.byte		TIE   , Bn1 , v052
	.byte	W84
	.byte	W01
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W54
	.byte		EOT   
	.byte		N11   , Fs1 , v127
	.byte	W12
	.byte		N05   , Fs1 , v072
	.byte	W06
	.byte		N11   , Bn1 , v127
	.byte	W11
	.byte		        Bn1 , v072
	.byte	W12
	.byte		VOICE , 68
	.byte		N05   , Fn2 , v127
	.byte	W01
@ 006   ----------------------------------------
	.byte	W04
	.byte		        Fs2 
	.byte	W06
	.byte		MOD   , 42
	.byte		N28   , Gs2 
	.byte	W28
	.byte	W01
	.byte		MOD   , 0
	.byte		N05   , Fs2 
	.byte	W06
	.byte		        Fn2 
	.byte	W05
	.byte		MOD   , 42
	.byte		N28   , Cs2 
	.byte	W28
	.byte	W01
	.byte		MOD   , 0
	.byte		N17   , Cs2 , v064
	.byte	W17
@ 007   ----------------------------------------
	.byte		VOICE , 47
	.byte		N11   , Fs1 , v127
	.byte	W12
	.byte		N05   , Fs1 , v072
	.byte	W06
	.byte		N11   , Bn1 , v127
	.byte	W11
	.byte		        Bn1 , v072
	.byte	W12
	.byte		VOICE , 68
	.byte		N05   , Fn2 , v127
	.byte	W05
	.byte		        Fs2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		N11   , Gs2 
	.byte	W11
	.byte		        Fs2 
	.byte	W12
	.byte		MOD   , 42
	.byte		N32   , Fn2 
	.byte	W09
@ 008   ----------------------------------------
	.byte	W24
	.byte	W01
	.byte		MOD   , 0
	.byte		N17   , Fn2 , v064
	.byte	W17
	.byte		VOICE , 47
	.byte		N11   , Fs1 , v127
	.byte	W12
	.byte		N05   , Fs1 , v072
	.byte	W06
	.byte		N11   , Bn1 , v127
	.byte	W11
	.byte		        Bn1 , v072
	.byte	W12
	.byte		VOICE , 68
	.byte		N05   , Fn2 , v127
	.byte	W05
	.byte		        Fs2 
	.byte	W06
	.byte		MOD   , 42
	.byte		N28   , Gs2 
	.byte	W02
@ 009   ----------------------------------------
	.byte	W24
	.byte	W03
	.byte		MOD   , 0
	.byte		N05   , Fs2 
	.byte	W06
	.byte		        Cs3 
	.byte	W05
	.byte		MOD   , 42
	.byte		N28   , Gs2 
	.byte	W28
	.byte	W01
	.byte		MOD   , 0
	.byte		N17   , Gs2 , v064
	.byte	W17
	.byte		VOICE , 47
	.byte		N11   , Fs1 , v127
	.byte	W12
@ 010   ----------------------------------------
	.byte		N05   , Fs1 , v072
	.byte	W06
	.byte		N11   , Bn1 , v127
	.byte	W11
	.byte		        Bn1 , v072
	.byte	W12
	.byte		VOICE , 68
	.byte		N05   , Cs3 , v127
	.byte	W05
	.byte		        Bn2 
	.byte	W06
	.byte		N11   , An2 
	.byte	W12
	.byte		        Gs2 
	.byte	W11
	.byte		        Fs2 
	.byte	W12
	.byte		MOD   , 42
	.byte		N32   , Fn2 
	.byte	W21
@ 011   ----------------------------------------
	.byte	W13
	.byte		MOD   , 0
	.byte		N17   , Fn2 , v064
	.byte	W17
	.byte		        Fn2 , v048
	.byte	W18
	.byte		VOICE , 66
	.byte		N23   , Dn2 , v096
	.byte	W23
	.byte		N05   , Fn2 
	.byte	W05
	.byte		        Fs2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N11   , Cs2 
	.byte	W02
@ 012   ----------------------------------------
	.byte	W09
	.byte		        Bn1 
	.byte	W12
	.byte		N23   , Cs2 
	.byte	W23
	.byte		N05   , Dn2 
	.byte	W05
	.byte		        Cs2 
	.byte	W06
	.byte		N32   , Gs1 
	.byte	W32
	.byte	W03
	.byte		N23   , An1 
	.byte	W06
@ 013   ----------------------------------------
	.byte	W17
	.byte		N05   , Bn1 
	.byte	W05
	.byte		        Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N11   , Gs1 
	.byte	W11
	.byte		        Fs1 
	.byte	W12
	.byte		N68   , Gs1 
	.byte	W32
	.byte	W01
@ 014   ----------------------------------------
	.byte	W36
	.byte		N23   , An1 
	.byte	W23
	.byte		N05   , Bn1 
	.byte	W05
	.byte		        Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N11   , Gs1 
	.byte	W11
	.byte		        Fs1 
	.byte	W03
@ 015   ----------------------------------------
	.byte	W09
	.byte		N68   , Gs1 
	.byte	W68
	.byte	W01
	.byte		N23   , Gn1 
	.byte	W18
@ 016   ----------------------------------------
	.byte	W05
	.byte		N05   , An1 
	.byte	W05
	.byte		        Gn1 
	.byte	W06
	.byte		N11   , Fs1 
	.byte	W12
	.byte		        En1 
	.byte	W11
	.byte		        Gn1 
	.byte	W12
	.byte		N17   , Fs1 
	.byte	W17
	.byte		VOICE , 68
	.byte		N05   , Ds2 , v127
	.byte	W06
	.byte		        En2 
	.byte	W05
	.byte		        Fs2 
	.byte	W06
	.byte		MOD   , 42
	.byte		N17   , Gn2 
	.byte	W11
@ 017   ----------------------------------------
	.byte	W06
	.byte		MOD   , 0
	.byte		N11   , Fs2 , v112
	.byte	W12
	.byte		N05   , Fs2 , v064
	.byte	W06
	.byte		VOICE , 47
	.byte		N11   , Bn1 , v127
	.byte	W11
	.byte		N05   , Bn1 , v064
	.byte	W06
	.byte		VOICE , 36
	.byte		N05   , Bn1 , v127
	.byte	W06
	.byte		        Cn2 
	.byte	W05
	.byte		MOD   , 42
	.byte		N23   , Ds2 
	.byte	W23
	.byte		MOD   , 0
	.byte		N05   , Ds2 , v064
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Ds2 
	.byte	W03
@ 018   ----------------------------------------
	.byte	W02
	.byte		        En2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N11   , Fs2 
	.byte	W11
	.byte		N05   , Gn2 
	.byte	W06
	.byte		MOD   , 42
	.byte		N17   , Fs2 
	.byte	W17
	.byte		MOD   , 0
	.byte		N05   , Fs2 , v064
	.byte	W06
	.byte		        Bn2 , v127
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Gn2 
	.byte	W05
	.byte		        Fs2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Ds2 
	.byte	W05
	.byte		        En2 
	.byte	W02
@ 019   ----------------------------------------
	.byte	W04
	.byte		N17   , Ds2 
	.byte	W17
	.byte		N05   , Ds2 , v064
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Ds2 
	.byte	W05
	.byte		        En2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Bn1 
	.byte	W05
	.byte		        An1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Gn1 
	.byte	W05
	.byte		MOD   , 42
	.byte		N11   , Fs1 
	.byte	W06
@ 020   ----------------------------------------
	.byte	W06
	.byte		MOD   , 0
	.byte		N05   , Fs1 , v064
	.byte	W06
	.byte		VOICE , 51
	.byte		N11   , Bn1 , v127
	.byte	W11
	.byte		N05   , Bn1 , v072
	.byte	W06
	.byte		VOICE , 2
	.byte		N05   , Fs2 , v112
	.byte	W06
	.byte		        Gn2 
	.byte	W05
	.byte		        Fs2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Ds2 
	.byte	W05
	.byte		        Bn1 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N11   , Gn1 
	.byte	W11
	.byte		        Gn1 , v072
	.byte	W04
@ 021   ----------------------------------------
	.byte	W08
	.byte		N05   , An1 , v112
	.byte	W05
	.byte		        Gn1 
	.byte	W06
	.byte		MOD   , 42
	.byte		N17   , Fs1 
	.byte	W17
	.byte		MOD   , 0
	.byte		N17   , Fs1 , v064
	.byte	W18
	.byte		VOICE , 66
	.byte		N17   , Cn2 , v127
	.byte	W17
	.byte		        Cn2 , v104
	.byte	W17
	.byte		        Cn2 , v080
	.byte	W08
@ 022   ----------------------------------------
	.byte	W09
	.byte		N05   , Cn2 , v064
	.byte	W06
	.byte		        Ds2 , v127
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N17   , Bn1 , v104
	.byte	W17
	.byte		        Bn1 , v080
	.byte	W17
	.byte		N11   , Bn1 , v072
	.byte	W12
	.byte		VOICE , 51
	.byte		N11   , Bn1 , v127
	.byte	W11
	.byte		        Dn1 
	.byte	W12
@ 023   ----------------------------------------
	.byte		VOICE , 66
	.byte		N23   , Dn2 , v096
	.byte	W23
	.byte		N05   , Fn2 
	.byte	W05
	.byte		        Fs2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N11   , Cs2 
	.byte	W11
	.byte		        Bn1 
	.byte	W12
	.byte		N23   , Cs2 
	.byte	W23
	.byte		N05   , Dn2 
	.byte	W04
@ 024   ----------------------------------------
	.byte	W01
	.byte		        Cs2 
	.byte	W06
	.byte		N32   , Gs1 
	.byte	W32
	.byte	W03
	.byte		N23   , An1 
	.byte	W23
	.byte		N05   , Bn1 
	.byte	W05
	.byte		        Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N11   , Gs1 
	.byte	W08
@ 025   ----------------------------------------
	.byte	W03
	.byte		        Fs1 
	.byte	W12
	.byte		N68   , Gs1 
	.byte	W68
	.byte	W01
	.byte		N23   , An1 
	.byte	W12
@ 026   ----------------------------------------
	.byte	W11
	.byte		N05   , Bn1 
	.byte	W05
	.byte		        Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N11   , Gs1 
	.byte	W11
	.byte		        Fs1 
	.byte	W12
	.byte		N68   , Gs1 
	.byte	W36
	.byte	W03
@ 027   ----------------------------------------
	.byte	W30
	.byte		N23   , Gn1 
	.byte	W23
	.byte		N05   , An1 
	.byte	W05
	.byte		        Gn1 
	.byte	W06
	.byte		N11   , Fs1 
	.byte	W12
	.byte		        En1 
	.byte	W11
	.byte		        Gn1 
	.byte	W09
@ 028   ----------------------------------------
	.byte	W03
	.byte		N17   , Fs1 
	.byte	W17
	.byte		VOICE , 68
	.byte		N05   , Ds2 , v127
	.byte	W06
	.byte		        En2 
	.byte	W05
	.byte		        Fs2 
	.byte	W06
	.byte		MOD   , 42
	.byte		N17   , Gn2 
	.byte	W17
	.byte		MOD   , 0
	.byte		N11   , Fs2 , v112
	.byte	W12
	.byte		N05   , Fs2 , v064
	.byte	W30
	.byte	GOTO
	 .word	ch34_4_B1
ch34_4_B2:
@ 029   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

ch34:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	ch34_pri	@ Priority
	.byte	ch34_rev	@ Reverb.

	.word	ch34_grp

	.word	ch34_1
	.word	ch34_2
	.word	ch34_3
	.word	ch34_4

	.end
