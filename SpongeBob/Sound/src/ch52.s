	.include "MPlayDef.s"

	.equ	ch52_grp, voicegroup000
	.equ	ch52_pri, 128
	.equ	ch52_rev, reverb_set+50
	.equ	ch52_mvl, 127
	.equ	ch52_key, 0
	.equ	ch52_tbs, 1
	.equ	ch52_exg, 0
	.equ	ch52_cmp, 1

	.section .rodata
	.global	ch52
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

ch52_1:
	.byte		VOL   , 127*ch52_mvl/mxv
	.byte	KEYSH , ch52_key+0
ch52_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 100*ch52_tbs/2
	.byte		VOICE , 2
	.byte		N05   , Bn0 , v036
	.byte	W05
	.byte		        Cn1 , v040
	.byte	W05
	.byte		        En1 , v044
	.byte	W05
	.byte		        Gn1 , v048
	.byte	W05
	.byte		        Bn1 , v052
	.byte	W05
	.byte		        Cn2 , v056
	.byte	W05
	.byte		        En2 , v060
	.byte	W05
	.byte		        Cn2 , v064
	.byte	W05
	.byte		        Bn1 , v068
	.byte	W05
	.byte		        Gn1 , v072
	.byte	W05
	.byte		        En1 , v076
	.byte	W05
	.byte		        Cn1 , v080
	.byte	W05
	.byte		        Bn0 , v084
	.byte	W05
	.byte		        Cn1 , v088
	.byte	W05
	.byte		        En1 , v092
	.byte	W05
	.byte		        Gn1 , v096
	.byte	W05
	.byte		        Bn1 , v100
	.byte	W05
	.byte		        Cn2 
	.byte	W05
	.byte		        En2 
	.byte	W05
	.byte		        Cn2 
	.byte	W01
@ 001   ----------------------------------------
	.byte	W04
	.byte		        Bn1 
	.byte	W05
	.byte		        Gn1 
	.byte	W05
	.byte		        En1 
	.byte	W05
	.byte		        Cn1 
	.byte	W05
	.byte		        As0 
	.byte	W05
	.byte		        Cs1 
	.byte	W05
	.byte		        Dn1 
	.byte	W05
	.byte		        Fs1 
	.byte	W05
	.byte		        As1 
	.byte	W05
	.byte		        Cs2 
	.byte	W05
	.byte		        Dn2 , v096
	.byte	W05
	.byte		        Cs2 , v092
	.byte	W05
	.byte		        As1 , v088
	.byte	W05
	.byte		        Fs1 , v084
	.byte	W05
	.byte		        Dn1 , v080
	.byte	W05
	.byte		        Cs1 , v076
	.byte	W05
	.byte		        As0 , v072
	.byte	W05
	.byte		        Cs1 , v068
	.byte	W05
	.byte		        Dn1 , v064
	.byte	W02
@ 002   ----------------------------------------
	.byte	W03
	.byte		        Fs1 , v060
	.byte	W05
	.byte		        As1 , v056
	.byte	W05
	.byte		        Cs2 , v052
	.byte	W05
	.byte		        Dn2 , v048
	.byte	W05
	.byte		        Cs2 
	.byte	W05
	.byte		        As1 , v044
	.byte	W05
	.byte		        Fs1 
	.byte	W05
	.byte		        Dn1 , v040
	.byte	W05
	.byte		        Cs1 
	.byte	W05
	.byte		        Bn0 , v036
	.byte	W05
	.byte		        Cn1 , v040
	.byte	W05
	.byte		        En1 , v044
	.byte	W05
	.byte		        Gn1 , v048
	.byte	W05
	.byte		        Bn1 , v052
	.byte	W05
	.byte		        Cn2 , v056
	.byte	W05
	.byte		        En2 , v060
	.byte	W05
	.byte		        Cn2 , v064
	.byte	W05
	.byte		        Bn1 , v068
	.byte	W05
	.byte		        Gn1 , v072
	.byte	W03
@ 003   ----------------------------------------
ch52_1_003:
	.byte	W02
	.byte		N05   , En1 , v076
	.byte	W05
	.byte		        Cn1 , v080
	.byte	W05
	.byte		        Bn0 , v084
	.byte	W05
	.byte		        Cn1 , v088
	.byte	W05
	.byte		        En1 , v092
	.byte	W05
	.byte		        Gn1 , v096
	.byte	W05
	.byte		        Bn1 , v100
	.byte	W05
	.byte		        Cn2 
	.byte	W05
	.byte		        En2 
	.byte	W05
	.byte		        Cn2 
	.byte	W05
	.byte		        Bn1 
	.byte	W05
	.byte		        Gn1 
	.byte	W05
	.byte		        En1 
	.byte	W05
	.byte		        Cn1 
	.byte	W05
	.byte		        As0 
	.byte	W05
	.byte		        Cs1 
	.byte	W05
	.byte		        Dn1 
	.byte	W05
	.byte		        Fs1 
	.byte	W05
	.byte		        As1 
	.byte	W04
	.byte	PEND
@ 004   ----------------------------------------
ch52_1_004:
	.byte	W01
	.byte		N05   , Cs2 , v100
	.byte	W05
	.byte		        Dn2 , v096
	.byte	W05
	.byte		        Cs2 , v092
	.byte	W05
	.byte		        As1 , v088
	.byte	W05
	.byte		        Fs1 , v084
	.byte	W05
	.byte		        Dn1 , v080
	.byte	W05
	.byte		        Cs1 , v076
	.byte	W05
	.byte		        As0 , v072
	.byte	W05
	.byte		        Cs1 , v068
	.byte	W05
	.byte		        Dn1 , v064
	.byte	W05
	.byte		        Fs1 , v060
	.byte	W05
	.byte		        As1 , v056
	.byte	W05
	.byte		        Cs2 , v052
	.byte	W05
	.byte		        Dn2 , v048
	.byte	W05
	.byte		        Cs2 
	.byte	W05
	.byte		        As1 , v044
	.byte	W05
	.byte		        Fs1 
	.byte	W05
	.byte		        Dn1 , v040
	.byte	W05
	.byte		        Cs1 
	.byte	W05
	.byte	PEND
@ 005   ----------------------------------------
ch52_1_005:
	.byte		N05   , As0 , v036
	.byte	W05
	.byte		        Cs1 , v040
	.byte	W05
	.byte		        Dn1 , v044
	.byte	W05
	.byte		        Fs1 , v048
	.byte	W05
	.byte		        As1 , v052
	.byte	W05
	.byte		        Cs2 , v056
	.byte	W05
	.byte		        Dn2 , v060
	.byte	W05
	.byte		        Cs2 , v064
	.byte	W05
	.byte		        As1 , v068
	.byte	W05
	.byte		        Fs1 , v072
	.byte	W05
	.byte		        Dn1 , v076
	.byte	W05
	.byte		        Cs1 , v080
	.byte	W05
	.byte		        As0 , v084
	.byte	W05
	.byte		        Cs1 , v088
	.byte	W05
	.byte		        Dn1 , v092
	.byte	W05
	.byte		        Fs1 , v096
	.byte	W05
	.byte		        As1 , v100
	.byte	W05
	.byte		        Cs2 
	.byte	W05
	.byte		        Dn2 
	.byte	W05
	.byte		        Cs2 
	.byte	W01
	.byte	PEND
@ 006   ----------------------------------------
ch52_1_006:
	.byte	W04
	.byte		N05   , As1 , v100
	.byte	W05
	.byte		        Fs1 
	.byte	W05
	.byte		        Dn1 
	.byte	W05
	.byte		        Cs1 
	.byte	W05
	.byte		        Bn0 
	.byte	W05
	.byte		        En1 
	.byte	W05
	.byte		        Fs1 
	.byte	W05
	.byte		        Gn1 
	.byte	W05
	.byte		        Bn1 
	.byte	W05
	.byte		        En2 
	.byte	W05
	.byte		        Fs2 , v096
	.byte	W05
	.byte		        En2 , v092
	.byte	W05
	.byte		        Bn1 , v088
	.byte	W05
	.byte		        Gn1 , v084
	.byte	W05
	.byte		        Fs1 , v080
	.byte	W05
	.byte		        En1 , v076
	.byte	W05
	.byte		        Bn0 , v072
	.byte	W05
	.byte		        En1 , v068
	.byte	W05
	.byte		        Fs1 , v064
	.byte	W02
	.byte	PEND
@ 007   ----------------------------------------
ch52_1_007:
	.byte	W03
	.byte		N05   , Gn1 , v060
	.byte	W05
	.byte		        Bn1 , v056
	.byte	W05
	.byte		        En2 , v052
	.byte	W05
	.byte		        Fs2 , v048
	.byte	W05
	.byte		        En2 
	.byte	W05
	.byte		        Bn1 , v044
	.byte	W05
	.byte		        Gn1 
	.byte	W05
	.byte		        Fs1 , v040
	.byte	W05
	.byte		        En1 
	.byte	W05
	.byte		        Bn0 , v036
	.byte	W05
	.byte		        Cn1 , v040
	.byte	W05
	.byte		        En1 , v044
	.byte	W05
	.byte		        Gn1 , v048
	.byte	W05
	.byte		        Bn1 , v052
	.byte	W05
	.byte		        Cn2 , v056
	.byte	W05
	.byte		        En2 , v060
	.byte	W05
	.byte		        Cn2 , v064
	.byte	W05
	.byte		        Bn1 , v068
	.byte	W05
	.byte		        Gn1 , v072
	.byte	W03
	.byte	PEND
@ 008   ----------------------------------------
	.byte	PATT
	 .word	ch52_1_003
@ 009   ----------------------------------------
	.byte	PATT
	 .word	ch52_1_004
@ 010   ----------------------------------------
	.byte	PATT
	 .word	ch52_1_005
@ 011   ----------------------------------------
	.byte	PATT
	 .word	ch52_1_006
@ 012   ----------------------------------------
	.byte	PATT
	 .word	ch52_1_007
@ 013   ----------------------------------------
	.byte	PATT
	 .word	ch52_1_003
@ 014   ----------------------------------------
	.byte	PATT
	 .word	ch52_1_004
@ 015   ----------------------------------------
	.byte		VOICE , 69
	.byte		N60   , Fs1 , v112
	.byte	W60
	.byte		N60   
	.byte	W36
@ 016   ----------------------------------------
	.byte	W24
	.byte		N40   , Gn1 
	.byte	W40
	.byte		        Fs1 
	.byte	W32
@ 017   ----------------------------------------
	.byte	W08
	.byte		N40   
	.byte	W40
	.byte		N60   
	.byte	W48
@ 018   ----------------------------------------
	.byte	W12
	.byte		N60   
	.byte	W60
	.byte		VOICE , 82
	.byte	W10
	.byte		N10   , Gn0 , v127
	.byte	W10
	.byte		        Cn1 
	.byte	W04
@ 019   ----------------------------------------
	.byte	W06
	.byte		N40   , Gn1 
	.byte	W40
	.byte		N10   , Cn1 
	.byte	W10
	.byte		        Gn1 
	.byte	W10
	.byte		N24   , Fs1 
	.byte	W24
	.byte	W01
	.byte		N05   , En1 
	.byte	W05
@ 020   ----------------------------------------
	.byte		N30   , Fs1 
	.byte	W30
	.byte		VOICE , 14
	.byte		N30   , Gn0 , v080
	.byte	W30
	.byte		N20   , Gn0 , v064
	.byte	W20
	.byte		VOICE , 38
	.byte		N05   , Cn2 , v048
	.byte	W05
	.byte		        Cn2 , v064
	.byte	W05
	.byte		N15   , Cn2 , v112
	.byte	W06
@ 021   ----------------------------------------
	.byte	W09
	.byte		VOICE , 86
	.byte		N15   , Cn2 , v072
	.byte	W15
	.byte		VOICE , 82
	.byte	W10
	.byte		N10   , Gn0 , v127
	.byte	W10
	.byte		        Cn1 
	.byte	W10
	.byte		N40   , Gn1 
	.byte	W40
	.byte		N10   , Cn1 
	.byte	W02
@ 022   ----------------------------------------
	.byte	W08
	.byte		        Gn1 
	.byte	W10
	.byte		N15   , Fs1 
	.byte	W15
	.byte		        En1 
	.byte	W15
	.byte		        As1 
	.byte	W15
	.byte		        Fs1 , v116
	.byte	W15
	.byte		        Cs1 , v080
	.byte	W15
	.byte		        As0 , v064
	.byte	W03
@ 023   ----------------------------------------
	.byte	W12
	.byte		        Bn1 , v127
	.byte	W15
	.byte		        Gn1 , v116
	.byte	W15
	.byte		        Dn1 , v080
	.byte	W15
	.byte		        Bn0 , v064
	.byte	W15
	.byte		N30   , Cs2 , v127
	.byte	W24
@ 024   ----------------------------------------
	.byte	W06
	.byte		        Cs2 , v052
	.byte	W30
	.byte		        An1 , v127
	.byte	W30
	.byte		        An1 , v052
	.byte	W30
@ 025   ----------------------------------------
	.byte		        Gn1 , v127
	.byte	W30
	.byte		        Gn1 , v052
	.byte	W30
	.byte		        Fs1 , v127
	.byte	W30
	.byte		N24   , Fs1 , v052
	.byte	W06
@ 026   ----------------------------------------
	.byte	W19
	.byte		N05   , En1 , v127
	.byte	W05
	.byte		N30   , Fs1 
	.byte	W30
	.byte		        Fs1 , v052
	.byte	W30
	.byte		        Fs1 , v044
	.byte	W12
@ 027   ----------------------------------------
	.byte	W18
	.byte		        Fs1 , v040
	.byte	W30
	.byte		VOICE , 38
	.byte		N15   , Cn2 , v112
	.byte	W15
	.byte		N30   , Cn2 , v080
	.byte	W30
	.byte		N05   , Cn2 , v052
	.byte	W03
@ 028   ----------------------------------------
	.byte	W02
	.byte		        Cn2 , v072
	.byte	W05
	.byte		        Cn2 , v096
	.byte	W05
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 82
	.byte		N10   , Fs1 
	.byte	W10
	.byte		        Ds1 
	.byte	W10
	.byte		        Cs1 
	.byte	W10
	.byte		        Bn0 
	.byte	W10
	.byte		        Ds1 
	.byte	W10
	.byte		VOICE , 2
	.byte		N05   , As0 , v036
	.byte	W05
	.byte		        Cs1 , v040
	.byte	W05
	.byte		        Dn1 , v044
	.byte	W05
	.byte		        Fs1 , v048
	.byte	W05
	.byte		        As1 , v052
	.byte	W04
@ 029   ----------------------------------------
ch52_1_029:
	.byte	W01
	.byte		N05   , Cs2 , v056
	.byte	W05
	.byte		        Dn2 , v060
	.byte	W05
	.byte		        Cs2 , v064
	.byte	W05
	.byte		        As1 , v068
	.byte	W05
	.byte		        Fs1 , v072
	.byte	W05
	.byte		        Dn1 , v076
	.byte	W05
	.byte		        Cs1 , v080
	.byte	W05
	.byte		        As0 , v084
	.byte	W05
	.byte		        Cs1 , v088
	.byte	W05
	.byte		        Dn1 , v092
	.byte	W05
	.byte		        Fs1 , v096
	.byte	W05
	.byte		        As1 , v100
	.byte	W05
	.byte		        Cs2 
	.byte	W05
	.byte		        Dn2 
	.byte	W05
	.byte		        Cs2 
	.byte	W05
	.byte		        As1 
	.byte	W05
	.byte		        Fs1 
	.byte	W05
	.byte		        Dn1 
	.byte	W05
	.byte		        Cs1 
	.byte	W05
	.byte	PEND
@ 030   ----------------------------------------
ch52_1_030:
	.byte		N05   , Bn0 , v100
	.byte	W05
	.byte		        En1 
	.byte	W05
	.byte		        Fs1 
	.byte	W05
	.byte		        Gn1 
	.byte	W05
	.byte		        Bn1 
	.byte	W05
	.byte		        En2 
	.byte	W05
	.byte		        Fs2 , v096
	.byte	W05
	.byte		        En2 , v092
	.byte	W05
	.byte		        Bn1 , v088
	.byte	W05
	.byte		        Gn1 , v084
	.byte	W05
	.byte		        Fs1 , v080
	.byte	W05
	.byte		        En1 , v076
	.byte	W05
	.byte		        Bn0 , v072
	.byte	W05
	.byte		        En1 , v068
	.byte	W05
	.byte		        Fs1 , v064
	.byte	W05
	.byte		        Gn1 , v060
	.byte	W05
	.byte		        Bn1 , v056
	.byte	W05
	.byte		        En2 , v052
	.byte	W05
	.byte		        Fs2 , v048
	.byte	W05
	.byte		        En2 
	.byte	W01
	.byte	PEND
@ 031   ----------------------------------------
ch52_1_031:
	.byte	W04
	.byte		N05   , Bn1 , v044
	.byte	W05
	.byte		        Gn1 
	.byte	W05
	.byte		        Fs1 , v040
	.byte	W05
	.byte		        En1 
	.byte	W05
	.byte		        Bn0 , v036
	.byte	W05
	.byte		        Cn1 , v040
	.byte	W05
	.byte		        En1 , v044
	.byte	W05
	.byte		        Gn1 , v048
	.byte	W05
	.byte		        Bn1 , v052
	.byte	W05
	.byte		        Cn2 , v056
	.byte	W05
	.byte		        En2 , v060
	.byte	W05
	.byte		        Cn2 , v064
	.byte	W05
	.byte		        Bn1 , v068
	.byte	W05
	.byte		        Gn1 , v072
	.byte	W05
	.byte		        En1 , v076
	.byte	W05
	.byte		        Cn1 , v080
	.byte	W05
	.byte		        Bn0 , v084
	.byte	W05
	.byte		        Cn1 , v088
	.byte	W05
	.byte		        En1 , v092
	.byte	W02
	.byte	PEND
@ 032   ----------------------------------------
ch52_1_032:
	.byte	W03
	.byte		N05   , Gn1 , v096
	.byte	W05
	.byte		        Bn1 , v100
	.byte	W05
	.byte		        Cn2 
	.byte	W05
	.byte		        En2 
	.byte	W05
	.byte		        Cn2 
	.byte	W05
	.byte		        Bn1 
	.byte	W05
	.byte		        Gn1 
	.byte	W05
	.byte		        En1 
	.byte	W05
	.byte		        Cn1 
	.byte	W05
	.byte		        As0 
	.byte	W05
	.byte		        Cs1 
	.byte	W05
	.byte		        Dn1 
	.byte	W05
	.byte		        Fs1 
	.byte	W05
	.byte		        As1 
	.byte	W05
	.byte		        Cs2 
	.byte	W05
	.byte		        Dn2 , v096
	.byte	W05
	.byte		        Cs2 , v092
	.byte	W05
	.byte		        As1 , v088
	.byte	W05
	.byte		        Fs1 , v084
	.byte	W03
	.byte	PEND
@ 033   ----------------------------------------
	.byte	W02
	.byte		        Dn1 , v080
	.byte	W05
	.byte		        Cs1 , v076
	.byte	W05
	.byte		        As0 , v072
	.byte	W05
	.byte		        Cs1 , v068
	.byte	W05
	.byte		        Dn1 , v064
	.byte	W05
	.byte		        Fs1 , v060
	.byte	W05
	.byte		        As1 , v056
	.byte	W05
	.byte		        Cs2 , v052
	.byte	W05
	.byte		        Dn2 , v048
	.byte	W05
	.byte		        Cs2 
	.byte	W05
	.byte		        As1 , v044
	.byte	W05
	.byte		        Fs1 
	.byte	W05
	.byte		        Dn1 , v040
	.byte	W05
	.byte		        Cs1 
	.byte	W05
	.byte		        As0 , v036
	.byte	W05
	.byte		        Cs1 , v040
	.byte	W05
	.byte		        Dn1 , v044
	.byte	W05
	.byte		        Fs1 , v048
	.byte	W05
	.byte		        As1 , v052
	.byte	W04
@ 034   ----------------------------------------
	.byte	PATT
	 .word	ch52_1_029
@ 035   ----------------------------------------
	.byte	PATT
	 .word	ch52_1_030
@ 036   ----------------------------------------
	.byte	PATT
	 .word	ch52_1_031
@ 037   ----------------------------------------
	.byte	PATT
	 .word	ch52_1_032
@ 038   ----------------------------------------
	.byte	W02
	.byte		N05   , Dn1 , v080
	.byte	W05
	.byte		        Cs1 , v076
	.byte	W05
	.byte		        As0 , v072
	.byte	W05
	.byte		        Cs1 , v068
	.byte	W05
	.byte		        Dn1 , v064
	.byte	W05
	.byte		        Fs1 , v060
	.byte	W05
	.byte		        As1 , v056
	.byte	W05
	.byte		        Cs2 , v052
	.byte	W05
	.byte		        Dn2 , v048
	.byte	W05
	.byte		        Cs2 
	.byte	W05
	.byte		        As1 , v044
	.byte	W05
	.byte		        Fs1 
	.byte	W05
	.byte		        Dn1 , v040
	.byte	W05
	.byte		        Cs1 
	.byte	W05
	.byte		VOICE , 69
	.byte		N60   , Fs1 , v112
	.byte	W24
@ 039   ----------------------------------------
	.byte	W36
	.byte		N60   
	.byte	W60
@ 040   ----------------------------------------
ch52_1_040:
	.byte		N60   , Fs1 , v112
	.byte	W60
	.byte		N60   
	.byte	W36
	.byte	PEND
@ 041   ----------------------------------------
ch52_1_041:
	.byte	W24
	.byte		N60   , Fs1 , v112
	.byte	W60
	.byte		N60   
	.byte	W12
	.byte	PEND
@ 042   ----------------------------------------
	.byte	W48
	.byte		N60   
	.byte	W48
@ 043   ----------------------------------------
ch52_1_043:
	.byte	W12
	.byte		N60   , Fs1 , v112
	.byte	W60
	.byte		N60   
	.byte	W24
	.byte	PEND
@ 044   ----------------------------------------
	.byte	W36
	.byte		N60   
	.byte	W60
@ 045   ----------------------------------------
	.byte	PATT
	 .word	ch52_1_040
@ 046   ----------------------------------------
	.byte	PATT
	 .word	ch52_1_041
@ 047   ----------------------------------------
	.byte	W48
	.byte		N60   , Fs1 , v112
	.byte	W48
@ 048   ----------------------------------------
	.byte	PATT
	 .word	ch52_1_043
@ 049   ----------------------------------------
	.byte	W36
	.byte		N60   , Fs1 , v112
	.byte	W60
@ 050   ----------------------------------------
	.byte		N30   
	.byte	W30
	.byte		        Fs1 , v104
	.byte	W30
	.byte		        Fs1 , v096
	.byte	W30
	.byte		        Fs1 , v080
	.byte	W06
	.byte	GOTO
	 .word	ch52_1_B1
ch52_1_B2:
@ 051   ----------------------------------------
	.byte	W24
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

ch52_2:
	.byte		VOL   , 127*ch52_mvl/mxv
	.byte	KEYSH , ch52_key+0
ch52_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 38
	.byte	W60
	.byte		        82
	.byte		N15   , Cn0 , v064
	.byte	W15
	.byte		        Cn0 , v084
	.byte	W15
	.byte		N30   , Cn0 , v096
	.byte	W06
@ 001   ----------------------------------------
	.byte	W24
	.byte		N15   , FsM1
	.byte	W15
	.byte		        FsM1, v088
	.byte	W15
	.byte		        FsM1, v084
	.byte	W15
	.byte		        FsM1, v080
	.byte	W15
	.byte		        FsM1, v072
	.byte	W12
@ 002   ----------------------------------------
	.byte	W03
	.byte		        FsM1, v064
	.byte	W15
	.byte		        FsM1, v060
	.byte	W15
	.byte		N24   , FsM1, v048
	.byte	W24
	.byte	W01
	.byte		N10   , Gn0 , v072
	.byte	W10
	.byte		        Cn1 , v084
	.byte	W10
	.byte		N15   , Gn1 , v088
	.byte	W15
	.byte		        Gn1 , v052
	.byte	W03
@ 003   ----------------------------------------
	.byte	W12
	.byte		N10   , Gn1 , v044
	.byte	W10
	.byte		        Cn0 , v072
	.byte	W10
	.byte		        Gn1 , v084
	.byte	W10
	.byte		N15   , Fs1 , v088
	.byte	W15
	.byte		N10   , Fs1 , v052
	.byte	W10
	.byte		N05   , En1 , v080
	.byte	W05
	.byte		TIE   , Fs1 , v088
	.byte	W24
@ 004   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 005   ----------------------------------------
	.byte		VOICE , 19
	.byte	W30
	.byte		N30   , AsM1, v127
	.byte	W30
	.byte		        Fs0 
	.byte	W30
	.byte		        Cs1 
	.byte	W06
@ 006   ----------------------------------------
ch52_2_006:
	.byte	W24
	.byte		N60   , En1 , v127
	.byte	W60
	.byte		N54   , En1 , v044
	.byte	W12
	.byte	PEND
@ 007   ----------------------------------------
ch52_2_007:
	.byte	W42
	.byte	W01
	.byte		N05   , Dn1 , v127
	.byte	W05
	.byte		N15   , En1 
	.byte	W15
	.byte		N30   
	.byte	W30
	.byte		N15   , An0 
	.byte	W03
	.byte	PEND
@ 008   ----------------------------------------
ch52_2_008:
	.byte	W12
	.byte		N54   , An0 , v127
	.byte	W54
	.byte	W01
	.byte		N15   , BnM1
	.byte	W15
	.byte		TIE   
	.byte	W14
	.byte	PEND
@ 009   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 010   ----------------------------------------
	.byte	W30
	.byte		N30   , AsM1
	.byte	W30
	.byte		        Fs0 
	.byte	W30
	.byte		        Cs1 
	.byte	W06
@ 011   ----------------------------------------
	.byte	PATT
	 .word	ch52_2_006
@ 012   ----------------------------------------
	.byte	PATT
	 .word	ch52_2_007
@ 013   ----------------------------------------
	.byte	PATT
	 .word	ch52_2_008
@ 014   ----------------------------------------
	.byte	W96
	.byte		EOT   , BnM1
@ 015   ----------------------------------------
	.byte		VOICE , 0
	.byte	W10
	.byte		        38
	.byte		N10   , Cn2 , v052
	.byte	W10
	.byte		        Cn2 , v064
	.byte	W10
	.byte		N15   , Cn2 , v080
	.byte	W15
	.byte		N30   , Cn2 , v064
	.byte	W30
	.byte		N05   , Cn2 , v044
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W05
	.byte		N20   , Cn2 , v072
	.byte	W11
@ 016   ----------------------------------------
	.byte	W09
	.byte		N05   , Cn2 , v044
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W05
	.byte		        Cn2 , v072
	.byte	W05
	.byte		N15   , Cn2 , v104
	.byte	W15
	.byte		N05   , Cn2 , v044
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W05
	.byte		        Cn2 , v072
	.byte	W05
	.byte		N90   , Cn2 , v096
	.byte	W42
@ 017   ----------------------------------------
	.byte	W48
	.byte		VOICE , 14
	.byte		N30   , Gn0 , v012
	.byte	W30
	.byte		N15   , Gn0 , v080
	.byte	W15
	.byte		VOICE , 39
	.byte		N15   , Fs1 , v056
	.byte	W03
@ 018   ----------------------------------------
	.byte	W12
	.byte		VOICE , 40
	.byte		N24   , Gs1 
	.byte	W24
	.byte	W01
	.byte		N20   , As1 
	.byte	W20
	.byte		VOICE , 39
	.byte		N15   , Bn1 
	.byte	W15
	.byte		N30   , Cn2 
	.byte	W24
@ 019   ----------------------------------------
	.byte	W06
	.byte		N30   
	.byte	W30
	.byte		N30   
	.byte	W30
	.byte		N30   
	.byte	W30
@ 020   ----------------------------------------
	.byte		VOICE , 40
	.byte		N30   , As1 
	.byte	W30
	.byte		N30   
	.byte	W30
	.byte		N30   
	.byte	W30
	.byte		N30   
	.byte	W06
@ 021   ----------------------------------------
	.byte	W24
	.byte		VOICE , 39
	.byte		N30   , Cn2 
	.byte	W30
	.byte		N30   
	.byte	W30
	.byte		N30   
	.byte	W12
@ 022   ----------------------------------------
	.byte	W18
	.byte		N30   
	.byte	W30
	.byte		VOICE , 40
	.byte		N30   , As1 
	.byte	W30
	.byte		N30   
	.byte	W18
@ 023   ----------------------------------------
	.byte	W12
	.byte		        Bn1 
	.byte	W30
	.byte		N30   
	.byte	W30
	.byte		        Cs2 
	.byte	W24
@ 024   ----------------------------------------
	.byte	W06
	.byte		N30   
	.byte	W30
	.byte		N30   
	.byte	W30
	.byte		N30   
	.byte	W30
@ 025   ----------------------------------------
	.byte		        Bn1 
	.byte	W30
	.byte		N30   
	.byte	W30
	.byte		N30   
	.byte	W30
	.byte		N30   
	.byte	W06
@ 026   ----------------------------------------
	.byte	W24
	.byte		VOICE , 39
	.byte		N30   
	.byte	W30
	.byte		N30   
	.byte	W30
	.byte		N30   
	.byte	W12
@ 027   ----------------------------------------
	.byte	W18
	.byte		N30   
	.byte	W30
	.byte		N30   
	.byte	W30
	.byte		N30   
	.byte	W18
@ 028   ----------------------------------------
	.byte	W12
	.byte		N30   
	.byte	W30
	.byte		N30   
	.byte	W30
	.byte		VOICE , 82
	.byte	W24
@ 029   ----------------------------------------
	.byte	W06
	.byte		        19
	.byte		N30   , AsM1, v127
	.byte	W30
	.byte		        Fs0 
	.byte	W30
	.byte		        Cs1 
	.byte	W30
@ 030   ----------------------------------------
ch52_2_030:
	.byte		N60   , En1 , v127
	.byte	W60
	.byte		N54   , En1 , v044
	.byte	W36
	.byte	PEND
@ 031   ----------------------------------------
ch52_2_031:
	.byte	W19
	.byte		N05   , Dn1 , v127
	.byte	W05
	.byte		N15   , En1 
	.byte	W15
	.byte		N30   
	.byte	W30
	.byte		N15   , An0 
	.byte	W15
	.byte		N54   
	.byte	W12
	.byte	PEND
@ 032   ----------------------------------------
ch52_2_032:
	.byte	W42
	.byte	W01
	.byte		N15   , BnM1, v127
	.byte	W15
	.byte		TIE   
	.byte	W36
	.byte	W02
	.byte	PEND
@ 033   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte	W24
@ 034   ----------------------------------------
	.byte	W06
	.byte		N30   , AsM1
	.byte	W30
	.byte		        Fs0 
	.byte	W30
	.byte		        Cs1 
	.byte	W30
@ 035   ----------------------------------------
	.byte	PATT
	 .word	ch52_2_030
@ 036   ----------------------------------------
	.byte	PATT
	 .word	ch52_2_031
@ 037   ----------------------------------------
	.byte	PATT
	 .word	ch52_2_032
@ 038   ----------------------------------------
	.byte	W72
	.byte		EOT   , BnM1
	.byte		VOICE , 14
	.byte		N30   , Gn0 , v012
	.byte	W24
@ 039   ----------------------------------------
	.byte	W06
	.byte		        Gn0 , v080
	.byte	W30
	.byte		        Gn0 , v064
	.byte	W30
	.byte		        Gn0 , v048
	.byte	W30
@ 040   ----------------------------------------
	.byte		        Gn0 , v012
	.byte	W30
	.byte		        Gn0 , v080
	.byte	W30
	.byte		        Gn0 , v064
	.byte	W30
	.byte		        Gn0 , v048
	.byte	W06
@ 041   ----------------------------------------
	.byte	W24
	.byte		VOICE , 39
	.byte		N30   , Dn1 , v080
	.byte	W30
	.byte		N30   
	.byte	W30
	.byte		        Cs1 
	.byte	W12
@ 042   ----------------------------------------
	.byte	W18
	.byte		N30   
	.byte	W30
	.byte		N30   
	.byte	W30
	.byte		N30   
	.byte	W18
@ 043   ----------------------------------------
	.byte	W12
	.byte		N30   
	.byte	W30
	.byte		N30   
	.byte	W30
	.byte		VOICE , 40
	.byte		N30   , Cn1 
	.byte	W24
@ 044   ----------------------------------------
	.byte	W06
	.byte		N30   
	.byte	W30
	.byte		VOICE , 39
	.byte		N30   , Bn0 
	.byte	W30
	.byte		N30   
	.byte	W30
@ 045   ----------------------------------------
	.byte		N30   
	.byte	W30
	.byte		N30   
	.byte	W30
	.byte		N30   
	.byte	W30
	.byte		N30   
	.byte	W06
@ 046   ----------------------------------------
	.byte	W24
	.byte		        An0 
	.byte	W30
	.byte		N30   
	.byte	W30
	.byte		        Gs0 
	.byte	W12
@ 047   ----------------------------------------
	.byte	W18
	.byte		N30   
	.byte	W30
	.byte		N30   
	.byte	W30
	.byte		N30   
	.byte	W18
@ 048   ----------------------------------------
	.byte	W12
	.byte		N30   
	.byte	W30
	.byte		N30   
	.byte	W30
	.byte		        Gn0 
	.byte	W24
@ 049   ----------------------------------------
	.byte	W06
	.byte		N30   
	.byte	W30
	.byte		VOICE , 40
	.byte		N30   , Bn0 
	.byte	W30
	.byte		N30   
	.byte	W30
@ 050   ----------------------------------------
	.byte		        As0 
	.byte	W30
	.byte		        As0 , v068
	.byte	W30
	.byte		        As0 , v048
	.byte	W30
	.byte		        As0 , v040
	.byte	W06
	.byte	GOTO
	 .word	ch52_2_B1
ch52_2_B2:
@ 051   ----------------------------------------
	.byte	W24
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

ch52_3:
	.byte		VOL   , 127*ch52_mvl/mxv
	.byte	KEYSH , ch52_key+0
ch52_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 69
	.byte		N30   , Cn2 , v127
	.byte	W30
	.byte		N30   
	.byte	W30
	.byte		N30   
	.byte	W30
	.byte		N30   
	.byte	W06
@ 001   ----------------------------------------
	.byte	W24
	.byte		N60   , Fs1 
	.byte	W60
	.byte		N60   
	.byte	W12
@ 002   ----------------------------------------
	.byte	W48
	.byte		N30   , Cn2 
	.byte	W30
	.byte		N30   
	.byte	W18
@ 003   ----------------------------------------
	.byte	W12
	.byte		N30   
	.byte	W30
	.byte		N30   
	.byte	W30
	.byte		        Fs1 , v112
	.byte	W24
@ 004   ----------------------------------------
	.byte	W06
	.byte		        Fs1 , v080
	.byte	W30
	.byte		        Fs1 , v064
	.byte	W30
	.byte		        Fs1 , v044
	.byte	W30
@ 005   ----------------------------------------
	.byte		VOICE , 19
	.byte	W44
	.byte	W01
	.byte		N30   , Cs0 , v127
	.byte	W30
	.byte		        As0 
	.byte	W21
@ 006   ----------------------------------------
ch52_3_006:
	.byte	W09
	.byte		N44   , Fs1 , v127
	.byte	W44
	.byte	W01
	.byte		N60   , En1 , v048
	.byte	W42
	.byte	PEND
@ 007   ----------------------------------------
ch52_3_007:
	.byte	W18
	.byte		N40   , En1 , v040
	.byte	W40
	.byte		N20   , Dn1 , v127
	.byte	W20
	.byte		N24   , Bn0 
	.byte	W18
	.byte	PEND
@ 008   ----------------------------------------
ch52_3_008:
	.byte	W07
	.byte		N20   , Gn0 , v127
	.byte	W20
	.byte		N44   , En0 
	.byte	W44
	.byte	W01
	.byte		N15   , Cs0 
	.byte	W15
	.byte		TIE   
	.byte	W09
	.byte	PEND
@ 009   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 010   ----------------------------------------
	.byte	W44
	.byte	W01
	.byte		N30   
	.byte	W30
	.byte		        As0 
	.byte	W21
@ 011   ----------------------------------------
	.byte	PATT
	 .word	ch52_3_006
@ 012   ----------------------------------------
	.byte	PATT
	 .word	ch52_3_007
@ 013   ----------------------------------------
	.byte	PATT
	 .word	ch52_3_008
@ 014   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cs0 
@ 015   ----------------------------------------
	.byte		VOICE , 14
	.byte		N30   , Gn0 , v012
	.byte	W30
	.byte		        Gn0 , v080
	.byte	W30
	.byte		        Gn0 , v064
	.byte	W30
	.byte		VOICE , 82
	.byte		N15   , Fs0 , v127
	.byte	W06
@ 016   ----------------------------------------
	.byte	W09
	.byte		N44   , Gn0 
	.byte	W44
	.byte	W01
	.byte		N15   , Cs0 
	.byte	W15
	.byte		N44   , Fs0 
	.byte	W24
	.byte	W03
@ 017   ----------------------------------------
	.byte	W18
	.byte		VOICE , 84
	.byte		N15   , Cn1 
	.byte	W15
	.byte		N64   , Cn1 , v096
	.byte	W60
	.byte	W03
@ 018   ----------------------------------------
	.byte	W02
	.byte		VOICE , 38
	.byte		N05   , Cn2 , v052
	.byte	W05
	.byte		        Cn2 , v080
	.byte	W05
	.byte		N15   , Cn2 , v104
	.byte	W15
	.byte		        Cn2 , v064
	.byte	W15
	.byte		N10   , Cn1 , v127
	.byte	W10
	.byte		        Gn0 , v104
	.byte	W10
	.byte		        En0 , v096
	.byte	W10
	.byte		VOICE , 80
	.byte		N15   , Cn1 , v127
	.byte	W15
	.byte		        Cn1 , v080
	.byte	W09
@ 019   ----------------------------------------
	.byte	W06
	.byte		        Cn2 , v127
	.byte	W15
	.byte		        Cn2 , v080
	.byte	W15
	.byte		        Cn1 , v127
	.byte	W15
	.byte		        Cn1 , v080
	.byte	W15
	.byte		        Cn2 , v127
	.byte	W15
	.byte		        Cn2 , v080
	.byte	W15
@ 020   ----------------------------------------
ch52_3_020:
	.byte		N15   , Fs1 , v127
	.byte	W15
	.byte		        Fs1 , v080
	.byte	W15
	.byte		        Fs2 , v127
	.byte	W15
	.byte		        Fs2 , v080
	.byte	W15
	.byte		        Fs1 , v127
	.byte	W15
	.byte		        Fs1 , v080
	.byte	W15
	.byte		        Fs2 , v127
	.byte	W06
	.byte	PEND
@ 021   ----------------------------------------
	.byte	W09
	.byte		        Fs2 , v080
	.byte	W15
	.byte		        Cn1 , v127
	.byte	W15
	.byte		        Cn1 , v080
	.byte	W15
	.byte		        Cn2 , v127
	.byte	W15
	.byte		        Cn2 , v080
	.byte	W15
	.byte		        Cn1 , v127
	.byte	W12
@ 022   ----------------------------------------
	.byte	W03
	.byte		        Cn1 , v080
	.byte	W15
	.byte		        Cn2 , v127
	.byte	W15
	.byte		        Cn2 , v080
	.byte	W15
	.byte		        Fs1 , v127
	.byte	W15
	.byte		        Fs1 , v080
	.byte	W15
	.byte		        Fs2 , v127
	.byte	W15
	.byte		        Fs2 , v080
	.byte	W03
@ 023   ----------------------------------------
	.byte	W12
	.byte		        Gn1 , v127
	.byte	W15
	.byte		        Gn1 , v080
	.byte	W15
	.byte		        Gn2 , v127
	.byte	W15
	.byte		        Gn2 , v080
	.byte	W15
	.byte		        An1 , v127
	.byte	W15
	.byte		        An1 , v080
	.byte	W09
@ 024   ----------------------------------------
	.byte	W06
	.byte		        An2 , v127
	.byte	W15
	.byte		        An2 , v080
	.byte	W15
	.byte		        An1 , v127
	.byte	W15
	.byte		        An1 , v080
	.byte	W15
	.byte		        An2 , v127
	.byte	W15
	.byte		        An2 , v080
	.byte	W15
@ 025   ----------------------------------------
	.byte		        En1 , v127
	.byte	W15
	.byte		        En1 , v080
	.byte	W15
	.byte		        En2 , v127
	.byte	W15
	.byte		        En2 , v080
	.byte	W15
	.byte		        En1 , v127
	.byte	W15
	.byte		        En1 , v080
	.byte	W15
	.byte		        En2 , v127
	.byte	W06
@ 026   ----------------------------------------
	.byte	W09
	.byte		        En2 , v080
	.byte	W15
	.byte		        Bn1 , v127
	.byte	W15
	.byte		        Bn1 , v080
	.byte	W15
	.byte		        Bn2 , v127
	.byte	W15
	.byte		        Bn2 , v080
	.byte	W15
	.byte		        Bn1 , v127
	.byte	W12
@ 027   ----------------------------------------
	.byte	W03
	.byte		        Bn1 , v080
	.byte	W15
	.byte		        Bn2 , v127
	.byte	W15
	.byte		        Bn2 , v080
	.byte	W15
	.byte		        Bn1 , v127
	.byte	W15
	.byte		        Bn1 , v080
	.byte	W15
	.byte		        Bn2 , v127
	.byte	W15
	.byte		        Bn2 , v080
	.byte	W03
@ 028   ----------------------------------------
	.byte	W12
	.byte		        Bn1 , v127
	.byte	W15
	.byte		        Bn1 , v080
	.byte	W15
	.byte		        Bn2 , v127
	.byte	W15
	.byte		        Bn2 , v080
	.byte	W15
	.byte		VOICE , 82
	.byte		N44   , Cs1 , v127
	.byte	W24
@ 029   ----------------------------------------
	.byte	W21
	.byte		VOICE , 19
	.byte		N30   , Cs0 
	.byte	W30
	.byte		        As0 
	.byte	W30
	.byte		N44   , Fs1 
	.byte	W15
@ 030   ----------------------------------------
ch52_3_030:
	.byte	W30
	.byte		N60   , En1 , v048
	.byte	W60
	.byte		N40   , En1 , v040
	.byte	W06
	.byte	PEND
@ 031   ----------------------------------------
ch52_3_031:
	.byte	W32
	.byte	W02
	.byte		N20   , Dn1 , v127
	.byte	W20
	.byte		N24   , Bn0 
	.byte	W24
	.byte	W01
	.byte		N20   , Gn0 
	.byte	W17
	.byte	PEND
@ 032   ----------------------------------------
ch52_3_032:
	.byte	W03
	.byte		N44   , En0 , v127
	.byte	W44
	.byte	W01
	.byte		N15   , Cs0 
	.byte	W15
	.byte		TIE   
	.byte	W32
	.byte	W01
	.byte	PEND
@ 033   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte	W24
@ 034   ----------------------------------------
	.byte	W21
	.byte		N30   
	.byte	W30
	.byte		        As0 
	.byte	W30
	.byte		N44   , Fs1 
	.byte	W15
@ 035   ----------------------------------------
	.byte	PATT
	 .word	ch52_3_030
@ 036   ----------------------------------------
	.byte	PATT
	 .word	ch52_3_031
@ 037   ----------------------------------------
	.byte	PATT
	 .word	ch52_3_032
@ 038   ----------------------------------------
	.byte	W72
	.byte		EOT   , Cs0 
	.byte		VOICE , 80
	.byte		N15   , Fs1 , v127
	.byte	W15
	.byte		        Fs1 , v080
	.byte	W09
@ 039   ----------------------------------------
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W15
	.byte		        Fs2 , v080
	.byte	W15
	.byte		        Fs1 , v127
	.byte	W15
	.byte		        Fs1 , v080
	.byte	W15
	.byte		        Fs2 , v127
	.byte	W15
	.byte		        Fs2 , v080
	.byte	W15
@ 040   ----------------------------------------
	.byte	PATT
	 .word	ch52_3_020
@ 041   ----------------------------------------
	.byte	W09
	.byte		N15   , Fs2 , v080
	.byte	W15
	.byte		VOICE , 14
	.byte		N30   , Gn0 , v012
	.byte	W30
	.byte		        Gn0 , v080
	.byte	W30
	.byte		        Gn0 , v064
	.byte	W12
@ 042   ----------------------------------------
	.byte	W18
	.byte		        Gn0 , v048
	.byte	W30
	.byte		VOICE , 19
	.byte		N30   , Cs1 , v127
	.byte	W30
	.byte		VOICE , 14
	.byte		N30   , Gn0 , v080
	.byte	W18
@ 043   ----------------------------------------
	.byte	W12
	.byte		VOICE , 19
	.byte		N30   , Fs0 , v127
	.byte	W30
	.byte		VOICE , 14
	.byte		N30   , Gn0 , v048
	.byte	W30
	.byte		VOICE , 19
	.byte		N30   , Ds0 , v127
	.byte	W24
@ 044   ----------------------------------------
	.byte	W06
	.byte		VOICE , 14
	.byte		N30   , Gn0 , v080
	.byte	W30
	.byte		        Gn0 , v064
	.byte	W30
	.byte		        Gn0 , v048
	.byte	W30
@ 045   ----------------------------------------
	.byte		VOICE , 19
	.byte		N30   , Gs0 , v127
	.byte	W30
	.byte		VOICE , 14
	.byte		N30   , Gn0 , v080
	.byte	W30
	.byte		VOICE , 19
	.byte		N30   , Fn0 , v127
	.byte	W30
	.byte		VOICE , 14
	.byte		N30   , Gn0 , v048
	.byte	W06
@ 046   ----------------------------------------
	.byte	W24
	.byte		VOICE , 19
	.byte		N30   , Cs0 , v127
	.byte	W30
	.byte		VOICE , 14
	.byte		N15   , Gn0 , v080
	.byte	W15
	.byte		VOICE , 19
	.byte		N15   , Dn0 , v127
	.byte	W15
	.byte		N30   , Ds0 
	.byte	W12
@ 047   ----------------------------------------
	.byte	W18
	.byte		        Gs0 
	.byte	W30
	.byte		VOICE , 14
	.byte		N30   , Gn0 , v012
	.byte	W30
	.byte		        Gn0 , v080
	.byte	W18
@ 048   ----------------------------------------
	.byte	W12
	.byte		        Gn0 , v064
	.byte	W30
	.byte		N10   , Gn0 , v048
	.byte	W10
	.byte		VOICE , 19
	.byte		N10   , Gn0 , v127
	.byte	W10
	.byte		        Bn0 
	.byte	W10
	.byte		N20   , Dn1 
	.byte	W20
	.byte		N05   , Bn0 
	.byte	W04
@ 049   ----------------------------------------
	.byte	W01
	.byte		        Dn1 
	.byte	W05
	.byte		N30   , Gn1 
	.byte	W30
	.byte		VOICE , 14
	.byte		N30   , Gn0 , v064
	.byte	W30
	.byte		N20   , Gn0 , v048
	.byte	W20
	.byte		VOICE , 19
	.byte		N05   , Fs1 , v127
	.byte	W05
	.byte		        Fn1 
	.byte	W05
@ 050   ----------------------------------------
	.byte		N30   , Fs1 
	.byte	W30
	.byte		VOICE , 14
	.byte		N30   , Gn0 , v080
	.byte	W30
	.byte		        Gn0 , v064
	.byte	W30
	.byte		        Gn0 , v048
	.byte	W06
	.byte	GOTO
	 .word	ch52_3_B1
ch52_3_B2:
@ 051   ----------------------------------------
	.byte	W24
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

ch52_4:
	.byte		VOL   , 127*ch52_mvl/mxv
	.byte	KEYSH , ch52_key+0
ch52_4_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 69
	.byte		N60   , Cn1 , v127
	.byte	W60
	.byte		N60   
	.byte	W36
@ 001   ----------------------------------------
	.byte	W36
	.byte	W03
	.byte		VOICE , 19
	.byte	W15
	.byte		N10   , Gn1 , v068
	.byte	W10
	.byte		N05   , Gn1 , v044
	.byte	W05
	.byte		N10   , As1 , v068
	.byte	W10
	.byte		N05   , As1 , v044
	.byte	W05
	.byte		N10   , As0 , v068
	.byte	W10
	.byte		N05   , As0 , v044
	.byte	W02
@ 002   ----------------------------------------
	.byte	W03
	.byte		N10   , Cs1 , v056
	.byte	W10
	.byte		N05   , Cs1 , v044
	.byte	W05
	.byte		N10   , Gn1 , v052
	.byte	W10
	.byte		N05   , Gn1 , v040
	.byte	W05
	.byte		N10   , Fs1 , v048
	.byte	W10
	.byte		N05   , Fs1 , v040
	.byte	W05
	.byte		TIE   , En1 , v044
	.byte	W48
@ 003   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		VOICE , 14
	.byte		TIE   , Cn0 , v012
	.byte	W24
@ 004   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 005   ----------------------------------------
	.byte		VOICE , 80
	.byte		N15   , Fs1 , v127
	.byte	W15
	.byte		        Fs1 , v080
	.byte	W15
	.byte		        Fs2 , v127
	.byte	W15
	.byte		        Fs2 , v080
	.byte	W15
	.byte		        Fs1 , v127
	.byte	W15
	.byte		        Fs1 , v080
	.byte	W15
	.byte		        Fs2 , v127
	.byte	W06
@ 006   ----------------------------------------
ch52_4_006:
	.byte	W09
	.byte		N15   , Fs2 , v080
	.byte	W15
	.byte		        En1 , v127
	.byte	W15
	.byte		        En1 , v080
	.byte	W15
	.byte		        En2 , v127
	.byte	W15
	.byte		        En2 , v080
	.byte	W15
	.byte		        En1 , v127
	.byte	W12
	.byte	PEND
@ 007   ----------------------------------------
ch52_4_007:
	.byte	W03
	.byte		N15   , En1 , v080
	.byte	W15
	.byte		        En2 , v127
	.byte	W15
	.byte		        En2 , v080
	.byte	W15
	.byte		        Cn1 , v127
	.byte	W15
	.byte		        Cn1 , v080
	.byte	W15
	.byte		        Cn2 , v127
	.byte	W15
	.byte		        Cn2 , v080
	.byte	W03
	.byte	PEND
@ 008   ----------------------------------------
ch52_4_008:
	.byte	W12
	.byte		N15   , Cn1 , v127
	.byte	W15
	.byte		        Cn1 , v080
	.byte	W15
	.byte		        Cn2 , v127
	.byte	W15
	.byte		        Cn2 , v080
	.byte	W15
	.byte		        Fs1 , v127
	.byte	W15
	.byte		        Fs1 , v080
	.byte	W09
	.byte	PEND
@ 009   ----------------------------------------
ch52_4_009:
	.byte	W06
	.byte		N15   , Fs2 , v127
	.byte	W15
	.byte		        Fs2 , v080
	.byte	W15
	.byte		        Fs1 , v127
	.byte	W15
	.byte		        Fs1 , v080
	.byte	W15
	.byte		        Fs2 , v127
	.byte	W15
	.byte		        Fs2 , v080
	.byte	W15
	.byte	PEND
@ 010   ----------------------------------------
ch52_4_010:
	.byte		N15   , Fs1 , v127
	.byte	W15
	.byte		        Fs1 , v080
	.byte	W15
	.byte		        Fs2 , v127
	.byte	W15
	.byte		        Fs2 , v080
	.byte	W15
	.byte		        Fs1 , v127
	.byte	W15
	.byte		        Fs1 , v080
	.byte	W15
	.byte		        Fs2 , v127
	.byte	W06
	.byte	PEND
@ 011   ----------------------------------------
	.byte	PATT
	 .word	ch52_4_006
@ 012   ----------------------------------------
	.byte	PATT
	 .word	ch52_4_007
@ 013   ----------------------------------------
	.byte	PATT
	 .word	ch52_4_008
@ 014   ----------------------------------------
	.byte	PATT
	 .word	ch52_4_009
@ 015   ----------------------------------------
	.byte	PATT
	 .word	ch52_4_010
@ 016   ----------------------------------------
ch52_4_016:
	.byte	W09
	.byte		N15   , Fs2 , v080
	.byte	W15
	.byte		        Fs1 , v127
	.byte	W15
	.byte		        Fs1 , v080
	.byte	W15
	.byte		        Fs2 , v127
	.byte	W15
	.byte		        Fs2 , v080
	.byte	W15
	.byte		        Fs1 , v127
	.byte	W12
	.byte	PEND
@ 017   ----------------------------------------
ch52_4_017:
	.byte	W03
	.byte		N15   , Fs1 , v080
	.byte	W15
	.byte		        Fs2 , v127
	.byte	W15
	.byte		        Fs2 , v080
	.byte	W15
	.byte		        Fs1 , v127
	.byte	W15
	.byte		        Fs1 , v080
	.byte	W15
	.byte		        Fs2 , v127
	.byte	W15
	.byte		        Fs2 , v080
	.byte	W03
	.byte	PEND
@ 018   ----------------------------------------
	.byte	W12
	.byte		        Fs1 , v127
	.byte	W15
	.byte		        Fs1 , v080
	.byte	W15
	.byte		        Fs2 , v127
	.byte	W15
	.byte		        Fs2 , v080
	.byte	W15
	.byte		VOICE , 2
	.byte		N05   , Bn0 , v036
	.byte	W05
	.byte		        Cn1 , v040
	.byte	W05
	.byte		        En1 , v044
	.byte	W05
	.byte		        Gn1 , v048
	.byte	W05
	.byte		        Bn1 , v052
	.byte	W04
@ 019   ----------------------------------------
	.byte	W01
	.byte		        Cn2 , v056
	.byte	W05
	.byte		        En2 , v060
	.byte	W05
	.byte		        Cn2 , v064
	.byte	W05
	.byte		        Bn1 , v068
	.byte	W05
	.byte		        Gn1 , v072
	.byte	W05
	.byte		        En1 , v076
	.byte	W05
	.byte		        Cn1 , v080
	.byte	W05
	.byte		        Bn0 , v084
	.byte	W05
	.byte		        Cn1 , v088
	.byte	W05
	.byte		        En1 , v092
	.byte	W05
	.byte		        Gn1 , v096
	.byte	W05
	.byte		        Bn1 , v100
	.byte	W05
	.byte		        Cn2 
	.byte	W05
	.byte		        En2 
	.byte	W05
	.byte		        Cn2 
	.byte	W05
	.byte		        Bn1 
	.byte	W05
	.byte		        Gn1 
	.byte	W05
	.byte		        En1 
	.byte	W05
	.byte		        Cn1 
	.byte	W05
@ 020   ----------------------------------------
	.byte		        As0 
	.byte	W05
	.byte		        Cs1 
	.byte	W05
	.byte		        Dn1 
	.byte	W05
	.byte		        Fs1 
	.byte	W05
	.byte		        As1 
	.byte	W05
	.byte		        Cs2 
	.byte	W05
	.byte		        Dn2 , v096
	.byte	W05
	.byte		        Cs2 , v092
	.byte	W05
	.byte		        As1 , v088
	.byte	W05
	.byte		        Fs1 , v084
	.byte	W05
	.byte		        Dn1 , v080
	.byte	W05
	.byte		        Cs1 , v076
	.byte	W05
	.byte		        As0 , v072
	.byte	W05
	.byte		        Cs1 , v068
	.byte	W05
	.byte		        Dn1 , v064
	.byte	W05
	.byte		        Fs1 , v060
	.byte	W05
	.byte		        As1 , v056
	.byte	W05
	.byte		        Cs2 , v052
	.byte	W05
	.byte		        Dn2 , v048
	.byte	W05
	.byte		        Cs2 
	.byte	W01
@ 021   ----------------------------------------
	.byte	W04
	.byte		        As1 , v044
	.byte	W05
	.byte		        Fs1 
	.byte	W05
	.byte		        Dn1 , v040
	.byte	W05
	.byte		        Cs1 
	.byte	W05
	.byte		        Bn0 , v036
	.byte	W05
	.byte		        Cn1 , v040
	.byte	W05
	.byte		        En1 , v044
	.byte	W05
	.byte		        Gn1 , v048
	.byte	W05
	.byte		        Bn1 , v052
	.byte	W05
	.byte		        Cn2 , v056
	.byte	W05
	.byte		        En2 , v060
	.byte	W05
	.byte		        Cn2 , v064
	.byte	W05
	.byte		        Bn1 , v068
	.byte	W05
	.byte		        Gn1 , v072
	.byte	W05
	.byte		        En1 , v076
	.byte	W05
	.byte		        Cn1 , v080
	.byte	W05
	.byte		        Bn0 , v084
	.byte	W05
	.byte		        Cn1 , v088
	.byte	W05
	.byte		        En1 , v092
	.byte	W02
@ 022   ----------------------------------------
	.byte	W03
	.byte		        Gn1 , v096
	.byte	W05
	.byte		        Bn1 , v100
	.byte	W05
	.byte		        Cn2 
	.byte	W05
	.byte		        En2 
	.byte	W05
	.byte		        Cn2 
	.byte	W05
	.byte		        Bn1 
	.byte	W05
	.byte		        Gn1 
	.byte	W05
	.byte		        En1 
	.byte	W05
	.byte		        Cn1 
	.byte	W05
	.byte		        As0 
	.byte	W05
	.byte		        Cs1 
	.byte	W05
	.byte		        Dn1 
	.byte	W05
	.byte		        Fs1 
	.byte	W05
	.byte		        As1 
	.byte	W05
	.byte		        Cs2 
	.byte	W05
	.byte		        Dn2 , v096
	.byte	W05
	.byte		        Cs2 , v092
	.byte	W05
	.byte		        As1 , v088
	.byte	W05
	.byte		        Fs1 , v084
	.byte	W03
@ 023   ----------------------------------------
	.byte	W02
	.byte		        Dn1 , v080
	.byte	W05
	.byte		        Cs1 , v076
	.byte	W05
	.byte		        Bn0 , v072
	.byte	W05
	.byte		        Dn1 
	.byte	W05
	.byte		        Fs1 
	.byte	W05
	.byte		        Gn1 
	.byte	W05
	.byte		        Bn1 
	.byte	W05
	.byte		        Dn2 
	.byte	W05
	.byte		        Fs2 
	.byte	W05
	.byte		        Dn2 
	.byte	W05
	.byte		        Bn1 
	.byte	W05
	.byte		        Gn1 
	.byte	W05
	.byte		        Fs1 
	.byte	W05
	.byte		        Dn1 
	.byte	W05
	.byte		        Bn0 
	.byte	W05
	.byte		        Cs1 
	.byte	W05
	.byte		        En1 
	.byte	W05
	.byte		        Fs1 
	.byte	W05
	.byte		        An1 
	.byte	W04
@ 024   ----------------------------------------
	.byte	W01
	.byte		        Bn1 
	.byte	W05
	.byte		        Cs2 
	.byte	W05
	.byte		        Bn1 
	.byte	W05
	.byte		        An1 
	.byte	W05
	.byte		        Fs1 
	.byte	W05
	.byte		        En1 
	.byte	W05
	.byte		        Cs1 
	.byte	W05
	.byte		        Bn0 
	.byte	W05
	.byte		        Cs1 
	.byte	W05
	.byte		        En1 
	.byte	W05
	.byte		        Fs1 
	.byte	W05
	.byte		        An1 
	.byte	W05
	.byte		        Bn1 
	.byte	W05
	.byte		        Cs2 
	.byte	W05
	.byte		        Bn1 
	.byte	W05
	.byte		        An1 
	.byte	W05
	.byte		        Fs1 
	.byte	W05
	.byte		        En1 
	.byte	W05
	.byte		        Cs1 
	.byte	W05
@ 025   ----------------------------------------
	.byte		        Bn0 
	.byte	W05
	.byte		        En1 
	.byte	W05
	.byte		        Fs1 
	.byte	W05
	.byte		        Gn1 
	.byte	W05
	.byte		        Bn1 
	.byte	W05
	.byte		        En2 
	.byte	W05
	.byte		        Fs2 
	.byte	W05
	.byte		        En2 
	.byte	W05
	.byte		        Bn1 
	.byte	W05
	.byte		        Gn1 
	.byte	W05
	.byte		        Fs1 
	.byte	W05
	.byte		        En1 
	.byte	W05
	.byte		        Bn0 
	.byte	W05
	.byte		        En1 
	.byte	W05
	.byte		        Fs1 
	.byte	W05
	.byte		        Gn1 
	.byte	W05
	.byte		        Bn1 
	.byte	W05
	.byte		        En2 
	.byte	W05
	.byte		        Fs2 
	.byte	W05
	.byte		        En2 
	.byte	W01
@ 026   ----------------------------------------
	.byte	W04
	.byte		        Bn1 
	.byte	W05
	.byte		        Gn1 
	.byte	W05
	.byte		        Fs1 
	.byte	W05
	.byte		        En1 
	.byte	W05
	.byte		        Bn0 
	.byte	W05
	.byte		        En1 
	.byte	W05
	.byte		        Fs1 
	.byte	W05
	.byte		        Bn1 
	.byte	W05
	.byte		        Cs2 
	.byte	W05
	.byte		        En2 
	.byte	W05
	.byte		        Fs2 
	.byte	W05
	.byte		        En2 
	.byte	W05
	.byte		        Cs2 
	.byte	W05
	.byte		        Bn1 
	.byte	W05
	.byte		        Fs1 
	.byte	W05
	.byte		        En1 
	.byte	W05
	.byte		        Bn0 
	.byte	W05
	.byte		        En1 
	.byte	W05
	.byte		        Fs1 
	.byte	W02
@ 027   ----------------------------------------
	.byte	W03
	.byte		        Bn1 
	.byte	W05
	.byte		        Cs2 
	.byte	W05
	.byte		        En2 
	.byte	W05
	.byte		        Fs2 
	.byte	W05
	.byte		        En2 
	.byte	W05
	.byte		        Cs2 
	.byte	W05
	.byte		        Bn1 
	.byte	W05
	.byte		        Fs1 
	.byte	W05
	.byte		        En1 
	.byte	W05
	.byte		        Bn0 
	.byte	W05
	.byte		        Ds1 
	.byte	W05
	.byte		        Fs1 
	.byte	W05
	.byte		        Bn1 
	.byte	W05
	.byte		        Cs2 
	.byte	W05
	.byte		        Ds2 
	.byte	W05
	.byte		        Fs2 
	.byte	W05
	.byte		        Ds2 
	.byte	W05
	.byte		        Cs2 
	.byte	W05
	.byte		        Bn1 , v068
	.byte	W03
@ 028   ----------------------------------------
	.byte	W02
	.byte		        Fs1 , v064
	.byte	W05
	.byte		        Ds1 , v060
	.byte	W05
	.byte		        Bn0 
	.byte	W05
	.byte		        Ds1 , v056
	.byte	W05
	.byte		        Fs1 
	.byte	W05
	.byte		        Bn1 , v052
	.byte	W05
	.byte		        Cs2 
	.byte	W05
	.byte		        Ds2 , v048
	.byte	W05
	.byte		        Fs2 
	.byte	W05
	.byte		        Ds2 , v044
	.byte	W05
	.byte		        Cs2 
	.byte	W05
	.byte		        Bn1 , v040
	.byte	W05
	.byte		        Fs1 
	.byte	W05
	.byte		        Ds1 , v036
	.byte	W05
	.byte		VOICE , 80
	.byte		N15   , Fs1 , v127
	.byte	W15
	.byte		        Fs1 , v080
	.byte	W09
@ 029   ----------------------------------------
	.byte	PATT
	 .word	ch52_4_009
@ 030   ----------------------------------------
ch52_4_030:
	.byte		N15   , En1 , v127
	.byte	W15
	.byte		        En1 , v080
	.byte	W15
	.byte		        En2 , v127
	.byte	W15
	.byte		        En2 , v080
	.byte	W15
	.byte		        En1 , v127
	.byte	W15
	.byte		        En1 , v080
	.byte	W15
	.byte		        En2 , v127
	.byte	W06
	.byte	PEND
@ 031   ----------------------------------------
ch52_4_031:
	.byte	W09
	.byte		N15   , En2 , v080
	.byte	W15
	.byte		        Cn1 , v127
	.byte	W15
	.byte		        Cn1 , v080
	.byte	W15
	.byte		        Cn2 , v127
	.byte	W15
	.byte		        Cn2 , v080
	.byte	W15
	.byte		        Cn1 , v127
	.byte	W12
	.byte	PEND
@ 032   ----------------------------------------
ch52_4_032:
	.byte	W03
	.byte		N15   , Cn1 , v080
	.byte	W15
	.byte		        Cn2 , v127
	.byte	W15
	.byte		        Cn2 , v080
	.byte	W15
	.byte		        Fs1 , v127
	.byte	W15
	.byte		        Fs1 , v080
	.byte	W15
	.byte		        Fs2 , v127
	.byte	W15
	.byte		        Fs2 , v080
	.byte	W03
	.byte	PEND
@ 033   ----------------------------------------
ch52_4_033:
	.byte	W12
	.byte		N15   , Fs1 , v127
	.byte	W15
	.byte		        Fs1 , v080
	.byte	W15
	.byte		        Fs2 , v127
	.byte	W15
	.byte		        Fs2 , v080
	.byte	W15
	.byte		        Fs1 , v127
	.byte	W15
	.byte		        Fs1 , v080
	.byte	W09
	.byte	PEND
@ 034   ----------------------------------------
	.byte	PATT
	 .word	ch52_4_009
@ 035   ----------------------------------------
	.byte	PATT
	 .word	ch52_4_030
@ 036   ----------------------------------------
	.byte	PATT
	 .word	ch52_4_031
@ 037   ----------------------------------------
	.byte	PATT
	 .word	ch52_4_032
@ 038   ----------------------------------------
	.byte	W12
	.byte		N15   , Fs1 , v127
	.byte	W15
	.byte		        Fs1 , v080
	.byte	W15
	.byte		        Fs2 , v127
	.byte	W15
	.byte		TIE   , Fs2 , v080
	.byte	W36
	.byte	W03
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	W80
	.byte		EOT   
	.byte		VOICE , 38
	.byte		N05   , Cn2 , v052
	.byte	W05
	.byte		        Cn2 , v072
	.byte	W05
	.byte		VOICE , 86
	.byte		N05   , Cn2 , v104
	.byte	W05
	.byte		VOICE , 0
	.byte	W01
@ 041   ----------------------------------------
	.byte	W09
	.byte		        38
	.byte		N15   , Cn2 , v080
	.byte	W15
	.byte		VOICE , 80
	.byte		N15   , Fs1 , v127
	.byte	W15
	.byte		        Fs1 , v080
	.byte	W15
	.byte		        Fs2 , v127
	.byte	W15
	.byte		        Fs2 , v080
	.byte	W15
	.byte		        Fs1 , v127
	.byte	W12
@ 042   ----------------------------------------
	.byte	PATT
	 .word	ch52_4_017
@ 043   ----------------------------------------
	.byte	PATT
	 .word	ch52_4_033
@ 044   ----------------------------------------
	.byte	PATT
	 .word	ch52_4_009
@ 045   ----------------------------------------
	.byte	PATT
	 .word	ch52_4_010
@ 046   ----------------------------------------
	.byte	PATT
	 .word	ch52_4_016
@ 047   ----------------------------------------
	.byte	PATT
	 .word	ch52_4_017
@ 048   ----------------------------------------
	.byte	PATT
	 .word	ch52_4_033
@ 049   ----------------------------------------
	.byte	W06
	.byte		N15   , Fs2 , v127
	.byte	W15
	.byte		        Fs2 , v080
	.byte	W15
	.byte		        Fs1 , v127
	.byte	W15
	.byte		        Fs1 , v080
	.byte	W15
	.byte		        Fs2 , v127
	.byte	W15
	.byte		N05   , Fs2 , v080
	.byte	W05
	.byte		VOICE , 38
	.byte		N05   , Cn2 , v064
	.byte	W05
	.byte		        Cn2 , v096
	.byte	W05
@ 050   ----------------------------------------
	.byte		TIE   , Cn2 , v127
	.byte	W96
	.byte	GOTO
	 .word	ch52_4_B1
ch52_4_B2:
@ 051   ----------------------------------------
	.byte	W24
	.byte		EOT   , Cn2 
	.byte	FINE

@******************************************************@
	.align	2

ch52:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	ch52_pri	@ Priority
	.byte	ch52_rev	@ Reverb.

	.word	ch52_grp

	.word	ch52_1
	.word	ch52_2
	.word	ch52_3
	.word	ch52_4

	.end
