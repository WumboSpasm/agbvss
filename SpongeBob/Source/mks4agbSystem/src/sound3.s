	.include "MPlayDef.s"

	.equ	sound3_grp, voicegroup000
	.equ	sound3_pri, 10
	.equ	sound3_rev, 0
	.equ	sound3_mvl, 127
	.equ	sound3_key, 0
	.equ	sound3_tbs, 1
	.equ	sound3_exg, 0
	.equ	sound3_cmp, 1

	.section .rodata
	.global	sound3
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

sound3_1:
	.byte	KEYSH , sound3_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 150*sound3_tbs/2
	.byte		VOICE , 27
	.byte		VOL   , 127*sound3_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N03   , En5 , v072
	.byte	W03
	.byte		        Gn5 , v080
	.byte	W03
	.byte		        Gs5 , v092
	.byte	W03
	.byte		        Bn5 , v100
	.byte	W03
	.byte		        Cn6 , v112
	.byte	W03
	.byte		        En6 , v120
	.byte	W03
	.byte		        Cn6 , v040
	.byte	W03
	.byte		        En6 
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

sound3:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	sound3_pri	@ Priority
	.byte	sound3_rev	@ Reverb.

	.word	sound3_grp

	.word	sound3_1

	.end
