	.include "MPlayDef.s"

	.equ	ch213_grp, voicegroup000
	.equ	ch213_pri, 128
	.equ	ch213_rev, reverb_set+50
	.equ	ch213_mvl, 127
	.equ	ch213_key, 0
	.equ	ch213_tbs, 1
	.equ	ch213_exg, 0
	.equ	ch213_cmp, 1

	.section .rodata
	.global	ch213
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

ch213_1:
	.byte		VOL   , 127*ch213_mvl/mxv
	.byte	KEYSH , ch213_key+0
ch213_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 100*ch213_tbs/2
	.byte		VOICE , 28
	.byte		N08   , En2 , v104
	.byte	W08
	.byte		N04   , En2 , v064
	.byte	W04
	.byte		VOICE , 32
	.byte		N08   , En2 , v127
	.byte	W08
	.byte		VOICE , 29
	.byte		N04   
	.byte	W04
	.byte		VOICE , 28
	.byte		N08   , En2 , v104
	.byte	W08
	.byte		VOICE , 32
	.byte		N04   , En2 , v064
	.byte	W04
	.byte		VOICE , 28
	.byte		N08   , En2 , v104
	.byte	W08
	.byte		N04   , En2 , v064
	.byte	W04
	.byte		N08   , En2 , v104
	.byte	W08
	.byte		N04   , En2 , v064
	.byte	W04
	.byte		VOICE , 32
	.byte		N08   , En2 , v127
	.byte	W08
	.byte		VOICE , 33
	.byte		N04   
	.byte	W04
	.byte		VOICE , 28
	.byte		N08   , En2 , v104
	.byte	W08
	.byte		VOICE , 32
	.byte		N04   , En2 , v064
	.byte	W04
	.byte		VOICE , 30
	.byte		N08   , En2 , v127
	.byte	W08
	.byte		N04   , En2 , v064
	.byte	W04
@ 001   ----------------------------------------
ch213_1_001:
	.byte		VOICE , 34
	.byte		N08   , Bn1 , v127
	.byte	W08
	.byte		N04   , Bn1 , v064
	.byte	W04
	.byte		VOICE , 31
	.byte		N08   , En2 , v127
	.byte	W08
	.byte		VOICE , 30
	.byte		N04   , Bn1 
	.byte	W04
	.byte		VOICE , 34
	.byte		N08   
	.byte	W08
	.byte		N04   , Bn1 , v064
	.byte	W04
	.byte		N08   , Bn1 , v127
	.byte	W08
	.byte		VOICE , 32
	.byte		N04   , Bn1 , v064
	.byte	W04
	.byte		VOICE , 34
	.byte		N08   , Bn1 , v127
	.byte	W08
	.byte		N04   , Bn1 , v064
	.byte	W04
	.byte		VOICE , 30
	.byte		N08   , Bn1 , v127
	.byte	W08
	.byte		N04   , Bn1 , v064
	.byte	W04
	.byte		VOICE , 28
	.byte		N08   , Bn1 , v104
	.byte	W08
	.byte		N04   , Bn1 , v064
	.byte	W04
	.byte		VOICE , 30
	.byte		N08   , Bn1 , v127
	.byte	W08
	.byte		N04   , Bn1 , v064
	.byte	W04
	.byte	PEND
@ 002   ----------------------------------------
	.byte	PATT
	 .word	ch213_1_001
@ 003   ----------------------------------------
ch213_1_003:
	.byte		VOICE , 28
	.byte		N08   , En2 , v104
	.byte	W08
	.byte		N04   , En2 , v064
	.byte	W04
	.byte		VOICE , 32
	.byte		N08   , En2 , v127
	.byte	W08
	.byte		VOICE , 29
	.byte		N04   
	.byte	W04
	.byte		VOICE , 28
	.byte		N08   , En2 , v104
	.byte	W08
	.byte		VOICE , 32
	.byte		N04   , En2 , v064
	.byte	W04
	.byte		VOICE , 28
	.byte		N08   , En2 , v104
	.byte	W08
	.byte		N04   , En2 , v064
	.byte	W04
	.byte		N08   , En2 , v104
	.byte	W08
	.byte		N04   , En2 , v064
	.byte	W04
	.byte		VOICE , 32
	.byte		N08   , En2 , v127
	.byte	W08
	.byte		VOICE , 33
	.byte		N04   
	.byte	W04
	.byte		VOICE , 28
	.byte		N08   , En2 , v104
	.byte	W08
	.byte		VOICE , 32
	.byte		N04   , En2 , v064
	.byte	W04
	.byte		VOICE , 28
	.byte		N08   , Ds2 , v104
	.byte	W08
	.byte		N04   , Ds2 , v064
	.byte	W04
	.byte	PEND
@ 004   ----------------------------------------
ch213_1_004:
	.byte		N08   , En2 , v104
	.byte	W08
	.byte		N04   , En2 , v064
	.byte	W04
	.byte		VOICE , 32
	.byte		N08   , En2 , v127
	.byte	W08
	.byte		VOICE , 29
	.byte		N04   
	.byte	W04
	.byte		VOICE , 28
	.byte		N08   , En2 , v104
	.byte	W08
	.byte		VOICE , 32
	.byte		N04   , En2 , v064
	.byte	W04
	.byte		VOICE , 28
	.byte		N08   , En2 , v104
	.byte	W08
	.byte		N04   , En2 , v064
	.byte	W04
	.byte		N08   , En2 , v104
	.byte	W08
	.byte		N04   , En2 , v064
	.byte	W04
	.byte		VOICE , 32
	.byte		N08   , En2 , v127
	.byte	W08
	.byte		VOICE , 33
	.byte		N04   
	.byte	W04
	.byte		VOICE , 28
	.byte		N08   , En2 , v104
	.byte	W08
	.byte		VOICE , 32
	.byte		N04   , En2 , v064
	.byte	W04
	.byte		VOICE , 30
	.byte		N08   , En2 , v127
	.byte	W08
	.byte		N04   , En2 , v064
	.byte	W04
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	ch213_1_001
@ 006   ----------------------------------------
	.byte		VOICE , 34
	.byte		N08   , Fs2 , v127
	.byte	W08
	.byte		VOICE , 32
	.byte		N04   , Fs1 
	.byte	W04
	.byte		VOICE , 34
	.byte		N08   , Fn2 
	.byte	W08
	.byte		        Fs2 
	.byte	W08
	.byte		N04   , Fs2 , v048
	.byte	W04
	.byte		VOICE , 32
	.byte		N04   , Fs1 , v127
	.byte	W04
	.byte		VOICE , 30
	.byte		N08   , Fs2 
	.byte	W08
	.byte		N04   , Fs2 , v048
	.byte	W04
	.byte		VOICE , 34
	.byte		N08   , Fs2 , v127
	.byte	W08
	.byte		VOICE , 32
	.byte		N04   , Fs1 
	.byte	W04
	.byte		VOICE , 33
	.byte		N08   , Fs2 
	.byte	W08
	.byte		VOICE , 34
	.byte		N08   
	.byte	W08
	.byte		N04   , Fs2 , v048
	.byte	W04
	.byte		VOICE , 32
	.byte		N04   , Fs1 , v127
	.byte	W04
	.byte		VOICE , 29
	.byte		N08   , As1 
	.byte	W08
	.byte		N04   , As1 , v048
	.byte	W04
@ 007   ----------------------------------------
	.byte		VOICE , 28
	.byte		N08   , Bn1 , v104
	.byte	W08
	.byte		VOICE , 32
	.byte		N04   , Bn1 , v127
	.byte	W04
	.byte		VOICE , 31
	.byte		N08   
	.byte	W08
	.byte		VOICE , 32
	.byte		N04   
	.byte	W04
	.byte		VOICE , 30
	.byte		N08   
	.byte	W08
	.byte		VOICE , 31
	.byte		N04   
	.byte	W04
	.byte		VOICE , 30
	.byte		N08   
	.byte	W08
	.byte		VOICE , 31
	.byte		N04   
	.byte	W04
	.byte		VOICE , 28
	.byte		N08   , Bn1 , v104
	.byte	W08
	.byte		VOICE , 32
	.byte		N04   , Bn1 , v127
	.byte	W04
	.byte		VOICE , 31
	.byte		N08   
	.byte	W08
	.byte		VOICE , 32
	.byte		N04   
	.byte	W04
	.byte		VOICE , 28
	.byte		N08   , Bn1 , v104
	.byte	W08
	.byte		VOICE , 31
	.byte		N04   , Bn1 , v127
	.byte	W04
	.byte		VOICE , 34
	.byte		N08   
	.byte	W08
	.byte		VOICE , 31
	.byte		N04   
	.byte	W04
@ 008   ----------------------------------------
ch213_1_008:
	.byte		VOICE , 28
	.byte		N08   , En2 , v104
	.byte	W08
	.byte		N04   , En2 , v064
	.byte	W04
	.byte		VOICE , 32
	.byte		N08   , En2 , v127
	.byte	W08
	.byte		VOICE , 29
	.byte		N04   
	.byte	W04
	.byte		VOICE , 28
	.byte		N08   , En2 , v104
	.byte	W08
	.byte		VOICE , 32
	.byte		N04   , En2 , v064
	.byte	W04
	.byte		VOICE , 28
	.byte		N08   , En2 , v104
	.byte	W08
	.byte		N04   , En2 , v064
	.byte	W04
	.byte		N08   , En2 , v104
	.byte	W08
	.byte		N04   , En2 , v064
	.byte	W04
	.byte		VOICE , 32
	.byte		N08   , En2 , v127
	.byte	W08
	.byte		VOICE , 33
	.byte		N04   
	.byte	W04
	.byte		VOICE , 28
	.byte		N08   , En2 , v104
	.byte	W08
	.byte		VOICE , 32
	.byte		N04   , En2 , v064
	.byte	W04
	.byte		VOICE , 30
	.byte		N08   , En2 , v127
	.byte	W08
	.byte		N04   , En2 , v064
	.byte	W04
	.byte	PEND
@ 009   ----------------------------------------
	.byte	PATT
	 .word	ch213_1_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	ch213_1_001
@ 011   ----------------------------------------
	.byte	PATT
	 .word	ch213_1_003
@ 012   ----------------------------------------
	.byte	PATT
	 .word	ch213_1_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	ch213_1_001
@ 014   ----------------------------------------
	.byte		VOICE , 34
	.byte		N08   , Fs2 , v127
	.byte	W08
	.byte		VOICE , 32
	.byte		N04   , Fs1 
	.byte	W04
	.byte		VOICE , 34
	.byte		N08   , Fn2 
	.byte	W08
	.byte		        Fs2 
	.byte	W08
	.byte		N04   , Fs2 , v048
	.byte	W04
	.byte		VOICE , 32
	.byte		N04   , Fs1 , v127
	.byte	W04
	.byte		VOICE , 30
	.byte		N08   , Fs2 
	.byte	W08
	.byte		N04   , Fs2 , v048
	.byte	W04
	.byte		N08   , En2 , v127
	.byte	W08
	.byte		VOICE , 32
	.byte		N04   , En1 
	.byte	W04
	.byte		VOICE , 34
	.byte		N08   , En2 
	.byte	W08
	.byte		VOICE , 28
	.byte		N08   , En2 , v104
	.byte	W08
	.byte		VOICE , 34
	.byte		N04   , En2 , v048
	.byte	W04
	.byte		VOICE , 32
	.byte		N04   , En1 , v127
	.byte	W04
	.byte		VOICE , 30
	.byte		N08   , En2 
	.byte	W08
	.byte		N04   , En2 , v048
	.byte	W04
@ 015   ----------------------------------------
	.byte		VOICE , 28
	.byte		N08   , Bn1 , v104
	.byte	W08
	.byte		VOICE , 32
	.byte		N04   , Bn1 , v127
	.byte	W04
	.byte		VOICE , 31
	.byte		N08   
	.byte	W08
	.byte		VOICE , 32
	.byte		N04   
	.byte	W04
	.byte		VOICE , 30
	.byte		N08   
	.byte	W08
	.byte		VOICE , 31
	.byte		N04   
	.byte	W04
	.byte		VOICE , 30
	.byte		N08   
	.byte	W08
	.byte		VOICE , 31
	.byte		N04   
	.byte	W04
	.byte		VOICE , 28
	.byte		N08   , Bn1 , v104
	.byte	W08
	.byte		VOICE , 32
	.byte		N04   , Bn1 , v127
	.byte	W04
	.byte		VOICE , 31
	.byte		N08   
	.byte	W08
	.byte		VOICE , 32
	.byte		N04   
	.byte	W04
	.byte		VOICE , 28
	.byte		N08   , Bn1 , v104
	.byte	W08
	.byte		VOICE , 31
	.byte		N04   , Bn1 , v127
	.byte	W04
	.byte		VOICE , 29
	.byte		N08   
	.byte	W08
	.byte		VOICE , 31
	.byte		N04   
	.byte	W04
@ 016   ----------------------------------------
ch213_1_016:
	.byte		VOICE , 28
	.byte		N08   , An1 , v104
	.byte	W08
	.byte		N04   , An1 , v064
	.byte	W04
	.byte		VOICE , 32
	.byte		N08   , An1 , v127
	.byte	W08
	.byte		VOICE , 29
	.byte		N04   
	.byte	W04
	.byte		VOICE , 28
	.byte		N08   , An1 , v104
	.byte	W08
	.byte		VOICE , 32
	.byte		N04   , An1 , v064
	.byte	W04
	.byte		VOICE , 28
	.byte		N08   , An1 , v104
	.byte	W08
	.byte		N04   , An1 , v064
	.byte	W04
	.byte		N08   , An1 , v104
	.byte	W08
	.byte		N04   , An1 , v064
	.byte	W04
	.byte		VOICE , 32
	.byte		N08   , An1 , v127
	.byte	W08
	.byte		VOICE , 29
	.byte		N04   
	.byte	W04
	.byte		VOICE , 28
	.byte		N08   , An1 , v104
	.byte	W08
	.byte		VOICE , 32
	.byte		N04   , An1 , v064
	.byte	W04
	.byte		VOICE , 28
	.byte		N08   , An1 , v104
	.byte	W08
	.byte		N04   , An1 , v064
	.byte	W04
	.byte	PEND
@ 017   ----------------------------------------
	.byte	PATT
	 .word	ch213_1_001
@ 018   ----------------------------------------
	.byte	PATT
	 .word	ch213_1_016
@ 019   ----------------------------------------
	.byte	PATT
	 .word	ch213_1_001
@ 020   ----------------------------------------
	.byte	PATT
	 .word	ch213_1_008
@ 021   ----------------------------------------
	.byte	PATT
	 .word	ch213_1_001
@ 022   ----------------------------------------
	.byte	PATT
	 .word	ch213_1_008
@ 023   ----------------------------------------
ch213_1_023:
	.byte		VOICE , 28
	.byte		N08   , Dn2 , v104
	.byte	W08
	.byte		N04   , Dn2 , v064
	.byte	W04
	.byte		VOICE , 32
	.byte		N08   , Dn2 , v127
	.byte	W08
	.byte		VOICE , 29
	.byte		N04   
	.byte	W04
	.byte		VOICE , 28
	.byte		N08   , Dn2 , v104
	.byte	W08
	.byte		VOICE , 32
	.byte		N04   , Dn2 , v064
	.byte	W04
	.byte		VOICE , 30
	.byte		N08   , Dn2 , v127
	.byte	W08
	.byte		N04   , Dn2 , v064
	.byte	W04
	.byte		VOICE , 28
	.byte		N08   , Dn2 , v104
	.byte	W08
	.byte		N04   , Dn2 , v064
	.byte	W04
	.byte		VOICE , 32
	.byte		N08   , Dn2 , v127
	.byte	W08
	.byte		VOICE , 29
	.byte		N04   
	.byte	W04
	.byte		VOICE , 28
	.byte		N08   , Dn2 , v104
	.byte	W08
	.byte		VOICE , 32
	.byte		N04   , Dn2 , v064
	.byte	W04
	.byte		VOICE , 30
	.byte		N08   , Dn2 , v127
	.byte	W08
	.byte		N04   , Dn2 , v064
	.byte	W04
	.byte	PEND
@ 024   ----------------------------------------
	.byte	PATT
	 .word	ch213_1_016
@ 025   ----------------------------------------
	.byte	PATT
	 .word	ch213_1_001
@ 026   ----------------------------------------
	.byte	PATT
	 .word	ch213_1_008
@ 027   ----------------------------------------
	.byte	PATT
	 .word	ch213_1_023
@ 028   ----------------------------------------
	.byte		VOICE , 28
	.byte		N08   , Gn2 , v104
	.byte	W08
	.byte		N04   , Gn2 , v064
	.byte	W04
	.byte		VOICE , 32
	.byte		N08   , Gn1 , v127
	.byte	W08
	.byte		VOICE , 30
	.byte		N04   , Gn2 
	.byte	W04
	.byte		VOICE , 28
	.byte		N08   , Gn2 , v104
	.byte	W08
	.byte		VOICE , 32
	.byte		N04   , Gn1 , v064
	.byte	W04
	.byte		VOICE , 29
	.byte		N08   , Gn2 , v127
	.byte	W08
	.byte		N04   , Gn2 , v064
	.byte	W04
	.byte		VOICE , 28
	.byte		N08   , Gn2 , v104
	.byte	W08
	.byte		N04   , Gn2 , v064
	.byte	W04
	.byte		VOICE , 32
	.byte		N08   , Gn1 , v127
	.byte	W08
	.byte		VOICE , 30
	.byte		N04   , Gn2 
	.byte	W04
	.byte		VOICE , 28
	.byte		N08   , Gn2 , v104
	.byte	W08
	.byte		VOICE , 32
	.byte		N04   , Gn1 , v064
	.byte	W04
	.byte		VOICE , 29
	.byte		N08   , Gn2 , v127
	.byte	W08
	.byte		N04   , Gn2 , v064
	.byte	W04
@ 029   ----------------------------------------
	.byte		VOICE , 28
	.byte		N08   , Fn2 , v104
	.byte	W08
	.byte		N04   , Fn2 , v064
	.byte	W04
	.byte		VOICE , 32
	.byte		N08   , Fn2 , v127
	.byte	W08
	.byte		VOICE , 29
	.byte		N04   
	.byte	W04
	.byte		VOICE , 28
	.byte		N08   , Fn2 , v104
	.byte	W08
	.byte		VOICE , 32
	.byte		N04   , Fn1 , v064
	.byte	W04
	.byte		VOICE , 30
	.byte		N08   , Fn2 , v127
	.byte	W08
	.byte		N04   , Fn2 , v064
	.byte	W04
	.byte		VOICE , 28
	.byte		N08   , Fn2 , v104
	.byte	W08
	.byte		N04   , Fn2 , v064
	.byte	W04
	.byte		VOICE , 32
	.byte		N08   , Fn2 , v127
	.byte	W08
	.byte		VOICE , 29
	.byte		N04   
	.byte	W04
	.byte		VOICE , 28
	.byte		N08   , Fn2 , v104
	.byte	W08
	.byte		VOICE , 32
	.byte		N04   , Fn1 , v064
	.byte	W04
	.byte		VOICE , 30
	.byte		N08   , Fn2 , v127
	.byte	W08
	.byte		N04   , Fn2 , v064
	.byte	W04
@ 030   ----------------------------------------
ch213_1_030:
	.byte		VOICE , 16
	.byte		N12   , En1 , v127
	.byte	W12
	.byte		VOICE , 0
	.byte	W12
	.byte		        16
	.byte		N12   , Bn1 
	.byte	W12
	.byte		VOICE , 0
	.byte	W12
	.byte		        16
	.byte		N12   , En2 
	.byte	W12
	.byte		VOICE , 0
	.byte	W12
	.byte		        16
	.byte		N12   , Bn1 
	.byte	W12
	.byte		VOICE , 0
	.byte	W12
	.byte	PEND
@ 031   ----------------------------------------
	.byte	PATT
	 .word	ch213_1_030
@ 032   ----------------------------------------
	.byte		VOICE , 16
	.byte		N24   , En1 , v127
	.byte	W24
	.byte		        Bn1 
	.byte	W24
	.byte		        En2 
	.byte	W24
	.byte		        Bn1 
	.byte	W24
@ 033   ----------------------------------------
	.byte		N80   , En1 
	.byte	W80
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v104
	.byte	W04
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte	GOTO
	 .word	ch213_1_B1
ch213_1_B2:
@ 034   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

ch213_2:
	.byte		VOL   , 127*ch213_mvl/mxv
	.byte	KEYSH , ch213_key+0
ch213_2_B1:
@ 000   ----------------------------------------
ch213_2_000:
	.byte		VOICE , 16
	.byte		N12   , En2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   , Bn1 
	.byte	W12
	.byte		VOICE , 16
	.byte		N12   
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   
	.byte	W12
	.byte		VOICE , 16
	.byte		N12   , En2 
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   , Bn1 
	.byte	W12
	.byte		VOICE , 16
	.byte		N12   
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 001   ----------------------------------------
ch213_2_001:
	.byte		VOICE , 16
	.byte		N12   , Bn1 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   
	.byte	W12
	.byte		VOICE , 16
	.byte		N12   , Fs2 
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   , Bn1 
	.byte	W12
	.byte		VOICE , 16
	.byte		N12   
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   
	.byte	W12
	.byte		VOICE , 16
	.byte		N12   , Fs2 
	.byte	W12
	.byte		VOICE , 38
	.byte		N08   , Bn1 
	.byte	W08
	.byte		VOICE , 0
	.byte	W04
	.byte	PEND
@ 002   ----------------------------------------
ch213_2_002:
	.byte		VOICE , 16
	.byte		N12   , Bn1 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   
	.byte	W12
	.byte		VOICE , 16
	.byte		N12   , Fs2 
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   , Bn1 
	.byte	W12
	.byte		VOICE , 16
	.byte		N12   
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   
	.byte	W12
	.byte		VOICE , 16
	.byte		N12   , Fs2 
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   , Bn1 
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
ch213_2_003:
	.byte		VOICE , 16
	.byte		N12   , En2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   , Bn1 
	.byte	W12
	.byte		VOICE , 16
	.byte		N12   
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   
	.byte	W12
	.byte		VOICE , 16
	.byte		N12   , En2 
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   , Bn1 
	.byte	W12
	.byte		VOICE , 16
	.byte		N12   
	.byte	W12
	.byte		VOICE , 38
	.byte		N08   
	.byte	W08
	.byte		VOICE , 0
	.byte	W04
	.byte	PEND
@ 004   ----------------------------------------
	.byte	PATT
	 .word	ch213_2_000
@ 005   ----------------------------------------
	.byte	PATT
	 .word	ch213_2_002
@ 006   ----------------------------------------
	.byte		VOICE , 16
	.byte		N12   , Fs2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   , Bn1 
	.byte	W12
	.byte		VOICE , 16
	.byte		N12   , Cs2 
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   , Bn1 
	.byte	W12
	.byte		VOICE , 16
	.byte		N12   , Fs2 
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   , Bn1 
	.byte	W12
	.byte		VOICE , 16
	.byte		N08   , Cs2 
	.byte	W08
	.byte		VOICE , 38
	.byte		N04   , Bn1 , v104
	.byte	W04
	.byte		N12   , Bn1 , v127
	.byte	W12
@ 007   ----------------------------------------
	.byte		VOICE , 16
	.byte		N12   
	.byte	W12
	.byte		N16   
	.byte	W16
	.byte		VOICE , 36
	.byte		N24   , Gs2 , v056
	.byte	W24
	.byte		        Fs2 
	.byte	W24
	.byte		N08   , Ds2 
	.byte	W08
	.byte		VOICE , 16
	.byte		N08   , Bn2 , v127
	.byte	W08
	.byte		N04   , Ds2 
	.byte	W04
@ 008   ----------------------------------------
	.byte		N12   , En2 
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   , Bn1 
	.byte	W12
	.byte		VOICE , 16
	.byte		N12   
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   
	.byte	W12
	.byte		VOICE , 16
	.byte		N12   , En2 
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   , Bn1 
	.byte	W12
	.byte		VOICE , 16
	.byte		N12   
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   
	.byte	W12
@ 009   ----------------------------------------
	.byte	PATT
	 .word	ch213_2_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	ch213_2_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	ch213_2_003
@ 012   ----------------------------------------
	.byte	PATT
	 .word	ch213_2_000
@ 013   ----------------------------------------
	.byte	PATT
	 .word	ch213_2_002
@ 014   ----------------------------------------
	.byte		VOICE , 16
	.byte		N12   , Fs2 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   , Bn1 
	.byte	W12
	.byte		VOICE , 16
	.byte		N12   , Cs2 
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   , Bn1 
	.byte	W12
	.byte		VOICE , 16
	.byte		N12   , En2 
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   , Bn1 
	.byte	W12
	.byte		VOICE , 16
	.byte		N12   
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   
	.byte	W12
@ 015   ----------------------------------------
ch213_2_015:
	.byte		VOICE , 16
	.byte		N12   , Bn1 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   
	.byte	W12
	.byte		VOICE , 16
	.byte		N12   , Fs1 
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   , Bn1 
	.byte	W12
	.byte		VOICE , 16
	.byte		N12   
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   
	.byte	W12
	.byte		VOICE , 16
	.byte		N12   , Fs1 
	.byte	W12
	.byte		VOICE , 38
	.byte		N08   , Bn1 
	.byte	W08
	.byte		N04   , Bn1 , v104
	.byte	W04
	.byte	PEND
@ 016   ----------------------------------------
	.byte		VOICE , 16
	.byte		N12   , An1 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   , Bn1 
	.byte	W12
	.byte		VOICE , 16
	.byte		N12   , Cs2 
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   , Bn1 
	.byte	W12
	.byte		VOICE , 16
	.byte		N12   , En2 
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   , Bn1 
	.byte	W12
	.byte		VOICE , 16
	.byte		N12   , Fs2 
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   , Bn1 
	.byte	W12
@ 017   ----------------------------------------
	.byte	PATT
	 .word	ch213_2_002
@ 018   ----------------------------------------
	.byte		VOICE , 16
	.byte		N12   , An1 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   , Bn1 
	.byte	W12
	.byte		VOICE , 16
	.byte		N12   , Cs2 
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   , Bn1 
	.byte	W12
	.byte		VOICE , 16
	.byte		N12   , En2 
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   , Bn1 
	.byte	W12
	.byte		VOICE , 16
	.byte		N12   , Fs2 
	.byte	W12
	.byte		VOICE , 38
	.byte		N08   , Bn1 
	.byte	W08
	.byte		VOICE , 16
	.byte		N04   , As1 
	.byte	W04
@ 019   ----------------------------------------
	.byte		N12   , Bn1 
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   
	.byte	W12
	.byte		VOICE , 16
	.byte		N12   , Ds2 
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   , Bn1 
	.byte	W12
	.byte		VOICE , 16
	.byte		N12   , Fs2 
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   , Bn1 
	.byte	W12
	.byte		VOICE , 16
	.byte		N12   , Ds2 
	.byte	W12
	.byte		VOICE , 38
	.byte		N08   , Bn1 
	.byte	W08
	.byte		N04   , Bn1 , v080
	.byte	W04
@ 020   ----------------------------------------
	.byte		VOICE , 16
	.byte		N12   , En1 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   , Bn1 
	.byte	W12
	.byte		VOICE , 16
	.byte		N12   
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   
	.byte	W12
	.byte		VOICE , 16
	.byte		N12   , En2 
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   , Bn1 
	.byte	W12
	.byte		VOICE , 16
	.byte		N12   
	.byte	W12
	.byte		VOICE , 38
	.byte		N08   
	.byte	W08
	.byte		VOICE , 16
	.byte		N04   , As1 
	.byte	W04
@ 021   ----------------------------------------
	.byte		N12   , Bn1 
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   
	.byte	W12
	.byte		VOICE , 16
	.byte		N12   , Fs1 
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   , Bn1 
	.byte	W12
	.byte		VOICE , 16
	.byte		N12   
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   
	.byte	W12
	.byte		VOICE , 16
	.byte		N12   , Fs1 
	.byte	W12
	.byte		VOICE , 38
	.byte		N08   , Bn1 
	.byte	W08
	.byte		VOICE , 16
	.byte		N04   , Ds1 
	.byte	W04
@ 022   ----------------------------------------
	.byte		N12   , Cs2 
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   , Bn1 
	.byte	W12
	.byte		VOICE , 16
	.byte		N12   , Gs1 
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   , Bn1 
	.byte	W12
	.byte		VOICE , 16
	.byte		N12   , Cs2 
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   , Bn1 
	.byte	W12
	.byte		VOICE , 16
	.byte		N12   , Gs1 
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   , Bn1 
	.byte	W12
@ 023   ----------------------------------------
	.byte		VOICE , 16
	.byte		N12   , Dn2 
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   , Bn1 
	.byte	W12
	.byte		VOICE , 16
	.byte		N12   , An1 
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   , Bn1 
	.byte	W12
	.byte		VOICE , 16
	.byte		N12   , Dn2 
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   , Bn1 
	.byte	W12
	.byte		VOICE , 16
	.byte		N12   , An1 
	.byte	W12
	.byte		VOICE , 38
	.byte		N08   , Bn1 
	.byte	W08
	.byte		VOICE , 16
	.byte		N04   , Gs1 
	.byte	W04
@ 024   ----------------------------------------
	.byte		N12   , An1 
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   , Bn1 
	.byte	W12
	.byte		VOICE , 16
	.byte		N12   , Cs2 
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   , Bn1 
	.byte	W12
	.byte		VOICE , 16
	.byte		N12   , En2 
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   , Bn1 
	.byte	W12
	.byte		VOICE , 16
	.byte		N12   , Fs2 
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   , Bn1 
	.byte	W12
@ 025   ----------------------------------------
	.byte	PATT
	 .word	ch213_2_015
@ 026   ----------------------------------------
	.byte		VOICE , 16
	.byte		N12   , En1 , v127
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   , Bn1 
	.byte	W12
	.byte		VOICE , 16
	.byte		N12   
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   
	.byte	W12
	.byte		VOICE , 16
	.byte		N12   , En2 
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   , Bn1 
	.byte	W12
	.byte		VOICE , 16
	.byte		N12   
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   
	.byte	W12
@ 027   ----------------------------------------
	.byte		VOICE , 16
	.byte		N12   , Dn1 
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   , Bn1 
	.byte	W12
	.byte		VOICE , 16
	.byte		N12   , An1 
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   , Bn1 
	.byte	W12
	.byte		VOICE , 16
	.byte		N12   , Dn2 
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   , Bn1 
	.byte	W12
	.byte		VOICE , 16
	.byte		N12   , An1 
	.byte	W12
	.byte		VOICE , 38
	.byte		N08   , Bn1 
	.byte	W08
	.byte		VOICE , 16
	.byte		N04   , Fs1 
	.byte	W04
@ 028   ----------------------------------------
	.byte		N12   , Gn1 
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   , Bn1 
	.byte	W12
	.byte		VOICE , 16
	.byte		N12   , Dn2 
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   , Bn1 
	.byte	W12
	.byte		VOICE , 16
	.byte		N12   , En2 
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   , Bn1 
	.byte	W12
	.byte		VOICE , 16
	.byte		N12   , Dn2 
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   , Bn1 
	.byte	W12
@ 029   ----------------------------------------
	.byte		VOICE , 16
	.byte		N12   , Fn1 
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   , Bn1 
	.byte	W12
	.byte		VOICE , 16
	.byte		N12   , Cn2 
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   , Bn1 
	.byte	W12
	.byte		VOICE , 16
	.byte		N12   , Dn2 
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   , Bn1 
	.byte	W12
	.byte		VOICE , 16
	.byte		N12   , Cn2 
	.byte	W12
	.byte		VOICE , 38
	.byte		N08   , Bn1 
	.byte	W08
	.byte		N04   , Bn1 , v104
	.byte	W04
@ 030   ----------------------------------------
ch213_2_030:
	.byte		VOICE , 35
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte		VOICE , 35
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte		VOICE , 35
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte		VOICE , 35
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte	PEND
@ 031   ----------------------------------------
	.byte	PATT
	 .word	ch213_2_030
@ 032   ----------------------------------------
	.byte		VOICE , 35
	.byte		N08   , An1 , v127
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte		VOICE , 35
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte		VOICE , 35
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte		VOICE , 35
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v096
	.byte	W04
@ 033   ----------------------------------------
	.byte		VOICE , 36
	.byte		N12   , En1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte	GOTO
	 .word	ch213_2_B1
ch213_2_B2:
@ 034   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

ch213_3:
	.byte		VOL   , 127*ch213_mvl/mxv
	.byte	KEYSH , ch213_key+0
ch213_3_B1:
@ 000   ----------------------------------------
ch213_3_000:
	.byte		VOICE , 35
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte		VOICE , 35
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte		VOICE , 35
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte		VOICE , 35
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v096
	.byte	W04
	.byte	PEND
@ 001   ----------------------------------------
	.byte	PATT
	 .word	ch213_3_000
@ 002   ----------------------------------------
	.byte	PATT
	 .word	ch213_3_000
@ 003   ----------------------------------------
	.byte	PATT
	 .word	ch213_3_000
@ 004   ----------------------------------------
	.byte	PATT
	 .word	ch213_3_000
@ 005   ----------------------------------------
	.byte	PATT
	 .word	ch213_3_000
@ 006   ----------------------------------------
	.byte	PATT
	 .word	ch213_3_000
@ 007   ----------------------------------------
	.byte		VOICE , 35
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 36
	.byte		N08   , Bn1 , v064
	.byte	W08
	.byte		N04   , Ds1 , v127
	.byte	W04
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N08   , Gs1 , v064
	.byte	W08
	.byte		N04   , Ds1 , v127
	.byte	W04
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N08   , Fs1 , v064
	.byte	W08
	.byte		N04   , Dn1 , v127
	.byte	W04
	.byte		N12   , Ds1 
	.byte	W12
	.byte		VOICE , 38
	.byte		N12   , Bn1 
	.byte	W12
@ 008   ----------------------------------------
	.byte	PATT
	 .word	ch213_3_000
@ 009   ----------------------------------------
	.byte	PATT
	 .word	ch213_3_000
@ 010   ----------------------------------------
	.byte	PATT
	 .word	ch213_3_000
@ 011   ----------------------------------------
	.byte	PATT
	 .word	ch213_3_000
@ 012   ----------------------------------------
	.byte	PATT
	 .word	ch213_3_000
@ 013   ----------------------------------------
	.byte	PATT
	 .word	ch213_3_000
@ 014   ----------------------------------------
	.byte	PATT
	 .word	ch213_3_000
@ 015   ----------------------------------------
	.byte	PATT
	 .word	ch213_3_000
@ 016   ----------------------------------------
	.byte	PATT
	 .word	ch213_3_000
@ 017   ----------------------------------------
	.byte	PATT
	 .word	ch213_3_000
@ 018   ----------------------------------------
	.byte	PATT
	 .word	ch213_3_000
@ 019   ----------------------------------------
	.byte	PATT
	 .word	ch213_3_000
@ 020   ----------------------------------------
	.byte	PATT
	 .word	ch213_3_000
@ 021   ----------------------------------------
	.byte	PATT
	 .word	ch213_3_000
@ 022   ----------------------------------------
	.byte	PATT
	 .word	ch213_3_000
@ 023   ----------------------------------------
	.byte	PATT
	 .word	ch213_3_000
@ 024   ----------------------------------------
	.byte	PATT
	 .word	ch213_3_000
@ 025   ----------------------------------------
	.byte	PATT
	 .word	ch213_3_000
@ 026   ----------------------------------------
	.byte	PATT
	 .word	ch213_3_000
@ 027   ----------------------------------------
	.byte	PATT
	 .word	ch213_3_000
@ 028   ----------------------------------------
	.byte	PATT
	 .word	ch213_3_000
@ 029   ----------------------------------------
	.byte	PATT
	 .word	ch213_3_000
@ 030   ----------------------------------------
	.byte		VOICE , 6
	.byte		N44   , Cn2 , v100
	.byte	W44
	.byte		VOICE , 41
	.byte		N04   , En2 , v072
	.byte	W04
	.byte		VOICE , 42
	.byte		N12   , En2 , v080
	.byte	W12
	.byte		N08   , En2 , v048
	.byte	W08
	.byte		VOICE , 41
	.byte		N04   , En2 , v088
	.byte	W04
	.byte		VOICE , 42
	.byte		N12   , En2 , v104
	.byte	W12
	.byte		N08   , En2 , v052
	.byte	W08
	.byte		N04   , En2 , v048
	.byte	W04
@ 031   ----------------------------------------
	.byte		N12   , En2 , v108
	.byte	W12
	.byte		N08   , En2 , v052
	.byte	W08
	.byte		VOICE , 41
	.byte		N04   , En2 , v112
	.byte	W04
	.byte		VOICE , 42
	.byte		N12   , En2 , v116
	.byte	W12
	.byte		N08   , En2 , v064
	.byte	W08
	.byte		N04   , En2 , v048
	.byte	W04
	.byte		N12   , En2 , v127
	.byte	W12
	.byte		N08   , En2 , v064
	.byte	W08
	.byte		VOICE , 41
	.byte		N04   , En2 , v012
	.byte	W04
	.byte		VOICE , 42
	.byte		N12   , En2 , v127
	.byte	W12
	.byte		N08   , En2 , v072
	.byte	W08
	.byte		N04   , En2 , v056
	.byte	W04
@ 032   ----------------------------------------
	.byte		N12   , En2 , v127
	.byte	W12
	.byte		N08   , En2 , v064
	.byte	W08
	.byte		VOICE , 41
	.byte		N04   , En2 , v127
	.byte	W04
	.byte		VOICE , 42
	.byte		N12   
	.byte	W12
	.byte		N08   , En2 , v072
	.byte	W08
	.byte		N04   , En2 , v056
	.byte	W04
	.byte		N12   , En2 , v127
	.byte	W12
	.byte		N08   , En2 , v064
	.byte	W08
	.byte		VOICE , 41
	.byte		N04   , En2 , v127
	.byte	W04
	.byte		VOICE , 42
	.byte		N12   
	.byte	W12
	.byte		N08   , En2 , v072
	.byte	W08
	.byte		N04   , En2 , v056
	.byte	W04
@ 033   ----------------------------------------
	.byte		VOICE , 6
	.byte		N12   , Cn2 , v100
	.byte	W12
	.byte		VOICE , 36
	.byte		N24   , Bn1 , v096
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		        Cs2 
	.byte	W24
	.byte		N12   , Ds2 
	.byte	W12
	.byte	GOTO
	 .word	ch213_3_B1
ch213_3_B2:
@ 034   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

ch213_4:
	.byte		VOL   , 127*ch213_mvl/mxv
	.byte	KEYSH , ch213_key+0
ch213_4_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 36
	.byte		N04   , Bn2 , v127
	.byte	W04
	.byte		        Bn2 , v064
	.byte	W04
	.byte		        Cs3 , v127
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        Bn2 , v064
	.byte	W04
	.byte		        En2 , v127
	.byte	W04
	.byte		        Gs2 
	.byte	W04
	.byte		        Gs2 , v064
	.byte	W04
	.byte		        An2 , v127
	.byte	W04
	.byte		        Gs2 
	.byte	W04
	.byte		        Gs2 , v064
	.byte	W04
	.byte		        En2 , v127
	.byte	W04
	.byte		        Fs2 
	.byte	W04
	.byte		        Fs2 , v064
	.byte	W04
	.byte		        Gs2 , v127
	.byte	W04
	.byte		        Fs2 
	.byte	W04
	.byte		        Fs2 , v064
	.byte	W04
	.byte		        En2 , v127
	.byte	W04
	.byte		        Cs2 
	.byte	W04
	.byte		        Cs2 , v064
	.byte	W04
	.byte		        En2 , v127
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        Bn1 , v064
	.byte	W04
	.byte		        Dn2 , v127
	.byte	W04
@ 001   ----------------------------------------
ch213_4_001:
	.byte		N04   , Ds2 , v127
	.byte	W04
	.byte		        Ds2 , v064
	.byte	W04
	.byte		        Fs2 , v127
	.byte	W04
	.byte		        Ds2 
	.byte	W04
	.byte		        Ds2 , v064
	.byte	W04
	.byte		        Bn1 , v127
	.byte	W04
	.byte		        An1 
	.byte	W04
	.byte		        An1 , v064
	.byte	W04
	.byte		        Ds2 , v127
	.byte	W04
	.byte		        An1 
	.byte	W04
	.byte		        An1 , v064
	.byte	W04
	.byte		        Fs1 , v127
	.byte	W04
	.byte		MOD   , 42
	.byte		N48   , Ds1 
	.byte	W48
	.byte	PEND
@ 002   ----------------------------------------
ch213_4_002:
	.byte		MOD   , 0
	.byte		N04   , Ds2 , v127
	.byte	W04
	.byte		        Ds2 , v064
	.byte	W04
	.byte		        Fs2 , v127
	.byte	W04
	.byte		        Ds2 
	.byte	W04
	.byte		        Ds2 , v064
	.byte	W04
	.byte		        Cs2 , v127
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        Bn1 , v064
	.byte	W04
	.byte		        Ds2 , v127
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        Bn1 , v064
	.byte	W04
	.byte		        As1 , v127
	.byte	W04
	.byte		MOD   , 42
	.byte		N40   , An1 
	.byte	W40
	.byte		MOD   , 0
	.byte		N04   , Bn1 
	.byte	W04
	.byte		        Cn2 
	.byte	W04
	.byte	PEND
@ 003   ----------------------------------------
ch213_4_003:
	.byte		N04   , Cs2 , v127
	.byte	W04
	.byte		        Cs2 , v064
	.byte	W04
	.byte		        En2 , v127
	.byte	W04
	.byte		        Cs2 
	.byte	W04
	.byte		        Cs2 , v064
	.byte	W04
	.byte		        Cn2 , v127
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        Bn1 , v064
	.byte	W04
	.byte		        Cs2 , v127
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        Bn1 , v064
	.byte	W04
	.byte		        Gn1 , v127
	.byte	W04
	.byte		MOD   , 42
	.byte		N48   , Gs1 
	.byte	W48
	.byte	PEND
@ 004   ----------------------------------------
ch213_4_004:
	.byte		MOD   , 0
	.byte		N04   , Bn2 , v127
	.byte	W04
	.byte		        Bn2 , v064
	.byte	W04
	.byte		        Cs3 , v127
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        Bn2 , v064
	.byte	W04
	.byte		        En2 , v127
	.byte	W04
	.byte		        Gs2 
	.byte	W04
	.byte		        Gs2 , v064
	.byte	W04
	.byte		        An2 , v127
	.byte	W04
	.byte		        Gs2 
	.byte	W04
	.byte		        Gs2 , v064
	.byte	W04
	.byte		        En2 , v127
	.byte	W04
	.byte		        Fs2 
	.byte	W04
	.byte		        Fs2 , v064
	.byte	W04
	.byte		        Gs2 , v127
	.byte	W04
	.byte		        Fs2 
	.byte	W04
	.byte		        Fs2 , v064
	.byte	W04
	.byte		        En2 , v127
	.byte	W04
	.byte		        Cs2 
	.byte	W04
	.byte		        Cs2 , v064
	.byte	W04
	.byte		        En2 , v127
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        Bn1 , v064
	.byte	W04
	.byte		        Dn2 , v127
	.byte	W04
	.byte	PEND
@ 005   ----------------------------------------
ch213_4_005:
	.byte		N04   , Ds2 , v127
	.byte	W04
	.byte		        Ds2 , v064
	.byte	W04
	.byte		        Fs2 , v127
	.byte	W04
	.byte		        Ds2 
	.byte	W04
	.byte		        Ds2 , v064
	.byte	W04
	.byte		        Bn1 , v127
	.byte	W04
	.byte		        An1 
	.byte	W04
	.byte		        An1 , v064
	.byte	W04
	.byte		        Ds2 , v127
	.byte	W04
	.byte		        An1 
	.byte	W04
	.byte		        An1 , v064
	.byte	W04
	.byte		        Fs1 , v127
	.byte	W04
	.byte		MOD   , 42
	.byte		N36   , Ds1 
	.byte	W36
	.byte		MOD   , 0
	.byte		N04   , Gs1 
	.byte	W04
	.byte		        Gs1 , v064
	.byte	W04
	.byte		        An1 , v127
	.byte	W04
	.byte	PEND
@ 006   ----------------------------------------
	.byte		        As1 
	.byte	W04
	.byte		        As1 , v064
	.byte	W04
	.byte		        An1 , v127
	.byte	W04
	.byte		        As1 
	.byte	W04
	.byte		        As1 , v064
	.byte	W04
	.byte		        Cs2 , v127
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		        En2 , v064
	.byte	W04
	.byte		        Cs2 , v127
	.byte	W04
	.byte		        As1 
	.byte	W04
	.byte		        As1 , v064
	.byte	W04
	.byte		        Gs1 , v127
	.byte	W04
	.byte		MOD   , 42
	.byte		N20   , Fs1 
	.byte	W20
	.byte		MOD   , 0
	.byte		N04   , Fs2 
	.byte	W04
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        As2 
	.byte	W12
@ 007   ----------------------------------------
	.byte		        Bn2 
	.byte	W12
	.byte		N08   , Bn2 , v064
	.byte	W08
	.byte		N04   , Ds2 , v127
	.byte	W04
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N08   , Gs2 , v064
	.byte	W08
	.byte		N04   , Ds2 , v127
	.byte	W04
	.byte		N12   , Fs2 
	.byte	W12
	.byte		N08   , Fs2 , v064
	.byte	W08
	.byte		N04   , Dn2 , v127
	.byte	W04
	.byte		N12   , Ds2 
	.byte	W12
	.byte		        Ds2 , v064
	.byte	W12
@ 008   ----------------------------------------
	.byte		N04   , Bn2 , v127
	.byte	W04
	.byte		        Bn2 , v064
	.byte	W04
	.byte		        Cs3 , v127
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        Bn2 , v064
	.byte	W04
	.byte		        En2 , v127
	.byte	W04
	.byte		        Gs2 
	.byte	W04
	.byte		        Gs2 , v064
	.byte	W04
	.byte		        An2 , v127
	.byte	W04
	.byte		        Gs2 
	.byte	W04
	.byte		        Gs2 , v064
	.byte	W04
	.byte		        En2 , v127
	.byte	W04
	.byte		        Fs2 
	.byte	W04
	.byte		        Fs2 , v064
	.byte	W04
	.byte		        Gs2 , v127
	.byte	W04
	.byte		        Fs2 
	.byte	W04
	.byte		        Fs2 , v064
	.byte	W04
	.byte		        En2 , v127
	.byte	W04
	.byte		        Cs2 
	.byte	W04
	.byte		        Cs2 , v064
	.byte	W04
	.byte		        En2 , v127
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        Bn1 , v064
	.byte	W04
	.byte		        Dn2 , v127
	.byte	W04
@ 009   ----------------------------------------
	.byte	PATT
	 .word	ch213_4_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	ch213_4_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	ch213_4_003
@ 012   ----------------------------------------
	.byte	PATT
	 .word	ch213_4_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	ch213_4_005
@ 014   ----------------------------------------
	.byte		N04   , As1 , v127
	.byte	W04
	.byte		        As1 , v064
	.byte	W04
	.byte		        Fs1 , v127
	.byte	W04
	.byte		        As1 
	.byte	W04
	.byte		        As1 , v064
	.byte	W04
	.byte		        Cs2 , v127
	.byte	W04
	.byte		N12   , Fs2 
	.byte	W12
	.byte		N08   , Fs2 , v064
	.byte	W08
	.byte		N04   , Gn1 , v127
	.byte	W04
	.byte		        Gs1 
	.byte	W04
	.byte		        Gs1 , v064
	.byte	W04
	.byte		        En1 , v127
	.byte	W04
	.byte		        Gs1 
	.byte	W04
	.byte		        Gs1 , v064
	.byte	W04
	.byte		        Bn1 , v127
	.byte	W04
	.byte		N12   , En2 
	.byte	W12
	.byte		N08   , En2 , v064
	.byte	W08
	.byte		N04   , Dn2 , v127
	.byte	W04
@ 015   ----------------------------------------
	.byte		        Ds2 
	.byte	W04
	.byte		        Ds2 , v064
	.byte	W04
	.byte		        Dn2 , v127
	.byte	W04
	.byte		        Ds2 
	.byte	W04
	.byte		        Ds2 , v064
	.byte	W04
	.byte		        Cs2 , v127
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        Bn1 , v064
	.byte	W04
	.byte		        Gs1 , v127
	.byte	W04
	.byte		        Fs1 
	.byte	W04
	.byte		        Fs1 , v064
	.byte	W04
	.byte		        Ds1 , v127
	.byte	W04
	.byte		MOD   , 42
	.byte		N24   , Bn0 
	.byte	W24
	.byte		MOD   , 0
	.byte		N24   , Bn0 , v064
	.byte	W24
@ 016   ----------------------------------------
	.byte		VOICE , 6
	.byte		N08   , Cn2 , v100
	.byte	W08
	.byte		VOICE , 27
	.byte		N08   , An1 , v127
	.byte	W08
	.byte		VOICE , 26
	.byte		N04   , An1 , v064
	.byte	W04
	.byte		VOICE , 25
	.byte		N04   , Bn1 , v127
	.byte	W04
	.byte		VOICE , 26
	.byte		N08   , Bn1 , v116
	.byte	W08
	.byte		N04   , As1 
	.byte	W04
	.byte		VOICE , 25
	.byte		N08   , Cs2 , v127
	.byte	W08
	.byte		VOICE , 27
	.byte		N08   , Dn2 
	.byte	W08
	.byte		VOICE , 26
	.byte		N04   , Dn2 , v064
	.byte	W04
	.byte		        Dn2 , v116
	.byte	W04
	.byte		N08   , Bn1 
	.byte	W08
	.byte		N04   , Bn1 , v064
	.byte	W04
	.byte		VOICE , 27
	.byte		N08   , An1 , v127
	.byte	W08
	.byte		VOICE , 26
	.byte		N04   , An1 , v064
	.byte	W04
	.byte		N08   , Gn1 , v116
	.byte	W08
	.byte		N04   , Gn1 , v064
	.byte	W04
@ 017   ----------------------------------------
	.byte		VOICE , 25
	.byte		N20   , Fs1 , v127
	.byte	W20
	.byte		        Fs1 , v064
	.byte	W20
	.byte		VOICE , 26
	.byte		N04   , Gn1 , v116
	.byte	W04
	.byte		        An1 
	.byte	W04
	.byte		VOICE , 27
	.byte		N08   , Bn1 , v127
	.byte	W08
	.byte		VOICE , 26
	.byte		N04   , Bn1 , v064
	.byte	W04
	.byte		N08   , An1 , v116
	.byte	W08
	.byte		N12   , Gn1 
	.byte	W12
	.byte		N04   , Gn1 , v064
	.byte	W04
	.byte		VOICE , 27
	.byte		N08   , Dn2 , v127
	.byte	W08
	.byte		VOICE , 26
	.byte		N04   , Dn2 , v064
	.byte	W04
@ 018   ----------------------------------------
	.byte		N12   , Cn2 , v116
	.byte	W12
	.byte		N08   , Cn2 , v064
	.byte	W08
	.byte		N12   , Cn2 , v116
	.byte	W12
	.byte		N08   , Cn2 , v064
	.byte	W08
	.byte		N04   , An1 , v116
	.byte	W04
	.byte		VOICE , 25
	.byte		N04   , Fs2 , v127
	.byte	W04
	.byte		VOICE , 27
	.byte		N08   , En2 
	.byte	W08
	.byte		VOICE , 26
	.byte		N04   , En2 , v064
	.byte	W04
	.byte		N08   , Dn2 , v116
	.byte	W08
	.byte		N04   , Dn2 , v064
	.byte	W04
	.byte		N08   , Cn2 , v116
	.byte	W08
	.byte		VOICE , 25
	.byte		N08   , Cs2 , v127
	.byte	W08
	.byte		VOICE , 26
	.byte		N08   , As1 , v116
	.byte	W08
@ 019   ----------------------------------------
	.byte		VOICE , 27
	.byte		N08   , Bn1 , v127
	.byte	W08
	.byte		VOICE , 26
	.byte		N08   , Dn2 , v116
	.byte	W08
	.byte		        Bn1 
	.byte	W08
	.byte		VOICE , 25
	.byte		N08   , Bn1 , v127
	.byte	W08
	.byte		N04   , Bn1 , v064
	.byte	W04
	.byte		N08   , Gs1 , v127
	.byte	W08
	.byte		VOICE , 26
	.byte		N12   , Dn1 , v116
	.byte	W12
	.byte		        Dn1 , v064
	.byte	W12
	.byte		        Dn1 , v052
	.byte	W12
	.byte		VOICE , 36
	.byte		N08   , Bn1 , v127
	.byte	W08
	.byte		        Cn2 
	.byte	W08
@ 020   ----------------------------------------
	.byte		N12   , Cs2 
	.byte	W12
	.byte		VOICE , 40
	.byte		N12   , Gs2 , v112
	.byte	W12
	.byte		VOICE , 36
	.byte		N12   , Bn1 , v127
	.byte	W12
	.byte		VOICE , 39
	.byte		N12   , En2 , v112
	.byte	W12
	.byte		VOICE , 36
	.byte		N12   , Gs1 , v127
	.byte	W12
	.byte		VOICE , 40
	.byte		N12   , Gs2 , v112
	.byte	W12
	.byte		VOICE , 36
	.byte		N12   , En1 , v127
	.byte	W12
	.byte		VOICE , 39
	.byte		N12   , En2 , v112
	.byte	W12
@ 021   ----------------------------------------
	.byte		VOICE , 36
	.byte		N12   , Fs1 , v127
	.byte	W12
	.byte		VOICE , 40
	.byte		N12   , Fs2 , v112
	.byte	W12
	.byte		VOICE , 36
	.byte		N12   , Ds1 , v127
	.byte	W12
	.byte		VOICE , 40
	.byte		N12   , Ds2 , v112
	.byte	W12
	.byte		VOICE , 36
	.byte		N16   , Cs1 , v127
	.byte	W16
	.byte		N04   , Ds1 
	.byte	W04
	.byte		        Cs1 
	.byte	W04
	.byte		MOD   , 42
	.byte		N24   , Bn0 
	.byte	W24
@ 022   ----------------------------------------
	.byte		MOD   , 0
	.byte		N12   , Cs2 
	.byte	W12
	.byte		VOICE , 40
	.byte		N12   , Gs2 , v112
	.byte	W12
	.byte		VOICE , 36
	.byte		N12   , Bn1 , v127
	.byte	W12
	.byte		VOICE , 39
	.byte		N12   , En2 , v112
	.byte	W12
	.byte		VOICE , 36
	.byte		N12   , Gs1 , v127
	.byte	W12
	.byte		VOICE , 40
	.byte		N12   , Cs2 , v112
	.byte	W12
	.byte		VOICE , 36
	.byte		N12   , En1 , v127
	.byte	W12
	.byte		VOICE , 39
	.byte		N12   , En2 , v112
	.byte	W12
@ 023   ----------------------------------------
	.byte		VOICE , 36
	.byte		N12   , Fs1 , v127
	.byte	W12
	.byte		N08   , Fs1 , v064
	.byte	W08
	.byte		VOICE , 39
	.byte		N16   , Dn2 , v112
	.byte	W16
	.byte		VOICE , 40
	.byte		N12   , Fs1 
	.byte	W12
	.byte		VOICE , 36
	.byte		N08   , An1 , v127
	.byte	W08
	.byte		N04   , An1 , v064
	.byte	W04
	.byte		N08   , Bn1 , v127
	.byte	W08
	.byte		N04   , Bn1 , v064
	.byte	W04
	.byte		N08   , Cs2 , v127
	.byte	W08
	.byte		N04   , Cs2 , v064
	.byte	W04
	.byte		N08   , Dn2 , v127
	.byte	W08
	.byte		N04   , Dn2 , v064
	.byte	W04
@ 024   ----------------------------------------
	.byte		N12   , En2 , v127
	.byte	W12
	.byte		VOICE , 40
	.byte		N12   , Cs2 , v112
	.byte	W12
	.byte		VOICE , 36
	.byte		N12   , Cs2 , v127
	.byte	W12
	.byte		VOICE , 39
	.byte		N12   , An1 , v112
	.byte	W12
	.byte		VOICE , 36
	.byte		N12   , An1 , v127
	.byte	W12
	.byte		VOICE , 40
	.byte		N12   , Cs2 , v112
	.byte	W12
	.byte		VOICE , 36
	.byte		N12   , En1 , v127
	.byte	W12
	.byte		VOICE , 39
	.byte		N12   , En2 , v112
	.byte	W12
@ 025   ----------------------------------------
	.byte		VOICE , 36
	.byte		MOD   , 42
	.byte		N28   , Fs1 , v127
	.byte	W28
	.byte		MOD   , 0
	.byte		N04   , Gs1 , v012
	.byte	W04
	.byte		        Fs1 , v108
	.byte	W04
	.byte		        En1 , v120
	.byte	W04
	.byte		        Ds1 , v112
	.byte	W04
	.byte		        Cs1 , v104
	.byte	W04
	.byte		MOD   , 42
	.byte		N16   , Bn0 , v096
	.byte	W16
	.byte		MOD   , 0
	.byte		N04   , Ds1 , v088
	.byte	W04
	.byte		        Fs1 , v080
	.byte	W04
	.byte		MOD   , 42
	.byte		N12   , Bn1 , v072
	.byte	W12
	.byte		MOD   , 0
	.byte		N12   , Bn1 , v056
	.byte	W12
@ 026   ----------------------------------------
	.byte		VOICE , 43
	.byte		N12   , Cs3 , v127
	.byte	W12
	.byte		VOICE , 40
	.byte		N08   , Gs1 , v112
	.byte	W08
	.byte		VOICE , 43
	.byte		N12   , Cs3 , v096
	.byte	W12
	.byte		VOICE , 40
	.byte		N04   , Gs1 
	.byte	W04
	.byte		VOICE , 43
	.byte		N08   , Cs3 , v064
	.byte	W08
	.byte		VOICE , 40
	.byte		N04   , Gs1 
	.byte	W04
	.byte		VOICE , 43
	.byte		N12   , Gs2 , v127
	.byte	W12
	.byte		VOICE , 40
	.byte		N08   , Gs1 , v112
	.byte	W08
	.byte		VOICE , 43
	.byte		N12   , Gs2 , v096
	.byte	W12
	.byte		VOICE , 40
	.byte		N04   , Gs1 
	.byte	W04
	.byte		VOICE , 43
	.byte		N08   , Gs2 , v064
	.byte	W08
	.byte		VOICE , 40
	.byte		N04   , Gs1 
	.byte	W04
@ 027   ----------------------------------------
	.byte		VOICE , 43
	.byte		N12   , Bn2 , v127
	.byte	W12
	.byte		VOICE , 40
	.byte		N08   , Fs1 , v112
	.byte	W08
	.byte		VOICE , 43
	.byte		N12   , Bn2 , v096
	.byte	W12
	.byte		VOICE , 40
	.byte		N04   , Fs1 
	.byte	W04
	.byte		VOICE , 43
	.byte		N08   , Bn2 , v064
	.byte	W08
	.byte		VOICE , 40
	.byte		N04   , Fs1 
	.byte	W04
	.byte		VOICE , 43
	.byte		N12   , Fs2 , v127
	.byte	W12
	.byte		VOICE , 40
	.byte		N08   , Fs1 , v112
	.byte	W08
	.byte		VOICE , 43
	.byte		N12   , Fs2 , v096
	.byte	W12
	.byte		VOICE , 40
	.byte		N04   , Fs1 
	.byte	W04
	.byte		VOICE , 43
	.byte		N08   , Fs2 , v064
	.byte	W08
	.byte		VOICE , 40
	.byte		N04   , Fs1 
	.byte	W04
@ 028   ----------------------------------------
	.byte		VOICE , 43
	.byte		N12   , Bn2 , v127
	.byte	W12
	.byte		VOICE , 39
	.byte		N08   , Gn1 , v112
	.byte	W08
	.byte		VOICE , 43
	.byte		N12   , Bn2 , v096
	.byte	W12
	.byte		VOICE , 39
	.byte		N04   , Gn1 
	.byte	W04
	.byte		VOICE , 43
	.byte		N08   , Bn2 , v064
	.byte	W08
	.byte		VOICE , 39
	.byte		N04   , Gn1 
	.byte	W04
	.byte		VOICE , 43
	.byte		N12   , Dn2 , v127
	.byte	W12
	.byte		VOICE , 39
	.byte		N08   , Gn1 , v112
	.byte	W08
	.byte		VOICE , 43
	.byte		N12   , Dn2 , v096
	.byte	W12
	.byte		VOICE , 39
	.byte		N04   , Gn1 
	.byte	W04
	.byte		VOICE , 43
	.byte		N08   , Dn2 , v064
	.byte	W08
	.byte		VOICE , 39
	.byte		N04   , Gn1 
	.byte	W04
@ 029   ----------------------------------------
	.byte		VOICE , 43
	.byte		N12   , An2 , v127
	.byte	W12
	.byte		VOICE , 40
	.byte		N08   , An1 , v112
	.byte	W08
	.byte		VOICE , 43
	.byte		N12   , An2 , v096
	.byte	W12
	.byte		VOICE , 40
	.byte		N04   , An1 
	.byte	W04
	.byte		VOICE , 43
	.byte		N08   , An2 , v064
	.byte	W08
	.byte		VOICE , 40
	.byte		N04   , An1 
	.byte	W04
	.byte		VOICE , 43
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 40
	.byte		N08   , An1 , v112
	.byte	W08
	.byte		VOICE , 43
	.byte		N12   , Cn2 , v096
	.byte	W12
	.byte		VOICE , 40
	.byte		N04   , An1 
	.byte	W04
	.byte		N08   , An1 , v127
	.byte	W08
	.byte		N04   , An1 , v080
	.byte	W04
@ 030   ----------------------------------------
	.byte		N12   , Gs1 , v127
	.byte	W12
	.byte		        Gs1 , v104
	.byte	W12
	.byte		        Gs1 , v088
	.byte	W12
	.byte		        Gs1 , v064
	.byte	W12
	.byte		        Gs1 , v080
	.byte	W12
	.byte		        Fs1 , v092
	.byte	W12
	.byte		VOICE , 39
	.byte		N12   , An1 , v104
	.byte	W12
	.byte		VOICE , 40
	.byte		N12   , Gs1 , v112
	.byte	W12
@ 031   ----------------------------------------
	.byte		VOICE , 39
	.byte		N12   , An1 , v124
	.byte	W12
	.byte		        An1 , v080
	.byte	W12
	.byte		        An1 , v104
	.byte	W12
	.byte		VOICE , 40
	.byte		N12   , Gs1 , v096
	.byte	W12
	.byte		VOICE , 39
	.byte		N12   , An1 , v104
	.byte	W12
	.byte		        Bn1 , v112
	.byte	W12
	.byte		VOICE , 40
	.byte		N12   , Cs2 , v120
	.byte	W12
	.byte		        Ds2 , v127
	.byte	W12
@ 032   ----------------------------------------
	.byte		VOICE , 39
	.byte		N12   , En2 
	.byte	W12
	.byte		VOICE , 40
	.byte		N12   , Ds2 , v120
	.byte	W12
	.byte		        Cs2 , v104
	.byte	W12
	.byte		VOICE , 39
	.byte		N12   , An1 , v096
	.byte	W12
	.byte		VOICE , 40
	.byte		N12   , Gs1 , v088
	.byte	W12
	.byte		        Fs1 , v080
	.byte	W12
	.byte		VOICE , 39
	.byte		N12   , En1 , v072
	.byte	W12
	.byte		VOICE , 40
	.byte		N04   , Cs1 , v064
	.byte	W04
	.byte		VOICE , 38
	.byte		N04   , Cn2 , v072
	.byte	W04
	.byte		        Cn2 , v112
	.byte	W04
@ 033   ----------------------------------------
	.byte		VOICE , 35
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOICE , 36
	.byte		N24   , En2 , v096
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N12   , Fs2 
	.byte	W12
	.byte	GOTO
	 .word	ch213_4_B1
ch213_4_B2:
@ 034   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

ch213:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	ch213_pri	@ Priority
	.byte	ch213_rev	@ Reverb.

	.word	ch213_grp

	.word	ch213_1
	.word	ch213_2
	.word	ch213_3
	.word	ch213_4

	.end
