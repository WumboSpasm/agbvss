	.include "MPlayDef.s"

	.equ	ch1b_grp, voicegroup000
	.equ	ch1b_pri, 128
	.equ	ch1b_rev, reverb_set+50
	.equ	ch1b_mvl, 127
	.equ	ch1b_key, 0
	.equ	ch1b_tbs, 1
	.equ	ch1b_exg, 0
	.equ	ch1b_cmp, 1

	.section .rodata
	.global	ch1b
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

ch1b_1:
	.byte		VOL   , 127*ch1b_mvl/mxv
	.byte	KEYSH , ch1b_key+0
ch1b_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 100*ch1b_tbs/2
	.byte		VOICE , 16
	.byte		N15   , En1 , v104
	.byte	W15
	.byte		        Bn1 
	.byte	W15
	.byte		N10   , Cs2 
	.byte	W10
	.byte		N15   , En1 
	.byte	W15
	.byte		        Bn1 
	.byte	W15
	.byte		N10   , Cs2 
	.byte	W10
	.byte		N15   , En1 
	.byte	W15
	.byte		        Bn1 
	.byte	W01
@ 001   ----------------------------------------
ch1b_1_001:
	.byte	W14
	.byte		N10   , Cs2 , v104
	.byte	W10
	.byte		N15   , En1 
	.byte	W15
	.byte		        Bn1 
	.byte	W15
	.byte		N10   , Cs2 
	.byte	W10
	.byte		N15   , Fs1 
	.byte	W15
	.byte		        Cs2 
	.byte	W15
	.byte		N10   , En2 
	.byte	W02
	.byte	PEND
@ 002   ----------------------------------------
ch1b_1_002:
	.byte	W08
	.byte		N15   , Fs1 , v104
	.byte	W15
	.byte		        Cs2 
	.byte	W15
	.byte		N10   , En2 
	.byte	W10
	.byte		N15   , Bn1 
	.byte	W15
	.byte		        Ds2 
	.byte	W15
	.byte		N10   , Fs2 
	.byte	W10
	.byte		N15   , Gs2 
	.byte	W08
	.byte	PEND
@ 003   ----------------------------------------
	.byte	W07
	.byte		        Fs2 
	.byte	W15
	.byte		N10   , Ds1 
	.byte	W10
	.byte		N15   , En1 
	.byte	W15
	.byte		        Bn1 
	.byte	W15
	.byte		N10   , Cs2 
	.byte	W10
	.byte		N15   , En1 
	.byte	W15
	.byte		        Bn1 
	.byte	W09
@ 004   ----------------------------------------
	.byte	W06
	.byte		N10   , Cs2 
	.byte	W10
	.byte		N15   , En1 
	.byte	W15
	.byte		        Bn1 
	.byte	W15
	.byte		N10   , Cs2 
	.byte	W10
	.byte		N15   , En1 
	.byte	W15
	.byte		        Bn1 
	.byte	W15
	.byte		N10   , Cs2 
	.byte	W10
@ 005   ----------------------------------------
	.byte		N15   , Fs1 
	.byte	W15
	.byte		        Cs2 
	.byte	W15
	.byte		N10   , En2 
	.byte	W10
	.byte		N15   , Fs1 
	.byte	W15
	.byte		        Cs2 
	.byte	W15
	.byte		N10   , En2 
	.byte	W10
	.byte		N15   , Bn1 
	.byte	W15
	.byte		        Ds2 
	.byte	W01
@ 006   ----------------------------------------
	.byte	W14
	.byte		N10   , Fs2 
	.byte	W10
	.byte		N15   , Gs2 
	.byte	W15
	.byte		        Fs2 
	.byte	W15
	.byte		N10   , Gs1 
	.byte	W10
	.byte		N15   , An1 
	.byte	W15
	.byte		        Cs2 
	.byte	W15
	.byte		N10   , En2 
	.byte	W02
@ 007   ----------------------------------------
	.byte	W08
	.byte		N15   , An1 
	.byte	W15
	.byte		        Cs2 
	.byte	W15
	.byte		N10   , En2 
	.byte	W10
	.byte		N15   , Bn1 
	.byte	W15
	.byte		        Ds2 
	.byte	W15
	.byte		N10   , Fs2 
	.byte	W10
	.byte		N15   , Bn1 
	.byte	W08
@ 008   ----------------------------------------
	.byte	W07
	.byte		        Ds2 
	.byte	W15
	.byte		N10   , Fs2 
	.byte	W10
	.byte		N15   , En1 
	.byte	W15
	.byte		        Bn1 
	.byte	W15
	.byte		N10   , Cs2 
	.byte	W10
	.byte		N15   , En1 
	.byte	W15
	.byte		        Bn1 
	.byte	W09
@ 009   ----------------------------------------
	.byte	W06
	.byte		N10   , Cs2 
	.byte	W10
	.byte		N05   , En2 
	.byte	W05
	.byte		N10   
	.byte	W10
	.byte		        Bn1 
	.byte	W10
	.byte		N05   , Gs1 
	.byte	W05
	.byte		N10   , En1 
	.byte	W10
	.byte		N15   , Bn0 
	.byte	W15
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		N20   , Cn2 , v127
	.byte	W20
@ 010   ----------------------------------------
	.byte		VOICE , 16
	.byte		N15   , En1 , v104
	.byte	W15
	.byte		        Bn1 
	.byte	W15
	.byte		N10   , Cs2 
	.byte	W10
	.byte		N15   , En1 
	.byte	W15
	.byte		        Bn1 
	.byte	W15
	.byte		N10   , Cs2 
	.byte	W10
	.byte		N15   , En1 
	.byte	W15
	.byte		        Bn1 
	.byte	W01
@ 011   ----------------------------------------
	.byte	PATT
	 .word	ch1b_1_001
@ 012   ----------------------------------------
	.byte	PATT
	 .word	ch1b_1_002
@ 013   ----------------------------------------
	.byte	W07
	.byte		N15   , Fs2 , v104
	.byte	W15
	.byte		N10   , Gs1 
	.byte	W10
	.byte		N15   , An1 
	.byte	W15
	.byte		        Cs2 
	.byte	W15
	.byte		N10   , En2 
	.byte	W10
	.byte		N15   , An1 
	.byte	W15
	.byte		        Cs2 
	.byte	W09
@ 014   ----------------------------------------
	.byte	W06
	.byte		N10   , En2 
	.byte	W10
	.byte		N15   , Bn1 
	.byte	W15
	.byte		        Ds2 
	.byte	W15
	.byte		N10   , Fs2 
	.byte	W10
	.byte		N15   , Bn1 
	.byte	W15
	.byte		        Ds2 
	.byte	W15
	.byte		N10   , Fs2 
	.byte	W10
@ 015   ----------------------------------------
	.byte		N15   , En1 
	.byte	W15
	.byte		        Bn1 
	.byte	W15
	.byte		N10   , Cs2 
	.byte	W10
	.byte		N15   , En1 
	.byte	W15
	.byte		        Bn1 
	.byte	W15
	.byte		N10   , Cs2 
	.byte	W10
	.byte		N05   , En2 
	.byte	W05
	.byte		N10   
	.byte	W10
	.byte		        Bn1 
	.byte	W01
@ 016   ----------------------------------------
	.byte	W09
	.byte		N05   , Gs1 
	.byte	W05
	.byte		N10   , En1 
	.byte	W10
	.byte		N15   , Bn0 
	.byte	W15
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		N20   , Cn2 , v127
	.byte	W52
	.byte	GOTO
	 .word	ch1b_1_B1
ch1b_1_B2:
@ 017   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

ch1b_2:
	.byte		VOL   , 127*ch1b_mvl/mxv
	.byte	KEYSH , ch1b_key+0
ch1b_2_B1:
@ 000   ----------------------------------------
ch1b_2_000:
	.byte		VOICE , 24
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 8
	.byte		N05   
	.byte	W05
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		VOICE , 24
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 8
	.byte		N10   
	.byte	W10
	.byte		VOICE , 24
	.byte		N10   
	.byte	W10
	.byte		VOICE , 8
	.byte		N05   
	.byte	W05
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		VOICE , 24
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 8
	.byte		N10   
	.byte	W10
	.byte		VOICE , 24
	.byte		N10   
	.byte	W10
	.byte		VOICE , 8
	.byte		N05   
	.byte	W05
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v064
	.byte	W01
	.byte	PEND
@ 001   ----------------------------------------
ch1b_2_001:
	.byte	W04
	.byte		VOICE , 24
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 8
	.byte		N10   
	.byte	W10
	.byte		VOICE , 24
	.byte		N10   
	.byte	W10
	.byte		VOICE , 8
	.byte		N05   
	.byte	W05
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		VOICE , 24
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 8
	.byte		N10   
	.byte	W10
	.byte		VOICE , 24
	.byte		N10   
	.byte	W10
	.byte		VOICE , 8
	.byte		N05   
	.byte	W05
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		VOICE , 24
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 8
	.byte		N10   
	.byte	W02
	.byte	PEND
@ 002   ----------------------------------------
ch1b_2_002:
	.byte	W08
	.byte		VOICE , 24
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 8
	.byte		N05   
	.byte	W05
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		VOICE , 24
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 8
	.byte		N10   
	.byte	W10
	.byte		VOICE , 24
	.byte		N10   
	.byte	W10
	.byte		VOICE , 8
	.byte		N05   
	.byte	W05
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		VOICE , 24
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 8
	.byte		N10   
	.byte	W10
	.byte		VOICE , 24
	.byte		N10   
	.byte	W08
	.byte	PEND
@ 003   ----------------------------------------
ch1b_2_003:
	.byte	W02
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v127
	.byte	W05
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		VOICE , 24
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 8
	.byte		N10   
	.byte	W10
	.byte		VOICE , 24
	.byte		N10   
	.byte	W10
	.byte		VOICE , 8
	.byte		N05   
	.byte	W05
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		VOICE , 24
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 8
	.byte		N10   
	.byte	W10
	.byte		VOICE , 24
	.byte		N10   
	.byte	W10
	.byte		VOICE , 8
	.byte		N05   
	.byte	W05
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		VOICE , 24
	.byte		N10   , Cn2 , v127
	.byte	W04
	.byte	PEND
@ 004   ----------------------------------------
ch1b_2_004:
	.byte	W06
	.byte		VOICE , 8
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 24
	.byte		N10   
	.byte	W10
	.byte		VOICE , 8
	.byte		N05   
	.byte	W05
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		VOICE , 24
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 8
	.byte		N10   
	.byte	W10
	.byte		VOICE , 24
	.byte		N10   
	.byte	W10
	.byte		VOICE , 8
	.byte		N05   
	.byte	W05
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		VOICE , 24
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 8
	.byte		N10   
	.byte	W10
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	ch1b_2_000
@ 006   ----------------------------------------
	.byte	PATT
	 .word	ch1b_2_001
@ 007   ----------------------------------------
	.byte	PATT
	 .word	ch1b_2_002
@ 008   ----------------------------------------
	.byte	PATT
	 .word	ch1b_2_003
@ 009   ----------------------------------------
	.byte	W06
	.byte		VOICE , 8
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 24
	.byte		N05   
	.byte	W05
	.byte		N10   
	.byte	W10
	.byte		        Cn2 , v064
	.byte	W10
	.byte		N05   , Cn2 , v127
	.byte	W05
	.byte		N10   
	.byte	W10
	.byte		N15   
	.byte	W15
	.byte		VOICE , 18
	.byte		N05   
	.byte	W05
	.byte		VOICE , 17
	.byte		N20   
	.byte	W20
@ 010   ----------------------------------------
	.byte	PATT
	 .word	ch1b_2_000
@ 011   ----------------------------------------
	.byte	PATT
	 .word	ch1b_2_001
@ 012   ----------------------------------------
	.byte	PATT
	 .word	ch1b_2_002
@ 013   ----------------------------------------
	.byte	PATT
	 .word	ch1b_2_003
@ 014   ----------------------------------------
	.byte	PATT
	 .word	ch1b_2_004
@ 015   ----------------------------------------
	.byte		VOICE , 24
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 8
	.byte		N05   
	.byte	W05
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		VOICE , 24
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 8
	.byte		N10   
	.byte	W10
	.byte		VOICE , 24
	.byte		N10   
	.byte	W10
	.byte		VOICE , 8
	.byte		N05   
	.byte	W05
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		VOICE , 24
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 8
	.byte		N10   
	.byte	W10
	.byte		VOICE , 24
	.byte		N05   
	.byte	W05
	.byte		N10   
	.byte	W10
	.byte		        Cn2 , v064
	.byte	W01
@ 016   ----------------------------------------
	.byte	W09
	.byte		N05   , Cn2 , v127
	.byte	W05
	.byte		N10   
	.byte	W10
	.byte		N15   
	.byte	W15
	.byte		VOICE , 18
	.byte		N05   
	.byte	W05
	.byte		VOICE , 17
	.byte		N20   
	.byte	W52
	.byte	GOTO
	 .word	ch1b_2_B1
ch1b_2_B2:
@ 017   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

ch1b_3:
	.byte		VOL   , 127*ch1b_mvl/mxv
	.byte	KEYSH , ch1b_key+0
ch1b_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 21
	.byte		N15   , En3 , v104
	.byte	W15
	.byte		N10   , En2 
	.byte	W10
	.byte		N05   , Gs2 
	.byte	W05
	.byte		        Bn2 
	.byte	W05
	.byte		        En3 
	.byte	W05
	.byte		N15   , Ds3 
	.byte	W15
	.byte		N10   , En2 
	.byte	W10
	.byte		N05   , Gs2 
	.byte	W05
	.byte		        Bn2 
	.byte	W05
	.byte		        Ds3 
	.byte	W05
	.byte		N15   , Cs3 
	.byte	W15
	.byte		N10   , En2 
	.byte	W01
@ 001   ----------------------------------------
	.byte	W09
	.byte		N05   , Gs2 
	.byte	W05
	.byte		        Bn2 
	.byte	W05
	.byte		        Cs3 
	.byte	W05
	.byte		N15   , Ds3 
	.byte	W15
	.byte		N10   , En2 
	.byte	W10
	.byte		N05   , Gs2 
	.byte	W05
	.byte		        Bn2 
	.byte	W05
	.byte		        Ds3 
	.byte	W05
	.byte		N15   , Fs3 
	.byte	W15
	.byte		N10   , Fs2 
	.byte	W10
	.byte		N05   , An2 
	.byte	W05
	.byte		        Cs3 
	.byte	W02
@ 002   ----------------------------------------
	.byte	W03
	.byte		        Fs3 
	.byte	W05
	.byte		N15   , En3 
	.byte	W15
	.byte		N10   , Fs2 
	.byte	W10
	.byte		N05   , An2 
	.byte	W05
	.byte		        Cs3 
	.byte	W05
	.byte		        En3 
	.byte	W05
	.byte		N15   , Ds3 
	.byte	W15
	.byte		N10   , Fs2 
	.byte	W10
	.byte		N05   , An2 , v100
	.byte	W05
	.byte		        Cs3 , v096
	.byte	W05
	.byte		        En3 , v092
	.byte	W05
	.byte		N15   , Ds3 , v088
	.byte	W08
@ 003   ----------------------------------------
	.byte	W07
	.byte		N05   , Cs3 , v084
	.byte	W05
	.byte		N10   , Bn2 , v080
	.byte	W10
	.byte		        An2 , v076
	.byte	W10
	.byte		VOICE , 12
	.byte		N15   , En1 , v127
	.byte	W15
	.byte		VOICE , 13
	.byte		N05   , An1 , v096
	.byte	W05
	.byte		N10   , An1 , v127
	.byte	W10
	.byte		VOICE , 12
	.byte		N05   , En1 
	.byte	W05
	.byte		VOICE , 13
	.byte		N05   , Dn1 , v088
	.byte	W05
	.byte		VOICE , 12
	.byte		N15   , En1 , v127
	.byte	W15
	.byte		VOICE , 13
	.byte		N05   , An1 , v096
	.byte	W05
	.byte		N10   , An1 , v127
	.byte	W04
@ 004   ----------------------------------------
ch1b_3_004:
	.byte	W06
	.byte		VOICE , 12
	.byte		N10   , Dn1 , v127
	.byte	W10
	.byte		N15   , En1 
	.byte	W15
	.byte		VOICE , 13
	.byte		N05   , An1 , v096
	.byte	W05
	.byte		N10   , An1 , v127
	.byte	W10
	.byte		VOICE , 12
	.byte		N05   , En1 
	.byte	W05
	.byte		VOICE , 13
	.byte		N05   , Dn1 , v088
	.byte	W05
	.byte		VOICE , 12
	.byte		N15   , En1 , v127
	.byte	W15
	.byte		VOICE , 13
	.byte		N05   , An1 , v096
	.byte	W05
	.byte		N10   , An1 , v127
	.byte	W10
	.byte		VOICE , 12
	.byte		N10   , Dn1 
	.byte	W10
	.byte	PEND
@ 005   ----------------------------------------
	.byte		N15   , En1 
	.byte	W15
	.byte		VOICE , 13
	.byte		N05   , An1 , v096
	.byte	W05
	.byte		N10   , An1 , v127
	.byte	W10
	.byte		VOICE , 12
	.byte		N05   , En1 
	.byte	W05
	.byte		VOICE , 13
	.byte		N05   , Dn1 , v088
	.byte	W05
	.byte		VOICE , 12
	.byte		N15   , En1 , v127
	.byte	W15
	.byte		VOICE , 13
	.byte		N05   , An1 , v096
	.byte	W05
	.byte		N10   , An1 , v127
	.byte	W10
	.byte		VOICE , 12
	.byte		N10   , Dn1 
	.byte	W10
	.byte		N15   , En1 
	.byte	W15
	.byte		VOICE , 13
	.byte		N05   , An1 , v096
	.byte	W01
@ 006   ----------------------------------------
ch1b_3_006:
	.byte	W04
	.byte		N10   , An1 , v127
	.byte	W10
	.byte		VOICE , 12
	.byte		N05   , En1 
	.byte	W05
	.byte		VOICE , 13
	.byte		N05   , Dn1 , v088
	.byte	W05
	.byte		VOICE , 12
	.byte		N15   , En1 , v127
	.byte	W15
	.byte		VOICE , 13
	.byte		N05   , An1 , v096
	.byte	W05
	.byte		N10   , An1 , v127
	.byte	W10
	.byte		VOICE , 12
	.byte		N10   , Dn1 
	.byte	W10
	.byte		N15   , En1 
	.byte	W15
	.byte		VOICE , 13
	.byte		N05   , An1 , v096
	.byte	W05
	.byte		N10   , An1 , v127
	.byte	W10
	.byte		VOICE , 12
	.byte		N05   , En1 
	.byte	W02
	.byte	PEND
@ 007   ----------------------------------------
ch1b_3_007:
	.byte	W03
	.byte		VOICE , 13
	.byte		N05   , Dn1 , v088
	.byte	W05
	.byte		VOICE , 12
	.byte		N15   , En1 , v127
	.byte	W15
	.byte		VOICE , 13
	.byte		N05   , An1 , v096
	.byte	W05
	.byte		N10   , An1 , v127
	.byte	W10
	.byte		VOICE , 12
	.byte		N10   , Dn1 
	.byte	W10
	.byte		N15   , En1 
	.byte	W15
	.byte		VOICE , 13
	.byte		N05   , An1 , v096
	.byte	W05
	.byte		N10   , An1 , v127
	.byte	W10
	.byte		VOICE , 12
	.byte		N05   , En1 
	.byte	W05
	.byte		VOICE , 13
	.byte		N05   , Dn1 , v088
	.byte	W05
	.byte		VOICE , 12
	.byte		N15   , En1 , v127
	.byte	W08
	.byte	PEND
@ 008   ----------------------------------------
ch1b_3_008:
	.byte	W07
	.byte		VOICE , 13
	.byte		N05   , An1 , v096
	.byte	W05
	.byte		N10   , An1 , v127
	.byte	W10
	.byte		VOICE , 12
	.byte		N10   , Dn1 
	.byte	W10
	.byte		N15   , En1 
	.byte	W15
	.byte		VOICE , 13
	.byte		N05   , An1 , v096
	.byte	W05
	.byte		N10   , An1 , v127
	.byte	W10
	.byte		VOICE , 12
	.byte		N05   , En1 
	.byte	W05
	.byte		VOICE , 13
	.byte		N05   , Dn1 , v088
	.byte	W05
	.byte		VOICE , 12
	.byte		N15   , En1 , v127
	.byte	W15
	.byte		VOICE , 13
	.byte		N05   , An1 , v096
	.byte	W05
	.byte		N10   , An1 , v127
	.byte	W04
	.byte	PEND
@ 009   ----------------------------------------
	.byte	W06
	.byte		VOICE , 12
	.byte		N10   , Dn1 
	.byte	W10
	.byte		VOICE , 8
	.byte		N05   , Cn2 
	.byte	W05
	.byte		N10   
	.byte	W10
	.byte		N10   
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		N10   
	.byte	W10
	.byte		N40   
	.byte	W40
@ 010   ----------------------------------------
	.byte		VOICE , 12
	.byte		N15   , En1 
	.byte	W15
	.byte		VOICE , 13
	.byte		N05   , An1 , v096
	.byte	W05
	.byte		N10   , An1 , v127
	.byte	W10
	.byte		VOICE , 12
	.byte		N05   , En1 
	.byte	W05
	.byte		VOICE , 13
	.byte		N05   , Dn1 , v088
	.byte	W05
	.byte		VOICE , 12
	.byte		N15   , En1 , v127
	.byte	W15
	.byte		VOICE , 13
	.byte		N05   , An1 , v096
	.byte	W05
	.byte		N10   , An1 , v127
	.byte	W10
	.byte		VOICE , 12
	.byte		N10   , Dn1 
	.byte	W10
	.byte		N15   , En1 
	.byte	W15
	.byte		VOICE , 13
	.byte		N05   , An1 , v096
	.byte	W01
@ 011   ----------------------------------------
	.byte	PATT
	 .word	ch1b_3_006
@ 012   ----------------------------------------
	.byte	PATT
	 .word	ch1b_3_007
@ 013   ----------------------------------------
	.byte	PATT
	 .word	ch1b_3_008
@ 014   ----------------------------------------
	.byte	PATT
	 .word	ch1b_3_004
@ 015   ----------------------------------------
	.byte		N15   , En1 , v127
	.byte	W15
	.byte		VOICE , 13
	.byte		N05   , An1 , v096
	.byte	W05
	.byte		N10   , An1 , v127
	.byte	W10
	.byte		VOICE , 12
	.byte		N05   , En1 
	.byte	W05
	.byte		VOICE , 13
	.byte		N05   , Dn1 , v088
	.byte	W05
	.byte		VOICE , 12
	.byte		N15   , En1 , v127
	.byte	W15
	.byte		VOICE , 13
	.byte		N05   , An1 , v096
	.byte	W05
	.byte		N10   , An1 , v127
	.byte	W10
	.byte		VOICE , 12
	.byte		N10   , Dn1 
	.byte	W10
	.byte		VOICE , 21
	.byte		N10   , En2 , v096
	.byte	W10
	.byte		N05   , En2 , v048
	.byte	W05
	.byte		N10   , En2 , v096
	.byte	W01
@ 016   ----------------------------------------
	.byte	W09
	.byte		N05   , An2 , v092
	.byte	W05
	.byte		        Cs3 
	.byte	W05
	.byte		        En3 
	.byte	W05
	.byte		N15   , Ds3 
	.byte	W15
	.byte		N05   , Cs3 
	.byte	W05
	.byte		N10   , Bn2 
	.byte	W10
	.byte		        An2 
	.byte	W42
	.byte	GOTO
	 .word	ch1b_3_B1
ch1b_3_B2:
@ 017   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

ch1b_4:
	.byte		VOL   , 127*ch1b_mvl/mxv
	.byte	KEYSH , ch1b_key+0
ch1b_4_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte	W05
	.byte		        21
	.byte		N10   , En3 , v048
	.byte	W10
	.byte		        Gs2 , v080
	.byte	W10
	.byte		VOICE , 0
	.byte	W05
	.byte		        21
	.byte		N05   , Gs2 , v048
	.byte	W05
	.byte		        Bn2 
	.byte	W05
	.byte		        En3 
	.byte	W05
	.byte		N10   , Ds3 
	.byte	W10
	.byte		        Gs2 , v080
	.byte	W10
	.byte		VOICE , 0
	.byte	W05
	.byte		        21
	.byte		N05   , Gs2 , v048
	.byte	W05
	.byte		        Bn2 
	.byte	W05
	.byte		        Ds3 
	.byte	W05
	.byte		N10   , Cs3 
	.byte	W10
	.byte		        Gs2 , v080
	.byte	W01
@ 001   ----------------------------------------
	.byte	W09
	.byte		VOICE , 0
	.byte	W05
	.byte		        21
	.byte		N05   , Gs2 , v048
	.byte	W05
	.byte		        Bn2 
	.byte	W05
	.byte		        Cs3 
	.byte	W05
	.byte		N10   , Ds3 
	.byte	W10
	.byte		        Gs2 , v080
	.byte	W10
	.byte		VOICE , 0
	.byte	W05
	.byte		        21
	.byte		N05   , Gs2 , v048
	.byte	W05
	.byte		        Bn2 
	.byte	W05
	.byte		        Ds3 
	.byte	W05
	.byte		N10   , Fs3 
	.byte	W10
	.byte		        An2 , v080
	.byte	W10
	.byte		VOICE , 0
	.byte	W05
	.byte		        21
	.byte		N05   , An2 , v048
	.byte	W02
@ 002   ----------------------------------------
	.byte	W03
	.byte		        Cs3 
	.byte	W05
	.byte		        Fs3 
	.byte	W05
	.byte		N10   , En3 
	.byte	W10
	.byte		        An2 , v080
	.byte	W10
	.byte		VOICE , 0
	.byte	W05
	.byte		        21
	.byte		N05   , An2 , v048
	.byte	W05
	.byte		        Cs3 
	.byte	W05
	.byte		        En3 
	.byte	W05
	.byte		N10   , Ds3 
	.byte	W10
	.byte		        Bn2 , v080
	.byte	W10
	.byte		VOICE , 0
	.byte	W05
	.byte		        19
	.byte		N10   , Bn1 , v127
	.byte	W10
	.byte		N15   , Cs2 
	.byte	W08
@ 003   ----------------------------------------
	.byte	W07
	.byte		        Bn1 
	.byte	W15
	.byte		N10   , Gs1 
	.byte	W10
	.byte		N15   , Bn1 
	.byte	W15
	.byte		        Bn1 , v064
	.byte	W15
	.byte		N10   , Cs1 , v127
	.byte	W10
	.byte		N15   , Ds1 
	.byte	W15
	.byte		        Ds1 , v064
	.byte	W09
@ 004   ----------------------------------------
	.byte	W06
	.byte		        Ds1 , v052
	.byte	W15
	.byte		        Ds1 , v048
	.byte	W15
	.byte		N10   , Ds1 , v040
	.byte	W10
	.byte		        En1 , v127
	.byte	W10
	.byte		N15   
	.byte	W15
	.byte		        Gs1 
	.byte	W15
	.byte		N10   , Bn1 
	.byte	W10
@ 005   ----------------------------------------
	.byte		N15   , Cs2 
	.byte	W15
	.byte		        Cs2 , v056
	.byte	W15
	.byte		N10   , Gs1 , v127
	.byte	W10
	.byte		N15   , An1 
	.byte	W15
	.byte		        An1 , v056
	.byte	W15
	.byte		        An1 , v052
	.byte	W15
	.byte		        An1 , v048
	.byte	W11
@ 006   ----------------------------------------
	.byte	W04
	.byte		N10   , An1 , v044
	.byte	W10
	.byte		        Fs1 , v127
	.byte	W10
	.byte		N15   
	.byte	W15
	.byte		        Bn1 
	.byte	W15
	.byte		N10   , Ds2 
	.byte	W10
	.byte		N15   , Fs2 
	.byte	W15
	.byte		        Fs2 , v056
	.byte	W15
	.byte		N10   , Cs2 , v127
	.byte	W02
@ 007   ----------------------------------------
	.byte	W08
	.byte		N15   , Ds2 
	.byte	W15
	.byte		        En2 
	.byte	W15
	.byte		N10   , Fs2 
	.byte	W10
	.byte		N15   , Gs2 
	.byte	W15
	.byte		        Gs2 , v056
	.byte	W15
	.byte		N10   , Ds2 , v127
	.byte	W10
	.byte		N15   
	.byte	W08
@ 008   ----------------------------------------
	.byte	W07
	.byte		        Fs2 
	.byte	W15
	.byte		N10   , Ds2 
	.byte	W10
	.byte		N15   , Cs2 
	.byte	W15
	.byte		        Cs2 , v056
	.byte	W15
	.byte		N10   , Cs2 , v048
	.byte	W10
	.byte		N15   , Bn1 , v127
	.byte	W15
	.byte		        Bn1 , v056
	.byte	W09
@ 009   ----------------------------------------
	.byte	W06
	.byte		N10   , Bn1 , v048
	.byte	W10
	.byte		N15   , Gs1 , v127
	.byte	W15
	.byte		        Gs1 , v056
	.byte	W15
	.byte		N10   , Bn1 , v127
	.byte	W10
	.byte		N15   , Cs2 
	.byte	W15
	.byte		        Bn1 
	.byte	W15
	.byte		N10   , Gs1 
	.byte	W10
@ 010   ----------------------------------------
	.byte		N15   , Bn1 
	.byte	W15
	.byte		        Bn1 , v064
	.byte	W15
	.byte		N10   , Cs1 , v127
	.byte	W10
	.byte		N15   , Ds1 
	.byte	W15
	.byte		        Ds1 , v064
	.byte	W15
	.byte		        Ds1 , v052
	.byte	W15
	.byte		        Ds1 , v048
	.byte	W11
@ 011   ----------------------------------------
	.byte	W04
	.byte		N10   , Ds1 , v040
	.byte	W10
	.byte		        En1 , v127
	.byte	W10
	.byte		N15   
	.byte	W15
	.byte		        Gs1 
	.byte	W15
	.byte		N10   , Bn1 
	.byte	W10
	.byte		N15   , Cs2 
	.byte	W15
	.byte		        Cs2 , v056
	.byte	W15
	.byte		N10   , Gs1 , v127
	.byte	W02
@ 012   ----------------------------------------
	.byte	W08
	.byte		N15   , An1 
	.byte	W15
	.byte		        An1 , v056
	.byte	W15
	.byte		        An1 , v052
	.byte	W15
	.byte		        An1 , v048
	.byte	W15
	.byte		N10   , An1 , v044
	.byte	W10
	.byte		        Fs1 , v127
	.byte	W10
	.byte		N15   
	.byte	W08
@ 013   ----------------------------------------
	.byte	W07
	.byte		        Bn1 
	.byte	W15
	.byte		N10   , Ds2 
	.byte	W10
	.byte		N15   , Fs2 
	.byte	W15
	.byte		        Fs2 , v056
	.byte	W15
	.byte		N10   , Cs2 , v127
	.byte	W10
	.byte		N15   , Ds2 
	.byte	W15
	.byte		        En2 
	.byte	W09
@ 014   ----------------------------------------
	.byte	W06
	.byte		N10   , Fs2 
	.byte	W10
	.byte		N15   , Gs2 
	.byte	W15
	.byte		        Gs2 , v056
	.byte	W15
	.byte		N10   , Ds2 , v127
	.byte	W10
	.byte		N15   
	.byte	W15
	.byte		        Fs2 
	.byte	W15
	.byte		N10   , Ds2 
	.byte	W10
@ 015   ----------------------------------------
	.byte		N15   , Cs2 
	.byte	W15
	.byte		        Cs2 , v056
	.byte	W15
	.byte		N10   , Cs2 , v048
	.byte	W10
	.byte		N15   , Bn1 , v127
	.byte	W15
	.byte		        Bn1 , v056
	.byte	W15
	.byte		N10   , Bn1 , v048
	.byte	W10
	.byte		VOICE , 21
	.byte		N10   , Gs2 , v096
	.byte	W10
	.byte		N05   , Gs2 , v048
	.byte	W05
	.byte		N10   , Gs2 , v096
	.byte	W01
@ 016   ----------------------------------------
	.byte	W14
	.byte		N05   , An2 , v048
	.byte	W05
	.byte		        Cs3 
	.byte	W05
	.byte		N20   , Fs2 , v092
	.byte	W20
	.byte		        Ds2 
	.byte	W52
	.byte	GOTO
	 .word	ch1b_4_B1
ch1b_4_B2:
@ 017   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

ch1b:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	ch1b_pri	@ Priority
	.byte	ch1b_rev	@ Reverb.

	.word	ch1b_grp

	.word	ch1b_1
	.word	ch1b_2
	.word	ch1b_3
	.word	ch1b_4

	.end
