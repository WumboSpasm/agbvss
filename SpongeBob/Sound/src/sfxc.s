	.include "MPlayDef.s"

	.equ	sfxc_grp, voicegroup000
	.equ	sfxc_pri, 128
	.equ	sfxc_rev, reverb_set+50
	.equ	sfxc_mvl, 127
	.equ	sfxc_key, 0
	.equ	sfxc_tbs, 1
	.equ	sfxc_exg, 0
	.equ	sfxc_cmp, 1

	.section .rodata
	.global	sfxc
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

sfxc_1:
	.byte		VOL   , 127*sfxc_mvl/mxv
	.byte	KEYSH , sfxc_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 100*sfxc_tbs/2
	.byte		VOICE , 114
	.byte		N15   , Cn3 , v127
	.byte	W15
	.byte	FINE

@******************************************************@
	.align	2

sfxc:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	sfxc_pri	@ Priority
	.byte	sfxc_rev	@ Reverb.

	.word	sfxc_grp

	.word	sfxc_1

	.end
