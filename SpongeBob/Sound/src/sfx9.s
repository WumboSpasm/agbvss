	.include "MPlayDef.s"

	.equ	sfx9_grp, voicegroup000
	.equ	sfx9_pri, 128
	.equ	sfx9_rev, reverb_set+50
	.equ	sfx9_mvl, 127
	.equ	sfx9_key, 0
	.equ	sfx9_tbs, 1
	.equ	sfx9_exg, 0
	.equ	sfx9_cmp, 1

	.section .rodata
	.global	sfx9
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

sfx9_1:
	.byte		VOL   , 127*sfx9_mvl/mxv
	.byte	KEYSH , sfx9_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 100*sfx9_tbs/2
	.byte		VOICE , 111
	.byte		N15   , Cn3 , v127
	.byte	W15
	.byte	FINE

@******************************************************@
	.align	2

sfx9:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	sfx9_pri	@ Priority
	.byte	sfx9_rev	@ Reverb.

	.word	sfx9_grp

	.word	sfx9_1

	.end
