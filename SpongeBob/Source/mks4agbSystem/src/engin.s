	.include "MPlayDef.s"

	.equ	engin_grp, voicegroup000
	.equ	engin_pri, 10
	.equ	engin_rev, 0
	.equ	engin_mvl, 127
	.equ	engin_key, 0
	.equ	engin_tbs, 1
	.equ	engin_exg, 0
	.equ	engin_cmp, 1

	.section .rodata
	.global	engin
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

engin_1:
	.byte	KEYSH , engin_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 120*engin_tbs/2
	.byte		VOICE , 26
	.byte		VOL   , 100*engin_mvl/mxv
	.byte		TIE   , Cn3 , v080
	.byte	W96
engin_1_B1:
@ 001   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 .word	engin_1_B1
engin_1_B2:
@ 002   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cn3 
@ 003   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

engin:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	engin_pri	@ Priority
	.byte	engin_rev	@ Reverb.

	.word	engin_grp

	.word	engin_1

	.end
