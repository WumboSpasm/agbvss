	.include "MPlayDef.s"

	.equ	sfx5_grp, voicegroup000
	.equ	sfx5_pri, 128
	.equ	sfx5_rev, reverb_set+50
	.equ	sfx5_mvl, 127
	.equ	sfx5_key, 0
	.equ	sfx5_tbs, 1
	.equ	sfx5_exg, 0
	.equ	sfx5_cmp, 1

	.section .rodata
	.global	sfx5
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

sfx5_1:
	.byte		VOL   , 127*sfx5_mvl/mxv
	.byte	KEYSH , sfx5_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 100*sfx5_tbs/2
	.byte		VOICE , 107
	.byte		N80   , Cn3 , v127
	.byte	W80
	.byte	FINE

@******************************************************@
	.align	2

sfx5:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	sfx5_pri	@ Priority
	.byte	sfx5_rev	@ Reverb.

	.word	sfx5_grp

	.word	sfx5_1

	.end
