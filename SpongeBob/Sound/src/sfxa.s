	.include "MPlayDef.s"

	.equ	sfxa_grp, voicegroup000
	.equ	sfxa_pri, 128
	.equ	sfxa_rev, reverb_set+50
	.equ	sfxa_mvl, 127
	.equ	sfxa_key, 0
	.equ	sfxa_tbs, 1
	.equ	sfxa_exg, 0
	.equ	sfxa_cmp, 1

	.section .rodata
	.global	sfxa
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

sfxa_1:
	.byte		VOL   , 127*sfxa_mvl/mxv
	.byte	KEYSH , sfxa_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 100*sfxa_tbs/2
	.byte		VOICE , 112
	.byte		N15   , Cn3 , v127
	.byte	W15
	.byte	FINE

@******************************************************@
	.align	2

sfxa:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	sfxa_pri	@ Priority
	.byte	sfxa_rev	@ Reverb.

	.word	sfxa_grp

	.word	sfxa_1

	.end
