	.include "MPlayDef.s"

	.equ	sfx7_grp, voicegroup000
	.equ	sfx7_pri, 128
	.equ	sfx7_rev, reverb_set+50
	.equ	sfx7_mvl, 127
	.equ	sfx7_key, 0
	.equ	sfx7_tbs, 1
	.equ	sfx7_exg, 0
	.equ	sfx7_cmp, 1

	.section .rodata
	.global	sfx7
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

sfx7_1:
	.byte		VOL   , 127*sfx7_mvl/mxv
	.byte	KEYSH , sfx7_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 100*sfx7_tbs/2
	.byte		VOICE , 109
	.byte		N15   , Cn3 , v127
	.byte	W15
	.byte	FINE

@******************************************************@
	.align	2

sfx7:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	sfx7_pri	@ Priority
	.byte	sfx7_rev	@ Reverb.

	.word	sfx7_grp

	.word	sfx7_1

	.end
