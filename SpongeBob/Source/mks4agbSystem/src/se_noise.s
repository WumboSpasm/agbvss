	.include "MPlayDef.s"

	.equ	se_noise_grp, voicegroup000
	.equ	se_noise_pri, 10
	.equ	se_noise_rev, 0
	.equ	se_noise_mvl, 127
	.equ	se_noise_key, 0
	.equ	se_noise_tbs, 1
	.equ	se_noise_exg, 0
	.equ	se_noise_cmp, 1

	.section .rodata
	.global	se_noise
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

se_noise_1:
	.byte	KEYSH , se_noise_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 150*se_noise_tbs/2
	.byte		VOICE , 10
	.byte		VOL   , 127*se_noise_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N06   , Cn3 , v127
	.byte	W06
	.byte	FINE

@******************************************************@
	.align	2

se_noise:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_noise_pri	@ Priority
	.byte	se_noise_rev	@ Reverb.

	.word	se_noise_grp

	.word	se_noise_1

	.end
