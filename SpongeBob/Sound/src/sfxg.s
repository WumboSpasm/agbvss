	.include "MPlayDef.s"

	.equ	sfxg_grp, voicegroup000
	.equ	sfxg_pri, 128
	.equ	sfxg_rev, reverb_set+50
	.equ	sfxg_mvl, 127
	.equ	sfxg_key, 0
	.equ	sfxg_tbs, 1
	.equ	sfxg_exg, 0
	.equ	sfxg_cmp, 1

	.section .rodata
	.global	sfxg
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

sfxg_1:
	.byte		VOL   , 127*sfxg_mvl/mxv
	.byte	KEYSH , sfxg_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 100*sfxg_tbs/2
	.byte		VOICE , 118
	.byte		N24   , Cn3 , v127
	.byte	W24
	.byte	W01
	.byte	FINE

@******************************************************@
	.align	2

sfxg:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	sfxg_pri	@ Priority
	.byte	sfxg_rev	@ Reverb.

	.word	sfxg_grp

	.word	sfxg_1

	.end
