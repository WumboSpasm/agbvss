	.include "MPlayDef.s"

	.equ	sfxf_grp, voicegroup000
	.equ	sfxf_pri, 128
	.equ	sfxf_rev, reverb_set+50
	.equ	sfxf_mvl, 127
	.equ	sfxf_key, 0
	.equ	sfxf_tbs, 1
	.equ	sfxf_exg, 0
	.equ	sfxf_cmp, 1

	.section .rodata
	.global	sfxf
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

sfxf_1:
	.byte		VOL   , 127*sfxf_mvl/mxv
	.byte	KEYSH , sfxf_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 100*sfxf_tbs/2
	.byte		VOICE , 117
	.byte		N24   , Cn3 , v127
	.byte	W24
	.byte	W01
	.byte	FINE

@******************************************************@
	.align	2

sfxf:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	sfxf_pri	@ Priority
	.byte	sfxf_rev	@ Reverb.

	.word	sfxf_grp

	.word	sfxf_1

	.end
