	.include "MPlayDef.s"

	.equ	ch6g_grp, voicegroup000
	.equ	ch6g_pri, 128
	.equ	ch6g_rev, reverb_set+50
	.equ	ch6g_mvl, 127
	.equ	ch6g_key, 0
	.equ	ch6g_tbs, 1
	.equ	ch6g_exg, 0
	.equ	ch6g_cmp, 1

	.section .rodata
	.global	ch6g
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

ch6g_1:
	.byte		VOL   , 127*ch6g_mvl/mxv
	.byte	KEYSH , ch6g_key+0
ch6g_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 100*ch6g_tbs/2
	.byte		VOICE , 47
	.byte		N16   , En1 , v127
	.byte	W16
	.byte		VOICE , 65
	.byte		N08   , Fs2 , v096
	.byte	W08
	.byte		        Bn1 
	.byte	W08
	.byte		        Gn2 
	.byte	W08
	.byte		        Gn2 , v028
	.byte	W08
	.byte		VOICE , 47
	.byte		N16   , En1 , v127
	.byte	W16
	.byte		VOICE , 65
	.byte		N08   , Gn2 , v096
	.byte	W08
	.byte		        En2 
	.byte	W08
	.byte		        Fs2 
	.byte	W08
	.byte		        Fs2 , v028
	.byte	W08
@ 001   ----------------------------------------
ch6g_1_001:
	.byte		VOICE , 47
	.byte		N16   , En1 , v127
	.byte	W16
	.byte		VOICE , 65
	.byte		N08   , Fs2 , v096
	.byte	W08
	.byte		        Bn1 
	.byte	W08
	.byte		        Gn2 
	.byte	W08
	.byte		        Gn2 , v028
	.byte	W08
	.byte		VOICE , 47
	.byte		N16   , En1 , v127
	.byte	W16
	.byte		VOICE , 65
	.byte		N08   , Gn2 , v096
	.byte	W08
	.byte		        En2 
	.byte	W08
	.byte		        Fs2 
	.byte	W08
	.byte		        Fs2 , v028
	.byte	W08
	.byte	PEND
@ 002   ----------------------------------------
	.byte	PATT
	 .word	ch6g_1_001
@ 003   ----------------------------------------
ch6g_1_003:
	.byte		VOICE , 47
	.byte		N16   , En1 , v127
	.byte	W16
	.byte		VOICE , 65
	.byte		N08   , Fs2 , v096
	.byte	W08
	.byte		        Bn1 
	.byte	W08
	.byte		        Gn2 
	.byte	W08
	.byte		        Gn2 , v028
	.byte	W08
	.byte		VOICE , 47
	.byte		N16   , Bn1 , v127
	.byte	W16
	.byte		VOICE , 65
	.byte		N08   , Fs2 , v096
	.byte	W08
	.byte		        Fs2 , v028
	.byte	W08
	.byte		        Ds2 , v096
	.byte	W08
	.byte		        Ds2 , v028
	.byte	W08
	.byte	PEND
@ 004   ----------------------------------------
ch6g_1_004:
	.byte		VOICE , 47
	.byte		N16   , An1 , v127
	.byte	W16
	.byte		VOICE , 65
	.byte		N08   , Cn3 , v096
	.byte	W08
	.byte		        Cn3 , v028
	.byte	W08
	.byte		        Bn2 , v096
	.byte	W08
	.byte		        Bn2 , v028
	.byte	W08
	.byte		VOICE , 47
	.byte		N16   , En1 , v127
	.byte	W16
	.byte		VOICE , 65
	.byte		N08   , Fs2 , v096
	.byte	W08
	.byte		        Bn1 
	.byte	W08
	.byte		        Gn2 
	.byte	W08
	.byte		        Gn2 , v028
	.byte	W08
	.byte	PEND
@ 005   ----------------------------------------
ch6g_1_005:
	.byte		VOICE , 47
	.byte		N16   , Bn1 , v127
	.byte	W16
	.byte		VOICE , 65
	.byte		N08   , Fs2 , v096
	.byte	W08
	.byte		        Fs2 , v028
	.byte	W08
	.byte		        Ds2 , v096
	.byte	W08
	.byte		        Ds2 , v028
	.byte	W08
	.byte		VOICE , 47
	.byte		N16   , En1 , v127
	.byte	W16
	.byte		VOICE , 65
	.byte		N08   , Gn2 , v096
	.byte	W08
	.byte		        En2 
	.byte	W08
	.byte		        Gn2 
	.byte	W08
	.byte		        Gn2 , v028
	.byte	W08
	.byte	PEND
@ 006   ----------------------------------------
	.byte	PATT
	 .word	ch6g_1_001
@ 007   ----------------------------------------
	.byte	PATT
	 .word	ch6g_1_003
@ 008   ----------------------------------------
ch6g_1_008:
	.byte		VOICE , 47
	.byte		N16   , An1 , v127
	.byte	W16
	.byte		VOICE , 65
	.byte		N08   , Cn3 , v096
	.byte	W08
	.byte		        Cn3 , v028
	.byte	W08
	.byte		        Bn2 , v096
	.byte	W08
	.byte		        Bn2 , v028
	.byte	W08
	.byte		VOICE , 47
	.byte		N16   , Bn1 , v127
	.byte	W16
	.byte		VOICE , 65
	.byte		N08   , Fs2 , v096
	.byte	W08
	.byte		        Fs2 , v028
	.byte	W08
	.byte		        Ds2 , v096
	.byte	W08
	.byte		        Ds2 , v028
	.byte	W08
	.byte	PEND
@ 009   ----------------------------------------
ch6g_1_009:
	.byte		VOICE , 47
	.byte		N16   , En1 , v127
	.byte	W16
	.byte		VOICE , 65
	.byte		N08   , Fs2 , v096
	.byte	W08
	.byte		        Bn1 
	.byte	W08
	.byte		        Gn2 
	.byte	W08
	.byte		        Gn2 , v028
	.byte	W08
	.byte		VOICE , 47
	.byte		N16   , An1 , v127
	.byte	W16
	.byte		VOICE , 65
	.byte		N08   , Cn3 , v096
	.byte	W08
	.byte		        Cn3 , v028
	.byte	W08
	.byte		        Bn2 , v096
	.byte	W08
	.byte		        Bn2 , v028
	.byte	W08
	.byte	PEND
@ 010   ----------------------------------------
ch6g_1_010:
	.byte		VOICE , 47
	.byte		N16   , Bn1 , v127
	.byte	W16
	.byte		VOICE , 65
	.byte		N08   , Fs2 , v096
	.byte	W08
	.byte		        Fs2 , v028
	.byte	W08
	.byte		        Ds2 , v096
	.byte	W08
	.byte		        Ds2 , v028
	.byte	W08
	.byte		VOICE , 47
	.byte		N48   , Bn1 , v127
	.byte	W48
	.byte	PEND
@ 011   ----------------------------------------
ch6g_1_011:
	.byte		N16   , En1 , v127
	.byte	W16
	.byte		VOICE , 65
	.byte		N08   , Fs2 , v096
	.byte	W08
	.byte		        Bn1 
	.byte	W08
	.byte		        Gn2 
	.byte	W08
	.byte		        Gn2 , v028
	.byte	W08
	.byte		VOICE , 47
	.byte		N16   , En1 , v127
	.byte	W16
	.byte		VOICE , 65
	.byte		N08   , Gn2 , v096
	.byte	W08
	.byte		        En2 
	.byte	W08
	.byte		        Fs2 
	.byte	W08
	.byte		        Fs2 , v028
	.byte	W08
	.byte	PEND
@ 012   ----------------------------------------
	.byte		VOICE , 47
	.byte		N16   , En1 , v127
	.byte	W16
	.byte		VOICE , 65
	.byte		N08   , Fs2 , v096
	.byte	W08
	.byte		        Bn1 
	.byte	W08
	.byte		        Gn2 
	.byte	W08
	.byte		        Gn2 , v028
	.byte	W08
	.byte		VOICE , 47
	.byte		N16   , En1 , v127
	.byte	W16
	.byte		VOICE , 65
	.byte		N08   , Gn2 , v096
	.byte	W08
	.byte		        En2 
	.byte	W08
	.byte		        Fs2 
	.byte	W08
	.byte		N72   , Fs2 , v028
	.byte	W08
@ 013   ----------------------------------------
	.byte	W64
	.byte		N32   , Bn1 , v127
	.byte	W32
@ 014   ----------------------------------------
	.byte		N16   , En2 
	.byte	W96
@ 015   ----------------------------------------
	.byte		VOICE , 47
	.byte		N28   , En1 
	.byte	W28
	.byte		VOICE , 91
	.byte		N08   , Bn2 , v064
	.byte	W08
	.byte		        Cn3 
	.byte	W08
	.byte		        Bn2 
	.byte	W08
	.byte		        Gn2 
	.byte	W08
	.byte		N16   , Fs2 
	.byte	W16
	.byte		N08   , En2 
	.byte	W08
	.byte		N04   , Fs2 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		        Dn2 
	.byte	W04
@ 016   ----------------------------------------
	.byte		VOICE , 47
	.byte		N28   , Gn1 , v127
	.byte	W28
	.byte		VOICE , 91
	.byte		N08   , Bn2 , v064
	.byte	W08
	.byte		        Cn3 
	.byte	W08
	.byte		N04   , Dn3 
	.byte	W04
	.byte		VOICE , 47
	.byte		N24   , Bn1 , v127
	.byte	W24
	.byte		VOICE , 91
	.byte		N16   , Cn3 , v064
	.byte	W16
	.byte		N08   , An2 
	.byte	W08
@ 017   ----------------------------------------
	.byte		VOICE , 47
	.byte		N48   , Cn2 , v127
	.byte	W48
	.byte		        Bn1 
	.byte	W48
@ 018   ----------------------------------------
	.byte	PATT
	 .word	ch6g_1_011
@ 019   ----------------------------------------
	.byte	PATT
	 .word	ch6g_1_001
@ 020   ----------------------------------------
	.byte	PATT
	 .word	ch6g_1_001
@ 021   ----------------------------------------
	.byte	PATT
	 .word	ch6g_1_001
@ 022   ----------------------------------------
	.byte	PATT
	 .word	ch6g_1_001
@ 023   ----------------------------------------
	.byte	PATT
	 .word	ch6g_1_003
@ 024   ----------------------------------------
	.byte	PATT
	 .word	ch6g_1_004
@ 025   ----------------------------------------
	.byte	PATT
	 .word	ch6g_1_005
@ 026   ----------------------------------------
	.byte	PATT
	 .word	ch6g_1_001
@ 027   ----------------------------------------
	.byte	PATT
	 .word	ch6g_1_003
@ 028   ----------------------------------------
	.byte	PATT
	 .word	ch6g_1_008
@ 029   ----------------------------------------
	.byte	PATT
	 .word	ch6g_1_009
@ 030   ----------------------------------------
	.byte	PATT
	 .word	ch6g_1_010
@ 031   ----------------------------------------
	.byte	PATT
	 .word	ch6g_1_011
@ 032   ----------------------------------------
	.byte		VOICE , 47
	.byte		N16   , En1 , v127
	.byte	W16
	.byte		VOICE , 65
	.byte		N08   , Fs2 , v096
	.byte	W08
	.byte		        Bn1 
	.byte	W08
	.byte		        Gn2 
	.byte	W08
	.byte		        Gn2 , v028
	.byte	W08
	.byte		VOICE , 47
	.byte		N16   , En1 , v127
	.byte	W16
	.byte		VOICE , 65
	.byte		N08   , Gn2 , v096
	.byte	W08
	.byte		        En2 
	.byte	W08
	.byte		        Fs2 
	.byte	W08
	.byte		N24   , Fs2 , v028
	.byte	W08
@ 033   ----------------------------------------
	.byte	W16
	.byte		N08   , Fs2 , v096
	.byte	W08
	.byte		        Bn1 
	.byte	W08
	.byte		        Gn2 
	.byte	W08
	.byte		        Gn2 , v028
	.byte	W08
	.byte		VOICE , 66
	.byte		N08   , En2 , v056
	.byte	W08
	.byte		        Fs2 
	.byte	W08
	.byte		VOICE , 65
	.byte		N08   , Gn2 , v096
	.byte	W08
	.byte		        En2 
	.byte	W08
	.byte		        Fs2 
	.byte	W08
	.byte		        Fs2 , v028
	.byte	W08
@ 034   ----------------------------------------
ch6g_1_034:
	.byte		VOICE , 66
	.byte		N08   , En2 , v056
	.byte	W08
	.byte		        Fs2 
	.byte	W08
	.byte		VOICE , 65
	.byte		N08   , Fs2 , v096
	.byte	W08
	.byte		        Cs2 
	.byte	W08
	.byte		        En2 
	.byte	W08
	.byte		        En2 , v028
	.byte	W08
	.byte		VOICE , 66
	.byte		N08   , En2 , v056
	.byte	W08
	.byte		        Ds2 
	.byte	W08
	.byte		VOICE , 65
	.byte		N08   , Gn2 , v096
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		        Fs2 
	.byte	W08
	.byte		N24   , Fs2 , v028
	.byte	W08
	.byte	PEND
@ 035   ----------------------------------------
ch6g_1_035:
	.byte	W16
	.byte		N08   , Fs2 , v096
	.byte	W08
	.byte		        Bn1 
	.byte	W08
	.byte		        Gn2 
	.byte	W08
	.byte		        Gn2 , v028
	.byte	W08
	.byte		VOICE , 66
	.byte		N08   , Fs2 , v056
	.byte	W08
	.byte		        Gn2 
	.byte	W08
	.byte		VOICE , 65
	.byte		N08   , Gn2 , v096
	.byte	W08
	.byte		        En2 
	.byte	W08
	.byte		        Fs2 
	.byte	W08
	.byte		        Fs2 , v028
	.byte	W08
	.byte	PEND
@ 036   ----------------------------------------
	.byte		VOICE , 66
	.byte		N08   , Bn2 , v056
	.byte	W08
	.byte		        As2 
	.byte	W08
	.byte		VOICE , 65
	.byte		N08   , Fs2 , v096
	.byte	W08
	.byte		        Cs2 
	.byte	W08
	.byte		        En2 
	.byte	W08
	.byte		        En2 , v028
	.byte	W08
	.byte		VOICE , 66
	.byte		N08   , En2 , v056
	.byte	W08
	.byte		        Fs2 
	.byte	W08
	.byte		VOICE , 65
	.byte		N08   , Gn2 , v096
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		        Fs2 
	.byte	W08
	.byte		N24   , Fs2 , v028
	.byte	W08
@ 037   ----------------------------------------
	.byte	PATT
	 .word	ch6g_1_035
@ 038   ----------------------------------------
	.byte	PATT
	 .word	ch6g_1_034
@ 039   ----------------------------------------
	.byte	W16
	.byte		N08   , Fs2 , v096
	.byte	W08
	.byte		        Bn1 
	.byte	W08
	.byte		        Gn2 
	.byte	W08
	.byte		        Gn2 , v028
	.byte	W08
	.byte		VOICE , 66
	.byte		N16   , En2 , v056
	.byte	W16
	.byte		VOICE , 65
	.byte		N08   , Fs2 , v096
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		        Fs2 , v028
	.byte	W08
@ 040   ----------------------------------------
	.byte		VOICE , 66
	.byte		N16   , Bn1 , v127
	.byte	W16
	.byte		VOICE , 65
	.byte		N08   , Bn2 , v096
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		        Gn2 
	.byte	W08
	.byte		        Gn2 , v028
	.byte	W08
	.byte		VOICE , 66
	.byte		N16   , Gn2 , v056
	.byte	W16
	.byte		VOICE , 65
	.byte		N08   , Gn2 , v096
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		        Fs2 
	.byte	W08
	.byte		        Fs2 , v028
	.byte	W08
@ 041   ----------------------------------------
	.byte	PATT
	 .word	ch6g_1_001
@ 042   ----------------------------------------
	.byte		VOICE , 47
	.byte		N16   , En1 , v127
	.byte	W16
	.byte		VOICE , 65
	.byte		N08   , Fs2 , v096
	.byte	W08
	.byte		        Bn1 
	.byte	W08
	.byte		        Gn2 
	.byte	W08
	.byte		        Gn2 , v028
	.byte	W08
	.byte		VOICE , 47
	.byte		N16   , En1 , v127
	.byte	W16
	.byte		VOICE , 65
	.byte		N08   , Gn2 , v096
	.byte	W08
	.byte		        En2 
	.byte	W08
	.byte		N16   , Fs2 , v127
	.byte	W16
	.byte	GOTO
	 .word	ch6g_1_B1
ch6g_1_B2:
@ 043   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

ch6g_2:
	.byte		VOL   , 127*ch6g_mvl/mxv
	.byte	KEYSH , ch6g_key+0
ch6g_2_B1:
@ 000   ----------------------------------------
ch6g_2_000:
	.byte		VOICE , 65
	.byte		N16   , En1 , v127
	.byte	W16
	.byte		        An2 , v096
	.byte	W16
	.byte		N08   , Bn2 
	.byte	W08
	.byte		        Bn2 , v028
	.byte	W08
	.byte		N16   , En1 , v127
	.byte	W16
	.byte		        Cs3 , v096
	.byte	W16
	.byte		N08   , Bn2 
	.byte	W08
	.byte		        Bn2 , v028
	.byte	W08
	.byte	PEND
@ 001   ----------------------------------------
ch6g_2_001:
	.byte		N16   , En1 , v127
	.byte	W16
	.byte		        An2 , v096
	.byte	W16
	.byte		N08   , Bn2 
	.byte	W08
	.byte		        Bn2 , v028
	.byte	W08
	.byte		N16   , En1 , v127
	.byte	W16
	.byte		        Cs3 , v096
	.byte	W16
	.byte		N08   , Bn2 
	.byte	W08
	.byte		        Bn2 , v028
	.byte	W08
	.byte	PEND
@ 002   ----------------------------------------
	.byte	PATT
	 .word	ch6g_2_001
@ 003   ----------------------------------------
ch6g_2_003:
	.byte		N16   , En1 , v127
	.byte	W16
	.byte		        An2 , v096
	.byte	W16
	.byte		N08   , Bn2 
	.byte	W08
	.byte		        Bn2 , v028
	.byte	W08
	.byte		N16   , Bn0 , v127
	.byte	W16
	.byte		        Bn2 , v096
	.byte	W16
	.byte		N08   , An2 
	.byte	W08
	.byte		        An2 , v028
	.byte	W08
	.byte	PEND
@ 004   ----------------------------------------
ch6g_2_004:
	.byte		N16   , An1 , v127
	.byte	W16
	.byte		        An2 , v096
	.byte	W16
	.byte		N08   , Gn2 
	.byte	W08
	.byte		        Gn2 , v028
	.byte	W08
	.byte		N16   , En1 , v127
	.byte	W16
	.byte		        An2 , v096
	.byte	W16
	.byte		N08   , Bn2 
	.byte	W08
	.byte		        Bn2 , v028
	.byte	W08
	.byte	PEND
@ 005   ----------------------------------------
ch6g_2_005:
	.byte		N16   , Bn0 , v127
	.byte	W16
	.byte		        Bn2 , v096
	.byte	W16
	.byte		N08   , An2 
	.byte	W08
	.byte		        An2 , v028
	.byte	W08
	.byte		N16   , En1 , v127
	.byte	W16
	.byte		        Cs3 , v096
	.byte	W16
	.byte		N08   , Bn2 
	.byte	W08
	.byte		        Bn2 , v028
	.byte	W08
	.byte	PEND
@ 006   ----------------------------------------
	.byte	PATT
	 .word	ch6g_2_001
@ 007   ----------------------------------------
	.byte	PATT
	 .word	ch6g_2_003
@ 008   ----------------------------------------
ch6g_2_008:
	.byte		N16   , An1 , v127
	.byte	W16
	.byte		        An2 , v096
	.byte	W16
	.byte		N08   , Gn2 
	.byte	W08
	.byte		        Gn2 , v028
	.byte	W08
	.byte		N16   , Bn0 , v127
	.byte	W16
	.byte		        Bn2 , v096
	.byte	W16
	.byte		N08   , An2 
	.byte	W08
	.byte		        An2 , v028
	.byte	W08
	.byte	PEND
@ 009   ----------------------------------------
ch6g_2_009:
	.byte		N16   , En1 , v127
	.byte	W16
	.byte		        An2 , v096
	.byte	W16
	.byte		N08   , Bn2 
	.byte	W08
	.byte		        Bn2 , v028
	.byte	W08
	.byte		N16   , An1 , v127
	.byte	W16
	.byte		        An2 , v096
	.byte	W16
	.byte		N08   , Gn2 
	.byte	W08
	.byte		        Gn2 , v028
	.byte	W08
	.byte	PEND
@ 010   ----------------------------------------
ch6g_2_010:
	.byte		N16   , Bn0 , v127
	.byte	W16
	.byte		        Bn2 , v096
	.byte	W16
	.byte		N08   , An2 
	.byte	W08
	.byte		        An2 , v028
	.byte	W08
	.byte		N48   , Bn0 , v127
	.byte	W48
	.byte	PEND
@ 011   ----------------------------------------
	.byte	PATT
	 .word	ch6g_2_001
@ 012   ----------------------------------------
	.byte		N16   , En1 , v127
	.byte	W16
	.byte		        An2 , v096
	.byte	W16
	.byte		N08   , Bn2 
	.byte	W08
	.byte		        Bn2 , v028
	.byte	W08
	.byte		N16   , En1 , v127
	.byte	W16
	.byte		        Cs3 , v096
	.byte	W16
	.byte		N08   , Bn2 
	.byte	W08
	.byte		N64   , Bn2 , v028
	.byte	W08
@ 013   ----------------------------------------
	.byte	W56
	.byte		N16   , As1 , v127
	.byte	W16
	.byte		        Cn2 
	.byte	W16
	.byte		N20   , Ds2 
	.byte	W08
@ 014   ----------------------------------------
	.byte	W12
	.byte		VOICE , 87
	.byte		N04   , En2 , v064
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        An2 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        Gn2 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        Fs2 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        Gn2 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        Ds2 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        An2 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        Gn2 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        Fs2 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		N20   , Gn2 
	.byte	W04
@ 015   ----------------------------------------
	.byte	W16
	.byte		VOICE , 91
	.byte		N08   , Bn2 , v127
	.byte	W08
	.byte		        Cn3 
	.byte	W08
	.byte		        Bn2 
	.byte	W08
	.byte		        Gn2 
	.byte	W08
	.byte		N16   , Fs2 
	.byte	W16
	.byte		N08   , En2 
	.byte	W08
	.byte		N04   , Fs2 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		N08   , Dn2 
	.byte	W08
	.byte		        Dn2 , v064
	.byte	W08
@ 016   ----------------------------------------
	.byte	W16
	.byte		        Bn2 , v096
	.byte	W08
	.byte		        Cn3 
	.byte	W08
	.byte		        Dn3 
	.byte	W08
	.byte		        Bn2 
	.byte	W08
	.byte		N16   , Cn3 
	.byte	W16
	.byte		        An2 
	.byte	W16
	.byte		        Fs2 
	.byte	W16
@ 017   ----------------------------------------
	.byte		N24   , Gn2 , v127
	.byte	W24
	.byte		N16   , Gn2 , v072
	.byte	W16
	.byte		N04   , Gn2 , v127
	.byte	W04
	.byte		        An2 
	.byte	W04
	.byte		N16   , Bn2 
	.byte	W16
	.byte		        Bn2 , v072
	.byte	W16
	.byte		        Bn2 , v127
	.byte	W16
@ 018   ----------------------------------------
	.byte	PATT
	 .word	ch6g_2_000
@ 019   ----------------------------------------
	.byte	PATT
	 .word	ch6g_2_001
@ 020   ----------------------------------------
	.byte	PATT
	 .word	ch6g_2_001
@ 021   ----------------------------------------
	.byte	PATT
	 .word	ch6g_2_001
@ 022   ----------------------------------------
	.byte	PATT
	 .word	ch6g_2_001
@ 023   ----------------------------------------
	.byte	PATT
	 .word	ch6g_2_003
@ 024   ----------------------------------------
	.byte	PATT
	 .word	ch6g_2_004
@ 025   ----------------------------------------
	.byte	PATT
	 .word	ch6g_2_005
@ 026   ----------------------------------------
	.byte	PATT
	 .word	ch6g_2_001
@ 027   ----------------------------------------
	.byte	PATT
	 .word	ch6g_2_003
@ 028   ----------------------------------------
	.byte	PATT
	 .word	ch6g_2_008
@ 029   ----------------------------------------
	.byte	PATT
	 .word	ch6g_2_009
@ 030   ----------------------------------------
	.byte	PATT
	 .word	ch6g_2_010
@ 031   ----------------------------------------
	.byte	PATT
	 .word	ch6g_2_001
@ 032   ----------------------------------------
	.byte	PATT
	 .word	ch6g_2_001
@ 033   ----------------------------------------
	.byte	PATT
	 .word	ch6g_2_001
@ 034   ----------------------------------------
ch6g_2_034:
	.byte		N16   , Fs1 , v127
	.byte	W16
	.byte		        As2 , v096
	.byte	W16
	.byte		N08   
	.byte	W08
	.byte		        As2 , v028
	.byte	W08
	.byte		N16   , Bn0 , v127
	.byte	W16
	.byte		        As2 , v096
	.byte	W16
	.byte		N08   , Bn2 
	.byte	W08
	.byte		        Bn2 , v028
	.byte	W08
	.byte	PEND
@ 035   ----------------------------------------
	.byte	PATT
	 .word	ch6g_2_001
@ 036   ----------------------------------------
	.byte	PATT
	 .word	ch6g_2_034
@ 037   ----------------------------------------
	.byte	PATT
	 .word	ch6g_2_001
@ 038   ----------------------------------------
	.byte	PATT
	 .word	ch6g_2_034
@ 039   ----------------------------------------
	.byte		N16   , En1 , v127
	.byte	W16
	.byte		        An2 , v096
	.byte	W16
	.byte		N08   , Bn2 
	.byte	W08
	.byte		        Bn2 , v028
	.byte	W08
	.byte		N16   , Dn1 , v127
	.byte	W16
	.byte		        Dn3 , v096
	.byte	W16
	.byte		N08   , An2 
	.byte	W08
	.byte		        An2 , v028
	.byte	W08
@ 040   ----------------------------------------
	.byte		N16   , Gn1 , v127
	.byte	W16
	.byte		        Gn2 , v096
	.byte	W16
	.byte		N08   , Dn2 
	.byte	W08
	.byte		        Dn2 , v028
	.byte	W08
	.byte		N16   , Bn0 , v127
	.byte	W16
	.byte		        As2 , v096
	.byte	W16
	.byte		N08   , Bn2 
	.byte	W08
	.byte		        Bn2 , v028
	.byte	W08
@ 041   ----------------------------------------
	.byte	PATT
	 .word	ch6g_2_001
@ 042   ----------------------------------------
	.byte		N16   , En1 , v127
	.byte	W16
	.byte		        An2 , v096
	.byte	W16
	.byte		N08   , Bn2 
	.byte	W08
	.byte		        Bn2 , v028
	.byte	W08
	.byte		N16   , En1 , v127
	.byte	W16
	.byte		        Cs3 , v096
	.byte	W16
	.byte		        Bn2 , v127
	.byte	W16
	.byte	GOTO
	 .word	ch6g_2_B1
ch6g_2_B2:
@ 043   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

ch6g_3:
	.byte		VOL   , 127*ch6g_mvl/mxv
	.byte	KEYSH , ch6g_key+0
ch6g_3_B1:
@ 000   ----------------------------------------
ch6g_3_000:
	.byte		VOICE , 0
	.byte	W16
	.byte		        65
	.byte		N08   , En3 , v096
	.byte	W08
	.byte		        En3 , v032
	.byte	W08
	.byte		        Ds3 , v096
	.byte	W08
	.byte		N24   , Ds3 , v032
	.byte	W24
	.byte		N08   , Bn2 , v096
	.byte	W08
	.byte		        Gn2 , v032
	.byte	W08
	.byte		        Ds3 , v096
	.byte	W08
	.byte		N24   , Ds3 , v032
	.byte	W08
	.byte	PEND
@ 001   ----------------------------------------
ch6g_3_001:
	.byte	W16
	.byte		N08   , En3 , v096
	.byte	W08
	.byte		        En3 , v032
	.byte	W08
	.byte		        Ds3 , v096
	.byte	W08
	.byte		N24   , Ds3 , v032
	.byte	W24
	.byte		N08   , Bn2 , v096
	.byte	W08
	.byte		        Gn2 , v032
	.byte	W08
	.byte		        Ds3 , v096
	.byte	W08
	.byte		N24   , Ds3 , v032
	.byte	W08
	.byte	PEND
@ 002   ----------------------------------------
	.byte	PATT
	 .word	ch6g_3_001
@ 003   ----------------------------------------
ch6g_3_003:
	.byte	W16
	.byte		N08   , En3 , v096
	.byte	W08
	.byte		        En3 , v032
	.byte	W08
	.byte		        Ds3 , v096
	.byte	W08
	.byte		N24   , Ds3 , v032
	.byte	W24
	.byte		N08   , Ds2 , v096
	.byte	W08
	.byte		        Bn1 , v032
	.byte	W08
	.byte		        Fs2 , v096
	.byte	W08
	.byte		N24   , Fs2 , v032
	.byte	W08
	.byte	PEND
@ 004   ----------------------------------------
ch6g_3_004:
	.byte	W16
	.byte		N08   , En3 , v096
	.byte	W08
	.byte		        En3 , v032
	.byte	W08
	.byte		        En3 , v096
	.byte	W08
	.byte		N24   , En3 , v032
	.byte	W24
	.byte		N08   , En3 , v096
	.byte	W08
	.byte		        En3 , v032
	.byte	W08
	.byte		        En3 , v096
	.byte	W08
	.byte		N24   , En3 , v032
	.byte	W08
	.byte	PEND
@ 005   ----------------------------------------
ch6g_3_005:
	.byte	W16
	.byte		N08   , Ds2 , v096
	.byte	W08
	.byte		        Bn1 , v032
	.byte	W08
	.byte		        Fs2 , v096
	.byte	W08
	.byte		N24   , Fs2 , v032
	.byte	W24
	.byte		N08   , Bn2 , v096
	.byte	W08
	.byte		        Gn2 , v032
	.byte	W08
	.byte		        En2 , v096
	.byte	W08
	.byte		N24   , En2 , v032
	.byte	W08
	.byte	PEND
@ 006   ----------------------------------------
	.byte	PATT
	 .word	ch6g_3_001
@ 007   ----------------------------------------
	.byte	PATT
	 .word	ch6g_3_003
@ 008   ----------------------------------------
ch6g_3_008:
	.byte	W16
	.byte		N08   , En3 , v096
	.byte	W08
	.byte		        En3 , v032
	.byte	W08
	.byte		        En3 , v096
	.byte	W08
	.byte		N24   , En3 , v032
	.byte	W24
	.byte		N08   , Ds2 , v096
	.byte	W08
	.byte		        Bn1 , v032
	.byte	W08
	.byte		        Fs2 , v096
	.byte	W08
	.byte		N24   , Fs2 , v032
	.byte	W08
	.byte	PEND
@ 009   ----------------------------------------
ch6g_3_009:
	.byte	W16
	.byte		N08   , En3 , v096
	.byte	W08
	.byte		        En3 , v032
	.byte	W08
	.byte		        Ds3 , v096
	.byte	W08
	.byte		N24   , Ds3 , v032
	.byte	W24
	.byte		N08   , En3 , v096
	.byte	W08
	.byte		        En3 , v032
	.byte	W08
	.byte		        En3 , v096
	.byte	W08
	.byte		N24   , En3 , v032
	.byte	W08
	.byte	PEND
@ 010   ----------------------------------------
ch6g_3_010:
	.byte	W16
	.byte		N08   , Ds2 , v096
	.byte	W08
	.byte		        Bn1 , v032
	.byte	W08
	.byte		        Fs2 , v096
	.byte	W08
	.byte		        Fs2 , v032
	.byte	W08
	.byte		VOICE , 63
	.byte		N16   , Cn1 , v127
	.byte	W16
	.byte		        Cn1 , v064
	.byte	W16
	.byte		        Cn1 , v048
	.byte	W16
	.byte	PEND
@ 011   ----------------------------------------
ch6g_3_011:
	.byte	W16
	.byte		VOICE , 65
	.byte		N08   , En3 , v096
	.byte	W08
	.byte		        En3 , v032
	.byte	W08
	.byte		        Ds3 , v096
	.byte	W08
	.byte		N24   , Ds3 , v032
	.byte	W24
	.byte		N08   , Bn2 , v096
	.byte	W08
	.byte		        Gn2 , v032
	.byte	W08
	.byte		        Ds3 , v096
	.byte	W08
	.byte		N24   , Ds3 , v032
	.byte	W08
	.byte	PEND
@ 012   ----------------------------------------
	.byte	W16
	.byte		N08   , En3 , v096
	.byte	W08
	.byte		        En3 , v032
	.byte	W08
	.byte		        Ds3 , v096
	.byte	W08
	.byte		N24   , Ds3 , v032
	.byte	W24
	.byte		N08   , Bn2 , v096
	.byte	W08
	.byte		        Gn2 , v032
	.byte	W08
	.byte		        Ds3 , v096
	.byte	W08
	.byte		N56   , Ds3 , v032
	.byte	W08
@ 013   ----------------------------------------
	.byte	W48
	.byte		N32   , Bn1 , v127
	.byte	W32
	.byte		N16   , Cs2 
	.byte	W16
@ 014   ----------------------------------------
	.byte		VOICE , 87
	.byte		N04   , En2 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        An2 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        Gn2 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        Fs2 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        Gn2 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        Ds2 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        An2 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        Gn2 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        Fs2 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        Gn2 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        Ds2 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
@ 015   ----------------------------------------
	.byte		        En2 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        Gn2 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        Gn2 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		        Ds2 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        Fs2 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        Gn1 
	.byte	W04
	.byte		        Gn2 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        Gn2 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        Cn2 
	.byte	W04
	.byte		        An2 
	.byte	W04
	.byte		        Fs2 
	.byte	W04
	.byte		        Cn2 
	.byte	W04
@ 016   ----------------------------------------
	.byte		        Bn1 
	.byte	W04
	.byte		        Gn2 
	.byte	W04
	.byte		        Dn2 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        Gn2 
	.byte	W04
	.byte		        Dn2 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        Gn1 
	.byte	W04
	.byte		        Gn2 
	.byte	W04
	.byte		        Dn2 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        Fs1 
	.byte	W04
	.byte		        Bn0 
	.byte	W04
	.byte		        An1 
	.byte	W04
	.byte		        Ds1 
	.byte	W04
	.byte		        Cn2 
	.byte	W04
	.byte		        Fs1 
	.byte	W04
	.byte		        Ds2 
	.byte	W04
	.byte		        An1 
	.byte	W04
	.byte		        Fs2 
	.byte	W04
	.byte		        Cn2 
	.byte	W04
	.byte		        An2 
	.byte	W04
	.byte		        Ds2 
	.byte	W04
@ 017   ----------------------------------------
	.byte		N32   , Cn2 , v072
	.byte	W32
	.byte		N16   , Cn2 , v056
	.byte	W16
	.byte		N48   , Ds1 , v072
	.byte	W48
@ 018   ----------------------------------------
	.byte		VOICE , 91
	.byte	W16
	.byte		        65
	.byte		N08   , En3 , v096
	.byte	W08
	.byte		        En3 , v032
	.byte	W08
	.byte		        Ds3 , v096
	.byte	W08
	.byte		N24   , Ds3 , v032
	.byte	W24
	.byte		N08   , Bn2 , v096
	.byte	W08
	.byte		        Gn2 , v032
	.byte	W08
	.byte		        Ds3 , v096
	.byte	W08
	.byte		N24   , Ds3 , v032
	.byte	W08
@ 019   ----------------------------------------
	.byte	PATT
	 .word	ch6g_3_001
@ 020   ----------------------------------------
	.byte	PATT
	 .word	ch6g_3_001
@ 021   ----------------------------------------
	.byte	PATT
	 .word	ch6g_3_001
@ 022   ----------------------------------------
	.byte	PATT
	 .word	ch6g_3_001
@ 023   ----------------------------------------
	.byte	PATT
	 .word	ch6g_3_003
@ 024   ----------------------------------------
	.byte	PATT
	 .word	ch6g_3_004
@ 025   ----------------------------------------
	.byte	PATT
	 .word	ch6g_3_005
@ 026   ----------------------------------------
	.byte	PATT
	 .word	ch6g_3_001
@ 027   ----------------------------------------
	.byte	PATT
	 .word	ch6g_3_003
@ 028   ----------------------------------------
	.byte	PATT
	 .word	ch6g_3_008
@ 029   ----------------------------------------
	.byte	PATT
	 .word	ch6g_3_009
@ 030   ----------------------------------------
	.byte	PATT
	 .word	ch6g_3_010
@ 031   ----------------------------------------
	.byte	PATT
	 .word	ch6g_3_011
@ 032   ----------------------------------------
	.byte	PATT
	 .word	ch6g_3_001
@ 033   ----------------------------------------
	.byte	PATT
	 .word	ch6g_3_001
@ 034   ----------------------------------------
ch6g_3_034:
	.byte	W16
	.byte		N08   , En3 , v096
	.byte	W08
	.byte		        En3 , v032
	.byte	W08
	.byte		        Cs3 , v096
	.byte	W08
	.byte		N24   , Cs3 , v032
	.byte	W24
	.byte		N08   , En3 , v096
	.byte	W08
	.byte		        En3 , v032
	.byte	W08
	.byte		        Ds3 , v096
	.byte	W08
	.byte		N24   , Ds3 , v032
	.byte	W08
	.byte	PEND
@ 035   ----------------------------------------
	.byte	PATT
	 .word	ch6g_3_001
@ 036   ----------------------------------------
	.byte	PATT
	 .word	ch6g_3_034
@ 037   ----------------------------------------
	.byte	PATT
	 .word	ch6g_3_001
@ 038   ----------------------------------------
	.byte	PATT
	 .word	ch6g_3_034
@ 039   ----------------------------------------
	.byte	W16
	.byte		N08   , En3 , v096
	.byte	W08
	.byte		        En3 , v032
	.byte	W08
	.byte		        En2 , v096
	.byte	W08
	.byte		N24   , En2 , v032
	.byte	W24
	.byte		N08   , An2 , v096
	.byte	W08
	.byte		        An2 , v032
	.byte	W08
	.byte		        Dn2 , v096
	.byte	W08
	.byte		N24   , Dn2 , v032
	.byte	W08
@ 040   ----------------------------------------
	.byte	W16
	.byte		N08   , Dn2 , v096
	.byte	W08
	.byte		        Dn2 , v032
	.byte	W08
	.byte		        Bn1 , v096
	.byte	W08
	.byte		N24   , Bn1 , v032
	.byte	W24
	.byte		N08   , En2 , v096
	.byte	W08
	.byte		        En2 , v032
	.byte	W08
	.byte		        Ds2 , v096
	.byte	W08
	.byte		        Ds2 , v032
	.byte	W08
@ 041   ----------------------------------------
	.byte	PATT
	 .word	ch6g_3_000
@ 042   ----------------------------------------
	.byte	W16
	.byte		N08   , En3 , v096
	.byte	W08
	.byte		        En3 , v032
	.byte	W08
	.byte		        Ds3 , v096
	.byte	W08
	.byte		N24   , Ds3 , v032
	.byte	W24
	.byte		N08   , Bn2 , v096
	.byte	W08
	.byte		        Gn2 , v032
	.byte	W08
	.byte		N16   , Ds3 , v127
	.byte	W16
	.byte	GOTO
	 .word	ch6g_3_B1
ch6g_3_B2:
@ 043   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

ch6g_4:
	.byte		VOL   , 127*ch6g_mvl/mxv
	.byte	KEYSH , ch6g_key+0
ch6g_4_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
ch6g_4_002:
	.byte	W16
	.byte		VOICE , 52
	.byte		N08   , Bn2 , v127
	.byte	W08
	.byte		        Cn3 
	.byte	W08
	.byte		        Bn2 
	.byte	W08
	.byte		        Gn2 
	.byte	W08
	.byte		N16   , Fs2 
	.byte	W16
	.byte		N08   , En2 
	.byte	W08
	.byte		N04   , Fs2 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		N32   , Ds2 
	.byte	W16
	.byte	PEND
@ 003   ----------------------------------------
ch6g_4_003:
	.byte	W16
	.byte		N08   , En3 , v127
	.byte	W08
	.byte		        Fs3 
	.byte	W08
	.byte		        Gn3 
	.byte	W08
	.byte		        En3 
	.byte	W08
	.byte		N16   , Fs3 
	.byte	W16
	.byte		        Ds3 
	.byte	W16
	.byte		N32   , Bn2 
	.byte	W16
	.byte	PEND
@ 004   ----------------------------------------
ch6g_4_004:
	.byte	W16
	.byte		N08   , Cn3 , v127
	.byte	W08
	.byte		        Bn2 
	.byte	W08
	.byte		        Cn3 
	.byte	W08
	.byte		        Dn3 
	.byte	W08
	.byte		N16   , Bn2 
	.byte	W16
	.byte		        As2 
	.byte	W16
	.byte		N32   , Bn2 
	.byte	W16
	.byte	PEND
@ 005   ----------------------------------------
ch6g_4_005:
	.byte	W16
	.byte		N08   , Fs2 , v127
	.byte	W08
	.byte		        Fn2 
	.byte	W08
	.byte		        Fs2 
	.byte	W08
	.byte		        Gn2 
	.byte	W08
	.byte		N16   , Fs2 
	.byte	W16
	.byte		N48   , En2 
	.byte	W32
	.byte	PEND
@ 006   ----------------------------------------
ch6g_4_006:
	.byte	W16
	.byte		N08   , Bn2 , v127
	.byte	W08
	.byte		        Cn3 
	.byte	W08
	.byte		        Bn2 
	.byte	W08
	.byte		        Gn2 
	.byte	W08
	.byte		N16   , Fs2 
	.byte	W16
	.byte		N08   , En2 
	.byte	W08
	.byte		N04   , Fs2 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		N32   , Ds2 
	.byte	W16
	.byte	PEND
@ 007   ----------------------------------------
ch6g_4_007:
	.byte	W16
	.byte		N08   , En3 , v127
	.byte	W08
	.byte		        Fs3 
	.byte	W08
	.byte		        Gn3 
	.byte	W08
	.byte		        En3 
	.byte	W08
	.byte		N16   , Fs3 
	.byte	W16
	.byte		        Ds3 
	.byte	W16
	.byte		        Bn2 
	.byte	W16
	.byte	PEND
@ 008   ----------------------------------------
ch6g_4_008:
	.byte		N16   , Cn3 , v127
	.byte	W16
	.byte		        An2 
	.byte	W16
	.byte		        Bn2 
	.byte	W16
	.byte		        Ds3 
	.byte	W16
	.byte		        En3 
	.byte	W16
	.byte		        Fs3 
	.byte	W16
	.byte	PEND
@ 009   ----------------------------------------
ch6g_4_009:
	.byte		N04   , Bn2 , v127
	.byte	W04
	.byte		        Cn3 
	.byte	W04
	.byte		N08   , Bn2 
	.byte	W08
	.byte		        An2 
	.byte	W08
	.byte		        Gs2 
	.byte	W08
	.byte		        An2 
	.byte	W08
	.byte		        Bn2 
	.byte	W08
	.byte		N24   , Cn3 
	.byte	W24
	.byte		N08   , Bn2 
	.byte	W08
	.byte		N16   , En2 
	.byte	W16
	.byte	PEND
@ 010   ----------------------------------------
ch6g_4_010:
	.byte		N24   , Ds2 , v127
	.byte	W24
	.byte		N08   , Fs2 
	.byte	W08
	.byte		        An2 
	.byte	W08
	.byte		        Cn3 
	.byte	W08
	.byte		TIE   , Ds3 
	.byte	W48
	.byte	PEND
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 013   ----------------------------------------
	.byte		VOICE , 91
	.byte		N32   , En0 
	.byte	W32
	.byte		N16   , En0 , v072
	.byte	W16
	.byte		VOICE , 47
	.byte		N08   , Bn1 , v127
	.byte	W08
	.byte		        As1 
	.byte	W08
	.byte		        Bn1 
	.byte	W08
	.byte		        Cn2 
	.byte	W08
	.byte		        Cs2 
	.byte	W08
	.byte		        Ds2 
	.byte	W08
@ 014   ----------------------------------------
	.byte		N96   , En2 
	.byte	W96
@ 015   ----------------------------------------
	.byte		VOICE , 87
	.byte		N04   , Bn2 , v064
	.byte	W04
	.byte		        Ds2 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        Gn2 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        Gn2 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		        Ds2 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        Fs2 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        Gn1 
	.byte	W04
	.byte		        Gn2 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        Gn2 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        Cn2 
	.byte	W04
@ 016   ----------------------------------------
	.byte		        An2 
	.byte	W04
	.byte		        Fs2 
	.byte	W04
	.byte		        Cn2 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        Gn2 
	.byte	W04
	.byte		        Dn2 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        Gn2 
	.byte	W04
	.byte		        Dn2 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        Gn1 
	.byte	W04
	.byte		        Gn2 
	.byte	W04
	.byte		        Dn2 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        Fs1 
	.byte	W04
	.byte		        Bn0 
	.byte	W04
	.byte		        An1 
	.byte	W04
	.byte		        Ds1 
	.byte	W04
	.byte		        Cn2 
	.byte	W04
	.byte		        Fs1 
	.byte	W04
	.byte		        Ds2 
	.byte	W04
	.byte		        An1 
	.byte	W04
	.byte		        Fs2 
	.byte	W04
@ 017   ----------------------------------------
	.byte		N32   , En2 , v072
	.byte	W32
	.byte		N16   , En2 , v056
	.byte	W16
	.byte		N48   , Fs2 , v072
	.byte	W48
@ 018   ----------------------------------------
	.byte		VOICE , 91
	.byte		N24   , En3 , v127
	.byte	W24
	.byte		N08   , Bn2 , v104
	.byte	W08
	.byte		        Gn2 , v096
	.byte	W08
	.byte		        Fs2 , v088
	.byte	W08
	.byte		N24   , En2 , v080
	.byte	W24
	.byte		N08   , Bn1 , v072
	.byte	W08
	.byte		        Gn1 , v064
	.byte	W08
	.byte		        Fs1 , v056
	.byte	W08
@ 019   ----------------------------------------
	.byte		N24   , En1 , v052
	.byte	W24
	.byte		N08   , Bn0 
	.byte	W08
	.byte		        Gn0 , v048
	.byte	W08
	.byte		        Fs0 , v044
	.byte	W56
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	PATT
	 .word	ch6g_4_002
@ 023   ----------------------------------------
	.byte	PATT
	 .word	ch6g_4_003
@ 024   ----------------------------------------
	.byte	PATT
	 .word	ch6g_4_004
@ 025   ----------------------------------------
	.byte	PATT
	 .word	ch6g_4_005
@ 026   ----------------------------------------
	.byte	PATT
	 .word	ch6g_4_006
@ 027   ----------------------------------------
	.byte	PATT
	 .word	ch6g_4_007
@ 028   ----------------------------------------
	.byte	PATT
	 .word	ch6g_4_008
@ 029   ----------------------------------------
	.byte	PATT
	 .word	ch6g_4_009
@ 030   ----------------------------------------
	.byte	PATT
	 .word	ch6g_4_010
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
	.byte		EOT   , Ds3 
@ 033   ----------------------------------------
	.byte		VOICE , 66
	.byte	W16
	.byte		MOD   , 34
	.byte		N24   , En2 , v127
	.byte	W24
	.byte		MOD   , 0
	.byte		N08   , Fs2 
	.byte	W08
	.byte		        Gn2 
	.byte	W08
	.byte		        Bn2 
	.byte	W08
	.byte		MOD   , 34
	.byte		N24   , Gn2 
	.byte	W24
	.byte		MOD   , 0
	.byte		N08   , En2 
	.byte	W08
@ 034   ----------------------------------------
ch6g_4_034:
	.byte		N08   , Fs2 , v127
	.byte	W08
	.byte		        As2 
	.byte	W08
	.byte		MOD   , 34
	.byte		N24   , Fs2 
	.byte	W24
	.byte		MOD   , 0
	.byte		N08   , En2 
	.byte	W08
	.byte		        Ds2 
	.byte	W08
	.byte		        Fs2 
	.byte	W08
	.byte		MOD   , 34
	.byte		N32   , Bn1 
	.byte	W32
	.byte	PEND
@ 035   ----------------------------------------
	.byte		MOD   , 0
	.byte	W16
	.byte		        34
	.byte		N24   , En2 
	.byte	W24
	.byte		MOD   , 0
	.byte		N08   , Fs2 
	.byte	W08
	.byte		        Gn2 
	.byte	W08
	.byte		        Bn2 
	.byte	W08
	.byte		MOD   , 34
	.byte		N24   , Gn2 
	.byte	W24
	.byte		MOD   , 0
	.byte		N08   , Bn2 
	.byte	W08
@ 036   ----------------------------------------
	.byte		        As2 
	.byte	W08
	.byte		        Gs2 
	.byte	W08
	.byte		        As2 
	.byte	W08
	.byte		        Gn2 
	.byte	W08
	.byte		        Fs2 
	.byte	W08
	.byte		        En2 
	.byte	W08
	.byte		MOD   , 34
	.byte		N48   , Fs2 
	.byte	W48
@ 037   ----------------------------------------
	.byte		MOD   , 0
	.byte	W16
	.byte		        34
	.byte		N24   , En2 
	.byte	W24
	.byte		MOD   , 0
	.byte		N08   , Fs2 
	.byte	W08
	.byte		        Gn2 
	.byte	W08
	.byte		        Bn2 
	.byte	W08
	.byte		MOD   , 34
	.byte		N24   , Gn2 
	.byte	W24
	.byte		MOD   , 0
	.byte		N08   , En2 
	.byte	W08
@ 038   ----------------------------------------
	.byte	PATT
	 .word	ch6g_4_034
@ 039   ----------------------------------------
	.byte		MOD   , 0
	.byte	W16
	.byte		N16   , Bn1 , v127
	.byte	W16
	.byte		        En2 
	.byte	W16
	.byte		        Gn2 
	.byte	W16
	.byte		        Fs2 
	.byte	W16
	.byte		        Dn2 
	.byte	W16
@ 040   ----------------------------------------
	.byte	W16
	.byte		N16   
	.byte	W16
	.byte		        Gn2 
	.byte	W16
	.byte		        An2 
	.byte	W16
	.byte		MOD   , 34
	.byte		N32   , Fs2 
	.byte	W32
@ 041   ----------------------------------------
	.byte		VOICE , 5
	.byte		MOD   , 0
	.byte		TIE   , Bn1 
	.byte	W96
@ 042   ----------------------------------------
	.byte	W96
	.byte		EOT   
	.byte	GOTO
	 .word	ch6g_4_B1
ch6g_4_B2:
@ 043   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

ch6g:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	ch6g_pri	@ Priority
	.byte	ch6g_rev	@ Reverb.

	.word	ch6g_grp

	.word	ch6g_1
	.word	ch6g_2
	.word	ch6g_3
	.word	ch6g_4

	.end
