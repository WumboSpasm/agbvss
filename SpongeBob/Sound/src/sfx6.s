	.include "MPlayDef.s"

	.equ	sfx6_grp, voicegroup000
	.equ	sfx6_pri, 128
	.equ	sfx6_rev, reverb_set+50
	.equ	sfx6_mvl, 127
	.equ	sfx6_key, 0
	.equ	sfx6_tbs, 1
	.equ	sfx6_exg, 0
	.equ	sfx6_cmp, 1

	.section .rodata
	.global	sfx6
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

sfx6_1:
	.byte		VOL   , 127*sfx6_mvl/mxv
	.byte	KEYSH , sfx6_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 100*sfx6_tbs/2
	.byte		VOICE , 108
	.byte		N30   , Cn3 , v127
	.byte	W30
	.byte	FINE

@******************************************************@
	.align	2

sfx6:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	sfx6_pri	@ Priority
	.byte	sfx6_rev	@ Reverb.

	.word	sfx6_grp

	.word	sfx6_1

	.end
