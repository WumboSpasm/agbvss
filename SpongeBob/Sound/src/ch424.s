	.include "MPlayDef.s"

	.equ	ch424_grp, voicegroup000
	.equ	ch424_pri, 128
	.equ	ch424_rev, reverb_set+50
	.equ	ch424_mvl, 127
	.equ	ch424_key, 0
	.equ	ch424_tbs, 1
	.equ	ch424_exg, 0
	.equ	ch424_cmp, 1

	.section .rodata
	.global	ch424
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

ch424_1:
	.byte		VOL   , 127*ch424_mvl/mxv
	.byte	KEYSH , ch424_key+0
ch424_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 100*ch424_tbs/2
	.byte		VOICE , 61
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W07
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W03
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W06
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W04
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W07
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W03
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v104
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W06
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W04
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W07
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W02
@ 001   ----------------------------------------
ch424_1_001:
	.byte	W01
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W06
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W04
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v104
	.byte	W07
	.byte		        Cn2 , v080
	.byte	W06
	.byte		N03   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v104
	.byte	W03
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W04
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W07
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W03
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W06
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W01
	.byte	PEND
@ 002   ----------------------------------------
ch424_1_002:
	.byte	W03
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W07
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W03
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v104
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W06
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W04
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W07
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W03
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W06
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W04
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W06
	.byte	PEND
@ 003   ----------------------------------------
ch424_1_003:
	.byte	W01
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W03
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v104
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W06
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W04
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W07
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W03
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W06
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W04
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W07
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W03
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v104
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W04
	.byte	PEND
@ 004   ----------------------------------------
ch424_1_004:
	.byte	W02
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W04
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W07
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W03
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W06
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W04
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v104
	.byte	W07
	.byte		        Cn2 , v080
	.byte	W06
	.byte		N03   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v104
	.byte	W03
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W04
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W03
	.byte	PEND
@ 005   ----------------------------------------
ch424_1_005:
	.byte	W04
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W03
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W06
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W04
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W07
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W03
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v104
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W06
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W04
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W07
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W03
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W01
	.byte	PEND
@ 006   ----------------------------------------
ch424_1_006:
	.byte	W05
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W04
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W07
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W03
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v104
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W06
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W04
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W07
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W03
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W06
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W04
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte	PEND
@ 007   ----------------------------------------
ch424_1_007:
	.byte		N06   , Cn2 , v080
	.byte	W07
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W03
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v104
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W06
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W04
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W07
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W03
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W06
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W04
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W07
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W03
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v104
	.byte	W01
	.byte	PEND
@ 008   ----------------------------------------
	.byte	W02
	.byte		N06   , Cn2 , v080
	.byte	W06
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W04
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W07
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W03
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W06
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W04
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W07
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W03
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v104
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W06
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W04
	.byte		N06   , Cn2 , v127
	.byte	W06
@ 009   ----------------------------------------
ch424_1_009:
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W07
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W03
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W06
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W04
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W07
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W03
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v104
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W06
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W04
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W07
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W03
	.byte		N06   , Cn2 , v127
	.byte	W05
	.byte	PEND
@ 010   ----------------------------------------
ch424_1_010:
	.byte	W02
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W06
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W04
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W07
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W03
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v104
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W06
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W04
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W07
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W03
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W06
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W04
	.byte		N06   , Cn2 , v127
	.byte	W03
	.byte	PEND
@ 011   ----------------------------------------
ch424_1_011:
	.byte	W03
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v104
	.byte	W07
	.byte		        Cn2 , v080
	.byte	W06
	.byte		N03   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v104
	.byte	W03
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W04
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W07
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W03
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W06
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W04
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W07
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W03
	.byte		N06   , Cn2 , v127
	.byte	W02
	.byte	PEND
@ 012   ----------------------------------------
ch424_1_012:
	.byte	W05
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v104
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W06
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W04
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W07
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W03
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W06
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W04
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W07
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W03
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v104
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W06
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W04
	.byte	PEND
@ 013   ----------------------------------------
	.byte		N06   , Cn2 , v064
	.byte	W06
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W07
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W03
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W06
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W04
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W07
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W03
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v104
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W06
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W04
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W07
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W02
@ 014   ----------------------------------------
	.byte	W01
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W06
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W04
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W07
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W03
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v080
	.byte	W03
	.byte		VOICE , 61
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v104
	.byte	W04
	.byte		VOICE , 61
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W07
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W03
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W06
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W01
@ 015   ----------------------------------------
	.byte	PATT
	 .word	ch424_1_002
@ 016   ----------------------------------------
	.byte	PATT
	 .word	ch424_1_003
@ 017   ----------------------------------------
	.byte	PATT
	 .word	ch424_1_004
@ 018   ----------------------------------------
	.byte	PATT
	 .word	ch424_1_005
@ 019   ----------------------------------------
	.byte	PATT
	 .word	ch424_1_006
@ 020   ----------------------------------------
	.byte	PATT
	 .word	ch424_1_007
@ 021   ----------------------------------------
	.byte	W02
	.byte		N06   , Cn2 , v080
	.byte	W06
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W04
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W07
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v064
	.byte	W07
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v064
	.byte	W06
	.byte		N03   , Cn2 , v052
	.byte	W04
	.byte		N06   , Cn2 , v064
	.byte	W06
	.byte		N13   , Cn2 , v080
	.byte	W13
	.byte		N06   
	.byte	W07
	.byte		VOICE , 61
	.byte		N09   , Cn2 , v112
	.byte	W09
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W04
	.byte		VOICE , 61
	.byte		N06   , Cn2 , v127
	.byte	W06
@ 022   ----------------------------------------
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		        Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v096
	.byte	W03
	.byte		N19   , Cn2 , v080
	.byte	W19
	.byte		VOICE , 61
	.byte		N09   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 5
	.byte		N28   , Cn2 , v080
	.byte	W28
	.byte	W01
	.byte		VOICE , 61
	.byte		N03   
	.byte	W04
	.byte		N72   , Cn2 , v127
	.byte	W24
@ 023   ----------------------------------------
	.byte	W48
	.byte	W02
	.byte		N03   , Cn2 , v104
	.byte	W04
	.byte		N64   , Cn2 , v127
	.byte	W42
@ 024   ----------------------------------------
	.byte	W23
	.byte		VOICE , 5
	.byte		N09   , Cn2 , v080
	.byte	W09
	.byte		N22   , Cn2 , v127
	.byte	W23
	.byte		VOICE , 61
	.byte		N16   
	.byte	W16
	.byte		VOICE , 5
	.byte		N24   , Cn2 , v080
	.byte	W24
	.byte	W01
@ 025   ----------------------------------------
	.byte	W01
	.byte		N03   
	.byte	W04
	.byte		        Cn2 , v096
	.byte	W03
	.byte		        Cn2 , v052
	.byte	W03
	.byte		        Cn2 , v080
	.byte	W03
	.byte		        Cn2 , v096
	.byte	W04
	.byte		VOICE , 61
	.byte		N16   , Cn2 , v127
	.byte	W16
	.byte		N78   
	.byte	W60
	.byte	W02
@ 026   ----------------------------------------
	.byte	W16
	.byte		N03   , Cn2 , v104
	.byte	W03
	.byte		N32   , Cn2 , v127
	.byte	W36
	.byte		N03   , Cn2 , v104
	.byte	W03
	.byte		N09   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 5
	.byte		N09   , Cn2 , v080
	.byte	W10
	.byte		VOICE , 61
	.byte		N24   , Cn2 , v127
	.byte	W18
@ 027   ----------------------------------------
	.byte	W08
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v104
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W06
	.byte		VOICE , 61
	.byte		N56   , Cn2 , v127
	.byte	W56
	.byte	W03
	.byte		N13   , Cn2 , v104
	.byte	W13
	.byte		VOICE , 5
	.byte		N24   , Cn2 , v112
	.byte	W07
@ 028   ----------------------------------------
	.byte	W19
	.byte		N06   , Cn2 , v080
	.byte	W06
	.byte		N03   , Cn2 , v052
	.byte	W04
	.byte		        Cn2 , v072
	.byte	W03
	.byte		N09   , Cn2 , v104
	.byte	W10
	.byte		VOICE , 61
	.byte		N28   , Cn2 , v127
	.byte	W28
	.byte	W01
	.byte		VOICE , 5
	.byte		N09   , Cn2 , v104
	.byte	W10
	.byte		VOICE , 61
	.byte		N16   , Cn2 , v127
	.byte	W15
@ 029   ----------------------------------------
	.byte	W01
	.byte		N09   , Cn2 , v096
	.byte	W10
	.byte		VOICE , 5
	.byte		N09   , Cn2 , v080
	.byte	W09
	.byte		N03   , Cn2 , v104
	.byte	W04
	.byte		VOICE , 61
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W07
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W03
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W06
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W04
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W07
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W03
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v104
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W04
@ 030   ----------------------------------------
	.byte	PATT
	 .word	ch424_1_004
@ 031   ----------------------------------------
	.byte	PATT
	 .word	ch424_1_005
@ 032   ----------------------------------------
	.byte	PATT
	 .word	ch424_1_006
@ 033   ----------------------------------------
	.byte		N06   , Cn2 , v080
	.byte	W07
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W03
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v104
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W06
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W04
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W07
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W03
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W06
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W04
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v104
	.byte	W07
	.byte		        Cn2 , v080
	.byte	W06
	.byte		N03   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v104
	.byte	W01
@ 034   ----------------------------------------
	.byte	W02
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W04
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W07
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W03
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v080
	.byte	W03
	.byte		N06   , Cn2 , v104
	.byte	W06
	.byte		N09   , Cn2 , v080
	.byte	W10
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v104
	.byte	W07
	.byte		VOICE , 61
	.byte		N03   
	.byte	W03
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v104
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W06
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W04
	.byte		N06   , Cn2 , v127
	.byte	W06
@ 035   ----------------------------------------
	.byte	PATT
	 .word	ch424_1_009
@ 036   ----------------------------------------
	.byte	PATT
	 .word	ch424_1_010
@ 037   ----------------------------------------
	.byte	PATT
	 .word	ch424_1_011
@ 038   ----------------------------------------
	.byte	PATT
	 .word	ch424_1_012
@ 039   ----------------------------------------
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W07
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W03
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W06
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W04
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W07
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W03
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v104
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W06
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W04
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W07
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W02
@ 040   ----------------------------------------
	.byte	PATT
	 .word	ch424_1_001
@ 041   ----------------------------------------
	.byte	PATT
	 .word	ch424_1_002
@ 042   ----------------------------------------
	.byte	PATT
	 .word	ch424_1_003
@ 043   ----------------------------------------
	.byte	W02
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W04
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W07
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W03
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v080
	.byte	W06
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W04
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 5
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		N06   , Cn2 , v104
	.byte	W07
	.byte		        Cn2 , v080
	.byte	W06
	.byte		N03   , Cn2 , v064
	.byte	W04
	.byte		        Cn2 , v104
	.byte	W03
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v104
	.byte	W16
	.byte	GOTO
	 .word	ch424_1_B1
ch424_1_B2:
@ 044   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

ch424_2:
	.byte		VOL   , 127*ch424_mvl/mxv
	.byte	KEYSH , ch424_key+0
ch424_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W60
	.byte		        59
	.byte		N09   , En2 , v127
	.byte	W09
	.byte		N06   , En2 , v048
	.byte	W07
	.byte		N03   , Cs2 , v127
	.byte	W03
	.byte		N19   , Dn2 
	.byte	W17
@ 002   ----------------------------------------
ch424_2_002:
	.byte	W03
	.byte		MOD   , 34
	.byte		N19   , Cn2 , v127
	.byte	W19
	.byte		MOD   , 34
	.byte		N13   , Cn2 , v064
	.byte	W13
	.byte		MOD   , 0
	.byte		N03   , Gn1 , v127
	.byte	W03
	.byte		        An1 
	.byte	W04
	.byte		N06   , As1 
	.byte	W06
	.byte		N03   , As1 , v064
	.byte	W03
	.byte		N06   , An1 , v127
	.byte	W07
	.byte		N03   , An1 , v064
	.byte	W03
	.byte		N06   , Gn1 , v127
	.byte	W07
	.byte		N03   , Gn1 , v064
	.byte	W03
	.byte		N06   , Fn1 , v127
	.byte	W06
	.byte		N03   , Fn1 , v064
	.byte	W04
	.byte		N09   , En1 , v127
	.byte	W09
	.byte		N06   , En1 , v064
	.byte	W06
	.byte	PEND
@ 003   ----------------------------------------
ch424_2_003:
	.byte	W01
	.byte		MOD   , 34
	.byte		N13   , En1 , v127
	.byte	W13
	.byte		MOD   , 34
	.byte		N09   , En1 , v064
	.byte	W10
	.byte		VOICE , 0
	.byte		MOD   , 34
	.byte	W06
	.byte		VOICE , 59
	.byte		MOD   , 0
	.byte		N03   , Ds1 , v127
	.byte	W03
	.byte		N06   , En1 
	.byte	W07
	.byte		N03   , En1 , v064
	.byte	W03
	.byte		N06   , Gn1 , v127
	.byte	W07
	.byte		N03   , Gn1 , v064
	.byte	W03
	.byte		N06   , An1 , v127
	.byte	W06
	.byte		N03   , An1 , v064
	.byte	W04
	.byte		N06   , As1 , v127
	.byte	W06
	.byte		N03   , As1 , v064
	.byte	W03
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		N03   , Cn2 , v064
	.byte	W03
	.byte		N06   , Dn2 , v127
	.byte	W07
	.byte		N03   , Dn2 , v064
	.byte	W03
	.byte		N06   , As1 , v127
	.byte	W04
	.byte	PEND
@ 004   ----------------------------------------
ch424_2_004:
	.byte	W02
	.byte		N03   , As1 , v064
	.byte	W04
	.byte		N09   , Cn2 , v127
	.byte	W09
	.byte		N06   , Cn2 , v064
	.byte	W07
	.byte		MOD   , 34
	.byte		N28   , Gn1 , v127
	.byte	W28
	.byte	W01
	.byte		MOD   , 34
	.byte		N24   , Gn1 , v064
	.byte	W24
	.byte	W02
	.byte		MOD   , 0
	.byte		N03   , Dn2 , v127
	.byte	W03
	.byte		        Ds2 
	.byte	W04
	.byte		N09   , En2 
	.byte	W09
	.byte		N06   , En2 , v064
	.byte	W03
	.byte	PEND
@ 005   ----------------------------------------
ch424_2_005:
	.byte	W04
	.byte		N03   , Cs2 , v127
	.byte	W03
	.byte		N19   , Dn2 
	.byte	W20
	.byte		MOD   , 34
	.byte		N19   , Cn2 
	.byte	W19
	.byte		MOD   , 34
	.byte		N13   , Cn2 , v064
	.byte	W13
	.byte		MOD   , 0
	.byte		N03   , Gn1 , v127
	.byte	W03
	.byte		        An1 
	.byte	W04
	.byte		N06   , As1 
	.byte	W06
	.byte		N03   , As1 , v064
	.byte	W03
	.byte		N06   , An1 , v127
	.byte	W07
	.byte		N03   , An1 , v064
	.byte	W03
	.byte		N06   , Gn1 , v127
	.byte	W07
	.byte		N03   , Gn1 , v064
	.byte	W03
	.byte		N06   , Fn1 , v127
	.byte	W01
	.byte	PEND
@ 006   ----------------------------------------
ch424_2_006:
	.byte	W05
	.byte		N03   , Fn1 , v064
	.byte	W04
	.byte		N09   , En1 , v127
	.byte	W09
	.byte		N06   , En1 , v064
	.byte	W07
	.byte		        En1 , v127
	.byte	W06
	.byte		        En1 , v064
	.byte	W07
	.byte		N09   , Dn1 , v127
	.byte	W10
	.byte		MOD   , 34
	.byte		N28   , Cn1 
	.byte	W28
	.byte	W01
	.byte		MOD   , 34
	.byte		N42   , Cn1 , v064
	.byte	W19
	.byte	PEND
@ 007   ----------------------------------------
ch424_2_007:
	.byte	W23
	.byte		MOD   , 0
	.byte		N03   , Gn1 , v127
	.byte	W03
	.byte		        An1 
	.byte	W04
	.byte		N06   , Bn1 
	.byte	W06
	.byte		        Bn1 , v064
	.byte	W07
	.byte		N03   , Dn1 , v127
	.byte	W03
	.byte		        En1 
	.byte	W03
	.byte		N06   , An1 
	.byte	W07
	.byte		        An1 , v064
	.byte	W06
	.byte		N03   , Cn1 , v127
	.byte	W03
	.byte		        En1 
	.byte	W04
	.byte		MOD   , 34
	.byte		N16   , Gn1 
	.byte	W16
	.byte		MOD   , 34
	.byte		N22   , Gn1 , v064
	.byte	W11
	.byte	PEND
@ 008   ----------------------------------------
	.byte	W12
	.byte		VOICE , 27
	.byte		MOD   , 0
	.byte	W06
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		N03   , Cn2 , v064
	.byte	W03
	.byte		VOICE , 25
	.byte		N03   , Cn2 , v127
	.byte	W03
	.byte		N06   , Gn1 
	.byte	W07
	.byte		N03   , Gn1 , v064
	.byte	W03
	.byte		VOICE , 26
	.byte		N06   , As1 , v127
	.byte	W06
	.byte		VOICE , 25
	.byte		N06   , En2 
	.byte	W07
	.byte		N03   , En2 , v064
	.byte	W03
	.byte		VOICE , 26
	.byte		N03   , Gs1 , v127
	.byte	W03
	.byte		VOICE , 27
	.byte		N09   , Ds2 
	.byte	W10
	.byte		VOICE , 26
	.byte		N09   , Ds2 , v064
	.byte	W10
	.byte		        Ds2 , v052
	.byte	W10
	.byte		N06   , Ds2 , v048
	.byte	W06
@ 009   ----------------------------------------
	.byte		N03   , Dn2 , v127
	.byte	W03
	.byte		N06   , Ds2 
	.byte	W07
	.byte		VOICE , 25
	.byte		N03   , Gn2 
	.byte	W03
	.byte		VOICE , 26
	.byte		N06   , Dn2 
	.byte	W07
	.byte		N03   , Ds2 
	.byte	W03
	.byte		VOICE , 25
	.byte		N06   , Gn2 
	.byte	W06
	.byte		VOICE , 26
	.byte		N03   , Dn2 
	.byte	W04
	.byte		VOICE , 27
	.byte		N06   , Ds2 
	.byte	W06
	.byte		VOICE , 26
	.byte		N03   , Ds2 , v064
	.byte	W03
	.byte		N06   , Fn2 , v127
	.byte	W07
	.byte		VOICE , 25
	.byte		N03   , Gn2 
	.byte	W03
	.byte		VOICE , 27
	.byte		N06   , Cn3 
	.byte	W07
	.byte		VOICE , 26
	.byte		N03   , As2 
	.byte	W03
	.byte		VOICE , 25
	.byte		N06   , Cn3 
	.byte	W06
	.byte		N03   , Gn2 
	.byte	W04
	.byte		VOICE , 27
	.byte		N06   , Fn2 
	.byte	W06
	.byte		VOICE , 26
	.byte		N06   , Gs2 
	.byte	W07
	.byte		        Fn2 
	.byte	W06
	.byte		        Ds2 
	.byte	W05
@ 010   ----------------------------------------
	.byte	W02
	.byte		VOICE , 27
	.byte		N06   , Gs2 
	.byte	W06
	.byte		VOICE , 26
	.byte		N06   , Ds2 
	.byte	W07
	.byte		VOICE , 25
	.byte		N06   , Fn2 
	.byte	W06
	.byte		N03   , Fn2 , v064
	.byte	W03
	.byte		N06   , En2 , v127
	.byte	W07
	.byte		VOICE , 26
	.byte		N09   , Bn1 
	.byte	W10
	.byte		        Bn1 , v064
	.byte	W09
	.byte		        Bn1 , v048
	.byte	W10
	.byte		N03   , Bn1 , v127
	.byte	W03
	.byte		N06   , Cn2 
	.byte	W07
	.byte		N03   , Fn2 
	.byte	W03
	.byte		N06   , Ds2 
	.byte	W07
	.byte		N03   , Dn2 
	.byte	W03
	.byte		N06   , Cs2 
	.byte	W06
	.byte		N03   , Ds2 
	.byte	W04
	.byte		N06   , Cn2 
	.byte	W03
@ 011   ----------------------------------------
	.byte	W03
	.byte		VOICE , 25
	.byte		N09   
	.byte	W10
	.byte		        Cn2 , v064
	.byte	W10
	.byte		N28   , Cn2 , v048
	.byte	W28
	.byte	W01
	.byte		N03   , Fs2 , v127
	.byte	W03
	.byte		VOICE , 27
	.byte		N06   , Ds2 
	.byte	W07
	.byte		VOICE , 26
	.byte		N03   , Ds2 , v064
	.byte	W03
	.byte		N06   , Gs2 , v127
	.byte	W06
	.byte		N03   , Cs2 
	.byte	W04
	.byte		N06   , Dn2 
	.byte	W06
	.byte		        Ds2 
	.byte	W07
	.byte		N03   , Ds2 , v064
	.byte	W03
	.byte		N06   , Gs2 , v127
	.byte	W05
@ 012   ----------------------------------------
	.byte	W01
	.byte		N03   , Gs2 , v064
	.byte	W04
	.byte		N06   , Dn2 , v127
	.byte	W06
	.byte		        Ds2 
	.byte	W07
	.byte		        Gs2 
	.byte	W06
	.byte		VOICE , 25
	.byte		N03   , Gn2 
	.byte	W03
	.byte		N06   , Cn2 
	.byte	W07
	.byte		VOICE , 26
	.byte		N06   , Fs2 
	.byte	W06
	.byte		N03   , Fs2 , v064
	.byte	W04
	.byte		VOICE , 25
	.byte		N03   , En2 , v127
	.byte	W03
	.byte		VOICE , 26
	.byte		N03   , Fn2 
	.byte	W03
	.byte		        Fs2 
	.byte	W03
	.byte		        Fn2 
	.byte	W04
	.byte		N06   , Ds2 
	.byte	W06
	.byte		N03   , Ds2 , v064
	.byte	W03
	.byte		N06   , Bn1 , v127
	.byte	W07
	.byte		VOICE , 27
	.byte		N09   , Cn2 
	.byte	W10
	.byte		VOICE , 26
	.byte		N09   , Cn2 , v064
	.byte	W09
	.byte		        Cn2 , v048
	.byte	W04
@ 013   ----------------------------------------
	.byte	W06
	.byte		VOICE , 27
	.byte		N03   , Fn2 , v127
	.byte	W03
	.byte		VOICE , 26
	.byte		N06   , Cs2 
	.byte	W07
	.byte		VOICE , 25
	.byte		N03   , Cn2 
	.byte	W03
	.byte		VOICE , 26
	.byte		N06   , Fn2 
	.byte	W07
	.byte		N03   , Fn2 , v064
	.byte	W03
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		N09   , Ds2 
	.byte	W10
	.byte		N03   , Ds2 , v064
	.byte	W03
	.byte		        Cn2 , v127
	.byte	W04
	.byte		        Cs2 
	.byte	W03
	.byte		        Cn2 
	.byte	W03
	.byte		N06   , As1 
	.byte	W07
	.byte		N03   , Gs1 
	.byte	W03
	.byte		N06   , Fn1 
	.byte	W06
	.byte		N03   , Fs1 
	.byte	W04
	.byte		N06   , Gn1 
	.byte	W06
	.byte		N03   , As1 
	.byte	W03
	.byte		N06   , Ds2 
	.byte	W07
	.byte		N03   , As1 
	.byte	W02
@ 014   ----------------------------------------
	.byte	W01
	.byte		VOICE , 27
	.byte		N09   , Gn2 
	.byte	W10
	.byte		VOICE , 26
	.byte		N06   , Gn2 , v080
	.byte	W06
	.byte		N09   , Gs2 , v127
	.byte	W10
	.byte		N06   , Ds2 
	.byte	W07
	.byte		        Cn2 
	.byte	W06
	.byte		VOICE , 25
	.byte		N06   , As2 
	.byte	W07
	.byte		VOICE , 26
	.byte		N06   , Ds2 
	.byte	W06
	.byte		        Gs1 
	.byte	W07
	.byte		VOICE , 59
	.byte		N09   , En2 
	.byte	W09
	.byte		N06   , En2 , v048
	.byte	W07
	.byte		N03   , Cs2 , v127
	.byte	W03
	.byte		N19   , Dn2 
	.byte	W17
@ 015   ----------------------------------------
	.byte	PATT
	 .word	ch424_2_002
@ 016   ----------------------------------------
	.byte	PATT
	 .word	ch424_2_003
@ 017   ----------------------------------------
	.byte	PATT
	 .word	ch424_2_004
@ 018   ----------------------------------------
	.byte	PATT
	 .word	ch424_2_005
@ 019   ----------------------------------------
	.byte	PATT
	 .word	ch424_2_006
@ 020   ----------------------------------------
	.byte	PATT
	 .word	ch424_2_007
@ 021   ----------------------------------------
	.byte	W12
	.byte		VOICE , 0
	.byte		MOD   , 0
	.byte	W84
@ 022   ----------------------------------------
	.byte	W10
	.byte		VOICE , 6
	.byte		N48   , Gn1 , v096
	.byte	W48
	.byte	W01
	.byte		VOICE , 45
	.byte		N03   , Cn2 , v127
	.byte	W03
	.byte		        Cs2 
	.byte	W03
	.byte		        Dn2 
	.byte	W03
	.byte		        Ds2 
	.byte	W04
	.byte		N19   , En2 
	.byte	W19
	.byte		        Dn2 
	.byte	W05
@ 023   ----------------------------------------
	.byte	W15
	.byte		MOD   , 42
	.byte		N24   , Cn2 
	.byte	W24
	.byte	W02
	.byte		MOD   , 0
	.byte		N03   , An1 
	.byte	W03
	.byte		N09   , As1 
	.byte	W10
	.byte		        Bn1 
	.byte	W09
	.byte		        Gn1 
	.byte	W10
	.byte		        Fn1 
	.byte	W10
	.byte		        En1 
	.byte	W10
	.byte		MOD   , 42
	.byte		N16   , Dn1 
	.byte	W03
@ 024   ----------------------------------------
	.byte	W13
	.byte		MOD   , 0
	.byte		N13   
	.byte	W13
	.byte		N09   , Dn1 , v064
	.byte	W36
	.byte		N06   , Dn1 , v127
	.byte	W06
	.byte		        Fs1 
	.byte	W07
	.byte		N09   , An1 
	.byte	W09
	.byte		        Bn1 
	.byte	W10
	.byte		        Cn2 
	.byte	W02
@ 025   ----------------------------------------
	.byte	W08
	.byte		        En2 
	.byte	W10
	.byte		N16   , Dn2 
	.byte	W16
	.byte		N09   , Bn1 
	.byte	W10
	.byte		N03   , As1 
	.byte	W03
	.byte		N19   , Bn1 
	.byte	W19
	.byte		N13   , Bn1 , v064
	.byte	W13
	.byte		N06   , Bn1 , v048
	.byte	W17
@ 026   ----------------------------------------
	.byte	W16
	.byte		N03   , En2 , v127
	.byte	W03
	.byte		N06   , Gn2 
	.byte	W07
	.byte		N03   , Gn2 , v048
	.byte	W03
	.byte		N06   , Bn1 , v127
	.byte	W06
	.byte		        En2 
	.byte	W07
	.byte		N03   , En2 , v048
	.byte	W03
	.byte		        Gn1 , v127
	.byte	W03
	.byte		N06   , Cn2 
	.byte	W07
	.byte		N03   , Cn2 , v048
	.byte	W03
	.byte		N09   , Dn2 , v127
	.byte	W10
	.byte		        En2 
	.byte	W10
	.byte		        Fn2 
	.byte	W09
	.byte		        Ds2 
	.byte	W09
@ 027   ----------------------------------------
	.byte	W01
	.byte		        An1 
	.byte	W10
	.byte		N06   , Fn1 
	.byte	W06
	.byte		N22   , Ds1 
	.byte	W23
	.byte		N09   , Ds1 , v056
	.byte	W10
	.byte		        Ds1 , v048
	.byte	W36
	.byte		N06   , Bn2 , v127
	.byte	W06
	.byte		        Gn2 
	.byte	W04
@ 028   ----------------------------------------
	.byte	W03
	.byte		        An2 
	.byte	W06
	.byte		        Fn2 
	.byte	W07
	.byte		        Dn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W07
	.byte		        Dn2 
	.byte	W06
	.byte		        Bn1 
	.byte	W07
	.byte		N13   , Cn2 
	.byte	W13
	.byte		N03   , Bn1 
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte		N13   , An1 
	.byte	W13
	.byte		N03   
	.byte	W03
	.byte		        Gs1 
	.byte	W04
	.byte		N13   , Gn1 
	.byte	W13
	.byte		N03   
	.byte	W02
@ 029   ----------------------------------------
	.byte	W01
	.byte		        Gs1 
	.byte	W03
	.byte		N13   , An1 
	.byte	W13
	.byte		N03   , As1 
	.byte	W03
	.byte		        Bn1 
	.byte	W04
	.byte		N16   , Cn2 
	.byte	W16
	.byte		        Cn2 , v080
	.byte	W16
	.byte		        Cn2 , v064
	.byte	W16
	.byte		        Cn2 , v044
	.byte	W24
@ 030   ----------------------------------------
	.byte	W84
	.byte		N19   , Gn2 , v127
	.byte	W12
@ 031   ----------------------------------------
	.byte	W07
	.byte		N09   , Gn2 , v064
	.byte	W10
	.byte		N06   , Fs2 , v127
	.byte	W06
	.byte		N09   , Gn2 
	.byte	W10
	.byte		N03   , Gn2 , v064
	.byte	W03
	.byte		N06   , Fs2 , v127
	.byte	W07
	.byte		N19   , Gn2 
	.byte	W19
	.byte		N09   , Gn2 , v064
	.byte	W10
	.byte		        Gn2 , v127
	.byte	W10
	.byte		N03   , Fs2 
	.byte	W03
	.byte		N06   , Gn2 
	.byte	W07
	.byte		N03   , An2 
	.byte	W03
	.byte		N09   , Gn2 
	.byte	W01
@ 032   ----------------------------------------
	.byte	W09
	.byte		N36   , Fs2 
	.byte	W36
	.byte	W03
	.byte		N06   , Fs2 , v064
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W07
	.byte		        Fs2 , v064
	.byte	W06
	.byte		N09   , Fs2 , v127
	.byte	W10
	.byte		N06   , Fs2 , v064
	.byte	W06
	.byte		N03   , Fn2 , v127
	.byte	W04
	.byte		N06   , Fs2 
	.byte	W06
	.byte		N03   , Ds2 
	.byte	W03
@ 033   ----------------------------------------
	.byte		N06   , Gn2 
	.byte	W07
	.byte		N13   , Fs2 
	.byte	W13
	.byte		N16   , Fs2 , v064
	.byte	W16
	.byte		N09   , Fs2 , v127
	.byte	W10
	.byte		N03   , Fn2 
	.byte	W03
	.byte		N06   , Fs2 
	.byte	W07
	.byte		N03   , Gn2 
	.byte	W03
	.byte		N06   , Fs2 
	.byte	W06
	.byte		N03   , Fs2 , v064
	.byte	W04
	.byte		MOD   , 42
	.byte		N19   , En2 , v127
	.byte	W19
	.byte		MOD   , 42
	.byte		N19   , En2 , v064
	.byte	W08
@ 034   ----------------------------------------
	.byte	W12
	.byte		MOD   , 0
	.byte		N16   , Gn2 , v127
	.byte	W16
	.byte		N13   , Gn2 , v064
	.byte	W13
	.byte		N06   , Fs2 , v127
	.byte	W06
	.byte		N09   , Bn2 
	.byte	W10
	.byte		N03   , Bn2 , v064
	.byte	W03
	.byte		N06   , Fs2 , v127
	.byte	W07
	.byte		N13   , Gn2 
	.byte	W13
	.byte		N16   , Gn2 , v064
	.byte	W16
@ 035   ----------------------------------------
	.byte		N09   , Gn2 , v127
	.byte	W10
	.byte		N03   , Fs2 
	.byte	W03
	.byte		N06   , Gn2 
	.byte	W07
	.byte		N03   , An2 
	.byte	W03
	.byte		N09   , Gn2 
	.byte	W10
	.byte		N36   , Fs2 
	.byte	W36
	.byte	W03
	.byte		N06   , Fs2 , v064
	.byte	W06
	.byte		N09   , Fs2 , v127
	.byte	W10
	.byte		N03   , Fs2 , v064
	.byte	W03
	.byte		N09   , Fs2 , v127
	.byte	W05
@ 036   ----------------------------------------
	.byte	W05
	.byte		        Fs2 , v064
	.byte	W10
	.byte		N06   , Fs2 , v044
	.byte	W06
	.byte		        Gn2 , v127
	.byte	W07
	.byte		        Gn2 , v064
	.byte	W06
	.byte		N09   , Gn2 , v127
	.byte	W10
	.byte		        Gn2 , v064
	.byte	W10
	.byte		N06   , Gn2 , v044
	.byte	W06
	.byte		N09   , Fs2 , v127
	.byte	W10
	.byte		N03   , Fs2 , v064
	.byte	W03
	.byte		N09   , Fs2 , v127
	.byte	W10
	.byte		        Fs2 , v064
	.byte	W10
	.byte		N06   , Fs2 , v048
	.byte	W03
@ 037   ----------------------------------------
	.byte	W03
	.byte		N09   , Cn2 , v127
	.byte	W10
	.byte		N03   , Cn2 , v064
	.byte	W03
	.byte		N09   , Cn2 , v127
	.byte	W10
	.byte		        Cn2 , v064
	.byte	W10
	.byte		        Bn2 , v127
	.byte	W09
	.byte		N06   , Bn2 , v048
	.byte	W07
	.byte		N03   , Gs2 , v127
	.byte	W03
	.byte		N19   , An2 
	.byte	W20
	.byte		MOD   , 34
	.byte		N19   , Gn2 
	.byte	W19
	.byte		MOD   , 34
	.byte		N13   , Gn2 , v064
	.byte	W02
@ 038   ----------------------------------------
	.byte	W11
	.byte		MOD   , 0
	.byte		N03   , Dn2 , v127
	.byte	W03
	.byte		        En2 
	.byte	W04
	.byte		N06   , Fn2 
	.byte	W06
	.byte		N03   , Fn2 , v064
	.byte	W03
	.byte		N06   , En2 , v127
	.byte	W07
	.byte		N03   , En2 , v064
	.byte	W03
	.byte		N06   , Dn2 , v127
	.byte	W07
	.byte		N03   , Dn2 , v064
	.byte	W03
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		N03   , Cn2 , v064
	.byte	W04
	.byte		N09   , Bn1 , v127
	.byte	W09
	.byte		N06   , Bn1 , v064
	.byte	W07
	.byte		MOD   , 34
	.byte		N13   , Bn1 , v127
	.byte	W13
	.byte		MOD   , 34
	.byte		N09   , Bn1 , v064
	.byte	W10
@ 039   ----------------------------------------
	.byte		VOICE , 0
	.byte		MOD   , 34
	.byte	W06
	.byte		VOICE , 45
	.byte		MOD   , 0
	.byte		N03   , As1 , v127
	.byte	W03
	.byte		N06   , Bn1 
	.byte	W07
	.byte		N03   , Bn1 , v064
	.byte	W03
	.byte		N06   , Dn2 , v127
	.byte	W07
	.byte		N03   , Dn2 , v064
	.byte	W03
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		N03   , En2 , v064
	.byte	W04
	.byte		N06   , Fn2 , v127
	.byte	W06
	.byte		N03   , Fn2 , v064
	.byte	W03
	.byte		N06   , Gn2 , v127
	.byte	W07
	.byte		N03   , Gn2 , v064
	.byte	W03
	.byte		N06   , An2 , v127
	.byte	W07
	.byte		N03   , An2 , v064
	.byte	W03
	.byte		N06   , Fn2 , v127
	.byte	W06
	.byte		N03   , Fn2 , v064
	.byte	W04
	.byte		N09   , Gn2 , v127
	.byte	W09
	.byte		N06   , Gn2 , v064
	.byte	W07
	.byte		MOD   , 34
	.byte		N28   , Dn2 , v127
	.byte	W02
@ 040   ----------------------------------------
	.byte	W24
	.byte	W03
	.byte		MOD   , 34
	.byte		N24   , Dn2 , v064
	.byte	W24
	.byte	W02
	.byte		VOICE , 59
	.byte		MOD   , 0
	.byte		N03   , An1 , v127
	.byte	W03
	.byte		        As1 
	.byte	W04
	.byte		N09   , Bn1 
	.byte	W09
	.byte		N06   , Bn1 , v064
	.byte	W07
	.byte		N03   , Gs1 , v127
	.byte	W03
	.byte		N19   , An1 
	.byte	W17
@ 041   ----------------------------------------
	.byte	W03
	.byte		MOD   , 34
	.byte		N19   , Gn1 
	.byte	W19
	.byte		MOD   , 34
	.byte		N13   , Gn1 , v064
	.byte	W13
	.byte		MOD   , 0
	.byte		N03   , Gn1 , v127
	.byte	W03
	.byte		        An1 
	.byte	W04
	.byte		N09   , Bn1 
	.byte	W09
	.byte		        Bn1 , v064
	.byte	W10
	.byte		        Cn2 , v127
	.byte	W10
	.byte		        Cn2 , v064
	.byte	W10
	.byte		        Dn2 , v127
	.byte	W09
	.byte		        Dn2 , v064
	.byte	W06
@ 042   ----------------------------------------
	.byte	W04
	.byte		        Bn1 , v127
	.byte	W10
	.byte		        Bn1 , v064
	.byte	W10
	.byte		        Cn2 , v127
	.byte	W09
	.byte		        Cn2 , v068
	.byte	W10
	.byte		        Cn2 , v056
	.byte	W52
	.byte	W01
@ 043   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 .word	ch424_2_B1
ch424_2_B2:
@ 044   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

ch424_3:
	.byte		VOL   , 127*ch424_mvl/mxv
	.byte	KEYSH , ch424_key+0
ch424_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 74
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		VOICE , 71
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 74
	.byte		N03   , Cn2 , v096
	.byte	W03
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 71
	.byte		N03   
	.byte	W03
	.byte		VOICE , 74
	.byte		N06   
	.byte	W06
	.byte		N03   , Cn2 , v096
	.byte	W04
	.byte		VOICE , 71
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 74
	.byte		N03   
	.byte	W03
	.byte		N06   , Cn2 , v096
	.byte	W07
	.byte		VOICE , 71
	.byte		N13   , Cn2 , v127
	.byte	W13
	.byte		N09   , Cn2 , v096
	.byte	W10
	.byte		VOICE , 74
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		VOICE , 71
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 74
	.byte		N03   , Cn2 , v096
	.byte	W02
@ 001   ----------------------------------------
	.byte	W01
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 71
	.byte		N03   
	.byte	W03
	.byte		VOICE , 74
	.byte		N06   
	.byte	W06
	.byte		N03   , Cn2 , v096
	.byte	W04
	.byte		VOICE , 71
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 74
	.byte		N03   
	.byte	W03
	.byte		N06   , Cn2 , v096
	.byte	W07
	.byte		VOICE , 71
	.byte		N13   , Cn2 , v127
	.byte	W13
	.byte		N09   , Cn2 , v096
	.byte	W10
	.byte		VOICE , 74
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		VOICE , 71
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 74
	.byte		N03   , Cn2 , v096
	.byte	W03
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 71
	.byte		N03   
	.byte	W03
	.byte		VOICE , 74
	.byte		N06   
	.byte	W06
	.byte		N03   , Cn2 , v096
	.byte	W01
@ 002   ----------------------------------------
ch424_3_002:
	.byte	W03
	.byte		VOICE , 71
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 74
	.byte		N03   
	.byte	W03
	.byte		N06   , Cn2 , v096
	.byte	W07
	.byte		VOICE , 71
	.byte		N13   , Cn2 , v127
	.byte	W13
	.byte		N09   , Cn2 , v096
	.byte	W10
	.byte		VOICE , 74
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		VOICE , 71
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 74
	.byte		N03   , Cn2 , v096
	.byte	W03
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 71
	.byte		N03   
	.byte	W03
	.byte		VOICE , 74
	.byte		N06   
	.byte	W06
	.byte		N03   , Cn2 , v096
	.byte	W04
	.byte		VOICE , 71
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 74
	.byte		N03   
	.byte	W03
	.byte		N06   , Cn2 , v096
	.byte	W06
	.byte	PEND
@ 003   ----------------------------------------
ch424_3_003:
	.byte	W01
	.byte		VOICE , 71
	.byte		N13   , Cn2 , v127
	.byte	W13
	.byte		N09   , Cn2 , v096
	.byte	W10
	.byte		VOICE , 74
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		VOICE , 71
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 74
	.byte		N03   , Cn2 , v096
	.byte	W03
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 71
	.byte		N03   
	.byte	W03
	.byte		VOICE , 74
	.byte		N06   
	.byte	W06
	.byte		N03   , Cn2 , v096
	.byte	W04
	.byte		VOICE , 71
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 74
	.byte		N03   
	.byte	W03
	.byte		N06   , Cn2 , v096
	.byte	W07
	.byte		VOICE , 71
	.byte		N13   , Cn2 , v127
	.byte	W13
	.byte		N09   , Cn2 , v096
	.byte	W04
	.byte	PEND
@ 004   ----------------------------------------
ch424_3_004:
	.byte	W06
	.byte		VOICE , 74
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		VOICE , 71
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 74
	.byte		N03   , Cn2 , v096
	.byte	W03
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 71
	.byte		N03   
	.byte	W03
	.byte		VOICE , 74
	.byte		N06   
	.byte	W06
	.byte		N03   , Cn2 , v096
	.byte	W04
	.byte		VOICE , 71
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 74
	.byte		N03   
	.byte	W03
	.byte		N06   , Cn2 , v096
	.byte	W07
	.byte		VOICE , 71
	.byte		N13   , Cn2 , v127
	.byte	W13
	.byte		N09   , Cn2 , v096
	.byte	W10
	.byte		VOICE , 74
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		VOICE , 71
	.byte		N06   , Cn2 , v127
	.byte	W03
	.byte	PEND
@ 005   ----------------------------------------
ch424_3_005:
	.byte	W04
	.byte		VOICE , 74
	.byte		N03   , Cn2 , v096
	.byte	W03
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 71
	.byte		N03   
	.byte	W03
	.byte		VOICE , 74
	.byte		N06   
	.byte	W06
	.byte		N03   , Cn2 , v096
	.byte	W04
	.byte		VOICE , 71
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 74
	.byte		N03   
	.byte	W03
	.byte		N06   , Cn2 , v096
	.byte	W07
	.byte		VOICE , 71
	.byte		N13   , Cn2 , v127
	.byte	W13
	.byte		N09   , Cn2 , v096
	.byte	W10
	.byte		VOICE , 74
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		VOICE , 71
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 74
	.byte		N03   , Cn2 , v096
	.byte	W03
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 71
	.byte		N03   
	.byte	W03
	.byte		VOICE , 74
	.byte		N06   
	.byte	W01
	.byte	PEND
@ 006   ----------------------------------------
ch424_3_006:
	.byte	W05
	.byte		N03   , Cn2 , v096
	.byte	W04
	.byte		VOICE , 71
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 74
	.byte		N03   
	.byte	W03
	.byte		N06   , Cn2 , v096
	.byte	W07
	.byte		VOICE , 71
	.byte		N13   , Cn2 , v127
	.byte	W13
	.byte		N09   , Cn2 , v096
	.byte	W10
	.byte		VOICE , 74
	.byte		N06   , Fn1 , v127
	.byte	W06
	.byte		N03   , Fn1 , v052
	.byte	W03
	.byte		VOICE , 71
	.byte		N06   , Fn2 , v127
	.byte	W07
	.byte		VOICE , 74
	.byte		N03   , Fn1 , v096
	.byte	W03
	.byte		N06   , Fn1 , v127
	.byte	W07
	.byte		VOICE , 71
	.byte		N03   , Fn2 
	.byte	W03
	.byte		VOICE , 74
	.byte		N06   , Fn1 
	.byte	W06
	.byte		N03   , Fn1 , v096
	.byte	W04
	.byte		VOICE , 71
	.byte		N06   , Fn2 , v127
	.byte	W06
	.byte		VOICE , 74
	.byte		N03   , Fn1 
	.byte	W03
	.byte	PEND
@ 007   ----------------------------------------
ch424_3_007:
	.byte		N06   , Fn1 , v096
	.byte	W07
	.byte		VOICE , 71
	.byte		N13   , Fn2 , v127
	.byte	W13
	.byte		N09   , Fn2 , v096
	.byte	W10
	.byte		VOICE , 74
	.byte		N06   , Gn1 , v127
	.byte	W06
	.byte		N03   , Gn1 , v052
	.byte	W03
	.byte		VOICE , 71
	.byte		N06   , Gn1 , v127
	.byte	W07
	.byte		VOICE , 74
	.byte		N03   , Gn1 , v096
	.byte	W03
	.byte		N06   , Gn1 , v127
	.byte	W07
	.byte		VOICE , 71
	.byte		N03   
	.byte	W03
	.byte		VOICE , 74
	.byte		N06   
	.byte	W06
	.byte		N03   , Gn1 , v096
	.byte	W04
	.byte		VOICE , 71
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 74
	.byte		N03   
	.byte	W03
	.byte		N06   , Cn2 , v096
	.byte	W07
	.byte		VOICE , 71
	.byte		N13   , Cn2 , v127
	.byte	W11
	.byte	PEND
@ 008   ----------------------------------------
	.byte	W02
	.byte		N09   , Cn2 , v096
	.byte	W10
	.byte		VOICE , 74
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		VOICE , 71
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 74
	.byte		N03   , Cn2 , v096
	.byte	W03
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 71
	.byte		N03   
	.byte	W03
	.byte		VOICE , 74
	.byte		N06   
	.byte	W06
	.byte		N03   , Cn2 , v096
	.byte	W04
	.byte		VOICE , 71
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 74
	.byte		N03   
	.byte	W03
	.byte		N06   , Cn2 , v096
	.byte	W07
	.byte		VOICE , 71
	.byte		N13   , Cn2 , v127
	.byte	W13
	.byte		N09   , Cn2 , v096
	.byte	W10
	.byte		VOICE , 74
	.byte		N06   , Cn2 , v127
	.byte	W06
@ 009   ----------------------------------------
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		VOICE , 71
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 74
	.byte		N03   , Cn2 , v096
	.byte	W03
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 71
	.byte		N03   
	.byte	W03
	.byte		VOICE , 74
	.byte		N06   
	.byte	W06
	.byte		N03   , Cn2 , v096
	.byte	W04
	.byte		VOICE , 71
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 74
	.byte		N03   
	.byte	W03
	.byte		N06   , Cn2 , v096
	.byte	W07
	.byte		VOICE , 71
	.byte		N13   , Cn2 , v127
	.byte	W13
	.byte		N09   , Cn2 , v096
	.byte	W10
	.byte		VOICE , 74
	.byte		N06   , Fn1 , v127
	.byte	W06
	.byte		N03   , Fn1 , v052
	.byte	W03
	.byte		VOICE , 71
	.byte		N06   , Fn2 , v127
	.byte	W07
	.byte		VOICE , 74
	.byte		N03   , Fn1 , v096
	.byte	W03
	.byte		N06   , Fn1 , v127
	.byte	W05
@ 010   ----------------------------------------
	.byte	W02
	.byte		VOICE , 71
	.byte		N03   , Fn2 
	.byte	W03
	.byte		VOICE , 74
	.byte		N06   , Fn1 
	.byte	W06
	.byte		N03   , Fn1 , v096
	.byte	W04
	.byte		VOICE , 71
	.byte		N06   , Fn2 , v127
	.byte	W06
	.byte		VOICE , 74
	.byte		N03   , Fn1 
	.byte	W03
	.byte		N06   , Fn1 , v096
	.byte	W07
	.byte		VOICE , 71
	.byte		N13   , Fn2 , v127
	.byte	W13
	.byte		N09   , Fn2 , v096
	.byte	W10
	.byte		VOICE , 74
	.byte		N06   , Gn1 , v127
	.byte	W06
	.byte		N03   , Gn1 , v052
	.byte	W03
	.byte		VOICE , 71
	.byte		N06   , Gn1 , v127
	.byte	W07
	.byte		VOICE , 74
	.byte		N03   , Gn1 , v096
	.byte	W03
	.byte		N06   , Gn1 , v127
	.byte	W07
	.byte		VOICE , 71
	.byte		N03   
	.byte	W03
	.byte		VOICE , 74
	.byte		N06   
	.byte	W06
	.byte		N03   , Gn1 , v096
	.byte	W04
	.byte		VOICE , 71
	.byte		N06   , Cn2 , v127
	.byte	W03
@ 011   ----------------------------------------
	.byte	W03
	.byte		VOICE , 74
	.byte		N03   
	.byte	W03
	.byte		N06   , Cn2 , v096
	.byte	W07
	.byte		VOICE , 71
	.byte		N13   , Cn2 , v127
	.byte	W13
	.byte		N09   , Cn2 , v096
	.byte	W10
	.byte		VOICE , 74
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		VOICE , 71
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 74
	.byte		N03   , Cn2 , v096
	.byte	W03
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 71
	.byte		N03   
	.byte	W03
	.byte		VOICE , 74
	.byte		N06   
	.byte	W06
	.byte		N03   , Cn2 , v096
	.byte	W04
	.byte		VOICE , 71
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 74
	.byte		N03   
	.byte	W03
	.byte		N06   , Cn2 , v096
	.byte	W07
	.byte		VOICE , 71
	.byte		N13   , Cn2 , v127
	.byte	W05
@ 012   ----------------------------------------
	.byte	W08
	.byte		N09   , Cn2 , v096
	.byte	W10
	.byte		VOICE , 74
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		VOICE , 71
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 74
	.byte		N03   , Cn2 , v096
	.byte	W03
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 71
	.byte		N03   
	.byte	W03
	.byte		VOICE , 74
	.byte		N06   
	.byte	W06
	.byte		N03   , Cn2 , v096
	.byte	W04
	.byte		VOICE , 71
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 74
	.byte		N03   
	.byte	W03
	.byte		N06   , Cn2 , v096
	.byte	W07
	.byte		VOICE , 71
	.byte		N13   , Cn2 , v127
	.byte	W13
	.byte		N09   , Cn2 , v096
	.byte	W10
@ 013   ----------------------------------------
	.byte		VOICE , 74
	.byte		N06   , Fn1 , v127
	.byte	W06
	.byte		N03   , Fn1 , v052
	.byte	W03
	.byte		VOICE , 71
	.byte		N06   , Fn2 , v127
	.byte	W07
	.byte		VOICE , 74
	.byte		N03   , Fn1 , v096
	.byte	W03
	.byte		N06   , Fn1 , v127
	.byte	W07
	.byte		VOICE , 71
	.byte		N03   , Fn2 
	.byte	W03
	.byte		VOICE , 74
	.byte		N06   , Fn1 
	.byte	W06
	.byte		N03   , Fn1 , v096
	.byte	W04
	.byte		VOICE , 71
	.byte		N06   , Fn2 , v127
	.byte	W06
	.byte		VOICE , 74
	.byte		N03   , Fn1 
	.byte	W03
	.byte		N06   , Fn1 , v096
	.byte	W07
	.byte		VOICE , 71
	.byte		N13   , Fn2 , v127
	.byte	W13
	.byte		N09   , Fn2 , v096
	.byte	W10
	.byte		VOICE , 74
	.byte		N06   , Gn1 , v127
	.byte	W06
	.byte		N03   , Gn1 , v052
	.byte	W03
	.byte		VOICE , 71
	.byte		N06   , Gn1 , v127
	.byte	W07
	.byte		VOICE , 74
	.byte		N03   , Gn1 , v096
	.byte	W02
@ 014   ----------------------------------------
	.byte	W01
	.byte		N06   , Gn1 , v127
	.byte	W07
	.byte		VOICE , 71
	.byte		N03   
	.byte	W03
	.byte		VOICE , 74
	.byte		N06   
	.byte	W06
	.byte		N03   , Gn1 , v096
	.byte	W04
	.byte		VOICE , 71
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 74
	.byte		N03   
	.byte	W03
	.byte		N06   , Cn2 , v096
	.byte	W07
	.byte		VOICE , 71
	.byte		N13   , Cn2 , v127
	.byte	W13
	.byte		N09   , Cn2 , v096
	.byte	W10
	.byte		VOICE , 74
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		VOICE , 71
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 74
	.byte		N03   , Cn2 , v096
	.byte	W03
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 71
	.byte		N03   
	.byte	W03
	.byte		VOICE , 74
	.byte		N06   
	.byte	W06
	.byte		N03   , Cn2 , v096
	.byte	W01
@ 015   ----------------------------------------
	.byte	PATT
	 .word	ch424_3_002
@ 016   ----------------------------------------
	.byte	PATT
	 .word	ch424_3_003
@ 017   ----------------------------------------
	.byte	PATT
	 .word	ch424_3_004
@ 018   ----------------------------------------
	.byte	PATT
	 .word	ch424_3_005
@ 019   ----------------------------------------
	.byte	PATT
	 .word	ch424_3_006
@ 020   ----------------------------------------
	.byte	PATT
	 .word	ch424_3_007
@ 021   ----------------------------------------
	.byte	W02
	.byte		N09   , Cn2 , v096
	.byte	W10
	.byte		VOICE , 6
	.byte		N52   , Cn2 , v127
	.byte	W52
	.byte		VOICE , 5
	.byte		N13   , Cn2 , v104
	.byte	W13
	.byte		VOICE , 6
	.byte		N06   , Cn2 , v080
	.byte	W06
	.byte		VOICE , 61
	.byte		N06   , Cn2 , v120
	.byte	W07
	.byte		VOICE , 6
	.byte		N16   , Cn2 , v127
	.byte	W06
@ 022   ----------------------------------------
	.byte	W10
	.byte		VOICE , 61
	.byte		N19   
	.byte	W19
	.byte		VOICE , 6
	.byte		N19   , Dn1 , v088
	.byte	W20
	.byte		VOICE , 61
	.byte		N03   , Cn2 , v080
	.byte	W03
	.byte		N09   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 16
	.byte		N09   , Bn1 , v092
	.byte	W10
	.byte		        Cn2 
	.byte	W09
	.byte		        An1 
	.byte	W10
	.byte		        Gn1 
	.byte	W05
@ 023   ----------------------------------------
	.byte	W05
	.byte		        Fn1 
	.byte	W10
	.byte		        En1 
	.byte	W09
	.byte		        Gn1 
	.byte	W10
	.byte		        Cn2 
	.byte	W10
	.byte		        Cs2 
	.byte	W10
	.byte		        Dn2 
	.byte	W09
	.byte		        Bn1 
	.byte	W10
	.byte		        Gn1 
	.byte	W10
	.byte		        En1 
	.byte	W10
	.byte		        Fn1 
	.byte	W03
@ 024   ----------------------------------------
	.byte	W06
	.byte		        Bn1 
	.byte	W10
	.byte		        Dn2 
	.byte	W10
	.byte		N06   , Fn2 
	.byte	W06
	.byte		VOICE , 0
	.byte	W04
	.byte		        16
	.byte		N09   , Fs2 
	.byte	W09
	.byte		        Dn2 
	.byte	W10
	.byte		        An1 
	.byte	W10
	.byte		        En1 
	.byte	W10
	.byte		        Fs1 
	.byte	W09
	.byte		        An1 
	.byte	W10
	.byte		        Dn2 
	.byte	W02
@ 025   ----------------------------------------
	.byte	W08
	.byte		        An1 
	.byte	W10
	.byte		        Gn1 
	.byte	W09
	.byte		        Bn1 
	.byte	W10
	.byte		        Dn2 
	.byte	W10
	.byte		        En2 
	.byte	W10
	.byte		        Dn2 
	.byte	W09
	.byte		        Bn1 
	.byte	W10
	.byte		        Gn1 
	.byte	W10
	.byte		N06   , Fn1 
	.byte	W06
	.byte		VOICE , 0
	.byte	W04
@ 026   ----------------------------------------
	.byte		        16
	.byte		N09   , En1 
	.byte	W09
	.byte		        Gn1 
	.byte	W10
	.byte		        Cn2 
	.byte	W10
	.byte		        En2 
	.byte	W10
	.byte		        Gn2 
	.byte	W09
	.byte		        En2 
	.byte	W10
	.byte		        Cn2 
	.byte	W10
	.byte		        Gn1 
	.byte	W10
	.byte		        Fn1 
	.byte	W09
	.byte		        An1 
	.byte	W09
@ 027   ----------------------------------------
	.byte	W01
	.byte		        Cn2 
	.byte	W10
	.byte		        Dn2 
	.byte	W10
	.byte		        Fn2 
	.byte	W09
	.byte		        Dn2 
	.byte	W10
	.byte		        Cn2 
	.byte	W10
	.byte		N06   , An1 
	.byte	W06
	.byte		VOICE , 0
	.byte	W04
	.byte		        16
	.byte		N09   , Gn1 
	.byte	W09
	.byte		        Bn1 
	.byte	W10
	.byte		        Dn2 
	.byte	W10
	.byte		        En2 
	.byte	W07
@ 028   ----------------------------------------
	.byte	W03
	.byte		        Gn2 
	.byte	W09
	.byte		        En2 
	.byte	W10
	.byte		        Dn2 
	.byte	W10
	.byte		        Bn1 
	.byte	W10
	.byte		        Cn2 
	.byte	W09
	.byte		        An1 
	.byte	W10
	.byte		        Gn1 
	.byte	W10
	.byte		        En1 
	.byte	W10
	.byte		        Cn1 
	.byte	W09
	.byte		        Gn1 
	.byte	W06
@ 029   ----------------------------------------
	.byte	W04
	.byte		        An1 
	.byte	W10
	.byte		N06   , Gn1 
	.byte	W06
	.byte		VOICE , 0
	.byte	W04
	.byte		        74
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		VOICE , 71
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 74
	.byte		N03   , Cn2 , v096
	.byte	W03
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 71
	.byte		N03   
	.byte	W03
	.byte		VOICE , 74
	.byte		N06   
	.byte	W06
	.byte		N03   , Cn2 , v096
	.byte	W04
	.byte		VOICE , 71
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 74
	.byte		N03   
	.byte	W03
	.byte		N06   , Cn2 , v096
	.byte	W07
	.byte		VOICE , 71
	.byte		N13   , Cn2 , v127
	.byte	W13
	.byte		N09   , Cn2 , v096
	.byte	W04
@ 030   ----------------------------------------
	.byte	W06
	.byte		VOICE , 74
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		VOICE , 71
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 74
	.byte		N03   , Cn2 , v096
	.byte	W03
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 71
	.byte		N03   
	.byte	W03
	.byte		VOICE , 74
	.byte		N06   
	.byte	W06
	.byte		N03   , Cn2 , v096
	.byte	W04
	.byte		VOICE , 71
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 74
	.byte		N03   
	.byte	W03
	.byte		N06   , Cn2 , v096
	.byte	W07
	.byte		VOICE , 71
	.byte		N13   , Cn2 , v127
	.byte	W13
	.byte		N09   , Cn2 , v096
	.byte	W10
	.byte		VOICE , 45
	.byte		N19   , Bn2 , v127
	.byte	W12
@ 031   ----------------------------------------
	.byte	W07
	.byte		N09   , Bn2 , v064
	.byte	W10
	.byte		N06   , As2 , v127
	.byte	W06
	.byte		N09   , Bn2 
	.byte	W10
	.byte		N03   , Bn2 , v064
	.byte	W03
	.byte		N06   , As2 , v127
	.byte	W07
	.byte		N19   , Bn2 
	.byte	W19
	.byte		N09   , Bn2 , v064
	.byte	W10
	.byte		        Bn2 , v127
	.byte	W10
	.byte		N03   , As2 
	.byte	W03
	.byte		N06   , Bn2 
	.byte	W07
	.byte		N03   , Cn3 
	.byte	W03
	.byte		N09   , Bn2 
	.byte	W01
@ 032   ----------------------------------------
	.byte	W09
	.byte		N36   , An2 
	.byte	W36
	.byte	W03
	.byte		N06   , An2 , v064
	.byte	W06
	.byte		        An2 , v127
	.byte	W07
	.byte		        An2 , v064
	.byte	W06
	.byte		N09   , An2 , v127
	.byte	W10
	.byte		N06   , An2 , v064
	.byte	W06
	.byte		N03   , Gs2 , v127
	.byte	W04
	.byte		N06   , An2 
	.byte	W06
	.byte		N03   , Fs2 
	.byte	W03
@ 033   ----------------------------------------
	.byte		N06   , Bn2 
	.byte	W07
	.byte		N13   , An2 
	.byte	W13
	.byte		N16   , An2 , v064
	.byte	W16
	.byte		N09   , An2 , v127
	.byte	W10
	.byte		N03   , Gs2 
	.byte	W03
	.byte		N06   , An2 
	.byte	W07
	.byte		N03   , Bn2 
	.byte	W03
	.byte		N06   , An2 
	.byte	W06
	.byte		N03   , An2 , v064
	.byte	W04
	.byte		MOD   , 42
	.byte		N19   , Gn2 , v127
	.byte	W19
	.byte		MOD   , 42
	.byte		N19   , Gn2 , v064
	.byte	W08
@ 034   ----------------------------------------
	.byte	W12
	.byte		MOD   , 0
	.byte		N16   , Bn2 , v127
	.byte	W16
	.byte		N06   , Bn2 , v064
	.byte	W06
	.byte		N03   , As2 , v088
	.byte	W04
	.byte		        Bn2 , v096
	.byte	W03
	.byte		        As2 , v104
	.byte	W03
	.byte		        Bn2 
	.byte	W03
	.byte		N09   , En3 , v127
	.byte	W10
	.byte		N03   , En3 , v064
	.byte	W03
	.byte		N06   , As2 , v127
	.byte	W07
	.byte		N13   , Bn2 
	.byte	W13
	.byte		N16   , Bn2 , v064
	.byte	W16
@ 035   ----------------------------------------
	.byte		N09   , Bn2 , v127
	.byte	W10
	.byte		N03   , As2 
	.byte	W03
	.byte		N06   , Bn2 
	.byte	W07
	.byte		N03   , Cn3 
	.byte	W03
	.byte		N09   , Bn2 
	.byte	W10
	.byte		N36   , An2 
	.byte	W36
	.byte	W03
	.byte		N06   , An2 , v064
	.byte	W06
	.byte		N09   , An2 , v127
	.byte	W10
	.byte		N03   , An2 , v064
	.byte	W03
	.byte		N09   , An2 , v127
	.byte	W05
@ 036   ----------------------------------------
	.byte	W05
	.byte		        An2 , v064
	.byte	W10
	.byte		N06   , An2 , v044
	.byte	W06
	.byte		        As2 , v127
	.byte	W07
	.byte		        As2 , v064
	.byte	W06
	.byte		N09   , As2 , v127
	.byte	W10
	.byte		        As2 , v064
	.byte	W10
	.byte		N06   , As2 , v044
	.byte	W06
	.byte		N03   , Bn2 , v127
	.byte	W03
	.byte		        Cn3 
	.byte	W04
	.byte		        Bn2 
	.byte	W03
	.byte		        Cn3 
	.byte	W03
	.byte		        Bn2 
	.byte	W03
	.byte		        Cn3 
	.byte	W04
	.byte		        Bn2 
	.byte	W03
	.byte		        Cn3 
	.byte	W03
	.byte		        Cs3 
	.byte	W03
	.byte		        Dn3 
	.byte	W04
	.byte		        En3 
	.byte	W03
@ 037   ----------------------------------------
	.byte		        Fs3 
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        Fs3 
	.byte	W04
	.byte		        En3 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        Fs3 
	.byte	W04
	.byte		        En3 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        Fs3 
	.byte	W04
	.byte		VOICE , 74
	.byte		N06   , Gn1 
	.byte	W06
	.byte		N03   , Gn1 , v052
	.byte	W03
	.byte		VOICE , 71
	.byte		N06   , Gn1 , v127
	.byte	W07
	.byte		VOICE , 74
	.byte		N03   , Gn1 , v096
	.byte	W03
	.byte		N06   , Gn1 , v127
	.byte	W07
	.byte		VOICE , 71
	.byte		N03   
	.byte	W03
	.byte		VOICE , 74
	.byte		N06   
	.byte	W06
	.byte		N03   , Gn1 , v096
	.byte	W04
	.byte		VOICE , 71
	.byte		N06   , Gn1 , v127
	.byte	W06
	.byte		VOICE , 74
	.byte		N03   
	.byte	W03
	.byte		N06   , Gn1 , v096
	.byte	W07
	.byte		VOICE , 71
	.byte		N13   , Gn1 , v127
	.byte	W05
@ 038   ----------------------------------------
	.byte	W08
	.byte		N09   , Gn1 , v096
	.byte	W10
	.byte		VOICE , 74
	.byte		N06   , Gn1 , v127
	.byte	W06
	.byte		N03   , Gn1 , v052
	.byte	W03
	.byte		VOICE , 71
	.byte		N06   , Gn1 , v127
	.byte	W07
	.byte		VOICE , 74
	.byte		N03   , Gn1 , v096
	.byte	W03
	.byte		N06   , Gn1 , v127
	.byte	W07
	.byte		VOICE , 71
	.byte		N03   
	.byte	W03
	.byte		VOICE , 74
	.byte		N06   
	.byte	W06
	.byte		N03   , Gn1 , v096
	.byte	W04
	.byte		VOICE , 71
	.byte		N06   , Gn1 , v127
	.byte	W06
	.byte		VOICE , 74
	.byte		N03   
	.byte	W03
	.byte		N06   , Gn1 , v096
	.byte	W07
	.byte		VOICE , 71
	.byte		N13   , Gn1 , v127
	.byte	W13
	.byte		N09   , Gn1 , v096
	.byte	W10
@ 039   ----------------------------------------
	.byte		VOICE , 74
	.byte		N06   , Gn1 , v127
	.byte	W06
	.byte		N03   , Gn1 , v052
	.byte	W03
	.byte		VOICE , 71
	.byte		N06   , Gn1 , v127
	.byte	W07
	.byte		VOICE , 74
	.byte		N03   , Gn1 , v096
	.byte	W03
	.byte		N06   , Gn1 , v127
	.byte	W07
	.byte		VOICE , 71
	.byte		N03   
	.byte	W03
	.byte		VOICE , 74
	.byte		N06   
	.byte	W06
	.byte		N03   , Gn1 , v096
	.byte	W04
	.byte		VOICE , 71
	.byte		N06   , Gn1 , v127
	.byte	W06
	.byte		VOICE , 74
	.byte		N03   
	.byte	W03
	.byte		N06   , Gn1 , v096
	.byte	W07
	.byte		VOICE , 71
	.byte		N13   , Gn1 , v127
	.byte	W13
	.byte		N09   , Gn1 , v096
	.byte	W10
	.byte		VOICE , 74
	.byte		N06   , Gn1 , v127
	.byte	W06
	.byte		N03   , Gn1 , v052
	.byte	W03
	.byte		VOICE , 71
	.byte		N06   , Gn1 , v127
	.byte	W07
	.byte		VOICE , 74
	.byte		N03   , Gn1 , v096
	.byte	W02
@ 040   ----------------------------------------
	.byte	W01
	.byte		N06   , Gn1 , v127
	.byte	W07
	.byte		VOICE , 71
	.byte		N03   
	.byte	W03
	.byte		VOICE , 74
	.byte		N06   
	.byte	W06
	.byte		N03   , Gn1 , v096
	.byte	W04
	.byte		VOICE , 71
	.byte		N06   , Gn1 , v127
	.byte	W06
	.byte		VOICE , 74
	.byte		N03   
	.byte	W03
	.byte		N06   , Gn1 , v096
	.byte	W07
	.byte		VOICE , 71
	.byte		N13   , Gn1 , v127
	.byte	W13
	.byte		N09   , Gn1 , v096
	.byte	W10
	.byte		VOICE , 74
	.byte		N06   , Gn1 , v127
	.byte	W06
	.byte		N03   , Gn1 , v052
	.byte	W03
	.byte		VOICE , 71
	.byte		N06   , Gn1 , v127
	.byte	W07
	.byte		VOICE , 74
	.byte		N03   , Gn1 , v096
	.byte	W03
	.byte		N06   , Gn1 , v127
	.byte	W07
	.byte		VOICE , 71
	.byte		N03   
	.byte	W03
	.byte		VOICE , 74
	.byte		N06   
	.byte	W06
	.byte		N03   , Gn1 , v096
	.byte	W01
@ 041   ----------------------------------------
	.byte	W03
	.byte		VOICE , 71
	.byte		N06   , Gn1 , v127
	.byte	W06
	.byte		VOICE , 74
	.byte		N03   
	.byte	W03
	.byte		N06   , Gn1 , v096
	.byte	W07
	.byte		VOICE , 71
	.byte		N13   , Gn1 , v127
	.byte	W13
	.byte		N09   , Gn1 , v096
	.byte	W10
	.byte		VOICE , 74
	.byte		N06   , Gn1 , v127
	.byte	W06
	.byte		N03   , Gn1 , v052
	.byte	W03
	.byte		VOICE , 71
	.byte		N06   , Gn1 , v127
	.byte	W07
	.byte		VOICE , 74
	.byte		N03   , Gn1 , v096
	.byte	W03
	.byte		N06   , Gn1 , v127
	.byte	W07
	.byte		VOICE , 71
	.byte		N03   
	.byte	W03
	.byte		VOICE , 74
	.byte		N06   
	.byte	W06
	.byte		N03   , Gn1 , v096
	.byte	W04
	.byte		VOICE , 71
	.byte		N06   , Gn1 , v127
	.byte	W06
	.byte		VOICE , 74
	.byte		N03   
	.byte	W03
	.byte		N06   , Gn1 , v096
	.byte	W06
@ 042   ----------------------------------------
	.byte	W01
	.byte		VOICE , 71
	.byte		N13   , Gn1 , v127
	.byte	W13
	.byte		N09   , Gn1 , v096
	.byte	W10
	.byte		VOICE , 74
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		VOICE , 71
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 74
	.byte		N03   , Cn2 , v096
	.byte	W03
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 71
	.byte		N03   
	.byte	W03
	.byte		VOICE , 74
	.byte		N06   
	.byte	W06
	.byte		N03   , Cn2 , v096
	.byte	W04
	.byte		VOICE , 71
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 74
	.byte		N03   
	.byte	W03
	.byte		N06   , Cn2 , v096
	.byte	W07
	.byte		VOICE , 71
	.byte		N13   , Cn2 , v127
	.byte	W13
	.byte		N09   , Cn2 , v096
	.byte	W04
@ 043   ----------------------------------------
	.byte	W06
	.byte		VOICE , 74
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		N03   , Cn2 , v052
	.byte	W03
	.byte		VOICE , 71
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 74
	.byte		N03   , Cn2 , v096
	.byte	W03
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 71
	.byte		N03   
	.byte	W03
	.byte		VOICE , 74
	.byte		N06   
	.byte	W06
	.byte		N03   , Cn2 , v096
	.byte	W04
	.byte		VOICE , 71
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 74
	.byte		N03   
	.byte	W03
	.byte		N06   , Cn2 , v096
	.byte	W07
	.byte		VOICE , 71
	.byte		N13   , Cn2 , v127
	.byte	W13
	.byte		N09   , Cn2 , v096
	.byte	W22
	.byte	GOTO
	 .word	ch424_3_B1
ch424_3_B2:
@ 044   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

ch424_4:
	.byte		VOL   , 127*ch424_mvl/mxv
	.byte	KEYSH , ch424_key+0
ch424_4_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 16
	.byte		N09   , Cn2 , v092
	.byte	W09
	.byte		        En2 
	.byte	W10
	.byte		        Gn2 
	.byte	W10
	.byte		        An2 
	.byte	W10
	.byte		        Cn3 
	.byte	W09
	.byte		        An2 
	.byte	W10
	.byte		        Gn2 
	.byte	W10
	.byte		        En2 
	.byte	W10
	.byte		        Cn2 
	.byte	W09
	.byte		        En2 
	.byte	W09
@ 001   ----------------------------------------
	.byte	W01
	.byte		        Gn2 
	.byte	W10
	.byte		        An2 
	.byte	W10
	.byte		        Cn3 
	.byte	W09
	.byte		        An2 
	.byte	W10
	.byte		        Gn2 
	.byte	W10
	.byte		        En2 
	.byte	W10
	.byte		        Cn2 
	.byte	W09
	.byte		        En2 
	.byte	W10
	.byte		        Gn2 
	.byte	W10
	.byte		        An2 
	.byte	W07
@ 002   ----------------------------------------
ch424_4_002:
	.byte	W03
	.byte		N09   , Cn3 , v092
	.byte	W09
	.byte		        An2 
	.byte	W10
	.byte		        Gn2 
	.byte	W10
	.byte		        En2 
	.byte	W10
	.byte		        Cn2 
	.byte	W09
	.byte		        En2 
	.byte	W10
	.byte		        Gn2 
	.byte	W10
	.byte		        An2 
	.byte	W10
	.byte		        Cn3 
	.byte	W09
	.byte		        An2 
	.byte	W06
	.byte	PEND
@ 003   ----------------------------------------
ch424_4_003:
	.byte	W04
	.byte		N09   , Gn2 , v092
	.byte	W10
	.byte		        En2 
	.byte	W10
	.byte		        Cn2 
	.byte	W09
	.byte		        En2 
	.byte	W10
	.byte		        Gn2 
	.byte	W10
	.byte		        An2 
	.byte	W10
	.byte		        Cn3 
	.byte	W09
	.byte		        An2 
	.byte	W10
	.byte		        Gn2 
	.byte	W10
	.byte		        En2 
	.byte	W04
	.byte	PEND
@ 004   ----------------------------------------
ch424_4_004:
	.byte	W06
	.byte		N09   , Cn2 , v092
	.byte	W09
	.byte		        En2 
	.byte	W10
	.byte		        Gn2 
	.byte	W10
	.byte		        An2 
	.byte	W10
	.byte		        Cn3 
	.byte	W09
	.byte		        An2 
	.byte	W10
	.byte		        Gn2 
	.byte	W10
	.byte		        En2 
	.byte	W10
	.byte		        Cn2 
	.byte	W09
	.byte		        En2 
	.byte	W03
	.byte	PEND
@ 005   ----------------------------------------
ch424_4_005:
	.byte	W07
	.byte		N09   , Gn2 , v092
	.byte	W10
	.byte		        An2 
	.byte	W10
	.byte		        Cn3 
	.byte	W09
	.byte		        An2 
	.byte	W10
	.byte		        Gn2 
	.byte	W10
	.byte		        En2 
	.byte	W10
	.byte		        Cn2 
	.byte	W09
	.byte		        En2 
	.byte	W10
	.byte		        Gn2 
	.byte	W10
	.byte		        An2 
	.byte	W01
	.byte	PEND
@ 006   ----------------------------------------
ch424_4_006:
	.byte	W09
	.byte		N09   , Cn3 , v092
	.byte	W09
	.byte		        Gn2 
	.byte	W10
	.byte		        En2 
	.byte	W10
	.byte		        Cn2 
	.byte	W10
	.byte		        Fn1 
	.byte	W09
	.byte		        An1 
	.byte	W10
	.byte		        Cn2 
	.byte	W10
	.byte		        Dn2 
	.byte	W10
	.byte		        Fn2 
	.byte	W09
	.byte	PEND
@ 007   ----------------------------------------
ch424_4_007:
	.byte		N09   , Dn2 , v092
	.byte	W10
	.byte		        Cn2 
	.byte	W10
	.byte		        An1 
	.byte	W10
	.byte		        Gn1 
	.byte	W09
	.byte		        Bn1 
	.byte	W10
	.byte		        Dn2 
	.byte	W10
	.byte		        Bn1 
	.byte	W10
	.byte		        Cn2 
	.byte	W09
	.byte		        Gn1 
	.byte	W10
	.byte		        En1 
	.byte	W08
	.byte	PEND
@ 008   ----------------------------------------
	.byte	W02
	.byte		        Dn1 
	.byte	W10
	.byte		        Cn2 
	.byte	W09
	.byte		        En2 
	.byte	W10
	.byte		        Gn2 
	.byte	W10
	.byte		        An2 
	.byte	W10
	.byte		        Cn3 
	.byte	W09
	.byte		        An2 
	.byte	W10
	.byte		        Gn2 
	.byte	W10
	.byte		        En2 
	.byte	W10
	.byte		        Cn2 
	.byte	W06
@ 009   ----------------------------------------
	.byte	W03
	.byte		        En2 
	.byte	W10
	.byte		        Gn2 
	.byte	W10
	.byte		        An2 
	.byte	W10
	.byte		        Cn3 
	.byte	W09
	.byte		        An2 
	.byte	W10
	.byte		        Gn2 
	.byte	W10
	.byte		        En2 
	.byte	W10
	.byte		        Fn1 
	.byte	W09
	.byte		        An1 
	.byte	W10
	.byte		        Cn2 
	.byte	W05
@ 010   ----------------------------------------
	.byte	W05
	.byte		        Dn2 
	.byte	W10
	.byte		        Fn2 
	.byte	W09
	.byte		        Dn2 
	.byte	W10
	.byte		        Cn2 
	.byte	W10
	.byte		        An1 
	.byte	W10
	.byte		        Gn1 
	.byte	W09
	.byte		        Bn1 
	.byte	W10
	.byte		        Dn2 
	.byte	W10
	.byte		        Bn1 
	.byte	W10
	.byte		        Cn2 
	.byte	W03
@ 011   ----------------------------------------
	.byte	W06
	.byte		        Gn1 
	.byte	W10
	.byte		        En1 
	.byte	W10
	.byte		        Dn1 
	.byte	W10
	.byte		        Cn2 
	.byte	W09
	.byte		        En2 
	.byte	W10
	.byte		        Gn2 
	.byte	W10
	.byte		        An2 
	.byte	W10
	.byte		        Cn3 
	.byte	W09
	.byte		        An2 
	.byte	W10
	.byte		        Gn2 
	.byte	W02
@ 012   ----------------------------------------
	.byte	W08
	.byte		        En2 
	.byte	W10
	.byte		        Cn2 
	.byte	W09
	.byte		        En2 
	.byte	W10
	.byte		        Gn2 
	.byte	W10
	.byte		        An2 
	.byte	W10
	.byte		        Cn3 
	.byte	W09
	.byte		        An2 
	.byte	W10
	.byte		        Gn2 
	.byte	W10
	.byte		        En2 
	.byte	W10
@ 013   ----------------------------------------
	.byte		        Fn1 
	.byte	W09
	.byte		        An1 
	.byte	W10
	.byte		        Cn2 
	.byte	W10
	.byte		        Dn2 
	.byte	W10
	.byte		        Fn2 
	.byte	W09
	.byte		        Dn2 
	.byte	W10
	.byte		        Cn2 
	.byte	W10
	.byte		        An1 
	.byte	W10
	.byte		        Gn1 
	.byte	W09
	.byte		        Bn1 
	.byte	W09
@ 014   ----------------------------------------
	.byte	W01
	.byte		        Dn2 
	.byte	W10
	.byte		        Bn1 
	.byte	W10
	.byte		        Cn2 
	.byte	W09
	.byte		        Gn1 
	.byte	W10
	.byte		        En1 
	.byte	W10
	.byte		        Dn1 
	.byte	W10
	.byte		        Cn2 
	.byte	W09
	.byte		        En2 
	.byte	W10
	.byte		        Gn2 
	.byte	W10
	.byte		        An2 
	.byte	W07
@ 015   ----------------------------------------
	.byte	PATT
	 .word	ch424_4_002
@ 016   ----------------------------------------
	.byte	PATT
	 .word	ch424_4_003
@ 017   ----------------------------------------
	.byte	PATT
	 .word	ch424_4_004
@ 018   ----------------------------------------
	.byte	PATT
	 .word	ch424_4_005
@ 019   ----------------------------------------
	.byte	PATT
	 .word	ch424_4_006
@ 020   ----------------------------------------
	.byte	PATT
	 .word	ch424_4_007
@ 021   ----------------------------------------
	.byte	W02
	.byte		N09   , Dn1 , v092
	.byte	W10
	.byte		VOICE , 37
	.byte		N09   , Cn2 , v127
	.byte	W09
	.byte		N06   
	.byte	W07
	.byte		N03   
	.byte	W03
	.byte		N09   
	.byte	W10
	.byte		N09   
	.byte	W10
	.byte		N09   
	.byte	W09
	.byte		N09   
	.byte	W10
	.byte		N06   
	.byte	W07
	.byte		N03   
	.byte	W03
	.byte		N09   
	.byte	W10
	.byte		N09   
	.byte	W06
@ 022   ----------------------------------------
	.byte	W03
	.byte		N09   
	.byte	W10
	.byte		N09   
	.byte	W10
	.byte		N06   
	.byte	W06
	.byte		N03   
	.byte	W04
	.byte		N09   
	.byte	W09
	.byte		N06   
	.byte	W07
	.byte		N03   
	.byte	W03
	.byte		N06   
	.byte	W07
	.byte		N03   
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte		N03   
	.byte	W04
	.byte		N09   
	.byte	W09
	.byte		N06   
	.byte	W07
	.byte		N03   
	.byte	W03
	.byte		N09   
	.byte	W05
@ 023   ----------------------------------------
	.byte	W05
	.byte		N09   
	.byte	W10
	.byte		N09   
	.byte	W09
	.byte		N09   
	.byte	W10
	.byte		N06   
	.byte	W07
	.byte		N03   
	.byte	W03
	.byte		N09   
	.byte	W10
	.byte		N09   
	.byte	W09
	.byte		N09   
	.byte	W10
	.byte		N09   
	.byte	W10
	.byte		N06   
	.byte	W06
	.byte		N03   
	.byte	W04
	.byte		N09   
	.byte	W03
@ 024   ----------------------------------------
	.byte	W06
	.byte		N06   
	.byte	W07
	.byte		N03   
	.byte	W03
	.byte		N06   
	.byte	W07
	.byte		N03   
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte		N03   
	.byte	W04
	.byte		N09   
	.byte	W09
	.byte		N06   
	.byte	W07
	.byte		N03   
	.byte	W03
	.byte		N09   
	.byte	W10
	.byte		N09   
	.byte	W10
	.byte		N09   
	.byte	W09
	.byte		N09   
	.byte	W10
	.byte		N06   
	.byte	W02
@ 025   ----------------------------------------
	.byte	W05
	.byte		N03   
	.byte	W03
	.byte		N09   
	.byte	W10
	.byte		N09   
	.byte	W09
	.byte		N09   
	.byte	W10
	.byte		N09   
	.byte	W10
	.byte		N06   
	.byte	W06
	.byte		N03   
	.byte	W04
	.byte		N09   
	.byte	W09
	.byte		N06   
	.byte	W07
	.byte		N03   
	.byte	W03
	.byte		N06   
	.byte	W07
	.byte		N03   
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte		N03   
	.byte	W04
@ 026   ----------------------------------------
	.byte		N09   
	.byte	W09
	.byte		N06   
	.byte	W07
	.byte		N03   
	.byte	W03
	.byte		N09   
	.byte	W10
	.byte		N09   
	.byte	W10
	.byte		N09   
	.byte	W09
	.byte		N09   
	.byte	W10
	.byte		N06   
	.byte	W07
	.byte		N03   
	.byte	W03
	.byte		N09   
	.byte	W10
	.byte		N09   
	.byte	W09
	.byte		N09   
	.byte	W09
@ 027   ----------------------------------------
	.byte	W01
	.byte		N09   
	.byte	W10
	.byte		N06   
	.byte	W06
	.byte		N03   
	.byte	W04
	.byte		N09   
	.byte	W09
	.byte		N06   
	.byte	W07
	.byte		N03   
	.byte	W03
	.byte		N06   
	.byte	W07
	.byte		N03   
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte		N03   
	.byte	W04
	.byte		N09   
	.byte	W09
	.byte		N06   
	.byte	W07
	.byte		N03   
	.byte	W03
	.byte		N09   
	.byte	W10
	.byte		N09   
	.byte	W07
@ 028   ----------------------------------------
	.byte	W03
	.byte		N09   
	.byte	W09
	.byte		N09   
	.byte	W10
	.byte		N06   
	.byte	W07
	.byte		N03   
	.byte	W03
	.byte		N09   
	.byte	W10
	.byte		N09   
	.byte	W09
	.byte		N09   
	.byte	W10
	.byte		N09   
	.byte	W10
	.byte		N06   
	.byte	W06
	.byte		N03   
	.byte	W04
	.byte		N09   
	.byte	W09
	.byte		N06   
	.byte	W06
@ 029   ----------------------------------------
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte		N06   
	.byte	W07
	.byte		N03   
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte		TIE   
	.byte	W76
@ 030   ----------------------------------------
	.byte	W80
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte		VOICE , 16
	.byte		N09   , En1 , v092
	.byte	W09
	.byte		        Bn1 
	.byte	W03
@ 031   ----------------------------------------
	.byte	W07
	.byte		        Fs2 
	.byte	W10
	.byte		        Gn2 
	.byte	W10
	.byte		        En2 
	.byte	W09
	.byte		        Bn1 
	.byte	W10
	.byte		        Gn1 
	.byte	W10
	.byte		        Fs1 
	.byte	W10
	.byte		        En1 
	.byte	W09
	.byte		        Bn1 
	.byte	W10
	.byte		        En2 
	.byte	W10
	.byte		        Ds2 
	.byte	W01
@ 032   ----------------------------------------
	.byte	W09
	.byte		        Bn1 
	.byte	W09
	.byte		        Fs2 
	.byte	W10
	.byte		        Gn2 
	.byte	W10
	.byte		        Fs2 
	.byte	W10
	.byte		        Bn1 
	.byte	W09
	.byte		        Ds2 
	.byte	W10
	.byte		        Fs2 
	.byte	W10
	.byte		        Gn2 
	.byte	W10
	.byte		        Fs2 
	.byte	W09
@ 033   ----------------------------------------
	.byte		        Ds2 
	.byte	W10
	.byte		        En2 
	.byte	W10
	.byte		        Ds2 
	.byte	W10
	.byte		        Bn1 
	.byte	W09
	.byte		        Ds2 
	.byte	W10
	.byte		        Fs2 
	.byte	W10
	.byte		        Gn2 
	.byte	W10
	.byte		        En2 
	.byte	W09
	.byte		        Bn1 
	.byte	W10
	.byte		        Gn1 
	.byte	W08
@ 034   ----------------------------------------
	.byte	W02
	.byte		        En1 
	.byte	W10
	.byte		N09   
	.byte	W09
	.byte		        Bn1 
	.byte	W10
	.byte		        Fs2 
	.byte	W10
	.byte		        Gn2 
	.byte	W10
	.byte		        En2 
	.byte	W09
	.byte		        Bn1 
	.byte	W10
	.byte		        Gn1 
	.byte	W10
	.byte		        Fs1 
	.byte	W10
	.byte		        En1 
	.byte	W06
@ 035   ----------------------------------------
	.byte	W03
	.byte		        Bn1 
	.byte	W10
	.byte		        En2 
	.byte	W10
	.byte		        Ds2 
	.byte	W10
	.byte		        Bn1 
	.byte	W09
	.byte		        Fs2 
	.byte	W10
	.byte		        Gn2 
	.byte	W10
	.byte		        Fs2 
	.byte	W10
	.byte		        Bn1 
	.byte	W09
	.byte		        Ds2 
	.byte	W10
	.byte		        Fs2 
	.byte	W05
@ 036   ----------------------------------------
	.byte	W05
	.byte		        Gn2 
	.byte	W10
	.byte		        Cn2 
	.byte	W09
	.byte		        En2 
	.byte	W10
	.byte		        Gn2 
	.byte	W10
	.byte		        As1 
	.byte	W10
	.byte		        Bn1 
	.byte	W09
	.byte		        Ds2 
	.byte	W10
	.byte		        Fs2 
	.byte	W10
	.byte		        An2 
	.byte	W10
	.byte		        Dn2 
	.byte	W03
@ 037   ----------------------------------------
	.byte	W06
	.byte		        Fs2 
	.byte	W10
	.byte		        An2 
	.byte	W10
	.byte		        Bn2 
	.byte	W10
	.byte		        Gn1 
	.byte	W09
	.byte		        Bn1 
	.byte	W10
	.byte		        Dn2 
	.byte	W10
	.byte		        En2 
	.byte	W10
	.byte		        Gn2 
	.byte	W09
	.byte		        En2 
	.byte	W10
	.byte		        Dn2 
	.byte	W02
@ 038   ----------------------------------------
	.byte	W08
	.byte		        Bn1 
	.byte	W10
	.byte		        Gn1 
	.byte	W09
	.byte		        Bn1 
	.byte	W10
	.byte		        Dn2 
	.byte	W10
	.byte		        En2 
	.byte	W10
	.byte		        Gn2 
	.byte	W09
	.byte		        En2 
	.byte	W10
	.byte		        Dn2 
	.byte	W10
	.byte		        Bn1 
	.byte	W10
@ 039   ----------------------------------------
	.byte		        Gn1 
	.byte	W09
	.byte		        Bn1 
	.byte	W10
	.byte		        Dn2 
	.byte	W10
	.byte		        En2 
	.byte	W10
	.byte		        Gn2 
	.byte	W09
	.byte		        En2 
	.byte	W10
	.byte		        Dn2 
	.byte	W10
	.byte		        Bn1 
	.byte	W10
	.byte		        Gn1 
	.byte	W09
	.byte		        Bn1 
	.byte	W09
@ 040   ----------------------------------------
	.byte	W01
	.byte		        Dn2 
	.byte	W10
	.byte		        En2 
	.byte	W10
	.byte		        Gn2 
	.byte	W09
	.byte		        En2 
	.byte	W10
	.byte		        Dn2 
	.byte	W10
	.byte		        Bn1 
	.byte	W10
	.byte		        Gn1 
	.byte	W09
	.byte		        Bn1 
	.byte	W10
	.byte		        Dn2 
	.byte	W10
	.byte		        En2 
	.byte	W07
@ 041   ----------------------------------------
	.byte	W03
	.byte		        Gn2 
	.byte	W09
	.byte		        En2 
	.byte	W10
	.byte		        Dn2 
	.byte	W10
	.byte		        Bn1 
	.byte	W10
	.byte		        Gn1 
	.byte	W09
	.byte		        Bn1 
	.byte	W10
	.byte		        Dn2 
	.byte	W10
	.byte		        En2 
	.byte	W10
	.byte		        Gn2 
	.byte	W09
	.byte		        En2 
	.byte	W06
@ 042   ----------------------------------------
	.byte	W04
	.byte		        Dn2 
	.byte	W10
	.byte		        Bn1 
	.byte	W10
	.byte		        Cn2 
	.byte	W09
	.byte		        En2 
	.byte	W10
	.byte		        Gn2 
	.byte	W10
	.byte		        An2 
	.byte	W10
	.byte		        Cn3 
	.byte	W09
	.byte		        An2 
	.byte	W10
	.byte		        Gn2 
	.byte	W10
	.byte		        En2 
	.byte	W04
@ 043   ----------------------------------------
	.byte	W06
	.byte		        Cn2 
	.byte	W09
	.byte		        En2 
	.byte	W10
	.byte		        Gn2 
	.byte	W10
	.byte		        An2 
	.byte	W10
	.byte		        Cn3 
	.byte	W09
	.byte		        An2 
	.byte	W10
	.byte		        Gn2 
	.byte	W10
	.byte		        En2 
	.byte	W22
	.byte	GOTO
	 .word	ch424_4_B1
ch424_4_B2:
@ 044   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

ch424:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	ch424_pri	@ Priority
	.byte	ch424_rev	@ Reverb.

	.word	ch424_grp

	.word	ch424_1
	.word	ch424_2
	.word	ch424_3
	.word	ch424_4

	.end
