	.include "MPlayDef.s"

	.equ	ch513_grp, voicegroup000
	.equ	ch513_pri, 128
	.equ	ch513_rev, reverb_set+50
	.equ	ch513_mvl, 127
	.equ	ch513_key, 0
	.equ	ch513_tbs, 1
	.equ	ch513_exg, 0
	.equ	ch513_cmp, 1

	.section .rodata
	.global	ch513
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

ch513_1:
	.byte		VOL   , 127*ch513_mvl/mxv
	.byte	KEYSH , ch513_key+0
ch513_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 100*ch513_tbs/2
	.byte		VOICE , 69
	.byte		N15   , Cn2 , v127
	.byte	W15
	.byte		VOICE , 41
	.byte		N05   
	.byte	W05
	.byte		VOICE , 69
	.byte		N15   
	.byte	W15
	.byte		N10   
	.byte	W10
	.byte		VOICE , 41
	.byte		N10   
	.byte	W10
	.byte		VOICE , 69
	.byte		N10   
	.byte	W10
	.byte		VOICE , 41
	.byte		N05   
	.byte	W05
	.byte		VOICE , 69
	.byte		N05   
	.byte	W05
	.byte		VOICE , 41
	.byte		N05   
	.byte	W05
	.byte		VOICE , 69
	.byte		N15   
	.byte	W15
	.byte		VOICE , 41
	.byte		N05   
	.byte	W01
@ 001   ----------------------------------------
ch513_1_001:
	.byte	W04
	.byte		VOICE , 69
	.byte		N15   , Cn2 , v127
	.byte	W15
	.byte		N10   
	.byte	W10
	.byte		VOICE , 41
	.byte		N10   
	.byte	W10
	.byte		VOICE , 69
	.byte		N10   
	.byte	W10
	.byte		VOICE , 41
	.byte		N05   
	.byte	W05
	.byte		VOICE , 69
	.byte		N05   
	.byte	W05
	.byte		VOICE , 41
	.byte		N05   
	.byte	W05
	.byte		VOICE , 69
	.byte		N15   , Dn2 
	.byte	W15
	.byte		VOICE , 41
	.byte		N05   
	.byte	W05
	.byte		VOICE , 69
	.byte		N15   
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
ch513_1_002:
	.byte	W03
	.byte		N10   , Dn2 , v127
	.byte	W10
	.byte		VOICE , 41
	.byte		N10   
	.byte	W10
	.byte		VOICE , 69
	.byte		N10   
	.byte	W10
	.byte		VOICE , 41
	.byte		N05   
	.byte	W05
	.byte		VOICE , 69
	.byte		N05   
	.byte	W05
	.byte		VOICE , 41
	.byte		N05   
	.byte	W05
	.byte		VOICE , 69
	.byte		N15   
	.byte	W15
	.byte		VOICE , 41
	.byte		N05   
	.byte	W05
	.byte		VOICE , 69
	.byte		N15   
	.byte	W15
	.byte		N10   
	.byte	W10
	.byte		VOICE , 41
	.byte		N10   
	.byte	W03
	.byte	PEND
@ 003   ----------------------------------------
ch513_1_003:
	.byte	W07
	.byte		VOICE , 69
	.byte		N10   , Dn2 , v127
	.byte	W10
	.byte		VOICE , 41
	.byte		N05   
	.byte	W05
	.byte		VOICE , 69
	.byte		N05   
	.byte	W05
	.byte		VOICE , 41
	.byte		N05   
	.byte	W05
	.byte		VOICE , 69
	.byte		N15   , Cn2 
	.byte	W15
	.byte		VOICE , 41
	.byte		N05   
	.byte	W05
	.byte		VOICE , 69
	.byte		N15   
	.byte	W15
	.byte		N10   
	.byte	W10
	.byte		VOICE , 41
	.byte		N10   
	.byte	W10
	.byte		VOICE , 69
	.byte		N10   
	.byte	W09
	.byte	PEND
@ 004   ----------------------------------------
ch513_1_004:
	.byte	W01
	.byte		VOICE , 41
	.byte		N05   , Cn2 , v127
	.byte	W05
	.byte		VOICE , 69
	.byte		N05   
	.byte	W05
	.byte		VOICE , 41
	.byte		N05   
	.byte	W05
	.byte		VOICE , 69
	.byte		N15   
	.byte	W15
	.byte		VOICE , 41
	.byte		N05   
	.byte	W05
	.byte		VOICE , 69
	.byte		N15   
	.byte	W15
	.byte		N10   
	.byte	W10
	.byte		VOICE , 41
	.byte		N10   
	.byte	W10
	.byte		VOICE , 69
	.byte		N10   
	.byte	W10
	.byte		VOICE , 41
	.byte		N05   
	.byte	W05
	.byte		VOICE , 69
	.byte		N05   
	.byte	W05
	.byte		VOICE , 41
	.byte		N05   
	.byte	W05
	.byte	PEND
@ 005   ----------------------------------------
ch513_1_005:
	.byte		VOICE , 69
	.byte		N15   , Dn2 , v127
	.byte	W15
	.byte		VOICE , 41
	.byte		N05   
	.byte	W05
	.byte		VOICE , 69
	.byte		N15   
	.byte	W15
	.byte		N10   
	.byte	W10
	.byte		VOICE , 41
	.byte		N10   
	.byte	W10
	.byte		VOICE , 69
	.byte		N10   
	.byte	W10
	.byte		VOICE , 41
	.byte		N05   
	.byte	W05
	.byte		VOICE , 69
	.byte		N05   
	.byte	W05
	.byte		VOICE , 41
	.byte		N05   
	.byte	W05
	.byte		VOICE , 69
	.byte		N15   
	.byte	W15
	.byte		VOICE , 41
	.byte		N05   
	.byte	W01
	.byte	PEND
@ 006   ----------------------------------------
ch513_1_006:
	.byte	W04
	.byte		VOICE , 69
	.byte		N15   , Dn2 , v127
	.byte	W15
	.byte		N10   
	.byte	W10
	.byte		VOICE , 41
	.byte		N10   
	.byte	W10
	.byte		VOICE , 69
	.byte		N10   
	.byte	W10
	.byte		VOICE , 41
	.byte		N05   
	.byte	W05
	.byte		VOICE , 69
	.byte		N05   
	.byte	W05
	.byte		VOICE , 41
	.byte		N05   
	.byte	W05
	.byte		VOICE , 69
	.byte		N15   , Cn2 
	.byte	W15
	.byte		VOICE , 41
	.byte		N05   
	.byte	W05
	.byte		VOICE , 69
	.byte		N15   
	.byte	W12
	.byte	PEND
@ 007   ----------------------------------------
ch513_1_007:
	.byte	W03
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 41
	.byte		N10   
	.byte	W10
	.byte		VOICE , 69
	.byte		N10   
	.byte	W10
	.byte		VOICE , 41
	.byte		N05   
	.byte	W05
	.byte		VOICE , 69
	.byte		N05   
	.byte	W05
	.byte		VOICE , 41
	.byte		N05   
	.byte	W05
	.byte		VOICE , 69
	.byte		N15   
	.byte	W15
	.byte		VOICE , 41
	.byte		N05   
	.byte	W05
	.byte		VOICE , 69
	.byte		N15   
	.byte	W15
	.byte		N10   
	.byte	W10
	.byte		VOICE , 41
	.byte		N10   
	.byte	W03
	.byte	PEND
@ 008   ----------------------------------------
ch513_1_008:
	.byte	W07
	.byte		VOICE , 69
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 41
	.byte		N05   
	.byte	W05
	.byte		VOICE , 69
	.byte		N05   
	.byte	W05
	.byte		VOICE , 41
	.byte		N05   
	.byte	W05
	.byte		VOICE , 69
	.byte		N15   , Dn2 
	.byte	W15
	.byte		VOICE , 41
	.byte		N05   
	.byte	W05
	.byte		VOICE , 69
	.byte		N15   
	.byte	W15
	.byte		N10   
	.byte	W10
	.byte		VOICE , 41
	.byte		N10   
	.byte	W10
	.byte		VOICE , 69
	.byte		N10   
	.byte	W09
	.byte	PEND
@ 009   ----------------------------------------
ch513_1_009:
	.byte	W01
	.byte		VOICE , 41
	.byte		N05   , Dn2 , v127
	.byte	W05
	.byte		VOICE , 69
	.byte		N05   
	.byte	W05
	.byte		VOICE , 41
	.byte		N05   
	.byte	W05
	.byte		VOICE , 69
	.byte		N15   
	.byte	W15
	.byte		VOICE , 41
	.byte		N05   
	.byte	W05
	.byte		VOICE , 69
	.byte		N15   
	.byte	W15
	.byte		N10   
	.byte	W10
	.byte		VOICE , 41
	.byte		N10   
	.byte	W10
	.byte		VOICE , 69
	.byte		N10   
	.byte	W10
	.byte		VOICE , 41
	.byte		N05   
	.byte	W05
	.byte		VOICE , 69
	.byte		N05   
	.byte	W05
	.byte		VOICE , 41
	.byte		N05   
	.byte	W05
	.byte	PEND
@ 010   ----------------------------------------
ch513_1_010:
	.byte		VOICE , 69
	.byte		N15   , Cn2 , v127
	.byte	W15
	.byte		VOICE , 41
	.byte		N05   
	.byte	W05
	.byte		VOICE , 69
	.byte		N15   
	.byte	W15
	.byte		N10   
	.byte	W10
	.byte		VOICE , 41
	.byte		N10   
	.byte	W10
	.byte		VOICE , 69
	.byte		N10   
	.byte	W10
	.byte		VOICE , 41
	.byte		N05   
	.byte	W05
	.byte		VOICE , 69
	.byte		N05   
	.byte	W05
	.byte		VOICE , 41
	.byte		N05   
	.byte	W05
	.byte		VOICE , 69
	.byte		N15   
	.byte	W15
	.byte		VOICE , 41
	.byte		N05   
	.byte	W01
	.byte	PEND
@ 011   ----------------------------------------
	.byte	PATT
	 .word	ch513_1_001
@ 012   ----------------------------------------
	.byte	PATT
	 .word	ch513_1_002
@ 013   ----------------------------------------
	.byte	PATT
	 .word	ch513_1_003
@ 014   ----------------------------------------
	.byte	PATT
	 .word	ch513_1_004
@ 015   ----------------------------------------
	.byte	PATT
	 .word	ch513_1_005
@ 016   ----------------------------------------
	.byte	PATT
	 .word	ch513_1_006
@ 017   ----------------------------------------
	.byte	PATT
	 .word	ch513_1_007
@ 018   ----------------------------------------
	.byte	PATT
	 .word	ch513_1_008
@ 019   ----------------------------------------
	.byte	PATT
	 .word	ch513_1_009
@ 020   ----------------------------------------
	.byte	PATT
	 .word	ch513_1_010
@ 021   ----------------------------------------
	.byte	PATT
	 .word	ch513_1_001
@ 022   ----------------------------------------
	.byte	PATT
	 .word	ch513_1_002
@ 023   ----------------------------------------
	.byte	PATT
	 .word	ch513_1_003
@ 024   ----------------------------------------
	.byte	PATT
	 .word	ch513_1_004
@ 025   ----------------------------------------
	.byte	PATT
	 .word	ch513_1_005
@ 026   ----------------------------------------
	.byte	PATT
	 .word	ch513_1_006
@ 027   ----------------------------------------
	.byte	PATT
	 .word	ch513_1_007
@ 028   ----------------------------------------
	.byte	PATT
	 .word	ch513_1_008
@ 029   ----------------------------------------
	.byte	PATT
	 .word	ch513_1_009
@ 030   ----------------------------------------
	.byte	PATT
	 .word	ch513_1_010
@ 031   ----------------------------------------
	.byte	PATT
	 .word	ch513_1_001
@ 032   ----------------------------------------
	.byte	PATT
	 .word	ch513_1_002
@ 033   ----------------------------------------
	.byte	W07
	.byte		VOICE , 69
	.byte		N10   , Dn2 , v127
	.byte	W10
	.byte		VOICE , 41
	.byte		N05   
	.byte	W05
	.byte		VOICE , 69
	.byte		N05   
	.byte	W05
	.byte		VOICE , 41
	.byte		N05   
	.byte	W68
	.byte	W01
	.byte	GOTO
	 .word	ch513_1_B1
ch513_1_B2:
@ 034   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

ch513_2:
	.byte		VOL   , 127*ch513_mvl/mxv
	.byte	KEYSH , ch513_key+0
ch513_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte	W10
	.byte		        83
	.byte		N15   , Bn1 , v127
	.byte	W15
	.byte		        Dn2 
	.byte	W15
	.byte		        An2 
	.byte	W15
	.byte		N54   , En2 
	.byte	W40
	.byte	W01
@ 001   ----------------------------------------
	.byte	W14
	.byte		N10   , Bn1 
	.byte	W10
	.byte		N15   , Dn2 
	.byte	W15
	.byte		        Fs2 
	.byte	W15
	.byte		N10   , Gn2 
	.byte	W10
	.byte		N15   , Fs2 
	.byte	W15
	.byte		        Dn2 
	.byte	W15
	.byte		N20   , An1 
	.byte	W02
@ 002   ----------------------------------------
	.byte	W18
	.byte		TIE   , Fs1 
	.byte	W78
@ 003   ----------------------------------------
	.byte	W42
	.byte		EOT   
	.byte		N15   , Bn1 
	.byte	W15
	.byte		        Dn2 
	.byte	W15
	.byte		        An2 
	.byte	W15
	.byte		N54   , En2 
	.byte	W09
@ 004   ----------------------------------------
	.byte	W44
	.byte	W02
	.byte		N10   , Bn1 
	.byte	W10
	.byte		N15   , Dn2 
	.byte	W15
	.byte		        Fs2 
	.byte	W15
	.byte		N10   , Gn2 
	.byte	W10
@ 005   ----------------------------------------
	.byte		N15   , Fs2 
	.byte	W15
	.byte		        Bn2 
	.byte	W15
	.byte		N40   , An2 
	.byte	W40
	.byte		VOICE , 19
	.byte		N10   , En2 
	.byte	W10
	.byte		N15   , Fs2 
	.byte	W15
	.byte		        Dn2 
	.byte	W01
@ 006   ----------------------------------------
	.byte	W14
	.byte		N60   , An1 
	.byte	W60
	.byte		VOICE , 83
	.byte		N15   , Bn1 
	.byte	W15
	.byte		        Dn2 
	.byte	W07
@ 007   ----------------------------------------
	.byte	W08
	.byte		        An2 
	.byte	W15
	.byte		N54   , En2 
	.byte	W54
	.byte	W01
	.byte		N10   , Bn1 
	.byte	W10
	.byte		N15   , Dn2 
	.byte	W08
@ 008   ----------------------------------------
	.byte	W07
	.byte		        Fs2 
	.byte	W15
	.byte		N10   , Gn2 
	.byte	W10
	.byte		N15   , Fs2 
	.byte	W15
	.byte		        Dn2 
	.byte	W15
	.byte		N20   , An1 
	.byte	W20
	.byte		TIE   , Fs1 
	.byte	W14
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W10
	.byte		EOT   
	.byte		N15   , Bn1 
	.byte	W15
	.byte		        Dn2 
	.byte	W15
	.byte		        An2 
	.byte	W15
	.byte		N54   , En2 
	.byte	W40
	.byte	W01
@ 011   ----------------------------------------
	.byte	W14
	.byte		N10   , Bn1 
	.byte	W10
	.byte		N15   , Dn2 
	.byte	W15
	.byte		        Fs2 
	.byte	W15
	.byte		N10   , Gn2 
	.byte	W10
	.byte		N15   , Fs2 
	.byte	W15
	.byte		        Bn2 
	.byte	W15
	.byte		        An2 
	.byte	W02
@ 012   ----------------------------------------
	.byte	W13
	.byte		VOICE , 2
	.byte		N10   , En2 , v096
	.byte	W10
	.byte		N05   , En2 , v052
	.byte	W05
	.byte		N10   , Fs2 , v096
	.byte	W10
	.byte		        Dn2 
	.byte	W10
	.byte		        Cs2 
	.byte	W10
	.byte		N05   , Cs2 , v052
	.byte	W05
	.byte		N10   , An1 , v096
	.byte	W10
	.byte		N05   , An1 , v052
	.byte	W05
	.byte		N10   , Fs1 , v096
	.byte	W10
	.byte		N05   , Fs1 , v052
	.byte	W05
	.byte		        En1 , v096
	.byte	W03
@ 013   ----------------------------------------
	.byte	W02
	.byte		        Dn1 , v084
	.byte	W05
	.byte		        Cs1 , v080
	.byte	W05
	.byte		VOICE , 40
	.byte		N10   , Bn1 , v127
	.byte	W10
	.byte		        Cs2 
	.byte	W10
	.byte		VOICE , 39
	.byte		N15   , Dn2 , v112
	.byte	W15
	.byte		VOICE , 40
	.byte		N15   , Fs2 
	.byte	W15
	.byte		VOICE , 39
	.byte		N15   , Dn2 
	.byte	W15
	.byte		VOICE , 40
	.byte		N15   , Bn1 
	.byte	W15
	.byte		VOICE , 39
	.byte		N10   , Gn1 
	.byte	W04
@ 014   ----------------------------------------
ch513_2_014:
	.byte	W06
	.byte		VOICE , 40
	.byte		N10   , Bn1 , v112
	.byte	W10
	.byte		VOICE , 39
	.byte		N15   , Gn1 
	.byte	W15
	.byte		VOICE , 40
	.byte		N15   , Bn1 
	.byte	W15
	.byte		VOICE , 39
	.byte		N15   , Gn1 
	.byte	W15
	.byte		VOICE , 40
	.byte		N15   , Fs1 
	.byte	W15
	.byte		N10   , En1 
	.byte	W10
	.byte		        Fs1 
	.byte	W10
	.byte	PEND
@ 015   ----------------------------------------
	.byte		VOICE , 39
	.byte		N30   , Dn1 
	.byte	W30
	.byte		        Dn1 , v064
	.byte	W30
	.byte		N40   , Dn1 , v048
	.byte	W36
@ 016   ----------------------------------------
	.byte	W44
	.byte		N05   , Gn1 , v096
	.byte	W05
	.byte		        An1 , v100
	.byte	W05
	.byte		VOICE , 40
	.byte		N05   , Bn1 , v104
	.byte	W05
	.byte		        Cs2 , v108
	.byte	W05
	.byte		VOICE , 39
	.byte		N15   , Dn2 , v112
	.byte	W15
	.byte		VOICE , 40
	.byte		N15   , Fs2 
	.byte	W15
	.byte		VOICE , 39
	.byte		N15   , Dn2 
	.byte	W02
@ 017   ----------------------------------------
	.byte	W13
	.byte		VOICE , 40
	.byte		N15   , Bn1 
	.byte	W15
	.byte		VOICE , 39
	.byte		N10   , Gn1 
	.byte	W10
	.byte		VOICE , 40
	.byte		N10   , Bn1 
	.byte	W10
	.byte		VOICE , 39
	.byte		N15   , Gn1 
	.byte	W15
	.byte		VOICE , 40
	.byte		N15   , Bn1 
	.byte	W15
	.byte		VOICE , 39
	.byte		N15   , Gn1 
	.byte	W15
	.byte		VOICE , 40
	.byte		N15   , Fs1 
	.byte	W03
@ 018   ----------------------------------------
	.byte	W12
	.byte		N10   , En1 
	.byte	W10
	.byte		        Fs1 
	.byte	W10
	.byte		VOICE , 39
	.byte		N30   , Dn1 
	.byte	W30
	.byte		VOICE , 40
	.byte		N20   , Bn0 
	.byte	W20
	.byte		N24   , Bn0 , v064
	.byte	W14
@ 019   ----------------------------------------
	.byte	W11
	.byte		N30   , Bn0 , v048
	.byte	W54
	.byte	W01
	.byte		VOICE , 39
	.byte		N15   , Gn2 , v112
	.byte	W15
	.byte		VOICE , 40
	.byte		N15   , Fs2 
	.byte	W15
@ 020   ----------------------------------------
	.byte		VOICE , 39
	.byte		N15   , Dn2 
	.byte	W15
	.byte		VOICE , 40
	.byte		N15   , Fs2 
	.byte	W15
	.byte		VOICE , 39
	.byte		N15   , Dn2 
	.byte	W15
	.byte		VOICE , 40
	.byte		N15   , Bn1 
	.byte	W15
	.byte		VOICE , 39
	.byte		N10   , Gn1 
	.byte	W10
	.byte		VOICE , 40
	.byte		N10   , Bn1 
	.byte	W10
	.byte		VOICE , 39
	.byte		N15   , Gn1 
	.byte	W15
	.byte		VOICE , 40
	.byte		N15   , Bn1 
	.byte	W01
@ 021   ----------------------------------------
	.byte	W14
	.byte		VOICE , 39
	.byte		N15   , Gn1 
	.byte	W15
	.byte		VOICE , 40
	.byte		N15   , Fs1 
	.byte	W15
	.byte		N10   , En1 
	.byte	W10
	.byte		        Fs1 
	.byte	W10
	.byte		VOICE , 39
	.byte		N30   , Dn1 
	.byte	W30
	.byte		        Dn1 , v064
	.byte	W02
@ 022   ----------------------------------------
	.byte	W28
	.byte		N40   , Dn1 , v048
	.byte	W68
@ 023   ----------------------------------------
	.byte	W12
	.byte		N05   , Gn1 , v096
	.byte	W05
	.byte		        An1 , v100
	.byte	W05
	.byte		VOICE , 40
	.byte		N05   , Bn1 , v104
	.byte	W05
	.byte		        Cs2 , v108
	.byte	W05
	.byte		VOICE , 39
	.byte		N15   , Dn2 , v112
	.byte	W15
	.byte		VOICE , 40
	.byte		N15   , Fs2 
	.byte	W15
	.byte		VOICE , 39
	.byte		N15   , Dn2 
	.byte	W15
	.byte		VOICE , 40
	.byte		N15   , Bn1 
	.byte	W15
	.byte		VOICE , 39
	.byte		N10   , Gn1 
	.byte	W04
@ 024   ----------------------------------------
	.byte	PATT
	 .word	ch513_2_014
@ 025   ----------------------------------------
	.byte		VOICE , 39
	.byte		N30   , Dn1 , v112
	.byte	W30
	.byte		VOICE , 40
	.byte		N20   , Bn0 
	.byte	W20
	.byte		N24   , Bn0 , v064
	.byte	W24
	.byte	W01
	.byte		N30   , Bn0 , v048
	.byte	W21
@ 026   ----------------------------------------
	.byte	W64
	.byte		VOICE , 6
	.byte		N20   , Cn2 , v127
	.byte	W20
	.byte		VOICE , 81
	.byte		N15   , Cn1 
	.byte	W12
@ 027   ----------------------------------------
	.byte	W03
	.byte		        Cn1 , v064
	.byte	W15
	.byte		        Cn1 , v052
	.byte	W15
	.byte		        Cn1 , v048
	.byte	W15
	.byte		        Cn1 , v044
	.byte	W15
	.byte		        Cn1 , v040
	.byte	W15
	.byte		N68   , Cn1 , v036
	.byte	W18
@ 028   ----------------------------------------
	.byte	W52
	.byte		N15   , Dn1 , v127
	.byte	W15
	.byte		        Dn1 , v064
	.byte	W15
	.byte		        Dn1 , v052
	.byte	W14
@ 029   ----------------------------------------
	.byte	W01
	.byte		        Dn1 , v048
	.byte	W15
	.byte		        Dn1 , v044
	.byte	W15
	.byte		        Dn1 , v040
	.byte	W15
	.byte		N48   , Dn1 , v036
	.byte	W48
	.byte	W02
@ 030   ----------------------------------------
	.byte		VOICE , 6
	.byte		N20   , Cn2 , v127
	.byte	W20
	.byte		VOICE , 81
	.byte		N15   , Cn1 
	.byte	W15
	.byte		        Cn1 , v064
	.byte	W15
	.byte		        Cn1 , v052
	.byte	W15
	.byte		        Cn1 , v048
	.byte	W15
	.byte		        Cn1 , v044
	.byte	W15
	.byte		        Cn1 , v040
	.byte	W01
@ 031   ----------------------------------------
	.byte	W14
	.byte		N68   , Cn1 , v036
	.byte	W68
	.byte	W02
	.byte		N15   , Dn1 , v127
	.byte	W12
@ 032   ----------------------------------------
	.byte	W03
	.byte		        Dn1 , v064
	.byte	W15
	.byte		        Dn1 , v052
	.byte	W15
	.byte		        Dn1 , v048
	.byte	W15
	.byte		        Dn1 , v044
	.byte	W15
	.byte		        Dn1 , v040
	.byte	W15
	.byte		N48   , Dn1 , v036
	.byte	W18
@ 033   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 .word	ch513_2_B1
ch513_2_B2:
@ 034   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

ch513_3:
	.byte		VOL   , 127*ch513_mvl/mxv
	.byte	KEYSH , ch513_key+0
ch513_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 80
	.byte		N20   , Cn2 , v127
	.byte	W20
	.byte		VOICE , 64
	.byte		N05   , Cs2 
	.byte	W05
	.byte		N05   
	.byte	W05
	.byte		VOICE , 80
	.byte		N05   , Cn2 
	.byte	W05
	.byte		N05   
	.byte	W05
	.byte		N10   , Cn2 , v064
	.byte	W20
	.byte		VOICE , 64
	.byte		N15   , Cs2 , v127
	.byte	W15
	.byte		VOICE , 80
	.byte		N05   , Gn1 
	.byte	W05
	.byte		N20   , Cn2 
	.byte	W16
@ 001   ----------------------------------------
ch513_3_001:
	.byte	W04
	.byte		VOICE , 64
	.byte		N05   , Cs2 , v127
	.byte	W05
	.byte		N05   
	.byte	W05
	.byte		VOICE , 80
	.byte		N05   , Cn2 
	.byte	W05
	.byte		N05   
	.byte	W05
	.byte		N10   , Cn2 , v064
	.byte	W10
	.byte		        Gn1 , v127
	.byte	W10
	.byte		VOICE , 64
	.byte		N05   , Cs2 
	.byte	W05
	.byte		VOICE , 80
	.byte		N15   , An1 
	.byte	W15
	.byte		N20   , Bn1 
	.byte	W20
	.byte		VOICE , 64
	.byte		N05   , Cs2 
	.byte	W05
	.byte		N05   
	.byte	W05
	.byte		VOICE , 80
	.byte		N05   , Bn1 
	.byte	W02
	.byte	PEND
@ 002   ----------------------------------------
ch513_3_002:
	.byte	W03
	.byte		N05   , Bn1 , v127
	.byte	W05
	.byte		N10   , Bn1 , v064
	.byte	W20
	.byte		VOICE , 64
	.byte		N15   , Cs2 , v127
	.byte	W15
	.byte		VOICE , 80
	.byte		N05   , Fs1 
	.byte	W05
	.byte		N20   , Bn1 
	.byte	W20
	.byte		VOICE , 64
	.byte		N05   , Cs2 
	.byte	W05
	.byte		N05   
	.byte	W05
	.byte		VOICE , 80
	.byte		N05   , Bn1 
	.byte	W05
	.byte		N05   
	.byte	W05
	.byte		N10   , Bn1 , v064
	.byte	W08
	.byte	PEND
@ 003   ----------------------------------------
	.byte	W02
	.byte		        Gn1 , v127
	.byte	W10
	.byte		VOICE , 64
	.byte		N05   , Cs2 
	.byte	W05
	.byte		VOICE , 80
	.byte		N15   , An1 
	.byte	W15
	.byte		N20   , Cn2 
	.byte	W20
	.byte		VOICE , 64
	.byte		N05   , Cs2 
	.byte	W05
	.byte		N05   
	.byte	W05
	.byte		VOICE , 80
	.byte		N05   , Cn2 
	.byte	W05
	.byte		N05   
	.byte	W05
	.byte		N10   , Cn2 , v064
	.byte	W20
	.byte		VOICE , 64
	.byte		N15   , Cs2 , v127
	.byte	W04
@ 004   ----------------------------------------
	.byte	W11
	.byte		VOICE , 80
	.byte		N05   , Gn1 
	.byte	W05
	.byte		N20   , Cn2 
	.byte	W20
	.byte		VOICE , 64
	.byte		N05   , Cs2 
	.byte	W05
	.byte		N05   
	.byte	W05
	.byte		VOICE , 80
	.byte		N05   , Cn2 
	.byte	W05
	.byte		N05   
	.byte	W05
	.byte		N10   , Cn2 , v064
	.byte	W10
	.byte		        Gn1 , v127
	.byte	W10
	.byte		VOICE , 64
	.byte		N05   , Cs2 
	.byte	W05
	.byte		VOICE , 80
	.byte		N15   , An1 
	.byte	W15
@ 005   ----------------------------------------
	.byte		N20   , Bn1 
	.byte	W20
	.byte		VOICE , 64
	.byte		N05   , Cs2 
	.byte	W05
	.byte		N05   
	.byte	W05
	.byte		VOICE , 80
	.byte		N05   , Bn1 
	.byte	W05
	.byte		N05   
	.byte	W05
	.byte		N10   , Bn1 , v064
	.byte	W20
	.byte		VOICE , 64
	.byte		N15   , Cs2 , v127
	.byte	W15
	.byte		VOICE , 80
	.byte		N05   , Fs1 
	.byte	W05
	.byte		N20   , Bn1 
	.byte	W16
@ 006   ----------------------------------------
	.byte	W04
	.byte		VOICE , 64
	.byte		N05   , Cs2 
	.byte	W05
	.byte		N05   
	.byte	W05
	.byte		VOICE , 80
	.byte		N05   , Bn1 
	.byte	W05
	.byte		N05   
	.byte	W05
	.byte		        Bn1 , v064
	.byte	W05
	.byte		VOICE , 38
	.byte		N05   , Dn2 , v080
	.byte	W05
	.byte		N10   , Dn2 , v127
	.byte	W10
	.byte		VOICE , 64
	.byte		N05   , Cs2 
	.byte	W05
	.byte		VOICE , 38
	.byte		N10   , Dn2 , v104
	.byte	W10
	.byte		VOICE , 61
	.byte		N05   , Cs2 
	.byte	W05
	.byte		VOICE , 80
	.byte		N20   , Cn2 , v127
	.byte	W20
	.byte		VOICE , 64
	.byte		N05   , Cs2 
	.byte	W05
	.byte		N05   
	.byte	W05
	.byte		VOICE , 80
	.byte		N05   , Cn2 
	.byte	W02
@ 007   ----------------------------------------
	.byte	W03
	.byte		N05   
	.byte	W05
	.byte		N10   , Cn2 , v064
	.byte	W20
	.byte		VOICE , 64
	.byte		N15   , Cs2 , v127
	.byte	W15
	.byte		VOICE , 80
	.byte		N05   , Gn1 
	.byte	W05
	.byte		N20   , Cn2 
	.byte	W20
	.byte		VOICE , 64
	.byte		N05   , Cs2 
	.byte	W05
	.byte		N05   
	.byte	W05
	.byte		VOICE , 80
	.byte		N05   , Cn2 
	.byte	W05
	.byte		N05   
	.byte	W05
	.byte		N10   , Cn2 , v064
	.byte	W08
@ 008   ----------------------------------------
	.byte	W02
	.byte		        Gn1 , v127
	.byte	W10
	.byte		VOICE , 64
	.byte		N05   , Cs2 
	.byte	W05
	.byte		VOICE , 80
	.byte		N15   , An1 
	.byte	W15
	.byte		N20   , Bn1 
	.byte	W20
	.byte		VOICE , 64
	.byte		N05   , Cs2 
	.byte	W05
	.byte		N05   
	.byte	W05
	.byte		VOICE , 80
	.byte		N05   , Bn1 
	.byte	W05
	.byte		N05   
	.byte	W05
	.byte		N10   , Bn1 , v064
	.byte	W20
	.byte		VOICE , 64
	.byte		N15   , Cs2 , v127
	.byte	W04
@ 009   ----------------------------------------
	.byte	W11
	.byte		VOICE , 80
	.byte		N05   , Fs1 
	.byte	W05
	.byte		N20   , Bn1 
	.byte	W20
	.byte		VOICE , 64
	.byte		N05   , Cs2 
	.byte	W05
	.byte		N05   
	.byte	W05
	.byte		VOICE , 80
	.byte		N05   , Bn1 
	.byte	W05
	.byte		N05   
	.byte	W05
	.byte		N10   , Bn1 , v064
	.byte	W10
	.byte		        Gn1 , v127
	.byte	W10
	.byte		VOICE , 64
	.byte		N05   , Cs2 
	.byte	W05
	.byte		VOICE , 80
	.byte		N15   , An1 
	.byte	W15
@ 010   ----------------------------------------
	.byte		N20   , Cn2 
	.byte	W20
	.byte		VOICE , 64
	.byte		N05   , Cs2 
	.byte	W05
	.byte		N05   
	.byte	W05
	.byte		VOICE , 80
	.byte		N05   , Cn2 
	.byte	W05
	.byte		N05   
	.byte	W05
	.byte		N10   , Cn2 , v064
	.byte	W20
	.byte		VOICE , 64
	.byte		N15   , Cs2 , v127
	.byte	W15
	.byte		VOICE , 80
	.byte		N05   , Gn1 
	.byte	W05
	.byte		N20   , Cn2 
	.byte	W16
@ 011   ----------------------------------------
	.byte	PATT
	 .word	ch513_3_001
@ 012   ----------------------------------------
	.byte	PATT
	 .word	ch513_3_002
@ 013   ----------------------------------------
	.byte	W02
	.byte		N10   , Gn1 , v127
	.byte	W10
	.byte		VOICE , 64
	.byte		N05   , Cs2 
	.byte	W05
	.byte		VOICE , 80
	.byte		N15   , An1 
	.byte	W15
	.byte		N20   , Cn2 
	.byte	W20
	.byte		VOICE , 38
	.byte		N10   , Dn2 
	.byte	W10
	.byte		VOICE , 80
	.byte		N05   , Cn2 
	.byte	W05
	.byte		N05   
	.byte	W05
	.byte		N10   , Cn2 , v064
	.byte	W20
	.byte		VOICE , 38
	.byte		N10   , Dn2 , v127
	.byte	W04
@ 014   ----------------------------------------
	.byte	W06
	.byte		VOICE , 62
	.byte		N05   , Cn2 
	.byte	W05
	.byte		VOICE , 80
	.byte		N05   , Gn1 
	.byte	W05
	.byte		N20   , Cn2 
	.byte	W20
	.byte		VOICE , 38
	.byte		N10   , Dn2 
	.byte	W10
	.byte		VOICE , 80
	.byte		N05   , Cn2 
	.byte	W05
	.byte		N05   
	.byte	W05
	.byte		N10   , Cn2 , v064
	.byte	W10
	.byte		        Gn1 , v127
	.byte	W10
	.byte		VOICE , 38
	.byte		N05   , Dn2 
	.byte	W05
	.byte		VOICE , 80
	.byte		N10   , An1 
	.byte	W10
	.byte		VOICE , 38
	.byte		N05   , Dn2 
	.byte	W05
@ 015   ----------------------------------------
ch513_3_015:
	.byte		VOICE , 80
	.byte		N20   , Bn1 , v127
	.byte	W20
	.byte		VOICE , 38
	.byte		N10   , Dn2 
	.byte	W10
	.byte		VOICE , 80
	.byte		N05   , Bn1 
	.byte	W05
	.byte		N05   
	.byte	W05
	.byte		N10   , Bn1 , v064
	.byte	W20
	.byte		VOICE , 38
	.byte		N15   , Dn2 , v127
	.byte	W15
	.byte		VOICE , 80
	.byte		N05   , Fs1 
	.byte	W05
	.byte		N20   , Bn1 
	.byte	W16
	.byte	PEND
@ 016   ----------------------------------------
	.byte	W04
	.byte		VOICE , 38
	.byte		N10   , Dn2 
	.byte	W10
	.byte		VOICE , 80
	.byte		N05   , Bn1 
	.byte	W05
	.byte		N05   
	.byte	W05
	.byte		N10   , Bn1 , v064
	.byte	W10
	.byte		        Gn1 , v127
	.byte	W10
	.byte		VOICE , 38
	.byte		N05   , Dn2 
	.byte	W05
	.byte		VOICE , 80
	.byte		N10   , An1 
	.byte	W10
	.byte		VOICE , 38
	.byte		N05   , Dn2 
	.byte	W05
	.byte		VOICE , 80
	.byte		N20   , Cn2 
	.byte	W20
	.byte		VOICE , 38
	.byte		N10   , Dn2 
	.byte	W10
	.byte		VOICE , 80
	.byte		N05   , Cn2 
	.byte	W02
@ 017   ----------------------------------------
ch513_3_017:
	.byte	W03
	.byte		N05   , Cn2 , v127
	.byte	W05
	.byte		N10   , Cn2 , v064
	.byte	W20
	.byte		VOICE , 38
	.byte		N10   , Dn2 , v127
	.byte	W10
	.byte		VOICE , 62
	.byte		N05   , Cn2 
	.byte	W05
	.byte		VOICE , 80
	.byte		N05   , Gn1 
	.byte	W05
	.byte		N20   , Cn2 
	.byte	W20
	.byte		VOICE , 38
	.byte		N10   , Dn2 
	.byte	W10
	.byte		VOICE , 80
	.byte		N05   , Cn2 
	.byte	W05
	.byte		N05   
	.byte	W05
	.byte		N10   , Cn2 , v064
	.byte	W08
	.byte	PEND
@ 018   ----------------------------------------
	.byte	W02
	.byte		        Gn1 , v127
	.byte	W10
	.byte		VOICE , 38
	.byte		N05   , Dn2 
	.byte	W05
	.byte		VOICE , 80
	.byte		N05   , An1 
	.byte	W05
	.byte		VOICE , 38
	.byte		N05   , Dn2 
	.byte	W05
	.byte		        Dn2 , v104
	.byte	W05
	.byte		VOICE , 80
	.byte		N20   , Bn1 , v127
	.byte	W20
	.byte		VOICE , 38
	.byte		N10   , Dn2 
	.byte	W10
	.byte		VOICE , 80
	.byte		N05   , Bn1 
	.byte	W05
	.byte		N05   
	.byte	W05
	.byte		N10   , Bn1 , v064
	.byte	W20
	.byte		VOICE , 38
	.byte		N15   , Dn2 , v127
	.byte	W04
@ 019   ----------------------------------------
	.byte	W11
	.byte		VOICE , 80
	.byte		N05   , Fs1 
	.byte	W05
	.byte		N20   , Bn1 
	.byte	W20
	.byte		VOICE , 38
	.byte		N10   , Dn2 
	.byte	W10
	.byte		VOICE , 80
	.byte		N05   , Bn1 
	.byte	W05
	.byte		N05   
	.byte	W05
	.byte		N10   , Bn1 , v064
	.byte	W10
	.byte		N05   , Gn1 , v127
	.byte	W05
	.byte		VOICE , 61
	.byte		N10   , Cs2 
	.byte	W10
	.byte		VOICE , 80
	.byte		N10   , An1 
	.byte	W10
	.byte		VOICE , 38
	.byte		N05   , Dn2 , v120
	.byte	W05
@ 020   ----------------------------------------
ch513_3_020:
	.byte		VOICE , 80
	.byte		N20   , Cn2 , v127
	.byte	W20
	.byte		VOICE , 38
	.byte		N10   , Dn2 
	.byte	W10
	.byte		VOICE , 80
	.byte		N05   , Cn2 
	.byte	W05
	.byte		N05   
	.byte	W05
	.byte		N10   , Cn2 , v064
	.byte	W20
	.byte		VOICE , 38
	.byte		N10   , Dn2 , v127
	.byte	W10
	.byte		VOICE , 62
	.byte		N05   , Cn2 
	.byte	W05
	.byte		VOICE , 80
	.byte		N05   , Gn1 
	.byte	W05
	.byte		N20   , Cn2 
	.byte	W16
	.byte	PEND
@ 021   ----------------------------------------
ch513_3_021:
	.byte	W04
	.byte		VOICE , 38
	.byte		N10   , Dn2 , v127
	.byte	W10
	.byte		VOICE , 80
	.byte		N05   , Cn2 
	.byte	W05
	.byte		N05   
	.byte	W05
	.byte		N10   , Cn2 , v064
	.byte	W10
	.byte		        Gn1 , v127
	.byte	W10
	.byte		VOICE , 38
	.byte		N05   , Dn2 
	.byte	W05
	.byte		VOICE , 80
	.byte		N10   , An1 
	.byte	W10
	.byte		VOICE , 38
	.byte		N05   , Dn2 
	.byte	W05
	.byte		VOICE , 80
	.byte		N20   , Bn1 
	.byte	W20
	.byte		VOICE , 38
	.byte		N10   , Dn2 
	.byte	W10
	.byte		VOICE , 80
	.byte		N05   , Bn1 
	.byte	W02
	.byte	PEND
@ 022   ----------------------------------------
ch513_3_022:
	.byte	W03
	.byte		N05   , Bn1 , v127
	.byte	W05
	.byte		N10   , Bn1 , v064
	.byte	W20
	.byte		VOICE , 38
	.byte		N15   , Dn2 , v127
	.byte	W15
	.byte		VOICE , 80
	.byte		N05   , Fs1 
	.byte	W05
	.byte		N20   , Bn1 
	.byte	W20
	.byte		VOICE , 38
	.byte		N10   , Dn2 
	.byte	W10
	.byte		VOICE , 80
	.byte		N05   , Bn1 
	.byte	W05
	.byte		N05   
	.byte	W05
	.byte		N10   , Bn1 , v064
	.byte	W08
	.byte	PEND
@ 023   ----------------------------------------
	.byte	W02
	.byte		        Gn1 , v127
	.byte	W10
	.byte		VOICE , 38
	.byte		N05   , Dn2 
	.byte	W05
	.byte		VOICE , 80
	.byte		N10   , An1 
	.byte	W10
	.byte		VOICE , 38
	.byte		N05   , Dn2 
	.byte	W05
	.byte		VOICE , 80
	.byte		N20   , Cn2 
	.byte	W20
	.byte		VOICE , 38
	.byte		N10   , Dn2 
	.byte	W10
	.byte		VOICE , 80
	.byte		N05   , Cn2 
	.byte	W05
	.byte		N05   
	.byte	W05
	.byte		N10   , Cn2 , v064
	.byte	W20
	.byte		VOICE , 38
	.byte		N10   , Dn2 , v127
	.byte	W04
@ 024   ----------------------------------------
	.byte	W06
	.byte		VOICE , 62
	.byte		N05   , Cn2 
	.byte	W05
	.byte		VOICE , 80
	.byte		N05   , Gn1 
	.byte	W05
	.byte		N20   , Cn2 
	.byte	W20
	.byte		VOICE , 38
	.byte		N10   , Dn2 
	.byte	W10
	.byte		VOICE , 80
	.byte		N05   , Cn2 
	.byte	W05
	.byte		N05   
	.byte	W05
	.byte		N10   , Cn2 , v064
	.byte	W10
	.byte		        Gn1 , v127
	.byte	W10
	.byte		VOICE , 38
	.byte		N05   , Dn2 
	.byte	W05
	.byte		VOICE , 80
	.byte		N10   , An1 
	.byte	W10
	.byte		VOICE , 62
	.byte		N05   , Cn2 
	.byte	W05
@ 025   ----------------------------------------
	.byte	PATT
	 .word	ch513_3_015
@ 026   ----------------------------------------
	.byte	W04
	.byte		VOICE , 38
	.byte		N10   , Dn2 , v127
	.byte	W10
	.byte		VOICE , 80
	.byte		N05   , Bn1 
	.byte	W05
	.byte		N05   
	.byte	W05
	.byte		N10   , Bn1 , v064
	.byte	W10
	.byte		N05   , Gn1 , v127
	.byte	W05
	.byte		VOICE , 38
	.byte		N10   , Dn2 
	.byte	W10
	.byte		VOICE , 80
	.byte		N15   , An1 
	.byte	W15
	.byte		N20   , Cn2 
	.byte	W20
	.byte		VOICE , 38
	.byte		N10   , Dn2 
	.byte	W10
	.byte		VOICE , 80
	.byte		N05   , Cn2 
	.byte	W02
@ 027   ----------------------------------------
	.byte	PATT
	 .word	ch513_3_017
@ 028   ----------------------------------------
	.byte	W02
	.byte		N10   , Gn1 , v127
	.byte	W10
	.byte		VOICE , 38
	.byte		N05   , Dn2 
	.byte	W05
	.byte		VOICE , 80
	.byte		N10   , An1 
	.byte	W10
	.byte		VOICE , 38
	.byte		N05   , Dn2 
	.byte	W05
	.byte		VOICE , 80
	.byte		N20   , Bn1 
	.byte	W20
	.byte		VOICE , 38
	.byte		N10   , Dn2 
	.byte	W10
	.byte		VOICE , 80
	.byte		N05   , Bn1 
	.byte	W05
	.byte		N05   
	.byte	W05
	.byte		N10   , Bn1 , v064
	.byte	W20
	.byte		VOICE , 38
	.byte		N15   , Dn2 , v127
	.byte	W04
@ 029   ----------------------------------------
	.byte	W11
	.byte		VOICE , 80
	.byte		N05   , Fs1 
	.byte	W05
	.byte		N20   , Bn1 
	.byte	W20
	.byte		VOICE , 38
	.byte		N10   , Dn2 
	.byte	W10
	.byte		VOICE , 80
	.byte		N05   , Bn1 
	.byte	W05
	.byte		N05   
	.byte	W05
	.byte		N10   , Bn1 , v064
	.byte	W10
	.byte		        Gn1 , v127
	.byte	W10
	.byte		VOICE , 38
	.byte		N05   , Dn2 
	.byte	W05
	.byte		VOICE , 80
	.byte		N10   , An1 
	.byte	W10
	.byte		VOICE , 38
	.byte		N05   , Dn2 
	.byte	W05
@ 030   ----------------------------------------
	.byte	PATT
	 .word	ch513_3_020
@ 031   ----------------------------------------
	.byte	PATT
	 .word	ch513_3_021
@ 032   ----------------------------------------
	.byte	PATT
	 .word	ch513_3_022
@ 033   ----------------------------------------
	.byte	W02
	.byte		N10   , Gn1 , v127
	.byte	W10
	.byte		VOICE , 38
	.byte		N05   , Dn2 
	.byte	W05
	.byte		VOICE , 80
	.byte		N10   , An1 
	.byte	W10
	.byte		VOICE , 38
	.byte		N05   , Dn2 
	.byte	W68
	.byte	W01
	.byte	GOTO
	 .word	ch513_3_B1
ch513_3_B2:
@ 034   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

ch513_4:
	.byte		VOL   , 127*ch513_mvl/mxv
	.byte	KEYSH , ch513_key+0
ch513_4_B1:
@ 000   ----------------------------------------
ch513_4_000:
	.byte		VOICE , 61
	.byte		N10   , Cs2 , v127
	.byte	W10
	.byte		VOICE , 84
	.byte		N10   , Cn2 
	.byte	W10
	.byte		VOICE , 61
	.byte		N10   , Cs2 
	.byte	W10
	.byte		VOICE , 84
	.byte		N10   , Cn2 
	.byte	W10
	.byte		VOICE , 61
	.byte		N10   , Cs2 
	.byte	W10
	.byte		VOICE , 84
	.byte		N10   , Cn2 
	.byte	W10
	.byte		VOICE , 61
	.byte		N10   , Cs2 
	.byte	W10
	.byte		VOICE , 84
	.byte		N05   , Cn2 
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Cs2 , v104
	.byte	W05
	.byte		N10   , Cs2 , v127
	.byte	W10
	.byte		VOICE , 84
	.byte		N10   , Cn2 
	.byte	W06
	.byte	PEND
@ 001   ----------------------------------------
ch513_4_001:
	.byte	W04
	.byte		VOICE , 61
	.byte		N10   , Cs2 , v127
	.byte	W10
	.byte		VOICE , 84
	.byte		N10   , Cn2 
	.byte	W10
	.byte		VOICE , 61
	.byte		N05   , Cs2 
	.byte	W05
	.byte		VOICE , 84
	.byte		N05   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 85
	.byte		N10   , Cn2 , v064
	.byte	W10
	.byte		VOICE , 61
	.byte		N05   , Cs2 , v127
	.byte	W05
	.byte		VOICE , 84
	.byte		N05   , Cn2 
	.byte	W05
	.byte		VOICE , 85
	.byte		N10   , Cn2 , v064
	.byte	W10
	.byte		VOICE , 61
	.byte		N10   , Cs2 , v127
	.byte	W10
	.byte		VOICE , 84
	.byte		N10   , Cn2 
	.byte	W10
	.byte		VOICE , 61
	.byte		N10   , Cs2 
	.byte	W10
	.byte		VOICE , 84
	.byte		N10   , Cn2 
	.byte	W02
	.byte	PEND
@ 002   ----------------------------------------
	.byte	W08
	.byte		VOICE , 61
	.byte		N10   , Cs2 
	.byte	W10
	.byte		VOICE , 84
	.byte		N10   , Cn2 
	.byte	W10
	.byte		VOICE , 61
	.byte		N10   , Cs2 
	.byte	W10
	.byte		VOICE , 84
	.byte		N05   , Cn2 
	.byte	W05
	.byte		VOICE , 85
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Cs2 , v127
	.byte	W05
	.byte		VOICE , 85
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		VOICE , 84
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 61
	.byte		N10   , Cs2 
	.byte	W10
	.byte		VOICE , 84
	.byte		N10   , Cn2 
	.byte	W10
	.byte		VOICE , 61
	.byte		N10   , Cs2 
	.byte	W08
@ 003   ----------------------------------------
	.byte	W02
	.byte		VOICE , 84
	.byte		N10   , Cn2 
	.byte	W10
	.byte		VOICE , 61
	.byte		N10   , Cs2 
	.byte	W10
	.byte		VOICE , 84
	.byte		N10   , Cn2 
	.byte	W10
	.byte		VOICE , 61
	.byte		N10   , Cs2 
	.byte	W10
	.byte		VOICE , 84
	.byte		N10   , Cn2 
	.byte	W10
	.byte		VOICE , 61
	.byte		N10   , Cs2 
	.byte	W10
	.byte		VOICE , 84
	.byte		N10   , Cn2 
	.byte	W10
	.byte		VOICE , 61
	.byte		N10   , Cs2 
	.byte	W10
	.byte		VOICE , 84
	.byte		N10   , Cn2 
	.byte	W10
	.byte		VOICE , 61
	.byte		N10   , Cs2 
	.byte	W04
@ 004   ----------------------------------------
ch513_4_004:
	.byte	W06
	.byte		VOICE , 84
	.byte		N05   , Cn2 , v127
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Cs2 , v104
	.byte	W05
	.byte		N10   , Cs2 , v127
	.byte	W10
	.byte		VOICE , 84
	.byte		N10   , Cn2 
	.byte	W10
	.byte		VOICE , 61
	.byte		N10   , Cs2 
	.byte	W10
	.byte		VOICE , 84
	.byte		N10   , Cn2 
	.byte	W10
	.byte		VOICE , 61
	.byte		N05   , Cs2 
	.byte	W05
	.byte		VOICE , 84
	.byte		N05   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 85
	.byte		N10   , Cn2 , v064
	.byte	W10
	.byte		VOICE , 61
	.byte		N05   , Cs2 , v127
	.byte	W05
	.byte		VOICE , 84
	.byte		N05   , Cn2 
	.byte	W05
	.byte		VOICE , 85
	.byte		N10   , Cn2 , v064
	.byte	W10
	.byte	PEND
@ 005   ----------------------------------------
ch513_4_005:
	.byte		VOICE , 61
	.byte		N10   , Cs2 , v127
	.byte	W10
	.byte		VOICE , 84
	.byte		N10   , Cn2 
	.byte	W10
	.byte		VOICE , 61
	.byte		N10   , Cs2 
	.byte	W10
	.byte		VOICE , 84
	.byte		N10   , Cn2 
	.byte	W10
	.byte		VOICE , 61
	.byte		N10   , Cs2 
	.byte	W10
	.byte		VOICE , 84
	.byte		N10   , Cn2 
	.byte	W10
	.byte		VOICE , 61
	.byte		N10   , Cs2 
	.byte	W10
	.byte		VOICE , 84
	.byte		N05   , Cn2 
	.byte	W05
	.byte		VOICE , 85
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Cs2 , v127
	.byte	W05
	.byte		VOICE , 85
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		VOICE , 84
	.byte		N10   , Cn2 , v127
	.byte	W06
	.byte	PEND
@ 006   ----------------------------------------
	.byte	W04
	.byte		VOICE , 61
	.byte		N10   , Cs2 
	.byte	W10
	.byte		VOICE , 84
	.byte		N10   , Cn2 
	.byte	W10
	.byte		VOICE , 61
	.byte		N10   , Cs2 
	.byte	W10
	.byte		VOICE , 84
	.byte		N10   , Cn2 
	.byte	W10
	.byte		VOICE , 61
	.byte		N10   , Cs2 
	.byte	W10
	.byte		VOICE , 84
	.byte		N10   , Cn2 
	.byte	W10
	.byte		VOICE , 61
	.byte		N10   , Cs2 
	.byte	W10
	.byte		VOICE , 84
	.byte		N10   , Cn2 
	.byte	W10
	.byte		VOICE , 61
	.byte		N10   , Cs2 
	.byte	W10
	.byte		VOICE , 84
	.byte		N10   , Cn2 
	.byte	W02
@ 007   ----------------------------------------
ch513_4_007:
	.byte	W08
	.byte		VOICE , 61
	.byte		N10   , Cs2 , v127
	.byte	W10
	.byte		VOICE , 84
	.byte		N10   , Cn2 
	.byte	W10
	.byte		VOICE , 61
	.byte		N10   , Cs2 
	.byte	W10
	.byte		VOICE , 84
	.byte		N05   , Cn2 
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Cs2 , v104
	.byte	W05
	.byte		N10   , Cs2 , v127
	.byte	W10
	.byte		VOICE , 84
	.byte		N10   , Cn2 
	.byte	W10
	.byte		VOICE , 61
	.byte		N10   , Cs2 
	.byte	W10
	.byte		VOICE , 84
	.byte		N10   , Cn2 
	.byte	W10
	.byte		VOICE , 61
	.byte		N05   , Cs2 
	.byte	W05
	.byte		VOICE , 84
	.byte		N05   , Cn2 , v096
	.byte	W03
	.byte	PEND
@ 008   ----------------------------------------
ch513_4_008:
	.byte	W02
	.byte		VOICE , 85
	.byte		N10   , Cn2 , v064
	.byte	W10
	.byte		VOICE , 61
	.byte		N05   , Cs2 , v127
	.byte	W05
	.byte		VOICE , 84
	.byte		N05   , Cn2 
	.byte	W05
	.byte		VOICE , 85
	.byte		N10   , Cn2 , v064
	.byte	W10
	.byte		VOICE , 61
	.byte		N10   , Cs2 , v127
	.byte	W10
	.byte		VOICE , 84
	.byte		N10   , Cn2 
	.byte	W10
	.byte		VOICE , 61
	.byte		N10   , Cs2 
	.byte	W10
	.byte		VOICE , 84
	.byte		N10   , Cn2 
	.byte	W10
	.byte		VOICE , 61
	.byte		N10   , Cs2 
	.byte	W10
	.byte		VOICE , 84
	.byte		N10   , Cn2 
	.byte	W10
	.byte		VOICE , 61
	.byte		N10   , Cs2 
	.byte	W04
	.byte	PEND
@ 009   ----------------------------------------
	.byte	W06
	.byte		VOICE , 84
	.byte		N05   , Cn2 
	.byte	W05
	.byte		VOICE , 85
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Cs2 , v127
	.byte	W05
	.byte		VOICE , 85
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		VOICE , 84
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 61
	.byte		N10   , Cs2 
	.byte	W10
	.byte		VOICE , 84
	.byte		N10   , Cn2 
	.byte	W10
	.byte		VOICE , 61
	.byte		N10   , Cs2 
	.byte	W10
	.byte		VOICE , 84
	.byte		N10   , Cn2 
	.byte	W10
	.byte		VOICE , 61
	.byte		N10   , Cs2 
	.byte	W10
	.byte		VOICE , 84
	.byte		N10   , Cn2 
	.byte	W10
@ 010   ----------------------------------------
	.byte	PATT
	 .word	ch513_4_000
@ 011   ----------------------------------------
	.byte	PATT
	 .word	ch513_4_001
@ 012   ----------------------------------------
	.byte	W08
	.byte		VOICE , 61
	.byte		N10   , Cs2 , v127
	.byte	W10
	.byte		VOICE , 84
	.byte		N10   , Cn2 
	.byte	W10
	.byte		VOICE , 61
	.byte		N10   , Cs2 
	.byte	W10
	.byte		VOICE , 84
	.byte		N05   , Cn2 
	.byte	W05
	.byte		VOICE , 85
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Cs2 , v127
	.byte	W05
	.byte		VOICE , 85
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		VOICE , 84
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 61
	.byte		N10   , Cs2 
	.byte	W10
	.byte		VOICE , 84
	.byte		N10   , Cn2 
	.byte	W10
	.byte		VOICE , 61
	.byte		N05   , Cs2 
	.byte	W05
	.byte		VOICE , 38
	.byte		N05   , Dn2 , v080
	.byte	W03
@ 013   ----------------------------------------
	.byte	W02
	.byte		N10   , Dn2 , v127
	.byte	W10
	.byte		VOICE , 61
	.byte		N05   , Cs2 
	.byte	W05
	.byte		VOICE , 38
	.byte		N05   , Dn2 , v104
	.byte	W05
	.byte		VOICE , 84
	.byte		N05   , Cn2 , v127
	.byte	W05
	.byte		VOICE , 38
	.byte		N05   , Dn2 
	.byte	W05
	.byte		VOICE , 61
	.byte		N10   , Cs2 
	.byte	W10
	.byte		VOICE , 84
	.byte		N10   , Cn2 
	.byte	W10
	.byte		VOICE , 61
	.byte		N10   , Cs2 
	.byte	W10
	.byte		VOICE , 84
	.byte		N10   , Cn2 
	.byte	W10
	.byte		VOICE , 61
	.byte		N10   , Cs2 
	.byte	W10
	.byte		VOICE , 84
	.byte		N10   , Cn2 
	.byte	W10
	.byte		VOICE , 61
	.byte		N10   , Cs2 
	.byte	W04
@ 014   ----------------------------------------
	.byte	PATT
	 .word	ch513_4_004
@ 015   ----------------------------------------
	.byte	PATT
	 .word	ch513_4_005
@ 016   ----------------------------------------
	.byte	W04
	.byte		VOICE , 61
	.byte		N10   , Cs2 , v127
	.byte	W10
	.byte		VOICE , 84
	.byte		N10   , Cn2 
	.byte	W10
	.byte		VOICE , 61
	.byte		N05   , Cs2 
	.byte	W05
	.byte		VOICE , 38
	.byte		N05   , Dn2 , v104
	.byte	W05
	.byte		VOICE , 84
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 61
	.byte		N10   , Cs2 
	.byte	W10
	.byte		VOICE , 38
	.byte		N10   , Dn2 , v104
	.byte	W10
	.byte		VOICE , 61
	.byte		N10   , Cs2 , v127
	.byte	W10
	.byte		VOICE , 84
	.byte		N10   , Cn2 
	.byte	W10
	.byte		VOICE , 61
	.byte		N10   , Cs2 
	.byte	W10
	.byte		VOICE , 84
	.byte		N10   , Cn2 
	.byte	W02
@ 017   ----------------------------------------
	.byte	PATT
	 .word	ch513_4_007
@ 018   ----------------------------------------
	.byte	PATT
	 .word	ch513_4_008
@ 019   ----------------------------------------
	.byte	W06
	.byte		VOICE , 84
	.byte		N05   , Cn2 , v127
	.byte	W05
	.byte		VOICE , 85
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Cs2 , v127
	.byte	W05
	.byte		VOICE , 85
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		VOICE , 84
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 61
	.byte		N10   , Cs2 
	.byte	W10
	.byte		VOICE , 84
	.byte		N10   , Cn2 
	.byte	W10
	.byte		VOICE , 61
	.byte		N10   , Cs2 
	.byte	W10
	.byte		VOICE , 84
	.byte		N05   , Cn2 
	.byte	W05
	.byte		VOICE , 6
	.byte		N10   
	.byte	W10
	.byte		VOICE , 38
	.byte		N05   , Dn2 
	.byte	W05
	.byte		VOICE , 61
	.byte		N10   , Cs2 
	.byte	W10
@ 020   ----------------------------------------
	.byte		N10   
	.byte	W10
	.byte		VOICE , 84
	.byte		N10   , Cn2 
	.byte	W10
	.byte		VOICE , 61
	.byte		N10   , Cs2 
	.byte	W10
	.byte		VOICE , 84
	.byte		N10   , Cn2 
	.byte	W10
	.byte		VOICE , 61
	.byte		N10   , Cs2 
	.byte	W10
	.byte		VOICE , 84
	.byte		N10   , Cn2 
	.byte	W10
	.byte		VOICE , 61
	.byte		N10   , Cs2 
	.byte	W10
	.byte		VOICE , 84
	.byte		N05   , Cn2 
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Cs2 , v104
	.byte	W05
	.byte		N10   , Cs2 , v127
	.byte	W10
	.byte		VOICE , 84
	.byte		N10   , Cn2 
	.byte	W06
@ 021   ----------------------------------------
	.byte	PATT
	 .word	ch513_4_001
@ 022   ----------------------------------------
ch513_4_022:
	.byte	W08
	.byte		VOICE , 61
	.byte		N10   , Cs2 , v127
	.byte	W10
	.byte		VOICE , 84
	.byte		N10   , Cn2 
	.byte	W10
	.byte		VOICE , 61
	.byte		N10   , Cs2 
	.byte	W10
	.byte		VOICE , 84
	.byte		N05   , Cn2 
	.byte	W05
	.byte		VOICE , 85
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Cs2 , v127
	.byte	W05
	.byte		VOICE , 85
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		VOICE , 84
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 61
	.byte		N10   , Cs2 
	.byte	W10
	.byte		VOICE , 84
	.byte		N10   , Cn2 
	.byte	W10
	.byte		VOICE , 61
	.byte		N05   , Cs2 
	.byte	W05
	.byte		VOICE , 38
	.byte		N05   , Dn2 , v104
	.byte	W03
	.byte	PEND
@ 023   ----------------------------------------
	.byte	W02
	.byte		VOICE , 84
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 61
	.byte		N10   , Cs2 
	.byte	W10
	.byte		VOICE , 38
	.byte		N10   , Dn2 , v104
	.byte	W10
	.byte		VOICE , 61
	.byte		N10   , Cs2 , v127
	.byte	W10
	.byte		VOICE , 84
	.byte		N10   , Cn2 
	.byte	W10
	.byte		VOICE , 61
	.byte		N10   , Cs2 
	.byte	W10
	.byte		VOICE , 84
	.byte		N10   , Cn2 
	.byte	W10
	.byte		VOICE , 61
	.byte		N10   , Cs2 
	.byte	W10
	.byte		VOICE , 84
	.byte		N10   , Cn2 
	.byte	W10
	.byte		VOICE , 61
	.byte		N10   , Cs2 
	.byte	W04
@ 024   ----------------------------------------
	.byte	PATT
	 .word	ch513_4_004
@ 025   ----------------------------------------
	.byte	PATT
	 .word	ch513_4_005
@ 026   ----------------------------------------
	.byte	W04
	.byte		VOICE , 61
	.byte		N10   , Cs2 , v127
	.byte	W10
	.byte		VOICE , 84
	.byte		N10   , Cn2 
	.byte	W10
	.byte		VOICE , 61
	.byte		N10   , Cs2 
	.byte	W10
	.byte		VOICE , 38
	.byte		N10   , Dn2 , v104
	.byte	W10
	.byte		VOICE , 61
	.byte		N10   , Cs2 , v127
	.byte	W10
	.byte		VOICE , 38
	.byte		N05   , Dn2 , v104
	.byte	W05
	.byte		        Dn2 , v127
	.byte	W05
	.byte		VOICE , 61
	.byte		N10   , Cs2 
	.byte	W10
	.byte		VOICE , 84
	.byte		N10   , Cn2 
	.byte	W10
	.byte		VOICE , 61
	.byte		N10   , Cs2 
	.byte	W10
	.byte		VOICE , 84
	.byte		N10   , Cn2 
	.byte	W02
@ 027   ----------------------------------------
	.byte	PATT
	 .word	ch513_4_007
@ 028   ----------------------------------------
	.byte	PATT
	 .word	ch513_4_008
@ 029   ----------------------------------------
	.byte	W06
	.byte		VOICE , 84
	.byte		N05   , Cn2 , v127
	.byte	W05
	.byte		VOICE , 85
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Cs2 , v127
	.byte	W05
	.byte		VOICE , 85
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		VOICE , 84
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 61
	.byte		N10   , Cs2 
	.byte	W10
	.byte		VOICE , 84
	.byte		N10   , Cn2 
	.byte	W10
	.byte		VOICE , 61
	.byte		N05   , Cs2 
	.byte	W05
	.byte		VOICE , 38
	.byte		N05   , Dn2 , v104
	.byte	W05
	.byte		VOICE , 84
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 61
	.byte		N10   , Cs2 
	.byte	W10
	.byte		VOICE , 38
	.byte		N10   , Dn2 , v104
	.byte	W10
@ 030   ----------------------------------------
	.byte	PATT
	 .word	ch513_4_000
@ 031   ----------------------------------------
	.byte	PATT
	 .word	ch513_4_001
@ 032   ----------------------------------------
	.byte	PATT
	 .word	ch513_4_022
@ 033   ----------------------------------------
	.byte	W02
	.byte		VOICE , 84
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 61
	.byte		N10   , Cs2 
	.byte	W10
	.byte		VOICE , 38
	.byte		N10   , Dn2 , v104
	.byte	W72
	.byte	W02
	.byte	GOTO
	 .word	ch513_4_B1
ch513_4_B2:
@ 034   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

ch513:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	ch513_pri	@ Priority
	.byte	ch513_rev	@ Reverb.

	.word	ch513_grp

	.word	ch513_1
	.word	ch513_2
	.word	ch513_3
	.word	ch513_4

	.end
