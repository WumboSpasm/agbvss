	.include "MPlayDef.s"

	.equ	ch14_grp, voicegroup000
	.equ	ch14_pri, 128
	.equ	ch14_rev, reverb_set+50
	.equ	ch14_mvl, 127
	.equ	ch14_key, 0
	.equ	ch14_tbs, 1
	.equ	ch14_exg, 0
	.equ	ch14_cmp, 1

	.section .rodata
	.global	ch14
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

ch14_1:
	.byte		VOL   , 127*ch14_mvl/mxv
	.byte	KEYSH , ch14_key+0
ch14_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 100*ch14_tbs/2
	.byte		VOICE , 22
	.byte		N08   , Cn2 , v100
	.byte	W08
	.byte		VOICE , 23
	.byte		N04   , Cn2 , v088
	.byte	W04
	.byte		VOICE , 22
	.byte		N08   , Cn2 , v096
	.byte	W08
	.byte		VOICE , 23
	.byte		N04   , Cn2 , v088
	.byte	W04
	.byte		VOICE , 22
	.byte		N08   , Cn2 , v100
	.byte	W08
	.byte		VOICE , 23
	.byte		N04   , Cn2 , v088
	.byte	W04
	.byte		VOICE , 22
	.byte		N08   , Cn2 , v096
	.byte	W08
	.byte		VOICE , 23
	.byte		N04   , Cn2 , v088
	.byte	W04
	.byte		VOICE , 22
	.byte		N08   , Cn2 , v100
	.byte	W08
	.byte		VOICE , 23
	.byte		N04   , Cn2 , v088
	.byte	W04
	.byte		VOICE , 22
	.byte		N08   , Cn2 , v096
	.byte	W08
	.byte		N12   , Gn2 , v100
	.byte	W12
	.byte		VOICE , 23
	.byte		N04   , Gn2 , v088
	.byte	W04
	.byte		VOICE , 22
	.byte		N08   , Fs2 , v096
	.byte	W08
	.byte		VOICE , 23
	.byte		N04   , Fs2 , v088
	.byte	W04
@ 001   ----------------------------------------
ch14_1_001:
	.byte		VOICE , 22
	.byte		N08   , Fn2 , v100
	.byte	W08
	.byte		VOICE , 23
	.byte		N04   , Fn2 , v088
	.byte	W04
	.byte		VOICE , 22
	.byte		N08   , Fn2 , v096
	.byte	W08
	.byte		VOICE , 23
	.byte		N04   , Fn2 , v088
	.byte	W04
	.byte		VOICE , 22
	.byte		N08   , Fn2 , v100
	.byte	W08
	.byte		VOICE , 23
	.byte		N04   , Fn2 , v088
	.byte	W04
	.byte		VOICE , 22
	.byte		N08   , Fn2 , v096
	.byte	W08
	.byte		VOICE , 23
	.byte		N04   , Fn2 , v088
	.byte	W04
	.byte		VOICE , 22
	.byte		N08   , Fn2 , v100
	.byte	W08
	.byte		VOICE , 23
	.byte		N04   , Fn2 , v088
	.byte	W04
	.byte		VOICE , 22
	.byte		N08   , Fn2 , v096
	.byte	W08
	.byte		N12   , Gn2 , v100
	.byte	W12
	.byte		VOICE , 23
	.byte		N04   , Gn2 , v088
	.byte	W04
	.byte		VOICE , 22
	.byte		N08   , Gn2 , v096
	.byte	W08
	.byte		VOICE , 23
	.byte		N04   , Gn2 , v088
	.byte	W04
	.byte	PEND
@ 002   ----------------------------------------
ch14_1_002:
	.byte		VOICE , 22
	.byte		N08   , Cn2 , v100
	.byte	W08
	.byte		VOICE , 23
	.byte		N04   , Cn2 , v088
	.byte	W04
	.byte		VOICE , 22
	.byte		N08   , Cn2 , v096
	.byte	W08
	.byte		VOICE , 23
	.byte		N04   , Cn2 , v088
	.byte	W04
	.byte		VOICE , 22
	.byte		N08   , Cn2 , v100
	.byte	W08
	.byte		VOICE , 23
	.byte		N04   , Cn2 , v088
	.byte	W04
	.byte		VOICE , 22
	.byte		N08   , Cn2 , v096
	.byte	W08
	.byte		VOICE , 23
	.byte		N04   , Cn2 , v088
	.byte	W04
	.byte		VOICE , 22
	.byte		N08   , Cn2 , v100
	.byte	W08
	.byte		VOICE , 23
	.byte		N04   , Cn2 , v088
	.byte	W04
	.byte		VOICE , 22
	.byte		N08   , Cn2 , v096
	.byte	W08
	.byte		N12   , Gn2 , v100
	.byte	W12
	.byte		VOICE , 23
	.byte		N04   , Gn2 , v088
	.byte	W04
	.byte		VOICE , 22
	.byte		N08   , Fs2 , v096
	.byte	W08
	.byte		VOICE , 23
	.byte		N04   , Fs2 , v088
	.byte	W04
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	ch14_1_001
@ 004   ----------------------------------------
	.byte	PATT
	 .word	ch14_1_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	ch14_1_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	ch14_1_002
@ 007   ----------------------------------------
	.byte		VOICE , 22
	.byte		N08   , Fn2 , v100
	.byte	W08
	.byte		VOICE , 23
	.byte		N04   , Fn2 , v088
	.byte	W04
	.byte		VOICE , 22
	.byte		N08   , Fn2 , v096
	.byte	W08
	.byte		VOICE , 23
	.byte		N04   , Fn2 , v088
	.byte	W04
	.byte		VOICE , 22
	.byte		N08   , Fn2 , v100
	.byte	W08
	.byte		VOICE , 23
	.byte		N04   , Fn2 , v088
	.byte	W04
	.byte		VOICE , 22
	.byte		N08   , Fn2 , v096
	.byte	W08
	.byte		VOICE , 23
	.byte		N04   , Fn2 , v088
	.byte	W04
	.byte		VOICE , 22
	.byte		N08   , Gn2 , v100
	.byte	W08
	.byte		VOICE , 23
	.byte		N04   , Gn2 , v088
	.byte	W04
	.byte		VOICE , 22
	.byte		N08   , Gn2 , v096
	.byte	W08
	.byte		N12   , Gn2 , v100
	.byte	W12
	.byte		VOICE , 23
	.byte		N04   , Gn2 , v088
	.byte	W04
	.byte		VOICE , 22
	.byte		N08   , Gn2 , v096
	.byte	W08
	.byte		VOICE , 23
	.byte		N04   , Gn2 , v088
	.byte	W04
@ 008   ----------------------------------------
	.byte	PATT
	 .word	ch14_1_002
@ 009   ----------------------------------------
	.byte	PATT
	 .word	ch14_1_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	ch14_1_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	ch14_1_001
@ 012   ----------------------------------------
	.byte	PATT
	 .word	ch14_1_002
@ 013   ----------------------------------------
ch14_1_013:
	.byte		VOICE , 22
	.byte		N08   , Fn2 , v100
	.byte	W08
	.byte		VOICE , 23
	.byte		N04   , Fn2 , v088
	.byte	W04
	.byte		VOICE , 22
	.byte		N08   , Fn2 , v096
	.byte	W08
	.byte		VOICE , 23
	.byte		N04   , Fn2 , v088
	.byte	W04
	.byte		VOICE , 22
	.byte		N08   , Fn2 , v100
	.byte	W08
	.byte		VOICE , 23
	.byte		N04   , Fn2 , v088
	.byte	W04
	.byte		VOICE , 22
	.byte		N08   , Fn2 , v096
	.byte	W08
	.byte		VOICE , 23
	.byte		N04   , Fn2 , v088
	.byte	W04
	.byte		VOICE , 22
	.byte		N08   , Gn2 , v100
	.byte	W08
	.byte		VOICE , 23
	.byte		N04   , Gn2 , v088
	.byte	W04
	.byte		VOICE , 22
	.byte		N08   , Fs2 , v096
	.byte	W08
	.byte		N12   , Gn2 , v100
	.byte	W12
	.byte		VOICE , 23
	.byte		N04   , Gn2 , v088
	.byte	W04
	.byte		VOICE , 22
	.byte		N08   , Gn2 , v096
	.byte	W08
	.byte		VOICE , 23
	.byte		N04   , Gn2 , v088
	.byte	W04
	.byte	PEND
@ 014   ----------------------------------------
ch14_1_014:
	.byte		VOICE , 22
	.byte		N08   , Fn2 , v100
	.byte	W08
	.byte		VOICE , 23
	.byte		N04   , Fn2 , v088
	.byte	W04
	.byte		VOICE , 22
	.byte		N08   , Fn2 , v096
	.byte	W08
	.byte		VOICE , 23
	.byte		N04   , Fn2 , v088
	.byte	W04
	.byte		VOICE , 22
	.byte		N08   , Fn2 , v100
	.byte	W08
	.byte		VOICE , 23
	.byte		N04   , Fn2 , v088
	.byte	W04
	.byte		VOICE , 22
	.byte		N08   , Fn2 , v096
	.byte	W08
	.byte		VOICE , 23
	.byte		N04   , Fn2 , v088
	.byte	W04
	.byte		VOICE , 22
	.byte		N08   , Fn2 , v100
	.byte	W08
	.byte		VOICE , 23
	.byte		N04   , Fn2 , v088
	.byte	W04
	.byte		VOICE , 22
	.byte		N08   , Fn2 , v096
	.byte	W08
	.byte		N12   , Fn2 , v100
	.byte	W12
	.byte		VOICE , 23
	.byte		N04   , Fn2 , v088
	.byte	W04
	.byte		VOICE , 22
	.byte		N08   , Fn2 , v096
	.byte	W08
	.byte		VOICE , 23
	.byte		N04   , Fn2 , v088
	.byte	W04
	.byte	PEND
@ 015   ----------------------------------------
ch14_1_015:
	.byte		VOICE , 22
	.byte		N08   , An2 , v100
	.byte	W08
	.byte		VOICE , 23
	.byte		N04   , An2 , v088
	.byte	W04
	.byte		VOICE , 22
	.byte		N08   , An2 , v096
	.byte	W08
	.byte		VOICE , 23
	.byte		N04   , An2 , v088
	.byte	W04
	.byte		VOICE , 22
	.byte		N08   , An2 , v100
	.byte	W08
	.byte		VOICE , 23
	.byte		N04   , An2 , v088
	.byte	W04
	.byte		VOICE , 22
	.byte		N08   , An2 , v096
	.byte	W08
	.byte		VOICE , 23
	.byte		N04   , An2 , v088
	.byte	W04
	.byte		VOICE , 22
	.byte		N08   , An2 , v100
	.byte	W08
	.byte		VOICE , 23
	.byte		N04   , An2 , v088
	.byte	W04
	.byte		VOICE , 22
	.byte		N08   , An2 , v096
	.byte	W08
	.byte		N12   , An2 , v100
	.byte	W12
	.byte		VOICE , 23
	.byte		N04   , An2 , v088
	.byte	W04
	.byte		VOICE , 22
	.byte		N08   , An2 , v096
	.byte	W08
	.byte		VOICE , 23
	.byte		N04   , An2 , v088
	.byte	W04
	.byte	PEND
@ 016   ----------------------------------------
	.byte	PATT
	 .word	ch14_1_002
@ 017   ----------------------------------------
	.byte	PATT
	 .word	ch14_1_001
@ 018   ----------------------------------------
	.byte	PATT
	 .word	ch14_1_014
@ 019   ----------------------------------------
	.byte	PATT
	 .word	ch14_1_015
@ 020   ----------------------------------------
	.byte	PATT
	 .word	ch14_1_002
@ 021   ----------------------------------------
	.byte	PATT
	 .word	ch14_1_001
@ 022   ----------------------------------------
	.byte	PATT
	 .word	ch14_1_002
@ 023   ----------------------------------------
	.byte	PATT
	 .word	ch14_1_001
@ 024   ----------------------------------------
	.byte	PATT
	 .word	ch14_1_002
@ 025   ----------------------------------------
	.byte	PATT
	 .word	ch14_1_001
@ 026   ----------------------------------------
	.byte	PATT
	 .word	ch14_1_014
@ 027   ----------------------------------------
	.byte	PATT
	 .word	ch14_1_001
@ 028   ----------------------------------------
	.byte	PATT
	 .word	ch14_1_002
@ 029   ----------------------------------------
	.byte	PATT
	 .word	ch14_1_013
@ 030   ----------------------------------------
	.byte	PATT
	 .word	ch14_1_014
@ 031   ----------------------------------------
	.byte	PATT
	 .word	ch14_1_015
@ 032   ----------------------------------------
	.byte	PATT
	 .word	ch14_1_002
@ 033   ----------------------------------------
	.byte	PATT
	 .word	ch14_1_001
@ 034   ----------------------------------------
	.byte	PATT
	 .word	ch14_1_014
@ 035   ----------------------------------------
	.byte	PATT
	 .word	ch14_1_015
@ 036   ----------------------------------------
	.byte	PATT
	 .word	ch14_1_002
@ 037   ----------------------------------------
	.byte	PATT
	 .word	ch14_1_001
	.byte	GOTO
	 .word	ch14_1_B1
ch14_1_B2:
@ 038   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

ch14_2:
	.byte		VOL   , 127*ch14_mvl/mxv
	.byte	KEYSH , ch14_key+0
ch14_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 16
	.byte		N12   , Cn2 , v104
	.byte	W24
	.byte		        Gn2 
	.byte	W24
	.byte		        An2 
	.byte	W20
	.byte		        Gn2 
	.byte	W12
	.byte		N04   , Gn1 
	.byte	W04
	.byte		N12   , Cn2 
	.byte	W12
@ 001   ----------------------------------------
ch14_2_001:
	.byte		N12   , Dn2 , v104
	.byte	W24
	.byte		        Gn2 
	.byte	W24
	.byte		        An2 
	.byte	W20
	.byte		        Gn2 
	.byte	W12
	.byte		N04   , Gn1 
	.byte	W04
	.byte		N12   , Bn1 
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
ch14_2_002:
	.byte		N12   , Cn2 , v104
	.byte	W24
	.byte		        Gn2 
	.byte	W24
	.byte		        An2 
	.byte	W20
	.byte		        Gn2 
	.byte	W12
	.byte		N04   , Gn1 
	.byte	W04
	.byte		N12   , Cn2 
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	ch14_2_001
@ 004   ----------------------------------------
ch14_2_004:
	.byte		N12   , Cn2 , v104
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		N08   , Gn2 
	.byte	W08
	.byte		N04   , An2 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		VOICE , 0
	.byte	W04
	.byte		        16
	.byte		N04   , Gn2 
	.byte	W04
	.byte		N12   , An2 
	.byte	W20
	.byte		        Gn2 
	.byte	W12
	.byte		N04   , Gn1 
	.byte	W04
	.byte		N12   , Cn2 
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
ch14_2_005:
	.byte		N12   , Dn2 , v104
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        An2 
	.byte	W20
	.byte		        Gn2 
	.byte	W12
	.byte		N04   , Gn1 
	.byte	W04
	.byte		N12   , Bn1 
	.byte	W12
	.byte	PEND
@ 006   ----------------------------------------
ch14_2_006:
	.byte		N12   , Cn2 , v104
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		N08   , Gn2 
	.byte	W08
	.byte		N04   , An2 
	.byte	W04
	.byte		N08   , Bn2 
	.byte	W08
	.byte		N04   , Gn2 
	.byte	W04
	.byte		N12   , An2 
	.byte	W20
	.byte		        Gn2 
	.byte	W12
	.byte		N04   , Gn1 
	.byte	W04
	.byte		N12   , Cn2 
	.byte	W12
	.byte	PEND
@ 007   ----------------------------------------
	.byte		        Dn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W20
	.byte		N12   
	.byte	W12
	.byte		N04   , Gn1 
	.byte	W04
	.byte		N12   , Bn1 
	.byte	W12
@ 008   ----------------------------------------
	.byte	PATT
	 .word	ch14_2_002
@ 009   ----------------------------------------
	.byte	PATT
	 .word	ch14_2_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	ch14_2_004
@ 011   ----------------------------------------
	.byte	PATT
	 .word	ch14_2_005
@ 012   ----------------------------------------
	.byte	PATT
	 .word	ch14_2_006
@ 013   ----------------------------------------
	.byte		N12   , Dn2 , v104
	.byte	W12
	.byte		N08   , An2 
	.byte	W12
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N08   , Gn2 
	.byte	W08
	.byte		N04   , Dn2 
	.byte	W04
	.byte		N12   , En2 
	.byte	W12
	.byte		N08   , Dn2 
	.byte	W08
	.byte		N04   , An1 
	.byte	W04
	.byte		N12   , Gn1 
	.byte	W12
@ 014   ----------------------------------------
ch14_2_014:
	.byte		N12   , Fn1 , v104
	.byte	W24
	.byte		        Cn2 
	.byte	W24
	.byte		        Dn2 
	.byte	W20
	.byte		        Cn2 
	.byte	W12
	.byte		N04   , Cn1 
	.byte	W04
	.byte		N12   , Fn1 
	.byte	W12
	.byte	PEND
@ 015   ----------------------------------------
ch14_2_015:
	.byte		N12   , Dn1 , v104
	.byte	W24
	.byte		        An1 
	.byte	W24
	.byte		        En2 
	.byte	W20
	.byte		        Dn2 
	.byte	W12
	.byte		N04   , An1 
	.byte	W04
	.byte		N12   , Fn1 
	.byte	W12
	.byte	PEND
@ 016   ----------------------------------------
	.byte	PATT
	 .word	ch14_2_006
@ 017   ----------------------------------------
	.byte	PATT
	 .word	ch14_2_005
@ 018   ----------------------------------------
	.byte	PATT
	 .word	ch14_2_014
@ 019   ----------------------------------------
	.byte	PATT
	 .word	ch14_2_015
@ 020   ----------------------------------------
	.byte	PATT
	 .word	ch14_2_006
@ 021   ----------------------------------------
	.byte	PATT
	 .word	ch14_2_005
@ 022   ----------------------------------------
	.byte	PATT
	 .word	ch14_2_006
@ 023   ----------------------------------------
	.byte	PATT
	 .word	ch14_2_005
@ 024   ----------------------------------------
	.byte	PATT
	 .word	ch14_2_006
@ 025   ----------------------------------------
	.byte		N12   , Dn2 , v104
	.byte	W12
	.byte		N08   , An2 
	.byte	W12
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        An2 
	.byte	W20
	.byte		        Gn2 
	.byte	W12
	.byte		N04   , Gn1 
	.byte	W04
	.byte		N12   , Bn1 
	.byte	W12
@ 026   ----------------------------------------
	.byte	PATT
	 .word	ch14_2_014
@ 027   ----------------------------------------
	.byte		N12   , Dn2 , v104
	.byte	W12
	.byte		N08   , An2 
	.byte	W12
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N08   , En2 
	.byte	W12
	.byte		N12   , An2 
	.byte	W20
	.byte		        Gn2 
	.byte	W12
	.byte		N04   , Gn1 
	.byte	W04
	.byte		N12   , Bn1 
	.byte	W12
@ 028   ----------------------------------------
	.byte	PATT
	 .word	ch14_2_002
@ 029   ----------------------------------------
	.byte		N12   , Dn2 , v104
	.byte	W12
	.byte		N08   , An2 
	.byte	W12
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		N08   , Gn2 
	.byte	W08
	.byte		N04   , Dn2 
	.byte	W04
	.byte		N12   , En2 
	.byte	W12
	.byte		N08   , Dn2 
	.byte	W08
	.byte		N04   , An1 
	.byte	W04
	.byte		N12   , Gn1 
	.byte	W12
@ 030   ----------------------------------------
	.byte	PATT
	 .word	ch14_2_014
@ 031   ----------------------------------------
	.byte	PATT
	 .word	ch14_2_015
@ 032   ----------------------------------------
	.byte	PATT
	 .word	ch14_2_006
@ 033   ----------------------------------------
	.byte	PATT
	 .word	ch14_2_005
@ 034   ----------------------------------------
	.byte	PATT
	 .word	ch14_2_014
@ 035   ----------------------------------------
	.byte	PATT
	 .word	ch14_2_015
@ 036   ----------------------------------------
	.byte	PATT
	 .word	ch14_2_006
@ 037   ----------------------------------------
	.byte	PATT
	 .word	ch14_2_005
	.byte	GOTO
	 .word	ch14_2_B1
ch14_2_B2:
@ 038   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

ch14_3:
	.byte		VOL   , 127*ch14_mvl/mxv
	.byte	KEYSH , ch14_key+0
ch14_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 24
	.byte		N08   , Cn2 , v104
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v056
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v056
	.byte	W04
	.byte		N08   , Cn2 , v088
	.byte	W08
	.byte		N04   , Cn2 , v056
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v056
	.byte	W04
	.byte		N08   , Cn2 , v088
	.byte	W08
	.byte		N04   , Cn2 , v056
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v056
	.byte	W04
	.byte		N08   , Cn2 , v088
	.byte	W08
	.byte		N04   , Cn2 , v056
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v056
	.byte	W04
@ 001   ----------------------------------------
	.byte		N08   , Cn2 , v088
	.byte	W08
	.byte		N04   , Cn2 , v056
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v056
	.byte	W04
	.byte		N08   , Cn2 , v088
	.byte	W08
	.byte		N04   , Cn2 , v056
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v056
	.byte	W04
	.byte		N08   , Cn2 , v088
	.byte	W08
	.byte		N04   , Cn2 , v056
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v056
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   
	.byte	W04
	.byte		VOICE , 24
	.byte		N08   , Cn2 , v104
	.byte	W08
	.byte		VOICE , 0
	.byte	W04
@ 002   ----------------------------------------
ch14_3_002:
	.byte		VOICE , 24
	.byte		N12   , Cn2 , v104
	.byte	W12
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v072
	.byte	W04
	.byte		VOICE , 24
	.byte		N12   , Cn2 , v104
	.byte	W12
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v072
	.byte	W04
	.byte		VOICE , 24
	.byte		N12   , Cn2 , v104
	.byte	W12
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte		N12   
	.byte	W12
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v072
	.byte	W04
	.byte	PEND
@ 003   ----------------------------------------
ch14_3_003:
	.byte		VOICE , 24
	.byte		N12   , Cn2 , v104
	.byte	W12
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v072
	.byte	W04
	.byte		VOICE , 24
	.byte		N12   , Cn2 , v104
	.byte	W12
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte		N12   
	.byte	W12
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte		N12   
	.byte	W12
	.byte		N08   
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v072
	.byte	W04
	.byte	PEND
@ 004   ----------------------------------------
	.byte	PATT
	 .word	ch14_3_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	ch14_3_003
@ 006   ----------------------------------------
	.byte	PATT
	 .word	ch14_3_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	ch14_3_003
@ 008   ----------------------------------------
	.byte	PATT
	 .word	ch14_3_002
@ 009   ----------------------------------------
	.byte	PATT
	 .word	ch14_3_003
@ 010   ----------------------------------------
	.byte	PATT
	 .word	ch14_3_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	ch14_3_003
@ 012   ----------------------------------------
	.byte	PATT
	 .word	ch14_3_002
@ 013   ----------------------------------------
ch14_3_013:
	.byte		VOICE , 24
	.byte		N12   , Cn2 , v104
	.byte	W12
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v072
	.byte	W04
	.byte		VOICE , 24
	.byte		N12   , Cn2 , v104
	.byte	W12
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte		N12   
	.byte	W12
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte		N08   
	.byte	W08
	.byte		VOICE , 5
	.byte		N04   
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte	PEND
@ 014   ----------------------------------------
ch14_3_014:
	.byte		N12   , Cn2 , v104
	.byte	W12
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v072
	.byte	W04
	.byte		VOICE , 24
	.byte		N12   , Cn2 , v104
	.byte	W12
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 5
	.byte		N04   
	.byte	W04
	.byte		VOICE , 24
	.byte		N12   , Cn2 , v104
	.byte	W12
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v072
	.byte	W04
	.byte		VOICE , 24
	.byte		N08   , Cn2 , v104
	.byte	W08
	.byte		VOICE , 5
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 8
	.byte		N08   
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v072
	.byte	W04
	.byte	PEND
@ 015   ----------------------------------------
ch14_3_015:
	.byte		VOICE , 24
	.byte		N12   , Cn2 , v104
	.byte	W12
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v072
	.byte	W04
	.byte		VOICE , 24
	.byte		N12   , Cn2 , v104
	.byte	W12
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 5
	.byte		N04   
	.byte	W04
	.byte		VOICE , 24
	.byte		N12   , Cn2 , v104
	.byte	W12
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 5
	.byte		N04   
	.byte	W04
	.byte		VOICE , 24
	.byte		N12   , Cn2 , v104
	.byte	W12
	.byte		VOICE , 5
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte	PEND
@ 016   ----------------------------------------
ch14_3_016:
	.byte		VOICE , 24
	.byte		N12   , Cn2 , v104
	.byte	W12
	.byte		VOICE , 5
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v072
	.byte	W04
	.byte		VOICE , 24
	.byte		N12   , Cn2 , v104
	.byte	W12
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 5
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte		VOICE , 24
	.byte		N12   
	.byte	W12
	.byte		VOICE , 5
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte		N08   
	.byte	W08
	.byte		VOICE , 5
	.byte		N04   
	.byte	W04
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v072
	.byte	W04
	.byte	PEND
@ 017   ----------------------------------------
ch14_3_017:
	.byte		VOICE , 24
	.byte		N12   , Cn2 , v104
	.byte	W12
	.byte		VOICE , 5
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v072
	.byte	W04
	.byte		VOICE , 24
	.byte		N12   , Cn2 , v104
	.byte	W12
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 5
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte		VOICE , 24
	.byte		N12   
	.byte	W12
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 5
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte		VOICE , 24
	.byte		N12   
	.byte	W12
	.byte		N08   
	.byte	W08
	.byte		VOICE , 5
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte	PEND
@ 018   ----------------------------------------
ch14_3_018:
	.byte		VOICE , 24
	.byte		N12   , Cn2 , v104
	.byte	W12
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v072
	.byte	W04
	.byte		VOICE , 24
	.byte		N12   , Cn2 , v104
	.byte	W12
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 5
	.byte		N04   
	.byte	W04
	.byte		VOICE , 24
	.byte		N12   , Cn2 , v104
	.byte	W12
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v072
	.byte	W04
	.byte		VOICE , 24
	.byte		N08   , Cn2 , v104
	.byte	W08
	.byte		VOICE , 5
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 8
	.byte		N08   
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v072
	.byte	W04
	.byte	PEND
@ 019   ----------------------------------------
	.byte	PATT
	 .word	ch14_3_015
@ 020   ----------------------------------------
	.byte	PATT
	 .word	ch14_3_002
@ 021   ----------------------------------------
	.byte	PATT
	 .word	ch14_3_013
@ 022   ----------------------------------------
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 13
	.byte		N08   
	.byte	W08
	.byte		VOICE , 5
	.byte		N04   
	.byte	W04
	.byte		VOICE , 24
	.byte		N12   
	.byte	W12
	.byte		VOICE , 12
	.byte		N08   
	.byte	W08
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte		VOICE , 24
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 13
	.byte		N08   
	.byte	W08
	.byte		VOICE , 5
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte		VOICE , 24
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 12
	.byte		N08   
	.byte	W08
	.byte		N04   , Cn2 , v104
	.byte	W04
@ 023   ----------------------------------------
ch14_3_023:
	.byte		VOICE , 24
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 13
	.byte		N08   
	.byte	W08
	.byte		VOICE , 5
	.byte		N04   
	.byte	W04
	.byte		VOICE , 24
	.byte		N12   
	.byte	W12
	.byte		VOICE , 12
	.byte		N08   
	.byte	W08
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 13
	.byte		N08   
	.byte	W08
	.byte		VOICE , 5
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte		VOICE , 24
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 5
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte		VOICE , 24
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 12
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte	PEND
@ 024   ----------------------------------------
ch14_3_024:
	.byte		VOICE , 24
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 13
	.byte		N08   
	.byte	W08
	.byte		VOICE , 5
	.byte		N04   
	.byte	W04
	.byte		VOICE , 24
	.byte		N12   
	.byte	W12
	.byte		VOICE , 12
	.byte		N08   
	.byte	W08
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte		VOICE , 24
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 13
	.byte		N08   
	.byte	W08
	.byte		VOICE , 5
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte		VOICE , 24
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 12
	.byte		N08   
	.byte	W08
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte	PEND
@ 025   ----------------------------------------
	.byte	PATT
	 .word	ch14_3_023
@ 026   ----------------------------------------
	.byte	PATT
	 .word	ch14_3_024
@ 027   ----------------------------------------
	.byte		VOICE , 24
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 13
	.byte		N08   
	.byte	W08
	.byte		VOICE , 5
	.byte		N04   
	.byte	W04
	.byte		VOICE , 24
	.byte		N12   
	.byte	W12
	.byte		VOICE , 12
	.byte		N08   
	.byte	W08
	.byte		VOICE , 5
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte		VOICE , 24
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 13
	.byte		N08   
	.byte	W08
	.byte		VOICE , 5
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte		VOICE , 24
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 5
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte		VOICE , 24
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 5
	.byte		N04   
	.byte	W04
@ 028   ----------------------------------------
	.byte		VOICE , 24
	.byte		N12   , Cn2 , v104
	.byte	W12
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v072
	.byte	W04
	.byte		VOICE , 24
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 8
	.byte		N08   
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v072
	.byte	W04
	.byte		VOICE , 24
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 8
	.byte		N08   
	.byte	W08
	.byte		VOICE , 24
	.byte		N04   
	.byte	W04
	.byte		N12   
	.byte	W12
	.byte		VOICE , 8
	.byte		N08   
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v072
	.byte	W04
@ 029   ----------------------------------------
	.byte		VOICE , 24
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 8
	.byte		N08   
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v072
	.byte	W04
	.byte		VOICE , 24
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 8
	.byte		N08   
	.byte	W08
	.byte		VOICE , 24
	.byte		N04   
	.byte	W04
	.byte		N12   
	.byte	W12
	.byte		VOICE , 8
	.byte		N08   
	.byte	W08
	.byte		VOICE , 24
	.byte		N04   
	.byte	W04
	.byte		N08   
	.byte	W08
	.byte		VOICE , 5
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 24
	.byte		N04   
	.byte	W04
@ 030   ----------------------------------------
	.byte	PATT
	 .word	ch14_3_014
@ 031   ----------------------------------------
	.byte	PATT
	 .word	ch14_3_015
@ 032   ----------------------------------------
	.byte	PATT
	 .word	ch14_3_016
@ 033   ----------------------------------------
	.byte	PATT
	 .word	ch14_3_017
@ 034   ----------------------------------------
	.byte	PATT
	 .word	ch14_3_018
@ 035   ----------------------------------------
	.byte	PATT
	 .word	ch14_3_015
@ 036   ----------------------------------------
	.byte	PATT
	 .word	ch14_3_002
@ 037   ----------------------------------------
	.byte	PATT
	 .word	ch14_3_003
	.byte	GOTO
	 .word	ch14_3_B1
ch14_3_B2:
@ 038   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

ch14_4:
	.byte		VOL   , 127*ch14_mvl/mxv
	.byte	KEYSH , ch14_key+0
ch14_4_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
ch14_4_003:
	.byte	W80
	.byte		VOICE , 25
	.byte		N08   , Dn2 , v127
	.byte	W08
	.byte		        Ds2 
	.byte	W08
	.byte	PEND
@ 004   ----------------------------------------
	.byte		N12   , En2 
	.byte	W12
	.byte		N08   , Ds2 
	.byte	W08
	.byte		        En2 
	.byte	W08
	.byte		N28   , En2 , v064
	.byte	W28
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		        Dn2 
	.byte	W08
	.byte		        En2 
	.byte	W08
	.byte		        Gn2 
	.byte	W08
	.byte		        En2 
	.byte	W08
@ 005   ----------------------------------------
	.byte		N04   , Dn2 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		N08   , Dn2 
	.byte	W08
	.byte		N64   , Dn2 , v064
	.byte	W64
	.byte		N08   , Dn2 , v127
	.byte	W08
	.byte		        Ds2 
	.byte	W08
@ 006   ----------------------------------------
	.byte		        En2 
	.byte	W08
	.byte		N12   , En2 , v064
	.byte	W12
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		N08   , Gn2 
	.byte	W08
	.byte		N24   , Gn2 , v064
	.byte	W24
	.byte		N08   , As2 , v127
	.byte	W08
	.byte		        Bn2 
	.byte	W08
	.byte		        Gn2 
	.byte	W08
	.byte		        En2 
	.byte	W08
	.byte		        Ds2 
	.byte	W08
@ 007   ----------------------------------------
	.byte		        Dn2 
	.byte	W08
	.byte		N04   , En2 
	.byte	W04
	.byte		N08   , Dn2 
	.byte	W08
	.byte		        An1 
	.byte	W08
	.byte		N16   , An1 , v064
	.byte	W16
	.byte		N04   , Bn1 , v127
	.byte	W04
	.byte		N08   , Cn2 
	.byte	W08
	.byte		        Dn2 
	.byte	W08
	.byte		        Cn2 
	.byte	W08
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N08   , As1 
	.byte	W08
	.byte		N04   , As1 , v064
	.byte	W04
@ 008   ----------------------------------------
	.byte		N12   , Gn1 , v127
	.byte	W12
	.byte		TIE   , Gn1 , v064
	.byte	W84
@ 009   ----------------------------------------
	.byte	W80
	.byte		EOT   
	.byte		N08   , Dn2 , v127
	.byte	W08
	.byte		        Ds2 
	.byte	W08
@ 010   ----------------------------------------
	.byte		N12   , En2 
	.byte	W12
	.byte		N08   , Ds2 
	.byte	W08
	.byte		        En2 
	.byte	W08
	.byte		N20   , En2 , v064
	.byte	W20
	.byte		VOICE , 26
	.byte		N12   , Ds2 , v127
	.byte	W12
	.byte		VOICE , 25
	.byte		N08   , Fs2 
	.byte	W08
	.byte		VOICE , 26
	.byte		N08   , Ds2 
	.byte	W08
	.byte		N04   , Ds2 , v064
	.byte	W04
	.byte		VOICE , 27
	.byte		N08   , Gn2 , v127
	.byte	W08
	.byte		VOICE , 26
	.byte		N08   , Dn2 
	.byte	W08
@ 011   ----------------------------------------
	.byte		        Cs2 
	.byte	W08
	.byte		N12   , Cs2 , v064
	.byte	W12
	.byte		VOICE , 25
	.byte		N04   , Cs2 , v127
	.byte	W04
	.byte		N08   , Dn2 
	.byte	W08
	.byte		N48   , Dn2 , v064
	.byte	W48
	.byte		N08   , Dn2 , v127
	.byte	W08
	.byte		        Ds2 
	.byte	W08
@ 012   ----------------------------------------
	.byte		        En2 
	.byte	W08
	.byte		        En2 , v064
	.byte	W08
	.byte		N04   , Dn2 , v127
	.byte	W04
	.byte		        Ds2 
	.byte	W04
	.byte		N08   , En2 
	.byte	W08
	.byte		        Cn2 
	.byte	W08
	.byte		N16   , Cn2 , v064
	.byte	W16
	.byte		N08   , Gn2 , v127
	.byte	W08
	.byte		VOICE , 26
	.byte		N08   
	.byte	W08
	.byte		VOICE , 25
	.byte		N08   
	.byte	W08
	.byte		        En2 
	.byte	W08
	.byte		        Ds2 
	.byte	W08
@ 013   ----------------------------------------
	.byte		        Dn2 
	.byte	W08
	.byte		N16   , Dn2 , v064
	.byte	W16
	.byte		VOICE , 26
	.byte		N08   , Fn2 , v127
	.byte	W08
	.byte		N04   , Fn2 , v064
	.byte	W04
	.byte		N08   , En2 , v127
	.byte	W08
	.byte		N04   , En2 , v064
	.byte	W04
	.byte		VOICE , 27
	.byte		N08   , Ds2 , v127
	.byte	W08
	.byte		N04   , Ds2 , v064
	.byte	W04
	.byte		VOICE , 26
	.byte		N08   , Ds2 , v127
	.byte	W08
	.byte		N04   , Ds2 , v064
	.byte	W04
	.byte		N08   , Cs2 , v127
	.byte	W08
	.byte		N16   , Cs2 , v064
	.byte	W16
@ 014   ----------------------------------------
ch14_4_014:
	.byte		VOICE , 6
	.byte		N20   , Cn2 , v096
	.byte	W20
	.byte		VOICE , 7
	.byte		N04   , Gs1 , v104
	.byte	W04
	.byte		N24   , An1 
	.byte	W24
	.byte		N20   , Gn1 
	.byte	W20
	.byte		N04   , Cs2 
	.byte	W04
	.byte		N24   , Dn2 
	.byte	W24
	.byte	PEND
@ 015   ----------------------------------------
ch14_4_015:
	.byte		N24   , Cn2 , v104
	.byte	W24
	.byte		N12   , An1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte	PEND
@ 016   ----------------------------------------
ch14_4_016:
	.byte		N20   , Dn2 , v104
	.byte	W20
	.byte		N16   , En2 
	.byte	W16
	.byte		N24   , Gn2 , v088
	.byte	W24
	.byte		N16   , Gn2 , v052
	.byte	W16
	.byte		N04   , Gs2 , v080
	.byte	W04
	.byte		N16   , An2 
	.byte	W16
	.byte	PEND
@ 017   ----------------------------------------
ch14_4_017:
	.byte		N08   , Gn2 , v080
	.byte	W08
	.byte		N04   , Gn2 , v056
	.byte	W04
	.byte		N08   , En2 , v072
	.byte	W08
	.byte		N12   , Dn2 , v068
	.byte	W12
	.byte		MOD   , 42
	.byte		N40   , Cn2 , v072
	.byte	W40
	.byte		MOD   , 0
	.byte		N04   , Gn1 , v080
	.byte	W04
	.byte		VOICE , 0
	.byte	W04
	.byte		        7
	.byte		N12   , Cn2 , v088
	.byte	W12
	.byte		N04   , An1 , v072
	.byte	W04
	.byte	PEND
@ 018   ----------------------------------------
	.byte	PATT
	 .word	ch14_4_014
@ 019   ----------------------------------------
	.byte	PATT
	 .word	ch14_4_015
@ 020   ----------------------------------------
ch14_4_020:
	.byte		N12   , Cn2 , v104
	.byte	W12
	.byte		N08   , Cn2 , v056
	.byte	W08
	.byte		N16   , Gn1 , v104
	.byte	W16
	.byte		N12   , Gn1 , v056
	.byte	W12
	.byte		N20   , Gn1 , v044
	.byte	W20
	.byte		N16   , Gn1 , v040
	.byte	W28
	.byte	PEND
@ 021   ----------------------------------------
	.byte	PATT
	 .word	ch14_4_003
@ 022   ----------------------------------------
	.byte		N08   , En2 , v127
	.byte	W08
	.byte		N04   , En2 , v064
	.byte	W04
	.byte		N08   , Ds2 , v127
	.byte	W08
	.byte		        En2 
	.byte	W08
	.byte		N20   , En2 , v064
	.byte	W20
	.byte		VOICE , 26
	.byte		N08   , Ds2 , v127
	.byte	W08
	.byte		N04   , Ds2 , v064
	.byte	W04
	.byte		VOICE , 25
	.byte		N08   , Fs2 , v127
	.byte	W08
	.byte		VOICE , 26
	.byte		N08   , Ds2 
	.byte	W08
	.byte		N04   , Ds2 , v064
	.byte	W04
	.byte		VOICE , 27
	.byte		N08   , Gn2 , v127
	.byte	W08
	.byte		VOICE , 26
	.byte		N08   , Dn2 
	.byte	W08
@ 023   ----------------------------------------
	.byte		        Cs2 
	.byte	W08
	.byte		N12   , Cs2 , v064
	.byte	W12
	.byte		VOICE , 25
	.byte		N04   , Cs2 , v127
	.byte	W04
	.byte		N08   , Dn2 
	.byte	W08
	.byte		N76   , Dn2 , v064
	.byte	W64
@ 024   ----------------------------------------
	.byte	W12
	.byte		VOICE , 26
	.byte		N08   , Bn1 , v127
	.byte	W08
	.byte		VOICE , 25
	.byte		N08   , En2 
	.byte	W08
	.byte		N12   , En2 , v064
	.byte	W12
	.byte		VOICE , 27
	.byte		N08   , Ds2 , v127
	.byte	W08
	.byte		VOICE , 26
	.byte		N08   , Cs2 
	.byte	W08
	.byte		        Cn2 
	.byte	W08
	.byte		VOICE , 25
	.byte		N08   , Dn2 
	.byte	W08
	.byte		        Cn2 
	.byte	W08
	.byte		VOICE , 26
	.byte		N08   , Gs1 
	.byte	W08
	.byte		VOICE , 27
	.byte		N08   , Cn2 
	.byte	W08
@ 025   ----------------------------------------
	.byte		VOICE , 26
	.byte		N12   , As1 
	.byte	W12
	.byte		VOICE , 25
	.byte		N08   , An1 
	.byte	W08
	.byte		N12   , Gn1 
	.byte	W12
	.byte		N52   , Gn1 , v064
	.byte	W52
	.byte		VOICE , 26
	.byte		N12   , En2 , v127
	.byte	W12
@ 026   ----------------------------------------
	.byte		VOICE , 27
	.byte		N08   , Fn2 
	.byte	W08
	.byte		N04   , Fn2 , v064
	.byte	W04
	.byte		VOICE , 26
	.byte		N08   , Cs2 , v127
	.byte	W08
	.byte		N04   , Cs2 , v064
	.byte	W04
	.byte		N08   , Ds2 , v127
	.byte	W08
	.byte		        Fn2 
	.byte	W08
	.byte		        Gs2 
	.byte	W08
	.byte		N16   , Gs2 , v064
	.byte	W16
	.byte		VOICE , 27
	.byte		N08   , Gs2 , v127
	.byte	W08
	.byte		VOICE , 26
	.byte		N08   , Fn2 
	.byte	W08
	.byte		        Ds2 
	.byte	W08
	.byte		        Cs2 
	.byte	W08
@ 027   ----------------------------------------
	.byte		        Cn2 
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		VOICE , 25
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		        An1 
	.byte	W08
	.byte		N40   , An1 , v064
	.byte	W40
	.byte		N04   , An1 , v127
	.byte	W04
	.byte		VOICE , 26
	.byte		N08   , Cn2 
	.byte	W08
	.byte		        Cs2 
	.byte	W08
	.byte		VOICE , 27
	.byte		N08   , Ds2 
	.byte	W08
@ 028   ----------------------------------------
	.byte		N12   , Cn2 
	.byte	W12
	.byte		N80   , Cn2 , v064
	.byte	W80
	.byte		VOICE , 26
	.byte		N04   , Dn2 , v127
	.byte	W04
@ 029   ----------------------------------------
	.byte		VOICE , 27
	.byte		N08   , Ds2 
	.byte	W08
	.byte		VOICE , 26
	.byte		N04   , Dn2 , v064
	.byte	W04
	.byte		VOICE , 27
	.byte		N12   , Ds2 
	.byte	W12
	.byte		VOICE , 26
	.byte		N12   , Cs2 , v127
	.byte	W12
	.byte		        Cs2 , v064
	.byte	W12
	.byte		VOICE , 27
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		        Cn2 , v064
	.byte	W12
	.byte		VOICE , 26
	.byte		N12   , As1 , v127
	.byte	W12
	.byte		        As1 , v064
	.byte	W12
@ 030   ----------------------------------------
	.byte	PATT
	 .word	ch14_4_014
@ 031   ----------------------------------------
	.byte	PATT
	 .word	ch14_4_015
@ 032   ----------------------------------------
	.byte	PATT
	 .word	ch14_4_016
@ 033   ----------------------------------------
	.byte	PATT
	 .word	ch14_4_017
@ 034   ----------------------------------------
	.byte	PATT
	 .word	ch14_4_014
@ 035   ----------------------------------------
	.byte	PATT
	 .word	ch14_4_015
@ 036   ----------------------------------------
	.byte	PATT
	 .word	ch14_4_020
@ 037   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 .word	ch14_4_B1
ch14_4_B2:
@ 038   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

ch14:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	ch14_pri	@ Priority
	.byte	ch14_rev	@ Reverb.

	.word	ch14_grp

	.word	ch14_1
	.word	ch14_2
	.word	ch14_3
	.word	ch14_4

	.end
