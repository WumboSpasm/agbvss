	.include "MPlayDef.s"

	.equ	sfxd_grp, voicegroup000
	.equ	sfxd_pri, 128
	.equ	sfxd_rev, reverb_set+50
	.equ	sfxd_mvl, 127
	.equ	sfxd_key, 0
	.equ	sfxd_tbs, 1
	.equ	sfxd_exg, 0
	.equ	sfxd_cmp, 1

	.section .rodata
	.global	sfxd
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

sfxd_1:
	.byte		VOL   , 127*sfxd_mvl/mxv
	.byte	KEYSH , sfxd_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 100*sfxd_tbs/2
	.byte		VOICE , 115
	.byte		N80   , Cn3 , v127
	.byte	W80
	.byte	FINE

@******************************************************@
	.align	2

sfxd:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	sfxd_pri	@ Priority
	.byte	sfxd_rev	@ Reverb.

	.word	sfxd_grp

	.word	sfxd_1

	.end
