	.include "MPlayDef.s"

	.equ	se_d01_grp, voicegroup000
	.equ	se_d01_pri, 10
	.equ	se_d01_rev, 0
	.equ	se_d01_mvl, 127
	.equ	se_d01_key, 0
	.equ	se_d01_tbs, 1
	.equ	se_d01_exg, 0
	.equ	se_d01_cmp, 1

	.section .rodata
	.global	se_d01
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

se_d01_1:
	.byte	KEYSH , se_d01_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 120*se_d01_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 127*se_d01_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N72   , Cn3 , v127
	.byte	W72
	.byte	FINE

@******************************************************@
	.align	2

se_d01:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_d01_pri	@ Priority
	.byte	se_d01_rev	@ Reverb.

	.word	se_d01_grp

	.word	se_d01_1

	.end
