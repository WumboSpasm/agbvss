	.include "MPlayDef.s"

	.equ	ch2b_grp, voicegroup000
	.equ	ch2b_pri, 128
	.equ	ch2b_rev, reverb_set+50
	.equ	ch2b_mvl, 127
	.equ	ch2b_key, 0
	.equ	ch2b_tbs, 1
	.equ	ch2b_exg, 0
	.equ	ch2b_cmp, 1

	.section .rodata
	.global	ch2b
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

ch2b_1:
	.byte		VOL   , 127*ch2b_mvl/mxv
	.byte	KEYSH , ch2b_key+0
ch2b_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 100*ch2b_tbs/2
	.byte		VOICE , 37
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		N08   
	.byte	W08
	.byte		N04   
	.byte	W04
	.byte		N12   
	.byte	W12
	.byte		N08   
	.byte	W08
	.byte		N04   
	.byte	W04
	.byte		N12   
	.byte	W12
	.byte		N08   
	.byte	W08
	.byte		N04   
	.byte	W04
	.byte		N08   
	.byte	W08
	.byte		N04   
	.byte	W04
	.byte		N08   
	.byte	W08
	.byte		N04   
	.byte	W04
@ 001   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N08   
	.byte	W08
	.byte		N04   
	.byte	W04
	.byte		N12   
	.byte	W12
	.byte		N08   
	.byte	W08
	.byte		N04   
	.byte	W04
	.byte		N12   
	.byte	W12
	.byte		N08   
	.byte	W08
	.byte		N04   
	.byte	W04
	.byte		N08   
	.byte	W08
	.byte		N04   
	.byte	W04
	.byte		N12   
	.byte	W12
	.byte	GOTO
	 .word	ch2b_1_B1
ch2b_1_B2:
@ 002   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

ch2b_2:
	.byte		VOL   , 127*ch2b_mvl/mxv
	.byte	KEYSH , ch2b_key+0
ch2b_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 16
	.byte		N08   , Cn1 , v127
	.byte	W08
	.byte		N04   , Cn1 , v064
	.byte	W04
	.byte		N08   , Cs1 , v127
	.byte	W08
	.byte		N04   , Cs1 , v064
	.byte	W04
	.byte		N08   , Cn1 , v127
	.byte	W08
	.byte		N04   , Cn1 , v064
	.byte	W04
	.byte		N08   , Cs1 , v127
	.byte	W08
	.byte		        Cn1 
	.byte	W08
	.byte		N04   , Cn1 , v064
	.byte	W04
	.byte		        Cn1 , v127
	.byte	W04
	.byte		N08   , Cs1 
	.byte	W08
	.byte		N04   , Cs1 , v064
	.byte	W04
	.byte		N08   , Cn1 , v127
	.byte	W08
	.byte		N04   , Cn1 , v064
	.byte	W04
	.byte		N08   , Cs1 , v127
	.byte	W08
	.byte		N04   , Cs1 , v064
	.byte	W04
@ 001   ----------------------------------------
	.byte		N08   , Cn1 , v127
	.byte	W08
	.byte		N04   , Cn1 , v064
	.byte	W04
	.byte		N08   , Cs1 , v127
	.byte	W08
	.byte		N04   , Cs1 , v064
	.byte	W04
	.byte		N08   , Cn1 , v127
	.byte	W08
	.byte		N04   , Cn1 , v064
	.byte	W04
	.byte		N08   , Cs1 , v127
	.byte	W08
	.byte		        Cn1 
	.byte	W08
	.byte		N04   , Cn1 , v064
	.byte	W04
	.byte		        Cn1 , v127
	.byte	W04
	.byte		N08   , Cs1 
	.byte	W08
	.byte		N04   , Cs1 , v064
	.byte	W04
	.byte		N08   , Cn1 , v127
	.byte	W08
	.byte		N04   , Cn1 , v064
	.byte	W04
	.byte		N08   , Cs1 , v127
	.byte	W08
	.byte		N04   , Cs1 , v064
	.byte	W04
	.byte	GOTO
	 .word	ch2b_2_B1
ch2b_2_B2:
@ 002   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

ch2b_3:
	.byte		VOL   , 127*ch2b_mvl/mxv
	.byte	KEYSH , ch2b_key+0
ch2b_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W68
	.byte		        38
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		VOICE , 44
	.byte		N04   , En1 
	.byte	W04
	.byte		VOICE , 38
	.byte		N04   , Cn2 
	.byte	W04
	.byte		VOICE , 44
	.byte		N08   , Cn1 
	.byte	W08
	.byte		VOICE , 35
	.byte		N04   , Cn2 
	.byte	W04
	.byte	GOTO
	 .word	ch2b_3_B1
ch2b_3_B2:
@ 002   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

ch2b_4:
	.byte		VOL   , 127*ch2b_mvl/mxv
	.byte	KEYSH , ch2b_key+0
ch2b_4_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 35
	.byte		TIE   , Cn2 , v127
	.byte	W96
@ 001   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		VOICE , 44
	.byte		N08   , En1 , v072
	.byte	W08
	.byte		N12   
	.byte	W12
	.byte		N04   , Cn1 
	.byte	W04
	.byte	GOTO
	 .word	ch2b_4_B1
ch2b_4_B2:
@ 002   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

ch2b:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	ch2b_pri	@ Priority
	.byte	ch2b_rev	@ Reverb.

	.word	ch2b_grp

	.word	ch2b_1
	.word	ch2b_2
	.word	ch2b_3
	.word	ch2b_4

	.end
