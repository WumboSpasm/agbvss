	.include "MPlayDef.s"

	.equ	sfx8_grp, voicegroup000
	.equ	sfx8_pri, 128
	.equ	sfx8_rev, reverb_set+50
	.equ	sfx8_mvl, 127
	.equ	sfx8_key, 0
	.equ	sfx8_tbs, 1
	.equ	sfx8_exg, 0
	.equ	sfx8_cmp, 1

	.section .rodata
	.global	sfx8
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

sfx8_1:
	.byte		VOL   , 127*sfx8_mvl/mxv
	.byte	KEYSH , sfx8_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 100*sfx8_tbs/2
	.byte		VOICE , 110
	.byte		N15   , Cn3 , v127
	.byte	W15
	.byte	FINE

@******************************************************@
	.align	2

sfx8:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	sfx8_pri	@ Priority
	.byte	sfx8_rev	@ Reverb.

	.word	sfx8_grp

	.word	sfx8_1

	.end
