	.include "MPlayDef.s"

	.equ	ch112_grp, voicegroup000
	.equ	ch112_pri, 128
	.equ	ch112_rev, reverb_set+50
	.equ	ch112_mvl, 127
	.equ	ch112_key, 0
	.equ	ch112_tbs, 1
	.equ	ch112_exg, 0
	.equ	ch112_cmp, 1

	.section .rodata
	.global	ch112
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

ch112_1:
	.byte		VOL   , 127*ch112_mvl/mxv
	.byte	KEYSH , ch112_key+0
ch112_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 100*ch112_tbs/2
	.byte		VOICE , 16
	.byte		N15   , En1 , v104
	.byte	W15
	.byte		VOICE , 20
	.byte		N10   , En2 , v108
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 16
	.byte		N15   , Bn1 , v104
	.byte	W15
	.byte		VOICE , 20
	.byte		N10   , En2 , v108
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 16
	.byte		N15   , En1 , v104
	.byte	W15
	.byte		VOICE , 20
	.byte		N10   , En2 , v108
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 16
	.byte		N15   , Bn1 , v104
	.byte	W06
@ 001   ----------------------------------------
ch112_1_001:
	.byte	W09
	.byte		VOICE , 20
	.byte		N10   , En2 , v108
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 16
	.byte		N15   , En1 , v104
	.byte	W15
	.byte		VOICE , 20
	.byte		N10   , En2 , v108
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 16
	.byte		N15   , Bn1 , v104
	.byte	W15
	.byte		VOICE , 20
	.byte		N10   , En2 , v108
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 16
	.byte		N15   , Bn1 , v104
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
ch112_1_002:
	.byte	W03
	.byte		VOICE , 20
	.byte		N10   , Bn1 , v108
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 16
	.byte		N15   , Fs1 , v104
	.byte	W15
	.byte		VOICE , 20
	.byte		N10   , Bn1 , v108
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 16
	.byte		N15   , Bn1 , v104
	.byte	W15
	.byte		VOICE , 20
	.byte		N10   , Bn1 , v108
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 16
	.byte		N15   , Fs1 , v104
	.byte	W15
	.byte		VOICE , 20
	.byte		N10   , Bn1 , v108
	.byte	W03
	.byte	PEND
@ 003   ----------------------------------------
ch112_1_003:
	.byte	W07
	.byte		N05   , Bn1 , v108
	.byte	W05
	.byte		VOICE , 16
	.byte		N15   , Bn1 , v104
	.byte	W15
	.byte		VOICE , 20
	.byte		N10   , Bn1 , v108
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 16
	.byte		N15   , Fs1 , v104
	.byte	W15
	.byte		VOICE , 20
	.byte		N10   , Bn1 , v108
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 16
	.byte		N15   , En1 , v104
	.byte	W15
	.byte		VOICE , 20
	.byte		N10   , En2 , v108
	.byte	W09
	.byte	PEND
@ 004   ----------------------------------------
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte		VOICE , 16
	.byte		N15   , Fn1 , v104
	.byte	W15
	.byte		VOICE , 20
	.byte		N10   , Fs2 , v108
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 16
	.byte		N15   , Fs1 , v104
	.byte	W15
	.byte		        Fs1 , v080
	.byte	W15
	.byte		        Bn1 , v104
	.byte	W15
	.byte		        Bn1 , v080
	.byte	W15
@ 005   ----------------------------------------
ch112_1_005:
	.byte		N15   , En1 , v104
	.byte	W15
	.byte		VOICE , 20
	.byte		N10   , En2 , v108
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 16
	.byte		N15   , Bn1 , v104
	.byte	W15
	.byte		VOICE , 20
	.byte		N10   , En2 , v108
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 16
	.byte		N15   , En1 , v104
	.byte	W15
	.byte		VOICE , 20
	.byte		N10   , En2 , v108
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 16
	.byte		N15   , Bn1 , v104
	.byte	W06
	.byte	PEND
@ 006   ----------------------------------------
	.byte	PATT
	 .word	ch112_1_001
@ 007   ----------------------------------------
	.byte	W03
	.byte		VOICE , 20
	.byte		N10   , Bn1 , v108
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 16
	.byte		N15   , Fs1 , v104
	.byte	W15
	.byte		VOICE , 20
	.byte		N10   , Bn1 , v108
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 16
	.byte		N15   , An1 , v104
	.byte	W15
	.byte		VOICE , 20
	.byte		N10   , An1 , v108
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 16
	.byte		N15   , En1 , v104
	.byte	W15
	.byte		VOICE , 20
	.byte		N10   , An1 , v108
	.byte	W03
@ 008   ----------------------------------------
	.byte	W07
	.byte		N05   
	.byte	W05
	.byte		VOICE , 16
	.byte		N15   , En1 , v104
	.byte	W15
	.byte		VOICE , 20
	.byte		N10   , En2 , v108
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 16
	.byte		N15   , Cs2 , v104
	.byte	W15
	.byte		VOICE , 20
	.byte		N10   , Cs2 , v108
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 16
	.byte		N15   , An1 , v104
	.byte	W15
	.byte		VOICE , 20
	.byte		N10   , An1 , v108
	.byte	W09
@ 009   ----------------------------------------
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte		VOICE , 16
	.byte		N15   , Bn1 , v104
	.byte	W15
	.byte		VOICE , 20
	.byte		N10   , Bn1 , v108
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 16
	.byte		N10   , En1 , v104
	.byte	W10
	.byte		N05   , Bn1 
	.byte	W05
	.byte		N10   , Cs2 
	.byte	W10
	.byte		N05   , Bn1 
	.byte	W05
	.byte		N10   , En1 
	.byte	W10
	.byte		VOICE , 5
	.byte		N15   , Cn2 
	.byte	W15
	.byte		N05   , Cn2 , v127
	.byte	W05
@ 010   ----------------------------------------
ch112_1_010:
	.byte		VOICE , 16
	.byte		N15   , En1 , v104
	.byte	W15
	.byte		VOICE , 20
	.byte		N10   , En2 , v108
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 16
	.byte		N15   , Bn1 , v104
	.byte	W15
	.byte		VOICE , 20
	.byte		N10   , En2 , v108
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 16
	.byte		N15   , En1 , v104
	.byte	W15
	.byte		VOICE , 20
	.byte		N10   , En2 , v108
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 16
	.byte		N15   , Bn1 , v104
	.byte	W06
	.byte	PEND
@ 011   ----------------------------------------
ch112_1_011:
	.byte	W09
	.byte		VOICE , 20
	.byte		N10   , En2 , v108
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 16
	.byte		N15   , An1 , v104
	.byte	W15
	.byte		VOICE , 20
	.byte		N10   , An1 , v108
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 16
	.byte		N15   , En2 , v104
	.byte	W15
	.byte		VOICE , 20
	.byte		N10   , An1 , v108
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 16
	.byte		N15   , An1 , v104
	.byte	W12
	.byte	PEND
@ 012   ----------------------------------------
ch112_1_012:
	.byte	W03
	.byte		VOICE , 20
	.byte		N10   , An1 , v108
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 16
	.byte		N15   , En2 , v104
	.byte	W15
	.byte		VOICE , 20
	.byte		N10   , An1 , v108
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 16
	.byte		N15   , Gs1 , v104
	.byte	W15
	.byte		VOICE , 20
	.byte		N10   , Gs2 , v108
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 16
	.byte		N15   , Ds1 , v104
	.byte	W15
	.byte		VOICE , 20
	.byte		N10   , Gs2 , v108
	.byte	W03
	.byte	PEND
@ 013   ----------------------------------------
ch112_1_013:
	.byte	W07
	.byte		N05   , Gs2 , v108
	.byte	W05
	.byte		VOICE , 16
	.byte		N15   , Cs2 , v104
	.byte	W15
	.byte		VOICE , 20
	.byte		N10   , En2 , v108
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 16
	.byte		N15   , Gs1 , v104
	.byte	W15
	.byte		VOICE , 20
	.byte		N10   , En2 , v108
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 16
	.byte		N15   , Fs1 , v104
	.byte	W15
	.byte		VOICE , 20
	.byte		N10   , An1 , v108
	.byte	W09
	.byte	PEND
@ 014   ----------------------------------------
ch112_1_014:
	.byte	W01
	.byte		N05   , An1 , v108
	.byte	W05
	.byte		VOICE , 16
	.byte		N15   , Cs1 , v104
	.byte	W15
	.byte		VOICE , 20
	.byte		N10   , An1 , v108
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 16
	.byte		N15   , Bn1 , v104
	.byte	W15
	.byte		VOICE , 20
	.byte		N10   , Bn1 , v108
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 16
	.byte		N15   , Fs1 , v104
	.byte	W15
	.byte		VOICE , 20
	.byte		N10   , Bn1 , v108
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte	PEND
@ 015   ----------------------------------------
	.byte	PATT
	 .word	ch112_1_010
@ 016   ----------------------------------------
ch112_1_016:
	.byte	W09
	.byte		VOICE , 20
	.byte		N10   , En2 , v108
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 16
	.byte		N15   , An1 , v104
	.byte	W15
	.byte		VOICE , 20
	.byte		N10   , An1 , v108
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 16
	.byte		N15   , En2 , v104
	.byte	W15
	.byte		VOICE , 20
	.byte		N10   , An1 , v108
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 16
	.byte		N15   , Gs1 , v104
	.byte	W12
	.byte	PEND
@ 017   ----------------------------------------
ch112_1_017:
	.byte	W03
	.byte		VOICE , 20
	.byte		N10   , Gs1 , v108
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 16
	.byte		N15   , Ds2 , v104
	.byte	W15
	.byte		VOICE , 20
	.byte		N10   , Gs1 , v108
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 16
	.byte		N15   , En1 , v104
	.byte	W15
	.byte		VOICE , 20
	.byte		N10   , En2 , v108
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 16
	.byte		N15   , Fn1 , v104
	.byte	W15
	.byte		VOICE , 20
	.byte		N10   , Cs2 , v108
	.byte	W03
	.byte	PEND
@ 018   ----------------------------------------
ch112_1_018:
	.byte	W07
	.byte		N05   , Cs2 , v108
	.byte	W05
	.byte		VOICE , 16
	.byte		N15   , Fs1 , v104
	.byte	W15
	.byte		VOICE , 20
	.byte		N10   , An1 , v108
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 16
	.byte		N15   , Fs1 , v104
	.byte	W15
	.byte		VOICE , 20
	.byte		N10   , An1 , v108
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 16
	.byte		N15   , Bn1 , v104
	.byte	W15
	.byte		VOICE , 20
	.byte		N10   , Bn1 , v108
	.byte	W09
	.byte	PEND
@ 019   ----------------------------------------
ch112_1_019:
	.byte	W01
	.byte		N05   , Bn1 , v108
	.byte	W05
	.byte		VOICE , 16
	.byte		N15   , Bn1 , v104
	.byte	W15
	.byte		VOICE , 20
	.byte		N10   , Bn1 , v108
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 16
	.byte		N15   , En1 , v104
	.byte	W15
	.byte		VOICE , 20
	.byte		N10   , En2 , v108
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 16
	.byte		N15   , Bn1 , v104
	.byte	W15
	.byte		VOICE , 20
	.byte		N10   , En2 , v108
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte	PEND
@ 020   ----------------------------------------
	.byte	PATT
	 .word	ch112_1_010
@ 021   ----------------------------------------
	.byte	PATT
	 .word	ch112_1_001
@ 022   ----------------------------------------
	.byte	PATT
	 .word	ch112_1_002
@ 023   ----------------------------------------
	.byte	PATT
	 .word	ch112_1_003
@ 024   ----------------------------------------
	.byte	W01
	.byte		N05   , En2 , v108
	.byte	W05
	.byte		VOICE , 16
	.byte		N15   , Fn1 , v104
	.byte	W15
	.byte		VOICE , 20
	.byte		N10   , Fs2 , v108
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 16
	.byte		N15   , Fs1 , v104
	.byte	W15
	.byte		        Fs1 , v072
	.byte	W15
	.byte		        Bn1 , v104
	.byte	W15
	.byte		        Bn1 , v072
	.byte	W15
@ 025   ----------------------------------------
	.byte	PATT
	 .word	ch112_1_005
@ 026   ----------------------------------------
	.byte	PATT
	 .word	ch112_1_001
@ 027   ----------------------------------------
	.byte	W03
	.byte		VOICE , 20
	.byte		N10   , Bn1 , v108
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 16
	.byte		N15   , Fs1 , v104
	.byte	W15
	.byte		VOICE , 20
	.byte		N10   , Bn1 , v108
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 16
	.byte		N15   , An1 , v104
	.byte	W15
	.byte		        An1 , v072
	.byte	W15
	.byte		        An1 , v104
	.byte	W15
	.byte		        An1 , v072
	.byte	W03
@ 028   ----------------------------------------
	.byte	W12
	.byte		        En1 , v104
	.byte	W15
	.byte		        En1 , v072
	.byte	W15
	.byte		        Cs2 , v104
	.byte	W15
	.byte		        Cs2 , v072
	.byte	W15
	.byte		        An1 , v104
	.byte	W15
	.byte		VOICE , 20
	.byte		N10   , An1 , v076
	.byte	W09
@ 029   ----------------------------------------
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte		VOICE , 16
	.byte		N15   , Bn1 , v104
	.byte	W15
	.byte		VOICE , 20
	.byte		N10   , Bn1 , v076
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 16
	.byte		N10   , En1 , v104
	.byte	W10
	.byte		N05   , Bn1 
	.byte	W05
	.byte		N10   , Cs2 
	.byte	W10
	.byte		N05   , Bn1 
	.byte	W05
	.byte		N15   , En1 
	.byte	W15
	.byte		        En1 , v080
	.byte	W15
@ 030   ----------------------------------------
	.byte	PATT
	 .word	ch112_1_005
@ 031   ----------------------------------------
	.byte	PATT
	 .word	ch112_1_011
@ 032   ----------------------------------------
	.byte	PATT
	 .word	ch112_1_012
@ 033   ----------------------------------------
	.byte	PATT
	 .word	ch112_1_013
@ 034   ----------------------------------------
	.byte	PATT
	 .word	ch112_1_014
@ 035   ----------------------------------------
	.byte	PATT
	 .word	ch112_1_010
@ 036   ----------------------------------------
	.byte	PATT
	 .word	ch112_1_016
@ 037   ----------------------------------------
	.byte	PATT
	 .word	ch112_1_017
@ 038   ----------------------------------------
	.byte	PATT
	 .word	ch112_1_018
@ 039   ----------------------------------------
	.byte	PATT
	 .word	ch112_1_019
	.byte	GOTO
	 .word	ch112_1_B1
ch112_1_B2:
@ 040   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

ch112_2:
	.byte		VOL   , 127*ch112_mvl/mxv
	.byte	KEYSH , ch112_key+0
ch112_2_B1:
@ 000   ----------------------------------------
ch112_2_000:
	.byte		VOICE , 9
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 8
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 8
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 8
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W06
	.byte	PEND
@ 001   ----------------------------------------
	.byte	W04
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 8
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 8
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 8
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		N05   , Cn2 , v072
	.byte	W02
@ 002   ----------------------------------------
	.byte	W03
	.byte		VOICE , 8
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 8
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 8
	.byte		N10   , Cn2 , v127
	.byte	W03
@ 003   ----------------------------------------
	.byte	W07
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 8
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 8
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 8
	.byte		N10   , Cn2 , v127
	.byte	W09
@ 004   ----------------------------------------
	.byte	W01
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 8
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		N15   , Cn2 , v127
	.byte	W15
@ 005   ----------------------------------------
	.byte	PATT
	 .word	ch112_2_000
@ 006   ----------------------------------------
	.byte	W04
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 8
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 8
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 8
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W02
@ 007   ----------------------------------------
	.byte	W03
	.byte		VOICE , 8
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 8
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 8
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 8
	.byte		N10   , Cn2 , v127
	.byte	W03
@ 008   ----------------------------------------
	.byte	W07
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 8
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W09
@ 009   ----------------------------------------
	.byte	W01
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		N15   , Cn2 , v127
	.byte	W15
	.byte		N10   
	.byte	W10
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 0
	.byte	W05
@ 010   ----------------------------------------
	.byte		        8
	.byte		N10   
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 24
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 24
	.byte		N10   , Cn2 , v127
	.byte	W06
@ 011   ----------------------------------------
ch112_2_011:
	.byte	W04
	.byte		VOICE , 5
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 24
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 5
	.byte		N05   , Cn2 , v072
	.byte	W02
	.byte	PEND
@ 012   ----------------------------------------
ch112_2_012:
	.byte	W03
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		N05   , Cn2 , v104
	.byte	W05
	.byte		VOICE , 24
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 5
	.byte		N10   
	.byte	W10
	.byte		N05   , Cn2 , v127
	.byte	W05
	.byte		VOICE , 9
	.byte		N10   
	.byte	W10
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 24
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v127
	.byte	W03
	.byte	PEND
@ 013   ----------------------------------------
ch112_2_013:
	.byte	W07
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 24
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 9
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v127
	.byte	W09
	.byte	PEND
@ 014   ----------------------------------------
ch112_2_014:
	.byte	W01
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 24
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 5
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 24
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 5
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte	PEND
@ 015   ----------------------------------------
ch112_2_015:
	.byte		VOICE , 9
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 24
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 24
	.byte		N05   
	.byte	W05
	.byte		VOICE , 5
	.byte		N10   
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 24
	.byte		N10   , Cn2 , v127
	.byte	W06
	.byte	PEND
@ 016   ----------------------------------------
	.byte	W04
	.byte		VOICE , 5
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 24
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 24
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 9
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 24
	.byte		N05   
	.byte	W02
@ 017   ----------------------------------------
	.byte	W03
	.byte		VOICE , 5
	.byte		N10   
	.byte	W10
	.byte		N05   , Cn2 , v104
	.byte	W05
	.byte		VOICE , 8
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 5
	.byte		N05   
	.byte	W05
	.byte		VOICE , 8
	.byte		N05   
	.byte	W05
	.byte		VOICE , 5
	.byte		N05   , Cn2 , v104
	.byte	W05
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 24
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 24
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v127
	.byte	W03
@ 018   ----------------------------------------
	.byte	W07
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 24
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 24
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 24
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v127
	.byte	W09
@ 019   ----------------------------------------
	.byte	W01
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 24
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 24
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		N05   , Cn2 , v104
	.byte	W05
	.byte		VOICE , 8
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 5
	.byte		N05   , Cn2 , v080
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 24
	.byte		N05   , Cn2 , v104
	.byte	W05
@ 020   ----------------------------------------
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 24
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 24
	.byte		N10   , Cn2 , v127
	.byte	W06
@ 021   ----------------------------------------
ch112_2_021:
	.byte	W04
	.byte		VOICE , 5
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 24
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 5
	.byte		N05   , Cn2 , v072
	.byte	W02
	.byte	PEND
@ 022   ----------------------------------------
	.byte	W03
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		N05   , Cn2 , v104
	.byte	W05
	.byte		VOICE , 24
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v104
	.byte	W10
	.byte		N05   , Cn2 , v127
	.byte	W05
	.byte		VOICE , 24
	.byte		N10   
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 24
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v127
	.byte	W03
@ 023   ----------------------------------------
	.byte	W07
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 24
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 5
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 24
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v127
	.byte	W09
@ 024   ----------------------------------------
	.byte	W01
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 24
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 5
	.byte		N05   , Cn2 , v080
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 24
	.byte		N05   , Cn2 , v096
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 24
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 0
	.byte	W05
@ 025   ----------------------------------------
	.byte		        9
	.byte		N10   
	.byte	W10
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 24
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 24
	.byte		N10   , Cn2 , v127
	.byte	W06
@ 026   ----------------------------------------
	.byte	PATT
	 .word	ch112_2_021
@ 027   ----------------------------------------
	.byte	W03
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		N05   , Cn2 , v104
	.byte	W05
	.byte		VOICE , 24
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 5
	.byte		N05   , Cn2 , v104
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 24
	.byte		N05   , Cn2 , v104
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 8
	.byte		N10   , Cn2 , v127
	.byte	W03
@ 028   ----------------------------------------
	.byte	W07
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 24
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 24
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 8
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 24
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W09
@ 029   ----------------------------------------
	.byte	W01
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 24
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 24
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		N15   , Cn2 , v127
	.byte	W15
	.byte		VOICE , 8
	.byte		N10   
	.byte	W10
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 24
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 5
	.byte		N15   , Cn2 , v104
	.byte	W15
	.byte		N05   , Cn2 , v127
	.byte	W05
@ 030   ----------------------------------------
	.byte		VOICE , 9
	.byte		N10   
	.byte	W10
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 24
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 24
	.byte		N10   , Cn2 , v127
	.byte	W06
@ 031   ----------------------------------------
	.byte	PATT
	 .word	ch112_2_011
@ 032   ----------------------------------------
	.byte	PATT
	 .word	ch112_2_012
@ 033   ----------------------------------------
	.byte	PATT
	 .word	ch112_2_013
@ 034   ----------------------------------------
	.byte	PATT
	 .word	ch112_2_014
@ 035   ----------------------------------------
	.byte	PATT
	 .word	ch112_2_015
@ 036   ----------------------------------------
	.byte	W04
	.byte		VOICE , 5
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 24
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 24
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 9
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 24
	.byte		N05   , Cn2 , v072
	.byte	W02
@ 037   ----------------------------------------
	.byte	W03
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		N15   , Cn2 , v104
	.byte	W15
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		        Cn2 , v104
	.byte	W10
	.byte		VOICE , 9
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 24
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 5
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W03
@ 038   ----------------------------------------
	.byte	W07
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 24
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 9
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v127
	.byte	W09
@ 039   ----------------------------------------
	.byte	W01
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 24
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		        Cn2 , v127
	.byte	W05
	.byte		VOICE , 5
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		        Cn2 , v127
	.byte	W05
	.byte		VOICE , 24
	.byte		N10   
	.byte	W10
	.byte		VOICE , 9
	.byte		N05   , Cn2 , v104
	.byte	W05
	.byte		VOICE , 8
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 24
	.byte		N05   , Cn2 , v104
	.byte	W05
	.byte		N15   , Cn2 , v127
	.byte	W15
	.byte		VOICE , 8
	.byte		N10   
	.byte	W10
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte	GOTO
	 .word	ch112_2_B1
ch112_2_B2:
@ 040   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

ch112_3:
	.byte		VOL   , 127*ch112_mvl/mxv
	.byte	KEYSH , ch112_key+0
ch112_3_B1:
@ 000   ----------------------------------------
ch112_3_000:
	.byte		VOICE , 25
	.byte		N10   , En2 , v127
	.byte	W10
	.byte		VOICE , 26
	.byte		N05   , Cn2 
	.byte	W05
	.byte		VOICE , 25
	.byte		N10   , Bn1 
	.byte	W10
	.byte		VOICE , 26
	.byte		N05   , Cn2 
	.byte	W05
	.byte		VOICE , 27
	.byte		N24   , En2 
	.byte	W24
	.byte	W01
	.byte		VOICE , 26
	.byte		N05   , Ds2 
	.byte	W05
	.byte		VOICE , 27
	.byte		N10   , En2 
	.byte	W10
	.byte		VOICE , 26
	.byte		N05   , Gn2 
	.byte	W05
	.byte		N10   , En2 
	.byte	W10
	.byte		VOICE , 25
	.byte		N30   
	.byte	W11
	.byte	PEND
@ 001   ----------------------------------------
ch112_3_001:
	.byte	W19
	.byte		VOICE , 26
	.byte		N05   , Gn2 , v127
	.byte	W05
	.byte		VOICE , 27
	.byte		N15   , An2 
	.byte	W15
	.byte		VOICE , 26
	.byte		N15   , Gn2 
	.byte	W15
	.byte		VOICE , 27
	.byte		N10   , En2 
	.byte	W10
	.byte		VOICE , 26
	.byte		N05   , Dn2 
	.byte	W05
	.byte		VOICE , 25
	.byte		N10   , En2 
	.byte	W10
	.byte		N05   , Bn1 
	.byte	W05
	.byte		N10   , Fs2 
	.byte	W10
	.byte		VOICE , 27
	.byte		N15   , Bn1 
	.byte	W02
	.byte	PEND
@ 002   ----------------------------------------
	.byte	W13
	.byte		VOICE , 25
	.byte		N30   
	.byte	W30
	.byte		N05   , As1 
	.byte	W05
	.byte		N10   , Bn1 
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 26
	.byte		N10   , Fs1 
	.byte	W10
	.byte		N05   , Gn1 
	.byte	W05
	.byte		VOICE , 27
	.byte		N15   , Dn2 
	.byte	W15
	.byte		VOICE , 26
	.byte		N10   , Cn2 
	.byte	W03
@ 003   ----------------------------------------
	.byte	W07
	.byte		VOICE , 25
	.byte		N05   , Fn2 
	.byte	W05
	.byte		VOICE , 26
	.byte		N10   , Dn2 
	.byte	W10
	.byte		VOICE , 25
	.byte		N05   , Gs2 
	.byte	W05
	.byte		VOICE , 26
	.byte		N10   , Dn2 
	.byte	W10
	.byte		VOICE , 27
	.byte		N15   , Bn1 
	.byte	W15
	.byte		VOICE , 26
	.byte		N05   , An1 
	.byte	W05
	.byte		VOICE , 25
	.byte		N10   , Bn1 
	.byte	W10
	.byte		N05   , An1 
	.byte	W05
	.byte		N10   , Gs1 
	.byte	W10
	.byte		VOICE , 27
	.byte		N10   , Cn2 
	.byte	W10
	.byte		VOICE , 26
	.byte		N10   
	.byte	W04
@ 004   ----------------------------------------
	.byte	W06
	.byte		VOICE , 25
	.byte		N10   , As1 
	.byte	W10
	.byte		VOICE , 27
	.byte		N10   , Dn2 
	.byte	W10
	.byte		VOICE , 26
	.byte		N10   
	.byte	W10
	.byte		N15   
	.byte	W15
	.byte		VOICE , 27
	.byte		N15   , Bn1 
	.byte	W15
	.byte		VOICE , 26
	.byte		N24   
	.byte	W24
	.byte	W01
	.byte		VOICE , 25
	.byte		N05   , Ds2 
	.byte	W05
@ 005   ----------------------------------------
	.byte		N10   , En2 
	.byte	W10
	.byte		VOICE , 26
	.byte		N05   , Cn2 
	.byte	W05
	.byte		VOICE , 25
	.byte		N10   , Bn1 
	.byte	W10
	.byte		VOICE , 26
	.byte		N05   , Cn2 
	.byte	W05
	.byte		VOICE , 27
	.byte		N24   , En2 
	.byte	W24
	.byte	W01
	.byte		VOICE , 26
	.byte		N05   , Ds2 
	.byte	W05
	.byte		VOICE , 27
	.byte		N10   , En2 
	.byte	W10
	.byte		VOICE , 26
	.byte		N05   , Gn2 
	.byte	W05
	.byte		N10   , En2 
	.byte	W10
	.byte		VOICE , 25
	.byte		N30   
	.byte	W11
@ 006   ----------------------------------------
	.byte	PATT
	 .word	ch112_3_001
@ 007   ----------------------------------------
	.byte	W13
	.byte		VOICE , 25
	.byte		N30   , Bn1 , v127
	.byte	W30
	.byte		VOICE , 26
	.byte		N05   , En2 
	.byte	W05
	.byte		VOICE , 27
	.byte		N10   , Fn2 
	.byte	W10
	.byte		VOICE , 25
	.byte		N05   , An2 
	.byte	W05
	.byte		VOICE , 26
	.byte		N10   , En2 
	.byte	W10
	.byte		VOICE , 25
	.byte		N05   , An2 
	.byte	W05
	.byte		VOICE , 26
	.byte		N10   , Dn2 
	.byte	W10
	.byte		VOICE , 25
	.byte		N05   , Gs2 
	.byte	W05
	.byte		VOICE , 26
	.byte		N15   , Fn2 
	.byte	W03
@ 008   ----------------------------------------
	.byte	W12
	.byte		VOICE , 27
	.byte		N15   , En2 
	.byte	W15
	.byte		VOICE , 26
	.byte		N15   , Dn2 
	.byte	W15
	.byte		        Cs2 
	.byte	W15
	.byte		VOICE , 25
	.byte		N15   
	.byte	W15
	.byte		        En2 
	.byte	W15
	.byte		        An1 
	.byte	W09
@ 009   ----------------------------------------
	.byte	W06
	.byte		N10   , Bn1 
	.byte	W10
	.byte		N05   , Cs2 
	.byte	W05
	.byte		VOICE , 27
	.byte		N15   , En2 
	.byte	W15
	.byte		VOICE , 26
	.byte		N15   , Cn2 
	.byte	W15
	.byte		        Cn2 , v080
	.byte	W15
	.byte		        Cn2 , v064
	.byte	W15
	.byte		        Cn2 , v044
	.byte	W15
@ 010   ----------------------------------------
	.byte		VOICE , 6
	.byte		N15   , Cn2 , v096
	.byte	W15
	.byte		VOICE , 27
	.byte		N10   , En2 , v127
	.byte	W10
	.byte		VOICE , 26
	.byte		N15   , Dn2 
	.byte	W15
	.byte		VOICE , 25
	.byte		N05   , Cs2 
	.byte	W05
	.byte		VOICE , 26
	.byte		N15   , Cn2 
	.byte	W15
	.byte		VOICE , 25
	.byte		N10   , Bn1 
	.byte	W10
	.byte		VOICE , 26
	.byte		N15   
	.byte	W15
	.byte		VOICE , 25
	.byte		N05   , As1 
	.byte	W05
	.byte		VOICE , 26
	.byte		N15   , An1 
	.byte	W06
@ 011   ----------------------------------------
	.byte	W09
	.byte		        Gs1 
	.byte	W15
	.byte		VOICE , 27
	.byte		N24   , Gn1 
	.byte	W24
	.byte	W01
	.byte		VOICE , 25
	.byte		TIE   , An1 
	.byte	W44
	.byte	W03
@ 012   ----------------------------------------
	.byte	W56
	.byte	W02
	.byte		EOT   
	.byte		N10   , Gs1 
	.byte	W10
	.byte		VOICE , 26
	.byte		N10   
	.byte	W10
	.byte		VOICE , 27
	.byte		N10   , Bn1 
	.byte	W10
	.byte		VOICE , 26
	.byte		N10   , Cn2 
	.byte	W08
@ 013   ----------------------------------------
	.byte	W02
	.byte		        Bn1 
	.byte	W10
	.byte		VOICE , 25
	.byte		N15   , Cs2 
	.byte	W15
	.byte		N10   , Gs1 
	.byte	W10
	.byte		N32   , En1 
	.byte	W32
	.byte	W03
	.byte		VOICE , 24
	.byte		N10   , Cn2 
	.byte	W10
	.byte		VOICE , 25
	.byte		N10   , An1 
	.byte	W10
	.byte		VOICE , 26
	.byte		N10   , Cn2 
	.byte	W04
@ 014   ----------------------------------------
	.byte	W06
	.byte		VOICE , 27
	.byte		N10   , En2 
	.byte	W10
	.byte		VOICE , 26
	.byte		N10   , Dn2 
	.byte	W10
	.byte		        Cn2 
	.byte	W10
	.byte		VOICE , 27
	.byte		N15   , Bn1 
	.byte	W15
	.byte		VOICE , 26
	.byte		N10   , An1 
	.byte	W10
	.byte		N20   , Gn1 
	.byte	W20
	.byte		N15   , Fn1 
	.byte	W15
@ 015   ----------------------------------------
	.byte		VOICE , 25
	.byte		N15   , Gs1 
	.byte	W15
	.byte		VOICE , 26
	.byte		N10   , En2 
	.byte	W10
	.byte		N15   , Dn2 
	.byte	W15
	.byte		VOICE , 25
	.byte		N05   , Cs2 
	.byte	W05
	.byte		VOICE , 26
	.byte		N15   , Cn2 
	.byte	W15
	.byte		VOICE , 25
	.byte		N10   , Bn1 
	.byte	W10
	.byte		VOICE , 26
	.byte		N15   
	.byte	W15
	.byte		VOICE , 25
	.byte		N05   , As1 
	.byte	W05
	.byte		VOICE , 26
	.byte		N15   , An1 
	.byte	W06
@ 016   ----------------------------------------
ch112_3_016:
	.byte	W09
	.byte		N15   , Gs1 , v127
	.byte	W15
	.byte		VOICE , 27
	.byte		N24   , Gn1 
	.byte	W24
	.byte	W01
	.byte		VOICE , 25
	.byte		N32   , An1 
	.byte	W32
	.byte	W03
	.byte		VOICE , 27
	.byte		N24   , Gs1 
	.byte	W12
	.byte	PEND
@ 017   ----------------------------------------
ch112_3_017:
	.byte	W13
	.byte		VOICE , 25
	.byte		N20   , Gs1 , v127
	.byte	W20
	.byte		VOICE , 26
	.byte		N15   , Bn1 
	.byte	W15
	.byte		N30   , Cn2 
	.byte	W30
	.byte		VOICE , 27
	.byte		N30   , Cs2 
	.byte	W18
	.byte	PEND
@ 018   ----------------------------------------
ch112_3_018:
	.byte	W12
	.byte		VOICE , 26
	.byte		N24   , Dn2 , v127
	.byte	W24
	.byte	W01
	.byte		N20   
	.byte	W20
	.byte		N10   , Cs2 
	.byte	W10
	.byte		N05   , Dn2 
	.byte	W05
	.byte		VOICE , 27
	.byte		N10   , En2 
	.byte	W10
	.byte		VOICE , 26
	.byte		N05   , Gn2 
	.byte	W05
	.byte		N15   , En2 
	.byte	W09
	.byte	PEND
@ 019   ----------------------------------------
ch112_3_019:
	.byte	W06
	.byte		N10   , En2 , v127
	.byte	W10
	.byte		N05   , Ds2 
	.byte	W05
	.byte		N10   , Dn2 
	.byte	W10
	.byte		VOICE , 27
	.byte		N64   , Cn2 
	.byte	W64
	.byte	W01
	.byte	PEND
@ 020   ----------------------------------------
	.byte		VOICE , 21
	.byte		N15   , Bn2 , v080
	.byte	W15
	.byte		N10   , Bn2 , v052
	.byte	W10
	.byte		N05   , Cs3 , v080
	.byte	W05
	.byte		N15   , Bn2 
	.byte	W15
	.byte		N10   , Bn2 , v052
	.byte	W10
	.byte		N05   , Cs3 , v080
	.byte	W05
	.byte		N10   , Bn2 
	.byte	W10
	.byte		N05   , Gs2 
	.byte	W05
	.byte		N10   , Bn2 
	.byte	W10
	.byte		N05   , Cs3 
	.byte	W05
	.byte		N15   , Bn2 
	.byte	W06
@ 021   ----------------------------------------
	.byte	W09
	.byte		        Bn2 , v052
	.byte	W15
	.byte		        Bn2 , v080
	.byte	W15
	.byte		N10   , Bn2 , v052
	.byte	W10
	.byte		N05   , Cs3 , v080
	.byte	W05
	.byte		N15   , Bn2 
	.byte	W15
	.byte		N10   , Bn2 , v052
	.byte	W10
	.byte		N05   , Cs3 , v080
	.byte	W05
	.byte		N10   , Bn2 
	.byte	W10
	.byte		N05   , Fs2 
	.byte	W02
@ 022   ----------------------------------------
	.byte	W03
	.byte		N10   , Bn2 
	.byte	W10
	.byte		N05   , Cs3 
	.byte	W05
	.byte		N15   , Bn2 
	.byte	W15
	.byte		        Bn2 , v052
	.byte	W15
	.byte		        Bn2 , v080
	.byte	W15
	.byte		N10   , Bn2 , v052
	.byte	W10
	.byte		N05   , Cs3 , v080
	.byte	W05
	.byte		N15   , Bn2 
	.byte	W15
	.byte		N10   , Bn2 , v052
	.byte	W03
@ 023   ----------------------------------------
	.byte	W07
	.byte		N05   , Cs3 , v080
	.byte	W05
	.byte		N10   , Bn2 
	.byte	W10
	.byte		N05   , Fs2 
	.byte	W05
	.byte		N10   , Bn2 
	.byte	W10
	.byte		N05   , Cs3 
	.byte	W05
	.byte		N15   , Bn2 
	.byte	W15
	.byte		        Bn2 , v052
	.byte	W15
	.byte		        Bn2 , v080
	.byte	W15
	.byte		N10   , Bn2 , v052
	.byte	W09
@ 024   ----------------------------------------
	.byte	W01
	.byte		N05   , Bn2 , v080
	.byte	W05
	.byte		N15   , Cs3 
	.byte	W15
	.byte		N10   , Cs3 , v052
	.byte	W10
	.byte		N05   , Cs3 , v080
	.byte	W05
	.byte		N10   , Ds3 
	.byte	W10
	.byte		N05   , Dn3 
	.byte	W05
	.byte		N10   , Cs3 
	.byte	W10
	.byte		N05   , Fs2 
	.byte	W05
	.byte		N10   , Bn2 
	.byte	W10
	.byte		N05   , As2 
	.byte	W05
	.byte		N10   , Bn2 
	.byte	W10
	.byte		N05   , Cs3 
	.byte	W05
@ 025   ----------------------------------------
	.byte	PATT
	 .word	ch112_3_000
@ 026   ----------------------------------------
	.byte	W19
	.byte		VOICE , 26
	.byte		N05   , Gn2 , v127
	.byte	W05
	.byte		VOICE , 27
	.byte		N10   , An2 
	.byte	W10
	.byte		VOICE , 0
	.byte	W05
	.byte		        26
	.byte		N10   , Gn2 
	.byte	W10
	.byte		VOICE , 0
	.byte	W05
	.byte		        27
	.byte		N10   , En2 
	.byte	W10
	.byte		VOICE , 26
	.byte		N05   , Dn2 
	.byte	W05
	.byte		VOICE , 25
	.byte		N10   , En2 
	.byte	W10
	.byte		N05   , Bn1 
	.byte	W05
	.byte		N10   , Fs2 
	.byte	W10
	.byte		VOICE , 27
	.byte		N15   , Bn1 
	.byte	W02
@ 027   ----------------------------------------
	.byte	W13
	.byte		VOICE , 25
	.byte		N30   
	.byte	W30
	.byte		VOICE , 26
	.byte		N05   , En2 
	.byte	W05
	.byte		VOICE , 2
	.byte		N10   , Cs2 , v072
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		N10   , Bn1 
	.byte	W10
	.byte		N05   , Cs2 
	.byte	W05
	.byte		N10   , An1 
	.byte	W10
	.byte		N05   , Bn1 
	.byte	W05
	.byte		N15   , Cs2 
	.byte	W03
@ 028   ----------------------------------------
	.byte	W12
	.byte		        Bn1 
	.byte	W15
	.byte		        An1 
	.byte	W15
	.byte		        Gs1 
	.byte	W15
	.byte		        Fn1 
	.byte	W15
	.byte		N10   , An1 
	.byte	W10
	.byte		VOICE , 0
	.byte		MOD   , 42
	.byte	W14
@ 029   ----------------------------------------
	.byte	W06
	.byte		VOICE , 2
	.byte		MOD   , 0
	.byte		N15   , Gs1 
	.byte	W15
	.byte		        Fs1 
	.byte	W15
	.byte		        En1 
	.byte	W15
	.byte		VOICE , 7
	.byte		N15   , Cs1 
	.byte	W15
	.byte		        En1 
	.byte	W15
	.byte		        En1 , v048
	.byte	W15
@ 030   ----------------------------------------
	.byte		VOICE , 6
	.byte		N20   , Cn2 , v104
	.byte	W20
	.byte		VOICE , 2
	.byte		N05   , Gs1 
	.byte	W05
	.byte		        Bn1 
	.byte	W05
	.byte		MOD   , 42
	.byte		N20   , En2 
	.byte	W20
	.byte		MOD   , 0
	.byte		N05   , Gs1 
	.byte	W05
	.byte		        Bn1 
	.byte	W05
	.byte		MOD   , 42
	.byte		N20   , Ds2 
	.byte	W20
	.byte		MOD   , 0
	.byte		N05   , Gs1 
	.byte	W05
	.byte		        Bn1 
	.byte	W05
	.byte		N10   , Cs2 
	.byte	W06
@ 031   ----------------------------------------
	.byte	W04
	.byte		N15   , Bn1 
	.byte	W15
	.byte		        Cs2 
	.byte	W15
	.byte		N10   , An1 
	.byte	W10
	.byte		        Gs1 
	.byte	W10
	.byte		MOD   , 42
	.byte		TIE   , An1 
	.byte	W42
@ 032   ----------------------------------------
	.byte	W56
	.byte	W02
	.byte		EOT   
	.byte		MOD   , 0
	.byte		N05   , Ds2 
	.byte	W05
	.byte		MOD   , 42
	.byte		N10   , Cn2 
	.byte	W10
	.byte		MOD   , 0
	.byte		N05   , Gs1 
	.byte	W05
	.byte		N10   , Gs2 
	.byte	W10
	.byte		        Fs2 
	.byte	W08
@ 033   ----------------------------------------
	.byte	W02
	.byte		        Ds2 
	.byte	W10
	.byte		        En2 
	.byte	W10
	.byte		        Cs2 
	.byte	W10
	.byte		        Gs1 
	.byte	W10
	.byte		MOD   , 42
	.byte		N40   , En1 
	.byte	W40
	.byte		MOD   , 0
	.byte		N10   , Gs1 
	.byte	W10
	.byte		        An1 
	.byte	W04
@ 034   ----------------------------------------
	.byte	W06
	.byte		        As1 
	.byte	W10
	.byte		        Cs2 
	.byte	W10
	.byte		        En2 
	.byte	W10
	.byte		        Ds2 
	.byte	W10
	.byte		        Fs2 
	.byte	W10
	.byte		        Gs2 
	.byte	W10
	.byte		        An2 
	.byte	W10
	.byte		        Cs3 
	.byte	W10
	.byte		        Bn2 
	.byte	W10
@ 035   ----------------------------------------
	.byte		VOICE , 6
	.byte		N15   , Cn2 , v096
	.byte	W15
	.byte		VOICE , 26
	.byte		N10   , En2 , v127
	.byte	W10
	.byte		N15   , Dn2 
	.byte	W15
	.byte		VOICE , 25
	.byte		N05   , Cs2 
	.byte	W05
	.byte		VOICE , 26
	.byte		N15   , Cn2 
	.byte	W15
	.byte		VOICE , 25
	.byte		N10   , Bn1 
	.byte	W10
	.byte		VOICE , 26
	.byte		N15   
	.byte	W15
	.byte		VOICE , 25
	.byte		N05   , As1 
	.byte	W05
	.byte		VOICE , 26
	.byte		N15   , An1 
	.byte	W06
@ 036   ----------------------------------------
	.byte	PATT
	 .word	ch112_3_016
@ 037   ----------------------------------------
	.byte	PATT
	 .word	ch112_3_017
@ 038   ----------------------------------------
	.byte	PATT
	 .word	ch112_3_018
@ 039   ----------------------------------------
	.byte	PATT
	 .word	ch112_3_019
	.byte	GOTO
	 .word	ch112_3_B1
ch112_3_B2:
@ 040   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

ch112_4:
	.byte		VOL   , 127*ch112_mvl/mxv
	.byte	KEYSH , ch112_key+0
ch112_4_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 11
	.byte		N15   , Cn2 , v100
	.byte	W15
	.byte		VOICE , 10
	.byte		N10   , Cn2 , v092
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 11
	.byte		N15   , Cn2 , v100
	.byte	W15
	.byte		VOICE , 10
	.byte		N10   , Cn2 , v092
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 11
	.byte		N15   , Cn2 , v100
	.byte	W15
	.byte		VOICE , 10
	.byte		N10   , Cn2 , v092
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 11
	.byte		N15   , Cn2 , v100
	.byte	W06
@ 001   ----------------------------------------
ch112_4_001:
	.byte	W09
	.byte		VOICE , 10
	.byte		N10   , Cn2 , v092
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 11
	.byte		N15   , Cn2 , v100
	.byte	W15
	.byte		VOICE , 10
	.byte		N10   , Cn2 , v092
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 11
	.byte		N15   , Cn2 , v100
	.byte	W15
	.byte		VOICE , 10
	.byte		N10   , Cn2 , v092
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 11
	.byte		N15   , Cn2 , v100
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
ch112_4_002:
	.byte	W03
	.byte		VOICE , 10
	.byte		N10   , Cn2 , v092
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 11
	.byte		N15   , Cn2 , v100
	.byte	W15
	.byte		VOICE , 10
	.byte		N10   , Cn2 , v092
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 11
	.byte		N15   , Cn2 , v100
	.byte	W15
	.byte		VOICE , 10
	.byte		N10   , Cn2 , v092
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 11
	.byte		N15   , Cn2 , v100
	.byte	W15
	.byte		VOICE , 10
	.byte		N10   , Cn2 , v092
	.byte	W03
	.byte	PEND
@ 003   ----------------------------------------
ch112_4_003:
	.byte	W07
	.byte		N05   , Cn2 , v092
	.byte	W05
	.byte		VOICE , 11
	.byte		N15   , Cn2 , v100
	.byte	W15
	.byte		VOICE , 10
	.byte		N10   , Cn2 , v092
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 11
	.byte		N15   , Cn2 , v100
	.byte	W15
	.byte		VOICE , 10
	.byte		N10   , Cn2 , v092
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 11
	.byte		N15   , Cn2 , v100
	.byte	W15
	.byte		VOICE , 10
	.byte		N10   , Cn2 , v092
	.byte	W09
	.byte	PEND
@ 004   ----------------------------------------
ch112_4_004:
	.byte	W01
	.byte		N05   , Cn2 , v092
	.byte	W05
	.byte		VOICE , 11
	.byte		N15   , Cn2 , v100
	.byte	W15
	.byte		VOICE , 10
	.byte		N10   , Cn2 , v092
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 11
	.byte		N15   , Cn2 , v100
	.byte	W15
	.byte		VOICE , 10
	.byte		N10   , Cn2 , v092
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 11
	.byte		N30   , Cn2 , v100
	.byte	W30
	.byte	PEND
@ 005   ----------------------------------------
	.byte		N15   
	.byte	W15
	.byte		VOICE , 10
	.byte		N10   , Cn2 , v092
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 11
	.byte		N15   , Cn2 , v100
	.byte	W15
	.byte		VOICE , 10
	.byte		N10   , Cn2 , v092
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 11
	.byte		N15   , Cn2 , v100
	.byte	W15
	.byte		VOICE , 10
	.byte		N10   , Cn2 , v092
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 11
	.byte		N15   , Cn2 , v100
	.byte	W06
@ 006   ----------------------------------------
	.byte	PATT
	 .word	ch112_4_001
@ 007   ----------------------------------------
	.byte	PATT
	 .word	ch112_4_002
@ 008   ----------------------------------------
	.byte	PATT
	 .word	ch112_4_003
@ 009   ----------------------------------------
	.byte	PATT
	 .word	ch112_4_004
@ 010   ----------------------------------------
ch112_4_010:
	.byte		VOICE , 23
	.byte		N10   , En2 , v096
	.byte	W10
	.byte		N05   , En2 , v064
	.byte	W05
	.byte		VOICE , 22
	.byte		N10   , En2 , v100
	.byte	W10
	.byte		VOICE , 23
	.byte		N05   , En2 , v088
	.byte	W05
	.byte		VOICE , 22
	.byte		N10   , En2 , v100
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 23
	.byte		N10   , En2 , v096
	.byte	W10
	.byte		N05   , Ds2 , v088
	.byte	W05
	.byte		VOICE , 22
	.byte		N10   , En2 , v100
	.byte	W10
	.byte		VOICE , 23
	.byte		N05   , En2 , v088
	.byte	W05
	.byte		VOICE , 22
	.byte		N10   , Ds2 , v100
	.byte	W10
	.byte		N05   , En2 
	.byte	W05
	.byte		VOICE , 23
	.byte		N10   , En2 , v096
	.byte	W06
	.byte	PEND
@ 011   ----------------------------------------
ch112_4_011:
	.byte	W04
	.byte		N05   , En2 , v064
	.byte	W05
	.byte		VOICE , 22
	.byte		N10   , En2 , v100
	.byte	W10
	.byte		VOICE , 23
	.byte		N05   , En2 , v064
	.byte	W05
	.byte		N10   , An2 , v096
	.byte	W10
	.byte		N05   , An2 , v064
	.byte	W05
	.byte		VOICE , 22
	.byte		N10   , An2 , v100
	.byte	W10
	.byte		VOICE , 23
	.byte		N05   , An2 , v088
	.byte	W05
	.byte		VOICE , 22
	.byte		N10   , An2 , v100
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 23
	.byte		N10   , An2 , v064
	.byte	W10
	.byte		N05   , Gs2 , v088
	.byte	W05
	.byte		VOICE , 22
	.byte		N10   , An2 , v100
	.byte	W10
	.byte		N05   
	.byte	W02
	.byte	PEND
@ 012   ----------------------------------------
ch112_4_012:
	.byte	W03
	.byte		N10   , Gs2 , v100
	.byte	W10
	.byte		N05   , An2 
	.byte	W05
	.byte		VOICE , 23
	.byte		N10   , An2 , v096
	.byte	W10
	.byte		N05   , An2 , v064
	.byte	W05
	.byte		VOICE , 22
	.byte		N10   , An2 , v100
	.byte	W10
	.byte		VOICE , 23
	.byte		N05   , An2 , v064
	.byte	W05
	.byte		N10   , Gs2 , v096
	.byte	W10
	.byte		N05   , Gs2 , v064
	.byte	W05
	.byte		VOICE , 22
	.byte		N10   , Gs2 , v100
	.byte	W10
	.byte		VOICE , 23
	.byte		N05   , Gs2 , v088
	.byte	W05
	.byte		VOICE , 22
	.byte		N10   , Gs2 , v100
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 23
	.byte		N10   , Gs2 , v096
	.byte	W03
	.byte	PEND
@ 013   ----------------------------------------
ch112_4_013:
	.byte	W07
	.byte		N05   , Gs2 , v088
	.byte	W05
	.byte		VOICE , 22
	.byte		N10   , En2 , v100
	.byte	W10
	.byte		VOICE , 23
	.byte		N05   , En2 , v088
	.byte	W05
	.byte		VOICE , 22
	.byte		N10   , Ds2 , v100
	.byte	W10
	.byte		N05   , En2 
	.byte	W05
	.byte		VOICE , 23
	.byte		N10   , En2 , v096
	.byte	W10
	.byte		N05   , En2 , v064
	.byte	W05
	.byte		VOICE , 22
	.byte		N10   , En2 , v100
	.byte	W10
	.byte		VOICE , 23
	.byte		N05   , En2 , v064
	.byte	W05
	.byte		N10   , An2 , v096
	.byte	W10
	.byte		N05   , An2 , v064
	.byte	W05
	.byte		VOICE , 22
	.byte		N10   , An2 , v100
	.byte	W09
	.byte	PEND
@ 014   ----------------------------------------
ch112_4_014:
	.byte	W01
	.byte		VOICE , 23
	.byte		N05   , An2 , v088
	.byte	W05
	.byte		VOICE , 22
	.byte		N10   , An2 , v100
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 23
	.byte		N10   , An2 , v064
	.byte	W10
	.byte		N05   , Gs2 , v088
	.byte	W05
	.byte		VOICE , 22
	.byte		N10   , An2 , v100
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		N10   , Gs2 
	.byte	W10
	.byte		N05   , Bn2 
	.byte	W05
	.byte		VOICE , 23
	.byte		N10   , Bn2 , v096
	.byte	W10
	.byte		N05   , Bn2 , v064
	.byte	W05
	.byte		VOICE , 22
	.byte		N10   , Bn2 , v100
	.byte	W10
	.byte		VOICE , 23
	.byte		N05   , Bn2 , v064
	.byte	W05
	.byte	PEND
@ 015   ----------------------------------------
ch112_4_015:
	.byte		N10   , En2 , v096
	.byte	W10
	.byte		N05   , En2 , v064
	.byte	W05
	.byte		VOICE , 22
	.byte		N10   , En2 , v100
	.byte	W10
	.byte		VOICE , 23
	.byte		N05   , En2 , v088
	.byte	W05
	.byte		VOICE , 22
	.byte		N10   , En2 , v100
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 23
	.byte		N10   , En2 , v096
	.byte	W10
	.byte		N05   , Ds2 , v088
	.byte	W05
	.byte		VOICE , 22
	.byte		N10   , En2 , v100
	.byte	W10
	.byte		VOICE , 23
	.byte		N05   , En2 , v088
	.byte	W05
	.byte		VOICE , 22
	.byte		N10   , Ds2 , v100
	.byte	W10
	.byte		N05   , En2 
	.byte	W05
	.byte		VOICE , 23
	.byte		N10   , En2 , v096
	.byte	W06
	.byte	PEND
@ 016   ----------------------------------------
ch112_4_016:
	.byte	W04
	.byte		N05   , En2 , v064
	.byte	W05
	.byte		VOICE , 22
	.byte		N10   , En2 , v100
	.byte	W10
	.byte		VOICE , 23
	.byte		N05   , En2 , v064
	.byte	W05
	.byte		N10   , An2 , v096
	.byte	W10
	.byte		N05   , An2 , v064
	.byte	W05
	.byte		VOICE , 22
	.byte		N10   , An2 , v100
	.byte	W10
	.byte		VOICE , 23
	.byte		N05   , An2 , v088
	.byte	W05
	.byte		VOICE , 22
	.byte		N10   , An2 , v100
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 23
	.byte		N10   , An2 , v064
	.byte	W10
	.byte		N05   , Gs2 , v088
	.byte	W05
	.byte		VOICE , 22
	.byte		N10   , Gs2 , v100
	.byte	W10
	.byte		VOICE , 23
	.byte		N05   , Gs2 , v088
	.byte	W02
	.byte	PEND
@ 017   ----------------------------------------
ch112_4_017:
	.byte	W03
	.byte		VOICE , 22
	.byte		N10   , Gs2 , v100
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 23
	.byte		N10   , Gs2 , v096
	.byte	W10
	.byte		N05   , Gs2 , v064
	.byte	W05
	.byte		VOICE , 22
	.byte		N10   , Gs2 , v100
	.byte	W10
	.byte		VOICE , 23
	.byte		N05   , Gs2 , v064
	.byte	W05
	.byte		N10   , En2 , v096
	.byte	W10
	.byte		N05   , En2 , v064
	.byte	W05
	.byte		VOICE , 22
	.byte		N10   , En2 , v100
	.byte	W10
	.byte		VOICE , 23
	.byte		N05   , En2 , v088
	.byte	W05
	.byte		N10   , Fn2 , v096
	.byte	W10
	.byte		N05   , Fn2 , v064
	.byte	W05
	.byte		VOICE , 22
	.byte		N10   , Fn2 , v100
	.byte	W03
	.byte	PEND
@ 018   ----------------------------------------
ch112_4_018:
	.byte	W07
	.byte		VOICE , 23
	.byte		N05   , Fn2 , v088
	.byte	W05
	.byte		VOICE , 22
	.byte		N10   , Fs2 , v100
	.byte	W10
	.byte		VOICE , 23
	.byte		N05   , Fs2 , v088
	.byte	W05
	.byte		VOICE , 22
	.byte		N10   , Fn2 , v100
	.byte	W10
	.byte		N05   , Fs2 
	.byte	W05
	.byte		VOICE , 23
	.byte		N10   , Fs2 , v096
	.byte	W10
	.byte		N05   , Fs2 , v064
	.byte	W05
	.byte		VOICE , 22
	.byte		N10   , Fs2 , v100
	.byte	W10
	.byte		VOICE , 23
	.byte		N05   , Fs2 , v064
	.byte	W05
	.byte		VOICE , 22
	.byte		N10   , Bn1 , v096
	.byte	W10
	.byte		VOICE , 23
	.byte		N05   , Bn1 , v064
	.byte	W05
	.byte		VOICE , 22
	.byte		N10   , Bn1 , v100
	.byte	W09
	.byte	PEND
@ 019   ----------------------------------------
	.byte	W01
	.byte		VOICE , 23
	.byte		N05   , Bn1 , v088
	.byte	W05
	.byte		VOICE , 22
	.byte		N10   , Bn1 , v100
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 23
	.byte		N10   , Bn1 , v064
	.byte	W10
	.byte		N05   , Bn1 , v088
	.byte	W05
	.byte		VOICE , 22
	.byte		N10   , En2 , v100
	.byte	W10
	.byte		VOICE , 23
	.byte		N05   , En2 , v088
	.byte	W05
	.byte		VOICE , 22
	.byte		N10   , Ds2 , v100
	.byte	W10
	.byte		N05   , En2 
	.byte	W05
	.byte		VOICE , 23
	.byte		N10   , En2 , v096
	.byte	W10
	.byte		N05   , En2 , v064
	.byte	W05
	.byte		VOICE , 22
	.byte		N10   , En2 , v100
	.byte	W10
	.byte		VOICE , 23
	.byte		N05   , En2 , v064
	.byte	W05
@ 020   ----------------------------------------
	.byte		VOICE , 21
	.byte		N15   , Gs2 , v080
	.byte	W15
	.byte		N10   , Gs2 , v052
	.byte	W10
	.byte		N05   , An2 , v080
	.byte	W05
	.byte		N15   , Gs2 
	.byte	W15
	.byte		N10   , Gs2 , v052
	.byte	W10
	.byte		N05   , An2 , v080
	.byte	W05
	.byte		N10   , Gs2 
	.byte	W10
	.byte		N05   , En2 
	.byte	W05
	.byte		N10   , Gs2 
	.byte	W10
	.byte		N05   , An2 
	.byte	W05
	.byte		N15   , Gs2 
	.byte	W06
@ 021   ----------------------------------------
	.byte	W09
	.byte		        Gs2 , v052
	.byte	W15
	.byte		        Gs2 , v080
	.byte	W15
	.byte		N10   , Gs2 , v052
	.byte	W10
	.byte		N05   , An2 , v080
	.byte	W05
	.byte		N15   , Gs2 
	.byte	W15
	.byte		N10   , Gs2 , v052
	.byte	W10
	.byte		N05   , An2 , v080
	.byte	W05
	.byte		N10   , Fs2 
	.byte	W10
	.byte		N05   , Ds2 
	.byte	W02
@ 022   ----------------------------------------
	.byte	W03
	.byte		N10   , Fs2 
	.byte	W10
	.byte		N05   , Gs2 
	.byte	W05
	.byte		N15   , Fs2 
	.byte	W15
	.byte		        Fs2 , v052
	.byte	W15
	.byte		        Fs2 , v080
	.byte	W15
	.byte		N10   , Fs2 , v052
	.byte	W10
	.byte		N05   , Gs2 , v080
	.byte	W05
	.byte		N15   , Fs2 
	.byte	W15
	.byte		N10   , Fs2 , v052
	.byte	W03
@ 023   ----------------------------------------
	.byte	W07
	.byte		N05   , Gs2 , v080
	.byte	W05
	.byte		N10   , Fs2 
	.byte	W10
	.byte		N05   , Ds2 
	.byte	W05
	.byte		N10   , Fs2 
	.byte	W10
	.byte		N05   , Gs2 
	.byte	W05
	.byte		N15   , Fs2 
	.byte	W15
	.byte		        Fs2 , v052
	.byte	W15
	.byte		        Gs2 , v080
	.byte	W15
	.byte		N10   , Gs2 , v052
	.byte	W09
@ 024   ----------------------------------------
	.byte	W01
	.byte		N05   , Gs2 , v080
	.byte	W05
	.byte		N15   
	.byte	W15
	.byte		N10   , Gs2 , v052
	.byte	W10
	.byte		N05   , Gs2 , v080
	.byte	W05
	.byte		N24   , As2 
	.byte	W24
	.byte	W01
	.byte		N05   , Cs2 
	.byte	W05
	.byte		N24   , Fs2 
	.byte	W24
	.byte	W01
	.byte		N05   , Ds2 
	.byte	W05
@ 025   ----------------------------------------
	.byte		VOICE , 6
	.byte		N15   , Cn2 , v108
	.byte	W15
	.byte		VOICE , 25
	.byte		N10   , En2 , v048
	.byte	W10
	.byte		VOICE , 26
	.byte		N05   , Cn2 
	.byte	W05
	.byte		VOICE , 25
	.byte		N10   , Bn1 
	.byte	W10
	.byte		VOICE , 26
	.byte		N05   , Cn2 
	.byte	W05
	.byte		VOICE , 27
	.byte		N24   , En2 
	.byte	W24
	.byte	W01
	.byte		VOICE , 26
	.byte		N05   , Ds2 
	.byte	W05
	.byte		VOICE , 27
	.byte		N10   , En2 
	.byte	W10
	.byte		VOICE , 26
	.byte		N05   , Gn2 
	.byte	W05
	.byte		N10   , En2 
	.byte	W06
@ 026   ----------------------------------------
	.byte	W04
	.byte		VOICE , 25
	.byte		N30   
	.byte	W30
	.byte		VOICE , 26
	.byte		N05   , Gn2 
	.byte	W05
	.byte		VOICE , 27
	.byte		N10   , An2 
	.byte	W10
	.byte		VOICE , 0
	.byte	W05
	.byte		        26
	.byte		N10   , Gn2 
	.byte	W10
	.byte		VOICE , 0
	.byte	W05
	.byte		        27
	.byte		N10   , En2 
	.byte	W10
	.byte		VOICE , 26
	.byte		N05   , Dn2 
	.byte	W05
	.byte		VOICE , 25
	.byte		N10   , En2 
	.byte	W10
	.byte		N05   , Bn1 
	.byte	W02
@ 027   ----------------------------------------
	.byte	W03
	.byte		N10   , Fs2 
	.byte	W10
	.byte		VOICE , 27
	.byte		N15   , Bn1 
	.byte	W15
	.byte		VOICE , 25
	.byte		N20   
	.byte	W20
	.byte		VOICE , 27
	.byte		N10   , Fn2 , v127
	.byte	W10
	.byte		VOICE , 25
	.byte		N05   , An2 
	.byte	W05
	.byte		VOICE , 26
	.byte		N10   , En2 
	.byte	W10
	.byte		VOICE , 25
	.byte		N05   , An2 
	.byte	W05
	.byte		VOICE , 26
	.byte		N10   , Dn2 
	.byte	W10
	.byte		VOICE , 25
	.byte		N05   , Gs2 
	.byte	W05
	.byte		VOICE , 26
	.byte		N15   , Fn2 
	.byte	W03
@ 028   ----------------------------------------
	.byte	W12
	.byte		VOICE , 27
	.byte		N15   , En2 
	.byte	W15
	.byte		VOICE , 26
	.byte		N15   , Dn2 
	.byte	W15
	.byte		        Cs2 
	.byte	W15
	.byte		VOICE , 25
	.byte		N15   
	.byte	W15
	.byte		        En2 
	.byte	W15
	.byte		        An1 
	.byte	W09
@ 029   ----------------------------------------
	.byte	W06
	.byte		N10   , Bn1 
	.byte	W10
	.byte		N05   , Cs2 
	.byte	W05
	.byte		VOICE , 27
	.byte		N15   , En2 
	.byte	W15
	.byte		VOICE , 26
	.byte		N15   , Cn2 
	.byte	W15
	.byte		VOICE , 7
	.byte		N15   , Gn1 , v072
	.byte	W15
	.byte		        Gs1 
	.byte	W15
	.byte		        Gs1 , v048
	.byte	W15
@ 030   ----------------------------------------
	.byte	PATT
	 .word	ch112_4_010
@ 031   ----------------------------------------
	.byte	PATT
	 .word	ch112_4_011
@ 032   ----------------------------------------
	.byte	PATT
	 .word	ch112_4_012
@ 033   ----------------------------------------
	.byte	PATT
	 .word	ch112_4_013
@ 034   ----------------------------------------
	.byte	PATT
	 .word	ch112_4_014
@ 035   ----------------------------------------
	.byte	PATT
	 .word	ch112_4_015
@ 036   ----------------------------------------
	.byte	PATT
	 .word	ch112_4_016
@ 037   ----------------------------------------
	.byte	PATT
	 .word	ch112_4_017
@ 038   ----------------------------------------
	.byte	PATT
	 .word	ch112_4_018
@ 039   ----------------------------------------
	.byte	W01
	.byte		VOICE , 23
	.byte		N05   , Bn1 , v088
	.byte	W05
	.byte		VOICE , 22
	.byte		N10   , Bn1 , v100
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 23
	.byte		N10   , Bn1 , v064
	.byte	W10
	.byte		N05   , Bn1 , v088
	.byte	W05
	.byte		VOICE , 6
	.byte		N60   , Cn2 , v096
	.byte	W60
	.byte	GOTO
	 .word	ch112_4_B1
ch112_4_B2:
@ 040   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

ch112:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	ch112_pri	@ Priority
	.byte	ch112_rev	@ Reverb.

	.word	ch112_grp

	.word	ch112_1
	.word	ch112_2
	.word	ch112_3
	.word	ch112_4

	.end
