	.include "MPlayDef.s"

	.equ	se_swep2_grp, voicegroup000
	.equ	se_swep2_pri, 10
	.equ	se_swep2_rev, 0
	.equ	se_swep2_mvl, 90
	.equ	se_swep2_key, 0
	.equ	se_swep2_tbs, 1
	.equ	se_swep2_exg, 0
	.equ	se_swep2_cmp, 1

	.section .rodata
	.global	se_swep2
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

se_swep2_1:
	.byte	KEYSH , se_swep2_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 150*se_swep2_tbs/2
	.byte		VOICE , 9
	.byte		VOL   , 127*se_swep2_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N12   , Gn3 , v080
	.byte	W12
	.byte	FINE

@******************************************************@
	.align	2

se_swep2:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_swep2_pri	@ Priority
	.byte	se_swep2_rev	@ Reverb.

	.word	se_swep2_grp

	.word	se_swep2_1

	.end
