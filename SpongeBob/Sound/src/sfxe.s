	.include "MPlayDef.s"

	.equ	sfxe_grp, voicegroup000
	.equ	sfxe_pri, 128
	.equ	sfxe_rev, reverb_set+50
	.equ	sfxe_mvl, 127
	.equ	sfxe_key, 0
	.equ	sfxe_tbs, 1
	.equ	sfxe_exg, 0
	.equ	sfxe_cmp, 1

	.section .rodata
	.global	sfxe
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

sfxe_1:
	.byte		VOL   , 127*sfxe_mvl/mxv
	.byte	KEYSH , sfxe_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 100*sfxe_tbs/2
	.byte		VOICE , 116
	.byte		TIE   , Cn3 , v127
	.byte	W96
@ 001   ----------------------------------------
	.byte	W14
	.byte		EOT   
	.byte	FINE

@******************************************************@
	.align	2

sfxe:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	sfxe_pri	@ Priority
	.byte	sfxe_rev	@ Reverb.

	.word	sfxe_grp

	.word	sfxe_1

	.end
