	.include "MPlayDef.s"

	.equ	sfx1_grp, voicegroup000
	.equ	sfx1_pri, 128
	.equ	sfx1_rev, reverb_set+50
	.equ	sfx1_mvl, 127
	.equ	sfx1_key, 0
	.equ	sfx1_tbs, 1
	.equ	sfx1_exg, 0
	.equ	sfx1_cmp, 1

	.section .rodata
	.global	sfx1
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

sfx1_1:
	.byte		VOL   , 127*sfx1_mvl/mxv
	.byte	KEYSH , sfx1_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 100*sfx1_tbs/2
	.byte		VOICE , 103
	.byte		N15   , Cn3 , v127
	.byte	W15
	.byte	FINE

@******************************************************@
	.align	2

sfx1:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	sfx1_pri	@ Priority
	.byte	sfx1_rev	@ Reverb.

	.word	sfx1_grp

	.word	sfx1_1

	.end
