	.include "MPlayDef.s"

	.equ	ch22_grp, voicegroup000
	.equ	ch22_pri, 128
	.equ	ch22_rev, reverb_set+50
	.equ	ch22_mvl, 127
	.equ	ch22_key, 0
	.equ	ch22_tbs, 1
	.equ	ch22_exg, 0
	.equ	ch22_cmp, 1

	.section .rodata
	.global	ch22
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

ch22_1:
	.byte		VOL   , 127*ch22_mvl/mxv
	.byte	KEYSH , ch22_key+0
ch22_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 100*ch22_tbs/2
	.byte		VOICE , 0
	.byte	W12
	.byte		        39
	.byte		N24   , En1 , v056
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W12
@ 001   ----------------------------------------
	.byte	W12
	.byte		VOICE , 40
	.byte		N24   , Fs1 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		        Ds1 
	.byte	W24
	.byte		VOICE , 25
	.byte		N12   , As1 , v127
	.byte	W12
@ 002   ----------------------------------------
ch22_1_002:
	.byte		N08   , Bn1 , v127
	.byte	W08
	.byte		N04   
	.byte	W04
	.byte		N08   , Gs1 
	.byte	W08
	.byte		N04   , Gs1 , v064
	.byte	W04
	.byte		N08   , Bn1 , v127
	.byte	W08
	.byte		N04   , Bn1 , v064
	.byte	W04
	.byte		N08   , Cs2 , v127
	.byte	W08
	.byte		        Bn1 
	.byte	W08
	.byte		N04   , Bn1 , v064
	.byte	W04
	.byte		N12   , Bn1 , v127
	.byte	W12
	.byte		        Bn1 , v064
	.byte	W12
	.byte		        Bn1 , v052
	.byte	W12
	.byte		N08   , Bn1 , v127
	.byte	W04
	.byte	PEND
@ 003   ----------------------------------------
ch22_1_003:
	.byte	W04
	.byte		N04   , Bn1 , v064
	.byte	W04
	.byte		        Bn1 , v127
	.byte	W04
	.byte		N08   , Gs1 
	.byte	W08
	.byte		N04   , Gs1 , v064
	.byte	W04
	.byte		N08   , Bn1 , v127
	.byte	W08
	.byte		N04   , Bn1 , v064
	.byte	W04
	.byte		N08   , As1 , v127
	.byte	W08
	.byte		N12   , An1 
	.byte	W12
	.byte		N16   , An1 , v064
	.byte	W16
	.byte		N24   , An1 , v052
	.byte	W24
	.byte	PEND
@ 004   ----------------------------------------
ch22_1_004:
	.byte		N08   , Cs2 , v127
	.byte	W08
	.byte		N04   
	.byte	W04
	.byte		N08   , Cn2 
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		N08   , Cs2 , v127
	.byte	W08
	.byte		N04   , Cs2 , v064
	.byte	W04
	.byte		N08   , Ds2 , v127
	.byte	W08
	.byte		        Cs2 
	.byte	W08
	.byte		N04   , Cs2 , v064
	.byte	W04
	.byte		N12   , Cs2 , v127
	.byte	W12
	.byte		        Cs2 , v064
	.byte	W12
	.byte		        Cs2 , v052
	.byte	W12
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte	PEND
@ 005   ----------------------------------------
ch22_1_005:
	.byte		N08   , Cs2 , v127
	.byte	W08
	.byte		N04   
	.byte	W04
	.byte		N08   , Cn2 
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		N08   , Cs2 , v127
	.byte	W08
	.byte		N04   , Cs2 , v064
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N12   , Bn1 
	.byte	W12
	.byte		        Bn1 , v064
	.byte	W12
	.byte		N28   , Bn1 , v052
	.byte	W28
	.byte	PEND
@ 006   ----------------------------------------
	.byte	PATT
	 .word	ch22_1_002
@ 007   ----------------------------------------
ch22_1_007:
	.byte	W04
	.byte		N04   , Bn1 , v064
	.byte	W04
	.byte		        Bn1 , v127
	.byte	W04
	.byte		N08   , Gs1 
	.byte	W08
	.byte		N04   , Gs1 , v064
	.byte	W04
	.byte		N08   , Bn1 , v127
	.byte	W08
	.byte		N04   , Bn1 , v064
	.byte	W04
	.byte		N08   , Cs2 , v127
	.byte	W08
	.byte		N12   , Ds2 
	.byte	W12
	.byte		        Ds2 , v064
	.byte	W12
	.byte		N16   , Ds2 , v052
	.byte	W16
	.byte		N04   , Cs2 , v127
	.byte	W04
	.byte		        Dn2 
	.byte	W04
	.byte		        Ds2 
	.byte	W04
	.byte	PEND
@ 008   ----------------------------------------
ch22_1_008:
	.byte		N08   , En2 , v127
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N04   , En2 , v064
	.byte	W04
	.byte		        Bn1 , v127
	.byte	W04
	.byte		N08   , Fn2 
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N04   , Fn2 , v064
	.byte	W04
	.byte		        Bn1 , v127
	.byte	W04
	.byte		N08   , Fs2 
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N04   , Fs2 , v064
	.byte	W04
	.byte		N12   , Fs2 , v127
	.byte	W12
	.byte		        Fs2 , v064
	.byte	W12
	.byte		N04   , As1 , v127
	.byte	W04
	.byte	PEND
@ 009   ----------------------------------------
ch22_1_009:
	.byte		N08   , Bn1 , v127
	.byte	W08
	.byte		N04   , Fs2 
	.byte	W04
	.byte		N08   , Bn1 
	.byte	W08
	.byte		N04   , As1 
	.byte	W04
	.byte		N08   , An1 
	.byte	W08
	.byte		N04   , Fs2 
	.byte	W04
	.byte		N08   , An1 
	.byte	W08
	.byte		N04   , Gn1 
	.byte	W04
	.byte		N08   , Gs1 
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N04   , Gs1 , v064
	.byte	W04
	.byte		N12   , Gs1 , v127
	.byte	W12
	.byte		        Gs1 , v064
	.byte	W12
	.byte		N16   , Gs1 , v052
	.byte	W04
	.byte	PEND
@ 010   ----------------------------------------
ch22_1_010:
	.byte	W12
	.byte		VOICE , 43
	.byte		N08   , Gs2 , v127
	.byte	W08
	.byte		N04   , Gs2 , v064
	.byte	W04
	.byte		N08   , Fs2 , v127
	.byte	W08
	.byte		N04   , En2 
	.byte	W04
	.byte		N08   , Cs2 
	.byte	W08
	.byte		N04   , Bn1 
	.byte	W04
	.byte		N08   , Cs2 
	.byte	W08
	.byte		N04   , Cs2 , v064
	.byte	W04
	.byte		N08   , En2 , v127
	.byte	W08
	.byte		N04   , En2 , v064
	.byte	W04
	.byte		N08   , Cs2 , v127
	.byte	W08
	.byte		N04   , Bn1 
	.byte	W04
	.byte		N08   , Fs1 
	.byte	W08
	.byte		N04   , Gn1 
	.byte	W04
	.byte	PEND
@ 011   ----------------------------------------
ch22_1_011:
	.byte		N12   , Gs1 , v127
	.byte	W12
	.byte		N08   , Gs1 , v064
	.byte	W08
	.byte		N16   , Gs1 , v127
	.byte	W16
	.byte		        Gs1 , v064
	.byte	W16
	.byte		        Gs1 , v052
	.byte	W16
	.byte		        Gs1 , v048
	.byte	W16
	.byte		N12   , Gs1 , v044
	.byte	W12
	.byte	PEND
@ 012   ----------------------------------------
ch22_1_012:
	.byte		N12   , As1 , v127
	.byte	W12
	.byte		N08   , As1 , v064
	.byte	W08
	.byte		        As1 , v127
	.byte	W08
	.byte		        As1 , v064
	.byte	W08
	.byte		        Bn1 , v127
	.byte	W08
	.byte		N04   , Bn1 , v064
	.byte	W04
	.byte		N08   , Cs2 , v127
	.byte	W08
	.byte		N04   , Cs2 , v064
	.byte	W04
	.byte		N08   , As1 , v127
	.byte	W08
	.byte		N04   , As1 , v064
	.byte	W04
	.byte		N08   , Cs2 , v127
	.byte	W08
	.byte		N04   , Cs2 , v064
	.byte	W04
	.byte		N08   , En2 , v127
	.byte	W08
	.byte		N04   , En2 , v064
	.byte	W04
	.byte	PEND
@ 013   ----------------------------------------
ch22_1_013:
	.byte		N12   , Ds2 , v127
	.byte	W12
	.byte		N08   , Ds2 , v064
	.byte	W08
	.byte		N12   , Bn1 , v127
	.byte	W12
	.byte		N04   , Bn1 , v064
	.byte	W04
	.byte		N16   , Fs1 , v127
	.byte	W16
	.byte		        Fs1 , v064
	.byte	W16
	.byte		N04   , Fs1 , v052
	.byte	W04
	.byte		N08   , Fs1 , v127
	.byte	W08
	.byte		        Bn1 
	.byte	W08
	.byte		        Ds2 
	.byte	W08
	.byte	PEND
@ 014   ----------------------------------------
ch22_1_014:
	.byte		N08   , Fs2 , v127
	.byte	W08
	.byte		N04   , Fs2 , v064
	.byte	W04
	.byte		N08   , Gs2 , v127
	.byte	W08
	.byte		N04   , Gs2 , v064
	.byte	W04
	.byte		N08   , Fs2 , v127
	.byte	W08
	.byte		N04   , En2 
	.byte	W04
	.byte		N08   , Cs2 
	.byte	W08
	.byte		N04   , Bn1 
	.byte	W04
	.byte		N08   , Cs2 
	.byte	W08
	.byte		N04   , Cs2 , v064
	.byte	W04
	.byte		N08   , En2 , v127
	.byte	W08
	.byte		N04   , En2 , v064
	.byte	W04
	.byte		N08   , Cs2 , v127
	.byte	W08
	.byte		N04   , Bn1 
	.byte	W04
	.byte		N08   , Fs1 
	.byte	W08
	.byte		N04   , Gn1 
	.byte	W04
	.byte	PEND
@ 015   ----------------------------------------
ch22_1_015:
	.byte		N12   , Gs1 , v127
	.byte	W12
	.byte		N08   , Gs1 , v064
	.byte	W08
	.byte		N16   , Gs1 , v127
	.byte	W16
	.byte		N12   , Gs1 , v064
	.byte	W12
	.byte		        Fs1 , v127
	.byte	W12
	.byte		N08   , Fs1 , v064
	.byte	W08
	.byte		N12   , Fs1 , v127
	.byte	W12
	.byte		N04   , Gs1 
	.byte	W04
	.byte		N08   , Fs1 
	.byte	W08
	.byte		N04   , En1 
	.byte	W04
	.byte	PEND
@ 016   ----------------------------------------
	.byte		N12   , Cs1 
	.byte	W12
	.byte		VOICE , 36
	.byte		N08   , Gs2 , v096
	.byte	W08
	.byte		VOICE , 43
	.byte		N04   , Cs1 , v072
	.byte	W04
	.byte		VOICE , 36
	.byte		N08   , Fs2 , v096
	.byte	W08
	.byte		N04   , En2 
	.byte	W04
	.byte		N08   , Cs2 
	.byte	W08
	.byte		N04   , Bn1 
	.byte	W04
	.byte		N08   , Cs2 
	.byte	W08
	.byte		N04   , Cs2 , v064
	.byte	W04
	.byte		N08   , En2 , v096
	.byte	W08
	.byte		N04   , En2 , v064
	.byte	W04
	.byte		N08   , Cs2 , v096
	.byte	W08
	.byte		N04   , Bn1 
	.byte	W04
	.byte		N08   , Fs1 
	.byte	W08
	.byte		N04   , Gn1 
	.byte	W04
@ 017   ----------------------------------------
	.byte		N20   , Gs1 
	.byte	W20
	.byte		        Gs1 , v076
	.byte	W20
	.byte		        Gs1 , v060
	.byte	W20
	.byte		        Gs1 , v048
	.byte	W20
	.byte		N04   , Gs1 , v044
	.byte	W04
	.byte		VOICE , 25
	.byte		N12   , As1 , v127
	.byte	W12
@ 018   ----------------------------------------
	.byte	PATT
	 .word	ch22_1_002
@ 019   ----------------------------------------
	.byte	PATT
	 .word	ch22_1_003
@ 020   ----------------------------------------
	.byte	PATT
	 .word	ch22_1_004
@ 021   ----------------------------------------
	.byte	PATT
	 .word	ch22_1_005
@ 022   ----------------------------------------
	.byte	PATT
	 .word	ch22_1_002
@ 023   ----------------------------------------
	.byte	PATT
	 .word	ch22_1_007
@ 024   ----------------------------------------
	.byte	PATT
	 .word	ch22_1_008
@ 025   ----------------------------------------
	.byte	PATT
	 .word	ch22_1_009
@ 026   ----------------------------------------
	.byte	PATT
	 .word	ch22_1_010
@ 027   ----------------------------------------
	.byte	PATT
	 .word	ch22_1_011
@ 028   ----------------------------------------
	.byte	PATT
	 .word	ch22_1_012
@ 029   ----------------------------------------
	.byte	PATT
	 .word	ch22_1_013
@ 030   ----------------------------------------
	.byte	PATT
	 .word	ch22_1_014
@ 031   ----------------------------------------
	.byte	PATT
	 .word	ch22_1_015
@ 032   ----------------------------------------
	.byte		N12   , Cs1 , v127
	.byte	W12
	.byte		VOICE , 36
	.byte		N08   , Gs2 , v104
	.byte	W08
	.byte		N04   , Gs2 , v064
	.byte	W04
	.byte		N08   , Fs2 , v104
	.byte	W08
	.byte		N04   , En2 
	.byte	W04
	.byte		N08   , Cs2 
	.byte	W08
	.byte		N04   , Bn1 
	.byte	W04
	.byte		N08   , Cs2 
	.byte	W08
	.byte		N04   , Cs2 , v064
	.byte	W04
	.byte		N08   , En2 , v104
	.byte	W08
	.byte		N04   , En2 , v064
	.byte	W04
	.byte		N08   , Cs2 , v104
	.byte	W08
	.byte		N04   , Bn1 
	.byte	W04
	.byte		N08   , Fs1 
	.byte	W08
	.byte		N04   , En1 
	.byte	W04
@ 033   ----------------------------------------
	.byte		N20   , Fs1 , v127
	.byte	W20
	.byte		        Fs1 , v080
	.byte	W20
	.byte		N08   , Fs1 , v064
	.byte	W08
	.byte		N12   , Fs1 , v076
	.byte	W12
	.byte		        Fs1 , v084
	.byte	W12
	.byte		        Fs1 , v088
	.byte	W12
	.byte		        Fs1 , v096
	.byte	W12
@ 034   ----------------------------------------
	.byte		MOD   , 42
	.byte		N32   , Fs2 , v104
	.byte	W32
	.byte		MOD   , 0
	.byte		N04   , Gn2 
	.byte	W04
	.byte		N08   , Fs2 
	.byte	W08
	.byte		MOD   , 42
	.byte		N36   , En2 
	.byte	W36
	.byte		MOD   , 0
	.byte		N04   , Fn2 
	.byte	W04
	.byte		N08   , En2 
	.byte	W08
	.byte		N04   , Cn2 
	.byte	W04
@ 035   ----------------------------------------
	.byte		MOD   , 42
	.byte		N32   , Dn2 
	.byte	W32
	.byte		MOD   , 42
	.byte		N04   , Ds2 , v127
	.byte	W04
	.byte		MOD   , 0
	.byte		N08   , Dn2 , v104
	.byte	W08
	.byte		MOD   , 42
	.byte		N52   , Cn2 
	.byte	W52
@ 036   ----------------------------------------
	.byte		MOD   , 42
	.byte		N32   
	.byte	W32
	.byte		MOD   , 0
	.byte		N04   , Dn2 
	.byte	W04
	.byte		N08   , Cn2 
	.byte	W08
	.byte		MOD   , 42
	.byte		N36   
	.byte	W36
	.byte		MOD   , 0
	.byte		N04   , Gn1 
	.byte	W04
	.byte		N08   , An1 
	.byte	W08
	.byte		N36   , As1 
	.byte	W04
@ 037   ----------------------------------------
	.byte	W32
	.byte		N04   , Gn1 
	.byte	W04
	.byte		N08   , An1 
	.byte	W08
	.byte		MOD   , 42
	.byte		N16   , As1 
	.byte	W16
	.byte		VOICE , 45
	.byte		MOD   , 0
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
@ 038   ----------------------------------------
	.byte		MOD   , 34
	.byte		N32   , Fn2 
	.byte	W32
	.byte		MOD   , 0
	.byte		N04   , En2 
	.byte	W04
	.byte		N08   , Fn2 
	.byte	W08
	.byte		N04   , Cn2 
	.byte	W04
	.byte		N08   , Cs2 
	.byte	W08
	.byte		N04   , Cn2 
	.byte	W04
	.byte		        As1 
	.byte	W04
	.byte		        Gs1 
	.byte	W04
	.byte		        Gn1 
	.byte	W04
	.byte		N08   , Fn1 
	.byte	W08
	.byte		N12   , En1 
	.byte	W16
@ 039   ----------------------------------------
	.byte	W16
	.byte		N04   , Ds2 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		N08   , Gn2 
	.byte	W08
	.byte		        Gs2 
	.byte	W08
	.byte		        Gn2 
	.byte	W08
	.byte		N16   , En2 
	.byte	W16
	.byte		N04   , Ds2 
	.byte	W04
	.byte		N08   , En2 
	.byte	W08
	.byte		        En2 , v064
	.byte	W20
@ 040   ----------------------------------------
	.byte	W16
	.byte		N04   , Gn2 , v127
	.byte	W04
	.byte		        Gs2 
	.byte	W04
	.byte		MOD   , 34
	.byte		N16   , En2 
	.byte	W16
	.byte		MOD   , 0
	.byte		N04   , Ds2 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		N08   , Cs2 
	.byte	W08
	.byte		MOD   , 34
	.byte		N08   
	.byte	W08
	.byte		MOD   , 0
	.byte		N04   , Cn2 
	.byte	W04
	.byte		        Cs2 
	.byte	W04
	.byte		MOD   , 34
	.byte		N16   , Gs1 
	.byte	W16
	.byte		MOD   , 0
	.byte		N04   , Fs1 
	.byte	W04
	.byte		        Gs1 
	.byte	W04
@ 041   ----------------------------------------
	.byte		N08   , An1 
	.byte	W08
	.byte		N04   , Bn1 
	.byte	W04
	.byte		N08   , Gs1 
	.byte	W08
	.byte		N12   , Fs1 
	.byte	W12
	.byte		MOD   , 34
	.byte		N32   , Dn1 
	.byte	W32
	.byte		MOD   , 0
	.byte		N08   , Dn1 , v064
	.byte	W08
	.byte		N04   , Dn1 , v048
	.byte	W24
@ 042   ----------------------------------------
	.byte	W12
	.byte		N12   , Fs2 , v127
	.byte	W12
	.byte		N08   , En2 
	.byte	W08
	.byte		N04   , Dn2 
	.byte	W04
	.byte		N08   , Bn1 
	.byte	W08
	.byte		N04   , An1 
	.byte	W04
	.byte		MOD   , 34
	.byte		N12   , Bn1 
	.byte	W12
	.byte		MOD   , 0
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N08   , Bn1 
	.byte	W08
	.byte		N04   , An1 
	.byte	W04
	.byte		N08   , Fs1 
	.byte	W08
	.byte		N04   , Gn1 
	.byte	W04
@ 043   ----------------------------------------
	.byte		N08   , An1 
	.byte	W08
	.byte		N12   
	.byte	W12
	.byte		MOD   , 34
	.byte		N20   , An1 , v012
	.byte	W20
	.byte		MOD   , 0
	.byte		N08   , An1 , v064
	.byte	W08
	.byte		VOICE , 36
	.byte		N04   , Bn1 , v096
	.byte	W04
	.byte		        Bn1 , v056
	.byte	W04
	.byte		N08   , Bn1 , v096
	.byte	W08
	.byte		N04   , Bn1 , v056
	.byte	W04
	.byte		N08   , An1 , v096
	.byte	W08
	.byte		N04   , An1 , v056
	.byte	W04
	.byte		        Fs2 , v096
	.byte	W04
	.byte		N08   , En2 
	.byte	W08
	.byte		N16   , Dn2 
	.byte	W04
@ 044   ----------------------------------------
	.byte	W12
	.byte		VOICE , 45
	.byte		N12   , Fs2 , v127
	.byte	W12
	.byte		N08   , En2 
	.byte	W08
	.byte		N04   , Dn2 
	.byte	W04
	.byte		N08   , Bn1 
	.byte	W08
	.byte		N04   , An1 
	.byte	W04
	.byte		MOD   , 34
	.byte		N12   , Bn1 
	.byte	W12
	.byte		MOD   , 0
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N08   , Bn1 
	.byte	W08
	.byte		N04   , An1 
	.byte	W04
	.byte		N08   , Fs1 
	.byte	W08
	.byte		N04   , En1 
	.byte	W04
@ 045   ----------------------------------------
	.byte		N20   , Dn1 
	.byte	W20
	.byte		        Dn1 , v080
	.byte	W20
	.byte		        Dn1 , v064
	.byte	W20
	.byte		        Dn1 , v052
	.byte	W20
	.byte		N24   , Dn1 , v044
	.byte	W16
@ 046   ----------------------------------------
	.byte	W08
	.byte		VOICE , 0
	.byte	W88
@ 047   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 .word	ch22_1_B1
ch22_1_B2:
@ 048   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

ch22_2:
	.byte		VOL   , 127*ch22_mvl/mxv
	.byte	KEYSH , ch22_key+0
ch22_2_B1:
@ 000   ----------------------------------------
ch22_2_000:
	.byte		VOICE , 16
	.byte		N12   , En2 , v127
	.byte	W12
	.byte		VOICE , 42
	.byte		N08   
	.byte	W08
	.byte		VOICE , 41
	.byte		N04   
	.byte	W04
	.byte		VOICE , 16
	.byte		N12   , Bn1 
	.byte	W12
	.byte		VOICE , 42
	.byte		N08   , En2 
	.byte	W08
	.byte		VOICE , 41
	.byte		N04   
	.byte	W04
	.byte		VOICE , 16
	.byte		N12   
	.byte	W12
	.byte		VOICE , 42
	.byte		N08   
	.byte	W08
	.byte		VOICE , 41
	.byte		N04   
	.byte	W04
	.byte		VOICE , 16
	.byte		N12   , Bn1 
	.byte	W12
	.byte		VOICE , 42
	.byte		N08   , En2 
	.byte	W08
	.byte		VOICE , 41
	.byte		N04   
	.byte	W04
	.byte	PEND
@ 001   ----------------------------------------
	.byte		VOICE , 16
	.byte		N12   , Fs2 
	.byte	W12
	.byte		VOICE , 42
	.byte		N08   , An1 
	.byte	W08
	.byte		VOICE , 41
	.byte		N04   
	.byte	W04
	.byte		VOICE , 16
	.byte		N12   , Cs2 
	.byte	W12
	.byte		VOICE , 42
	.byte		N08   , An1 
	.byte	W08
	.byte		VOICE , 41
	.byte		N04   
	.byte	W04
	.byte		VOICE , 16
	.byte		N12   , Bn1 
	.byte	W12
	.byte		VOICE , 42
	.byte		N08   
	.byte	W08
	.byte		VOICE , 41
	.byte		N04   
	.byte	W04
	.byte		VOICE , 16
	.byte		N12   , Fs2 
	.byte	W12
	.byte		VOICE , 42
	.byte		N08   , Bn1 
	.byte	W08
	.byte		VOICE , 41
	.byte		N04   
	.byte	W04
@ 002   ----------------------------------------
	.byte	PATT
	 .word	ch22_2_000
@ 003   ----------------------------------------
ch22_2_003:
	.byte		VOICE , 16
	.byte		N12   , Bn1 , v127
	.byte	W12
	.byte		VOICE , 42
	.byte		N08   
	.byte	W08
	.byte		VOICE , 41
	.byte		N04   
	.byte	W04
	.byte		VOICE , 16
	.byte		N12   , Fs2 
	.byte	W12
	.byte		VOICE , 42
	.byte		N08   , Bn1 
	.byte	W08
	.byte		VOICE , 41
	.byte		N04   
	.byte	W04
	.byte		VOICE , 16
	.byte		N12   
	.byte	W12
	.byte		VOICE , 42
	.byte		N08   
	.byte	W08
	.byte		VOICE , 41
	.byte		N04   
	.byte	W04
	.byte		VOICE , 16
	.byte		N12   , Fs2 
	.byte	W12
	.byte		VOICE , 42
	.byte		N08   , Bn1 
	.byte	W08
	.byte		VOICE , 41
	.byte		N04   
	.byte	W04
	.byte	PEND
@ 004   ----------------------------------------
	.byte	PATT
	 .word	ch22_2_003
@ 005   ----------------------------------------
	.byte	PATT
	 .word	ch22_2_000
@ 006   ----------------------------------------
	.byte	PATT
	 .word	ch22_2_000
@ 007   ----------------------------------------
	.byte	PATT
	 .word	ch22_2_003
@ 008   ----------------------------------------
ch22_2_008:
	.byte		VOICE , 16
	.byte		N12   , Cs2 , v127
	.byte	W12
	.byte		VOICE , 42
	.byte		N08   , En2 
	.byte	W08
	.byte		VOICE , 41
	.byte		N04   
	.byte	W04
	.byte		VOICE , 16
	.byte		N12   , Gs1 
	.byte	W12
	.byte		VOICE , 42
	.byte		N08   , En2 
	.byte	W08
	.byte		VOICE , 41
	.byte		N04   
	.byte	W04
	.byte		VOICE , 16
	.byte		N12   , An1 
	.byte	W12
	.byte		VOICE , 42
	.byte		N08   
	.byte	W08
	.byte		VOICE , 41
	.byte		N04   
	.byte	W04
	.byte		VOICE , 16
	.byte		N12   , En2 
	.byte	W12
	.byte		VOICE , 42
	.byte		N08   , An1 
	.byte	W08
	.byte		VOICE , 41
	.byte		N04   
	.byte	W04
	.byte	PEND
@ 009   ----------------------------------------
ch22_2_009:
	.byte		VOICE , 16
	.byte		N12   , Bn1 , v127
	.byte	W12
	.byte		VOICE , 42
	.byte		N08   
	.byte	W08
	.byte		VOICE , 41
	.byte		N04   
	.byte	W04
	.byte		VOICE , 16
	.byte		N12   , Fs1 
	.byte	W12
	.byte		VOICE , 42
	.byte		N08   , Bn1 
	.byte	W08
	.byte		VOICE , 41
	.byte		N04   
	.byte	W04
	.byte		VOICE , 16
	.byte		N12   , En2 
	.byte	W12
	.byte		VOICE , 42
	.byte		N08   
	.byte	W08
	.byte		VOICE , 41
	.byte		N04   
	.byte	W04
	.byte		VOICE , 16
	.byte		N12   , Bn1 
	.byte	W12
	.byte		VOICE , 42
	.byte		N08   , En2 
	.byte	W08
	.byte		VOICE , 41
	.byte		N04   
	.byte	W04
	.byte	PEND
@ 010   ----------------------------------------
ch22_2_010:
	.byte		VOICE , 16
	.byte		N12   , An1 , v127
	.byte	W12
	.byte		VOICE , 42
	.byte		N08   
	.byte	W08
	.byte		VOICE , 41
	.byte		N04   
	.byte	W04
	.byte		VOICE , 16
	.byte		N12   , Cs2 
	.byte	W12
	.byte		VOICE , 42
	.byte		N08   , An1 
	.byte	W08
	.byte		VOICE , 41
	.byte		N04   
	.byte	W04
	.byte		VOICE , 16
	.byte		N12   , Fs2 
	.byte	W12
	.byte		VOICE , 42
	.byte		N08   , An1 
	.byte	W08
	.byte		VOICE , 41
	.byte		N04   
	.byte	W04
	.byte		VOICE , 16
	.byte		N12   , En2 
	.byte	W12
	.byte		VOICE , 42
	.byte		N08   , An1 
	.byte	W08
	.byte		VOICE , 41
	.byte		N04   
	.byte	W04
	.byte	PEND
@ 011   ----------------------------------------
	.byte	PATT
	 .word	ch22_2_000
@ 012   ----------------------------------------
ch22_2_012:
	.byte		VOICE , 16
	.byte		N12   , Fs1 , v127
	.byte	W12
	.byte		VOICE , 42
	.byte		N08   , Fs2 
	.byte	W08
	.byte		VOICE , 41
	.byte		N04   
	.byte	W04
	.byte		VOICE , 16
	.byte		N12   , Cs2 
	.byte	W12
	.byte		VOICE , 42
	.byte		N08   , Fs2 
	.byte	W08
	.byte		VOICE , 41
	.byte		N04   
	.byte	W04
	.byte		VOICE , 16
	.byte		N12   , Fs1 
	.byte	W12
	.byte		VOICE , 42
	.byte		N08   , Fs2 
	.byte	W08
	.byte		VOICE , 41
	.byte		N04   
	.byte	W04
	.byte		VOICE , 16
	.byte		N12   , Cs2 
	.byte	W12
	.byte		VOICE , 42
	.byte		N08   , Fs2 
	.byte	W08
	.byte		VOICE , 41
	.byte		N04   
	.byte	W04
	.byte	PEND
@ 013   ----------------------------------------
ch22_2_013:
	.byte		VOICE , 16
	.byte		N12   , Bn1 , v127
	.byte	W12
	.byte		VOICE , 42
	.byte		N08   
	.byte	W08
	.byte		VOICE , 41
	.byte		N04   
	.byte	W04
	.byte		VOICE , 16
	.byte		N12   , Fs1 
	.byte	W12
	.byte		VOICE , 42
	.byte		N08   , Bn1 
	.byte	W08
	.byte		VOICE , 41
	.byte		N04   
	.byte	W04
	.byte		VOICE , 16
	.byte		N12   
	.byte	W12
	.byte		VOICE , 42
	.byte		N08   
	.byte	W08
	.byte		VOICE , 41
	.byte		N04   
	.byte	W04
	.byte		VOICE , 16
	.byte		N12   , Fs1 
	.byte	W12
	.byte		VOICE , 42
	.byte		N08   , Bn1 
	.byte	W08
	.byte		VOICE , 41
	.byte		N04   
	.byte	W04
	.byte	PEND
@ 014   ----------------------------------------
	.byte	PATT
	 .word	ch22_2_010
@ 015   ----------------------------------------
ch22_2_015:
	.byte		VOICE , 16
	.byte		N12   , En2 , v127
	.byte	W12
	.byte		VOICE , 42
	.byte		N08   
	.byte	W08
	.byte		VOICE , 41
	.byte		N04   
	.byte	W04
	.byte		VOICE , 16
	.byte		N12   , Bn1 
	.byte	W12
	.byte		VOICE , 42
	.byte		N08   , En2 
	.byte	W08
	.byte		VOICE , 41
	.byte		N04   
	.byte	W04
	.byte		VOICE , 16
	.byte		N12   , Dn2 
	.byte	W12
	.byte		VOICE , 42
	.byte		N08   
	.byte	W08
	.byte		VOICE , 41
	.byte		N04   
	.byte	W04
	.byte		VOICE , 16
	.byte		N12   , An1 
	.byte	W12
	.byte		VOICE , 42
	.byte		N08   , Dn2 
	.byte	W08
	.byte		VOICE , 41
	.byte		N04   
	.byte	W04
	.byte	PEND
@ 016   ----------------------------------------
	.byte	PATT
	 .word	ch22_2_010
@ 017   ----------------------------------------
	.byte	PATT
	 .word	ch22_2_000
@ 018   ----------------------------------------
	.byte	PATT
	 .word	ch22_2_000
@ 019   ----------------------------------------
	.byte	PATT
	 .word	ch22_2_003
@ 020   ----------------------------------------
	.byte	PATT
	 .word	ch22_2_003
@ 021   ----------------------------------------
	.byte	PATT
	 .word	ch22_2_000
@ 022   ----------------------------------------
	.byte	PATT
	 .word	ch22_2_000
@ 023   ----------------------------------------
	.byte	PATT
	 .word	ch22_2_003
@ 024   ----------------------------------------
	.byte	PATT
	 .word	ch22_2_008
@ 025   ----------------------------------------
	.byte	PATT
	 .word	ch22_2_009
@ 026   ----------------------------------------
	.byte	PATT
	 .word	ch22_2_010
@ 027   ----------------------------------------
	.byte	PATT
	 .word	ch22_2_000
@ 028   ----------------------------------------
	.byte	PATT
	 .word	ch22_2_012
@ 029   ----------------------------------------
	.byte	PATT
	 .word	ch22_2_013
@ 030   ----------------------------------------
	.byte	PATT
	 .word	ch22_2_010
@ 031   ----------------------------------------
	.byte	PATT
	 .word	ch22_2_015
@ 032   ----------------------------------------
	.byte		VOICE , 40
	.byte		N24   , Cs1 , v080
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
@ 033   ----------------------------------------
	.byte		N20   , As0 
	.byte	W20
	.byte		N16   , As0 , v064
	.byte	W16
	.byte		N12   , As0 , v048
	.byte	W12
	.byte		VOICE , 36
	.byte		N12   , Bn1 , v076
	.byte	W12
	.byte		        As1 , v084
	.byte	W12
	.byte		        Bn1 , v088
	.byte	W12
	.byte		        Cs2 , v096
	.byte	W12
@ 034   ----------------------------------------
	.byte		MOD   , 42
	.byte		N32   , Dn2 , v104
	.byte	W32
	.byte		MOD   , 0
	.byte		N04   , En2 
	.byte	W04
	.byte		N08   , Dn2 
	.byte	W08
	.byte		MOD   , 42
	.byte		N36   , Cn2 
	.byte	W36
	.byte		MOD   , 0
	.byte		N04   , Dn2 
	.byte	W04
	.byte		N08   , Cn2 
	.byte	W08
	.byte		N04   , An1 
	.byte	W04
@ 035   ----------------------------------------
	.byte		MOD   , 42
	.byte		N32   , As1 
	.byte	W32
	.byte		MOD   , 0
	.byte		N04   , Cn2 
	.byte	W04
	.byte		N08   , As1 
	.byte	W08
	.byte		MOD   , 42
	.byte		N52   , Gs1 
	.byte	W52
@ 036   ----------------------------------------
	.byte		MOD   , 42
	.byte		N32   , Gn1 
	.byte	W32
	.byte		MOD   , 0
	.byte		N04   , An1 
	.byte	W04
	.byte		N08   , Gn1 
	.byte	W08
	.byte		MOD   , 42
	.byte		N36   , Fs1 
	.byte	W36
	.byte		MOD   , 0
	.byte		N04   
	.byte	W04
	.byte		N08   
	.byte	W08
	.byte		N36   , Fn1 
	.byte	W04
@ 037   ----------------------------------------
	.byte	W32
	.byte		N04   , Ds1 , v127
	.byte	W04
	.byte		N08   , Dn1 , v104
	.byte	W08
	.byte		MOD   , 42
	.byte		N16   , Cs1 
	.byte	W16
	.byte		MOD   , 0
	.byte	W08
	.byte		VOICE , 45
	.byte		N12   , Cn2 , v064
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		N04   , Ds2 
	.byte	W04
@ 038   ----------------------------------------
	.byte		VOICE , 40
	.byte		N24   , As1 , v127
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
@ 039   ----------------------------------------
	.byte		VOICE , 39
	.byte		N24   , Cn2 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
@ 040   ----------------------------------------
	.byte		VOICE , 40
	.byte		N24   , Cs2 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
@ 041   ----------------------------------------
	.byte		VOICE , 39
	.byte		N24   , Dn2 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
@ 042   ----------------------------------------
	.byte		VOICE , 40
	.byte		N24   , Bn1 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
@ 043   ----------------------------------------
	.byte		        Fs1 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		VOICE , 36
	.byte		N04   , Gn1 , v096
	.byte	W04
	.byte		        Gn1 , v056
	.byte	W04
	.byte		N08   , Gn1 , v096
	.byte	W08
	.byte		N04   , Gn1 , v056
	.byte	W04
	.byte		N08   , Fs1 , v096
	.byte	W08
	.byte		        Fs1 , v056
	.byte	W08
	.byte		N04   , Fs2 , v064
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		VOICE , 40
	.byte		N16   , Bn1 , v127
	.byte	W04
@ 044   ----------------------------------------
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
@ 045   ----------------------------------------
	.byte		N20   , Fs1 
	.byte	W20
	.byte		        Fs1 , v080
	.byte	W20
	.byte		        Fs1 , v064
	.byte	W20
	.byte		        Fs1 , v052
	.byte	W20
	.byte		N24   , Fs1 , v044
	.byte	W16
@ 046   ----------------------------------------
	.byte	W08
	.byte		VOICE , 0
	.byte	W40
	.byte		        39
	.byte		N24   , Dn1 , v064
	.byte	W24
	.byte		        Dn1 , v072
	.byte	W24
@ 047   ----------------------------------------
	.byte		        Dn1 , v076
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		VOICE , 40
	.byte		N24   , Ds1 , v080
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte	GOTO
	 .word	ch22_2_B1
ch22_2_B2:
@ 048   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

ch22_3:
	.byte		VOL   , 127*ch22_mvl/mxv
	.byte	KEYSH , ch22_key+0
ch22_3_B1:
@ 000   ----------------------------------------
ch22_3_000:
	.byte		VOICE , 9
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v096
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v096
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v096
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v096
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte	PEND
@ 001   ----------------------------------------
ch22_3_001:
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v096
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v096
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v096
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v096
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte	PEND
@ 002   ----------------------------------------
	.byte	PATT
	 .word	ch22_3_001
@ 003   ----------------------------------------
	.byte	PATT
	 .word	ch22_3_001
@ 004   ----------------------------------------
	.byte	PATT
	 .word	ch22_3_001
@ 005   ----------------------------------------
	.byte	PATT
	 .word	ch22_3_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	ch22_3_001
@ 007   ----------------------------------------
	.byte	PATT
	 .word	ch22_3_001
@ 008   ----------------------------------------
	.byte	PATT
	 .word	ch22_3_001
@ 009   ----------------------------------------
ch22_3_009:
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v096
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v096
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v096
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 35
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte	PEND
@ 010   ----------------------------------------
ch22_3_010:
	.byte		VOICE , 35
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v096
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		VOICE , 35
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v096
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		VOICE , 35
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v096
	.byte	W08
	.byte		VOICE , 35
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v096
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte	PEND
@ 011   ----------------------------------------
ch22_3_011:
	.byte		VOICE , 35
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v096
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		VOICE , 35
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v096
	.byte	W08
	.byte		VOICE , 35
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v096
	.byte	W08
	.byte		VOICE , 35
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		VOICE , 35
	.byte		N08   , Cn2 , v104
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte	PEND
@ 012   ----------------------------------------
	.byte	PATT
	 .word	ch22_3_010
@ 013   ----------------------------------------
ch22_3_013:
	.byte		VOICE , 35
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v096
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		VOICE , 35
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v096
	.byte	W08
	.byte		VOICE , 35
	.byte		N04   , Cn2 , v124
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v096
	.byte	W08
	.byte		VOICE , 35
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v072
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 35
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte	PEND
@ 014   ----------------------------------------
ch22_3_014:
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v096
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		VOICE , 35
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v096
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		VOICE , 35
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v096
	.byte	W08
	.byte		VOICE , 35
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v096
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte	PEND
@ 015   ----------------------------------------
	.byte	PATT
	 .word	ch22_3_011
@ 016   ----------------------------------------
	.byte		VOICE , 35
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v096
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		VOICE , 35
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v096
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		VOICE , 35
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v096
	.byte	W08
	.byte		VOICE , 35
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v096
	.byte	W08
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v127
	.byte	W04
@ 017   ----------------------------------------
	.byte		VOICE , 35
	.byte		N08   
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v096
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v096
	.byte	W08
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v096
	.byte	W08
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 8
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		N08   , Cn2 , v096
	.byte	W08
	.byte		N04   , Cn2 , v060
	.byte	W04
@ 018   ----------------------------------------
	.byte	PATT
	 .word	ch22_3_000
@ 019   ----------------------------------------
	.byte	PATT
	 .word	ch22_3_001
@ 020   ----------------------------------------
	.byte	PATT
	 .word	ch22_3_001
@ 021   ----------------------------------------
	.byte	PATT
	 .word	ch22_3_001
@ 022   ----------------------------------------
	.byte	PATT
	 .word	ch22_3_001
@ 023   ----------------------------------------
	.byte	PATT
	 .word	ch22_3_001
@ 024   ----------------------------------------
	.byte	PATT
	 .word	ch22_3_001
@ 025   ----------------------------------------
	.byte	PATT
	 .word	ch22_3_009
@ 026   ----------------------------------------
	.byte	PATT
	 .word	ch22_3_010
@ 027   ----------------------------------------
	.byte	PATT
	 .word	ch22_3_011
@ 028   ----------------------------------------
	.byte	PATT
	 .word	ch22_3_010
@ 029   ----------------------------------------
	.byte	PATT
	 .word	ch22_3_013
@ 030   ----------------------------------------
	.byte	PATT
	 .word	ch22_3_014
@ 031   ----------------------------------------
	.byte	PATT
	 .word	ch22_3_011
@ 032   ----------------------------------------
	.byte		VOICE , 16
	.byte		N12   , An1 , v127
	.byte	W12
	.byte		VOICE , 42
	.byte		N08   
	.byte	W08
	.byte		VOICE , 41
	.byte		N04   
	.byte	W04
	.byte		VOICE , 16
	.byte		N12   , Cs2 
	.byte	W12
	.byte		VOICE , 42
	.byte		N08   , An1 
	.byte	W08
	.byte		VOICE , 41
	.byte		N04   
	.byte	W04
	.byte		VOICE , 16
	.byte		N12   , Fs2 
	.byte	W12
	.byte		VOICE , 42
	.byte		N08   , An1 
	.byte	W08
	.byte		VOICE , 41
	.byte		N04   
	.byte	W04
	.byte		VOICE , 16
	.byte		N12   , En2 
	.byte	W12
	.byte		VOICE , 42
	.byte		N08   , An1 
	.byte	W08
	.byte		VOICE , 41
	.byte		N04   
	.byte	W04
@ 033   ----------------------------------------
	.byte		VOICE , 16
	.byte		N12   , Fs1 
	.byte	W12
	.byte		VOICE , 42
	.byte		N08   , Fs2 
	.byte	W08
	.byte		VOICE , 41
	.byte		N04   
	.byte	W04
	.byte		VOICE , 16
	.byte		N12   , Cs2 
	.byte	W12
	.byte		VOICE , 42
	.byte		N08   , Fs2 
	.byte	W08
	.byte		VOICE , 41
	.byte		N04   
	.byte	W04
	.byte		VOICE , 16
	.byte		N12   , Fs1 
	.byte	W12
	.byte		VOICE , 42
	.byte		N08   , Fs2 
	.byte	W08
	.byte		VOICE , 41
	.byte		N04   
	.byte	W04
	.byte		VOICE , 16
	.byte		N12   , Cs2 
	.byte	W12
	.byte		VOICE , 42
	.byte		N08   , Fs2 
	.byte	W08
	.byte		VOICE , 41
	.byte		N04   
	.byte	W04
@ 034   ----------------------------------------
	.byte		VOICE , 16
	.byte		N24   , Cn2 , v112
	.byte	W24
	.byte		N12   , Cn2 , v088
	.byte	W12
	.byte		N08   , Cn2 , v048
	.byte	W08
	.byte		N28   , As1 , v112
	.byte	W28
	.byte		N08   , As1 , v088
	.byte	W08
	.byte		        Fn2 , v112
	.byte	W08
	.byte		        As1 
	.byte	W08
@ 035   ----------------------------------------
	.byte		N24   , Gs1 
	.byte	W24
	.byte		N12   , Gs1 , v088
	.byte	W12
	.byte		N08   , Gn1 , v112
	.byte	W08
	.byte		N24   , Fs1 
	.byte	W24
	.byte		N04   , Fn2 
	.byte	W04
	.byte		N08   , Fs2 
	.byte	W08
	.byte		        Cs2 
	.byte	W08
	.byte		        Fs1 
	.byte	W08
@ 036   ----------------------------------------
	.byte		N24   , Fn1 
	.byte	W24
	.byte		N08   , Fn1 , v088
	.byte	W08
	.byte		N04   , Gn1 , v127
	.byte	W04
	.byte		N08   , Cn2 
	.byte	W08
	.byte		N16   , Dn2 , v112
	.byte	W16
	.byte		N12   , An1 , v127
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        An1 , v112
	.byte	W12
@ 037   ----------------------------------------
	.byte		        Gn1 
	.byte	W12
	.byte		        Dn2 , v127
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N08   , Gn2 , v112
	.byte	W08
	.byte		N16   , Ds2 
	.byte	W16
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
@ 038   ----------------------------------------
	.byte		        As1 , v127
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		N08   , Fn1 
	.byte	W08
	.byte		N04   , An1 
	.byte	W04
	.byte		N12   , As1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
@ 039   ----------------------------------------
	.byte		        En2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        As1 
	.byte	W12
@ 040   ----------------------------------------
	.byte		        Cs2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N08   , Gs1 
	.byte	W08
	.byte		N04   , Cs2 
	.byte	W04
	.byte		N12   , En2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
@ 041   ----------------------------------------
	.byte		        An1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
@ 042   ----------------------------------------
	.byte		        Gn1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N08   , En2 
	.byte	W08
	.byte		N04   , Fs1 
	.byte	W04
	.byte		N12   , Gn1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
@ 043   ----------------------------------------
	.byte		        Dn2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N08   , Bn1 
	.byte	W08
	.byte		N04   , Dn2 
	.byte	W04
	.byte		N08   , Bn1 
	.byte	W08
	.byte		N16   , Gn1 
	.byte	W04
@ 044   ----------------------------------------
	.byte	W12
	.byte		N12   , Bn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N08   , En2 
	.byte	W08
	.byte		N04   , Fs1 
	.byte	W04
	.byte		N12   , Gn1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
@ 045   ----------------------------------------
	.byte		        Dn2 
	.byte	W12
	.byte		VOICE , 42
	.byte		N08   
	.byte	W08
	.byte		VOICE , 41
	.byte		N04   
	.byte	W04
	.byte		VOICE , 16
	.byte		N12   , An1 
	.byte	W12
	.byte		VOICE , 42
	.byte		N08   , Dn2 
	.byte	W08
	.byte		VOICE , 41
	.byte		N04   
	.byte	W04
	.byte		VOICE , 16
	.byte		N12   
	.byte	W12
	.byte		VOICE , 42
	.byte		N08   
	.byte	W08
	.byte		VOICE , 41
	.byte		N04   
	.byte	W04
	.byte		VOICE , 16
	.byte		N12   , An1 
	.byte	W12
	.byte		VOICE , 42
	.byte		N08   , Dn2 
	.byte	W08
	.byte		VOICE , 41
	.byte		N04   
	.byte	W04
@ 046   ----------------------------------------
	.byte		VOICE , 16
	.byte		N12   
	.byte	W12
	.byte		VOICE , 42
	.byte		N08   
	.byte	W08
	.byte		VOICE , 41
	.byte		N04   
	.byte	W04
	.byte		VOICE , 16
	.byte		N12   , An1 
	.byte	W12
	.byte		VOICE , 42
	.byte		N08   , Dn2 
	.byte	W08
	.byte		VOICE , 41
	.byte		N04   
	.byte	W04
	.byte		VOICE , 16
	.byte		N12   
	.byte	W12
	.byte		VOICE , 42
	.byte		N08   
	.byte	W08
	.byte		VOICE , 41
	.byte		N04   
	.byte	W04
	.byte		VOICE , 16
	.byte		N12   , An1 
	.byte	W12
	.byte		VOICE , 42
	.byte		N08   , Dn2 
	.byte	W08
	.byte		VOICE , 41
	.byte		N04   
	.byte	W04
@ 047   ----------------------------------------
	.byte		VOICE , 16
	.byte		N12   
	.byte	W12
	.byte		VOICE , 42
	.byte		N08   
	.byte	W08
	.byte		VOICE , 41
	.byte		N04   
	.byte	W04
	.byte		VOICE , 16
	.byte		N12   , An1 
	.byte	W12
	.byte		VOICE , 42
	.byte		N08   , Dn2 
	.byte	W08
	.byte		VOICE , 41
	.byte		N04   
	.byte	W04
	.byte		VOICE , 16
	.byte		N12   , Bn1 
	.byte	W12
	.byte		VOICE , 42
	.byte		N08   
	.byte	W08
	.byte		VOICE , 41
	.byte		N04   
	.byte	W04
	.byte		VOICE , 16
	.byte		N12   , Fs1 
	.byte	W12
	.byte		VOICE , 42
	.byte		N08   , Bn1 
	.byte	W08
	.byte		VOICE , 41
	.byte		N04   
	.byte	W04
	.byte	GOTO
	 .word	ch22_3_B1
ch22_3_B2:
@ 048   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

ch22_4:
	.byte		VOL   , 127*ch22_mvl/mxv
	.byte	KEYSH , ch22_key+0
ch22_4_B1:
@ 000   ----------------------------------------
ch22_4_000:
	.byte		VOICE , 39
	.byte		N24   , En1 , v080
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 001   ----------------------------------------
	.byte		VOICE , 40
	.byte		N24   , Fs1 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		        Ds1 
	.byte	W24
	.byte		N24   
	.byte	W24
@ 002   ----------------------------------------
	.byte	PATT
	 .word	ch22_4_000
@ 003   ----------------------------------------
ch22_4_003:
	.byte		VOICE , 40
	.byte		N24   , Ds1 , v080
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 004   ----------------------------------------
ch22_4_004:
	.byte		N24   , Fs1 , v080
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	ch22_4_000
@ 006   ----------------------------------------
ch22_4_006:
	.byte		N24   , En1 , v080
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 007   ----------------------------------------
	.byte	PATT
	 .word	ch22_4_003
@ 008   ----------------------------------------
ch22_4_008:
	.byte		VOICE , 39
	.byte		N24   , En1 , v080
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		VOICE , 40
	.byte		N24   , Cs1 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 009   ----------------------------------------
ch22_4_009:
	.byte		N24   , Ds1 , v080
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		VOICE , 39
	.byte		N24   , En1 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 010   ----------------------------------------
ch22_4_010:
	.byte		VOICE , 40
	.byte		N24   , Cs1 , v080
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 011   ----------------------------------------
	.byte	PATT
	 .word	ch22_4_000
@ 012   ----------------------------------------
	.byte	PATT
	 .word	ch22_4_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	ch22_4_003
@ 014   ----------------------------------------
ch22_4_014:
	.byte		N24   , Cs1 , v080
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 015   ----------------------------------------
ch22_4_015:
	.byte		VOICE , 39
	.byte		N24   , En1 , v080
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		        Dn1 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 016   ----------------------------------------
	.byte	PATT
	 .word	ch22_4_010
@ 017   ----------------------------------------
	.byte	PATT
	 .word	ch22_4_000
@ 018   ----------------------------------------
	.byte	PATT
	 .word	ch22_4_006
@ 019   ----------------------------------------
	.byte	PATT
	 .word	ch22_4_003
@ 020   ----------------------------------------
	.byte	PATT
	 .word	ch22_4_004
@ 021   ----------------------------------------
	.byte	PATT
	 .word	ch22_4_000
@ 022   ----------------------------------------
	.byte	PATT
	 .word	ch22_4_006
@ 023   ----------------------------------------
	.byte	PATT
	 .word	ch22_4_003
@ 024   ----------------------------------------
	.byte	PATT
	 .word	ch22_4_008
@ 025   ----------------------------------------
	.byte	PATT
	 .word	ch22_4_009
@ 026   ----------------------------------------
	.byte	PATT
	 .word	ch22_4_010
@ 027   ----------------------------------------
	.byte	PATT
	 .word	ch22_4_000
@ 028   ----------------------------------------
	.byte	PATT
	 .word	ch22_4_004
@ 029   ----------------------------------------
	.byte	PATT
	 .word	ch22_4_003
@ 030   ----------------------------------------
	.byte	PATT
	 .word	ch22_4_014
@ 031   ----------------------------------------
	.byte	PATT
	 .word	ch22_4_015
@ 032   ----------------------------------------
	.byte		VOICE , 35
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v096
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		VOICE , 35
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v096
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		VOICE , 35
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v096
	.byte	W08
	.byte		VOICE , 35
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v096
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
@ 033   ----------------------------------------
	.byte		VOICE , 35
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v096
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		VOICE , 35
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v096
	.byte	W08
	.byte		VOICE , 35
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v096
	.byte	W08
	.byte		VOICE , 35
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v096
	.byte	W08
	.byte		VOICE , 35
	.byte		N04   , Cn2 , v127
	.byte	W04
@ 034   ----------------------------------------
	.byte		N08   
	.byte	W08
	.byte		VOICE , 37
	.byte		N04   
	.byte	W04
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N08   
	.byte	W08
	.byte		VOICE , 35
	.byte		N04   
	.byte	W04
	.byte		VOICE , 37
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		VOICE , 38
	.byte		N08   
	.byte	W08
	.byte		VOICE , 44
	.byte		N04   
	.byte	W04
	.byte		VOICE , 37
	.byte		N04   
	.byte	W04
	.byte		VOICE , 44
	.byte		N08   , Gn1 , v096
	.byte	W08
@ 035   ----------------------------------------
	.byte		VOICE , 35
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 37
	.byte		N04   
	.byte	W04
	.byte		N08   
	.byte	W08
	.byte		N04   
	.byte	W04
	.byte		VOICE , 38
	.byte		N08   
	.byte	W08
	.byte		VOICE , 37
	.byte		N04   
	.byte	W04
	.byte		N08   
	.byte	W08
	.byte		VOICE , 35
	.byte		N04   
	.byte	W04
	.byte		VOICE , 37
	.byte		N12   
	.byte	W12
	.byte		N08   
	.byte	W08
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v072
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 37
	.byte		N04   
	.byte	W04
	.byte		VOICE , 35
	.byte		N08   
	.byte	W08
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v072
	.byte	W04
@ 036   ----------------------------------------
	.byte		VOICE , 35
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 37
	.byte		N04   
	.byte	W04
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N08   
	.byte	W08
	.byte		VOICE , 35
	.byte		N04   
	.byte	W04
	.byte		VOICE , 37
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		VOICE , 38
	.byte		N08   
	.byte	W08
	.byte		VOICE , 44
	.byte		N04   
	.byte	W04
	.byte		VOICE , 37
	.byte		N04   
	.byte	W04
	.byte		VOICE , 44
	.byte		N08   , Gn1 , v096
	.byte	W08
@ 037   ----------------------------------------
	.byte		VOICE , 35
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 37
	.byte		N04   
	.byte	W04
	.byte		N08   
	.byte	W08
	.byte		N04   
	.byte	W04
	.byte		VOICE , 38
	.byte		N12   
	.byte	W12
	.byte		VOICE , 37
	.byte		N08   
	.byte	W08
	.byte		VOICE , 35
	.byte		N04   
	.byte	W04
	.byte		VOICE , 37
	.byte		N12   
	.byte	W12
	.byte		N08   
	.byte	W08
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v072
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 35
	.byte		N04   
	.byte	W04
	.byte		VOICE , 37
	.byte		N04   
	.byte	W04
	.byte		VOICE , 35
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte		VOICE , 37
	.byte		N04   , Cn2 , v127
	.byte	W04
@ 038   ----------------------------------------
ch22_4_038:
	.byte		VOICE , 35
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 37
	.byte		N04   
	.byte	W04
	.byte		VOICE , 38
	.byte		N08   
	.byte	W08
	.byte		VOICE , 37
	.byte		N04   
	.byte	W04
	.byte		N08   
	.byte	W08
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v080
	.byte	W04
	.byte		VOICE , 44
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte		VOICE , 35
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 37
	.byte		N04   
	.byte	W04
	.byte		VOICE , 38
	.byte		N08   
	.byte	W08
	.byte		VOICE , 37
	.byte		N04   
	.byte	W04
	.byte		N08   
	.byte	W08
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v080
	.byte	W04
	.byte		VOICE , 44
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte	PEND
@ 039   ----------------------------------------
	.byte		VOICE , 35
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 37
	.byte		N04   
	.byte	W04
	.byte		VOICE , 38
	.byte		N08   
	.byte	W08
	.byte		VOICE , 37
	.byte		N04   
	.byte	W04
	.byte		N08   
	.byte	W08
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v080
	.byte	W04
	.byte		VOICE , 44
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte		VOICE , 35
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 37
	.byte		N04   
	.byte	W04
	.byte		VOICE , 38
	.byte		N08   
	.byte	W08
	.byte		VOICE , 37
	.byte		N04   
	.byte	W04
	.byte		N08   
	.byte	W08
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v112
	.byte	W04
@ 040   ----------------------------------------
	.byte	PATT
	 .word	ch22_4_038
@ 041   ----------------------------------------
	.byte		VOICE , 35
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 37
	.byte		N04   
	.byte	W04
	.byte		VOICE , 38
	.byte		N08   
	.byte	W08
	.byte		VOICE , 37
	.byte		N04   
	.byte	W04
	.byte		N08   
	.byte	W08
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v080
	.byte	W04
	.byte		VOICE , 44
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte		VOICE , 35
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 37
	.byte		N04   
	.byte	W04
	.byte		VOICE , 38
	.byte		N08   
	.byte	W08
	.byte		VOICE , 37
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v080
	.byte	W04
	.byte		        Cn2 , v127
	.byte	W04
	.byte		VOICE , 44
	.byte		N04   
	.byte	W04
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v080
	.byte	W04
	.byte		        Cn2 , v127
	.byte	W04
@ 042   ----------------------------------------
	.byte		VOICE , 35
	.byte		N08   
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		VOICE , 38
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v080
	.byte	W04
	.byte		VOICE , 44
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte		VOICE , 35
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		VOICE , 38
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v080
	.byte	W04
	.byte		VOICE , 44
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 35
	.byte		N04   , Cn2 , v104
	.byte	W04
@ 043   ----------------------------------------
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		VOICE , 38
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v080
	.byte	W04
	.byte		VOICE , 44
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 35
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 38
	.byte		N08   , Cn2 , v104
	.byte	W08
	.byte		        Cn2 , v127
	.byte	W08
	.byte		VOICE , 35
	.byte		N04   
	.byte	W04
	.byte		VOICE , 38
	.byte		N04   
	.byte	W04
	.byte		VOICE , 44
	.byte		N04   
	.byte	W04
	.byte		N08   , Gn1 
	.byte	W08
	.byte		VOICE , 35
	.byte		N04   , Cn2 
	.byte	W04
@ 044   ----------------------------------------
	.byte		VOICE , 9
	.byte		N08   
	.byte	W08
	.byte		VOICE , 35
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte		VOICE , 38
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v080
	.byte	W04
	.byte		VOICE , 44
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 35
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		VOICE , 38
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v080
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 35
	.byte		N04   , Cn2 , v104
	.byte	W04
@ 045   ----------------------------------------
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v096
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v096
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v096
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v096
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
@ 046   ----------------------------------------
ch22_4_046:
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v096
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v096
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v096
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v096
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v060
	.byte	W04
	.byte	PEND
@ 047   ----------------------------------------
	.byte	PATT
	 .word	ch22_4_046
	.byte	GOTO
	 .word	ch22_4_B1
ch22_4_B2:
@ 048   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

ch22:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	ch22_pri	@ Priority
	.byte	ch22_rev	@ Reverb.

	.word	ch22_grp

	.word	ch22_1
	.word	ch22_2
	.word	ch22_3
	.word	ch22_4

	.end
