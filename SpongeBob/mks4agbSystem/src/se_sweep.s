	.include "MPlayDef.s"

	.equ	se_sweep_grp, voicegroup000
	.equ	se_sweep_pri, 10
	.equ	se_sweep_rev, 0
	.equ	se_sweep_mvl, 127
	.equ	se_sweep_key, 0
	.equ	se_sweep_tbs, 1
	.equ	se_sweep_exg, 0
	.equ	se_sweep_cmp, 1

	.section .rodata
	.global	se_sweep
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

se_sweep_1:
	.byte	KEYSH , se_sweep_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 120*se_sweep_tbs/2
	.byte		VOICE , 7
	.byte		VOL   , 127*se_sweep_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N04   , Cn6 , v127
	.byte	W04
	.byte		VOL   , 100*se_sweep_mvl/mxv
	.byte		N04   , Fn5 
	.byte	W04
	.byte		VOL   , 80*se_sweep_mvl/mxv
	.byte		N04   , Bn4 
	.byte	W04
	.byte		VOL   , 60*se_sweep_mvl/mxv
	.byte		N04   , En4 
	.byte	W04
	.byte		VOL   , 40*se_sweep_mvl/mxv
	.byte		N04   , An3 
	.byte	W04
	.byte		VOL   , 20*se_sweep_mvl/mxv
	.byte		N04   , Dn3 
	.byte	W04
	.byte	FINE

@******************************************************@
	.align	2

se_sweep:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_sweep_pri	@ Priority
	.byte	se_sweep_rev	@ Reverb.

	.word	se_sweep_grp

	.word	se_sweep_1

	.end
