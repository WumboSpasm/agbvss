	.include "MPlayDef.s"

	.equ	ch3b2_grp, voicegroup000
	.equ	ch3b2_pri, 128
	.equ	ch3b2_rev, reverb_set+50
	.equ	ch3b2_mvl, 127
	.equ	ch3b2_key, 0
	.equ	ch3b2_tbs, 1
	.equ	ch3b2_exg, 0
	.equ	ch3b2_cmp, 1

	.section .rodata
	.global	ch3b2
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

ch3b2_1:
	.byte		VOL   , 127*ch3b2_mvl/mxv
	.byte	KEYSH , ch3b2_key+0
ch3b2_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 100*ch3b2_tbs/2
	.byte		VOICE , 47
	.byte		N10   , Gs1 , v127
	.byte	W10
	.byte		N48   , Gs1 , v104
	.byte	W48
	.byte	W02
	.byte		VOICE , 51
	.byte		N05   , En2 , v064
	.byte	W05
	.byte		        En2 , v072
	.byte	W05
	.byte		N10   , En2 , v127
	.byte	W10
	.byte		VOICE , 36
	.byte		N05   , Gs1 
	.byte	W05
	.byte		        Ds1 
	.byte	W05
	.byte		N10   , Ds1 , v064
	.byte	W06
@ 001   ----------------------------------------
	.byte	W04
	.byte		N05   , An1 , v127
	.byte	W05
	.byte		        Ds1 
	.byte	W05
	.byte		N10   , Ds1 , v064
	.byte	W10
	.byte		N05   , En1 , v127
	.byte	W05
	.byte		        Fs1 
	.byte	W05
	.byte		        En1 
	.byte	W05
	.byte		        Cs1 
	.byte	W05
	.byte		        Cn1 
	.byte	W05
	.byte		VOICE , 65
	.byte		N05   , An2 
	.byte	W05
	.byte		VOICE , 36
	.byte		N05   , Cn1 , v064
	.byte	W05
	.byte		VOICE , 65
	.byte		N05   , Gs2 , v127
	.byte	W05
	.byte		N10   , En2 
	.byte	W10
	.byte		N15   , Ds2 
	.byte	W15
	.byte		        Ds2 , v064
	.byte	W07
@ 002   ----------------------------------------
	.byte	W08
	.byte		        Ds2 , v048
	.byte	W15
	.byte		VOICE , 36
	.byte		N05   , Cn2 , v052
	.byte	W05
	.byte		        Cs2 
	.byte	W05
	.byte		        Cn2 
	.byte	W05
	.byte		        Gs1 
	.byte	W05
	.byte		N15   , Fs1 
	.byte	W15
	.byte		VOICE , 47
	.byte		N10   , Gs1 , v064
	.byte	W10
	.byte		N30   , An1 , v127
	.byte	W28
@ 003   ----------------------------------------
	.byte	W02
	.byte		N10   , An1 , v048
	.byte	W10
	.byte		        Fs1 , v127
	.byte	W10
	.byte		N10   
	.byte	W10
	.byte		        Gs1 
	.byte	W10
	.byte		VOICE , 36
	.byte		N05   , An1 , v048
	.byte	W05
	.byte		        Cn2 
	.byte	W05
	.byte		        Cs2 
	.byte	W05
	.byte		        Ds2 
	.byte	W05
	.byte		        Cs2 
	.byte	W05
	.byte		N15   , Cn2 
	.byte	W15
	.byte		N05   , Cn2 , v127
	.byte	W05
	.byte		N10   , Ds1 
	.byte	W09
@ 004   ----------------------------------------
	.byte	W01
	.byte		N05   , Cn2 
	.byte	W05
	.byte		VOICE , 47
	.byte		N10   , Fs1 , v056
	.byte	W10
	.byte		VOICE , 36
	.byte		N05   , Cn2 , v127
	.byte	W05
	.byte		N10   , Ds1 
	.byte	W10
	.byte		N05   , Cn2 
	.byte	W64
	.byte	W01
	.byte	GOTO
	 .word	ch3b2_1_B1
ch3b2_1_B2:
@ 005   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

ch3b2_2:
	.byte		VOL   , 127*ch3b2_mvl/mxv
	.byte	KEYSH , ch3b2_key+0
ch3b2_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 67
	.byte		N20   , Cn2 , v127
	.byte	W20
	.byte		VOICE , 47
	.byte		N05   , Fs1 
	.byte	W05
	.byte		        Gs1 
	.byte	W05
	.byte		N10   , An1 
	.byte	W10
	.byte		        Fs1 
	.byte	W10
	.byte		        An1 
	.byte	W10
	.byte		        Gs1 
	.byte	W10
	.byte		N30   , Ds1 
	.byte	W24
	.byte	W02
@ 001   ----------------------------------------
	.byte	W04
	.byte		VOICE , 69
	.byte		N20   , Gs1 
	.byte	W20
	.byte		N20   
	.byte	W20
	.byte		N20   
	.byte	W20
	.byte		N20   
	.byte	W20
	.byte		VOICE , 47
	.byte		N05   , Fs1 
	.byte	W05
	.byte		        Gs1 
	.byte	W05
	.byte		        Cn2 
	.byte	W02
@ 002   ----------------------------------------
	.byte	W03
	.byte		        Gs1 
	.byte	W05
	.byte		N40   , Fs1 
	.byte	W40
	.byte		N32   , Gs1 
	.byte	W32
	.byte	W03
	.byte		N40   , An1 , v052
	.byte	W13
@ 003   ----------------------------------------
	.byte	W24
	.byte	W03
	.byte		VOICE , 36
	.byte		N10   , Gs1 , v127
	.byte	W10
	.byte		N05   , An1 
	.byte	W05
	.byte		        Cn2 
	.byte	W05
	.byte		        Cs2 
	.byte	W05
	.byte		        Ds2 
	.byte	W05
	.byte		        Cs2 
	.byte	W05
	.byte		        Cn2 
	.byte	W05
	.byte		        An1 
	.byte	W05
	.byte		N10   , Gs1 
	.byte	W10
	.byte		N05   , Ds2 
	.byte	W05
	.byte		VOICE , 47
	.byte		N10   , Ds1 , v056
	.byte	W09
@ 004   ----------------------------------------
	.byte	W01
	.byte		VOICE , 36
	.byte		N05   , Ds2 , v127
	.byte	W05
	.byte		N10   , Gs1 
	.byte	W10
	.byte		N05   , Ds2 
	.byte	W05
	.byte		VOICE , 47
	.byte		N10   , Ds1 , v056
	.byte	W10
	.byte		VOICE , 36
	.byte		N05   , Ds2 , v127
	.byte	W64
	.byte	W01
	.byte	GOTO
	 .word	ch3b2_2_B1
ch3b2_2_B2:
@ 005   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

ch3b2_3:
	.byte		VOL   , 127*ch3b2_mvl/mxv
	.byte	KEYSH , ch3b2_key+0
ch3b2_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 51
	.byte		N10   , Bn1 , v127
	.byte	W10
	.byte		N05   , Bn1 , v072
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Bn1 , v127
	.byte	W05
	.byte		VOICE , 70
	.byte		N05   , En2 
	.byte	W05
	.byte		        Bn1 , v072
	.byte	W05
	.byte		VOICE , 51
	.byte		N10   , Gn1 , v127
	.byte	W10
	.byte		N05   , Gn1 , v072
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Bn1 , v127
	.byte	W05
	.byte		VOICE , 70
	.byte		N10   , Bn1 , v112
	.byte	W10
	.byte		VOICE , 51
	.byte		N10   , Bn1 , v127
	.byte	W10
	.byte		N05   , Bn1 , v072
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Bn1 , v127
	.byte	W05
	.byte		VOICE , 70
	.byte		N05   , En2 
	.byte	W05
	.byte		        Bn1 , v072
	.byte	W05
	.byte		VOICE , 51
	.byte		N10   , Gn1 , v127
	.byte	W06
@ 001   ----------------------------------------
	.byte	W04
	.byte		N05   , Gn1 , v072
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Bn1 , v127
	.byte	W05
	.byte		VOICE , 70
	.byte		N10   , Bn1 , v112
	.byte	W10
	.byte		VOICE , 51
	.byte		N10   , Bn1 , v127
	.byte	W10
	.byte		N05   , Bn1 , v072
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Bn1 , v127
	.byte	W05
	.byte		VOICE , 70
	.byte		N05   , En2 
	.byte	W05
	.byte		        Bn1 , v072
	.byte	W05
	.byte		VOICE , 51
	.byte		N10   , Gn1 , v127
	.byte	W10
	.byte		N05   , Gn1 , v072
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Bn1 , v127
	.byte	W05
	.byte		VOICE , 70
	.byte		N10   , Bn1 , v112
	.byte	W10
	.byte		VOICE , 51
	.byte		N10   , Bn1 , v127
	.byte	W10
	.byte		N05   , Bn1 , v072
	.byte	W02
@ 002   ----------------------------------------
	.byte	W03
	.byte		VOICE , 61
	.byte		N05   , Bn1 , v127
	.byte	W05
	.byte		VOICE , 70
	.byte		N05   , En2 
	.byte	W05
	.byte		        Bn1 , v072
	.byte	W05
	.byte		VOICE , 51
	.byte		N10   , Gn1 , v127
	.byte	W10
	.byte		N05   , Gn1 , v072
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Bn1 , v127
	.byte	W05
	.byte		VOICE , 70
	.byte		N10   , Bn1 , v112
	.byte	W10
	.byte		VOICE , 51
	.byte		N10   , Bn1 , v127
	.byte	W10
	.byte		N05   , Bn1 , v072
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Bn1 , v127
	.byte	W05
	.byte		VOICE , 70
	.byte		N05   , En2 
	.byte	W05
	.byte		        Bn1 , v072
	.byte	W05
	.byte		VOICE , 51
	.byte		N10   , Gn1 , v127
	.byte	W10
	.byte		N05   , Gn1 , v072
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Bn1 , v127
	.byte	W03
@ 003   ----------------------------------------
	.byte	W02
	.byte		VOICE , 70
	.byte		N10   , Bn1 , v112
	.byte	W10
	.byte		VOICE , 51
	.byte		N10   , Bn1 , v127
	.byte	W10
	.byte		N05   , Bn1 , v072
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Bn1 , v127
	.byte	W05
	.byte		VOICE , 70
	.byte		N05   , En2 
	.byte	W05
	.byte		        Bn1 , v072
	.byte	W05
	.byte		VOICE , 51
	.byte		N10   , Gn1 , v127
	.byte	W10
	.byte		N05   , Gn1 , v072
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Bn1 , v127
	.byte	W05
	.byte		VOICE , 70
	.byte		N10   , Bn1 , v112
	.byte	W10
	.byte		VOICE , 47
	.byte		N10   , Ds1 , v127
	.byte	W10
	.byte		N10   
	.byte	W10
	.byte		        Fs1 
	.byte	W04
@ 004   ----------------------------------------
	.byte	W06
	.byte		VOICE , 51
	.byte		N10   , Gn1 
	.byte	W10
	.byte		VOICE , 47
	.byte		N10   , Ds1 
	.byte	W10
	.byte		        Fs1 
	.byte	W68
	.byte	W02
	.byte	GOTO
	 .word	ch3b2_3_B1
ch3b2_3_B2:
@ 005   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

ch3b2_4:
	.byte		VOL   , 127*ch3b2_mvl/mxv
	.byte	KEYSH , ch3b2_key+0
ch3b2_4_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 61
	.byte		N05   , Bn1 , v127
	.byte	W05
	.byte		VOICE , 9
	.byte		N05   
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Bn1 , v104
	.byte	W05
	.byte		VOICE , 62
	.byte		N05   , Bn1 , v127
	.byte	W05
	.byte		VOICE , 9
	.byte		N05   
	.byte	W05
	.byte		VOICE , 60
	.byte		N05   , Bn1 , v064
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Bn1 , v127
	.byte	W05
	.byte		VOICE , 9
	.byte		N05   
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Bn1 , v104
	.byte	W05
	.byte		VOICE , 62
	.byte		N05   , Bn1 , v127
	.byte	W05
	.byte		VOICE , 9
	.byte		N05   
	.byte	W05
	.byte		VOICE , 60
	.byte		N05   , Bn1 , v064
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Bn1 , v127
	.byte	W05
	.byte		VOICE , 9
	.byte		N05   
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Bn1 , v104
	.byte	W05
	.byte		VOICE , 62
	.byte		N05   , Bn1 , v127
	.byte	W05
	.byte		VOICE , 9
	.byte		N05   
	.byte	W05
	.byte		VOICE , 60
	.byte		N05   , Bn1 , v064
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Bn1 , v127
	.byte	W05
	.byte		VOICE , 9
	.byte		N05   
	.byte	W01
@ 001   ----------------------------------------
	.byte	W04
	.byte		VOICE , 61
	.byte		N05   , Bn1 , v104
	.byte	W05
	.byte		VOICE , 62
	.byte		N05   , Bn1 , v127
	.byte	W05
	.byte		VOICE , 9
	.byte		N05   
	.byte	W05
	.byte		VOICE , 60
	.byte		N05   , Bn1 , v064
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Bn1 , v127
	.byte	W05
	.byte		VOICE , 9
	.byte		N05   
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Bn1 , v104
	.byte	W05
	.byte		VOICE , 62
	.byte		N05   , Bn1 , v127
	.byte	W05
	.byte		VOICE , 9
	.byte		N05   
	.byte	W05
	.byte		VOICE , 60
	.byte		N05   , Bn1 , v064
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Bn1 , v127
	.byte	W05
	.byte		VOICE , 9
	.byte		N05   
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Bn1 , v104
	.byte	W05
	.byte		VOICE , 62
	.byte		N05   , Bn1 , v127
	.byte	W05
	.byte		VOICE , 9
	.byte		N05   
	.byte	W05
	.byte		VOICE , 60
	.byte		N05   , Bn1 , v064
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Bn1 , v127
	.byte	W05
	.byte		VOICE , 9
	.byte		N05   
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Bn1 , v104
	.byte	W02
@ 002   ----------------------------------------
	.byte	W03
	.byte		VOICE , 62
	.byte		N05   , Bn1 , v127
	.byte	W05
	.byte		VOICE , 9
	.byte		N05   
	.byte	W05
	.byte		VOICE , 60
	.byte		N05   , Bn1 , v064
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Bn1 , v127
	.byte	W05
	.byte		VOICE , 9
	.byte		N05   
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Bn1 , v104
	.byte	W05
	.byte		VOICE , 62
	.byte		N05   , Bn1 , v127
	.byte	W05
	.byte		VOICE , 9
	.byte		N05   
	.byte	W05
	.byte		VOICE , 60
	.byte		N05   , Bn1 , v064
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Bn1 , v127
	.byte	W05
	.byte		VOICE , 9
	.byte		N05   
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Bn1 , v104
	.byte	W05
	.byte		VOICE , 62
	.byte		N05   , Bn1 , v127
	.byte	W05
	.byte		VOICE , 9
	.byte		N05   
	.byte	W05
	.byte		VOICE , 60
	.byte		N05   , Bn1 , v064
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Bn1 , v127
	.byte	W05
	.byte		VOICE , 9
	.byte		N05   
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Bn1 , v104
	.byte	W05
	.byte		VOICE , 62
	.byte		N05   , Bn1 , v127
	.byte	W03
@ 003   ----------------------------------------
	.byte	W02
	.byte		VOICE , 9
	.byte		N05   
	.byte	W05
	.byte		VOICE , 60
	.byte		N05   , Bn1 , v064
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Bn1 , v127
	.byte	W05
	.byte		VOICE , 9
	.byte		N05   
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Bn1 , v104
	.byte	W05
	.byte		VOICE , 62
	.byte		N05   , Bn1 , v127
	.byte	W05
	.byte		VOICE , 9
	.byte		N05   
	.byte	W05
	.byte		VOICE , 60
	.byte		N05   , Bn1 , v064
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Bn1 , v127
	.byte	W05
	.byte		VOICE , 9
	.byte		N05   
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Bn1 , v104
	.byte	W05
	.byte		VOICE , 62
	.byte		N05   , Bn1 , v127
	.byte	W05
	.byte		VOICE , 9
	.byte		N05   
	.byte	W05
	.byte		VOICE , 60
	.byte		N05   , Bn1 , v064
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Bn1 , v127
	.byte	W05
	.byte		VOICE , 9
	.byte		N05   
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Bn1 , v104
	.byte	W05
	.byte		VOICE , 62
	.byte		N05   , Bn1 , v127
	.byte	W05
	.byte		VOICE , 9
	.byte		N05   
	.byte	W04
@ 004   ----------------------------------------
	.byte	W01
	.byte		VOICE , 60
	.byte		N05   , Bn1 , v064
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Bn1 , v127
	.byte	W05
	.byte		VOICE , 9
	.byte		N05   
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Bn1 , v104
	.byte	W05
	.byte		VOICE , 62
	.byte		N05   , Bn1 , v127
	.byte	W05
	.byte		VOICE , 9
	.byte		N05   
	.byte	W05
	.byte		VOICE , 60
	.byte		N05   , Bn1 , v064
	.byte	W64
	.byte	W01
	.byte	GOTO
	 .word	ch3b2_4_B1
ch3b2_4_B2:
@ 005   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

ch3b2:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	ch3b2_pri	@ Priority
	.byte	ch3b2_rev	@ Reverb.

	.word	ch3b2_grp

	.word	ch3b2_1
	.word	ch3b2_2
	.word	ch3b2_3
	.word	ch3b2_4

	.end
