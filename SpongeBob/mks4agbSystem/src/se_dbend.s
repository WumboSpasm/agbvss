	.include "MPlayDef.s"

	.equ	se_dbend_grp, voicegroup000
	.equ	se_dbend_pri, 10
	.equ	se_dbend_rev, 0
	.equ	se_dbend_mvl, 127
	.equ	se_dbend_key, 0
	.equ	se_dbend_tbs, 1
	.equ	se_dbend_exg, 0
	.equ	se_dbend_cmp, 1

	.section .rodata
	.global	se_dbend
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

se_dbend_1:
	.byte	KEYSH , se_dbend_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 150*se_dbend_tbs/2
	.byte		VOICE , 5
	.byte		VOL   , 10*se_dbend_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 18
	.byte		BEND  , c_v+0
	.byte		N18   , Cn3 , v127
	.byte	W01
	.byte		VOL   , 16*se_dbend_mvl/mxv
	.byte		BEND  , c_v+3
	.byte	W01
	.byte		VOL   , 23*se_dbend_mvl/mxv
	.byte		BEND  , c_v+7
	.byte	W01
	.byte		VOL   , 30*se_dbend_mvl/mxv
	.byte		BEND  , c_v+10
	.byte	W01
	.byte		VOL   , 37*se_dbend_mvl/mxv
	.byte		BEND  , c_v+14
	.byte	W01
	.byte		VOL   , 44*se_dbend_mvl/mxv
	.byte		BEND  , c_v+17
	.byte	W01
	.byte		VOL   , 51*se_dbend_mvl/mxv
	.byte		BEND  , c_v+21
	.byte	W01
	.byte		VOL   , 58*se_dbend_mvl/mxv
	.byte		BEND  , c_v+24
	.byte	W01
	.byte		VOL   , 64*se_dbend_mvl/mxv
	.byte		BEND  , c_v+28
	.byte	W01
	.byte		VOL   , 71*se_dbend_mvl/mxv
	.byte		BEND  , c_v+31
	.byte	W01
	.byte		VOL   , 78*se_dbend_mvl/mxv
	.byte		BEND  , c_v+35
	.byte	W01
	.byte		VOL   , 85*se_dbend_mvl/mxv
	.byte		BEND  , c_v+38
	.byte	W01
	.byte		VOL   , 92*se_dbend_mvl/mxv
	.byte		BEND  , c_v+42
	.byte	W01
	.byte		VOL   , 99*se_dbend_mvl/mxv
	.byte		BEND  , c_v+46
	.byte	W01
	.byte		VOL   , 106*se_dbend_mvl/mxv
	.byte		BEND  , c_v+49
	.byte	W01
	.byte		VOL   , 112*se_dbend_mvl/mxv
	.byte		BEND  , c_v+53
	.byte	W01
	.byte		VOL   , 119*se_dbend_mvl/mxv
	.byte		BEND  , c_v+56
	.byte	W01
	.byte		VOL   , 127*se_dbend_mvl/mxv
	.byte		BEND  , c_v+63
	.byte	W01
	.byte	FINE

@******************************************************@
	.align	2

se_dbend:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_dbend_pri	@ Priority
	.byte	se_dbend_rev	@ Reverb.

	.word	se_dbend_grp

	.word	se_dbend_1

	.end
