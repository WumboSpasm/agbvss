	.include "MPlayDef.s"

	.equ	sfx4_grp, voicegroup000
	.equ	sfx4_pri, 128
	.equ	sfx4_rev, reverb_set+50
	.equ	sfx4_mvl, 127
	.equ	sfx4_key, 0
	.equ	sfx4_tbs, 1
	.equ	sfx4_exg, 0
	.equ	sfx4_cmp, 1

	.section .rodata
	.global	sfx4
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

sfx4_1:
	.byte		VOL   , 127*sfx4_mvl/mxv
	.byte	KEYSH , sfx4_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 100*sfx4_tbs/2
	.byte		VOICE , 106
	.byte		N15   , Cn3 , v127
	.byte	W15
	.byte	FINE

@******************************************************@
	.align	2

sfx4:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	sfx4_pri	@ Priority
	.byte	sfx4_rev	@ Reverb.

	.word	sfx4_grp

	.word	sfx4_1

	.end
