	.include "MPlayDef.s"

	.equ	se_dvib_grp, voicegroup000
	.equ	se_dvib_pri, 10
	.equ	se_dvib_rev, 0
	.equ	se_dvib_mvl, 60
	.equ	se_dvib_key, 0
	.equ	se_dvib_tbs, 1
	.equ	se_dvib_exg, 0
	.equ	se_dvib_cmp, 1

	.section .rodata
	.global	se_dvib
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

se_dvib_1:
	.byte	KEYSH , se_dvib_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 150*se_dvib_tbs/2
	.byte		VOICE , 11
	.byte		MOD   , 40
	.byte		VOL   , 127*se_dvib_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		LFOS  , 60
	.byte		MODT  , 0
	.byte		LFODL , 0
	.byte		N12   , Cn3 , v127
	.byte	W06
	.byte		VOL   , 127*se_dvib_mvl/mxv
	.byte	W01
	.byte		        108*se_dvib_mvl/mxv
	.byte	W01
	.byte		        89*se_dvib_mvl/mxv
	.byte	W01
	.byte		        69*se_dvib_mvl/mxv
	.byte	W01
	.byte		        50*se_dvib_mvl/mxv
	.byte	W01
	.byte		        31*se_dvib_mvl/mxv
	.byte	W01
	.byte		        11*se_dvib_mvl/mxv
	.byte	FINE

@******************************************************@
	.align	2

se_dvib:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_dvib_pri	@ Priority
	.byte	se_dvib_rev	@ Reverb.

	.word	se_dvib_grp

	.word	se_dvib_1

	.end
