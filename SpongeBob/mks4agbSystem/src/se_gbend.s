	.include "MPlayDef.s"

	.equ	se_gbend_grp, voicegroup000
	.equ	se_gbend_pri, 10
	.equ	se_gbend_rev, 0
	.equ	se_gbend_mvl, 90
	.equ	se_gbend_key, 0
	.equ	se_gbend_tbs, 1
	.equ	se_gbend_exg, 0
	.equ	se_gbend_cmp, 1

	.section .rodata
	.global	se_gbend
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

se_gbend_1:
	.byte	KEYSH , se_gbend_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 150*se_gbend_tbs/2
	.byte		VOICE , 6
	.byte		VOL   , 127*se_gbend_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 12
	.byte		BEND  , c_v+0
	.byte		N06   , En2 , v120
	.byte	W01
	.byte		BEND  , c_v+13
	.byte	W01
	.byte		        c_v+25
	.byte	W01
	.byte		        c_v+36
	.byte	W01
	.byte		        c_v+46
	.byte	W01
	.byte		        c_v+55
	.byte	W01
	.byte		VOICE , 8
	.byte		VOL   , 127*se_gbend_mvl/mxv
	.byte		BENDR , 6
	.byte		BEND  , c_v+0
	.byte		N11   , En3 , v127
	.byte	W01
	.byte		VOL   , 117*se_gbend_mvl/mxv
	.byte	W01
	.byte		        106*se_gbend_mvl/mxv
	.byte		BEND  , c_v-21
	.byte	W01
	.byte		VOL   , 96*se_gbend_mvl/mxv
	.byte		BEND  , c_v-42
	.byte	W01
	.byte		VOL   , 85*se_gbend_mvl/mxv
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		VOL   , 74*se_gbend_mvl/mxv
	.byte		BEND  , c_v-42
	.byte	W01
	.byte		VOL   , 64*se_gbend_mvl/mxv
	.byte		BEND  , c_v-21
	.byte	W01
	.byte		VOL   , 53*se_gbend_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		VOL   , 42*se_gbend_mvl/mxv
	.byte		BEND  , c_v-21
	.byte	W01
	.byte		VOL   , 32*se_gbend_mvl/mxv
	.byte		BEND  , c_v-42
	.byte	W01
	.byte		VOL   , 20*se_gbend_mvl/mxv
	.byte		BEND  , c_v-64
	.byte	W01
	.byte	FINE

@******************************************************@
	.align	2

se_gbend:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_gbend_pri	@ Priority
	.byte	se_gbend_rev	@ Reverb.

	.word	se_gbend_grp

	.word	se_gbend_1

	.end
