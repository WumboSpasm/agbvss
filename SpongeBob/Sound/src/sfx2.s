	.include "MPlayDef.s"

	.equ	sfx2_grp, voicegroup000
	.equ	sfx2_pri, 128
	.equ	sfx2_rev, reverb_set+50
	.equ	sfx2_mvl, 127
	.equ	sfx2_key, 0
	.equ	sfx2_tbs, 1
	.equ	sfx2_exg, 0
	.equ	sfx2_cmp, 1

	.section .rodata
	.global	sfx2
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

sfx2_1:
	.byte		VOL   , 127*sfx2_mvl/mxv
	.byte	KEYSH , sfx2_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 100*sfx2_tbs/2
	.byte		VOICE , 104
	.byte		N15   , Cn3 , v127
	.byte	W15
	.byte	FINE

@******************************************************@
	.align	2

sfx2:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	sfx2_pri	@ Priority
	.byte	sfx2_rev	@ Reverb.

	.word	sfx2_grp

	.word	sfx2_1

	.end
