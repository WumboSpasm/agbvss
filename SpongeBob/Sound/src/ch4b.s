	.include "MPlayDef.s"

	.equ	ch4b_grp, voicegroup000
	.equ	ch4b_pri, 128
	.equ	ch4b_rev, reverb_set+50
	.equ	ch4b_mvl, 127
	.equ	ch4b_key, 0
	.equ	ch4b_tbs, 1
	.equ	ch4b_exg, 0
	.equ	ch4b_cmp, 1

	.section .rodata
	.global	ch4b
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

ch4b_1:
	.byte		VOL   , 127*ch4b_mvl/mxv
	.byte	KEYSH , ch4b_key+0
ch4b_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 100*ch4b_tbs/2
	.byte		VOICE , 45
	.byte	W10
	.byte		N05   , En1 , v127
	.byte	W05
	.byte		N05   
	.byte	W05
	.byte		N05   
	.byte	W05
	.byte		        En1 , v064
	.byte	W05
	.byte		        Gn1 , v127
	.byte	W05
	.byte		        Gn1 , v064
	.byte	W05
	.byte		N15   , Fs1 , v127
	.byte	W15
	.byte		N05   , En1 
	.byte	W05
	.byte		        Fs1 
	.byte	W05
	.byte		        Fs1 , v064
	.byte	W05
	.byte		        Gn1 , v127
	.byte	W05
	.byte		        Gn1 , v064
	.byte	W05
	.byte		N20   , En1 , v127
	.byte	W16
@ 001   ----------------------------------------
	.byte	W04
	.byte		N30   , En1 , v056
	.byte	W30
	.byte		N24   , En1 , v044
	.byte	W24
	.byte	W01
	.byte		N15   
	.byte	W15
	.byte		N05   , En1 , v127
	.byte	W05
	.byte		N05   
	.byte	W05
	.byte		N05   
	.byte	W05
	.byte		        En1 , v064
	.byte	W05
	.byte		        Gn1 , v127
	.byte	W02
@ 002   ----------------------------------------
	.byte	W03
	.byte		        Gn1 , v064
	.byte	W05
	.byte		N15   , Fs1 , v127
	.byte	W15
	.byte		N05   , En1 
	.byte	W05
	.byte		        Fs1 
	.byte	W05
	.byte		        Fs1 , v064
	.byte	W05
	.byte		        Gn1 , v127
	.byte	W05
	.byte		        Gn1 , v064
	.byte	W05
	.byte		N15   , An1 , v127
	.byte	W15
	.byte		N05   , Gn1 
	.byte	W05
	.byte		        Fs1 
	.byte	W05
	.byte		        Fs1 , v064
	.byte	W05
	.byte		        Dn1 , v127
	.byte	W05
	.byte		        Dn1 , v064
	.byte	W05
	.byte		        En1 , v127
	.byte	W05
	.byte		        Dn1 
	.byte	W03
@ 003   ----------------------------------------
	.byte	W02
	.byte		N20   , En1 
	.byte	W20
	.byte		        En1 , v044
	.byte	W20
	.byte		N05   , En1 , v127
	.byte	W05
	.byte		N05   
	.byte	W05
	.byte		N05   
	.byte	W05
	.byte		        En1 , v064
	.byte	W05
	.byte		        Gn1 , v127
	.byte	W05
	.byte		        Gn1 , v064
	.byte	W05
	.byte		N15   , Fs1 , v127
	.byte	W15
	.byte		N05   , En1 
	.byte	W05
	.byte		        Fs1 
	.byte	W04
@ 004   ----------------------------------------
	.byte	W01
	.byte		        Fs1 , v064
	.byte	W05
	.byte		        Gn1 , v127
	.byte	W05
	.byte		        Gn1 , v064
	.byte	W05
	.byte		N30   , An1 , v127
	.byte	W30
	.byte		        En1 
	.byte	W30
	.byte		N20   , En1 , v052
	.byte	W20
@ 005   ----------------------------------------
	.byte		N40   , Bn1 , v127
	.byte	W40
	.byte		N20   , As1 
	.byte	W20
	.byte		N10   , An1 
	.byte	W10
	.byte		        An1 , v052
	.byte	W24
	.byte	W02
	.byte	GOTO
	 .word	ch4b_1_B1
ch4b_1_B2:
@ 006   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

ch4b_2:
	.byte		VOL   , 127*ch4b_mvl/mxv
	.byte	KEYSH , ch4b_key+0
ch4b_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 45
	.byte	W10
	.byte		N05   , Bn1 , v127
	.byte	W05
	.byte		N05   
	.byte	W05
	.byte		N05   
	.byte	W05
	.byte		        Bn1 , v064
	.byte	W05
	.byte		        Dn2 , v127
	.byte	W05
	.byte		        Dn2 , v064
	.byte	W05
	.byte		N15   , Cs2 , v127
	.byte	W15
	.byte		N05   , Bn1 
	.byte	W05
	.byte		        Cs2 
	.byte	W05
	.byte		        Cs2 , v064
	.byte	W05
	.byte		        Dn2 , v127
	.byte	W05
	.byte		        Dn2 , v064
	.byte	W05
	.byte		N20   , Bn1 , v127
	.byte	W16
@ 001   ----------------------------------------
	.byte	W04
	.byte		N30   , Bn1 , v056
	.byte	W30
	.byte		N24   , Bn1 , v044
	.byte	W24
	.byte	W01
	.byte		N15   
	.byte	W15
	.byte		N05   , Bn1 , v127
	.byte	W05
	.byte		N05   
	.byte	W05
	.byte		N05   
	.byte	W05
	.byte		        Bn1 , v064
	.byte	W05
	.byte		        Dn2 , v127
	.byte	W02
@ 002   ----------------------------------------
	.byte	W03
	.byte		        Dn2 , v064
	.byte	W05
	.byte		N15   , Cs2 , v127
	.byte	W15
	.byte		N05   , Bn1 
	.byte	W05
	.byte		        Cs2 
	.byte	W05
	.byte		        Cs2 , v064
	.byte	W05
	.byte		        Dn2 , v127
	.byte	W05
	.byte		        Dn2 , v064
	.byte	W05
	.byte		N15   , En2 , v127
	.byte	W15
	.byte		N05   , Dn2 
	.byte	W05
	.byte		        Cs2 
	.byte	W05
	.byte		        Cs2 , v064
	.byte	W05
	.byte		        An1 , v127
	.byte	W05
	.byte		        An1 , v064
	.byte	W05
	.byte		        Bn1 , v127
	.byte	W05
	.byte		        An1 
	.byte	W03
@ 003   ----------------------------------------
	.byte	W02
	.byte		N20   , Bn1 
	.byte	W20
	.byte		        Bn1 , v044
	.byte	W20
	.byte		N05   , Bn1 , v127
	.byte	W05
	.byte		N05   
	.byte	W05
	.byte		N05   
	.byte	W05
	.byte		        Bn1 , v064
	.byte	W05
	.byte		        Dn2 , v127
	.byte	W05
	.byte		        Dn2 , v064
	.byte	W05
	.byte		N15   , Cs2 , v127
	.byte	W15
	.byte		N05   , Bn1 
	.byte	W05
	.byte		        Cs2 
	.byte	W04
@ 004   ----------------------------------------
	.byte	W01
	.byte		        Cs2 , v064
	.byte	W05
	.byte		        Dn2 , v127
	.byte	W05
	.byte		        Dn2 , v064
	.byte	W05
	.byte		N30   , Cs2 , v127
	.byte	W30
	.byte		        An1 
	.byte	W30
	.byte		N20   , An1 , v052
	.byte	W20
@ 005   ----------------------------------------
	.byte		N40   , Gn1 , v127
	.byte	W40
	.byte		N20   , Fs1 
	.byte	W20
	.byte		N10   , Fn1 
	.byte	W10
	.byte		        Fn1 , v052
	.byte	W24
	.byte	W02
	.byte	GOTO
	 .word	ch4b_2_B1
ch4b_2_B2:
@ 006   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

ch4b_3:
	.byte		VOL   , 127*ch4b_mvl/mxv
	.byte	KEYSH , ch4b_key+0
ch4b_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 45
	.byte		N68   , En0 , v127
	.byte	W68
	.byte	W02
	.byte		N10   , En0 , v052
	.byte	W10
	.byte		VOICE , 16
	.byte		N10   , En2 , v092
	.byte	W10
	.byte		N05   , En2 , v052
	.byte	W05
	.byte		        En2 , v092
	.byte	W01
@ 001   ----------------------------------------
	.byte	W04
	.byte		N10   , Bn1 
	.byte	W10
	.byte		N05   , Bn1 , v052
	.byte	W05
	.byte		        En2 , v092
	.byte	W05
	.byte		        En2 , v052
	.byte	W05
	.byte		        En2 , v092
	.byte	W05
	.byte		        En2 , v052
	.byte	W05
	.byte		        En2 , v092
	.byte	W05
	.byte		        Bn1 
	.byte	W05
	.byte		        Bn1 , v052
	.byte	W05
	.byte		        Bn1 , v092
	.byte	W05
	.byte		        Bn1 , v052
	.byte	W05
	.byte		N10   , En2 , v092
	.byte	W10
	.byte		N05   , En2 , v052
	.byte	W05
	.byte		        En2 , v092
	.byte	W05
	.byte		N10   , Bn1 
	.byte	W10
	.byte		N05   , Bn1 , v052
	.byte	W02
@ 002   ----------------------------------------
	.byte	W03
	.byte		        En2 , v092
	.byte	W05
	.byte		        En2 , v052
	.byte	W05
	.byte		        En2 , v092
	.byte	W05
	.byte		        En2 , v052
	.byte	W05
	.byte		        En2 , v092
	.byte	W05
	.byte		        Bn1 
	.byte	W05
	.byte		        Bn1 , v052
	.byte	W05
	.byte		        Bn1 , v092
	.byte	W05
	.byte		        Bn1 , v052
	.byte	W05
	.byte		N10   , An1 , v092
	.byte	W10
	.byte		N05   , An1 , v052
	.byte	W05
	.byte		        An1 , v092
	.byte	W05
	.byte		N10   , En1 
	.byte	W10
	.byte		N05   , En1 , v052
	.byte	W05
	.byte		        En2 , v092
	.byte	W05
	.byte		        En2 , v052
	.byte	W05
	.byte		        En2 , v092
	.byte	W03
@ 003   ----------------------------------------
	.byte	W02
	.byte		        En2 , v052
	.byte	W05
	.byte		        En2 , v092
	.byte	W05
	.byte		        Bn1 
	.byte	W05
	.byte		        Bn1 , v052
	.byte	W05
	.byte		        Bn1 , v092
	.byte	W05
	.byte		        Bn1 , v052
	.byte	W05
	.byte		N10   , En2 , v092
	.byte	W10
	.byte		N05   , En2 , v052
	.byte	W05
	.byte		        En2 , v092
	.byte	W05
	.byte		N10   , Bn1 
	.byte	W10
	.byte		N05   , Bn1 , v052
	.byte	W05
	.byte		        En2 , v092
	.byte	W05
	.byte		        En2 , v052
	.byte	W05
	.byte		        En2 , v092
	.byte	W05
	.byte		        En2 , v052
	.byte	W05
	.byte		        En2 , v092
	.byte	W05
	.byte		        Bn1 
	.byte	W04
@ 004   ----------------------------------------
	.byte	W01
	.byte		        Bn1 , v052
	.byte	W05
	.byte		        Bn1 , v092
	.byte	W05
	.byte		        Bn1 , v052
	.byte	W05
	.byte		N10   , An1 , v092
	.byte	W10
	.byte		N05   , An1 , v052
	.byte	W05
	.byte		        An1 , v092
	.byte	W05
	.byte		N10   , En1 
	.byte	W10
	.byte		N05   , En1 , v052
	.byte	W05
	.byte		        An1 , v092
	.byte	W05
	.byte		        An1 , v052
	.byte	W05
	.byte		        An1 , v092
	.byte	W05
	.byte		        An1 , v052
	.byte	W05
	.byte		        An1 , v092
	.byte	W05
	.byte		        En1 
	.byte	W05
	.byte		        En1 , v052
	.byte	W05
	.byte		        En1 , v092
	.byte	W05
	.byte		        En1 , v052
	.byte	W05
@ 005   ----------------------------------------
	.byte		N15   , Gn1 , v092
	.byte	W15
	.byte		        Gn1 , v052
	.byte	W15
	.byte		N10   , Gn1 , v044
	.byte	W10
	.byte		        Fs1 , v092
	.byte	W10
	.byte		        Fs1 , v052
	.byte	W10
	.byte		        Fn1 , v092
	.byte	W10
	.byte		        Fn1 , v052
	.byte	W24
	.byte	W02
	.byte	GOTO
	 .word	ch4b_3_B1
ch4b_3_B2:
@ 006   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

ch4b_4:
	.byte		VOL   , 127*ch4b_mvl/mxv
	.byte	KEYSH , ch4b_key+0
ch4b_4_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 45
	.byte		N60   , EnM1, v127
	.byte	W60
	.byte		VOICE , 5
	.byte		N05   , Cn2 , v080
	.byte	W05
	.byte		N05   
	.byte	W05
	.byte		VOICE , 61
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		N05   
	.byte	W05
	.byte		VOICE , 8
	.byte		N05   , En2 , v064
	.byte	W05
	.byte		        En2 , v112
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Cn2 , v096
	.byte	W01
@ 001   ----------------------------------------
	.byte	W04
	.byte		        Cn2 , v127
	.byte	W05
	.byte		VOICE , 8
	.byte		N05   , En2 , v064
	.byte	W05
	.byte		        En2 , v112
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v127
	.byte	W05
	.byte		VOICE , 8
	.byte		N05   , En2 , v064
	.byte	W05
	.byte		        En2 , v112
	.byte	W05
	.byte		VOICE , 5
	.byte		N05   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Cn2 , v127
	.byte	W05
	.byte		VOICE , 5
	.byte		N05   , Cn2 , v104
	.byte	W05
	.byte		        Cn2 , v080
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Cn2 , v127
	.byte	W05
	.byte		N05   
	.byte	W05
	.byte		VOICE , 8
	.byte		N05   , En2 , v064
	.byte	W05
	.byte		        En2 , v112
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v127
	.byte	W05
	.byte		VOICE , 8
	.byte		N05   , En2 , v064
	.byte	W05
	.byte		        En2 , v112
	.byte	W02
@ 002   ----------------------------------------
	.byte	W03
	.byte		VOICE , 61
	.byte		N05   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v127
	.byte	W05
	.byte		VOICE , 8
	.byte		N05   , En2 , v064
	.byte	W05
	.byte		        En2 , v112
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v127
	.byte	W05
	.byte		VOICE , 8
	.byte		N05   , En2 , v064
	.byte	W05
	.byte		        En2 , v112
	.byte	W05
	.byte		        En2 , v064
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Cn2 , v127
	.byte	W05
	.byte		VOICE , 8
	.byte		N05   , En2 , v064
	.byte	W05
	.byte		        En2 , v112
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v127
	.byte	W05
	.byte		VOICE , 8
	.byte		N05   , En2 , v064
	.byte	W05
	.byte		        En2 , v112
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v127
	.byte	W05
	.byte		VOICE , 8
	.byte		N05   , En2 , v064
	.byte	W03
@ 003   ----------------------------------------
	.byte	W02
	.byte		        En2 , v112
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v127
	.byte	W05
	.byte		VOICE , 5
	.byte		N05   , Cn2 , v104
	.byte	W05
	.byte		        Cn2 , v112
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Cn2 , v127
	.byte	W05
	.byte		N05   
	.byte	W05
	.byte		VOICE , 8
	.byte		N05   , En2 , v064
	.byte	W05
	.byte		        En2 , v112
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v127
	.byte	W05
	.byte		VOICE , 8
	.byte		N05   , En2 , v064
	.byte	W05
	.byte		        En2 , v112
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v127
	.byte	W05
	.byte		VOICE , 8
	.byte		N05   , En2 , v064
	.byte	W05
	.byte		        En2 , v112
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v127
	.byte	W04
@ 004   ----------------------------------------
	.byte	W01
	.byte		VOICE , 8
	.byte		N05   , En2 , v064
	.byte	W05
	.byte		        En2 , v112
	.byte	W05
	.byte		        En2 , v064
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Cn2 , v080
	.byte	W05
	.byte		VOICE , 8
	.byte		N05   , En2 , v064
	.byte	W05
	.byte		        En2 , v112
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v127
	.byte	W05
	.byte		VOICE , 8
	.byte		N05   , En2 , v064
	.byte	W05
	.byte		        En2 , v112
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v127
	.byte	W05
	.byte		VOICE , 8
	.byte		N05   , En2 , v064
	.byte	W05
	.byte		        En2 , v112
	.byte	W05
	.byte		VOICE , 5
	.byte		N05   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v080
	.byte	W05
	.byte		N05   
	.byte	W05
	.byte		VOICE , 61
	.byte		N05   , Cn2 , v127
	.byte	W05
	.byte		VOICE , 8
	.byte		N05   , En2 , v064
	.byte	W05
@ 005   ----------------------------------------
	.byte		VOICE , 61
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 10
	.byte		N05   , Dn2 , v100
	.byte	W05
	.byte		VOICE , 11
	.byte		N05   , Dn2 , v080
	.byte	W05
	.byte		N10   , Dn2 , v104
	.byte	W10
	.byte		VOICE , 10
	.byte		N05   , Dn2 , v100
	.byte	W05
	.byte		VOICE , 11
	.byte		N05   , Dn2 , v080
	.byte	W05
	.byte		VOICE , 61
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 10
	.byte		N05   , Dn2 , v100
	.byte	W05
	.byte		VOICE , 11
	.byte		N05   , Dn2 , v080
	.byte	W05
	.byte		VOICE , 61
	.byte		N10   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 10
	.byte		N05   , Dn2 , v100
	.byte	W05
	.byte		VOICE , 11
	.byte		N05   , Dn2 , v080
	.byte	W21
	.byte	GOTO
	 .word	ch4b_4_B1
ch4b_4_B2:
@ 006   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

ch4b:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	ch4b_pri	@ Priority
	.byte	ch4b_rev	@ Reverb.

	.word	ch4b_grp

	.word	ch4b_1
	.word	ch4b_2
	.word	ch4b_3
	.word	ch4b_4

	.end
