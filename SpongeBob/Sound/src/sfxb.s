	.include "MPlayDef.s"

	.equ	sfxb_grp, voicegroup000
	.equ	sfxb_pri, 128
	.equ	sfxb_rev, reverb_set+50
	.equ	sfxb_mvl, 127
	.equ	sfxb_key, 0
	.equ	sfxb_tbs, 1
	.equ	sfxb_exg, 0
	.equ	sfxb_cmp, 1

	.section .rodata
	.global	sfxb
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

sfxb_1:
	.byte		VOL   , 127*sfxb_mvl/mxv
	.byte	KEYSH , sfxb_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 100*sfxb_tbs/2
	.byte		VOICE , 113
	.byte		N15   , Cn3 , v127
	.byte	W15
	.byte	FINE

@******************************************************@
	.align	2

sfxb:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	sfxb_pri	@ Priority
	.byte	sfxb_rev	@ Reverb.

	.word	sfxb_grp

	.word	sfxb_1

	.end
