	.include "MPlayDef.s"

	.equ	ch31_grp, voicegroup000
	.equ	ch31_pri, 128
	.equ	ch31_rev, reverb_set+50
	.equ	ch31_mvl, 127
	.equ	ch31_key, 0
	.equ	ch31_tbs, 1
	.equ	ch31_exg, 0
	.equ	ch31_cmp, 1

	.section .rodata
	.global	ch31
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

ch31_1:
	.byte		VOL   , 127*ch31_mvl/mxv
	.byte	KEYSH , ch31_key+0
ch31_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 100*ch31_tbs/2
	.byte		VOICE , 66
	.byte		N32   , Bn1 , v104
	.byte	W32
	.byte	W02
	.byte		        Ds2 
	.byte	W32
	.byte	W03
	.byte		        En2 
	.byte	W24
	.byte	W03
@ 001   ----------------------------------------
	.byte	W07
	.byte		        Ds2 
	.byte	W32
	.byte	W03
	.byte		        Dn2 
	.byte	W32
	.byte	W02
	.byte		        Cs2 
	.byte	W20
@ 002   ----------------------------------------
	.byte	W15
	.byte		        Cn2 
	.byte	W32
	.byte	W02
	.byte		N05   , Bn1 
	.byte	W06
	.byte		VOICE , 0
	.byte	W28
	.byte	W01
	.byte		        36
	.byte		N11   , En1 , v127
	.byte	W11
	.byte		        En1 , v052
	.byte	W01
@ 003   ----------------------------------------
	.byte	W11
	.byte		N05   , Gn1 , v127
	.byte	W05
	.byte		        Bn1 
	.byte	W06
	.byte		N11   , Cn2 
	.byte	W12
	.byte		        Cn2 , v052
	.byte	W11
	.byte		        Bn1 , v127
	.byte	W12
	.byte		        Cn2 
	.byte	W11
	.byte		        Fs2 
	.byte	W12
	.byte		        Cn2 
	.byte	W11
	.byte		        Bn1 
	.byte	W05
@ 004   ----------------------------------------
	.byte	W07
	.byte		        Bn1 , v052
	.byte	W11
	.byte		        Bn1 , v048
	.byte	W12
	.byte		        As1 , v127
	.byte	W11
	.byte		        Fs2 
	.byte	W12
	.byte		        As1 
	.byte	W11
	.byte		        An1 
	.byte	W12
	.byte		        An1 , v052
	.byte	W11
	.byte		        An1 , v048
	.byte	W09
@ 005   ----------------------------------------
	.byte	W03
	.byte		        Gn1 , v127
	.byte	W11
	.byte		        Bn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W11
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs1 , v052
	.byte	W11
	.byte		        Fs1 , v048
	.byte	W12
	.byte		        En1 , v127
	.byte	W11
	.byte		        En1 , v052
	.byte	W12
	.byte		N05   , Gn1 , v127
	.byte	W01
@ 006   ----------------------------------------
	.byte	W04
	.byte		        Bn1 
	.byte	W06
	.byte		N11   , Cn2 
	.byte	W12
	.byte		        Cn2 , v052
	.byte	W11
	.byte		        Bn1 , v127
	.byte	W12
	.byte		        Cn2 
	.byte	W11
	.byte		        Fs2 
	.byte	W12
	.byte		        Cn2 
	.byte	W11
	.byte		        Gn2 
	.byte	W12
	.byte		        Gn2 , v052
	.byte	W05
@ 007   ----------------------------------------
	.byte	W06
	.byte		        Gn2 , v048
	.byte	W12
	.byte		N17   , An2 , v127
	.byte	W17
	.byte		N05   , Gn2 
	.byte	W06
	.byte		        Fn2 
	.byte	W05
	.byte		        Gn2 
	.byte	W06
	.byte		N11   , En2 
	.byte	W12
	.byte		        En2 , v052
	.byte	W11
	.byte		        En2 , v048
	.byte	W12
	.byte		N17   , Fn2 , v127
	.byte	W09
@ 008   ----------------------------------------
	.byte	W08
	.byte		N05   , Dn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W05
	.byte		        Dn2 
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W12
	.byte		        Bn1 , v052
	.byte	W11
	.byte		        Bn1 , v048
	.byte	W12
	.byte		        En1 , v127
	.byte	W11
	.byte		        En1 , v052
	.byte	W12
	.byte		N05   , Gn1 , v127
	.byte	W05
	.byte		        Bn1 
	.byte	W06
	.byte		N11   , Cn2 
	.byte	W02
@ 009   ----------------------------------------
	.byte	W10
	.byte		        Cn2 , v052
	.byte	W11
	.byte		        Bn1 , v127
	.byte	W12
	.byte		        Cn2 
	.byte	W11
	.byte		        Fs2 
	.byte	W12
	.byte		        Cn2 
	.byte	W11
	.byte		        Bn1 
	.byte	W12
	.byte		        Bn1 , v052
	.byte	W11
	.byte		        Bn1 , v048
	.byte	W06
@ 010   ----------------------------------------
	.byte	W06
	.byte		        As1 , v127
	.byte	W11
	.byte		        Fs2 
	.byte	W12
	.byte		        As1 
	.byte	W11
	.byte		        An1 
	.byte	W12
	.byte		        An1 , v052
	.byte	W11
	.byte		        An1 , v048
	.byte	W12
	.byte		        Gn1 , v127
	.byte	W11
	.byte		        Bn1 
	.byte	W10
@ 011   ----------------------------------------
	.byte	W02
	.byte		        Gn1 
	.byte	W11
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs1 , v052
	.byte	W11
	.byte		        Fs1 , v048
	.byte	W12
	.byte		        En1 , v127
	.byte	W11
	.byte		        En1 , v052
	.byte	W12
	.byte		N05   , Gn1 , v127
	.byte	W05
	.byte		        Bn1 
	.byte	W06
	.byte		N11   , Cn2 
	.byte	W12
	.byte		        Cn2 , v052
	.byte	W02
@ 012   ----------------------------------------
	.byte	W09
	.byte		        Bn1 , v127
	.byte	W12
	.byte		        Cn2 
	.byte	W11
	.byte		        Fs2 
	.byte	W12
	.byte		        Cn2 
	.byte	W11
	.byte		        Gn2 
	.byte	W12
	.byte		        Gn2 , v052
	.byte	W11
	.byte		        Gn2 , v048
	.byte	W12
	.byte		        Fn2 , v127
	.byte	W06
@ 013   ----------------------------------------
	.byte	W05
	.byte		N05   , Fn2 , v052
	.byte	W06
	.byte		        Gn2 , v127
	.byte	W06
	.byte		        Fn2 
	.byte	W05
	.byte		        En2 
	.byte	W06
	.byte		N11   , Ds2 
	.byte	W12
	.byte		        Ds2 , v052
	.byte	W11
	.byte		        Bn1 , v127
	.byte	W12
	.byte		N17   , En2 
	.byte	W17
	.byte		        En2 , v056
	.byte	W16
@ 014   ----------------------------------------
	.byte	W01
	.byte		        En2 , v048
	.byte	W17
	.byte		        En2 , v040
	.byte	W18
	.byte		VOICE , 66
	.byte		N32   , Bn1 , v104
	.byte	W32
	.byte	W02
	.byte		        Ds2 
	.byte	W24
	.byte	W02
@ 015   ----------------------------------------
	.byte	W09
	.byte		        En2 
	.byte	W32
	.byte	W02
	.byte		        Ds2 
	.byte	W32
	.byte	W03
	.byte		N44   , Dn2 
	.byte	W18
@ 016   ----------------------------------------
	.byte	W28
	.byte		N11   
	.byte	W11
	.byte		        Cs2 
	.byte	W12
	.byte		N28   , Cn2 
	.byte	W28
	.byte		N05   , Bn1 
	.byte	W06
	.byte		N32   , As1 
	.byte	W11
@ 017   ----------------------------------------
	.byte	W24
	.byte		        Bn1 
	.byte	W32
	.byte	W02
	.byte		        Ds2 
	.byte	W32
	.byte	W03
	.byte		        En2 
	.byte	W03
@ 018   ----------------------------------------
	.byte	W30
	.byte	W01
	.byte		        Fs2 
	.byte	W32
	.byte	W03
	.byte		        Gn2 
	.byte	W30
@ 019   ----------------------------------------
	.byte	W04
	.byte		        As2 
	.byte	W32
	.byte	W03
	.byte		MOD   , 34
	.byte		N68   , Fs2 
	.byte	W56
	.byte	W01
@ 020   ----------------------------------------
	.byte	W12
	.byte		MOD   , 0
	.byte		N44   , Bn2 
	.byte	W44
	.byte	W02
	.byte		N11   , An2 
	.byte	W11
	.byte		        Gn2 
	.byte	W12
	.byte		N56   , Cn2 
	.byte	W15
@ 021   ----------------------------------------
	.byte	W42
	.byte		N05   , Gs2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N44   , An2 
	.byte	W42
@ 022   ----------------------------------------
	.byte	W04
	.byte		N11   , Gn2 
	.byte	W11
	.byte		        Fs2 
	.byte	W12
	.byte		N17   , Bn1 
	.byte	W17
	.byte		        Bn1 , v084
	.byte	W17
	.byte		        Bn1 , v072
	.byte	W17
	.byte		        Bn1 , v056
	.byte	W18
@ 023   ----------------------------------------
	.byte		VOICE , 63
	.byte		N17   , En1 , v127
	.byte	W17
	.byte		        En1 , v064
	.byte	W17
	.byte		        En1 , v048
	.byte	W17
	.byte		        En1 , v040
	.byte	W18
	.byte		        En1 , v127
	.byte	W17
	.byte		        En1 , v064
	.byte	W10
@ 024   ----------------------------------------
	.byte	W07
	.byte		        En1 , v048
	.byte	W17
	.byte		        En1 , v040
	.byte	W18
	.byte		        En1 , v127
	.byte	W17
	.byte		        En1 , v064
	.byte	W17
	.byte		        En1 , v048
	.byte	W17
	.byte		        En1 , v040
	.byte	W03
@ 025   ----------------------------------------
	.byte	W15
	.byte		VOICE , 65
	.byte		N44   , Bn0 , v096
	.byte	W44
	.byte	W02
	.byte		N92   , Cn2 
	.byte	W32
	.byte	W03
@ 026   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 .word	ch31_1_B1
ch31_1_B2:
@ 027   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

ch31_2:
	.byte		VOL   , 127*ch31_mvl/mxv
	.byte	KEYSH , ch31_key+0
ch31_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 47
	.byte		N11   , En1 , v127
	.byte	W11
	.byte		VOICE , 65
	.byte		N11   , Bn2 
	.byte	W12
	.byte		        Bn2 , v080
	.byte	W11
	.byte		VOICE , 47
	.byte		N11   , Bn1 , v127
	.byte	W12
	.byte		VOICE , 65
	.byte		N11   , Bn2 
	.byte	W11
	.byte		        Bn2 , v080
	.byte	W12
	.byte		VOICE , 47
	.byte		N11   , En1 , v127
	.byte	W11
	.byte		VOICE , 65
	.byte		N11   , Bn2 
	.byte	W12
	.byte		        Bn2 , v080
	.byte	W04
@ 001   ----------------------------------------
	.byte	W07
	.byte		VOICE , 47
	.byte		N11   , Bn1 , v127
	.byte	W12
	.byte		VOICE , 65
	.byte		N11   , Bn2 
	.byte	W11
	.byte		        Bn2 , v080
	.byte	W12
	.byte		VOICE , 47
	.byte		N11   , En1 , v127
	.byte	W11
	.byte		VOICE , 65
	.byte		N11   , Bn2 
	.byte	W12
	.byte		        Bn2 , v080
	.byte	W11
	.byte		VOICE , 47
	.byte		N11   , Bn1 , v127
	.byte	W12
	.byte		VOICE , 65
	.byte		N11   , Bn2 
	.byte	W08
@ 002   ----------------------------------------
	.byte	W03
	.byte		        Bn2 , v080
	.byte	W12
	.byte		VOICE , 47
	.byte		N11   , En1 , v127
	.byte	W11
	.byte		VOICE , 65
	.byte		N11   , Bn2 
	.byte	W12
	.byte		        Bn2 , v080
	.byte	W11
	.byte		VOICE , 47
	.byte		N11   , Bn1 , v127
	.byte	W12
	.byte		VOICE , 65
	.byte		N11   , Cn3 
	.byte	W11
	.byte		VOICE , 67
	.byte		N11   , Cn2 
	.byte	W12
	.byte		VOICE , 47
	.byte		N11   , En1 
	.byte	W11
	.byte		VOICE , 65
	.byte		N11   , Bn2 
	.byte	W01
@ 003   ----------------------------------------
	.byte	W11
	.byte		        Bn2 , v080
	.byte	W11
	.byte		VOICE , 47
	.byte		N11   , Bn1 , v127
	.byte	W12
	.byte		VOICE , 65
	.byte		N11   , Bn2 
	.byte	W11
	.byte		        Bn2 , v080
	.byte	W12
	.byte		VOICE , 47
	.byte		N11   , An1 , v127
	.byte	W11
	.byte		VOICE , 65
	.byte		N11   , Cn3 
	.byte	W12
	.byte		        Cn3 , v080
	.byte	W11
	.byte		VOICE , 47
	.byte		N11   , En1 , v127
	.byte	W05
@ 004   ----------------------------------------
	.byte	W07
	.byte		VOICE , 65
	.byte		N11   , Bn2 
	.byte	W11
	.byte		        Bn2 , v080
	.byte	W12
	.byte		VOICE , 47
	.byte		N11   , Fs1 , v127
	.byte	W11
	.byte		VOICE , 65
	.byte		N11   , As2 
	.byte	W12
	.byte		        As2 , v080
	.byte	W11
	.byte		VOICE , 47
	.byte		N11   , Fn1 , v127
	.byte	W12
	.byte		VOICE , 65
	.byte		N11   , Cn3 
	.byte	W11
	.byte		        Cn3 , v080
	.byte	W09
@ 005   ----------------------------------------
	.byte	W03
	.byte		VOICE , 47
	.byte		N11   , En1 , v127
	.byte	W11
	.byte		VOICE , 65
	.byte		N11   , Bn2 
	.byte	W12
	.byte		        Bn2 , v080
	.byte	W11
	.byte		VOICE , 47
	.byte		N11   , Bn1 , v127
	.byte	W12
	.byte		VOICE , 65
	.byte		N11   , An2 
	.byte	W11
	.byte		        An2 , v080
	.byte	W12
	.byte		VOICE , 47
	.byte		N11   , En1 , v127
	.byte	W11
	.byte		VOICE , 65
	.byte		N11   , Bn2 
	.byte	W12
	.byte		        Bn2 , v080
	.byte	W01
@ 006   ----------------------------------------
	.byte	W10
	.byte		VOICE , 47
	.byte		N11   , Bn1 , v127
	.byte	W12
	.byte		VOICE , 65
	.byte		N11   , Bn2 
	.byte	W11
	.byte		        Bn2 , v080
	.byte	W12
	.byte		VOICE , 47
	.byte		N11   , An1 , v127
	.byte	W11
	.byte		VOICE , 65
	.byte		N11   , Cn3 
	.byte	W12
	.byte		        Cn3 , v080
	.byte	W11
	.byte		VOICE , 47
	.byte		N11   , En1 , v127
	.byte	W12
	.byte		VOICE , 65
	.byte		N11   , Bn2 
	.byte	W05
@ 007   ----------------------------------------
	.byte	W06
	.byte		        Bn2 , v080
	.byte	W12
	.byte		VOICE , 47
	.byte		N11   , Fn1 , v127
	.byte	W11
	.byte		VOICE , 65
	.byte		N11   , Cn3 
	.byte	W12
	.byte		        Cn3 , v080
	.byte	W11
	.byte		VOICE , 47
	.byte		N11   , En1 , v127
	.byte	W12
	.byte		VOICE , 65
	.byte		N11   , Bn2 
	.byte	W11
	.byte		        Bn2 , v080
	.byte	W12
	.byte		VOICE , 47
	.byte		N11   , Dn1 , v127
	.byte	W09
@ 008   ----------------------------------------
	.byte	W02
	.byte		VOICE , 65
	.byte		N11   , Cn3 
	.byte	W12
	.byte		        Cn3 , v080
	.byte	W11
	.byte		VOICE , 47
	.byte		N11   , Bn1 , v127
	.byte	W12
	.byte		VOICE , 65
	.byte		N11   , Bn2 
	.byte	W11
	.byte		VOICE , 67
	.byte		N11   , Cn2 
	.byte	W12
	.byte		VOICE , 47
	.byte		N11   , En1 
	.byte	W11
	.byte		VOICE , 65
	.byte		N11   , Bn2 
	.byte	W12
	.byte		        Bn2 , v080
	.byte	W11
	.byte		VOICE , 47
	.byte		N11   , Bn1 , v127
	.byte	W02
@ 009   ----------------------------------------
	.byte	W10
	.byte		VOICE , 65
	.byte		N11   , Bn2 
	.byte	W11
	.byte		        Bn2 , v080
	.byte	W12
	.byte		VOICE , 47
	.byte		N11   , An1 , v127
	.byte	W11
	.byte		VOICE , 65
	.byte		N11   , Cn3 
	.byte	W12
	.byte		        Cn3 , v080
	.byte	W11
	.byte		VOICE , 47
	.byte		N11   , En1 , v127
	.byte	W12
	.byte		VOICE , 65
	.byte		N11   , Bn2 
	.byte	W11
	.byte		        Bn2 , v080
	.byte	W06
@ 010   ----------------------------------------
	.byte	W06
	.byte		VOICE , 47
	.byte		N11   , Fs1 , v127
	.byte	W11
	.byte		VOICE , 65
	.byte		N11   , As2 
	.byte	W12
	.byte		        As2 , v080
	.byte	W11
	.byte		VOICE , 47
	.byte		N11   , Fn1 , v127
	.byte	W12
	.byte		VOICE , 65
	.byte		N11   , Cn3 
	.byte	W11
	.byte		        Cn3 , v080
	.byte	W12
	.byte		VOICE , 47
	.byte		N11   , En1 , v127
	.byte	W11
	.byte		VOICE , 65
	.byte		N11   , Bn2 
	.byte	W10
@ 011   ----------------------------------------
	.byte	W02
	.byte		        Bn2 , v080
	.byte	W11
	.byte		VOICE , 47
	.byte		N11   , Bn1 , v127
	.byte	W12
	.byte		VOICE , 65
	.byte		N11   , An2 
	.byte	W11
	.byte		        An2 , v080
	.byte	W12
	.byte		VOICE , 47
	.byte		N11   , En1 , v127
	.byte	W11
	.byte		VOICE , 65
	.byte		N11   , Bn2 
	.byte	W12
	.byte		        Bn2 , v080
	.byte	W11
	.byte		VOICE , 47
	.byte		N11   , Bn1 , v127
	.byte	W12
	.byte		VOICE , 65
	.byte		N11   , Bn2 
	.byte	W02
@ 012   ----------------------------------------
	.byte	W09
	.byte		        Bn2 , v080
	.byte	W12
	.byte		VOICE , 47
	.byte		N11   , An1 , v127
	.byte	W11
	.byte		VOICE , 65
	.byte		N11   , Cn3 
	.byte	W12
	.byte		        Cn3 , v080
	.byte	W11
	.byte		VOICE , 47
	.byte		N11   , Cn1 , v127
	.byte	W12
	.byte		VOICE , 65
	.byte		N11   , Cn3 
	.byte	W11
	.byte		        Cn3 , v080
	.byte	W12
	.byte		VOICE , 47
	.byte		N11   , Fn1 , v127
	.byte	W06
@ 013   ----------------------------------------
	.byte	W05
	.byte		VOICE , 65
	.byte		N11   , Cn3 
	.byte	W12
	.byte		        Cn3 , v080
	.byte	W11
	.byte		VOICE , 47
	.byte		N11   , Bn1 , v127
	.byte	W12
	.byte		VOICE , 65
	.byte		N11   , Bn2 
	.byte	W11
	.byte		        Bn2 , v080
	.byte	W12
	.byte		VOICE , 47
	.byte		N11   , En1 , v127
	.byte	W11
	.byte		VOICE , 65
	.byte		N11   , Bn2 
	.byte	W12
	.byte		        Bn2 , v080
	.byte	W10
@ 014   ----------------------------------------
	.byte	W01
	.byte		VOICE , 47
	.byte		N11   , Bn1 , v127
	.byte	W12
	.byte		VOICE , 65
	.byte		N11   , Bn2 
	.byte	W11
	.byte		VOICE , 67
	.byte		N11   , Cn1 
	.byte	W12
	.byte		VOICE , 47
	.byte		N11   , En1 
	.byte	W11
	.byte		VOICE , 65
	.byte		N11   , Bn2 
	.byte	W12
	.byte		        Bn2 , v080
	.byte	W11
	.byte		VOICE , 47
	.byte		N11   , Bn1 , v127
	.byte	W12
	.byte		VOICE , 65
	.byte		N11   , Bn2 
	.byte	W11
	.byte		        Bn2 , v080
	.byte	W03
@ 015   ----------------------------------------
	.byte	W09
	.byte		VOICE , 47
	.byte		N11   , En1 , v127
	.byte	W11
	.byte		VOICE , 65
	.byte		N11   , Bn2 
	.byte	W12
	.byte		        Bn2 , v080
	.byte	W11
	.byte		VOICE , 47
	.byte		N11   , Bn1 , v127
	.byte	W12
	.byte		VOICE , 65
	.byte		N11   , Bn2 
	.byte	W11
	.byte		        Bn2 , v080
	.byte	W12
	.byte		VOICE , 47
	.byte		N11   , An1 , v127
	.byte	W11
	.byte		VOICE , 65
	.byte		N11   , Cn3 
	.byte	W07
@ 016   ----------------------------------------
	.byte	W05
	.byte		        Cn3 , v080
	.byte	W11
	.byte		VOICE , 47
	.byte		N11   , En1 , v127
	.byte	W12
	.byte		VOICE , 65
	.byte		N11   , Cn3 
	.byte	W11
	.byte		        Cn3 , v080
	.byte	W12
	.byte		VOICE , 47
	.byte		N11   , An1 , v127
	.byte	W11
	.byte		VOICE , 65
	.byte		N11   , Cn3 
	.byte	W12
	.byte		        Cn3 , v080
	.byte	W11
	.byte		VOICE , 47
	.byte		N11   , En1 , v127
	.byte	W11
@ 017   ----------------------------------------
	.byte	W01
	.byte		VOICE , 65
	.byte		N11   , Cn3 
	.byte	W11
	.byte		VOICE , 67
	.byte		N11   , Cn1 
	.byte	W12
	.byte		VOICE , 47
	.byte		N11   , En1 
	.byte	W11
	.byte		VOICE , 65
	.byte		N11   , Bn2 
	.byte	W12
	.byte		        Bn2 , v080
	.byte	W11
	.byte		VOICE , 47
	.byte		N11   , Bn1 , v127
	.byte	W12
	.byte		VOICE , 65
	.byte		N11   , Bn2 
	.byte	W11
	.byte		        Bn2 , v080
	.byte	W12
	.byte		VOICE , 47
	.byte		N11   , En1 , v127
	.byte	W03
@ 018   ----------------------------------------
	.byte	W08
	.byte		VOICE , 65
	.byte		N11   , Bn2 
	.byte	W12
	.byte		        Bn2 , v080
	.byte	W11
	.byte		VOICE , 47
	.byte		N11   , Bn1 , v127
	.byte	W12
	.byte		VOICE , 65
	.byte		N11   , Bn2 
	.byte	W11
	.byte		        Bn2 , v080
	.byte	W12
	.byte		VOICE , 47
	.byte		N11   , An1 , v127
	.byte	W11
	.byte		VOICE , 65
	.byte		N11   , Cn3 
	.byte	W12
	.byte		        Cn3 , v080
	.byte	W07
@ 019   ----------------------------------------
	.byte	W04
	.byte		VOICE , 47
	.byte		N11   , En1 , v127
	.byte	W12
	.byte		VOICE , 65
	.byte		N11   , Cn3 
	.byte	W11
	.byte		        Cn3 , v080
	.byte	W12
	.byte		VOICE , 47
	.byte		N11   , Bn1 , v127
	.byte	W11
	.byte		VOICE , 65
	.byte		N11   , Bn2 
	.byte	W12
	.byte		        Bn2 , v080
	.byte	W11
	.byte		VOICE , 47
	.byte		N11   , Fs1 , v127
	.byte	W12
	.byte		VOICE , 65
	.byte		N11   , Cn3 
	.byte	W11
@ 020   ----------------------------------------
	.byte		        Bn2 , v080
	.byte	W12
	.byte		VOICE , 47
	.byte		N11   , Gn1 , v127
	.byte	W11
	.byte		VOICE , 65
	.byte		N11   , Bn2 
	.byte	W12
	.byte		        Bn2 , v080
	.byte	W11
	.byte		VOICE , 47
	.byte		N11   , Dn1 , v127
	.byte	W12
	.byte		VOICE , 65
	.byte		N11   , Bn2 
	.byte	W11
	.byte		        Bn2 , v080
	.byte	W12
	.byte		VOICE , 47
	.byte		N11   , An1 , v127
	.byte	W11
	.byte		VOICE , 65
	.byte		N11   , Cn3 
	.byte	W04
@ 021   ----------------------------------------
	.byte	W08
	.byte		        Cn3 , v080
	.byte	W11
	.byte		VOICE , 47
	.byte		N11   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 65
	.byte		N11   , Cn3 
	.byte	W11
	.byte		        Cn3 , v080
	.byte	W12
	.byte		VOICE , 47
	.byte		N11   , En2 , v127
	.byte	W11
	.byte		VOICE , 65
	.byte		N11   , Cn3 
	.byte	W12
	.byte		        Cn3 , v080
	.byte	W11
	.byte		VOICE , 47
	.byte		N11   , Cn2 , v127
	.byte	W08
@ 022   ----------------------------------------
	.byte	W04
	.byte		VOICE , 65
	.byte		N11   , Cn3 
	.byte	W11
	.byte		        Cn3 , v080
	.byte	W12
	.byte		VOICE , 47
	.byte		N11   , Bn1 , v127
	.byte	W11
	.byte		VOICE , 65
	.byte		N11   , Bn2 
	.byte	W12
	.byte		        Bn2 , v080
	.byte	W11
	.byte		VOICE , 47
	.byte		N11   , En1 , v127
	.byte	W12
	.byte		VOICE , 65
	.byte		N11   , Bn2 
	.byte	W11
	.byte		        Bn2 , v080
	.byte	W12
@ 023   ----------------------------------------
	.byte		VOICE , 2
	.byte		N05   , An1 , v104
	.byte	W05
	.byte		        Bn1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        An1 
	.byte	W05
	.byte		        Bn1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W05
	.byte		        En2 
	.byte	W06
	.byte		MOD   , 42
	.byte		N11   , An2 
	.byte	W12
	.byte		MOD   , 0
	.byte		N05   , Gn1 
	.byte	W05
	.byte		        An1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Gn1 
	.byte	W04
@ 024   ----------------------------------------
	.byte	W01
	.byte		        An1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En2 
	.byte	W05
	.byte		        Gn2 
	.byte	W06
	.byte		MOD   , 42
	.byte		N11   , Bn2 
	.byte	W12
	.byte		MOD   , 0
	.byte		N05   , Fs1 
	.byte	W05
	.byte		        Gn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Fs1 
	.byte	W05
	.byte		        Gn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Cn2 
	.byte	W05
	.byte		        Ds2 
	.byte	W03
@ 025   ----------------------------------------
	.byte	W03
	.byte		MOD   , 42
	.byte		N23   , An2 
	.byte	W23
	.byte		VOICE , 65
	.byte		MOD   , 0
	.byte		TIE   , Ds1 , v096
	.byte	W68
	.byte	W02
@ 026   ----------------------------------------
	.byte	W32
	.byte	W01
	.byte		EOT   
	.byte	W01
	.byte		VOICE , 47
	.byte		N11   , Gn1 , v127
	.byte	W11
	.byte		        Fs1 
	.byte	W48
	.byte	W03
	.byte	GOTO
	 .word	ch31_2_B1
ch31_2_B2:
@ 027   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

ch31_3:
	.byte		VOL   , 127*ch31_mvl/mxv
	.byte	KEYSH , ch31_key+0
ch31_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte	W11
	.byte		        65
	.byte		N11   , En2 , v112
	.byte	W12
	.byte		N23   , En2 , v080
	.byte	W23
	.byte		N11   , En2 , v112
	.byte	W11
	.byte		N23   , En2 , v080
	.byte	W23
	.byte		N11   , En2 , v112
	.byte	W12
	.byte		N23   , En2 , v080
	.byte	W04
@ 001   ----------------------------------------
	.byte	W19
	.byte		N11   , En2 , v112
	.byte	W11
	.byte		N23   , En2 , v080
	.byte	W23
	.byte		N11   , En2 , v112
	.byte	W12
	.byte		N23   , En2 , v080
	.byte	W23
	.byte		N11   , En2 , v112
	.byte	W08
@ 002   ----------------------------------------
	.byte	W03
	.byte		N23   , En2 , v080
	.byte	W23
	.byte		N11   , En2 , v112
	.byte	W12
	.byte		N23   , En2 , v080
	.byte	W23
	.byte		N11   , Ds2 , v112
	.byte	W11
	.byte		        Ds2 , v080
	.byte	W12
	.byte		VOICE , 67
	.byte		N11   , Fs1 , v127
	.byte	W11
	.byte		VOICE , 65
	.byte		N11   , En2 , v112
	.byte	W01
@ 003   ----------------------------------------
	.byte	W11
	.byte		N23   , En2 , v080
	.byte	W23
	.byte		N11   , En2 , v112
	.byte	W11
	.byte		N23   , En2 , v080
	.byte	W23
	.byte		N11   , En2 , v112
	.byte	W12
	.byte		N23   , En2 , v080
	.byte	W16
@ 004   ----------------------------------------
	.byte	W07
	.byte		N11   , En2 , v112
	.byte	W11
	.byte		N23   , En2 , v080
	.byte	W23
	.byte		N11   , Fs2 , v112
	.byte	W12
	.byte		N23   , Fs2 , v080
	.byte	W23
	.byte		N11   , Fn2 , v112
	.byte	W11
	.byte		N23   , Fn2 , v080
	.byte	W09
@ 005   ----------------------------------------
	.byte	W14
	.byte		N11   , En2 , v112
	.byte	W12
	.byte		N23   , En2 , v080
	.byte	W23
	.byte		N11   , Ds2 , v112
	.byte	W11
	.byte		N23   , Ds2 , v080
	.byte	W23
	.byte		N11   , En2 , v112
	.byte	W12
	.byte		N23   , En2 , v080
	.byte	W01
@ 006   ----------------------------------------
	.byte	W22
	.byte		N11   , En2 , v112
	.byte	W11
	.byte		N23   , En2 , v080
	.byte	W23
	.byte		N11   , En2 , v112
	.byte	W12
	.byte		N23   , En2 , v080
	.byte	W23
	.byte		N11   , En2 , v112
	.byte	W05
@ 007   ----------------------------------------
	.byte	W06
	.byte		N23   , En2 , v080
	.byte	W23
	.byte		N11   , Fn2 , v112
	.byte	W12
	.byte		N23   , Fn2 , v080
	.byte	W23
	.byte		N11   , En2 , v112
	.byte	W11
	.byte		N23   , En2 , v080
	.byte	W21
@ 008   ----------------------------------------
	.byte	W02
	.byte		N11   , Fn2 , v112
	.byte	W12
	.byte		N23   , Fn2 , v080
	.byte	W23
	.byte		N11   , Ds2 , v112
	.byte	W11
	.byte		        Ds2 , v080
	.byte	W12
	.byte		VOICE , 67
	.byte		N11   , Fs1 , v127
	.byte	W11
	.byte		VOICE , 65
	.byte		N11   , En2 , v112
	.byte	W12
	.byte		N23   , En2 , v080
	.byte	W13
@ 009   ----------------------------------------
	.byte	W10
	.byte		N11   , En2 , v112
	.byte	W11
	.byte		N23   , En2 , v080
	.byte	W23
	.byte		N11   , En2 , v112
	.byte	W12
	.byte		N23   , En2 , v080
	.byte	W23
	.byte		N11   , En2 , v112
	.byte	W11
	.byte		N23   , En2 , v080
	.byte	W06
@ 010   ----------------------------------------
	.byte	W17
	.byte		N11   , Fs2 , v112
	.byte	W12
	.byte		N23   , Fs2 , v080
	.byte	W23
	.byte		N11   , Fn2 , v112
	.byte	W11
	.byte		N23   , Fn2 , v080
	.byte	W23
	.byte		N11   , En2 , v112
	.byte	W10
@ 011   ----------------------------------------
	.byte	W02
	.byte		N23   , En2 , v080
	.byte	W23
	.byte		N11   , Ds2 , v112
	.byte	W11
	.byte		N23   , Ds2 , v080
	.byte	W23
	.byte		N11   , En2 , v112
	.byte	W12
	.byte		N23   , En2 , v080
	.byte	W23
	.byte		N11   , En2 , v112
	.byte	W02
@ 012   ----------------------------------------
	.byte	W09
	.byte		N23   , En2 , v080
	.byte	W23
	.byte		N11   , En2 , v112
	.byte	W12
	.byte		N23   , En2 , v080
	.byte	W23
	.byte		N11   , En2 , v112
	.byte	W11
	.byte		N23   , En2 , v080
	.byte	W18
@ 013   ----------------------------------------
	.byte	W05
	.byte		N11   , Fn2 , v112
	.byte	W12
	.byte		N23   , Fn2 , v080
	.byte	W23
	.byte		N11   , Ds2 , v112
	.byte	W11
	.byte		N23   , Ds2 , v080
	.byte	W23
	.byte		N11   , En2 , v112
	.byte	W12
	.byte		N23   , En2 , v080
	.byte	W10
@ 014   ----------------------------------------
	.byte	W13
	.byte		N11   , En2 , v112
	.byte	W11
	.byte		        En2 , v080
	.byte	W12
	.byte		VOICE , 67
	.byte		N11   , Fs1 , v127
	.byte	W11
	.byte		VOICE , 65
	.byte		N11   , En2 , v112
	.byte	W12
	.byte		N23   , En2 , v080
	.byte	W23
	.byte		N11   , En2 , v112
	.byte	W11
	.byte		N23   , En2 , v080
	.byte	W03
@ 015   ----------------------------------------
	.byte	W20
	.byte		N11   , En2 , v112
	.byte	W12
	.byte		N23   , En2 , v080
	.byte	W23
	.byte		N11   , En2 , v112
	.byte	W11
	.byte		N23   , En2 , v080
	.byte	W23
	.byte		N11   , En2 , v112
	.byte	W07
@ 016   ----------------------------------------
	.byte	W05
	.byte		N23   , En2 , v080
	.byte	W23
	.byte		N11   , En2 , v112
	.byte	W11
	.byte		N23   , En2 , v080
	.byte	W23
	.byte		N11   , En2 , v112
	.byte	W12
	.byte		N23   , En2 , v080
	.byte	W22
@ 017   ----------------------------------------
	.byte	W01
	.byte		N11   , Ds2 , v112
	.byte	W11
	.byte		        Ds2 , v080
	.byte	W12
	.byte		VOICE , 67
	.byte		N11   , Fs1 , v127
	.byte	W11
	.byte		VOICE , 65
	.byte		N11   , En2 , v112
	.byte	W12
	.byte		N23   , En2 , v080
	.byte	W23
	.byte		N11   , En2 , v112
	.byte	W11
	.byte		N23   , En2 , v080
	.byte	W15
@ 018   ----------------------------------------
	.byte	W08
	.byte		N11   , En2 , v112
	.byte	W12
	.byte		N23   , En2 , v080
	.byte	W23
	.byte		N11   , En2 , v112
	.byte	W11
	.byte		N23   , En2 , v080
	.byte	W23
	.byte		N11   , En2 , v112
	.byte	W12
	.byte		N23   , En2 , v080
	.byte	W07
@ 019   ----------------------------------------
	.byte	W16
	.byte		N11   , En2 , v112
	.byte	W11
	.byte		N23   , En2 , v080
	.byte	W23
	.byte		N11   , Ds2 , v112
	.byte	W12
	.byte		N23   , Ds2 , v080
	.byte	W23
	.byte		N11   , En2 , v112
	.byte	W11
@ 020   ----------------------------------------
	.byte		        Ds2 , v080
	.byte	W12
	.byte		VOICE , 36
	.byte		N05   , Bn1 , v072
	.byte	W05
	.byte		        Gn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Bn0 
	.byte	W05
	.byte		        Dn1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        An1 
	.byte	W05
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Bn0 
	.byte	W06
	.byte		        Cn2 
	.byte	W05
	.byte		        An1 
	.byte	W06
	.byte		        En1 
	.byte	W04
@ 021   ----------------------------------------
	.byte	W02
	.byte		        An1 
	.byte	W06
	.byte		        Cn1 
	.byte	W05
	.byte		        En1 
	.byte	W06
	.byte		        An0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        En1 
	.byte	W05
	.byte		        Cn1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        An1 
	.byte	W05
	.byte		        En1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        An0 
	.byte	W05
	.byte		        Cn1 
	.byte	W06
	.byte		        En0 
	.byte	W06
	.byte		        An0 
	.byte	W02
@ 022   ----------------------------------------
	.byte	W04
	.byte		        Gn1 
	.byte	W05
	.byte		        Cn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        An0 
	.byte	W06
	.byte		        Bn0 
	.byte	W05
	.byte		        Gn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Bn0 
	.byte	W05
	.byte		        En1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		        Bn0 
	.byte	W06
	.byte		        En1 
	.byte	W05
	.byte		        Bn0 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N11   , Gn1 
	.byte	W06
@ 023   ----------------------------------------
	.byte	W05
	.byte		VOICE , 2
	.byte		N05   , An1 , v064
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Gs1 
	.byte	W05
	.byte		        An1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Bn1 
	.byte	W05
	.byte		        Cn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N11   , An2 
	.byte	W11
	.byte		N05   , Gn1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W04
@ 024   ----------------------------------------
	.byte	W01
	.byte		        Gn1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Bn1 
	.byte	W05
	.byte		        En2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N11   , Bn2 
	.byte	W11
	.byte		N05   , Fs1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        En1 
	.byte	W05
	.byte		        Fs1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        An1 
	.byte	W05
	.byte		        Cn2 
	.byte	W03
@ 025   ----------------------------------------
	.byte	W03
	.byte		        Ds2 
	.byte	W06
	.byte		N28   , An2 
	.byte	W28
	.byte	W01
	.byte		VOICE , 65
	.byte		N92   , Fs1 , v096
	.byte	W56
	.byte	W02
@ 026   ----------------------------------------
	.byte	W32
	.byte	W02
	.byte		VOICE , 67
	.byte		N11   , Cn2 , v127
	.byte	W11
	.byte		        Gn1 
	.byte	W48
	.byte	W03
	.byte	GOTO
	 .word	ch31_3_B1
ch31_3_B2:
@ 027   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

ch31_4:
	.byte		VOL   , 127*ch31_mvl/mxv
	.byte	KEYSH , ch31_key+0
ch31_4_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte	W11
	.byte		        65
	.byte		N11   , Gn2 , v127
	.byte	W12
	.byte		N23   , Gn2 , v080
	.byte	W23
	.byte		N11   , Gn2 , v127
	.byte	W11
	.byte		N23   , Gn2 , v080
	.byte	W23
	.byte		N11   , Gn2 , v127
	.byte	W12
	.byte		N23   , Gn2 , v080
	.byte	W04
@ 001   ----------------------------------------
	.byte	W19
	.byte		N11   , Gn2 , v127
	.byte	W11
	.byte		N23   , Gn2 , v080
	.byte	W23
	.byte		N11   , Gn2 , v127
	.byte	W12
	.byte		N23   , Gn2 , v080
	.byte	W23
	.byte		N11   , Gn2 , v127
	.byte	W08
@ 002   ----------------------------------------
	.byte	W03
	.byte		N23   , Gn2 , v080
	.byte	W23
	.byte		N11   , Gn2 , v127
	.byte	W12
	.byte		N23   , Gn2 , v080
	.byte	W23
	.byte		N11   , Gn2 , v127
	.byte	W11
	.byte		N23   , Fs2 , v080
	.byte	W23
	.byte		N11   , Gn2 , v127
	.byte	W01
@ 003   ----------------------------------------
	.byte	W11
	.byte		N23   , Gn2 , v080
	.byte	W23
	.byte		N11   , Gn2 , v127
	.byte	W11
	.byte		N23   , Gn2 , v080
	.byte	W23
	.byte		N11   , An2 , v127
	.byte	W12
	.byte		N23   , An2 , v080
	.byte	W16
@ 004   ----------------------------------------
	.byte	W07
	.byte		N11   , Gn2 , v127
	.byte	W11
	.byte		N23   , Gn2 , v080
	.byte	W23
	.byte		N11   , En2 , v127
	.byte	W12
	.byte		N23   , En2 , v080
	.byte	W23
	.byte		N11   , An2 , v127
	.byte	W11
	.byte		N23   , An2 , v080
	.byte	W09
@ 005   ----------------------------------------
	.byte	W14
	.byte		N11   , Gn2 , v127
	.byte	W12
	.byte		N23   , Gn2 , v080
	.byte	W23
	.byte		N11   , Fs2 , v127
	.byte	W11
	.byte		N23   , Fs2 , v080
	.byte	W23
	.byte		N11   , Gn2 , v127
	.byte	W12
	.byte		N23   , Gn2 , v080
	.byte	W01
@ 006   ----------------------------------------
	.byte	W22
	.byte		N11   , Gn2 , v127
	.byte	W11
	.byte		N23   , Gn2 , v080
	.byte	W23
	.byte		N11   , An2 , v127
	.byte	W12
	.byte		N23   , An2 , v080
	.byte	W23
	.byte		N11   , Gn2 , v127
	.byte	W05
@ 007   ----------------------------------------
	.byte	W06
	.byte		N23   , Gn2 , v080
	.byte	W23
	.byte		N11   , An2 , v127
	.byte	W12
	.byte		N23   , An2 , v080
	.byte	W23
	.byte		N11   , Gn2 , v127
	.byte	W11
	.byte		N23   , Gn2 , v080
	.byte	W21
@ 008   ----------------------------------------
	.byte	W02
	.byte		N11   , An2 , v127
	.byte	W12
	.byte		N23   , An2 , v080
	.byte	W23
	.byte		N11   , Fs2 , v127
	.byte	W11
	.byte		N23   , Fs2 , v080
	.byte	W23
	.byte		N11   , Gn2 , v127
	.byte	W12
	.byte		N23   , Gn2 , v080
	.byte	W13
@ 009   ----------------------------------------
	.byte	W10
	.byte		N11   , Gn2 , v127
	.byte	W11
	.byte		N23   , Gn2 , v080
	.byte	W23
	.byte		N11   , An2 , v127
	.byte	W12
	.byte		N23   , An2 , v080
	.byte	W23
	.byte		N11   , Gn2 , v127
	.byte	W11
	.byte		N23   , Gn2 , v080
	.byte	W06
@ 010   ----------------------------------------
	.byte	W17
	.byte		N11   , En2 , v127
	.byte	W12
	.byte		N23   , En2 , v080
	.byte	W23
	.byte		N11   , An2 , v127
	.byte	W11
	.byte		N23   , An2 , v080
	.byte	W23
	.byte		N11   , Gn2 , v127
	.byte	W10
@ 011   ----------------------------------------
	.byte	W02
	.byte		N23   , Gn2 , v080
	.byte	W23
	.byte		N11   , Fs2 , v127
	.byte	W11
	.byte		N23   , Fs2 , v080
	.byte	W23
	.byte		N11   , Gn2 , v127
	.byte	W12
	.byte		N23   , Gn2 , v080
	.byte	W23
	.byte		N11   , Gn2 , v127
	.byte	W02
@ 012   ----------------------------------------
	.byte	W09
	.byte		N23   , Gn2 , v080
	.byte	W23
	.byte		N11   , An2 , v127
	.byte	W12
	.byte		N23   , An2 , v080
	.byte	W23
	.byte		N11   , Gn2 , v127
	.byte	W11
	.byte		N23   , Gn2 , v080
	.byte	W18
@ 013   ----------------------------------------
	.byte	W05
	.byte		N11   , An2 , v127
	.byte	W12
	.byte		N23   , An2 , v080
	.byte	W23
	.byte		N11   , Fs2 , v127
	.byte	W11
	.byte		N23   , Fs2 , v080
	.byte	W23
	.byte		N11   , Gn2 , v127
	.byte	W12
	.byte		N23   , Gn2 , v080
	.byte	W10
@ 014   ----------------------------------------
	.byte	W13
	.byte		N11   , Gn2 , v127
	.byte	W11
	.byte		N23   , Gn2 , v080
	.byte	W23
	.byte		N11   , Gn2 , v127
	.byte	W12
	.byte		N23   , Gn2 , v080
	.byte	W23
	.byte		N11   , Gn2 , v127
	.byte	W11
	.byte		N23   , Gn2 , v080
	.byte	W03
@ 015   ----------------------------------------
	.byte	W20
	.byte		N11   , Gn2 , v127
	.byte	W12
	.byte		N23   , Gn2 , v080
	.byte	W23
	.byte		N11   , Gn2 , v127
	.byte	W11
	.byte		N23   , Gn2 , v080
	.byte	W23
	.byte		N11   , An2 , v127
	.byte	W07
@ 016   ----------------------------------------
	.byte	W05
	.byte		N23   , An2 , v080
	.byte	W23
	.byte		N11   , An2 , v127
	.byte	W11
	.byte		N23   , An2 , v080
	.byte	W23
	.byte		N11   , An2 , v127
	.byte	W12
	.byte		N23   , An2 , v080
	.byte	W22
@ 017   ----------------------------------------
	.byte	W01
	.byte		N11   , Gn2 , v127
	.byte	W11
	.byte		N23   , Fs2 , v080
	.byte	W23
	.byte		N11   , Gn2 , v127
	.byte	W12
	.byte		N23   , Gn2 , v080
	.byte	W23
	.byte		N11   , Gn2 , v127
	.byte	W11
	.byte		N23   , Gn2 , v080
	.byte	W15
@ 018   ----------------------------------------
	.byte	W08
	.byte		N11   , Gn2 , v127
	.byte	W12
	.byte		N23   , Gn2 , v080
	.byte	W23
	.byte		N11   , Gn2 , v127
	.byte	W11
	.byte		N23   , Gn2 , v080
	.byte	W23
	.byte		N11   , An2 , v127
	.byte	W12
	.byte		N23   , An2 , v080
	.byte	W07
@ 019   ----------------------------------------
	.byte	W16
	.byte		N11   , An2 , v127
	.byte	W11
	.byte		N23   , An2 , v080
	.byte	W23
	.byte		N11   , Fs2 , v127
	.byte	W12
	.byte		N23   , Fs2 , v080
	.byte	W23
	.byte		N11   , Gn2 , v127
	.byte	W11
@ 020   ----------------------------------------
	.byte		N23   , Fs2 , v080
	.byte	W23
	.byte		N11   , Gn2 , v127
	.byte	W12
	.byte		N23   , Gn2 , v080
	.byte	W23
	.byte		N11   , Gn2 , v127
	.byte	W11
	.byte		N23   , Gn2 , v080
	.byte	W23
	.byte		N11   , An2 , v127
	.byte	W04
@ 021   ----------------------------------------
	.byte	W08
	.byte		N23   , An2 , v080
	.byte	W23
	.byte		N11   , An2 , v127
	.byte	W11
	.byte		N23   , An2 , v080
	.byte	W23
	.byte		N11   , An2 , v127
	.byte	W12
	.byte		N23   , An2 , v080
	.byte	W19
@ 022   ----------------------------------------
	.byte	W04
	.byte		N11   , An2 , v127
	.byte	W11
	.byte		N23   , An2 , v080
	.byte	W23
	.byte		N11   , Gn2 , v127
	.byte	W12
	.byte		N23   , Gn2 , v080
	.byte	W23
	.byte		N11   , Gn2 , v127
	.byte	W11
	.byte		        Gn2 , v080
	.byte	W12
@ 023   ----------------------------------------
	.byte		N17   , An1 , v127
	.byte	W17
	.byte		        An1 , v072
	.byte	W17
	.byte		        An1 , v064
	.byte	W17
	.byte		        An1 , v056
	.byte	W18
	.byte		        En1 , v127
	.byte	W17
	.byte		        En1 , v072
	.byte	W10
@ 024   ----------------------------------------
	.byte	W07
	.byte		        En1 , v064
	.byte	W17
	.byte		        En1 , v056
	.byte	W18
	.byte		        Bn0 , v127
	.byte	W17
	.byte		        Bn0 , v072
	.byte	W17
	.byte		        Bn0 , v064
	.byte	W17
	.byte		        Bn0 , v056
	.byte	W03
@ 025   ----------------------------------------
	.byte	W15
	.byte		N32   , Bn0 , v048
	.byte	W32
	.byte	W02
	.byte		TIE   , An1 , v096
	.byte	W44
	.byte	W03
@ 026   ----------------------------------------
	.byte	W56
	.byte		EOT   
	.byte	W40
	.byte	GOTO
	 .word	ch31_4_B1
ch31_4_B2:
@ 027   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

ch31:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	ch31_pri	@ Priority
	.byte	ch31_rev	@ Reverb.

	.word	ch31_grp

	.word	ch31_1
	.word	ch31_2
	.word	ch31_3
	.word	ch31_4

	.end
