	.include "MPlayDef.s"

	.equ	ch6bt_grp, voicegroup000
	.equ	ch6bt_pri, 128
	.equ	ch6bt_rev, reverb_set+50
	.equ	ch6bt_mvl, 127
	.equ	ch6bt_key, 0
	.equ	ch6bt_tbs, 1
	.equ	ch6bt_exg, 0
	.equ	ch6bt_cmp, 1

	.section .rodata
	.global	ch6bt
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

ch6bt_1:
	.byte		VOL   , 127*ch6bt_mvl/mxv
	.byte	KEYSH , ch6bt_key+0
ch6bt_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 100*ch6bt_tbs/2
	.byte		VOICE , 19
	.byte		N16   , Fs1 , v044
	.byte	W16
	.byte		N04   , Fs1 , v096
	.byte	W04
	.byte		        Fs1 , v048
	.byte	W04
	.byte		N16   , Fs1 , v064
	.byte	W16
	.byte		N04   , Fs1 , v096
	.byte	W04
	.byte		        Fs1 , v048
	.byte	W04
	.byte		N16   , Fs1 , v064
	.byte	W16
	.byte		N04   , Gn1 , v096
	.byte	W04
	.byte		        Gn1 , v048
	.byte	W04
	.byte		N16   , Gn1 , v064
	.byte	W16
	.byte		N04   , Gn1 , v096
	.byte	W04
	.byte		        Gn1 , v048
	.byte	W04
@ 001   ----------------------------------------
ch6bt_1_001:
	.byte		N16   , Gn1 , v064
	.byte	W16
	.byte		N04   , Gn1 , v096
	.byte	W04
	.byte		        Gn1 , v048
	.byte	W04
	.byte		N08   , Gn1 , v064
	.byte	W08
	.byte		N16   , Fs1 , v044
	.byte	W16
	.byte		N04   , Fs1 , v096
	.byte	W04
	.byte		        Fs1 , v048
	.byte	W04
	.byte		N16   , Fs1 , v064
	.byte	W16
	.byte		N04   , Fs1 , v096
	.byte	W04
	.byte		        Fs1 , v048
	.byte	W04
	.byte		N16   , Fs1 , v064
	.byte	W16
	.byte	PEND
@ 002   ----------------------------------------
ch6bt_1_002:
	.byte		N04   , Gn1 , v096
	.byte	W04
	.byte		        Gn1 , v048
	.byte	W04
	.byte		N16   , Gn1 , v064
	.byte	W16
	.byte		N04   , Gn1 , v096
	.byte	W04
	.byte		        Gn1 , v048
	.byte	W04
	.byte		N16   , Gn1 , v064
	.byte	W16
	.byte		N04   , Gn1 , v096
	.byte	W04
	.byte		        Gn1 , v048
	.byte	W04
	.byte		N08   , Gn1 , v064
	.byte	W08
	.byte		N16   , Fs1 , v044
	.byte	W16
	.byte		N04   , Fs1 , v096
	.byte	W04
	.byte		        Fs1 , v048
	.byte	W04
	.byte		N16   , Fs1 , v064
	.byte	W08
	.byte	PEND
@ 003   ----------------------------------------
ch6bt_1_003:
	.byte	W08
	.byte		N04   , Fs1 , v096
	.byte	W04
	.byte		        Fs1 , v048
	.byte	W04
	.byte		N16   , Fs1 , v064
	.byte	W16
	.byte		N04   , Gn1 , v096
	.byte	W04
	.byte		        Gn1 , v048
	.byte	W04
	.byte		N16   , Gn1 , v064
	.byte	W16
	.byte		N04   , Gn1 , v096
	.byte	W04
	.byte		        Gn1 , v048
	.byte	W04
	.byte		N16   , Gn1 , v064
	.byte	W16
	.byte		N04   , Gn1 , v096
	.byte	W04
	.byte		        Gn1 , v048
	.byte	W04
	.byte		N08   , Gn1 , v064
	.byte	W08
	.byte	PEND
@ 004   ----------------------------------------
ch6bt_1_004:
	.byte		N16   , Fs1 , v044
	.byte	W16
	.byte		N04   , Fs1 , v096
	.byte	W04
	.byte		        Fs1 , v048
	.byte	W04
	.byte		N16   , Fs1 , v064
	.byte	W16
	.byte		N04   , Fs1 , v096
	.byte	W04
	.byte		        Fs1 , v048
	.byte	W04
	.byte		N16   , Fs1 , v064
	.byte	W16
	.byte		N04   , Gn1 , v096
	.byte	W04
	.byte		        Gn1 , v048
	.byte	W04
	.byte		N16   , Gn1 , v064
	.byte	W16
	.byte		N04   , Gn1 , v096
	.byte	W04
	.byte		        Gn1 , v048
	.byte	W04
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	ch6bt_1_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	ch6bt_1_002
@ 007   ----------------------------------------
ch6bt_1_007:
	.byte	W08
	.byte		N04   , Fs1 , v096
	.byte	W04
	.byte		        Fs1 , v048
	.byte	W04
	.byte		N16   , Fs1 , v064
	.byte	W16
	.byte		N04   , Fs1 , v096
	.byte	W04
	.byte		        Fs1 , v048
	.byte	W04
	.byte		N16   , Fs1 , v064
	.byte	W16
	.byte		N04   , Fs1 , v096
	.byte	W04
	.byte		        Fs1 , v048
	.byte	W04
	.byte		N16   , Fs1 , v064
	.byte	W16
	.byte		N04   , Fs1 , v096
	.byte	W04
	.byte		        Fs1 , v048
	.byte	W04
	.byte		N08   , Fs1 , v064
	.byte	W08
	.byte	PEND
@ 008   ----------------------------------------
	.byte	PATT
	 .word	ch6bt_1_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	ch6bt_1_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	ch6bt_1_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	ch6bt_1_003
@ 012   ----------------------------------------
	.byte		N16   , Fs1 , v044
	.byte	W16
	.byte		N04   , Fs1 , v096
	.byte	W04
	.byte		        Fs1 , v048
	.byte	W04
	.byte		N16   , Fs1 , v064
	.byte	W16
	.byte		N04   , Fs1 , v096
	.byte	W04
	.byte		        Fs1 , v048
	.byte	W04
	.byte		N16   , Fs1 , v064
	.byte	W16
	.byte		N04   , Fs1 , v096
	.byte	W04
	.byte		        Fs1 , v048
	.byte	W04
	.byte		N16   , Fs1 , v064
	.byte	W16
	.byte		N04   , Fs1 , v096
	.byte	W04
	.byte		        Fs1 , v048
	.byte	W04
@ 013   ----------------------------------------
	.byte		N16   , Fs1 , v064
	.byte	W16
	.byte		N04   , Fs1 , v096
	.byte	W04
	.byte		        Fs1 , v048
	.byte	W04
	.byte		N08   , Fs1 , v064
	.byte	W08
	.byte		VOICE , 36
	.byte		N32   , Fs1 , v048
	.byte	W32
	.byte		N32   
	.byte	W32
@ 014   ----------------------------------------
	.byte		N32   
	.byte	W32
	.byte		N32   
	.byte	W32
	.byte		        Gs1 
	.byte	W32
@ 015   ----------------------------------------
	.byte		N32   
	.byte	W32
	.byte		N32   
	.byte	W32
	.byte		N32   
	.byte	W32
@ 016   ----------------------------------------
	.byte		        Fs1 
	.byte	W32
	.byte		N32   
	.byte	W32
	.byte		N32   
	.byte	W32
@ 017   ----------------------------------------
	.byte		N32   
	.byte	W32
	.byte		        An1 
	.byte	W32
	.byte		N32   
	.byte	W32
@ 018   ----------------------------------------
	.byte		N32   
	.byte	W32
	.byte		N32   
	.byte	W32
	.byte		VOICE , 19
	.byte		N16   , Fs1 , v044
	.byte	W16
	.byte		N04   , Fs1 , v096
	.byte	W04
	.byte		        Fs1 , v048
	.byte	W04
	.byte		N16   , Fs1 , v064
	.byte	W08
@ 019   ----------------------------------------
	.byte	PATT
	 .word	ch6bt_1_003
@ 020   ----------------------------------------
	.byte	PATT
	 .word	ch6bt_1_004
@ 021   ----------------------------------------
	.byte	PATT
	 .word	ch6bt_1_001
@ 022   ----------------------------------------
	.byte	PATT
	 .word	ch6bt_1_002
@ 023   ----------------------------------------
	.byte	PATT
	 .word	ch6bt_1_007
	.byte	GOTO
	 .word	ch6bt_1_B1
ch6bt_1_B2:
@ 024   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

ch6bt_2:
	.byte		VOL   , 127*ch6bt_mvl/mxv
	.byte	KEYSH , ch6bt_key+0
ch6bt_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 19
	.byte		N16   , As1 , v044
	.byte	W16
	.byte		N04   , As1 , v096
	.byte	W04
	.byte		        As1 , v048
	.byte	W04
	.byte		N16   , As1 , v064
	.byte	W16
	.byte		N04   , As1 , v096
	.byte	W04
	.byte		        As1 , v048
	.byte	W04
	.byte		N16   , As1 , v064
	.byte	W16
	.byte		N04   , Bn1 , v096
	.byte	W04
	.byte		        Bn1 , v048
	.byte	W04
	.byte		N16   , Bn1 , v064
	.byte	W16
	.byte		N04   , Bn1 , v096
	.byte	W04
	.byte		        Bn1 , v048
	.byte	W04
@ 001   ----------------------------------------
ch6bt_2_001:
	.byte		N16   , Bn1 , v064
	.byte	W16
	.byte		N04   , Bn1 , v096
	.byte	W04
	.byte		        Bn1 , v048
	.byte	W04
	.byte		N08   , Bn1 , v064
	.byte	W08
	.byte		N16   , As1 , v044
	.byte	W16
	.byte		N04   , As1 , v096
	.byte	W04
	.byte		        As1 , v048
	.byte	W04
	.byte		N16   , As1 , v064
	.byte	W16
	.byte		N04   , As1 , v096
	.byte	W04
	.byte		        As1 , v048
	.byte	W04
	.byte		N16   , As1 , v064
	.byte	W16
	.byte	PEND
@ 002   ----------------------------------------
ch6bt_2_002:
	.byte		N04   , Bn1 , v096
	.byte	W04
	.byte		        Bn1 , v048
	.byte	W04
	.byte		N16   , Bn1 , v064
	.byte	W16
	.byte		N04   , Bn1 , v096
	.byte	W04
	.byte		        Bn1 , v048
	.byte	W04
	.byte		N16   , Bn1 , v064
	.byte	W16
	.byte		N04   , Bn1 , v096
	.byte	W04
	.byte		        Bn1 , v048
	.byte	W04
	.byte		N08   , Bn1 , v064
	.byte	W08
	.byte		N16   , As1 , v044
	.byte	W16
	.byte		N04   , As1 , v096
	.byte	W04
	.byte		        As1 , v048
	.byte	W04
	.byte		N16   , As1 , v064
	.byte	W08
	.byte	PEND
@ 003   ----------------------------------------
ch6bt_2_003:
	.byte	W08
	.byte		N04   , As1 , v096
	.byte	W04
	.byte		        As1 , v048
	.byte	W04
	.byte		N16   , As1 , v064
	.byte	W16
	.byte		N04   , Bn1 , v096
	.byte	W04
	.byte		        Bn1 , v048
	.byte	W04
	.byte		N16   , Bn1 , v064
	.byte	W16
	.byte		N04   , Bn1 , v096
	.byte	W04
	.byte		        Bn1 , v048
	.byte	W04
	.byte		N16   , Bn1 , v064
	.byte	W16
	.byte		N04   , Bn1 , v096
	.byte	W04
	.byte		        Bn1 , v048
	.byte	W04
	.byte		N08   , Bn1 , v064
	.byte	W08
	.byte	PEND
@ 004   ----------------------------------------
ch6bt_2_004:
	.byte		N16   , As1 , v044
	.byte	W16
	.byte		N04   , As1 , v096
	.byte	W04
	.byte		        As1 , v048
	.byte	W04
	.byte		N16   , As1 , v064
	.byte	W16
	.byte		N04   , As1 , v096
	.byte	W04
	.byte		        As1 , v048
	.byte	W04
	.byte		N16   , As1 , v064
	.byte	W16
	.byte		N04   , Bn1 , v096
	.byte	W04
	.byte		        Bn1 , v048
	.byte	W04
	.byte		N16   , Bn1 , v064
	.byte	W16
	.byte		N04   , Bn1 , v096
	.byte	W04
	.byte		        Bn1 , v048
	.byte	W04
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	ch6bt_2_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	ch6bt_2_002
@ 007   ----------------------------------------
ch6bt_2_007:
	.byte	W08
	.byte		N04   , As1 , v096
	.byte	W04
	.byte		        As1 , v048
	.byte	W04
	.byte		N16   , As1 , v064
	.byte	W16
	.byte		N04   , As1 , v096
	.byte	W04
	.byte		        As1 , v048
	.byte	W04
	.byte		N16   , As1 , v064
	.byte	W16
	.byte		N04   , As1 , v096
	.byte	W04
	.byte		        As1 , v048
	.byte	W04
	.byte		N16   , As1 , v064
	.byte	W16
	.byte		N04   , As1 , v096
	.byte	W04
	.byte		        As1 , v048
	.byte	W04
	.byte		N08   , As1 , v064
	.byte	W08
	.byte	PEND
@ 008   ----------------------------------------
	.byte	PATT
	 .word	ch6bt_2_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	ch6bt_2_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	ch6bt_2_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	ch6bt_2_003
@ 012   ----------------------------------------
	.byte		N16   , As1 , v044
	.byte	W16
	.byte		N04   , As1 , v096
	.byte	W04
	.byte		        As1 , v048
	.byte	W04
	.byte		N16   , As1 , v064
	.byte	W16
	.byte		N04   , As1 , v096
	.byte	W04
	.byte		        As1 , v048
	.byte	W04
	.byte		N16   , As1 , v064
	.byte	W16
	.byte		N04   , As1 , v096
	.byte	W04
	.byte		        As1 , v048
	.byte	W04
	.byte		N16   , As1 , v064
	.byte	W16
	.byte		N04   , As1 , v096
	.byte	W04
	.byte		        As1 , v048
	.byte	W04
@ 013   ----------------------------------------
	.byte		N16   , As1 , v064
	.byte	W16
	.byte		N04   , As1 , v096
	.byte	W04
	.byte		        As1 , v048
	.byte	W04
	.byte		N08   , As1 , v064
	.byte	W08
	.byte		VOICE , 36
	.byte		N32   , Bn1 , v048
	.byte	W32
	.byte		N32   
	.byte	W32
@ 014   ----------------------------------------
ch6bt_2_014:
	.byte		N32   , Bn1 , v048
	.byte	W32
	.byte		N32   
	.byte	W32
	.byte		N32   
	.byte	W32
	.byte	PEND
@ 015   ----------------------------------------
	.byte	PATT
	 .word	ch6bt_2_014
@ 016   ----------------------------------------
	.byte	PATT
	 .word	ch6bt_2_014
@ 017   ----------------------------------------
	.byte		N32   , Bn1 , v048
	.byte	W32
	.byte		        Cs2 
	.byte	W32
	.byte		N32   
	.byte	W32
@ 018   ----------------------------------------
	.byte		N32   
	.byte	W32
	.byte		N32   
	.byte	W32
	.byte		VOICE , 19
	.byte		N16   , As1 , v044
	.byte	W16
	.byte		N04   , As1 , v096
	.byte	W04
	.byte		        As1 , v048
	.byte	W04
	.byte		N16   , As1 , v064
	.byte	W08
@ 019   ----------------------------------------
	.byte	PATT
	 .word	ch6bt_2_003
@ 020   ----------------------------------------
	.byte	PATT
	 .word	ch6bt_2_004
@ 021   ----------------------------------------
	.byte	PATT
	 .word	ch6bt_2_001
@ 022   ----------------------------------------
	.byte	PATT
	 .word	ch6bt_2_002
@ 023   ----------------------------------------
	.byte	PATT
	 .word	ch6bt_2_007
	.byte	GOTO
	 .word	ch6bt_2_B1
ch6bt_2_B2:
@ 024   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

ch6bt_3:
	.byte		VOL   , 127*ch6bt_mvl/mxv
	.byte	KEYSH , ch6bt_key+0
ch6bt_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 16
	.byte		N16   , Bn1 , v060
	.byte	W16
	.byte		N08   , Bn1 , v064
	.byte	W08
	.byte		N04   , Fs2 , v060
	.byte	W04
	.byte		        Fs2 , v048
	.byte	W04
	.byte		N08   , Fs2 , v060
	.byte	W08
	.byte		        Fs2 , v064
	.byte	W08
	.byte		        Fs2 , v048
	.byte	W08
	.byte		        Cn2 , v060
	.byte	W08
	.byte		        Cn2 , v064
	.byte	W08
	.byte		        Cn2 , v060
	.byte	W08
	.byte		        Cn2 , v064
	.byte	W08
	.byte		N04   , Gn2 , v060
	.byte	W04
	.byte		        Gn2 , v048
	.byte	W04
@ 001   ----------------------------------------
ch6bt_3_001:
	.byte		N08   , Gn2 , v060
	.byte	W08
	.byte		        Gn2 , v064
	.byte	W08
	.byte		N16   , As1 , v060
	.byte	W16
	.byte		        Bn1 
	.byte	W16
	.byte		N08   , Bn1 , v064
	.byte	W08
	.byte		N04   , Fs2 , v060
	.byte	W04
	.byte		        Fs2 , v048
	.byte	W04
	.byte		N08   , Fs2 , v060
	.byte	W08
	.byte		        Fs2 , v064
	.byte	W08
	.byte		        Fs2 , v048
	.byte	W08
	.byte		        Cn2 , v060
	.byte	W08
	.byte	PEND
@ 002   ----------------------------------------
ch6bt_3_002:
	.byte		N08   , Cn2 , v064
	.byte	W08
	.byte		        Cn2 , v060
	.byte	W08
	.byte		        Cn2 , v064
	.byte	W08
	.byte		N04   , Gn2 , v060
	.byte	W04
	.byte		        Gn2 , v048
	.byte	W04
	.byte		N08   , Gn2 , v060
	.byte	W08
	.byte		        Gn2 , v064
	.byte	W08
	.byte		N16   , As1 , v060
	.byte	W16
	.byte		        Bn1 
	.byte	W16
	.byte		N08   , Bn1 , v064
	.byte	W08
	.byte		N04   , Fs2 , v060
	.byte	W04
	.byte		        Fs2 , v048
	.byte	W04
	.byte	PEND
@ 003   ----------------------------------------
ch6bt_3_003:
	.byte		N08   , Fs2 , v060
	.byte	W08
	.byte		        Fs2 , v064
	.byte	W08
	.byte		        Fs2 , v048
	.byte	W08
	.byte		        Cn2 , v060
	.byte	W08
	.byte		        Cn2 , v064
	.byte	W08
	.byte		        Cn2 , v060
	.byte	W08
	.byte		        Cn2 , v064
	.byte	W08
	.byte		N04   , Gn2 , v060
	.byte	W04
	.byte		        Gn2 , v048
	.byte	W04
	.byte		N08   , Gn2 , v060
	.byte	W08
	.byte		        Gn2 , v064
	.byte	W08
	.byte		N16   , As1 , v060
	.byte	W16
	.byte	PEND
@ 004   ----------------------------------------
ch6bt_3_004:
	.byte		N16   , Bn1 , v060
	.byte	W16
	.byte		N08   , Bn1 , v064
	.byte	W08
	.byte		N04   , Fs2 , v060
	.byte	W04
	.byte		        Fs2 , v048
	.byte	W04
	.byte		N08   , Fs2 , v060
	.byte	W08
	.byte		        Fs2 , v064
	.byte	W08
	.byte		        Fs2 , v048
	.byte	W08
	.byte		        Cn2 , v060
	.byte	W08
	.byte		        Cn2 , v064
	.byte	W08
	.byte		        Cn2 , v060
	.byte	W08
	.byte		        Cn2 , v064
	.byte	W08
	.byte		N04   , Gn2 , v060
	.byte	W04
	.byte		        Gn2 , v048
	.byte	W04
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	ch6bt_3_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	ch6bt_3_002
@ 007   ----------------------------------------
ch6bt_3_007:
	.byte		N08   , Fs2 , v060
	.byte	W08
	.byte		        Fs2 , v064
	.byte	W08
	.byte		        Fs2 , v048
	.byte	W08
	.byte		        Bn1 , v060
	.byte	W08
	.byte		        Bn1 , v064
	.byte	W08
	.byte		        Bn1 , v060
	.byte	W08
	.byte		        Bn1 , v064
	.byte	W08
	.byte		N04   , Fs2 , v060
	.byte	W04
	.byte		        Fs2 , v048
	.byte	W04
	.byte		N08   , Fs2 , v060
	.byte	W08
	.byte		        Fs2 , v064
	.byte	W08
	.byte		N16   , Fs1 , v060
	.byte	W16
	.byte	PEND
@ 008   ----------------------------------------
	.byte	PATT
	 .word	ch6bt_3_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	ch6bt_3_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	ch6bt_3_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	ch6bt_3_003
@ 012   ----------------------------------------
	.byte		N16   , Bn1 , v060
	.byte	W16
	.byte		N08   , Bn1 , v064
	.byte	W08
	.byte		N04   , Fs2 , v060
	.byte	W04
	.byte		        Fs2 , v048
	.byte	W04
	.byte		N08   , Fs2 , v060
	.byte	W08
	.byte		        Fs2 , v064
	.byte	W08
	.byte		        Fs2 , v048
	.byte	W08
	.byte		        Bn1 , v060
	.byte	W08
	.byte		        Bn1 , v064
	.byte	W08
	.byte		        Bn1 , v060
	.byte	W08
	.byte		        Bn1 , v064
	.byte	W08
	.byte		N04   , Fs2 , v060
	.byte	W04
	.byte		        Fs2 , v048
	.byte	W04
@ 013   ----------------------------------------
	.byte		N08   , Fs2 , v060
	.byte	W08
	.byte		        Fs2 , v064
	.byte	W08
	.byte		N16   , As1 , v060
	.byte	W16
	.byte		        Gs1 
	.byte	W16
	.byte		N08   , Gs1 , v064
	.byte	W08
	.byte		N04   , Ds2 , v060
	.byte	W04
	.byte		        Ds2 , v048
	.byte	W04
	.byte		N08   , Ds2 , v060
	.byte	W08
	.byte		        Ds2 , v064
	.byte	W08
	.byte		        Ds2 , v048
	.byte	W08
	.byte		        Gs1 , v060
	.byte	W08
@ 014   ----------------------------------------
	.byte		        Gs1 , v064
	.byte	W08
	.byte		        Gs1 , v060
	.byte	W08
	.byte		        Gs1 , v064
	.byte	W08
	.byte		N04   , Ds2 , v060
	.byte	W04
	.byte		        Ds2 , v048
	.byte	W04
	.byte		N08   , Ds2 , v060
	.byte	W08
	.byte		        Ds2 , v064
	.byte	W08
	.byte		N16   , Ds1 , v060
	.byte	W16
	.byte		        En1 
	.byte	W16
	.byte		N08   , En1 , v064
	.byte	W08
	.byte		N04   , Bn1 , v060
	.byte	W04
	.byte		        Bn1 , v048
	.byte	W04
@ 015   ----------------------------------------
	.byte		N08   , Bn1 , v060
	.byte	W08
	.byte		        Bn1 , v064
	.byte	W08
	.byte		        Bn1 , v048
	.byte	W08
	.byte		        En1 , v060
	.byte	W08
	.byte		        En1 , v064
	.byte	W08
	.byte		        En1 , v060
	.byte	W08
	.byte		        En1 , v064
	.byte	W08
	.byte		N04   , Bn1 , v060
	.byte	W04
	.byte		        Bn1 , v048
	.byte	W04
	.byte		N08   , Bn1 , v060
	.byte	W08
	.byte		        Bn1 , v064
	.byte	W08
	.byte		N16   , En1 , v060
	.byte	W16
@ 016   ----------------------------------------
	.byte		        Gs1 
	.byte	W16
	.byte		N08   , Gs1 , v064
	.byte	W08
	.byte		N04   , Ds2 , v060
	.byte	W04
	.byte		        Ds2 , v048
	.byte	W04
	.byte		N08   , Ds2 , v060
	.byte	W08
	.byte		        Ds2 , v064
	.byte	W08
	.byte		        Ds2 , v048
	.byte	W08
	.byte		        Gs1 , v060
	.byte	W08
	.byte		        Gs1 , v064
	.byte	W08
	.byte		        Gs1 , v060
	.byte	W08
	.byte		        Gs1 , v064
	.byte	W08
	.byte		N04   , Ds2 , v060
	.byte	W04
	.byte		        Ds2 , v048
	.byte	W04
@ 017   ----------------------------------------
	.byte		N08   , Ds2 , v060
	.byte	W08
	.byte		        Ds2 , v064
	.byte	W08
	.byte		N16   , Ds1 , v060
	.byte	W16
	.byte		        An1 
	.byte	W16
	.byte		N08   , An1 , v064
	.byte	W08
	.byte		N04   , En2 , v060
	.byte	W04
	.byte		        En2 , v048
	.byte	W04
	.byte		N08   , En2 , v060
	.byte	W08
	.byte		        En2 , v064
	.byte	W08
	.byte		        En2 , v048
	.byte	W08
	.byte		        An1 , v060
	.byte	W08
@ 018   ----------------------------------------
	.byte		        An1 , v064
	.byte	W08
	.byte		        An1 , v060
	.byte	W08
	.byte		        An1 , v064
	.byte	W08
	.byte		N04   , En2 , v060
	.byte	W04
	.byte		        En2 , v048
	.byte	W04
	.byte		N08   , En2 , v060
	.byte	W08
	.byte		        En2 , v064
	.byte	W08
	.byte		N16   , An1 , v060
	.byte	W16
	.byte		        Bn1 
	.byte	W16
	.byte		N08   , Bn1 , v064
	.byte	W08
	.byte		N04   , Fs2 , v060
	.byte	W04
	.byte		        Fs2 , v048
	.byte	W04
@ 019   ----------------------------------------
	.byte	PATT
	 .word	ch6bt_3_003
@ 020   ----------------------------------------
	.byte	PATT
	 .word	ch6bt_3_004
@ 021   ----------------------------------------
	.byte	PATT
	 .word	ch6bt_3_001
@ 022   ----------------------------------------
	.byte	PATT
	 .word	ch6bt_3_002
@ 023   ----------------------------------------
	.byte	PATT
	 .word	ch6bt_3_007
	.byte	GOTO
	 .word	ch6bt_3_B1
ch6bt_3_B2:
@ 024   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

ch6bt_4:
	.byte		VOL   , 127*ch6bt_mvl/mxv
	.byte	KEYSH , ch6bt_key+0
ch6bt_4_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W56
	.byte		        36
	.byte		N04   , En2 , v127
	.byte	W04
	.byte		        Fn2 
	.byte	W04
	.byte		        Fs2 
	.byte	W04
	.byte		        Fs2 , v044
	.byte	W04
	.byte		N08   , Fs2 , v127
	.byte	W08
	.byte		        Fs2 , v056
	.byte	W08
	.byte		        Fs2 , v127
	.byte	W08
@ 003   ----------------------------------------
	.byte		        Fs2 , v056
	.byte	W08
	.byte		        Fs2 , v040
	.byte	W52
	.byte		N04   , Fs2 , v127
	.byte	W04
	.byte		N08   , An2 
	.byte	W08
	.byte		N04   , An2 , v048
	.byte	W04
	.byte		N08   , Fs2 , v127
	.byte	W08
	.byte		N04   , Fs2 , v048
	.byte	W04
	.byte		N08   , En2 , v127
	.byte	W08
@ 004   ----------------------------------------
	.byte		        Ds2 
	.byte	W08
	.byte		N04   , Ds2 , v048
	.byte	W04
	.byte		        Dn2 , v127
	.byte	W04
	.byte		N08   , Ds2 
	.byte	W08
	.byte		        Ds2 , v048
	.byte	W64
	.byte		N04   , Fs2 , v127
	.byte	W04
	.byte		N04   
	.byte	W04
@ 005   ----------------------------------------
	.byte		N08   , En2 
	.byte	W08
	.byte		N04   , En2 , v048
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v048
	.byte	W04
	.byte		N08   , En2 , v127
	.byte	W08
	.byte		MOD   , 34
	.byte		N16   , Ds2 
	.byte	W16
	.byte		MOD   , 0
	.byte		N04   , En2 
	.byte	W04
	.byte		N08   , Ds2 
	.byte	W08
	.byte		        Ds2 , v052
	.byte	W08
	.byte		        Ds2 , v040
	.byte	W20
	.byte		N04   , En2 , v127
	.byte	W04
	.byte		        Ds2 
	.byte	W04
@ 006   ----------------------------------------
	.byte		N08   , Dn2 
	.byte	W08
	.byte		        Dn2 , v052
	.byte	W08
	.byte		        Dn2 , v040
	.byte	W08
	.byte		N04   , An1 , v127
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N08   , Dn2 
	.byte	W08
	.byte		N04   , Dn2 , v052
	.byte	W04
	.byte		N08   , An1 , v127
	.byte	W08
	.byte		N04   , An1 , v052
	.byte	W04
	.byte		N08   , Dn2 , v127
	.byte	W08
	.byte		        Cs2 
	.byte	W08
	.byte		N12   , Cs2 , v052
	.byte	W12
	.byte		N04   , Dn2 , v127
	.byte	W04
	.byte		N08   , Cs2 
	.byte	W08
@ 007   ----------------------------------------
	.byte		        Cs2 , v052
	.byte	W08
	.byte		        Cs2 , v040
	.byte	W88
@ 008   ----------------------------------------
	.byte		N04   , Fs2 , v127
	.byte	W04
	.byte		        Fs2 , v044
	.byte	W04
	.byte		N08   , Fs2 , v127
	.byte	W08
	.byte		        Fs2 , v056
	.byte	W08
	.byte		        Fs2 , v127
	.byte	W08
	.byte		        Fs2 , v056
	.byte	W08
	.byte		        Fs2 , v040
	.byte	W52
	.byte		N04   , Fs2 , v127
	.byte	W04
@ 009   ----------------------------------------
	.byte		N08   , An2 
	.byte	W08
	.byte		N04   , An2 , v048
	.byte	W04
	.byte		N08   , Fs2 , v127
	.byte	W08
	.byte		N04   , Fs2 , v048
	.byte	W04
	.byte		N08   , En2 , v127
	.byte	W08
	.byte		        Ds2 
	.byte	W08
	.byte		N04   , Ds2 , v048
	.byte	W04
	.byte		        Dn2 , v127
	.byte	W04
	.byte		N08   , Ds2 
	.byte	W08
	.byte		        Ds2 , v048
	.byte	W40
@ 010   ----------------------------------------
	.byte	W24
	.byte		N04   , Fs2 , v127
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N08   , En2 
	.byte	W08
	.byte		N04   , En2 , v048
	.byte	W04
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N04   , Cn2 , v048
	.byte	W04
	.byte		N08   , En2 , v127
	.byte	W08
	.byte		MOD   , 34
	.byte		N16   , Ds2 
	.byte	W16
	.byte		MOD   , 0
	.byte		N04   , En2 
	.byte	W04
	.byte		N08   , Ds2 
	.byte	W08
	.byte		        Ds2 , v052
	.byte	W04
@ 011   ----------------------------------------
	.byte	W04
	.byte		        Ds2 , v040
	.byte	W20
	.byte		N04   , En2 , v127
	.byte	W04
	.byte		        Ds2 
	.byte	W04
	.byte		N08   , Dn2 
	.byte	W08
	.byte		        Dn2 , v052
	.byte	W08
	.byte		        Dn2 , v040
	.byte	W08
	.byte		N04   , An1 , v127
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N08   , Dn2 
	.byte	W08
	.byte		N04   , Dn2 , v052
	.byte	W04
	.byte		N08   , An1 , v127
	.byte	W08
	.byte		N04   , An1 , v052
	.byte	W04
	.byte		N08   , Dn2 , v127
	.byte	W08
@ 012   ----------------------------------------
	.byte		        Cs2 
	.byte	W08
	.byte		N12   , Cs2 , v052
	.byte	W12
	.byte		N04   , Dn2 , v127
	.byte	W04
	.byte		N08   , Cs2 
	.byte	W08
	.byte		        Cs2 , v052
	.byte	W08
	.byte		        Cs2 , v040
	.byte	W56
@ 013   ----------------------------------------
	.byte	W56
	.byte		VOICE , 90
	.byte		MOD   , 34
	.byte		N16   , Fs2 , v127
	.byte	W16
	.byte		MOD   , 0
	.byte		N16   , Ds2 
	.byte	W16
	.byte		N08   , Dn2 
	.byte	W08
@ 014   ----------------------------------------
	.byte		        Ds2 
	.byte	W08
	.byte		        Bn1 
	.byte	W08
	.byte		        Gs1 
	.byte	W08
	.byte		        Ds1 
	.byte	W08
	.byte		        Dn1 
	.byte	W08
	.byte		        Fs1 
	.byte	W08
	.byte		        Bn1 
	.byte	W08
	.byte		        Ds2 
	.byte	W08
	.byte		        Dn2 
	.byte	W08
	.byte		        Fs2 
	.byte	W08
	.byte		        An2 
	.byte	W08
	.byte		MOD   , 34
	.byte		N16   , Gs2 
	.byte	W08
@ 015   ----------------------------------------
	.byte	W08
	.byte		MOD   , 0
	.byte		N04   , An2 
	.byte	W04
	.byte		        Gs2 
	.byte	W04
	.byte		N08   , En2 
	.byte	W08
	.byte		        Bn1 
	.byte	W08
	.byte		        Dn2 
	.byte	W08
	.byte		        Cs2 
	.byte	W08
	.byte		        Bn1 
	.byte	W08
	.byte		MOD   , 34
	.byte		N32   , Gs1 
	.byte	W32
	.byte		MOD   , 0
	.byte		N16   , As1 
	.byte	W08
@ 016   ----------------------------------------
	.byte	W08
	.byte		N08   , Bn1 
	.byte	W08
	.byte		        Gs1 
	.byte	W08
	.byte		        Ds1 
	.byte	W08
	.byte		        As1 
	.byte	W08
	.byte		        Cs2 
	.byte	W08
	.byte		        As1 
	.byte	W08
	.byte		        Fs1 
	.byte	W08
	.byte		        Bn1 
	.byte	W08
	.byte		        Fs2 
	.byte	W08
	.byte		        Ds2 
	.byte	W08
	.byte		MOD   , 34
	.byte		N40   , Cs2 
	.byte	W08
@ 017   ----------------------------------------
	.byte	W32
	.byte		MOD   , 0
	.byte		N08   , Cs2 , v048
	.byte	W08
	.byte		MOD   , 34
	.byte		N12   , Fs2 , v127
	.byte	W12
	.byte		MOD   , 0
	.byte		N12   , Ds2 
	.byte	W12
	.byte		MOD   , 34
	.byte		N12   , En2 
	.byte	W12
	.byte		MOD   , 0
	.byte		N12   , Bn1 
	.byte	W12
	.byte		N08   , Gs1 
	.byte	W08
@ 018   ----------------------------------------
	.byte		MOD   , 34
	.byte		N12   , An1 
	.byte	W12
	.byte		MOD   , 0
	.byte		N12   , En2 
	.byte	W12
	.byte		N08   , Bn1 
	.byte	W08
	.byte		MOD   , 34
	.byte		N08   , Cs2 
	.byte	W08
	.byte		MOD   , 0
	.byte		N08   , An1 
	.byte	W08
	.byte		        En1 
	.byte	W08
	.byte		        Cs1 
	.byte	W08
	.byte		MOD   , 34
	.byte		N56   , Ds1 
	.byte	W32
@ 019   ----------------------------------------
	.byte	W24
	.byte		MOD   , 0
	.byte		N48   , Dn1 
	.byte	W48
	.byte		N12   , Gn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
@ 020   ----------------------------------------
	.byte		MOD   , 34
	.byte		N56   , Fs1 
	.byte	W56
	.byte		MOD   , 0
	.byte		N72   , En1 
	.byte	W40
@ 021   ----------------------------------------
	.byte	W32
	.byte		MOD   , 34
	.byte		N36   , Fs1 
	.byte	W36
	.byte		MOD   , 0
	.byte		N04   , As1 
	.byte	W04
	.byte		N16   , Fs1 
	.byte	W16
	.byte		MOD   , 34
	.byte		N44   , En1 
	.byte	W08
@ 022   ----------------------------------------
	.byte	W36
	.byte		MOD   , 0
	.byte		N04   , Gn1 
	.byte	W04
	.byte		N16   , En1 
	.byte	W16
	.byte		MOD   , 34
	.byte		N64   , Ds1 
	.byte	W40
@ 023   ----------------------------------------
	.byte	W24
	.byte		MOD   , 34
	.byte		N24   , Ds1 , v072
	.byte	W24
	.byte		MOD   , 34
	.byte		N24   , Ds1 , v052
	.byte	W24
	.byte		MOD   , 34
	.byte		N16   , Ds1 , v044
	.byte	W16
	.byte		MOD   , 0
	.byte	W08
	.byte	GOTO
	 .word	ch6bt_4_B1
ch6bt_4_B2:
@ 024   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

ch6bt:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	ch6bt_pri	@ Priority
	.byte	ch6bt_rev	@ Reverb.

	.word	ch6bt_grp

	.word	ch6bt_1
	.word	ch6bt_2
	.word	ch6bt_3
	.word	ch6bt_4

	.end
