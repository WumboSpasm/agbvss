	.include "MPlayDef.s"

	.equ	ch41_grp, voicegroup000
	.equ	ch41_pri, 128
	.equ	ch41_rev, reverb_set+50
	.equ	ch41_mvl, 127
	.equ	ch41_key, 0
	.equ	ch41_tbs, 1
	.equ	ch41_exg, 0
	.equ	ch41_cmp, 1

	.section .rodata
	.global	ch41
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

ch41_1:
	.byte		VOL   , 127*ch41_mvl/mxv
	.byte	KEYSH , ch41_key+0
ch41_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 100*ch41_tbs/2
	.byte		VOICE , 42
	.byte		N15   , En2 , v127
	.byte	W15
	.byte		VOICE , 76
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 77
	.byte		N15   
	.byte	W15
	.byte		VOICE , 76
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 42
	.byte		N15   , Bn1 
	.byte	W15
	.byte		VOICE , 78
	.byte		N10   
	.byte	W10
	.byte		VOICE , 76
	.byte		N05   
	.byte	W05
	.byte		VOICE , 77
	.byte		N15   
	.byte	W06
@ 001   ----------------------------------------
	.byte	W09
	.byte		VOICE , 78
	.byte		N10   
	.byte	W10
	.byte		VOICE , 77
	.byte		N05   
	.byte	W05
	.byte		VOICE , 42
	.byte		N15   , En2 
	.byte	W15
	.byte		VOICE , 76
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 77
	.byte		N15   
	.byte	W15
	.byte		VOICE , 76
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 42
	.byte		N10   , Bn1 
	.byte	W10
	.byte		VOICE , 79
	.byte	W02
@ 002   ----------------------------------------
	.byte	W03
	.byte		        77
	.byte		N10   
	.byte	W10
	.byte		VOICE , 79
	.byte	W05
	.byte		        42
	.byte		N15   
	.byte	W15
	.byte		VOICE , 77
	.byte		N15   , Bn1 , v080
	.byte	W15
	.byte		VOICE , 42
	.byte		N15   , En2 , v127
	.byte	W15
	.byte		VOICE , 76
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 77
	.byte		N15   
	.byte	W15
	.byte		VOICE , 76
	.byte		N10   
	.byte	W03
@ 003   ----------------------------------------
	.byte	W07
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 42
	.byte		N15   , Bn1 
	.byte	W15
	.byte		VOICE , 78
	.byte		N10   
	.byte	W10
	.byte		VOICE , 76
	.byte		N05   
	.byte	W05
	.byte		VOICE , 77
	.byte		N15   
	.byte	W15
	.byte		VOICE , 78
	.byte		N10   
	.byte	W10
	.byte		VOICE , 77
	.byte		N05   
	.byte	W05
	.byte		VOICE , 42
	.byte		N15   
	.byte	W15
	.byte		VOICE , 78
	.byte		N10   
	.byte	W09
@ 004   ----------------------------------------
	.byte	W01
	.byte		VOICE , 76
	.byte		N05   
	.byte	W05
	.byte		VOICE , 77
	.byte		N15   
	.byte	W15
	.byte		VOICE , 78
	.byte		N10   
	.byte	W10
	.byte		VOICE , 77
	.byte		N05   
	.byte	W05
	.byte		VOICE , 42
	.byte		N15   , En2 
	.byte	W15
	.byte		VOICE , 76
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 77
	.byte		N15   
	.byte	W15
	.byte		VOICE , 76
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
@ 005   ----------------------------------------
	.byte		VOICE , 42
	.byte		N15   , An1 
	.byte	W15
	.byte		VOICE , 76
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 77
	.byte		N15   
	.byte	W15
	.byte		VOICE , 76
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 42
	.byte		N15   , En2 
	.byte	W15
	.byte		VOICE , 76
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 77
	.byte		N15   
	.byte	W06
@ 006   ----------------------------------------
	.byte	W09
	.byte		VOICE , 76
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 42
	.byte		N15   , Fs2 
	.byte	W15
	.byte		VOICE , 76
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 77
	.byte		N15   
	.byte	W15
	.byte		VOICE , 76
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 42
	.byte		N15   , Bn1 
	.byte	W12
@ 007   ----------------------------------------
	.byte	W03
	.byte		VOICE , 76
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 77
	.byte		N15   
	.byte	W15
	.byte		VOICE , 76
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 42
	.byte		N15   , En2 
	.byte	W15
	.byte		VOICE , 76
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 77
	.byte		N15   
	.byte	W15
	.byte		VOICE , 76
	.byte		N10   
	.byte	W03
@ 008   ----------------------------------------
	.byte	W07
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 42
	.byte		N15   , Bn1 
	.byte	W15
	.byte		VOICE , 78
	.byte		N10   
	.byte	W10
	.byte		VOICE , 76
	.byte		N05   
	.byte	W05
	.byte		VOICE , 77
	.byte		N15   
	.byte	W15
	.byte		VOICE , 78
	.byte		N10   
	.byte	W10
	.byte		VOICE , 77
	.byte		N05   
	.byte	W05
	.byte		VOICE , 42
	.byte		N15   , An1 
	.byte	W15
	.byte		VOICE , 76
	.byte		N10   
	.byte	W09
@ 009   ----------------------------------------
	.byte	W01
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 77
	.byte		N15   
	.byte	W15
	.byte		VOICE , 76
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 42
	.byte		N15   , Gs1 
	.byte	W15
	.byte		VOICE , 76
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 77
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 76
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
@ 010   ----------------------------------------
	.byte		VOICE , 42
	.byte		N15   , An1 
	.byte	W15
	.byte		VOICE , 76
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 77
	.byte		N15   , Bn1 
	.byte	W15
	.byte		VOICE , 76
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 42
	.byte		N15   , En2 
	.byte	W15
	.byte		VOICE , 76
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 77
	.byte		N15   , Cs2 
	.byte	W06
@ 011   ----------------------------------------
	.byte	W09
	.byte		VOICE , 76
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 42
	.byte		N15   , An1 
	.byte	W15
	.byte		VOICE , 76
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 77
	.byte		N15   , Bn1 
	.byte	W15
	.byte		VOICE , 76
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 42
	.byte		N15   , En2 
	.byte	W12
@ 012   ----------------------------------------
	.byte	W03
	.byte		VOICE , 77
	.byte		N15   , Bn1 
	.byte	W15
	.byte		VOICE , 42
	.byte		N15   , En2 
	.byte	W15
	.byte		VOICE , 77
	.byte		N15   , En2 , v072
	.byte	W15
	.byte		VOICE , 42
	.byte		N15   , En2 , v127
	.byte	W15
	.byte		VOICE , 76
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 77
	.byte		N15   
	.byte	W15
	.byte		VOICE , 76
	.byte		N10   
	.byte	W03
@ 013   ----------------------------------------
	.byte	W07
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 42
	.byte		N15   
	.byte	W15
	.byte		VOICE , 76
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 77
	.byte		N15   
	.byte	W15
	.byte		VOICE , 76
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 42
	.byte		N15   , Dn2 
	.byte	W15
	.byte		VOICE , 76
	.byte		N10   
	.byte	W09
@ 014   ----------------------------------------
	.byte	W01
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 77
	.byte		N15   
	.byte	W15
	.byte		VOICE , 76
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 42
	.byte		N15   
	.byte	W15
	.byte		VOICE , 76
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 77
	.byte		N15   
	.byte	W15
	.byte		VOICE , 76
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
@ 015   ----------------------------------------
	.byte		VOICE , 42
	.byte		N15   , En2 
	.byte	W15
	.byte		VOICE , 76
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 77
	.byte		N15   
	.byte	W15
	.byte		VOICE , 76
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 42
	.byte		N15   
	.byte	W15
	.byte		VOICE , 76
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 77
	.byte		N15   
	.byte	W06
@ 016   ----------------------------------------
	.byte	W09
	.byte		VOICE , 76
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 42
	.byte		N15   , Dn2 
	.byte	W15
	.byte		VOICE , 76
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 77
	.byte		N15   
	.byte	W15
	.byte		VOICE , 76
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 42
	.byte		N15   
	.byte	W12
@ 017   ----------------------------------------
	.byte	W03
	.byte		VOICE , 76
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 77
	.byte		N15   
	.byte	W15
	.byte		VOICE , 76
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 42
	.byte		N15   , Fn2 
	.byte	W15
	.byte		VOICE , 76
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 77
	.byte		N15   
	.byte	W15
	.byte		VOICE , 76
	.byte		N10   
	.byte	W03
@ 018   ----------------------------------------
	.byte	W07
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 42
	.byte		N15   
	.byte	W15
	.byte		VOICE , 76
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 77
	.byte		N15   
	.byte	W15
	.byte		VOICE , 76
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 42
	.byte		N15   , Ds2 
	.byte	W15
	.byte		VOICE , 76
	.byte		N10   
	.byte	W09
@ 019   ----------------------------------------
	.byte	W01
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 77
	.byte		N15   
	.byte	W15
	.byte		VOICE , 76
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 42
	.byte		N15   
	.byte	W15
	.byte		VOICE , 76
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 77
	.byte		N15   
	.byte	W15
	.byte		VOICE , 76
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
@ 020   ----------------------------------------
	.byte		VOICE , 42
	.byte		N15   , Fn2 
	.byte	W15
	.byte		VOICE , 76
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 77
	.byte		N15   
	.byte	W15
	.byte		VOICE , 76
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 42
	.byte		N15   
	.byte	W15
	.byte		VOICE , 76
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 77
	.byte		N15   
	.byte	W06
@ 021   ----------------------------------------
	.byte	W09
	.byte		VOICE , 76
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 42
	.byte		N15   , Ds2 
	.byte	W15
	.byte		VOICE , 76
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 77
	.byte		N15   
	.byte	W15
	.byte		VOICE , 76
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 42
	.byte		N15   
	.byte	W12
@ 022   ----------------------------------------
	.byte	W03
	.byte		VOICE , 76
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 77
	.byte		N15   
	.byte	W15
	.byte		VOICE , 76
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 74
	.byte		N24   , Ds2 , v080
	.byte	W24
	.byte	W01
	.byte		N05   , Fn2 
	.byte	W05
	.byte		N15   , Dn2 
	.byte	W15
	.byte		        As1 
	.byte	W03
@ 023   ----------------------------------------
	.byte	W12
	.byte		N20   , Cn2 
	.byte	W20
	.byte		N05   , Dn2 
	.byte	W05
	.byte		        Cn2 
	.byte	W05
	.byte		N15   , As1 
	.byte	W15
	.byte		        Fn1 
	.byte	W15
	.byte		N24   , Ds1 
	.byte	W24
@ 024   ----------------------------------------
	.byte	W01
	.byte		MOD   , 42
	.byte		N20   , Cn2 
	.byte	W20
	.byte		MOD   , 42
	.byte		N24   , Cn2 , v052
	.byte	W24
	.byte	W01
	.byte		MOD   , 42
	.byte		N20   , Cn2 , v048
	.byte	W20
	.byte		MOD   , 42
	.byte		N30   , Cn2 , v040
	.byte	W30
@ 025   ----------------------------------------
	.byte		MOD   , 0
	.byte		N24   , Dn1 , v080
	.byte	W24
	.byte	W01
	.byte		N20   , Cn2 
	.byte	W20
	.byte		MOD   , 42
	.byte		N30   , As1 
	.byte	W30
	.byte		MOD   , 42
	.byte		N24   , As1 , v056
	.byte	W21
@ 026   ----------------------------------------
	.byte	W04
	.byte		MOD   , 42
	.byte		N20   , As1 , v048
	.byte	W20
	.byte		MOD   , 0
	.byte		N24   , Ds1 , v080
	.byte	W24
	.byte	W01
	.byte		N20   , Cn2 
	.byte	W20
	.byte		MOD   , 42
	.byte		N20   , Gn1 
	.byte	W20
	.byte		MOD   , 42
	.byte		N20   , Gn1 , v052
	.byte	W07
@ 027   ----------------------------------------
	.byte	W13
	.byte		MOD   , 42
	.byte		N24   , Gn1 , v048
	.byte	W24
	.byte	W01
	.byte		MOD   , 0
	.byte		N05   , Fn1 , v080
	.byte	W05
	.byte		        Gn1 
	.byte	W05
	.byte		MOD   , 42
	.byte		N24   , Fn1 
	.byte	W24
	.byte	W01
	.byte		MOD   , 42
	.byte		N24   , Fn1 , v052
	.byte	W23
@ 028   ----------------------------------------
	.byte	W02
	.byte		MOD   , 42
	.byte		N24   , Fn1 , v048
	.byte	W24
	.byte	W01
	.byte		MOD   , 42
	.byte		N24   , Fn1 , v044
	.byte	W24
	.byte	W01
	.byte		MOD   , 42
	.byte		N20   , Fn1 , v040
	.byte	W20
	.byte		VOICE , 45
	.byte		MOD   , 0
	.byte	W10
	.byte		N05   , En2 , v127
	.byte	W05
	.byte		N15   , Cs2 
	.byte	W09
@ 029   ----------------------------------------
	.byte	W06
	.byte		N10   
	.byte	W10
	.byte		        Bn1 
	.byte	W10
	.byte		        Cs2 
	.byte	W10
	.byte		        Dn2 
	.byte	W10
	.byte		        Cs2 
	.byte	W10
	.byte		        Bn1 
	.byte	W10
	.byte		MOD   , 42
	.byte		N24   , An1 
	.byte	W24
	.byte	W01
	.byte		MOD   , 42
	.byte		N15   , An1 , v048
	.byte	W05
@ 030   ----------------------------------------
	.byte	W10
	.byte		MOD   , 42
	.byte		N10   , An1 , v044
	.byte	W10
	.byte		MOD   , 0
	.byte		N05   , Cn2 , v127
	.byte	W05
	.byte		        Dn2 
	.byte	W05
	.byte		N10   , En2 
	.byte	W10
	.byte		        Fn2 
	.byte	W10
	.byte		        En2 
	.byte	W10
	.byte		        Cs2 
	.byte	W10
	.byte		MOD   , 42
	.byte		N30   , An1 
	.byte	W24
	.byte	W02
@ 031   ----------------------------------------
	.byte	W04
	.byte		MOD   , 42
	.byte		N10   , An1 , v048
	.byte	W10
	.byte		MOD   , 42
	.byte		N10   , An1 , v040
	.byte	W10
	.byte		MOD   , 0
	.byte	W10
	.byte		N05   , Ds2 , v127
	.byte	W05
	.byte		MOD   , 42
	.byte		N15   , En2 
	.byte	W15
	.byte		MOD   , 0
	.byte		N10   
	.byte	W10
	.byte		N15   
	.byte	W15
	.byte		N10   , Cs2 
	.byte	W10
	.byte		N05   , Cs2 , v064
	.byte	W05
	.byte		N15   , Cs2 , v127
	.byte	W02
@ 032   ----------------------------------------
	.byte	W13
	.byte		MOD   , 42
	.byte		N20   , An1 
	.byte	W20
	.byte		MOD   , 42
	.byte		N15   , An1 , v056
	.byte	W15
	.byte		MOD   , 42
	.byte		N10   , An1 , v048
	.byte	W10
	.byte		MOD   , 0
	.byte		N10   , Cs2 , v127
	.byte	W10
	.byte		        Cn2 
	.byte	W10
	.byte		        Bn1 
	.byte	W10
	.byte		        Gs1 
	.byte	W08
@ 033   ----------------------------------------
	.byte	W02
	.byte		        Fs1 
	.byte	W10
	.byte		N15   , En1 
	.byte	W15
	.byte		N10   , Ds1 
	.byte	W10
	.byte		MOD   , 42
	.byte		N24   , Dn1 
	.byte	W24
	.byte	W01
	.byte		MOD   , 0
	.byte		N05   , Bn1 , v072
	.byte	W05
	.byte		        Cn2 , v100
	.byte	W05
	.byte		VOICE , 42
	.byte		N15   , En2 , v127
	.byte	W15
	.byte		VOICE , 76
	.byte		N10   
	.byte	W09
@ 034   ----------------------------------------
	.byte	W01
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 77
	.byte		N15   
	.byte	W15
	.byte		VOICE , 76
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 42
	.byte		N15   
	.byte	W15
	.byte		VOICE , 76
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 77
	.byte		N15   
	.byte	W15
	.byte		VOICE , 76
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
@ 035   ----------------------------------------
	.byte		VOICE , 42
	.byte		N15   , An1 
	.byte	W15
	.byte		VOICE , 76
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 77
	.byte		N15   
	.byte	W15
	.byte		VOICE , 76
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 42
	.byte		N15   
	.byte	W15
	.byte		VOICE , 76
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 77
	.byte		N15   
	.byte	W06
@ 036   ----------------------------------------
	.byte	W09
	.byte		VOICE , 76
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 42
	.byte		N15   , En2 
	.byte	W15
	.byte		VOICE , 76
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 77
	.byte		N15   
	.byte	W15
	.byte		VOICE , 76
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 42
	.byte		N15   
	.byte	W12
@ 037   ----------------------------------------
	.byte	W03
	.byte		VOICE , 76
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 77
	.byte		N15   
	.byte	W15
	.byte		VOICE , 76
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 42
	.byte		N15   , Fs2 
	.byte	W15
	.byte		VOICE , 76
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 77
	.byte		N15   
	.byte	W15
	.byte		VOICE , 76
	.byte		N10   
	.byte	W03
@ 038   ----------------------------------------
	.byte	W07
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 42
	.byte		N15   , Bn1 
	.byte	W15
	.byte		VOICE , 76
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W05
	.byte		VOICE , 77
	.byte		N15   
	.byte	W15
	.byte		VOICE , 76
	.byte		N10   
	.byte	W10
	.byte		VOICE , 78
	.byte		N05   
	.byte	W28
	.byte	W01
	.byte	GOTO
	 .word	ch41_1_B1
ch41_1_B2:
@ 039   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

ch41_2:
	.byte		VOL   , 127*ch41_mvl/mxv
	.byte	KEYSH , ch41_key+0
ch41_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 61
	.byte		TIE   , Cn2 , v127
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W56
	.byte	W02
	.byte		EOT   
	.byte		VOICE , 27
	.byte		N05   , En2 
	.byte	W05
	.byte		VOICE , 25
	.byte		N10   
	.byte	W10
	.byte		N05   , En2 , v064
	.byte	W05
	.byte		VOICE , 26
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 25
	.byte		N10   , Ds2 
	.byte	W08
@ 003   ----------------------------------------
	.byte	W02
	.byte		VOICE , 26
	.byte		N10   , Cn2 
	.byte	W10
	.byte		VOICE , 27
	.byte		N10   , Dn2 
	.byte	W10
	.byte		VOICE , 26
	.byte		N10   , Bn1 
	.byte	W10
	.byte		        An1 
	.byte	W10
	.byte		N15   , Gn1 
	.byte	W15
	.byte		        Gn1 , v064
	.byte	W15
	.byte		        Gn1 , v052
	.byte	W15
	.byte		N05   , Gn1 , v048
	.byte	W05
	.byte		        Bn1 , v127
	.byte	W04
@ 004   ----------------------------------------
	.byte	W01
	.byte		        Cn2 
	.byte	W05
	.byte		N10   , Dn2 
	.byte	W10
	.byte		VOICE , 27
	.byte		N10   , An2 
	.byte	W10
	.byte		VOICE , 26
	.byte		N10   , Gn2 
	.byte	W10
	.byte		VOICE , 27
	.byte		N10   , En2 
	.byte	W10
	.byte		VOICE , 26
	.byte		N15   , Cn2 
	.byte	W15
	.byte		        Cn2 , v064
	.byte	W15
	.byte		        Cn2 , v052
	.byte	W15
	.byte		N10   , Cn2 , v048
	.byte	W05
@ 005   ----------------------------------------
	.byte	W05
	.byte		N05   , Cn2 , v040
	.byte	W05
	.byte		        Fn2 , v127
	.byte	W05
	.byte		VOICE , 27
	.byte		N10   
	.byte	W10
	.byte		VOICE , 26
	.byte		N05   
	.byte	W05
	.byte		N10   
	.byte	W10
	.byte		N10   
	.byte	W10
	.byte		N05   , Fn2 , v064
	.byte	W05
	.byte		N10   , En2 , v127
	.byte	W10
	.byte		N05   , En2 , v064
	.byte	W05
	.byte		VOICE , 27
	.byte		N10   , En2 , v127
	.byte	W10
	.byte		VOICE , 26
	.byte		N05   , En2 , v064
	.byte	W05
	.byte		VOICE , 25
	.byte		N15   , En2 , v127
	.byte	W11
@ 006   ----------------------------------------
	.byte	W04
	.byte		        En2 , v064
	.byte	W15
	.byte		        En2 , v048
	.byte	W15
	.byte		VOICE , 27
	.byte		N10   , En2 , v127
	.byte	W10
	.byte		VOICE , 26
	.byte		N10   , Ds2 
	.byte	W10
	.byte		        Dn2 
	.byte	W10
	.byte		VOICE , 27
	.byte		N10   , Bn1 
	.byte	W10
	.byte		VOICE , 26
	.byte		N10   , An1 
	.byte	W10
	.byte		        Gn1 
	.byte	W10
	.byte		N05   , Gn1 , v064
	.byte	W02
@ 007   ----------------------------------------
	.byte	W03
	.byte		VOICE , 25
	.byte		N10   , As1 , v127
	.byte	W10
	.byte		N15   , An1 
	.byte	W15
	.byte		        An1 , v064
	.byte	W15
	.byte		        An1 , v048
	.byte	W15
	.byte		VOICE , 27
	.byte		N05   , En2 , v127
	.byte	W05
	.byte		VOICE , 25
	.byte		N10   
	.byte	W10
	.byte		N05   , En2 , v064
	.byte	W05
	.byte		VOICE , 26
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 25
	.byte		N10   , Ds2 
	.byte	W08
@ 008   ----------------------------------------
	.byte	W02
	.byte		VOICE , 26
	.byte		N10   , Cn2 
	.byte	W10
	.byte		VOICE , 27
	.byte		N10   , Dn2 
	.byte	W10
	.byte		VOICE , 26
	.byte		N10   , Bn1 
	.byte	W10
	.byte		        An1 
	.byte	W10
	.byte		N15   , Gn1 
	.byte	W15
	.byte		        Gn1 , v064
	.byte	W15
	.byte		N10   , Fn2 , v127
	.byte	W10
	.byte		N05   , Fn2 , v064
	.byte	W05
	.byte		VOICE , 27
	.byte		N10   , Fn2 , v127
	.byte	W09
@ 009   ----------------------------------------
	.byte	W01
	.byte		VOICE , 26
	.byte		N05   , Fn2 , v064
	.byte	W05
	.byte		N10   , Fn2 , v127
	.byte	W10
	.byte		N10   
	.byte	W10
	.byte		N05   , Fn2 , v064
	.byte	W05
	.byte		VOICE , 27
	.byte		N15   , En2 , v127
	.byte	W15
	.byte		VOICE , 26
	.byte		N15   , En2 , v064
	.byte	W15
	.byte		N44   , En2 , v048
	.byte	W32
	.byte	W03
@ 010   ----------------------------------------
	.byte	W10
	.byte		N05   , Dn2 , v127
	.byte	W05
	.byte		N10   , Cn2 
	.byte	W10
	.byte		N05   , Dn2 
	.byte	W05
	.byte		N10   , En2 
	.byte	W10
	.byte		N05   , En2 , v064
	.byte	W05
	.byte		N10   , Dn2 , v127
	.byte	W10
	.byte		N05   , Dn2 , v064
	.byte	W05
	.byte		VOICE , 25
	.byte		N10   , En2 , v127
	.byte	W10
	.byte		VOICE , 27
	.byte		N10   , Cn2 
	.byte	W10
	.byte		VOICE , 26
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		N15   , An1 , v127
	.byte	W11
@ 011   ----------------------------------------
	.byte	W04
	.byte		        An1 , v064
	.byte	W15
	.byte		VOICE , 25
	.byte		N05   , Gn2 , v127
	.byte	W05
	.byte		VOICE , 27
	.byte		N10   , En2 
	.byte	W10
	.byte		VOICE , 26
	.byte		N05   , Gn2 
	.byte	W05
	.byte		N10   , En2 
	.byte	W10
	.byte		N05   , Ds2 
	.byte	W05
	.byte		VOICE , 27
	.byte		N10   , Dn2 
	.byte	W10
	.byte		VOICE , 26
	.byte		N05   , Gn2 
	.byte	W05
	.byte		N10   , En2 
	.byte	W10
	.byte		N05   , Dn2 
	.byte	W05
	.byte		VOICE , 27
	.byte		N10   , Cn2 
	.byte	W10
	.byte		VOICE , 26
	.byte		N05   , Cn2 , v064
	.byte	W02
@ 012   ----------------------------------------
	.byte	W03
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W15
	.byte		N60   
	.byte	W60
	.byte		VOICE , 74
	.byte		N15   , En2 , v080
	.byte	W15
	.byte		        Fs2 
	.byte	W03
@ 013   ----------------------------------------
	.byte	W12
	.byte		MOD   , 42
	.byte		N30   , Bn1 
	.byte	W30
	.byte		MOD   , 42
	.byte		N30   , Bn1 , v064
	.byte	W30
	.byte		MOD   , 42
	.byte		N15   , Bn1 , v056
	.byte	W15
	.byte		MOD   , 42
	.byte		N15   , Bn1 , v048
	.byte	W09
@ 014   ----------------------------------------
	.byte	W06
	.byte		MOD   , 0
	.byte		N15   , Dn2 , v080
	.byte	W15
	.byte		        En2 
	.byte	W15
	.byte		MOD   , 42
	.byte		N30   , Bn1 
	.byte	W30
	.byte		MOD   , 42
	.byte		N30   , Bn1 , v064
	.byte	W30
@ 015   ----------------------------------------
	.byte		MOD   , 42
	.byte		N15   , Bn1 , v056
	.byte	W15
	.byte		MOD   , 42
	.byte		N15   , Bn1 , v048
	.byte	W15
	.byte		MOD   , 0
	.byte		N15   , En2 , v080
	.byte	W15
	.byte		        Fs2 
	.byte	W15
	.byte		MOD   , 42
	.byte		N30   , Gs2 
	.byte	W30
	.byte		MOD   , 42
	.byte		N24   , Gs2 , v064
	.byte	W06
@ 016   ----------------------------------------
	.byte	W19
	.byte		MOD   , 0
	.byte		N05   , En2 , v080
	.byte	W05
	.byte		N15   , Fs2 
	.byte	W15
	.byte		N10   , Cs2 
	.byte	W10
	.byte		MOD   , 42
	.byte		N20   , Dn2 
	.byte	W20
	.byte		MOD   , 42
	.byte		N15   , Dn2 , v064
	.byte	W15
	.byte		MOD   , 42
	.byte		N15   , Dn2 , v056
	.byte	W12
@ 017   ----------------------------------------
	.byte	W03
	.byte		MOD   , 42
	.byte		N15   , Dn2 , v048
	.byte	W15
	.byte		MOD   , 42
	.byte		N15   , Dn2 , v040
	.byte	W15
	.byte		MOD   , 42
	.byte		N15   , Dn2 , v036
	.byte	W15
	.byte		MOD   , 0
	.byte	W20
	.byte		N10   , Cn2 , v080
	.byte	W10
	.byte		        Dn2 
	.byte	W10
	.byte		        Fn2 
	.byte	W08
@ 018   ----------------------------------------
	.byte	W02
	.byte		        Gn2 
	.byte	W10
	.byte		MOD   , 42
	.byte		N15   , An2 
	.byte	W15
	.byte		MOD   , 42
	.byte		N15   , An2 , v064
	.byte	W15
	.byte		MOD   , 42
	.byte		N15   , An2 , v056
	.byte	W15
	.byte		MOD   , 42
	.byte		N15   , An2 , v048
	.byte	W15
	.byte		MOD   , 42
	.byte		N20   , An2 , v044
	.byte	W20
	.byte		MOD   , 0
	.byte		N05   , Gn2 , v080
	.byte	W04
@ 019   ----------------------------------------
	.byte	W01
	.byte		        Fn2 
	.byte	W05
	.byte		MOD   , 42
	.byte		N24   , Gn2 
	.byte	W24
	.byte	W01
	.byte		MOD   , 42
	.byte		N20   , Ds2 
	.byte	W20
	.byte		MOD   , 42
	.byte		N15   , Ds2 , v056
	.byte	W15
	.byte		MOD   , 42
	.byte		N15   , Ds2 , v044
	.byte	W15
	.byte		MOD   , 42
	.byte		N15   , Ds2 , v040
	.byte	W15
@ 020   ----------------------------------------
	.byte		MOD   , 0
	.byte	W24
	.byte	W01
	.byte		N20   , Dn2 , v080
	.byte	W20
	.byte		N10   , Cn2 
	.byte	W10
	.byte		N05   , Cn2 , v048
	.byte	W20
	.byte		N10   , Dn2 , v080
	.byte	W10
	.byte		N05   , Ds2 
	.byte	W05
	.byte		N10   , Dn2 
	.byte	W06
@ 021   ----------------------------------------
	.byte	W04
	.byte		        Cn2 
	.byte	W10
	.byte		N05   , Cn2 , v048
	.byte	W05
	.byte		        Gn1 , v080
	.byte	W05
	.byte		N10   , Dn2 
	.byte	W10
	.byte		        Cn2 
	.byte	W10
	.byte		N05   , Cn2 , v048
	.byte	W05
	.byte		MOD   , 42
	.byte		N32   , Cn2 , v080
	.byte	W32
	.byte	W03
	.byte		MOD   , 42
	.byte		N15   , Cn2 , v056
	.byte	W12
@ 022   ----------------------------------------
	.byte	W03
	.byte		MOD   , 42
	.byte		N15   , Cn2 , v048
	.byte	W15
	.byte		MOD   , 42
	.byte		N15   , Cn2 , v044
	.byte	W15
	.byte		MOD   , 42
	.byte		N05   , Cn2 , v040
	.byte	W05
	.byte		MOD   , 0
	.byte		N05   , Cn2 , v080
	.byte	W05
	.byte		        Dn2 
	.byte	W05
	.byte		VOICE , 36
	.byte		N30   , Gs1 , v052
	.byte	W30
	.byte		        As1 
	.byte	W18
@ 023   ----------------------------------------
	.byte	W12
	.byte		        Cn2 
	.byte	W30
	.byte		        Dn2 
	.byte	W30
	.byte		VOICE , 61
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v100
	.byte	W05
	.byte		VOICE , 5
	.byte		N05   , Cn2 , v080
	.byte	W05
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v064
	.byte	W04
@ 024   ----------------------------------------
ch41_2_024:
	.byte	W01
	.byte		N05   , Cn2 , v100
	.byte	W05
	.byte		VOICE , 61
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		        Cn2 , v100
	.byte	W05
	.byte		        Cn2 , v064
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Cn2 , v104
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v100
	.byte	W05
	.byte		VOICE , 5
	.byte		N05   , Cn2 , v080
	.byte	W05
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		        Cn2 , v100
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Cn2 , v127
	.byte	W05
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		VOICE , 5
	.byte		N05   , Cn2 , v080
	.byte	W05
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v100
	.byte	W05
	.byte		        Cn2 , v064
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Cn2 , v104
	.byte	W05
	.byte	PEND
@ 025   ----------------------------------------
ch41_2_025:
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v100
	.byte	W05
	.byte		VOICE , 5
	.byte		N05   , Cn2 , v080
	.byte	W05
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		        Cn2 , v100
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Cn2 , v127
	.byte	W05
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v056
	.byte	W05
	.byte		        Cn2 , v064
	.byte	W05
	.byte		        Cn2 , v100
	.byte	W05
	.byte		        Cn2 , v064
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Cn2 , v104
	.byte	W05
	.byte		        Cn2 , v127
	.byte	W05
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		        Cn2 , v100
	.byte	W05
	.byte		VOICE , 5
	.byte		N05   , Cn2 , v080
	.byte	W05
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		VOICE , 5
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Cn2 , v127
	.byte	W05
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v064
	.byte	W01
	.byte	PEND
@ 026   ----------------------------------------
	.byte	W04
	.byte		VOICE , 5
	.byte		N05   , Cn2 , v080
	.byte	W05
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v100
	.byte	W05
	.byte		VOICE , 5
	.byte		N05   , Cn2 , v080
	.byte	W05
	.byte		N05   
	.byte	W05
	.byte		VOICE , 61
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v100
	.byte	W05
	.byte		VOICE , 5
	.byte		N05   , Cn2 , v080
	.byte	W05
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v104
	.byte	W10
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Cn2 , v127
	.byte	W05
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v100
	.byte	W05
	.byte		        Cn2 , v064
	.byte	W05
	.byte		VOICE , 61
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		        Cn2 , v100
	.byte	W02
@ 027   ----------------------------------------
	.byte	W03
	.byte		VOICE , 5
	.byte		N05   , Cn2 , v052
	.byte	W05
	.byte		        Cn2 , v072
	.byte	W05
	.byte		        Cn2 , v080
	.byte	W05
	.byte		VOICE , 61
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v080
	.byte	W10
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 61
	.byte		N10   , Cn2 , v012
	.byte	W10
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		        Cn2 , v100
	.byte	W05
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v080
	.byte	W10
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Cn2 , v127
	.byte	W05
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v056
	.byte	W05
	.byte		        Cn2 , v064
	.byte	W05
	.byte		        Cn2 , v100
	.byte	W03
@ 028   ----------------------------------------
	.byte	W02
	.byte		        Cn2 , v064
	.byte	W05
	.byte		VOICE , 5
	.byte		N05   , Cn2 , v080
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Cn2 , v127
	.byte	W05
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		VOICE , 61
	.byte		N10   , Cn2 , v104
	.byte	W10
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v080
	.byte	W10
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		VOICE , 5
	.byte		N05   , Cn2 , v104
	.byte	W05
	.byte		N10   , Cn2 , v080
	.byte	W10
	.byte		VOICE , 61
	.byte		N05   , Cn2 , v104
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v100
	.byte	W05
	.byte		VOICE , 5
	.byte		N05   , Cn2 , v080
	.byte	W05
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v064
	.byte	W04
@ 029   ----------------------------------------
	.byte	PATT
	 .word	ch41_2_024
@ 030   ----------------------------------------
	.byte	PATT
	 .word	ch41_2_025
@ 031   ----------------------------------------
	.byte	W04
	.byte		VOICE , 5
	.byte		N05   , Cn2 , v080
	.byte	W05
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v100
	.byte	W05
	.byte		VOICE , 5
	.byte		N05   , Cn2 , v080
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Cn2 , v127
	.byte	W05
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v052
	.byte	W05
	.byte		        Cn2 , v072
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Cn2 , v104
	.byte	W05
	.byte		VOICE , 5
	.byte		N05   , Cn2 , v080
	.byte	W05
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		        Cn2 , v100
	.byte	W05
	.byte		VOICE , 61
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		        Cn2 , v100
	.byte	W05
	.byte		        Cn2 , v064
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Cn2 , v104
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v100
	.byte	W02
@ 032   ----------------------------------------
	.byte	W03
	.byte		VOICE , 5
	.byte		N05   , Cn2 , v080
	.byte	W05
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		        Cn2 , v100
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Cn2 , v127
	.byte	W05
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		VOICE , 5
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		        Cn2 , v080
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		        Cn2 , v104
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v100
	.byte	W05
	.byte		VOICE , 5
	.byte		N05   , Cn2 , v080
	.byte	W05
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		        Cn2 , v100
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Cn2 , v127
	.byte	W05
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v056
	.byte	W05
	.byte		        Cn2 , v064
	.byte	W05
	.byte		        Cn2 , v100
	.byte	W03
@ 033   ----------------------------------------
	.byte	W02
	.byte		        Cn2 , v064
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Cn2 , v104
	.byte	W05
	.byte		        Cn2 , v127
	.byte	W05
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		        Cn2 , v100
	.byte	W05
	.byte		VOICE , 5
	.byte		N05   , Cn2 , v080
	.byte	W05
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Cn2 , v104
	.byte	W05
	.byte		        Cn2 , v127
	.byte	W05
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		VOICE , 5
	.byte		N05   , Cn2 , v104
	.byte	W05
	.byte		N10   , Cn2 , v080
	.byte	W10
	.byte		VOICE , 61
	.byte		N05   , Cn2 , v104
	.byte	W05
	.byte		VOICE , 45
	.byte		N15   , Cs2 , v127
	.byte	W15
	.byte		N10   , Cn2 
	.byte	W09
@ 034   ----------------------------------------
	.byte	W01
	.byte		N20   , Bn1 
	.byte	W20
	.byte		N15   , Gs2 
	.byte	W15
	.byte		N10   , Gn2 
	.byte	W10
	.byte		MOD   , 42
	.byte		N15   , Fs2 
	.byte	W15
	.byte		MOD   , 42
	.byte		N15   , Fs2 , v080
	.byte	W15
	.byte		MOD   , 42
	.byte		N15   , Fs2 , v064
	.byte	W15
	.byte		MOD   , 42
	.byte		N05   , Fs2 , v048
	.byte	W05
@ 035   ----------------------------------------
	.byte		MOD   , 0
	.byte		N15   , En2 , v127
	.byte	W15
	.byte		N10   , Dn2 
	.byte	W10
	.byte		N20   , Cs2 
	.byte	W20
	.byte		N15   , An2 
	.byte	W15
	.byte		N10   , Fs2 
	.byte	W10
	.byte		N15   , Gs2 
	.byte	W15
	.byte		N05   , En2 
	.byte	W05
	.byte		N15   , Fs2 
	.byte	W06
@ 036   ----------------------------------------
	.byte	W09
	.byte		        En2 
	.byte	W15
	.byte		        Cs2 
	.byte	W15
	.byte		N10   , Cn2 
	.byte	W10
	.byte		N20   , Bn1 
	.byte	W20
	.byte		N15   , Gs2 
	.byte	W15
	.byte		N10   , Gn2 
	.byte	W10
	.byte		MOD   , 42
	.byte		N15   , Fs2 
	.byte	W02
@ 037   ----------------------------------------
	.byte	W13
	.byte		MOD   , 42
	.byte		N15   , Fs2 , v080
	.byte	W15
	.byte		MOD   , 42
	.byte		N10   , Fs2 , v064
	.byte	W10
	.byte		MOD   , 0
	.byte		N05   , Fs2 , v127
	.byte	W05
	.byte		        Gs2 
	.byte	W05
	.byte		N15   , As2 
	.byte	W15
	.byte		        Fs2 
	.byte	W15
	.byte		        Cs2 
	.byte	W15
	.byte		        Fs2 
	.byte	W03
@ 038   ----------------------------------------
	.byte	W12
	.byte		        En2 
	.byte	W15
	.byte		        Ds2 
	.byte	W15
	.byte		        Cs2 
	.byte	W15
	.byte		        Bn1 
	.byte	W36
	.byte	W03
	.byte	GOTO
	 .word	ch41_2_B1
ch41_2_B2:
@ 039   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

ch41_3:
	.byte		VOL   , 127*ch41_mvl/mxv
	.byte	KEYSH , ch41_key+0
ch41_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 8
	.byte		N10   , Cn2 , v100
	.byte	W10
	.byte		N05   , Cn2 , v096
	.byte	W05
	.byte		N10   , Cn2 , v100
	.byte	W10
	.byte		N05   , Cn2 , v096
	.byte	W05
	.byte		N10   , Cn2 , v100
	.byte	W10
	.byte		N05   , Cn2 , v096
	.byte	W05
	.byte		N10   , Cn2 , v100
	.byte	W10
	.byte		N05   , Cn2 , v096
	.byte	W05
	.byte		N10   , Cn2 , v100
	.byte	W10
	.byte		N05   , Cn2 , v096
	.byte	W05
	.byte		N10   , Cn2 , v100
	.byte	W10
	.byte		N05   , Cn2 , v096
	.byte	W05
	.byte		N10   , Cn2 , v100
	.byte	W06
@ 001   ----------------------------------------
ch41_3_001:
	.byte	W04
	.byte		N05   , Cn2 , v096
	.byte	W05
	.byte		N10   , Cn2 , v100
	.byte	W10
	.byte		N05   , Cn2 , v096
	.byte	W05
	.byte		N10   , Cn2 , v100
	.byte	W10
	.byte		N05   , Cn2 , v096
	.byte	W05
	.byte		N10   , Cn2 , v100
	.byte	W10
	.byte		N05   , Cn2 , v096
	.byte	W05
	.byte		N10   , Cn2 , v100
	.byte	W10
	.byte		N05   , Cn2 , v096
	.byte	W05
	.byte		N10   , Cn2 , v100
	.byte	W10
	.byte		N05   , Cn2 , v096
	.byte	W05
	.byte		N10   , Cn2 , v100
	.byte	W10
	.byte		N05   , Cn2 , v096
	.byte	W02
	.byte	PEND
@ 002   ----------------------------------------
	.byte	W03
	.byte		N10   , Cn2 , v100
	.byte	W10
	.byte		N05   , Cn2 , v096
	.byte	W05
	.byte		N10   , Cn2 , v100
	.byte	W10
	.byte		N05   , Cn2 , v096
	.byte	W05
	.byte		N15   , Cn2 , v072
	.byte	W15
	.byte		N10   , Cn2 , v100
	.byte	W10
	.byte		N05   , Cn2 , v096
	.byte	W05
	.byte		N10   , Cn2 , v100
	.byte	W10
	.byte		N05   , Cn2 , v096
	.byte	W05
	.byte		N10   , Cn2 , v100
	.byte	W10
	.byte		N05   , Cn2 , v096
	.byte	W05
	.byte		N10   , Cn2 , v100
	.byte	W03
@ 003   ----------------------------------------
ch41_3_003:
	.byte	W07
	.byte		N05   , Cn2 , v096
	.byte	W05
	.byte		N10   , Cn2 , v100
	.byte	W10
	.byte		N05   , Cn2 , v096
	.byte	W05
	.byte		N10   , Cn2 , v100
	.byte	W10
	.byte		N05   , Cn2 , v096
	.byte	W05
	.byte		N10   , Cn2 , v100
	.byte	W10
	.byte		N05   , Cn2 , v096
	.byte	W05
	.byte		N10   , Cn2 , v100
	.byte	W10
	.byte		N05   , Cn2 , v096
	.byte	W05
	.byte		N10   , Cn2 , v100
	.byte	W10
	.byte		N05   , Cn2 , v096
	.byte	W05
	.byte		N10   , Cn2 , v100
	.byte	W09
	.byte	PEND
@ 004   ----------------------------------------
ch41_3_004:
	.byte	W01
	.byte		N05   , Cn2 , v096
	.byte	W05
	.byte		N10   , Cn2 , v100
	.byte	W10
	.byte		N05   , Cn2 , v096
	.byte	W05
	.byte		N10   , Cn2 , v100
	.byte	W10
	.byte		N05   , Cn2 , v096
	.byte	W05
	.byte		N10   , Cn2 , v100
	.byte	W10
	.byte		N05   , Cn2 , v096
	.byte	W05
	.byte		N10   , Cn2 , v100
	.byte	W10
	.byte		N05   , Cn2 , v096
	.byte	W05
	.byte		N10   , Cn2 , v100
	.byte	W10
	.byte		N05   , Cn2 , v096
	.byte	W05
	.byte		N10   , Cn2 , v100
	.byte	W10
	.byte		N05   , Cn2 , v096
	.byte	W05
	.byte	PEND
@ 005   ----------------------------------------
ch41_3_005:
	.byte		N10   , Cn2 , v100
	.byte	W10
	.byte		N05   , Cn2 , v096
	.byte	W05
	.byte		N10   , Cn2 , v100
	.byte	W10
	.byte		N05   , Cn2 , v096
	.byte	W05
	.byte		N10   , Cn2 , v100
	.byte	W10
	.byte		N05   , Cn2 , v096
	.byte	W05
	.byte		N10   , Cn2 , v100
	.byte	W10
	.byte		N05   , Cn2 , v096
	.byte	W05
	.byte		N10   , Cn2 , v100
	.byte	W10
	.byte		N05   , Cn2 , v096
	.byte	W05
	.byte		N10   , Cn2 , v100
	.byte	W10
	.byte		N05   , Cn2 , v096
	.byte	W05
	.byte		N10   , Cn2 , v100
	.byte	W06
	.byte	PEND
@ 006   ----------------------------------------
	.byte	PATT
	 .word	ch41_3_001
@ 007   ----------------------------------------
ch41_3_007:
	.byte	W03
	.byte		N10   , Cn2 , v100
	.byte	W10
	.byte		N05   , Cn2 , v096
	.byte	W05
	.byte		N10   , Cn2 , v100
	.byte	W10
	.byte		N05   , Cn2 , v096
	.byte	W05
	.byte		N10   , Cn2 , v100
	.byte	W10
	.byte		N05   , Cn2 , v096
	.byte	W05
	.byte		N10   , Cn2 , v100
	.byte	W10
	.byte		N05   , Cn2 , v096
	.byte	W05
	.byte		N10   , Cn2 , v100
	.byte	W10
	.byte		N05   , Cn2 , v096
	.byte	W05
	.byte		N10   , Cn2 , v100
	.byte	W10
	.byte		N05   , Cn2 , v096
	.byte	W05
	.byte		N10   , Cn2 , v100
	.byte	W03
	.byte	PEND
@ 008   ----------------------------------------
	.byte	PATT
	 .word	ch41_3_003
@ 009   ----------------------------------------
	.byte	PATT
	 .word	ch41_3_004
@ 010   ----------------------------------------
	.byte	PATT
	 .word	ch41_3_005
@ 011   ----------------------------------------
	.byte	PATT
	 .word	ch41_3_001
@ 012   ----------------------------------------
	.byte	PATT
	 .word	ch41_3_007
@ 013   ----------------------------------------
	.byte	PATT
	 .word	ch41_3_003
@ 014   ----------------------------------------
	.byte	PATT
	 .word	ch41_3_004
@ 015   ----------------------------------------
	.byte	PATT
	 .word	ch41_3_005
@ 016   ----------------------------------------
	.byte	PATT
	 .word	ch41_3_001
@ 017   ----------------------------------------
	.byte	PATT
	 .word	ch41_3_007
@ 018   ----------------------------------------
	.byte	PATT
	 .word	ch41_3_003
@ 019   ----------------------------------------
	.byte	PATT
	 .word	ch41_3_004
@ 020   ----------------------------------------
	.byte	PATT
	 .word	ch41_3_005
@ 021   ----------------------------------------
	.byte	PATT
	 .word	ch41_3_001
@ 022   ----------------------------------------
	.byte	W03
	.byte		N10   , Cn2 , v100
	.byte	W10
	.byte		N05   , Cn2 , v096
	.byte	W05
	.byte		N10   , Cn2 , v100
	.byte	W10
	.byte		N05   , Cn2 , v096
	.byte	W05
	.byte		N10   , Cn2 , v100
	.byte	W10
	.byte		N05   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 36
	.byte		N30   , Cn2 , v052
	.byte	W30
	.byte		        Dn2 
	.byte	W18
@ 023   ----------------------------------------
	.byte	W12
	.byte		        Ds2 
	.byte	W30
	.byte		N10   , Fn2 
	.byte	W10
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v080
	.byte	W10
	.byte		VOICE , 61
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 72
	.byte		N15   
	.byte	W15
	.byte		VOICE , 37
	.byte		N10   
	.byte	W09
@ 024   ----------------------------------------
	.byte	W01
	.byte		VOICE , 72
	.byte		N15   
	.byte	W15
	.byte		VOICE , 37
	.byte		N05   
	.byte	W05
	.byte		VOICE , 72
	.byte		N15   
	.byte	W15
	.byte		VOICE , 37
	.byte		N10   
	.byte	W10
	.byte		VOICE , 72
	.byte		N15   
	.byte	W15
	.byte		VOICE , 37
	.byte		N05   
	.byte	W05
	.byte		VOICE , 72
	.byte		N10   
	.byte	W10
	.byte		VOICE , 37
	.byte		N05   
	.byte	W05
	.byte		VOICE , 72
	.byte		N10   
	.byte	W10
	.byte		VOICE , 37
	.byte		N05   
	.byte	W05
@ 025   ----------------------------------------
	.byte		VOICE , 72
	.byte		N15   , Dn2 
	.byte	W15
	.byte		VOICE , 37
	.byte		N10   , Cn2 
	.byte	W10
	.byte		VOICE , 72
	.byte		N15   , Dn2 
	.byte	W15
	.byte		VOICE , 37
	.byte		N05   , Cn2 
	.byte	W05
	.byte		VOICE , 72
	.byte		N15   , Dn2 
	.byte	W15
	.byte		VOICE , 37
	.byte		N10   , Cn2 
	.byte	W10
	.byte		VOICE , 72
	.byte		N15   , Dn2 
	.byte	W15
	.byte		VOICE , 37
	.byte		N05   , Cn2 
	.byte	W05
	.byte		VOICE , 72
	.byte		N10   , Dn2 
	.byte	W06
@ 026   ----------------------------------------
	.byte	W04
	.byte		VOICE , 37
	.byte		N05   , Cn2 
	.byte	W05
	.byte		VOICE , 72
	.byte		N10   , Dn2 
	.byte	W10
	.byte		VOICE , 37
	.byte		N05   , Cn2 
	.byte	W05
	.byte		VOICE , 72
	.byte		N15   
	.byte	W15
	.byte		VOICE , 37
	.byte		N10   
	.byte	W10
	.byte		VOICE , 72
	.byte		N15   
	.byte	W15
	.byte		VOICE , 37
	.byte		N05   
	.byte	W05
	.byte		VOICE , 72
	.byte		N15   
	.byte	W15
	.byte		VOICE , 37
	.byte		N10   
	.byte	W10
	.byte		VOICE , 72
	.byte		N15   
	.byte	W02
@ 027   ----------------------------------------
	.byte	W13
	.byte		VOICE , 37
	.byte		N05   
	.byte	W05
	.byte		VOICE , 72
	.byte		N10   
	.byte	W10
	.byte		VOICE , 37
	.byte		N05   
	.byte	W05
	.byte		VOICE , 72
	.byte		N10   
	.byte	W10
	.byte		VOICE , 37
	.byte		N05   
	.byte	W05
	.byte		VOICE , 72
	.byte		N15   , Dn2 
	.byte	W15
	.byte		VOICE , 37
	.byte		N10   , Cn2 
	.byte	W10
	.byte		VOICE , 72
	.byte		N15   , Dn2 
	.byte	W15
	.byte		VOICE , 37
	.byte		N05   , Cn2 
	.byte	W05
	.byte		VOICE , 72
	.byte		N15   , Dn2 
	.byte	W03
@ 028   ----------------------------------------
	.byte	W12
	.byte		VOICE , 37
	.byte		N10   , Cn2 
	.byte	W10
	.byte		VOICE , 72
	.byte		N15   , Dn2 
	.byte	W15
	.byte		VOICE , 37
	.byte		N05   , Cn2 
	.byte	W05
	.byte		VOICE , 72
	.byte		N10   , Dn2 
	.byte	W10
	.byte		VOICE , 37
	.byte		N05   , Cn2 
	.byte	W05
	.byte		VOICE , 72
	.byte		N10   , Dn2 
	.byte	W10
	.byte		VOICE , 37
	.byte		N05   , Cn2 
	.byte	W05
	.byte		VOICE , 71
	.byte		N15   , An1 
	.byte	W15
	.byte		VOICE , 37
	.byte		N10   , Cn2 
	.byte	W09
@ 029   ----------------------------------------
	.byte	W01
	.byte		VOICE , 71
	.byte		N15   , An1 
	.byte	W15
	.byte		VOICE , 37
	.byte		N05   , Cn2 
	.byte	W05
	.byte		VOICE , 71
	.byte		N15   , An1 
	.byte	W15
	.byte		VOICE , 37
	.byte		N10   , Cn2 
	.byte	W10
	.byte		VOICE , 71
	.byte		N15   , Dn2 
	.byte	W15
	.byte		VOICE , 37
	.byte		N05   , Cn2 
	.byte	W05
	.byte		VOICE , 71
	.byte		N10   , Dn2 
	.byte	W10
	.byte		VOICE , 37
	.byte		N05   , Cn2 
	.byte	W05
	.byte		VOICE , 71
	.byte		N10   , Dn2 
	.byte	W10
	.byte		VOICE , 37
	.byte		N05   , Cn2 
	.byte	W05
@ 030   ----------------------------------------
	.byte		VOICE , 72
	.byte		N15   , Dn2 
	.byte	W15
	.byte		VOICE , 37
	.byte		N10   , Cn2 
	.byte	W10
	.byte		VOICE , 72
	.byte		N15   , Dn2 
	.byte	W15
	.byte		VOICE , 37
	.byte		N05   , Cn2 
	.byte	W05
	.byte		VOICE , 72
	.byte		N15   , Dn2 
	.byte	W15
	.byte		VOICE , 37
	.byte		N10   , Cn2 
	.byte	W10
	.byte		VOICE , 71
	.byte		N15   , An1 
	.byte	W15
	.byte		VOICE , 37
	.byte		N05   , Cn2 
	.byte	W05
	.byte		VOICE , 71
	.byte		N10   , An1 
	.byte	W06
@ 031   ----------------------------------------
	.byte	W04
	.byte		VOICE , 37
	.byte		N05   , Cn2 
	.byte	W05
	.byte		N10   
	.byte	W10
	.byte		VOICE , 71
	.byte		N15   , An1 
	.byte	W15
	.byte		VOICE , 37
	.byte		N05   , Cn2 
	.byte	W05
	.byte		N10   
	.byte	W10
	.byte		VOICE , 71
	.byte		N15   , An1 
	.byte	W15
	.byte		VOICE , 37
	.byte		N05   , Cn2 
	.byte	W05
	.byte		VOICE , 71
	.byte		N15   , An1 
	.byte	W15
	.byte		VOICE , 37
	.byte		N10   , Cn2 
	.byte	W10
	.byte		VOICE , 71
	.byte		N15   , Dn2 
	.byte	W02
@ 032   ----------------------------------------
	.byte	W13
	.byte		VOICE , 37
	.byte		N05   , Cn2 
	.byte	W05
	.byte		VOICE , 71
	.byte		N10   , Dn2 
	.byte	W10
	.byte		VOICE , 37
	.byte		N05   , Cn2 
	.byte	W05
	.byte		VOICE , 71
	.byte		N10   , Dn2 
	.byte	W10
	.byte		VOICE , 37
	.byte		N05   , Cn2 
	.byte	W05
	.byte		VOICE , 71
	.byte		N15   , Bn1 
	.byte	W15
	.byte		VOICE , 37
	.byte		N10   , Cn2 
	.byte	W10
	.byte		VOICE , 71
	.byte		N15   , Bn1 
	.byte	W15
	.byte		VOICE , 37
	.byte		N05   , Cn2 
	.byte	W05
	.byte		VOICE , 71
	.byte		N15   , Bn1 
	.byte	W03
@ 033   ----------------------------------------
	.byte	W12
	.byte		VOICE , 37
	.byte		N10   , Cn2 
	.byte	W10
	.byte		VOICE , 71
	.byte		N15   , En2 
	.byte	W15
	.byte		VOICE , 37
	.byte		N05   , Cn2 
	.byte	W05
	.byte		VOICE , 71
	.byte		N10   , En2 
	.byte	W10
	.byte		VOICE , 37
	.byte		N05   , Cn2 
	.byte	W05
	.byte		VOICE , 71
	.byte		N10   , En2 
	.byte	W10
	.byte		VOICE , 37
	.byte		N05   , Cn2 
	.byte	W05
	.byte		VOICE , 61
	.byte		N10   
	.byte	W10
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		N10   , Cn2 , v100
	.byte	W09
@ 034   ----------------------------------------
	.byte	W01
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		N10   , Cn2 , v100
	.byte	W10
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		N10   , Cn2 , v100
	.byte	W10
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		VOICE , 61
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		N10   , Cn2 , v100
	.byte	W10
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		N10   , Cn2 , v100
	.byte	W10
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		N10   , Cn2 , v100
	.byte	W10
	.byte		N05   , Cn2 , v064
	.byte	W05
@ 035   ----------------------------------------
	.byte		VOICE , 61
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		N10   , Cn2 , v100
	.byte	W10
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		N10   , Cn2 , v100
	.byte	W10
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		N10   , Cn2 , v100
	.byte	W10
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		VOICE , 61
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		N10   , Cn2 , v100
	.byte	W10
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		N10   , Cn2 , v100
	.byte	W06
@ 036   ----------------------------------------
	.byte	W04
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		N10   , Cn2 , v100
	.byte	W10
	.byte		VOICE , 61
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		N10   , Cn2 , v100
	.byte	W10
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		N10   , Cn2 , v100
	.byte	W10
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		N10   , Cn2 , v100
	.byte	W10
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		VOICE , 61
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v064
	.byte	W02
@ 037   ----------------------------------------
	.byte	W03
	.byte		N10   , Cn2 , v100
	.byte	W10
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		N10   , Cn2 , v100
	.byte	W10
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		N10   , Cn2 , v100
	.byte	W10
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		VOICE , 61
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		N10   , Cn2 , v100
	.byte	W10
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		N10   , Cn2 , v100
	.byte	W10
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		N10   , Cn2 , v100
	.byte	W03
@ 038   ----------------------------------------
	.byte	W07
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		VOICE , 61
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 8
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		N10   , Cn2 , v100
	.byte	W10
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		N10   , Cn2 , v100
	.byte	W10
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		N10   , Cn2 , v100
	.byte	W10
	.byte		VOICE , 61
	.byte		N05   , Cn2 , v064
	.byte	W28
	.byte	W01
	.byte	GOTO
	 .word	ch41_3_B1
ch41_3_B2:
@ 039   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

ch41_4:
	.byte		VOL   , 127*ch41_mvl/mxv
	.byte	KEYSH , ch41_key+0
ch41_4_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 16
	.byte		N15   , En1 , v092
	.byte	W15
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W15
	.byte		VOICE , 16
	.byte		N15   , Bn0 , v092
	.byte	W15
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W15
	.byte		VOICE , 16
	.byte		N15   , Bn0 , v092
	.byte	W15
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W15
	.byte		VOICE , 16
	.byte		N15   , Fs1 , v092
	.byte	W06
@ 001   ----------------------------------------
	.byte	W09
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W15
	.byte		VOICE , 16
	.byte		N15   , En1 , v092
	.byte	W15
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W15
	.byte		VOICE , 16
	.byte		N15   , Bn0 , v092
	.byte	W15
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W15
	.byte		VOICE , 16
	.byte		N15   , Bn0 , v092
	.byte	W12
@ 002   ----------------------------------------
	.byte	W03
	.byte		        Ds1 
	.byte	W15
	.byte		        Fs1 
	.byte	W15
	.byte		        Fs1 , v064
	.byte	W15
	.byte		        En1 , v092
	.byte	W15
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W15
	.byte		VOICE , 16
	.byte		N15   , Bn0 , v092
	.byte	W15
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W03
@ 003   ----------------------------------------
	.byte	W12
	.byte		VOICE , 16
	.byte		N15   , Bn0 , v092
	.byte	W15
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W15
	.byte		VOICE , 16
	.byte		N15   , Fs1 , v092
	.byte	W15
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W15
	.byte		VOICE , 16
	.byte		N15   , Bn0 , v092
	.byte	W15
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W09
@ 004   ----------------------------------------
	.byte	W06
	.byte		VOICE , 16
	.byte		N15   , Fs1 , v092
	.byte	W15
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W15
	.byte		VOICE , 16
	.byte		N15   , En1 , v092
	.byte	W15
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W15
	.byte		VOICE , 16
	.byte		N15   , Bn0 , v092
	.byte	W15
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W15
@ 005   ----------------------------------------
	.byte		VOICE , 16
	.byte		N15   , An1 , v092
	.byte	W15
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W15
	.byte		VOICE , 16
	.byte		N15   , En1 , v092
	.byte	W15
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W15
	.byte		VOICE , 16
	.byte		N15   , En1 , v092
	.byte	W15
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W15
	.byte		VOICE , 16
	.byte		N15   , Bn0 , v092
	.byte	W06
@ 006   ----------------------------------------
	.byte	W09
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W15
	.byte		VOICE , 16
	.byte		N15   , Fs1 , v092
	.byte	W15
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W15
	.byte		VOICE , 16
	.byte		N15   , Cs1 , v092
	.byte	W15
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W15
	.byte		VOICE , 16
	.byte		N15   , Bn0 , v092
	.byte	W12
@ 007   ----------------------------------------
	.byte	W03
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W15
	.byte		VOICE , 16
	.byte		N15   , Fs1 , v092
	.byte	W15
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W15
	.byte		VOICE , 16
	.byte		N15   , En1 , v092
	.byte	W15
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W15
	.byte		VOICE , 16
	.byte		N15   , Bn0 , v092
	.byte	W15
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W03
@ 008   ----------------------------------------
	.byte	W12
	.byte		VOICE , 16
	.byte		N15   , Bn0 , v092
	.byte	W15
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W15
	.byte		VOICE , 16
	.byte		N15   , Fs1 , v092
	.byte	W15
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W15
	.byte		VOICE , 16
	.byte		N15   , An1 , v092
	.byte	W15
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W09
@ 009   ----------------------------------------
	.byte	W06
	.byte		VOICE , 16
	.byte		N15   , En2 , v092
	.byte	W15
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W15
	.byte		VOICE , 16
	.byte		N15   , Gs1 , v092
	.byte	W15
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W15
	.byte		VOICE , 16
	.byte		N15   , Cn2 , v092
	.byte	W15
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W15
@ 010   ----------------------------------------
	.byte		VOICE , 16
	.byte		N15   , An1 , v092
	.byte	W15
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W15
	.byte		VOICE , 16
	.byte		N15   , Bn1 , v092
	.byte	W15
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W15
	.byte		VOICE , 16
	.byte		N15   , En2 , v092
	.byte	W15
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W15
	.byte		VOICE , 16
	.byte		N15   , Cs2 , v092
	.byte	W06
@ 011   ----------------------------------------
	.byte	W09
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W15
	.byte		VOICE , 16
	.byte		N15   , An1 , v092
	.byte	W15
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W15
	.byte		VOICE , 16
	.byte		N15   , Bn1 , v092
	.byte	W15
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W15
	.byte		VOICE , 16
	.byte		N15   , En2 , v092
	.byte	W12
@ 012   ----------------------------------------
	.byte	W03
	.byte		        Bn1 
	.byte	W15
	.byte		        En2 
	.byte	W15
	.byte		        En2 , v064
	.byte	W15
	.byte		        En1 , v092
	.byte	W15
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W15
	.byte		VOICE , 16
	.byte		N15   , Bn0 , v092
	.byte	W15
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W03
@ 013   ----------------------------------------
	.byte	W12
	.byte		VOICE , 16
	.byte		N15   , En1 , v092
	.byte	W15
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W15
	.byte		VOICE , 16
	.byte		N15   , Bn0 , v092
	.byte	W15
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W15
	.byte		VOICE , 16
	.byte		N15   , Bn1 , v092
	.byte	W15
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W09
@ 014   ----------------------------------------
	.byte	W06
	.byte		VOICE , 16
	.byte		N15   , Fs1 , v092
	.byte	W15
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W15
	.byte		VOICE , 16
	.byte		N15   , Bn1 , v092
	.byte	W15
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W15
	.byte		VOICE , 16
	.byte		N15   , Fs1 , v092
	.byte	W15
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W15
@ 015   ----------------------------------------
	.byte		VOICE , 16
	.byte		N15   , En1 , v092
	.byte	W15
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W15
	.byte		VOICE , 16
	.byte		N15   , Bn0 , v092
	.byte	W15
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W15
	.byte		VOICE , 16
	.byte		N15   , En1 , v092
	.byte	W15
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W15
	.byte		VOICE , 16
	.byte		N15   , Bn0 , v092
	.byte	W06
@ 016   ----------------------------------------
	.byte	W09
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W15
	.byte		VOICE , 16
	.byte		N15   , Bn1 , v092
	.byte	W15
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W15
	.byte		VOICE , 16
	.byte		N15   , Fs1 , v092
	.byte	W15
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W15
	.byte		VOICE , 16
	.byte		N15   , Bn1 , v092
	.byte	W12
@ 017   ----------------------------------------
	.byte	W03
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W15
	.byte		VOICE , 16
	.byte		N15   , Fs1 , v092
	.byte	W15
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W15
	.byte		VOICE , 16
	.byte		N15   , Fn1 , v092
	.byte	W15
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W15
	.byte		VOICE , 16
	.byte		N15   , Cn1 , v092
	.byte	W15
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W03
@ 018   ----------------------------------------
	.byte	W12
	.byte		VOICE , 16
	.byte		N15   , Fn1 , v092
	.byte	W15
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W15
	.byte		VOICE , 16
	.byte		N15   , Cn1 , v092
	.byte	W15
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W15
	.byte		VOICE , 16
	.byte		N15   , Cn2 , v092
	.byte	W15
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W09
@ 019   ----------------------------------------
	.byte	W06
	.byte		VOICE , 16
	.byte		N15   , Gn1 , v092
	.byte	W15
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W15
	.byte		VOICE , 16
	.byte		N15   , Cn2 , v092
	.byte	W15
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W15
	.byte		VOICE , 16
	.byte		N15   , Gn1 , v092
	.byte	W15
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W15
@ 020   ----------------------------------------
	.byte		VOICE , 16
	.byte		N15   , Fn1 , v092
	.byte	W15
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W15
	.byte		VOICE , 16
	.byte		N15   , Cn1 , v092
	.byte	W15
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W15
	.byte		VOICE , 16
	.byte		N15   , Fn1 , v092
	.byte	W15
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W15
	.byte		VOICE , 16
	.byte		N15   , Cn1 , v092
	.byte	W06
@ 021   ----------------------------------------
	.byte	W09
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W15
	.byte		VOICE , 16
	.byte		N15   , Cn2 , v092
	.byte	W15
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W15
	.byte		VOICE , 16
	.byte		N15   , Gn1 , v092
	.byte	W15
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W15
	.byte		VOICE , 16
	.byte		N15   , Cn2 , v092
	.byte	W12
@ 022   ----------------------------------------
	.byte	W03
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W15
	.byte		VOICE , 16
	.byte		N15   , Gn1 , v092
	.byte	W15
	.byte		VOICE , 73
	.byte		N15   , Cn2 , v127
	.byte	W15
	.byte		VOICE , 36
	.byte		N30   , Ds1 , v052
	.byte	W30
	.byte		        Fn1 
	.byte	W18
@ 023   ----------------------------------------
	.byte	W12
	.byte		        Gn1 
	.byte	W30
	.byte		        As1 
	.byte	W30
	.byte		VOICE , 16
	.byte		N10   , As1 , v092
	.byte	W10
	.byte		N05   , As1 , v064
	.byte	W05
	.byte		N15   , As1 , v092
	.byte	W09
@ 024   ----------------------------------------
	.byte	W06
	.byte		N10   
	.byte	W10
	.byte		N05   , As1 , v064
	.byte	W05
	.byte		N15   , As1 , v092
	.byte	W15
	.byte		N10   
	.byte	W10
	.byte		N05   , As1 , v064
	.byte	W05
	.byte		N15   , As1 , v092
	.byte	W15
	.byte		N10   
	.byte	W10
	.byte		N05   , As1 , v064
	.byte	W05
	.byte		N10   , As1 , v092
	.byte	W10
	.byte		N05   
	.byte	W05
@ 025   ----------------------------------------
	.byte		N10   
	.byte	W10
	.byte		N05   , As1 , v064
	.byte	W05
	.byte		N15   , As1 , v092
	.byte	W15
	.byte		N10   
	.byte	W10
	.byte		N05   , As1 , v064
	.byte	W05
	.byte		N15   , As1 , v092
	.byte	W15
	.byte		N10   
	.byte	W10
	.byte		N05   , As1 , v064
	.byte	W05
	.byte		N15   , As1 , v092
	.byte	W15
	.byte		N10   
	.byte	W06
@ 026   ----------------------------------------
	.byte	W04
	.byte		N05   , As1 , v064
	.byte	W05
	.byte		N10   , As1 , v092
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		N10   
	.byte	W10
	.byte		N05   , As1 , v064
	.byte	W05
	.byte		N15   , As1 , v092
	.byte	W15
	.byte		N10   
	.byte	W10
	.byte		N05   , As1 , v064
	.byte	W05
	.byte		N15   , As1 , v092
	.byte	W15
	.byte		N10   
	.byte	W10
	.byte		N05   , As1 , v064
	.byte	W02
@ 027   ----------------------------------------
	.byte	W03
	.byte		N15   , As1 , v092
	.byte	W15
	.byte		N10   
	.byte	W10
	.byte		N05   , As1 , v064
	.byte	W05
	.byte		N10   , Fn2 , v092
	.byte	W10
	.byte		MOD   , 26
	.byte		N20   , As2 
	.byte	W20
	.byte		MOD   , 0
	.byte		N15   , As1 
	.byte	W15
	.byte		N10   
	.byte	W10
	.byte		N05   , As1 , v064
	.byte	W05
	.byte		N15   , As1 , v092
	.byte	W03
@ 028   ----------------------------------------
	.byte	W12
	.byte		N10   
	.byte	W10
	.byte		N05   , As1 , v064
	.byte	W05
	.byte		N15   , As1 , v092
	.byte	W15
	.byte		N10   
	.byte	W10
	.byte		N05   , As1 , v064
	.byte	W05
	.byte		N10   , As1 , v092
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		N10   , An1 
	.byte	W10
	.byte		N05   , An1 , v064
	.byte	W05
	.byte		N15   , An1 , v092
	.byte	W09
@ 029   ----------------------------------------
	.byte	W06
	.byte		N10   
	.byte	W10
	.byte		N05   , An1 , v064
	.byte	W05
	.byte		N15   , An1 , v092
	.byte	W15
	.byte		N10   
	.byte	W10
	.byte		N05   , An1 , v064
	.byte	W05
	.byte		N15   , An1 , v092
	.byte	W15
	.byte		N10   
	.byte	W10
	.byte		N05   , An1 , v064
	.byte	W05
	.byte		N10   , An1 , v092
	.byte	W10
	.byte		N05   
	.byte	W05
@ 030   ----------------------------------------
	.byte		N10   
	.byte	W10
	.byte		N05   , An1 , v064
	.byte	W05
	.byte		N15   , An1 , v092
	.byte	W15
	.byte		N10   
	.byte	W10
	.byte		N05   , An1 , v064
	.byte	W05
	.byte		N15   , An1 , v092
	.byte	W15
	.byte		N10   
	.byte	W10
	.byte		N05   , An1 , v064
	.byte	W05
	.byte		N15   , An1 , v092
	.byte	W15
	.byte		N10   
	.byte	W06
@ 031   ----------------------------------------
	.byte	W04
	.byte		N05   , An1 , v064
	.byte	W05
	.byte		N10   , En2 , v092
	.byte	W10
	.byte		N05   , An2 
	.byte	W05
	.byte		VOICE , 0
	.byte		MOD   , 26
	.byte	W15
	.byte		VOICE , 16
	.byte		MOD   , 0
	.byte		N15   , An1 
	.byte	W15
	.byte		N10   
	.byte	W10
	.byte		N05   , An1 , v064
	.byte	W05
	.byte		N15   , An1 , v092
	.byte	W15
	.byte		N10   
	.byte	W10
	.byte		N05   , An1 , v064
	.byte	W02
@ 032   ----------------------------------------
	.byte	W03
	.byte		N15   , An1 , v092
	.byte	W15
	.byte		N10   
	.byte	W10
	.byte		N05   , An1 , v064
	.byte	W05
	.byte		N10   , An1 , v092
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		N10   , Bn1 
	.byte	W10
	.byte		N05   , Bn1 , v064
	.byte	W05
	.byte		N15   , Bn1 , v092
	.byte	W15
	.byte		N10   
	.byte	W10
	.byte		N05   , Bn1 , v064
	.byte	W05
	.byte		N15   , Bn1 , v092
	.byte	W03
@ 033   ----------------------------------------
	.byte	W12
	.byte		N10   , En1 
	.byte	W10
	.byte		N05   , En1 , v064
	.byte	W05
	.byte		N15   , En1 , v092
	.byte	W15
	.byte		N10   
	.byte	W10
	.byte		N05   , En1 , v064
	.byte	W05
	.byte		N15   , En1 , v092
	.byte	W15
	.byte		N15   
	.byte	W15
	.byte		VOICE , 5
	.byte		N15   , Cn2 , v080
	.byte	W09
@ 034   ----------------------------------------
	.byte	W06
	.byte		VOICE , 16
	.byte		N15   , Bn0 , v092
	.byte	W15
	.byte		VOICE , 5
	.byte		N15   , Cn2 , v080
	.byte	W15
	.byte		VOICE , 16
	.byte		N15   , En1 , v092
	.byte	W15
	.byte		VOICE , 5
	.byte		N15   , Cn2 , v080
	.byte	W15
	.byte		VOICE , 16
	.byte		N15   , Bn0 , v092
	.byte	W15
	.byte		VOICE , 5
	.byte		N15   , Cn2 , v080
	.byte	W15
@ 035   ----------------------------------------
	.byte		VOICE , 16
	.byte		N15   , An1 , v092
	.byte	W15
	.byte		VOICE , 5
	.byte		N15   , Cn2 , v080
	.byte	W15
	.byte		VOICE , 16
	.byte		N15   , En2 , v092
	.byte	W15
	.byte		VOICE , 5
	.byte		N15   , Cn2 , v080
	.byte	W15
	.byte		VOICE , 16
	.byte		N15   , An1 , v092
	.byte	W15
	.byte		VOICE , 5
	.byte		N15   , Cn2 , v080
	.byte	W15
	.byte		VOICE , 16
	.byte		N10   , En2 , v092
	.byte	W06
@ 036   ----------------------------------------
	.byte	W04
	.byte		VOICE , 5
	.byte		N05   , Cn2 , v104
	.byte	W05
	.byte		N10   , Cn2 , v080
	.byte	W10
	.byte		VOICE , 0
	.byte	W05
	.byte		        16
	.byte		N15   , En1 , v092
	.byte	W15
	.byte		VOICE , 5
	.byte		N15   , Cn2 , v080
	.byte	W15
	.byte		VOICE , 16
	.byte		N15   , Bn0 , v092
	.byte	W15
	.byte		VOICE , 5
	.byte		N15   , Cn2 , v080
	.byte	W15
	.byte		VOICE , 16
	.byte		N15   , En1 , v092
	.byte	W12
@ 037   ----------------------------------------
	.byte	W03
	.byte		VOICE , 5
	.byte		N15   , Cn2 , v080
	.byte	W15
	.byte		VOICE , 16
	.byte		N15   , Bn0 , v092
	.byte	W15
	.byte		VOICE , 5
	.byte		N15   , Cn2 , v080
	.byte	W15
	.byte		VOICE , 16
	.byte		N15   , Fs1 , v092
	.byte	W15
	.byte		VOICE , 5
	.byte		N15   , Cn2 , v080
	.byte	W15
	.byte		VOICE , 16
	.byte		N15   , Cs2 , v092
	.byte	W15
	.byte		VOICE , 5
	.byte		N15   , Cn2 , v080
	.byte	W03
@ 038   ----------------------------------------
	.byte	W12
	.byte		VOICE , 16
	.byte		N15   , Bn1 , v092
	.byte	W15
	.byte		VOICE , 5
	.byte		N15   , Cn2 , v080
	.byte	W15
	.byte		VOICE , 16
	.byte		N10   , Fs1 , v092
	.byte	W10
	.byte		VOICE , 5
	.byte		N05   , Cn2 , v104
	.byte	W05
	.byte		N15   , Cn2 , v080
	.byte	W36
	.byte	W03
	.byte	GOTO
	 .word	ch41_4_B1
ch41_4_B2:
@ 039   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

ch41:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	ch41_pri	@ Priority
	.byte	ch41_rev	@ Reverb.

	.word	ch41_grp

	.word	ch41_1
	.word	ch41_2
	.word	ch41_3
	.word	ch41_4

	.end
