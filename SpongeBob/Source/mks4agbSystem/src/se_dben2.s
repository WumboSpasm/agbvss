	.include "MPlayDef.s"

	.equ	se_dben2_grp, voicegroup000
	.equ	se_dben2_pri, 10
	.equ	se_dben2_rev, 0
	.equ	se_dben2_mvl, 127
	.equ	se_dben2_key, 0
	.equ	se_dben2_tbs, 1
	.equ	se_dben2_exg, 0
	.equ	se_dben2_cmp, 1

	.section .rodata
	.global	se_dben2
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

se_dben2_1:
	.byte	KEYSH , se_dben2_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 150*se_dben2_tbs/2
	.byte		VOICE , 12
	.byte		VOL   , 127*se_dben2_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 8
	.byte		BEND  , c_v+0
	.byte		N06   , Cn3 , v127
	.byte	W01
	.byte		BEND  , c_v+11
	.byte	W01
	.byte		        c_v+23
	.byte	W01
	.byte		        c_v+34
	.byte	W01
	.byte		        c_v+46
	.byte	W01
	.byte		        c_v+57
	.byte	W01
	.byte		VOL   , 127*se_dben2_mvl/mxv
	.byte		BENDR , 6
	.byte		BEND  , c_v+0
	.byte		N32   , Gn3 , v120
	.byte	W01
	.byte		VOL   , 124*se_dben2_mvl/mxv
	.byte		BEND  , c_v-21
	.byte	W01
	.byte		VOL   , 121*se_dben2_mvl/mxv
	.byte		BEND  , c_v-42
	.byte	W01
	.byte		VOL   , 117*se_dben2_mvl/mxv
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		VOL   , 114*se_dben2_mvl/mxv
	.byte	W01
	.byte		        110*se_dben2_mvl/mxv
	.byte		BEND  , c_v-42
	.byte	W01
	.byte		VOL   , 107*se_dben2_mvl/mxv
	.byte		BEND  , c_v-21
	.byte	W01
	.byte		VOL   , 103*se_dben2_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		VOL   , 100*se_dben2_mvl/mxv
	.byte	W01
	.byte		        97*se_dben2_mvl/mxv
	.byte		BEND  , c_v-21
	.byte	W01
	.byte		VOL   , 93*se_dben2_mvl/mxv
	.byte		BEND  , c_v-42
	.byte	W01
	.byte		VOL   , 90*se_dben2_mvl/mxv
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		VOL   , 86*se_dben2_mvl/mxv
	.byte	W01
	.byte		        83*se_dben2_mvl/mxv
	.byte		BEND  , c_v-42
	.byte	W01
	.byte		VOL   , 79*se_dben2_mvl/mxv
	.byte		BEND  , c_v-21
	.byte	W01
	.byte		VOL   , 76*se_dben2_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		VOL   , 73*se_dben2_mvl/mxv
	.byte	W01
	.byte		        69*se_dben2_mvl/mxv
	.byte		BEND  , c_v-21
	.byte	W01
	.byte		VOL   , 66*se_dben2_mvl/mxv
	.byte		BEND  , c_v-42
	.byte	W01
	.byte		VOL   , 62*se_dben2_mvl/mxv
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		VOL   , 59*se_dben2_mvl/mxv
	.byte		BEND  , c_v-42
	.byte	W01
	.byte		VOL   , 55*se_dben2_mvl/mxv
	.byte		BEND  , c_v-21
	.byte	W01
	.byte		VOL   , 52*se_dben2_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		VOL   , 48*se_dben2_mvl/mxv
	.byte		BEND  , c_v-21
	.byte	W01
	.byte		VOL   , 45*se_dben2_mvl/mxv
	.byte		BEND  , c_v-42
	.byte	W01
	.byte		VOL   , 42*se_dben2_mvl/mxv
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		VOL   , 38*se_dben2_mvl/mxv
	.byte		BEND  , c_v-42
	.byte	W01
	.byte		VOL   , 35*se_dben2_mvl/mxv
	.byte		BEND  , c_v-21
	.byte	W01
	.byte		VOL   , 31*se_dben2_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		VOL   , 28*se_dben2_mvl/mxv
	.byte		BEND  , c_v-21
	.byte	W01
	.byte		VOL   , 24*se_dben2_mvl/mxv
	.byte		BEND  , c_v-42
	.byte	W01
	.byte		VOL   , 21*se_dben2_mvl/mxv
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		VOL   , 18*se_dben2_mvl/mxv
	.byte		BEND  , c_v-42
	.byte	W01
	.byte		VOL   , 14*se_dben2_mvl/mxv
	.byte		BEND  , c_v-21
	.byte	W01
	.byte		VOL   , 10*se_dben2_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W01
	.byte	FINE

@******************************************************@
	.align	2

se_dben2:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_dben2_pri	@ Priority
	.byte	se_dben2_rev	@ Reverb.

	.word	se_dben2_grp

	.word	se_dben2_1

	.end
