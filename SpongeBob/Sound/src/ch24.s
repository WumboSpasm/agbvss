	.include "MPlayDef.s"

	.equ	ch24_grp, voicegroup000
	.equ	ch24_pri, 128
	.equ	ch24_rev, reverb_set+50
	.equ	ch24_mvl, 127
	.equ	ch24_key, 0
	.equ	ch24_tbs, 1
	.equ	ch24_exg, 0
	.equ	ch24_cmp, 1

	.section .rodata
	.global	ch24
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

ch24_1:
	.byte		VOL   , 127*ch24_mvl/mxv
	.byte	KEYSH , ch24_key+0
ch24_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 100*ch24_tbs/2
	.byte		VOICE , 16
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		N08   , Dn2 , v127
	.byte	W08
	.byte		N04   , Dn2 , v064
	.byte	W04
	.byte		N08   , Ds2 , v127
	.byte	W08
	.byte		N04   , Ds2 , v064
	.byte	W04
	.byte		N08   , Fn2 , v127
	.byte	W08
	.byte		N04   , Fn2 , v064
	.byte	W04
	.byte		N08   , Gs2 , v127
	.byte	W08
	.byte		N04   , Gs2 , v064
	.byte	W04
	.byte		N08   , Fn2 , v127
	.byte	W08
	.byte		N04   , Fn2 , v064
	.byte	W04
	.byte		N08   , Gn2 , v127
	.byte	W08
	.byte		N04   , Fn2 
	.byte	W04
	.byte		N08   , Ds2 
	.byte	W08
	.byte		N04   , Bn1 
	.byte	W04
@ 001   ----------------------------------------
ch24_1_001:
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		N08   , Dn2 , v127
	.byte	W08
	.byte		N04   , Dn2 , v064
	.byte	W04
	.byte		N08   , Ds2 , v127
	.byte	W08
	.byte		N04   , Ds2 , v064
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		N08   , Gs1 , v127
	.byte	W08
	.byte		N04   , Gs1 , v064
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		N08   , Bn1 , v127
	.byte	W08
	.byte		N04   , Bn1 , v064
	.byte	W04
	.byte		N08   , Dn2 , v127
	.byte	W08
	.byte		N04   , Dn2 , v064
	.byte	W04
	.byte	PEND
@ 002   ----------------------------------------
ch24_1_002:
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		N08   , Dn2 , v127
	.byte	W08
	.byte		N04   , Dn2 , v064
	.byte	W04
	.byte		N08   , Ds2 , v127
	.byte	W08
	.byte		N04   , Ds2 , v064
	.byte	W04
	.byte		N08   , Fn2 , v127
	.byte	W08
	.byte		N04   , Fn2 , v064
	.byte	W04
	.byte		N08   , Gs2 , v127
	.byte	W08
	.byte		N04   , Gs2 , v064
	.byte	W04
	.byte		N08   , Fn2 , v127
	.byte	W08
	.byte		N04   , Fn2 , v064
	.byte	W04
	.byte		N08   , Gn2 , v127
	.byte	W08
	.byte		N04   , Fn2 
	.byte	W04
	.byte		N08   , Ds2 
	.byte	W08
	.byte		N04   , Bn1 
	.byte	W04
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	ch24_1_001
@ 004   ----------------------------------------
ch24_1_004:
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		N08   , Dn2 , v127
	.byte	W08
	.byte		N04   , Dn2 , v064
	.byte	W04
	.byte		N08   , Ds2 , v127
	.byte	W08
	.byte		N04   , Ds2 , v064
	.byte	W04
	.byte		N08   , Fn2 , v127
	.byte	W08
	.byte		N04   , Fn2 , v064
	.byte	W04
	.byte		N08   , Gs2 , v127
	.byte	W08
	.byte		N04   , Gs2 , v064
	.byte	W04
	.byte		N08   , Fn2 , v127
	.byte	W08
	.byte		N04   , Fn2 , v064
	.byte	W04
	.byte		N08   , Gn2 , v127
	.byte	W08
	.byte		N04   , Fn2 
	.byte	W04
	.byte		N08   , Ds2 
	.byte	W08
	.byte		N04   , Gn2 
	.byte	W04
	.byte	PEND
@ 005   ----------------------------------------
ch24_1_005:
	.byte		N08   , Fn2 , v127
	.byte	W08
	.byte		N04   , Fn2 , v064
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		N08   , Gs1 , v127
	.byte	W08
	.byte		N04   , Gs1 , v064
	.byte	W04
	.byte		N08   , Gn1 , v127
	.byte	W08
	.byte		N04   , Gn1 , v064
	.byte	W04
	.byte		N08   , Fn1 , v127
	.byte	W08
	.byte		N04   , Fn1 , v064
	.byte	W04
	.byte		N08   , Gn1 , v127
	.byte	W08
	.byte		N04   , Gn1 , v064
	.byte	W04
	.byte		N08   , Gs1 , v127
	.byte	W08
	.byte		N04   , Gs1 , v064
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte	PEND
@ 006   ----------------------------------------
	.byte	PATT
	 .word	ch24_1_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	ch24_1_001
@ 008   ----------------------------------------
ch24_1_008:
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		N08   , Dn2 , v127
	.byte	W08
	.byte		N04   , Dn2 , v064
	.byte	W04
	.byte		N08   , Ds2 , v127
	.byte	W08
	.byte		N04   , Ds2 , v064
	.byte	W04
	.byte		N08   , Fn2 , v127
	.byte	W08
	.byte		N04   , Fn2 , v064
	.byte	W04
	.byte		N08   , Gn1 , v127
	.byte	W08
	.byte		N04   , Gn1 , v064
	.byte	W04
	.byte		N08   , Bn1 , v127
	.byte	W08
	.byte		N04   , Bn1 , v064
	.byte	W04
	.byte		N08   , Dn2 , v127
	.byte	W08
	.byte		N04   , Dn2 , v064
	.byte	W04
	.byte		N08   , Fn2 , v127
	.byte	W08
	.byte		N04   , Fn2 , v064
	.byte	W04
	.byte	PEND
@ 009   ----------------------------------------
ch24_1_009:
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   
	.byte	W04
	.byte		N08   , Dn2 
	.byte	W08
	.byte		N04   , Dn2 , v064
	.byte	W04
	.byte		N08   , Ds2 , v127
	.byte	W08
	.byte		N04   , Ds2 , v064
	.byte	W04
	.byte		N08   , Bn1 , v127
	.byte	W08
	.byte		N04   , Bn1 , v064
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		N08   , Gn1 , v127
	.byte	W08
	.byte		N04   , Gn1 , v064
	.byte	W04
	.byte		N08   , Ds1 , v127
	.byte	W08
	.byte		N04   , Ds1 , v064
	.byte	W04
	.byte		N08   , Cn1 , v127
	.byte	W08
	.byte		N04   , Cn1 , v064
	.byte	W04
	.byte	PEND
@ 010   ----------------------------------------
ch24_1_010:
	.byte		N08   , Fn1 , v127
	.byte	W08
	.byte		N04   , Fn1 , v064
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		N08   , Fn2 , v127
	.byte	W08
	.byte		N04   , Fn2 , v064
	.byte	W04
	.byte		N08   , Gn2 , v127
	.byte	W08
	.byte		N04   , Gn2 , v064
	.byte	W04
	.byte		N08   , Gs2 , v127
	.byte	W08
	.byte		N04   , Gs2 , v064
	.byte	W04
	.byte		N08   , En2 , v127
	.byte	W08
	.byte		N04   , En2 , v064
	.byte	W04
	.byte		N08   , Fn2 , v127
	.byte	W08
	.byte		N04   , Fn2 , v064
	.byte	W04
	.byte		N08   , Gn1 , v127
	.byte	W08
	.byte		N04   , Gn1 , v064
	.byte	W04
	.byte	PEND
@ 011   ----------------------------------------
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   
	.byte	W04
	.byte		N08   , Dn2 
	.byte	W08
	.byte		N04   , Dn2 , v064
	.byte	W04
	.byte		N08   , Ds2 , v127
	.byte	W08
	.byte		N04   , Ds2 , v064
	.byte	W04
	.byte		N08   , Fn2 , v127
	.byte	W08
	.byte		N04   , Fn2 , v064
	.byte	W04
	.byte		N08   , Gn2 , v127
	.byte	W08
	.byte		N04   , Gn2 , v064
	.byte	W04
	.byte		N08   , Ds2 , v127
	.byte	W08
	.byte		N04   , Ds2 , v064
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		N08   , Gn1 , v127
	.byte	W08
	.byte		N04   , Gn1 , v064
	.byte	W04
@ 012   ----------------------------------------
	.byte	PATT
	 .word	ch24_1_010
@ 013   ----------------------------------------
	.byte		N08   , Bn1 , v127
	.byte	W08
	.byte		N04   , Bn1 , v064
	.byte	W04
	.byte		N08   , Fs1 , v127
	.byte	W08
	.byte		N04   , Fs1 , v064
	.byte	W04
	.byte		N08   , Bn1 , v127
	.byte	W08
	.byte		N04   , Bn1 , v064
	.byte	W04
	.byte		N08   , Fs1 , v127
	.byte	W08
	.byte		N04   , Fs1 , v064
	.byte	W04
	.byte		N08   , Gn1 , v127
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N04   , Gn1 , v064
	.byte	W04
	.byte		N12   , Gn1 , v127
	.byte	W12
	.byte		N04   , Gn1 , v064
	.byte	W04
	.byte		N08   , Bn1 , v127
	.byte	W08
	.byte		N04   , Bn1 , v064
	.byte	W04
@ 014   ----------------------------------------
	.byte	PATT
	 .word	ch24_1_002
@ 015   ----------------------------------------
	.byte	PATT
	 .word	ch24_1_001
@ 016   ----------------------------------------
	.byte	PATT
	 .word	ch24_1_004
@ 017   ----------------------------------------
	.byte	PATT
	 .word	ch24_1_005
@ 018   ----------------------------------------
	.byte	PATT
	 .word	ch24_1_002
@ 019   ----------------------------------------
	.byte	PATT
	 .word	ch24_1_001
@ 020   ----------------------------------------
	.byte	PATT
	 .word	ch24_1_008
@ 021   ----------------------------------------
	.byte	PATT
	 .word	ch24_1_009
	.byte	GOTO
	 .word	ch24_1_B1
ch24_1_B2:
@ 022   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

ch24_2:
	.byte		VOL   , 127*ch24_mvl/mxv
	.byte	KEYSH , ch24_key+0
ch24_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 35
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   
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
	.byte		N04   
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
	.byte		N04   
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
	.byte		N04   
	.byte	W04
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v096
	.byte	W08
	.byte		VOICE , 35
	.byte		N04   , Cn2 , v104
	.byte	W04
@ 001   ----------------------------------------
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   
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
	.byte		N04   
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
	.byte		N04   
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
	.byte		N04   , Cn2 , v104
	.byte	W04
@ 002   ----------------------------------------
ch24_2_002:
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 37
	.byte		N04   
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
	.byte		N04   
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
	.byte		N04   
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
	.byte		N04   
	.byte	W04
	.byte		VOICE , 37
	.byte		N08   
	.byte	W08
	.byte		VOICE , 35
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte	PEND
@ 003   ----------------------------------------
ch24_2_003:
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 37
	.byte		N04   
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
	.byte		N04   
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
	.byte		N04   
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
	.byte		N04   
	.byte	W04
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v096
	.byte	W08
	.byte		VOICE , 35
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte	PEND
@ 004   ----------------------------------------
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 37
	.byte		N04   
	.byte	W04
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v096
	.byte	W08
	.byte		VOICE , 35
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v096
	.byte	W08
	.byte		VOICE , 35
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v096
	.byte	W08
	.byte		VOICE , 35
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 37
	.byte		N08   
	.byte	W08
	.byte		VOICE , 35
	.byte		N04   , Cn2 , v104
	.byte	W04
@ 005   ----------------------------------------
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 37
	.byte		N04   
	.byte	W04
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v096
	.byte	W08
	.byte		VOICE , 35
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v096
	.byte	W08
	.byte		VOICE , 35
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte		VOICE , 8
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte		VOICE , 35
	.byte		N08   , Cn2 , v104
	.byte	W08
	.byte		        Cn2 , v127
	.byte	W08
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte		VOICE , 37
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 38
	.byte		N04   
	.byte	W04
@ 006   ----------------------------------------
	.byte		VOICE , 35
	.byte		N08   
	.byte	W08
	.byte		VOICE , 37
	.byte		N04   
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
	.byte		N04   
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
	.byte		N04   
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
	.byte		N04   
	.byte	W04
	.byte		VOICE , 37
	.byte		N08   
	.byte	W08
	.byte		VOICE , 35
	.byte		N04   , Cn2 , v104
	.byte	W04
@ 007   ----------------------------------------
	.byte	PATT
	 .word	ch24_2_003
@ 008   ----------------------------------------
	.byte	PATT
	 .word	ch24_2_002
@ 009   ----------------------------------------
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 37
	.byte		N04   
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
	.byte		N04   
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
	.byte		N04   
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
	.byte		N04   , Cn2 , v112
	.byte	W04
	.byte		VOICE , 37
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 38
	.byte		N04   
	.byte	W04
@ 010   ----------------------------------------
	.byte		VOICE , 35
	.byte		N08   
	.byte	W08
	.byte		VOICE , 37
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 35
	.byte		N04   
	.byte	W04
	.byte		VOICE , 37
	.byte		N08   
	.byte	W08
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 35
	.byte		N04   
	.byte	W04
	.byte		VOICE , 38
	.byte		N08   , Cn2 , v104
	.byte	W08
	.byte		N04   , Cn2 , v127
	.byte	W04
@ 011   ----------------------------------------
	.byte		VOICE , 35
	.byte		N08   
	.byte	W08
	.byte		VOICE , 37
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte		VOICE , 8
	.byte		N08   
	.byte	W08
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 35
	.byte		N08   
	.byte	W08
	.byte		VOICE , 37
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte		VOICE , 38
	.byte		N08   , Cn2 , v104
	.byte	W08
	.byte		VOICE , 35
	.byte		N04   
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 37
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte		VOICE , 38
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 37
	.byte		N04   
	.byte	W04
	.byte		VOICE , 35
	.byte		N08   
	.byte	W08
	.byte		VOICE , 38
	.byte		N08   , Cn2 , v104
	.byte	W08
	.byte		N04   , Cn2 , v072
	.byte	W04
	.byte		        Cn2 , v127
	.byte	W04
@ 012   ----------------------------------------
	.byte		VOICE , 35
	.byte		N08   
	.byte	W08
	.byte		VOICE , 37
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte		VOICE , 38
	.byte		N08   , Cn2 , v104
	.byte	W08
	.byte		VOICE , 35
	.byte		N04   
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 38
	.byte		N04   
	.byte	W04
	.byte		VOICE , 37
	.byte		N08   
	.byte	W08
	.byte		N04   , Cn2 , v096
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
	.byte		VOICE , 37
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 38
	.byte		N04   
	.byte	W04
	.byte		VOICE , 37
	.byte		N08   
	.byte	W08
	.byte		VOICE , 38
	.byte		N04   
	.byte	W04
@ 013   ----------------------------------------
	.byte		VOICE , 35
	.byte		N08   
	.byte	W08
	.byte		VOICE , 37
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte		VOICE , 38
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 37
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte		VOICE , 38
	.byte		N08   , Cn2 , v104
	.byte	W08
	.byte		        Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v072
	.byte	W04
	.byte		        Cn2 , v104
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 35
	.byte		N12   
	.byte	W12
	.byte		N04   
	.byte	W04
	.byte		VOICE , 37
	.byte		N08   
	.byte	W08
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte		VOICE , 38
	.byte		N08   , Cn2 , v104
	.byte	W08
	.byte		N04   , Cn2 , v127
	.byte	W04
@ 014   ----------------------------------------
ch24_2_014:
	.byte		VOICE , 35
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 37
	.byte		N04   
	.byte	W04
	.byte		VOICE , 38
	.byte		N08   
	.byte	W08
	.byte		VOICE , 35
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 38
	.byte		N04   
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
	.byte		N04   
	.byte	W04
	.byte		VOICE , 38
	.byte		N08   
	.byte	W08
	.byte		VOICE , 35
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 38
	.byte		N04   
	.byte	W04
	.byte		VOICE , 37
	.byte		N08   
	.byte	W08
	.byte		VOICE , 35
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte	PEND
@ 015   ----------------------------------------
ch24_2_015:
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 37
	.byte		N04   
	.byte	W04
	.byte		VOICE , 38
	.byte		N08   
	.byte	W08
	.byte		VOICE , 35
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 38
	.byte		N04   
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
	.byte		VOICE , 35
	.byte		N08   
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   
	.byte	W04
	.byte		VOICE , 38
	.byte		N08   
	.byte	W08
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte	PEND
@ 016   ----------------------------------------
	.byte		VOICE , 35
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 37
	.byte		N04   
	.byte	W04
	.byte		VOICE , 38
	.byte		N08   
	.byte	W08
	.byte		VOICE , 35
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 38
	.byte		N04   
	.byte	W04
	.byte		VOICE , 8
	.byte		N08   , Cn2 , v096
	.byte	W08
	.byte		VOICE , 35
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N08   
	.byte	W08
	.byte		VOICE , 35
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 38
	.byte		N04   
	.byte	W04
	.byte		VOICE , 37
	.byte		N08   
	.byte	W08
	.byte		VOICE , 35
	.byte		N04   , Cn2 , v104
	.byte	W04
@ 017   ----------------------------------------
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 37
	.byte		N04   
	.byte	W04
	.byte		VOICE , 38
	.byte		N08   
	.byte	W08
	.byte		VOICE , 35
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 38
	.byte		N04   
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
	.byte		N08   
	.byte	W08
	.byte		VOICE , 35
	.byte		N08   , Cn2 , v104
	.byte	W08
	.byte		        Cn2 , v127
	.byte	W08
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte		VOICE , 37
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 38
	.byte		N08   
	.byte	W08
@ 018   ----------------------------------------
	.byte	PATT
	 .word	ch24_2_014
@ 019   ----------------------------------------
	.byte	PATT
	 .word	ch24_2_015
@ 020   ----------------------------------------
	.byte	PATT
	 .word	ch24_2_014
@ 021   ----------------------------------------
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 37
	.byte		N04   
	.byte	W04
	.byte		VOICE , 38
	.byte		N08   
	.byte	W08
	.byte		VOICE , 35
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 38
	.byte		N04   
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
	.byte		VOICE , 35
	.byte		N08   
	.byte	W08
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v112
	.byte	W04
	.byte		VOICE , 37
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 38
	.byte		N04   
	.byte	W04
	.byte	GOTO
	 .word	ch24_2_B1
ch24_2_B2:
@ 022   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

ch24_3:
	.byte		VOL   , 127*ch24_mvl/mxv
	.byte	KEYSH , ch24_key+0
ch24_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 45
	.byte		MOD   , 42
	.byte		N12   , Cn3 , v127
	.byte	W12
	.byte		MOD   , 0
	.byte		N08   , Cn3 , v064
	.byte	W08
	.byte		MOD   , 42
	.byte		N12   , Cn3 , v127
	.byte	W12
	.byte		MOD   , 0
	.byte		N12   , Cn3 , v080
	.byte	W12
	.byte		        Cn3 , v048
	.byte	W12
	.byte		MOD   , 42
	.byte		N12   , Cn3 , v127
	.byte	W12
	.byte		MOD   , 0
	.byte		N04   
	.byte	W04
	.byte		N08   , Bn2 
	.byte	W08
	.byte		N04   , Bn2 , v064
	.byte	W04
	.byte		MOD   , 42
	.byte		N12   , Bn2 , v127
	.byte	W12
@ 001   ----------------------------------------
	.byte		MOD   , 42
	.byte		N12   , Gn2 
	.byte	W12
	.byte		MOD   , 0
	.byte		N12   , Gn2 , v064
	.byte	W12
	.byte		N24   , Ds2 , v127
	.byte	W24
	.byte		N08   
	.byte	W08
	.byte		N04   , Fn2 
	.byte	W04
	.byte		N08   , Ds2 
	.byte	W08
	.byte		MOD   , 34
	.byte		N12   , Dn2 
	.byte	W12
	.byte		MOD   , 0
	.byte		N12   , Dn2 , v064
	.byte	W12
	.byte		N04   , Dn2 , v048
	.byte	W04
@ 002   ----------------------------------------
ch24_3_002:
	.byte		VOICE , 26
	.byte		N08   , Ds2 , v116
	.byte	W08
	.byte		N04   , Ds2 , v064
	.byte	W04
	.byte		VOICE , 25
	.byte		N08   , Fs2 , v127
	.byte	W08
	.byte		VOICE , 26
	.byte		N12   , Ds2 , v116
	.byte	W12
	.byte		        Ds2 , v064
	.byte	W12
	.byte		        Ds2 , v052
	.byte	W12
	.byte		N08   , Ds2 , v116
	.byte	W08
	.byte		N04   , Ds2 , v052
	.byte	W04
	.byte		VOICE , 25
	.byte		N04   , Fs2 , v127
	.byte	W04
	.byte		VOICE , 26
	.byte		N08   , Ds2 , v116
	.byte	W08
	.byte		VOICE , 25
	.byte		N04   , Fs2 , v127
	.byte	W04
	.byte		VOICE , 26
	.byte		N08   , Ds2 , v116
	.byte	W08
	.byte		N04   , Ds2 , v052
	.byte	W04
	.byte	PEND
@ 003   ----------------------------------------
ch24_3_003:
	.byte		N08   , Bn1 , v116
	.byte	W08
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N04   , Bn1 , v064
	.byte	W04
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N08   , Bn1 , v052
	.byte	W08
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N04   , Gs1 , v116
	.byte	W04
	.byte		N08   , Bn1 
	.byte	W08
	.byte		N04   , Cs2 
	.byte	W04
	.byte		N08   , Dn2 
	.byte	W08
	.byte		N04   , Cs2 
	.byte	W04
	.byte		N12   , Bn1 
	.byte	W12
	.byte	PEND
@ 004   ----------------------------------------
ch24_3_004:
	.byte		VOICE , 27
	.byte		N08   , As1 , v127
	.byte	W08
	.byte		VOICE , 26
	.byte		N04   , As1 , v064
	.byte	W04
	.byte		N08   , Gs1 , v116
	.byte	W08
	.byte		VOICE , 25
	.byte		N12   , Gn1 , v127
	.byte	W12
	.byte		        Gn1 , v064
	.byte	W12
	.byte		        Gn1 , v048
	.byte	W12
	.byte		N04   , Gn1 , v127
	.byte	W04
	.byte		VOICE , 26
	.byte		N08   , Gs1 , v116
	.byte	W08
	.byte		N04   , Gs1 , v064
	.byte	W04
	.byte		N08   , As1 , v116
	.byte	W08
	.byte		VOICE , 25
	.byte		N04   , Ds2 , v127
	.byte	W04
	.byte		VOICE , 26
	.byte		N08   , Cs2 , v116
	.byte	W08
	.byte		VOICE , 25
	.byte		N04   , Ds2 , v127
	.byte	W04
	.byte	PEND
@ 005   ----------------------------------------
ch24_3_005:
	.byte		VOICE , 26
	.byte		N08   , Ds2 , v116
	.byte	W08
	.byte		N04   , Ds2 , v064
	.byte	W04
	.byte		N08   , Cs2 , v116
	.byte	W08
	.byte		VOICE , 25
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		        Cn2 , v064
	.byte	W12
	.byte		        Cn2 , v052
	.byte	W12
	.byte		        Cn2 , v048
	.byte	W12
	.byte		        Cn2 , v040
	.byte	W12
	.byte		N04   
	.byte	W04
	.byte		VOICE , 27
	.byte		N08   , Fs2 , v127
	.byte	W08
	.byte		VOICE , 26
	.byte		N04   , En2 , v116
	.byte	W04
	.byte	PEND
@ 006   ----------------------------------------
ch24_3_006:
	.byte		N08   , Ds2 , v116
	.byte	W08
	.byte		N04   , Ds2 , v064
	.byte	W04
	.byte		VOICE , 25
	.byte		N08   , Fs2 , v127
	.byte	W08
	.byte		VOICE , 26
	.byte		N12   , Ds2 , v116
	.byte	W12
	.byte		        Ds2 , v064
	.byte	W12
	.byte		        Ds2 , v052
	.byte	W12
	.byte		N08   , Ds2 , v116
	.byte	W08
	.byte		N04   , Ds2 , v052
	.byte	W04
	.byte		VOICE , 25
	.byte		N04   , Fs2 , v127
	.byte	W04
	.byte		VOICE , 26
	.byte		N08   , Ds2 , v116
	.byte	W08
	.byte		VOICE , 25
	.byte		N04   , Fs2 , v127
	.byte	W04
	.byte		VOICE , 26
	.byte		N08   , Ds2 , v116
	.byte	W08
	.byte		N04   , Ds2 , v052
	.byte	W04
	.byte	PEND
@ 007   ----------------------------------------
	.byte	PATT
	 .word	ch24_3_003
@ 008   ----------------------------------------
ch24_3_008:
	.byte		VOICE , 27
	.byte		N08   , As1 , v127
	.byte	W08
	.byte		VOICE , 26
	.byte		N04   , As1 , v064
	.byte	W04
	.byte		N08   , Gs1 , v116
	.byte	W08
	.byte		VOICE , 25
	.byte		N12   , Gn1 , v127
	.byte	W12
	.byte		        Gn1 , v064
	.byte	W12
	.byte		N04   , Gn1 , v048
	.byte	W04
	.byte		VOICE , 26
	.byte		N08   , Gs1 , v116
	.byte	W08
	.byte		N04   , Gs1 , v064
	.byte	W04
	.byte		N08   , Gn1 , v116
	.byte	W08
	.byte		VOICE , 25
	.byte		N12   , Fn1 , v127
	.byte	W12
	.byte		N04   , Fn1 , v064
	.byte	W04
	.byte		VOICE , 26
	.byte		N08   , Gn1 , v116
	.byte	W08
	.byte		N04   , Gn1 , v064
	.byte	W04
	.byte	PEND
@ 009   ----------------------------------------
	.byte		VOICE , 27
	.byte		N08   , Gs1 , v127
	.byte	W08
	.byte		VOICE , 26
	.byte		N12   , Gs1 , v116
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Gs1 , v064
	.byte	W12
	.byte		N04   , Gs1 , v052
	.byte	W04
	.byte		VOICE , 45
	.byte		N12   , Gn1 , v064
	.byte	W12
	.byte		N08   , Bn1 , v080
	.byte	W08
	.byte		N12   , Cn2 , v096
	.byte	W12
	.byte		N04   , Dn2 , v104
	.byte	W04
	.byte		N08   , Ds2 , v112
	.byte	W08
	.byte		N04   , Fn2 , v116
	.byte	W04
@ 010   ----------------------------------------
	.byte		MOD   , 42
	.byte		N20   , Gn2 , v127
	.byte	W20
	.byte		MOD   , 0
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        Fn2 , v080
	.byte	W12
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		MOD   , 42
	.byte		N20   , Gn2 
	.byte	W20
	.byte		MOD   , 0
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        Fn2 , v080
	.byte	W12
	.byte		N04   , Dn2 , v127
	.byte	W04
@ 011   ----------------------------------------
	.byte		N20   , Ds2 
	.byte	W20
	.byte		MOD   , 42
	.byte		N16   , Dn2 
	.byte	W16
	.byte		MOD   , 0
	.byte		N08   , Dn2 , v072
	.byte	W08
	.byte		N04   , Gn1 , v127
	.byte	W04
	.byte		MOD   , 42
	.byte		N20   , Ds2 
	.byte	W20
	.byte		MOD   , 0
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N04   , Cn2 
	.byte	W04
	.byte		N08   , Dn2 
	.byte	W08
	.byte		N04   , Ds2 
	.byte	W04
@ 012   ----------------------------------------
	.byte		N08   , Cn2 
	.byte	W08
	.byte		N04   , As1 
	.byte	W04
	.byte		N08   , Gs1 
	.byte	W08
	.byte		N04   , Gn1 
	.byte	W04
	.byte		N08   , Gs1 
	.byte	W08
	.byte		N04   , Gn1 
	.byte	W04
	.byte		N08   , Gs1 
	.byte	W08
	.byte		N04   , Cn2 
	.byte	W04
	.byte		N08   , Gs2 
	.byte	W08
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N04   , Cn2 
	.byte	W04
	.byte		N08   , Ds2 
	.byte	W08
	.byte		N04   , Dn2 
	.byte	W04
	.byte		N08   , Ds2 
	.byte	W08
	.byte		N04   , Fn2 
	.byte	W04
@ 013   ----------------------------------------
	.byte		MOD   , 42
	.byte		N12   , Fs2 
	.byte	W12
	.byte		MOD   , 42
	.byte		N12   , Fs2 , v096
	.byte	W12
	.byte		MOD   , 42
	.byte		N16   , Fs2 , v064
	.byte	W16
	.byte		MOD   , 0
	.byte		N04   , Fn2 , v127
	.byte	W04
	.byte		        Fs2 
	.byte	W04
	.byte		N20   , Gn2 
	.byte	W20
	.byte		N28   
	.byte	W28
@ 014   ----------------------------------------
	.byte	PATT
	 .word	ch24_3_002
@ 015   ----------------------------------------
	.byte	PATT
	 .word	ch24_3_003
@ 016   ----------------------------------------
	.byte	PATT
	 .word	ch24_3_004
@ 017   ----------------------------------------
	.byte	PATT
	 .word	ch24_3_005
@ 018   ----------------------------------------
	.byte	PATT
	 .word	ch24_3_006
@ 019   ----------------------------------------
	.byte	PATT
	 .word	ch24_3_003
@ 020   ----------------------------------------
	.byte	PATT
	 .word	ch24_3_008
@ 021   ----------------------------------------
	.byte		VOICE , 27
	.byte		N08   , Gs1 , v127
	.byte	W08
	.byte		VOICE , 26
	.byte		N12   , Gs1 , v116
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Gs1 , v064
	.byte	W12
	.byte		        Gs1 , v052
	.byte	W12
	.byte		        Gs1 , v048
	.byte	W12
	.byte		N16   , Gs1 , v040
	.byte	W16
	.byte		VOICE , 45
	.byte		N12   , Fs2 , v127
	.byte	W12
	.byte	GOTO
	 .word	ch24_3_B1
ch24_3_B2:
@ 022   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

ch24_4:
	.byte		VOL   , 127*ch24_mvl/mxv
	.byte	KEYSH , ch24_key+0
ch24_4_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 45
	.byte		MOD   , 42
	.byte		N12   , Gn2 , v127
	.byte	W12
	.byte		MOD   , 0
	.byte		N08   , Gn2 , v064
	.byte	W08
	.byte		MOD   , 42
	.byte		N12   , Gn2 , v127
	.byte	W12
	.byte		MOD   , 0
	.byte		N12   , Gn2 , v080
	.byte	W12
	.byte		        Gn2 , v048
	.byte	W12
	.byte		MOD   , 42
	.byte		N12   , Gn2 , v127
	.byte	W12
	.byte		MOD   , 0
	.byte		N04   
	.byte	W04
	.byte		N12   , Fs2 
	.byte	W12
	.byte		MOD   , 42
	.byte		N12   
	.byte	W12
@ 001   ----------------------------------------
	.byte		MOD   , 42
	.byte		N12   , Ds2 
	.byte	W12
	.byte		MOD   , 0
	.byte		N12   , Ds2 , v064
	.byte	W12
	.byte		N44   , Cn2 , v127
	.byte	W44
	.byte		N12   , Bn1 
	.byte	W12
	.byte		VOICE , 26
	.byte		N04   , Gs1 , v116
	.byte	W04
	.byte		VOICE , 25
	.byte		N04   , Ds2 , v127
	.byte	W04
	.byte		VOICE , 26
	.byte		N04   , Cs2 , v116
	.byte	W04
	.byte		VOICE , 25
	.byte		N04   , Fs2 , v127
	.byte	W04
@ 002   ----------------------------------------
ch24_4_002:
	.byte		VOICE , 37
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N04   
	.byte	W04
	.byte		VOICE , 37
	.byte		N08   
	.byte	W08
	.byte		N04   
	.byte	W04
	.byte		VOICE , 40
	.byte		N08   
	.byte	W08
	.byte		VOICE , 37
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte		VOICE , 40
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 37
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N04   , Bn1 
	.byte	W04
	.byte		VOICE , 37
	.byte		N08   , Cn2 
	.byte	W08
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte		VOICE , 40
	.byte		N08   , Bn1 , v127
	.byte	W08
	.byte		VOICE , 37
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte	PEND
@ 003   ----------------------------------------
ch24_4_003:
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N04   
	.byte	W04
	.byte		VOICE , 37
	.byte		N08   
	.byte	W08
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte		VOICE , 40
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 37
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte		VOICE , 40
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 37
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N12   , Bn1 
	.byte	W12
	.byte		VOICE , 37
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte	PEND
@ 004   ----------------------------------------
ch24_4_004:
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N04   
	.byte	W04
	.byte		VOICE , 37
	.byte		N08   
	.byte	W08
	.byte		N04   
	.byte	W04
	.byte		VOICE , 40
	.byte		N08   
	.byte	W08
	.byte		VOICE , 37
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte		VOICE , 40
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 37
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N04   , Bn1 
	.byte	W04
	.byte		VOICE , 37
	.byte		N08   , Cn2 
	.byte	W08
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte		VOICE , 40
	.byte		N08   , Bn1 , v127
	.byte	W08
	.byte		VOICE , 37
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte	PEND
@ 005   ----------------------------------------
ch24_4_005:
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N04   , Fn2 
	.byte	W04
	.byte		VOICE , 37
	.byte		N08   , Cn2 
	.byte	W08
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte		VOICE , 40
	.byte		N08   , Fn2 , v127
	.byte	W08
	.byte		VOICE , 37
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte		VOICE , 40
	.byte		N08   , Fn2 , v127
	.byte	W08
	.byte		VOICE , 37
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N12   , Fn2 
	.byte	W12
	.byte		VOICE , 37
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte		VOICE , 39
	.byte		N08   , En2 , v127
	.byte	W08
	.byte		VOICE , 37
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte	PEND
@ 006   ----------------------------------------
	.byte	PATT
	 .word	ch24_4_004
@ 007   ----------------------------------------
	.byte	PATT
	 .word	ch24_4_003
@ 008   ----------------------------------------
ch24_4_008:
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N04   
	.byte	W04
	.byte		VOICE , 37
	.byte		N08   
	.byte	W08
	.byte		N04   
	.byte	W04
	.byte		VOICE , 40
	.byte		N08   
	.byte	W08
	.byte		VOICE , 37
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte		VOICE , 40
	.byte		N08   , Bn1 , v127
	.byte	W08
	.byte		VOICE , 37
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N04   , Bn1 
	.byte	W04
	.byte		VOICE , 37
	.byte		N08   , Cn2 
	.byte	W08
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte		VOICE , 40
	.byte		N08   , Bn1 , v127
	.byte	W08
	.byte		VOICE , 37
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte	PEND
@ 009   ----------------------------------------
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N04   
	.byte	W04
	.byte		VOICE , 37
	.byte		N08   
	.byte	W08
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte		VOICE , 40
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 37
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte		VOICE , 40
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 37
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N12   
	.byte	W12
	.byte		VOICE , 37
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte		VOICE , 40
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 37
	.byte		N04   , Cn2 , v096
	.byte	W04
@ 010   ----------------------------------------
ch24_4_010:
	.byte		VOICE , 40
	.byte		N20   , Cn2 , v127
	.byte	W20
	.byte		N04   , Dn2 
	.byte	W04
	.byte		N08   , Cn2 
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N04   , Cn2 , v064
	.byte	W04
	.byte		N16   , Cn2 , v127
	.byte	W16
	.byte		N12   , Dn2 
	.byte	W12
	.byte		VOICE , 39
	.byte		N12   , Ds2 
	.byte	W12
	.byte		VOICE , 40
	.byte		N12   , Fn2 
	.byte	W12
	.byte	PEND
@ 011   ----------------------------------------
	.byte		VOICE , 39
	.byte		N24   , Ds2 
	.byte	W24
	.byte		VOICE , 40
	.byte		N24   , Dn2 
	.byte	W24
	.byte		        Cn2 
	.byte	W24
	.byte		VOICE , 39
	.byte		N20   , As1 
	.byte	W20
	.byte		VOICE , 0
	.byte	W04
@ 012   ----------------------------------------
	.byte	PATT
	 .word	ch24_4_010
@ 013   ----------------------------------------
	.byte		N24   , Ds2 , v127
	.byte	W24
	.byte		VOICE , 39
	.byte		N24   , Bn1 
	.byte	W24
	.byte		N20   , Gn1 
	.byte	W20
	.byte		VOICE , 40
	.byte		N24   , Bn1 
	.byte	W24
	.byte		VOICE , 0
	.byte	W04
@ 014   ----------------------------------------
	.byte	PATT
	 .word	ch24_4_002
@ 015   ----------------------------------------
	.byte	PATT
	 .word	ch24_4_003
@ 016   ----------------------------------------
	.byte	PATT
	 .word	ch24_4_004
@ 017   ----------------------------------------
	.byte	PATT
	 .word	ch24_4_005
@ 018   ----------------------------------------
	.byte	PATT
	 .word	ch24_4_004
@ 019   ----------------------------------------
	.byte	PATT
	 .word	ch24_4_003
@ 020   ----------------------------------------
	.byte	PATT
	 .word	ch24_4_008
@ 021   ----------------------------------------
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N04   
	.byte	W04
	.byte		VOICE , 37
	.byte		N08   
	.byte	W08
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte		VOICE , 40
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 37
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte		VOICE , 40
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 37
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 40
	.byte		N12   
	.byte	W12
	.byte		VOICE , 37
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte		VOICE , 45
	.byte		N12   , Bn2 , v127
	.byte	W12
	.byte	GOTO
	 .word	ch24_4_B1
ch24_4_B2:
@ 022   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

ch24:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	ch24_pri	@ Priority
	.byte	ch24_rev	@ Reverb.

	.word	ch24_grp

	.word	ch24_1
	.word	ch24_2
	.word	ch24_3
	.word	ch24_4

	.end
