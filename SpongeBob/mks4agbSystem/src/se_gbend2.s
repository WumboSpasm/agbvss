	.include "MPlayDef.s"

	.equ	se_gbend2_grp, voicegroup000
	.equ	se_gbend2_pri, 10
	.equ	se_gbend2_rev, 0
	.equ	se_gbend2_mvl, 90
	.equ	se_gbend2_key, 0
	.equ	se_gbend2_tbs, 1
	.equ	se_gbend2_exg, 0
	.equ	se_gbend2_cmp, 1

	.section .rodata
	.global	se_gbend2
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

se_gbend2_1:
	.byte	KEYSH , se_gbend2_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 150*se_gbend2_tbs/2
	.byte		VOICE , 8
	.byte		VOL   , 127*se_gbend2_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 15
	.byte		BEND  , c_v+0
	.byte		N12   , Gn3 , v080
	.byte	W01
	.byte		BEND  , c_v+5
	.byte	W01
	.byte		        c_v+10
	.byte	W01
	.byte		        c_v+15
	.byte	W01
	.byte		        c_v+21
	.byte	W01
	.byte		        c_v+26
	.byte	W01
	.byte		        c_v+31
	.byte	W01
	.byte		        c_v+37
	.byte	W01
	.byte		        c_v+42
	.byte	W01
	.byte		        c_v+47
	.byte	W01
	.byte		        c_v+53
	.byte	W01
	.byte		        c_v+58
	.byte	W01
	.byte		        c_v+63
	.byte	FINE

@******************************************************@
	.align	2

se_gbend2:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_gbend2_pri	@ Priority
	.byte	se_gbend2_rev	@ Reverb.

	.word	se_gbend2_grp

	.word	se_gbend2_1

	.end
