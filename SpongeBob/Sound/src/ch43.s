	.include "MPlayDef.s"

	.equ	ch43_grp, voicegroup000
	.equ	ch43_pri, 128
	.equ	ch43_rev, reverb_set+50
	.equ	ch43_mvl, 127
	.equ	ch43_key, 0
	.equ	ch43_tbs, 1
	.equ	ch43_exg, 0
	.equ	ch43_cmp, 1

	.section .rodata
	.global	ch43
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

ch43_1:
	.byte		VOL   , 127*ch43_mvl/mxv
	.byte	KEYSH , ch43_key+0
ch43_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 100*ch43_tbs/2
	.byte		VOICE , 75
	.byte		N10   , En2 , v127
	.byte	W10
	.byte		N15   , Fs2 
	.byte	W15
	.byte		N05   , En2 
	.byte	W05
	.byte		N10   , Bn1 
	.byte	W10
	.byte		N15   , Gn1 
	.byte	W15
	.byte		N05   , Bn1 
	.byte	W05
	.byte		N10   , En2 
	.byte	W10
	.byte		N15   , Fs2 
	.byte	W15
	.byte		N05   , En2 
	.byte	W05
	.byte		N24   , Bn1 
	.byte	W06
@ 001   ----------------------------------------
	.byte	W19
	.byte		N05   , Ds2 
	.byte	W05
	.byte		N15   , Fn2 
	.byte	W15
	.byte		N15   
	.byte	W15
	.byte		N05   , Ds2 
	.byte	W05
	.byte		        Dn2 
	.byte	W05
	.byte		        Cn2 
	.byte	W05
	.byte		N10   , Gn1 
	.byte	W10
	.byte		N05   , Cn2 
	.byte	W05
	.byte		N10   , An2 
	.byte	W10
	.byte		        En2 
	.byte	W02
@ 002   ----------------------------------------
	.byte	W08
	.byte		N05   , En2 , v056
	.byte	W48
	.byte	W02
	.byte		        Gn2 , v127
	.byte	W05
	.byte		N15   , Gs2 
	.byte	W15
	.byte		N10   , Gn2 
	.byte	W10
	.byte		        Fn2 
	.byte	W08
@ 003   ----------------------------------------
	.byte	W02
	.byte		        Ds2 
	.byte	W10
	.byte		N20   , Dn2 
	.byte	W20
	.byte		N05   , Cs2 
	.byte	W05
	.byte		        Cn2 
	.byte	W05
	.byte		N10   , Bn1 
	.byte	W10
	.byte		        Gn1 
	.byte	W10
	.byte		N05   , Gn1 , v064
	.byte	W05
	.byte		        Bn2 , v127
	.byte	W05
	.byte		N10   , Cn3 
	.byte	W10
	.byte		        Ds3 
	.byte	W10
	.byte		N05   , Ds3 , v052
	.byte	W04
@ 004   ----------------------------------------
ch43_1_004:
	.byte	W01
	.byte		N05   , Cn3 , v127
	.byte	W05
	.byte		N10   , Gn2 
	.byte	W10
	.byte		        Ds2 
	.byte	W10
	.byte		N05   , Ds2 , v052
	.byte	W05
	.byte		        As2 , v127
	.byte	W05
	.byte		N10   , Cn3 
	.byte	W10
	.byte		N10   
	.byte	W10
	.byte		N05   , Cn3 , v052
	.byte	W05
	.byte		N20   , Cn3 , v127
	.byte	W20
	.byte		N15   , Cn3 , v052
	.byte	W15
	.byte	PEND
@ 005   ----------------------------------------
	.byte	W20
	.byte		N05   , Cn2 , v127
	.byte	W05
	.byte		        Cs2 
	.byte	W05
	.byte		        Dn2 
	.byte	W05
	.byte		        Gn2 
	.byte	W05
	.byte		        Fs2 
	.byte	W05
	.byte		        Fn2 
	.byte	W05
	.byte		        Cn2 
	.byte	W05
	.byte		        Fn2 
	.byte	W05
	.byte		        Dn2 
	.byte	W05
	.byte		        As1 
	.byte	W05
	.byte		        Dn2 
	.byte	W05
	.byte		        Cn2 
	.byte	W05
	.byte		        Gs1 
	.byte	W05
	.byte		        Cn2 
	.byte	W05
	.byte		        As1 
	.byte	W05
	.byte		        Fn1 
	.byte	W01
@ 006   ----------------------------------------
	.byte	W04
	.byte		        As1 
	.byte	W05
	.byte		        Gs1 
	.byte	W05
	.byte		        Ds1 
	.byte	W05
	.byte		        Gs1 
	.byte	W05
	.byte		N54   , Gn1 
	.byte	W54
	.byte	W01
	.byte		N48   , Fn1 
	.byte	W17
@ 007   ----------------------------------------
	.byte	W32
	.byte	W01
	.byte		N10   , Ds2 
	.byte	W10
	.byte		N20   , Gn2 
	.byte	W20
	.byte		N10   , Ds2 
	.byte	W10
	.byte		N15   , Cn2 
	.byte	W15
	.byte		N10   , Gn2 
	.byte	W08
@ 008   ----------------------------------------
	.byte	W02
	.byte		        Ds2 
	.byte	W10
	.byte		N20   , Dn2 
	.byte	W20
	.byte		N05   , Cs2 
	.byte	W05
	.byte		        Cn2 
	.byte	W05
	.byte		N10   , Bn1 
	.byte	W10
	.byte		        Gn1 
	.byte	W10
	.byte		N05   , Gn1 , v052
	.byte	W05
	.byte		        Bn2 , v127
	.byte	W05
	.byte		N10   , Cn3 
	.byte	W10
	.byte		        Ds3 
	.byte	W10
	.byte		N05   , Ds3 , v052
	.byte	W04
@ 009   ----------------------------------------
	.byte	PATT
	 .word	ch43_1_004
@ 010   ----------------------------------------
	.byte		VOICE , 45
	.byte	W10
	.byte		N24   , Cn2 , v127
	.byte	W24
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte		        Ds2 
	.byte	W05
	.byte		N10   , Gn2 
	.byte	W10
	.byte		MOD   , 34
	.byte		N15   , Fs2 
	.byte	W15
	.byte		MOD   , 0
	.byte		N10   , Cn2 
	.byte	W10
	.byte		        Fs2 
	.byte	W10
	.byte		        Fn2 
	.byte	W06
@ 011   ----------------------------------------
	.byte	W04
	.byte		        Cn2 
	.byte	W10
	.byte		        Ds2 
	.byte	W10
	.byte		N24   , As1 
	.byte	W24
	.byte	W01
	.byte		MOD   , 34
	.byte		N15   , Bn1 
	.byte	W15
	.byte		MOD   , 34
	.byte		N15   , Bn1 , v056
	.byte	W15
	.byte		MOD   , 34
	.byte		N15   , Bn1 , v048
	.byte	W15
	.byte		MOD   , 34
	.byte		N15   , Bn1 , v040
	.byte	W02
@ 012   ----------------------------------------
	.byte	W13
	.byte		MOD   , 0
	.byte	W15
	.byte		N10   , Gs1 , v127
	.byte	W10
	.byte		        Gn1 
	.byte	W10
	.byte		        Fs1 
	.byte	W10
	.byte		        Fn1 
	.byte	W10
	.byte		        En1 
	.byte	W10
	.byte		MOD   , 42
	.byte		N72   , Ds1 
	.byte	W18
@ 013   ----------------------------------------
	.byte	W56
	.byte	W01
	.byte		MOD   , 0
	.byte		N10   , As0 
	.byte	W10
	.byte		MOD   , 42
	.byte		N60   , Bn0 
	.byte	W28
	.byte	W01
@ 014   ----------------------------------------
	.byte	W30
	.byte	W01
	.byte		MOD   , 0
	.byte		N05   
	.byte	W05
	.byte		N10   , Cn1 
	.byte	W10
	.byte		N05   , Bn0 
	.byte	W05
	.byte		N10   , Cn1 
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		N10   , Cs1 
	.byte	W10
	.byte		N05   , Cn1 
	.byte	W05
	.byte		N10   , Cs1 
	.byte	W10
	.byte		N05   , Dn1 
	.byte	W05
@ 015   ----------------------------------------
	.byte		N60   , Ds1 
	.byte	W60
	.byte		N10   , Gn1 
	.byte	W10
	.byte		N15   , As1 
	.byte	W15
	.byte		N05   , Gn1 
	.byte	W05
	.byte		N10   , Ds1 
	.byte	W06
@ 016   ----------------------------------------
	.byte	W04
	.byte		N15   , Cn1 
	.byte	W15
	.byte		MOD   , 42
	.byte		N24   , Fn1 
	.byte	W24
	.byte	W01
	.byte		MOD   , 42
	.byte		N24   , Fn1 , v064
	.byte	W24
	.byte	W01
	.byte		MOD   , 42
	.byte		N24   , Fn1 , v052
	.byte	W24
	.byte	W01
	.byte		MOD   , 42
	.byte		N24   , Fn1 , v044
	.byte	W02
@ 017   ----------------------------------------
	.byte	W23
	.byte		MOD   , 42
	.byte		N05   , Fn1 , v040
	.byte	W05
	.byte		VOICE , 5
	.byte		MOD   , 0
	.byte		N05   , Cn2 , v080
	.byte	W05
	.byte		N10   
	.byte	W10
	.byte		VOICE , 45
	.byte		N05   , Bn1 , v127
	.byte	W05
	.byte		N60   , Gn1 
	.byte	W48
@ 018   ----------------------------------------
	.byte	W12
	.byte		N10   , Ds1 
	.byte	W10
	.byte		N15   , Fn1 
	.byte	W15
	.byte		N30   , Fs1 
	.byte	W30
	.byte		MOD   , 42
	.byte		N24   , Fn1 
	.byte	W24
	.byte	W01
	.byte		MOD   , 42
	.byte		N24   , Fn1 , v064
	.byte	W04
@ 019   ----------------------------------------
	.byte	W21
	.byte		MOD   , 42
	.byte		N24   , Fn1 , v052
	.byte	W24
	.byte	W01
	.byte		MOD   , 42
	.byte		N24   , Fn1 , v044
	.byte	W24
	.byte	W01
	.byte		MOD   , 42
	.byte		N24   , Fn1 , v040
	.byte	W24
	.byte	W01
@ 020   ----------------------------------------
	.byte		VOICE , 37
	.byte		MOD   , 0
	.byte		N10   , En2 , v127
	.byte	W10
	.byte		        En2 , v100
	.byte	W10
	.byte		        En2 , v072
	.byte	W10
	.byte		        En2 , v127
	.byte	W10
	.byte		        En2 , v100
	.byte	W10
	.byte		        En2 , v072
	.byte	W10
	.byte		        En2 , v127
	.byte	W10
	.byte		        En2 , v100
	.byte	W10
	.byte		        En2 , v072
	.byte	W10
	.byte		        En2 , v127
	.byte	W06
@ 021   ----------------------------------------
	.byte	W04
	.byte		        En2 , v100
	.byte	W10
	.byte		        En2 , v072
	.byte	W10
	.byte		        En2 , v127
	.byte	W10
	.byte		        En2 , v100
	.byte	W10
	.byte		        En2 , v072
	.byte	W10
	.byte		        En2 , v127
	.byte	W10
	.byte		        En2 , v100
	.byte	W10
	.byte		        En2 , v072
	.byte	W10
	.byte		        En2 , v127
	.byte	W10
	.byte		        En2 , v100
	.byte	W02
@ 022   ----------------------------------------
	.byte	W08
	.byte		        En2 , v072
	.byte	W10
	.byte		        En2 , v127
	.byte	W10
	.byte		        En2 , v100
	.byte	W10
	.byte		        En2 , v072
	.byte	W10
	.byte		        En2 , v127
	.byte	W10
	.byte		        En2 , v100
	.byte	W10
	.byte		        En2 , v072
	.byte	W10
	.byte		        En2 , v127
	.byte	W10
	.byte		        En2 , v100
	.byte	W08
@ 023   ----------------------------------------
	.byte	W02
	.byte		        En2 , v072
	.byte	W10
	.byte		        En2 , v127
	.byte	W10
	.byte		        En2 , v100
	.byte	W10
	.byte		        En2 , v072
	.byte	W10
	.byte		        En2 , v127
	.byte	W10
	.byte		        En2 , v100
	.byte	W10
	.byte		        En2 , v072
	.byte	W10
	.byte		        En2 , v127
	.byte	W10
	.byte		        En2 , v100
	.byte	W10
	.byte		        En2 , v072
	.byte	W04
@ 024   ----------------------------------------
	.byte	W06
	.byte		        En2 , v127
	.byte	W10
	.byte		        En2 , v100
	.byte	W10
	.byte		        En2 , v072
	.byte	W10
	.byte		        En2 , v127
	.byte	W10
	.byte		        En2 , v100
	.byte	W10
	.byte		        En2 , v072
	.byte	W10
	.byte		        En2 , v127
	.byte	W10
	.byte		        En2 , v100
	.byte	W10
	.byte		        En2 , v072
	.byte	W10
@ 025   ----------------------------------------
	.byte		VOICE , 75
	.byte		N05   , Cn2 , v080
	.byte	W05
	.byte		        Gn2 
	.byte	W05
	.byte		        Ds2 
	.byte	W05
	.byte		        Gn2 
	.byte	W05
	.byte		        Fn2 
	.byte	W05
	.byte		        Gn2 
	.byte	W05
	.byte		        Dn2 
	.byte	W05
	.byte		        Gn2 
	.byte	W05
	.byte		        Ds2 
	.byte	W05
	.byte		        Gn2 
	.byte	W05
	.byte		        Bn1 
	.byte	W05
	.byte		        Gn2 
	.byte	W05
	.byte		        Cn2 
	.byte	W05
	.byte		        Gn2 
	.byte	W05
	.byte		        Ds2 
	.byte	W05
	.byte		        Gn2 
	.byte	W05
	.byte		        Cn3 
	.byte	W05
	.byte		        Gn2 
	.byte	W05
	.byte		        Gs2 
	.byte	W05
	.byte		        Gn2 
	.byte	W01
@ 026   ----------------------------------------
ch43_1_026:
	.byte	W04
	.byte		N05   , Fn2 , v080
	.byte	W05
	.byte		        Ds2 
	.byte	W05
	.byte		        Fn2 
	.byte	W05
	.byte		        Dn2 
	.byte	W05
	.byte		        Cn2 
	.byte	W05
	.byte		        Gn2 
	.byte	W05
	.byte		        Ds2 
	.byte	W05
	.byte		        Gn2 
	.byte	W05
	.byte		        Fn2 
	.byte	W05
	.byte		        Gn2 
	.byte	W05
	.byte		        Dn2 
	.byte	W05
	.byte		        Gn2 
	.byte	W05
	.byte		        Ds2 
	.byte	W05
	.byte		        Gn2 
	.byte	W05
	.byte		        Bn1 
	.byte	W05
	.byte		        Gn2 
	.byte	W05
	.byte		        Gs2 
	.byte	W05
	.byte		        Gn2 
	.byte	W05
	.byte		        Fn2 
	.byte	W02
	.byte	PEND
@ 027   ----------------------------------------
	.byte	W03
	.byte		        Ds2 
	.byte	W05
	.byte		        Dn2 
	.byte	W05
	.byte		        Cn2 
	.byte	W05
	.byte		        Bn1 
	.byte	W05
	.byte		        Gn1 
	.byte	W05
	.byte		        Bn1 
	.byte	W05
	.byte		        Dn2 
	.byte	W05
	.byte		        Fn2 
	.byte	W05
	.byte		        Dn2 
	.byte	W05
	.byte		        Ds2 
	.byte	W05
	.byte		        Cn2 
	.byte	W05
	.byte		        Ds2 
	.byte	W05
	.byte		        Gn2 
	.byte	W05
	.byte		        Dn2 
	.byte	W05
	.byte		        Gn2 
	.byte	W05
	.byte		        Ds2 
	.byte	W05
	.byte		        Cn2 
	.byte	W05
	.byte		        Ds2 
	.byte	W05
	.byte		        Gs2 
	.byte	W03
@ 028   ----------------------------------------
	.byte	W02
	.byte		        Dn2 
	.byte	W05
	.byte		        Gs2 
	.byte	W05
	.byte		        Gn2 
	.byte	W05
	.byte		        Ds2 
	.byte	W05
	.byte		        Gn2 
	.byte	W05
	.byte		        As2 
	.byte	W05
	.byte		        Ds2 
	.byte	W05
	.byte		        As2 
	.byte	W05
	.byte		        Gn2 
	.byte	W05
	.byte		        Ds2 
	.byte	W05
	.byte		        Gn2 
	.byte	W05
	.byte		        Bn2 
	.byte	W05
	.byte		        Dn2 
	.byte	W05
	.byte		        Bn2 
	.byte	W05
	.byte		        Cn3 
	.byte	W05
	.byte		        Ds3 
	.byte	W05
	.byte		        Cn3 
	.byte	W05
	.byte		        Gn2 
	.byte	W05
	.byte		        Ds2 
	.byte	W04
@ 029   ----------------------------------------
	.byte	W01
	.byte		        Fs2 
	.byte	W05
	.byte		        Gn2 
	.byte	W05
	.byte		        Cn3 
	.byte	W05
	.byte		        Gn2 
	.byte	W05
	.byte		        Ds2 
	.byte	W05
	.byte		        Cn2 
	.byte	W05
	.byte		        Bn1 
	.byte	W05
	.byte		        Cn2 
	.byte	W05
	.byte		        Ds2 
	.byte	W05
	.byte		        Cn2 
	.byte	W05
	.byte		        Gn1 
	.byte	W05
	.byte		        Ds1 
	.byte	W05
	.byte		        Fs1 
	.byte	W05
	.byte		        Gn1 
	.byte	W05
	.byte		        Cn2 
	.byte	W05
	.byte		        Gn1 
	.byte	W05
	.byte		        Ds1 
	.byte	W05
	.byte		        Cn1 
	.byte	W05
	.byte		        Gn0 
	.byte	W05
@ 030   ----------------------------------------
	.byte		        Cn1 
	.byte	W05
	.byte		        Gn2 
	.byte	W05
	.byte		        Ds2 
	.byte	W05
	.byte		        Gn2 
	.byte	W05
	.byte		        Fn2 
	.byte	W05
	.byte		        Gn2 
	.byte	W05
	.byte		        Dn2 
	.byte	W05
	.byte		        Gn2 
	.byte	W05
	.byte		        Ds2 
	.byte	W05
	.byte		        Gn2 
	.byte	W05
	.byte		        Bn1 
	.byte	W05
	.byte		        Gn2 
	.byte	W05
	.byte		        Cn2 
	.byte	W05
	.byte		        Gn2 
	.byte	W05
	.byte		        Ds2 
	.byte	W05
	.byte		        Gn2 
	.byte	W05
	.byte		        Cn3 
	.byte	W05
	.byte		        Gn2 
	.byte	W05
	.byte		        Gs2 
	.byte	W05
	.byte		        Gn2 
	.byte	W01
@ 031   ----------------------------------------
	.byte	PATT
	 .word	ch43_1_026
@ 032   ----------------------------------------
	.byte	W03
	.byte		N05   , Ds2 , v080
	.byte	W05
	.byte		        Dn2 
	.byte	W05
	.byte		        Cn2 
	.byte	W05
	.byte		        Bn1 
	.byte	W05
	.byte		        Gn1 
	.byte	W05
	.byte		        Bn1 
	.byte	W05
	.byte		        Dn2 
	.byte	W05
	.byte		        Fn2 
	.byte	W05
	.byte		        Dn2 
	.byte	W05
	.byte		        Ds2 
	.byte	W05
	.byte		        Cn2 
	.byte	W05
	.byte		        Gn1 
	.byte	W05
	.byte		        Cn2 
	.byte	W05
	.byte		        Ds2 
	.byte	W05
	.byte		        Gn2 
	.byte	W05
	.byte		        Ds2 
	.byte	W05
	.byte		        Cn2 
	.byte	W05
	.byte		        Gn1 
	.byte	W05
	.byte		        Cn2 
	.byte	W03
@ 033   ----------------------------------------
	.byte	W02
	.byte		        Ds2 
	.byte	W05
	.byte		        Gn2 
	.byte	W05
	.byte		        Ds2 
	.byte	W05
	.byte		        Cn2 
	.byte	W05
	.byte		        Gn1 
	.byte	W05
	.byte		        Cn2 
	.byte	W05
	.byte		        Ds2 
	.byte	W05
	.byte		        Gn2 
	.byte	W05
	.byte		        Ds2 
	.byte	W05
	.byte		        Cn2 
	.byte	W05
	.byte		        Gn1 
	.byte	W05
	.byte		        Cn2 
	.byte	W05
	.byte		        Ds2 
	.byte	W05
	.byte		        Gn2 
	.byte	W05
	.byte		        Ds2 
	.byte	W05
	.byte		        Bn1 
	.byte	W05
	.byte		        An1 
	.byte	W05
	.byte		        Bn1 
	.byte	W05
	.byte		        Ds2 
	.byte	W04
@ 034   ----------------------------------------
	.byte	W01
	.byte		        Fs2 
	.byte	W05
	.byte		        Ds2 
	.byte	W05
	.byte		        Bn1 
	.byte	W05
	.byte		        An1 
	.byte	W05
	.byte		        Bn1 
	.byte	W05
	.byte		        Ds2 
	.byte	W05
	.byte		        Fs2 
	.byte	W05
	.byte		        Ds2 
	.byte	W05
	.byte		        Bn1 
	.byte	W05
	.byte		        An1 
	.byte	W05
	.byte		        Bn1 
	.byte	W05
	.byte		        Ds2 
	.byte	W05
	.byte		        Fs2 
	.byte	W05
	.byte		        Ds2 
	.byte	W05
	.byte		        Bn1 
	.byte	W05
	.byte		        An1 
	.byte	W05
	.byte		        Bn1 
	.byte	W05
	.byte		        Ds2 
	.byte	W05
	.byte		        Fs2 
	.byte	W05
	.byte	GOTO
	 .word	ch43_1_B1
ch43_1_B2:
@ 035   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

ch43_2:
	.byte		VOL   , 127*ch43_mvl/mxv
	.byte	KEYSH , ch43_key+0
ch43_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 61
	.byte		N10   , Dn2 , v127
	.byte	W10
	.byte		VOICE , 75
	.byte		N05   , En2 , v064
	.byte	W05
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v048
	.byte	W10
	.byte		VOICE , 61
	.byte		N05   , Dn2 , v080
	.byte	W05
	.byte		N10   , Dn2 , v127
	.byte	W10
	.byte		VOICE , 75
	.byte		N05   , Bn1 , v064
	.byte	W05
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v048
	.byte	W10
	.byte		VOICE , 61
	.byte		N05   , Dn2 , v080
	.byte	W05
	.byte		N10   , Dn2 , v127
	.byte	W10
	.byte		VOICE , 75
	.byte		N05   , En2 , v064
	.byte	W05
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v048
	.byte	W10
	.byte		VOICE , 61
	.byte		N05   , Dn2 , v080
	.byte	W05
	.byte		N10   , Dn2 , v127
	.byte	W06
@ 001   ----------------------------------------
	.byte	W04
	.byte		VOICE , 5
	.byte		N15   , Cn2 , v048
	.byte	W15
	.byte		VOICE , 61
	.byte		N05   , Dn2 , v080
	.byte	W05
	.byte		N10   , Dn2 , v127
	.byte	W10
	.byte		VOICE , 75
	.byte		N05   , Fn2 , v064
	.byte	W05
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v048
	.byte	W10
	.byte		VOICE , 61
	.byte		N05   , Dn2 , v080
	.byte	W05
	.byte		N10   , Dn2 , v127
	.byte	W10
	.byte		VOICE , 75
	.byte		N05   , Dn2 , v064
	.byte	W05
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v048
	.byte	W10
	.byte		VOICE , 61
	.byte		N05   , Dn2 , v080
	.byte	W05
	.byte		N10   , Dn2 , v127
	.byte	W10
	.byte		VOICE , 75
	.byte		N05   , An2 , v064
	.byte	W02
@ 002   ----------------------------------------
	.byte	W03
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v048
	.byte	W10
	.byte		VOICE , 61
	.byte		N05   , Dn2 , v080
	.byte	W05
	.byte		        Dn2 , v127
	.byte	W05
	.byte		VOICE , 5
	.byte		N05   , Cn2 , v032
	.byte	W05
	.byte		        Cn2 , v048
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Dn2 , v127
	.byte	W05
	.byte		VOICE , 5
	.byte		N05   , Cn2 , v032
	.byte	W05
	.byte		        Cn2 , v048
	.byte	W05
	.byte		VOICE , 61
	.byte		N15   , Dn2 , v127
	.byte	W15
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v048
	.byte	W10
	.byte		VOICE , 61
	.byte		N05   , Dn2 , v080
	.byte	W05
	.byte		N10   , Dn2 , v127
	.byte	W10
	.byte		VOICE , 75
	.byte		N05   , Gn2 , v064
	.byte	W05
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v048
	.byte	W03
@ 003   ----------------------------------------
ch43_2_003:
	.byte	W07
	.byte		VOICE , 61
	.byte		N05   , Dn2 , v080
	.byte	W05
	.byte		N10   , Dn2 , v127
	.byte	W10
	.byte		VOICE , 5
	.byte		N05   , Cn2 , v048
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Dn2 , v032
	.byte	W05
	.byte		        Dn2 , v048
	.byte	W05
	.byte		VOICE , 5
	.byte		N05   , Cn2 
	.byte	W05
	.byte		VOICE , 61
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		N05   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v064
	.byte	W10
	.byte		N05   , Cn2 , v072
	.byte	W05
	.byte		VOICE , 61
	.byte		N10   , Dn2 , v127
	.byte	W10
	.byte		VOICE , 75
	.byte		N15   , Cn3 , v064
	.byte	W14
	.byte	PEND
@ 004   ----------------------------------------
ch43_2_004:
	.byte	W01
	.byte		N05   , Ds3 , v064
	.byte	W05
	.byte		        Cn3 
	.byte	W05
	.byte		N10   , Gn2 
	.byte	W10
	.byte		        Ds2 
	.byte	W10
	.byte		VOICE , 5
	.byte		N05   , Cn2 , v048
	.byte	W05
	.byte		N10   , Cn2 , v080
	.byte	W10
	.byte		VOICE , 61
	.byte		N15   , Dn2 , v127
	.byte	W15
	.byte		N15   
	.byte	W15
	.byte		VOICE , 5
	.byte		N05   , Cn2 , v040
	.byte	W05
	.byte		N15   , Cn2 , v056
	.byte	W15
	.byte	PEND
@ 005   ----------------------------------------
	.byte		VOICE , 61
	.byte		N15   , Dn2 , v127
	.byte	W15
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v048
	.byte	W10
	.byte		VOICE , 61
	.byte		N05   , Dn2 , v080
	.byte	W05
	.byte		        Dn2 , v127
	.byte	W05
	.byte		VOICE , 75
	.byte		N05   , Dn2 , v056
	.byte	W05
	.byte		        Gn2 
	.byte	W05
	.byte		VOICE , 5
	.byte		N05   , Cn2 , v048
	.byte	W05
	.byte		VOICE , 75
	.byte		N05   , Fn2 , v056
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Dn2 , v080
	.byte	W05
	.byte		        Dn2 , v127
	.byte	W05
	.byte		VOICE , 75
	.byte		N05   , Dn2 , v056
	.byte	W05
	.byte		        As1 
	.byte	W05
	.byte		VOICE , 5
	.byte		N05   , Cn2 , v048
	.byte	W05
	.byte		VOICE , 75
	.byte		N05   , Cn2 , v056
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Dn2 , v080
	.byte	W05
	.byte		        Dn2 , v127
	.byte	W05
	.byte		VOICE , 75
	.byte		N05   , As1 , v056
	.byte	W01
@ 006   ----------------------------------------
	.byte	W04
	.byte		VOICE , 5
	.byte		N05   , Cn2 , v048
	.byte	W05
	.byte		VOICE , 75
	.byte		N05   , As1 , v056
	.byte	W05
	.byte		        Gs1 
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Dn2 , v080
	.byte	W05
	.byte		N15   , Dn2 , v127
	.byte	W15
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v048
	.byte	W10
	.byte		VOICE , 61
	.byte		N05   , Dn2 , v080
	.byte	W05
	.byte		N15   , Dn2 , v127
	.byte	W15
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v048
	.byte	W10
	.byte		VOICE , 61
	.byte		N05   , Dn2 , v080
	.byte	W05
	.byte		N15   , Dn2 , v127
	.byte	W12
@ 007   ----------------------------------------
	.byte	W03
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v048
	.byte	W10
	.byte		VOICE , 61
	.byte		N05   , Dn2 , v080
	.byte	W05
	.byte		        Dn2 , v127
	.byte	W05
	.byte		VOICE , 5
	.byte		N05   , Cn2 , v032
	.byte	W05
	.byte		        Cn2 , v048
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Dn2 , v127
	.byte	W05
	.byte		VOICE , 5
	.byte		N05   , Cn2 , v032
	.byte	W05
	.byte		        Cn2 , v048
	.byte	W05
	.byte		VOICE , 61
	.byte		N15   , Dn2 , v127
	.byte	W15
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v048
	.byte	W10
	.byte		VOICE , 61
	.byte		N05   , Dn2 , v080
	.byte	W05
	.byte		N10   , Dn2 , v127
	.byte	W10
	.byte		VOICE , 75
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v048
	.byte	W03
@ 008   ----------------------------------------
	.byte	PATT
	 .word	ch43_2_003
@ 009   ----------------------------------------
	.byte	PATT
	 .word	ch43_2_004
@ 010   ----------------------------------------
	.byte		VOICE , 61
	.byte		N15   , Dn2 , v127
	.byte	W15
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v048
	.byte	W10
	.byte		VOICE , 61
	.byte		N05   , Dn2 , v080
	.byte	W05
	.byte		N10   , Dn2 , v127
	.byte	W10
	.byte		VOICE , 45
	.byte		N05   , Cn2 , v056
	.byte	W05
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v048
	.byte	W10
	.byte		VOICE , 61
	.byte		N05   , Dn2 , v080
	.byte	W05
	.byte		N10   , Dn2 , v127
	.byte	W10
	.byte		VOICE , 45
	.byte		N05   , Fs2 , v056
	.byte	W05
	.byte		VOICE , 5
	.byte		N05   , Cn2 , v048
	.byte	W05
	.byte		VOICE , 45
	.byte		N05   , Cn2 , v056
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Dn2 , v080
	.byte	W05
	.byte		N10   , Dn2 , v127
	.byte	W06
@ 011   ----------------------------------------
	.byte	W04
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v048
	.byte	W10
	.byte		VOICE , 45
	.byte		N05   , Cn2 , v056
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Dn2 , v080
	.byte	W05
	.byte		N15   , Dn2 , v127
	.byte	W15
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v048
	.byte	W10
	.byte		VOICE , 61
	.byte		N05   , Dn2 , v080
	.byte	W05
	.byte		N15   , Dn2 , v127
	.byte	W15
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v048
	.byte	W10
	.byte		VOICE , 61
	.byte		N05   , Dn2 , v080
	.byte	W05
	.byte		N15   , Dn2 , v127
	.byte	W12
@ 012   ----------------------------------------
	.byte	W03
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v048
	.byte	W10
	.byte		VOICE , 61
	.byte		N05   , Dn2 , v080
	.byte	W05
	.byte		N10   , Dn2 , v127
	.byte	W10
	.byte		VOICE , 5
	.byte		N05   , Cn2 , v048
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Dn2 , v127
	.byte	W05
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v048
	.byte	W10
	.byte		VOICE , 61
	.byte		N10   , Dn2 , v127
	.byte	W10
	.byte		VOICE , 5
	.byte		N15   , Cn2 , v048
	.byte	W15
	.byte		VOICE , 61
	.byte		N05   , Dn2 , v080
	.byte	W05
	.byte		N10   , Dn2 , v127
	.byte	W10
	.byte		VOICE , 5
	.byte		N05   , Cn2 , v048
	.byte	W05
	.byte		N10   , Cn2 , v080
	.byte	W03
@ 013   ----------------------------------------
	.byte	W07
	.byte		VOICE , 61
	.byte		N20   , Dn2 , v127
	.byte	W20
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v048
	.byte	W10
	.byte		VOICE , 61
	.byte		N05   , Dn2 , v080
	.byte	W05
	.byte		N10   , Dn2 , v127
	.byte	W10
	.byte		VOICE , 5
	.byte		N15   , Cn2 , v048
	.byte	W15
	.byte		VOICE , 61
	.byte		N05   , Dn2 , v080
	.byte	W05
	.byte		N15   , Dn2 , v127
	.byte	W15
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v048
	.byte	W09
@ 014   ----------------------------------------
	.byte	W01
	.byte		VOICE , 61
	.byte		N05   , Dn2 , v080
	.byte	W05
	.byte		N15   , Dn2 , v127
	.byte	W15
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v048
	.byte	W10
	.byte		VOICE , 61
	.byte		N05   , Dn2 , v080
	.byte	W05
	.byte		N15   , Dn2 , v127
	.byte	W15
	.byte		VOICE , 5
	.byte		N10   , Cn2 , v048
	.byte	W10
	.byte		VOICE , 61
	.byte		N05   , Dn2 , v080
	.byte	W05
	.byte		        Dn2 , v127
	.byte	W05
	.byte		VOICE , 5
	.byte		N05   , Cn2 , v032
	.byte	W05
	.byte		        Cn2 , v048
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Dn2 , v127
	.byte	W05
	.byte		VOICE , 5
	.byte		N05   , Cn2 , v032
	.byte	W05
	.byte		        Cn2 , v048
	.byte	W05
@ 015   ----------------------------------------
	.byte		VOICE , 45
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		N15   , Ds2 
	.byte	W15
	.byte		N05   , Cn2 
	.byte	W05
	.byte		N10   , Gn1 
	.byte	W10
	.byte		N15   , Ds1 
	.byte	W15
	.byte		N05   , As1 
	.byte	W05
	.byte		N10   , Cn2 
	.byte	W10
	.byte		N15   
	.byte	W15
	.byte		N30   
	.byte	W11
@ 016   ----------------------------------------
	.byte	W19
	.byte		MOD   , 42
	.byte		N24   , Bn1 
	.byte	W24
	.byte	W01
	.byte		MOD   , 42
	.byte		N24   , Bn1 , v060
	.byte	W24
	.byte	W01
	.byte		MOD   , 42
	.byte		N15   , Bn1 , v048
	.byte	W15
	.byte		VOICE , 75
	.byte		MOD   , 0
	.byte		N60   , Gs1 , v056
	.byte	W12
@ 017   ----------------------------------------
	.byte	W48
	.byte		VOICE , 45
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		N15   , Ds2 
	.byte	W15
	.byte		N05   , Cn2 
	.byte	W05
	.byte		N10   , Gn1 
	.byte	W10
	.byte		N15   , Ds1 
	.byte	W08
@ 018   ----------------------------------------
	.byte	W07
	.byte		N05   , As1 
	.byte	W05
	.byte		N10   , Cn2 
	.byte	W10
	.byte		N15   
	.byte	W15
	.byte		N30   
	.byte	W30
	.byte		MOD   , 42
	.byte		N24   , Bn1 
	.byte	W24
	.byte	W01
	.byte		MOD   , 42
	.byte		N24   , Bn1 , v060
	.byte	W04
@ 019   ----------------------------------------
	.byte	W21
	.byte		MOD   , 42
	.byte		N15   , Bn1 , v048
	.byte	W15
	.byte		VOICE , 75
	.byte		MOD   , 0
	.byte		N60   , Gs1 , v056
	.byte	W60
@ 020   ----------------------------------------
	.byte		TIE   , Gn1 
	.byte	W96
@ 021   ----------------------------------------
	.byte	W24
	.byte		EOT   
	.byte		N60   , Gs1 
	.byte	W60
	.byte		N60   
	.byte	W12
@ 022   ----------------------------------------
	.byte	W48
	.byte		TIE   , Gn1 
	.byte	W48
@ 023   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		N60   , Gs1 
	.byte	W24
@ 024   ----------------------------------------
	.byte	W36
	.byte		N60   
	.byte	W60
@ 025   ----------------------------------------
	.byte		VOICE , 0
	.byte	W15
	.byte		        75
	.byte		N05   , Cn2 , v052
	.byte	W05
	.byte		        Gn2 
	.byte	W05
	.byte		        Ds2 
	.byte	W05
	.byte		        Gn2 
	.byte	W05
	.byte		        Fn2 
	.byte	W05
	.byte		        Gn2 
	.byte	W05
	.byte		        Dn2 
	.byte	W05
	.byte		        Gn2 
	.byte	W05
	.byte		        Ds2 
	.byte	W05
	.byte		        Gn2 
	.byte	W05
	.byte		        Bn1 
	.byte	W05
	.byte		        Gn2 
	.byte	W05
	.byte		        Cn2 
	.byte	W05
	.byte		        Gn2 
	.byte	W05
	.byte		        Ds2 
	.byte	W05
	.byte		        Gn2 
	.byte	W05
	.byte		        Cn3 
	.byte	W01
@ 026   ----------------------------------------
	.byte	W04
	.byte		        Gn2 
	.byte	W05
	.byte		        Gs2 
	.byte	W05
	.byte		        Gn2 
	.byte	W05
	.byte		        Fn2 
	.byte	W05
	.byte		        Ds2 
	.byte	W05
	.byte		        Fn2 
	.byte	W05
	.byte		        Dn2 
	.byte	W05
	.byte		        Cn2 
	.byte	W05
	.byte		        Gn2 
	.byte	W05
	.byte		        Ds2 
	.byte	W05
	.byte		        Gn2 
	.byte	W05
	.byte		        Fn2 
	.byte	W05
	.byte		        Gn2 
	.byte	W05
	.byte		        Dn2 
	.byte	W05
	.byte		        Gn2 
	.byte	W05
	.byte		        Ds2 
	.byte	W05
	.byte		        Gn2 
	.byte	W05
	.byte		        Bn1 
	.byte	W05
	.byte		        Gn2 
	.byte	W02
@ 027   ----------------------------------------
	.byte	W03
	.byte		        Gs2 
	.byte	W05
	.byte		        Gn2 
	.byte	W05
	.byte		        Fn2 
	.byte	W05
	.byte		        Ds2 
	.byte	W05
	.byte		        Dn2 
	.byte	W05
	.byte		        Cn2 
	.byte	W05
	.byte		        Bn1 
	.byte	W05
	.byte		        Gn1 
	.byte	W05
	.byte		        Bn1 
	.byte	W05
	.byte		        Dn2 , v080
	.byte	W05
	.byte		        Fn2 
	.byte	W05
	.byte		        Dn2 
	.byte	W05
	.byte		VOICE , 66
	.byte		N30   , Cn2 , v127
	.byte	W30
	.byte		        Dn2 
	.byte	W03
@ 028   ----------------------------------------
	.byte	W24
	.byte	W03
	.byte		        Cn2 
	.byte	W30
	.byte		N15   , Dn2 
	.byte	W15
	.byte		        Ds2 
	.byte	W15
	.byte		        Gn2 
	.byte	W09
@ 029   ----------------------------------------
	.byte	W06
	.byte		        Ds2 
	.byte	W15
	.byte		        Cn2 
	.byte	W15
	.byte		        Bn1 
	.byte	W15
	.byte		        Ds2 
	.byte	W15
	.byte		        Bn1 
	.byte	W15
	.byte		        Gs1 
	.byte	W15
@ 030   ----------------------------------------
	.byte		N30   , Gn1 
	.byte	W30
	.byte		N20   , Cn2 
	.byte	W20
	.byte		N30   , Dn2 
	.byte	W30
	.byte		N32   , Cn2 
	.byte	W16
@ 031   ----------------------------------------
	.byte	W19
	.byte		N05   , Dn2 
	.byte	W05
	.byte		N15   , Ds2 
	.byte	W15
	.byte		        Gn2 
	.byte	W15
	.byte		        Ds2 
	.byte	W15
	.byte		        Cn2 
	.byte	W15
	.byte		        Bn1 
	.byte	W12
@ 032   ----------------------------------------
	.byte	W03
	.byte		        Ds2 
	.byte	W15
	.byte		        Bn1 
	.byte	W15
	.byte		        Gs1 
	.byte	W15
	.byte		N30   , Gn1 
	.byte	W30
	.byte		VOICE , 45
	.byte		MOD   , 42
	.byte		N30   , Cn2 , v096
	.byte	W18
@ 033   ----------------------------------------
	.byte	W12
	.byte		MOD   , 42
	.byte		N30   , Dn2 
	.byte	W30
	.byte		MOD   , 42
	.byte		N30   , Ds2 
	.byte	W30
	.byte		VOICE , 66
	.byte		MOD   , 0
	.byte		N30   , Fs1 , v127
	.byte	W24
@ 034   ----------------------------------------
	.byte	W06
	.byte		VOICE , 45
	.byte		MOD   , 42
	.byte		N30   , Ds2 , v096
	.byte	W30
	.byte		MOD   , 42
	.byte		N30   , Fn2 
	.byte	W30
	.byte		MOD   , 42
	.byte		N30   , Fs2 
	.byte	W30
	.byte	GOTO
	 .word	ch43_2_B1
ch43_2_B2:
@ 035   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

ch43_3:
	.byte		VOL   , 127*ch43_mvl/mxv
	.byte	KEYSH , ch43_key+0
ch43_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 16
	.byte		N15   , En1 , v092
	.byte	W15
	.byte		        Fs1 
	.byte	W15
	.byte		        Gn1 
	.byte	W15
	.byte		        Bn1 
	.byte	W15
	.byte		        En2 
	.byte	W15
	.byte		        Bn1 
	.byte	W15
	.byte		        Gn1 
	.byte	W06
@ 001   ----------------------------------------
	.byte	W09
	.byte		N10   , An1 
	.byte	W10
	.byte		N05   , Bn1 
	.byte	W05
	.byte		N15   , Cn2 
	.byte	W15
	.byte		        Dn2 
	.byte	W15
	.byte		N10   , Ds2 
	.byte	W10
	.byte		N05   , Dn2 
	.byte	W05
	.byte		N10   , Cn2 
	.byte	W10
	.byte		N05   , Bn1 
	.byte	W05
	.byte		N15   , An1 
	.byte	W12
@ 002   ----------------------------------------
	.byte	W03
	.byte		        En2 
	.byte	W15
	.byte		N10   , An2 
	.byte	W10
	.byte		        En2 
	.byte	W10
	.byte		        Cn2 
	.byte	W10
	.byte		N15   , Gs1 
	.byte	W15
	.byte		        Cn2 
	.byte	W15
	.byte		        Ds2 
	.byte	W15
	.byte		        Fn2 
	.byte	W03
@ 003   ----------------------------------------
	.byte	W12
	.byte		N10   , Gn2 
	.byte	W10
	.byte		N05   , Dn2 
	.byte	W05
	.byte		N15   , Gn1 
	.byte	W15
	.byte		        An1 
	.byte	W15
	.byte		        Bn1 
	.byte	W15
	.byte		        Cn2 
	.byte	W15
	.byte		        Cn2 , v052
	.byte	W09
@ 004   ----------------------------------------
ch43_3_004:
	.byte	W06
	.byte		N15   , Cn2 , v040
	.byte	W15
	.byte		N10   
	.byte	W10
	.byte		N05   , Gn1 , v092
	.byte	W05
	.byte		N10   , Cn2 
	.byte	W10
	.byte		N10   
	.byte	W15
	.byte		N10   
	.byte	W10
	.byte		N05   , Cn2 , v052
	.byte	W05
	.byte		        Gn1 , v092
	.byte	W05
	.byte		N15   , Ds1 
	.byte	W15
	.byte	PEND
@ 005   ----------------------------------------
ch43_3_005:
	.byte		N15   , Cn2 , v092
	.byte	W15
	.byte		        Dn2 
	.byte	W15
	.byte		N10   , Ds2 
	.byte	W10
	.byte		N05   , Cn2 
	.byte	W05
	.byte		N10   , Gn1 
	.byte	W10
	.byte		N05   , Ds1 
	.byte	W05
	.byte		N15   , Cn1 
	.byte	W15
	.byte		        Gn1 
	.byte	W15
	.byte		        Ds1 
	.byte	W06
	.byte	PEND
@ 006   ----------------------------------------
ch43_3_006:
	.byte	W09
	.byte		N10   , Fn1 , v092
	.byte	W10
	.byte		N05   , Gn1 
	.byte	W05
	.byte		N15   , Gs1 
	.byte	W15
	.byte		        As1 
	.byte	W15
	.byte		N10   , Bn1 
	.byte	W10
	.byte		N05   , As1 
	.byte	W05
	.byte		N10   , Gs1 
	.byte	W10
	.byte		N05   , Gn1 
	.byte	W05
	.byte		N15   , Fn1 
	.byte	W12
	.byte	PEND
@ 007   ----------------------------------------
	.byte	W03
	.byte		        Cn2 
	.byte	W15
	.byte		N10   , Fn2 
	.byte	W10
	.byte		        Cn2 
	.byte	W10
	.byte		        Gs1 
	.byte	W10
	.byte		N15   , Cn2 
	.byte	W15
	.byte		        Dn2 
	.byte	W15
	.byte		N10   , Ds2 
	.byte	W10
	.byte		N05   , Cn2 
	.byte	W05
	.byte		N10   , Gn1 
	.byte	W03
@ 008   ----------------------------------------
	.byte	W07
	.byte		N05   , Ds1 
	.byte	W05
	.byte		N10   , Gn2 
	.byte	W10
	.byte		N05   , Dn2 
	.byte	W05
	.byte		N15   , Gn1 
	.byte	W15
	.byte		        An1 
	.byte	W15
	.byte		        Bn1 
	.byte	W15
	.byte		        Cn2 
	.byte	W15
	.byte		        Cn2 , v052
	.byte	W09
@ 009   ----------------------------------------
	.byte	PATT
	 .word	ch43_3_004
@ 010   ----------------------------------------
	.byte	PATT
	 .word	ch43_3_005
@ 011   ----------------------------------------
	.byte	PATT
	 .word	ch43_3_006
@ 012   ----------------------------------------
	.byte	W03
	.byte		N15   , Cn2 , v092
	.byte	W15
	.byte		N10   , Fn2 
	.byte	W10
	.byte		        Cn2 
	.byte	W10
	.byte		N05   , Gs1 
	.byte	W05
	.byte		VOICE , 0
	.byte	W05
	.byte		        16
	.byte		N15   , Cn2 
	.byte	W15
	.byte		        Dn2 
	.byte	W15
	.byte		N10   , Ds2 
	.byte	W10
	.byte		N05   , Cn2 
	.byte	W05
	.byte		N10   , Gn1 
	.byte	W03
@ 013   ----------------------------------------
	.byte	W07
	.byte		N05   , Ds1 
	.byte	W05
	.byte		N15   , Cn1 
	.byte	W15
	.byte		        Gn1 
	.byte	W15
	.byte		        Ds1 
	.byte	W15
	.byte		N10   , Fn1 
	.byte	W10
	.byte		N05   , Gn1 
	.byte	W05
	.byte		N15   , Gs1 
	.byte	W15
	.byte		        As1 
	.byte	W09
@ 014   ----------------------------------------
	.byte	W06
	.byte		N10   , Bn1 
	.byte	W10
	.byte		N05   , As1 
	.byte	W05
	.byte		N10   , Gs1 
	.byte	W10
	.byte		N05   , Gn1 
	.byte	W05
	.byte		N15   , Fn1 
	.byte	W15
	.byte		        Cn2 
	.byte	W15
	.byte		N10   , Fn2 
	.byte	W10
	.byte		        Cn2 
	.byte	W10
	.byte		        Gs1 
	.byte	W10
@ 015   ----------------------------------------
	.byte	PATT
	 .word	ch43_3_005
@ 016   ----------------------------------------
	.byte	W09
	.byte		N10   , Fn1 , v092
	.byte	W10
	.byte		N20   , Gs1 
	.byte	W20
	.byte		N15   , Gs1 , v064
	.byte	W15
	.byte		        Gs1 , v056
	.byte	W15
	.byte		        Gs1 , v052
	.byte	W15
	.byte		VOICE , 75
	.byte		N60   , Cn2 , v056
	.byte	W12
@ 017   ----------------------------------------
	.byte	W48
	.byte		VOICE , 16
	.byte		N15   , Cn2 , v092
	.byte	W15
	.byte		        Dn2 
	.byte	W15
	.byte		N10   , Ds2 
	.byte	W10
	.byte		N05   , Cn2 
	.byte	W05
	.byte		N10   , Gn1 
	.byte	W03
@ 018   ----------------------------------------
	.byte	W07
	.byte		N05   , Ds1 
	.byte	W05
	.byte		N15   , Cn1 
	.byte	W15
	.byte		        Gn1 
	.byte	W15
	.byte		        Ds1 
	.byte	W15
	.byte		N10   , Fn1 
	.byte	W10
	.byte		N20   , Gs1 
	.byte	W20
	.byte		N15   , Gs1 , v064
	.byte	W09
@ 019   ----------------------------------------
	.byte	W06
	.byte		        Gs1 , v056
	.byte	W15
	.byte		        Gs1 , v052
	.byte	W15
	.byte		VOICE , 75
	.byte		N60   , Cn2 , v056
	.byte	W60
@ 020   ----------------------------------------
	.byte		TIE   
	.byte	W96
@ 021   ----------------------------------------
	.byte	W24
	.byte		EOT   
	.byte		N60   , Bn1 
	.byte	W60
	.byte		        Cn2 
	.byte	W12
@ 022   ----------------------------------------
	.byte	W48
	.byte		TIE   
	.byte	W48
@ 023   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		N60   , Bn1 
	.byte	W24
@ 024   ----------------------------------------
	.byte	W36
	.byte		        Cn2 
	.byte	W60
@ 025   ----------------------------------------
	.byte		VOICE , 16
	.byte		N10   , Cn2 , v096
	.byte	W10
	.byte		        Cn2 , v064
	.byte	W10
	.byte		        Cn2 , v052
	.byte	W10
	.byte		        Cn3 , v096
	.byte	W10
	.byte		        Cn3 , v064
	.byte	W10
	.byte		        Cn3 , v052
	.byte	W10
	.byte		        Cn2 , v096
	.byte	W10
	.byte		        Cn2 , v064
	.byte	W10
	.byte		        Cn2 , v052
	.byte	W10
	.byte		        Cn3 , v096
	.byte	W06
@ 026   ----------------------------------------
ch43_3_026:
	.byte	W04
	.byte		N10   , Cn3 , v064
	.byte	W10
	.byte		        Cn3 , v052
	.byte	W10
	.byte		        Cn2 , v096
	.byte	W10
	.byte		        Cn2 , v064
	.byte	W10
	.byte		        Cn2 , v052
	.byte	W10
	.byte		        Cn3 , v096
	.byte	W10
	.byte		        Cn3 , v064
	.byte	W10
	.byte		        Cn3 , v052
	.byte	W10
	.byte		        Cn2 , v096
	.byte	W10
	.byte		        Cn2 , v064
	.byte	W02
	.byte	PEND
@ 027   ----------------------------------------
ch43_3_027:
	.byte	W08
	.byte		N10   , Cn2 , v052
	.byte	W10
	.byte		        Cn3 , v096
	.byte	W10
	.byte		        Cn3 , v064
	.byte	W10
	.byte		        Cn3 , v052
	.byte	W10
	.byte		        Cn2 , v096
	.byte	W10
	.byte		        Cn2 , v064
	.byte	W10
	.byte		        Cn2 , v052
	.byte	W10
	.byte		        Cn3 , v096
	.byte	W10
	.byte		        Cn3 , v064
	.byte	W08
	.byte	PEND
@ 028   ----------------------------------------
	.byte	W02
	.byte		        Cn3 , v052
	.byte	W10
	.byte		        Cn2 , v096
	.byte	W10
	.byte		        Cn2 , v064
	.byte	W10
	.byte		        Cn2 , v052
	.byte	W10
	.byte		        Cn3 , v096
	.byte	W10
	.byte		        Cn3 , v064
	.byte	W10
	.byte		        Cn3 , v052
	.byte	W10
	.byte		        Cn2 , v096
	.byte	W10
	.byte		        Cn2 , v064
	.byte	W10
	.byte		        Cn2 , v052
	.byte	W04
@ 029   ----------------------------------------
	.byte	W06
	.byte		        Cn3 , v096
	.byte	W10
	.byte		        Cn3 , v064
	.byte	W10
	.byte		        Cn3 , v052
	.byte	W10
	.byte		        Cn2 , v096
	.byte	W10
	.byte		        Cn2 , v064
	.byte	W10
	.byte		        Cn2 , v052
	.byte	W10
	.byte		        Cn3 , v096
	.byte	W10
	.byte		        Cn3 , v064
	.byte	W10
	.byte		        Cn3 , v052
	.byte	W10
@ 030   ----------------------------------------
	.byte		        Cn2 , v096
	.byte	W10
	.byte		        Cn2 , v064
	.byte	W10
	.byte		        Cn2 , v052
	.byte	W10
	.byte		        Cn3 , v096
	.byte	W10
	.byte		        Cn3 , v064
	.byte	W10
	.byte		        Cn3 , v052
	.byte	W10
	.byte		        Cn2 , v096
	.byte	W10
	.byte		        Cn2 , v064
	.byte	W10
	.byte		        Cn2 , v052
	.byte	W10
	.byte		        Cn3 , v096
	.byte	W06
@ 031   ----------------------------------------
	.byte	PATT
	 .word	ch43_3_026
@ 032   ----------------------------------------
	.byte	PATT
	 .word	ch43_3_027
@ 033   ----------------------------------------
	.byte	W02
	.byte		N10   , Cn3 , v052
	.byte	W10
	.byte		        Cn2 , v096
	.byte	W10
	.byte		        Cn2 , v064
	.byte	W10
	.byte		        Cn2 , v052
	.byte	W10
	.byte		        Cn3 , v096
	.byte	W10
	.byte		        Cn3 , v064
	.byte	W10
	.byte		        Cn3 , v052
	.byte	W10
	.byte		        Bn1 , v096
	.byte	W10
	.byte		        Bn1 , v064
	.byte	W10
	.byte		        Bn1 , v052
	.byte	W04
@ 034   ----------------------------------------
	.byte	W06
	.byte		        Bn2 , v096
	.byte	W10
	.byte		        Bn2 , v064
	.byte	W10
	.byte		        Bn2 , v052
	.byte	W10
	.byte		        Bn1 , v096
	.byte	W10
	.byte		        Bn1 , v064
	.byte	W10
	.byte		        Bn1 , v052
	.byte	W10
	.byte		        Bn2 , v096
	.byte	W10
	.byte		        Bn2 , v064
	.byte	W10
	.byte		        Bn2 , v052
	.byte	W10
	.byte	GOTO
	 .word	ch43_3_B1
ch43_3_B2:
@ 035   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

ch43_4:
	.byte		VOL   , 127*ch43_mvl/mxv
	.byte	KEYSH , ch43_key+0
ch43_4_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 37
	.byte		N15   , En2 , v127
	.byte	W15
	.byte		N10   
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		N15   
	.byte	W15
	.byte		N10   
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		N15   
	.byte	W15
	.byte		N10   
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		N10   
	.byte	W06
@ 001   ----------------------------------------
ch43_4_001:
	.byte	W04
	.byte		N05   , En2 , v127
	.byte	W05
	.byte		N10   
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		N15   
	.byte	W15
	.byte		N10   
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		N15   
	.byte	W15
	.byte		N10   
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		N15   
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
ch43_4_002:
	.byte	W03
	.byte		N10   , En2 , v127
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		N10   
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		N10   
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		N15   
	.byte	W15
	.byte		N10   
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		N15   
	.byte	W15
	.byte		N10   
	.byte	W03
	.byte	PEND
@ 003   ----------------------------------------
ch43_4_003:
	.byte	W07
	.byte		N05   , En2 , v127
	.byte	W05
	.byte		N15   
	.byte	W15
	.byte		N10   
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		N10   
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		N10   
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 6
	.byte		N54   , Cn2 
	.byte	W24
	.byte	PEND
@ 004   ----------------------------------------
ch43_4_004:
	.byte	W30
	.byte	W01
	.byte		VOICE , 37
	.byte		N05   , En2 , v127
	.byte	W05
	.byte		N10   
	.byte	W10
	.byte		N15   
	.byte	W15
	.byte		N20   
	.byte	W20
	.byte		N15   
	.byte	W15
	.byte	PEND
@ 005   ----------------------------------------
ch43_4_005:
	.byte		N15   , En2 , v127
	.byte	W15
	.byte		N10   
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		N15   
	.byte	W15
	.byte		N10   
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		N15   
	.byte	W15
	.byte		N10   
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		N10   
	.byte	W06
	.byte	PEND
@ 006   ----------------------------------------
	.byte	PATT
	 .word	ch43_4_001
@ 007   ----------------------------------------
	.byte	PATT
	 .word	ch43_4_002
@ 008   ----------------------------------------
	.byte	PATT
	 .word	ch43_4_003
@ 009   ----------------------------------------
	.byte	PATT
	 .word	ch43_4_004
@ 010   ----------------------------------------
	.byte	PATT
	 .word	ch43_4_005
@ 011   ----------------------------------------
	.byte	PATT
	 .word	ch43_4_001
@ 012   ----------------------------------------
	.byte	PATT
	 .word	ch43_4_002
@ 013   ----------------------------------------
	.byte	W07
	.byte		VOICE , 6
	.byte		N15   , Cn2 , v127
	.byte	W15
	.byte		VOICE , 37
	.byte		N05   , En2 
	.byte	W05
	.byte		N10   
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		N10   
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		N10   
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		N15   
	.byte	W15
	.byte		N10   
	.byte	W09
@ 014   ----------------------------------------
	.byte	W01
	.byte		N05   
	.byte	W05
	.byte		N15   
	.byte	W15
	.byte		N10   
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		N15   
	.byte	W15
	.byte		N10   
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		N10   
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		N10   
	.byte	W10
	.byte		N05   
	.byte	W05
@ 015   ----------------------------------------
	.byte	PATT
	 .word	ch43_4_005
@ 016   ----------------------------------------
	.byte	W04
	.byte		N05   , En2 , v127
	.byte	W05
	.byte		N10   
	.byte	W10
	.byte		VOICE , 63
	.byte		N20   , En1 
	.byte	W20
	.byte		N15   , En1 , v064
	.byte	W15
	.byte		        En1 , v056
	.byte	W15
	.byte		        En1 , v052
	.byte	W15
	.byte		VOICE , 75
	.byte		N60   , Fn1 , v056
	.byte	W12
@ 017   ----------------------------------------
	.byte	W48
	.byte		VOICE , 37
	.byte		N15   , En2 , v127
	.byte	W15
	.byte		N10   
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		N15   
	.byte	W15
	.byte		N10   
	.byte	W03
@ 018   ----------------------------------------
	.byte	W07
	.byte		N05   
	.byte	W05
	.byte		N15   
	.byte	W15
	.byte		N10   
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		N10   
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		N10   
	.byte	W10
	.byte		VOICE , 63
	.byte		N20   , En1 
	.byte	W20
	.byte		N15   , En1 , v064
	.byte	W09
@ 019   ----------------------------------------
	.byte	W06
	.byte		        En1 , v056
	.byte	W15
	.byte		        En1 , v052
	.byte	W15
	.byte		VOICE , 75
	.byte		N60   , Fn1 , v056
	.byte	W60
@ 020   ----------------------------------------
	.byte		TIE   , Ds1 
	.byte	W96
@ 021   ----------------------------------------
	.byte	W24
	.byte		EOT   
	.byte		N60   
	.byte	W60
	.byte		        Fn1 
	.byte	W12
@ 022   ----------------------------------------
	.byte	W48
	.byte		TIE   , Ds1 
	.byte	W48
@ 023   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		N60   
	.byte	W24
@ 024   ----------------------------------------
	.byte	W36
	.byte		        Fn1 
	.byte	W60
@ 025   ----------------------------------------
	.byte		VOICE , 37
	.byte		N10   , En2 , v127
	.byte	W10
	.byte		        En2 , v100
	.byte	W10
	.byte		        En2 , v072
	.byte	W10
	.byte		        En2 , v127
	.byte	W10
	.byte		        En2 , v100
	.byte	W10
	.byte		        En2 , v072
	.byte	W10
	.byte		        En2 , v127
	.byte	W10
	.byte		        En2 , v100
	.byte	W10
	.byte		        En2 , v072
	.byte	W10
	.byte		        En2 , v127
	.byte	W06
@ 026   ----------------------------------------
ch43_4_026:
	.byte	W04
	.byte		N10   , En2 , v100
	.byte	W10
	.byte		        En2 , v072
	.byte	W10
	.byte		        En2 , v127
	.byte	W10
	.byte		        En2 , v100
	.byte	W10
	.byte		        En2 , v072
	.byte	W10
	.byte		        En2 , v127
	.byte	W10
	.byte		        En2 , v100
	.byte	W10
	.byte		        En2 , v072
	.byte	W10
	.byte		        En2 , v127
	.byte	W10
	.byte		        En2 , v100
	.byte	W02
	.byte	PEND
@ 027   ----------------------------------------
ch43_4_027:
	.byte	W08
	.byte		N10   , En2 , v072
	.byte	W10
	.byte		        En2 , v127
	.byte	W10
	.byte		        En2 , v100
	.byte	W10
	.byte		        En2 , v072
	.byte	W10
	.byte		        En2 , v127
	.byte	W10
	.byte		        En2 , v100
	.byte	W10
	.byte		        En2 , v072
	.byte	W10
	.byte		        En2 , v127
	.byte	W10
	.byte		        En2 , v100
	.byte	W08
	.byte	PEND
@ 028   ----------------------------------------
ch43_4_028:
	.byte	W02
	.byte		N10   , En2 , v072
	.byte	W10
	.byte		        En2 , v127
	.byte	W10
	.byte		        En2 , v100
	.byte	W10
	.byte		        En2 , v072
	.byte	W10
	.byte		        En2 , v127
	.byte	W10
	.byte		        En2 , v100
	.byte	W10
	.byte		        En2 , v072
	.byte	W10
	.byte		        En2 , v127
	.byte	W10
	.byte		        En2 , v100
	.byte	W10
	.byte		        En2 , v072
	.byte	W04
	.byte	PEND
@ 029   ----------------------------------------
	.byte	W06
	.byte		        En2 , v127
	.byte	W10
	.byte		        En2 , v100
	.byte	W10
	.byte		        En2 , v072
	.byte	W10
	.byte		        En2 , v127
	.byte	W10
	.byte		        En2 , v100
	.byte	W10
	.byte		        En2 , v072
	.byte	W10
	.byte		        En2 , v127
	.byte	W10
	.byte		        En2 , v100
	.byte	W10
	.byte		        En2 , v072
	.byte	W10
@ 030   ----------------------------------------
	.byte		        En2 , v127
	.byte	W10
	.byte		        En2 , v100
	.byte	W10
	.byte		        En2 , v072
	.byte	W10
	.byte		        En2 , v127
	.byte	W10
	.byte		        En2 , v100
	.byte	W10
	.byte		        En2 , v072
	.byte	W10
	.byte		        En2 , v127
	.byte	W10
	.byte		        En2 , v100
	.byte	W10
	.byte		        En2 , v072
	.byte	W10
	.byte		        En2 , v127
	.byte	W06
@ 031   ----------------------------------------
	.byte	PATT
	 .word	ch43_4_026
@ 032   ----------------------------------------
	.byte	PATT
	 .word	ch43_4_027
@ 033   ----------------------------------------
	.byte	PATT
	 .word	ch43_4_028
@ 034   ----------------------------------------
	.byte	W06
	.byte		N10   , En2 , v127
	.byte	W10
	.byte		        En2 , v100
	.byte	W10
	.byte		        En2 , v072
	.byte	W10
	.byte		        En2 , v127
	.byte	W10
	.byte		        En2 , v100
	.byte	W10
	.byte		        En2 , v072
	.byte	W10
	.byte		        En2 , v127
	.byte	W10
	.byte		VOICE , 5
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		N10   , Cn2 , v072
	.byte	W10
	.byte		VOICE , 61
	.byte		N05   , Dn2 , v096
	.byte	W05
	.byte	GOTO
	 .word	ch43_4_B1
ch43_4_B2:
@ 035   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

ch43:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	ch43_pri	@ Priority
	.byte	ch43_rev	@ Reverb.

	.word	ch43_grp

	.word	ch43_1
	.word	ch43_2
	.word	ch43_3
	.word	ch43_4

	.end
