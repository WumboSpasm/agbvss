	.include "MPlayDef.s"

	.equ	sfx3_grp, voicegroup000
	.equ	sfx3_pri, 128
	.equ	sfx3_rev, reverb_set+50
	.equ	sfx3_mvl, 127
	.equ	sfx3_key, 0
	.equ	sfx3_tbs, 1
	.equ	sfx3_exg, 0
	.equ	sfx3_cmp, 1

	.section .rodata
	.global	sfx3
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

sfx3_1:
	.byte		VOL   , 127*sfx3_mvl/mxv
	.byte	KEYSH , sfx3_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 100*sfx3_tbs/2
	.byte		VOICE , 105
	.byte		N15   , Cn3 , v127
	.byte	W15
	.byte	FINE

@******************************************************@
	.align	2

sfx3:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	sfx3_pri	@ Priority
	.byte	sfx3_rev	@ Reverb.

	.word	sfx3_grp

	.word	sfx3_1

	.end
