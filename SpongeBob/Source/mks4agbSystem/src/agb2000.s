	.include "MPlayDef.s"

	.equ	agb2000_grp, voicegroup000
	.equ	agb2000_pri, 20
	.equ	agb2000_rev, reverb_set+50
	.equ	agb2000_mvl, 127
	.equ	agb2000_key, 0
	.equ	agb2000_tbs, 1
	.equ	agb2000_exg, 0
	.equ	agb2000_cmp, 1

	.section .rodata
	.global	agb2000
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

agb2000_1:
	.byte	KEYSH , agb2000_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 120*agb2000_tbs/2
	.byte		VOICE , 24
	.byte		VOL   , 100*agb2000_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N12   , Gn2 , v100
	.byte	W03
	.byte		        An2 
	.byte	W03
	.byte		        Bn2 
	.byte	W03
	.byte		        Cs3 
	.byte	W03
	.byte		        Ds3 
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        Gn3 
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		        Cs4 , v080
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		        Bn4 
	.byte	W03
	.byte		        Cs5 
	.byte	W03
	.byte		        Ds5 
	.byte	W03
	.byte		        Fn5 
	.byte	W03
	.byte		        Gn5 
	.byte	W12
	.byte	FINE

@******************************************************@
	.align	2

agb2000:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	agb2000_pri	@ Priority
	.byte	agb2000_rev	@ Reverb.

	.word	agb2000_grp

	.word	agb2000_1

	.end
