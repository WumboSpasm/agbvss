	.include "MPlayDef.s"

	.equ	ch3b1_grp, voicegroup000
	.equ	ch3b1_pri, 128
	.equ	ch3b1_rev, reverb_set+50
	.equ	ch3b1_mvl, 127
	.equ	ch3b1_key, 0
	.equ	ch3b1_tbs, 1
	.equ	ch3b1_exg, 0
	.equ	ch3b1_cmp, 1

	.section .rodata
	.global	ch3b1
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

ch3b1_1:
	.byte		VOL   , 127*ch3b1_mvl/mxv
	.byte	KEYSH , ch3b1_key+0
ch3b1_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 100*ch3b1_tbs/2
	.byte		VOICE , 0
	.byte	W48
	.byte	W03
	.byte		        65
	.byte		N11   , Bn0 , v127
	.byte	W12
	.byte		N23   , Cn1 
	.byte	W23
	.byte		N11   , Bn0 , v064
	.byte	W10
@ 001   ----------------------------------------
	.byte	W01
	.byte		N23   , Cn1 
	.byte	W23
	.byte		N11   , Bn0 , v052
	.byte	W12
	.byte		N32   , Cn1 
	.byte	W32
	.byte	W02
	.byte		N05   , Gn1 , v127
	.byte	W06
	.byte		N17   , Fs1 
	.byte	W17
	.byte		N44   , Bn0 
	.byte	W03
@ 002   ----------------------------------------
	.byte	W42
	.byte	W01
	.byte		N05   , Gn1 , v052
	.byte	W06
	.byte		N17   , Fs1 
	.byte	W17
	.byte		        Bn0 
	.byte	W30
	.byte	GOTO
	 .word	ch3b1_1_B1
ch3b1_1_B2:
@ 003   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

ch3b1_2:
	.byte		VOL   , 127*ch3b1_mvl/mxv
	.byte	KEYSH , ch3b1_key+0
ch3b1_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 66
	.byte	W11
	.byte		N17   , Bn0 , v048
	.byte	W17
	.byte		N17   
	.byte	W18
	.byte		N17   
	.byte	W17
	.byte		N17   
	.byte	W17
	.byte		        An0 
	.byte	W16
@ 001   ----------------------------------------
	.byte	W01
	.byte		N17   
	.byte	W18
	.byte		N17   
	.byte	W17
	.byte		N17   
	.byte	W17
	.byte		        Bn0 
	.byte	W17
	.byte		N17   
	.byte	W18
	.byte		N17   
	.byte	W08
@ 002   ----------------------------------------
	.byte	W09
	.byte		N17   
	.byte	W17
	.byte		N17   
	.byte	W17
	.byte		N17   
	.byte	W18
	.byte		N17   
	.byte	W17
	.byte		N05   , Cn1 
	.byte	W18
	.byte	GOTO
	 .word	ch3b1_2_B1
ch3b1_2_B2:
@ 003   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

ch3b1_3:
	.byte		VOL   , 127*ch3b1_mvl/mxv
	.byte	KEYSH , ch3b1_key+0
ch3b1_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 66
	.byte		N17   , Bn0 , v064
	.byte	W17
	.byte		N17   
	.byte	W17
	.byte		N17   
	.byte	W17
	.byte		N17   
	.byte	W18
	.byte		        An0 
	.byte	W17
	.byte		N17   
	.byte	W10
@ 001   ----------------------------------------
	.byte	W07
	.byte		N17   
	.byte	W17
	.byte		N17   
	.byte	W18
	.byte		        Bn0 
	.byte	W17
	.byte		N17   
	.byte	W17
	.byte		N17   
	.byte	W17
	.byte		N17   
	.byte	W03
@ 002   ----------------------------------------
	.byte	W15
	.byte		N17   
	.byte	W17
	.byte		N17   
	.byte	W17
	.byte		N17   
	.byte	W17
	.byte		N05   
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Ds1 
	.byte	W18
	.byte	GOTO
	 .word	ch3b1_3_B1
ch3b1_3_B2:
@ 003   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

ch3b1_4:
	.byte		VOL   , 127*ch3b1_mvl/mxv
	.byte	KEYSH , ch3b1_key+0
ch3b1_4_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 60
	.byte		N05   , Bn1 , v064
	.byte	W05
	.byte		VOICE , 9
	.byte		N05   
	.byte	W06
	.byte		VOICE , 60
	.byte		N05   , Bn1 , v048
	.byte	W06
	.byte		        Bn1 , v064
	.byte	W06
	.byte		VOICE , 9
	.byte		N05   
	.byte	W05
	.byte		VOICE , 60
	.byte		N05   , Bn1 , v048
	.byte	W06
	.byte		        Bn1 , v064
	.byte	W06
	.byte		VOICE , 9
	.byte		N05   
	.byte	W06
	.byte		VOICE , 60
	.byte		N05   , Bn1 , v048
	.byte	W05
	.byte		        Bn1 , v064
	.byte	W06
	.byte		VOICE , 9
	.byte		N05   
	.byte	W06
	.byte		VOICE , 60
	.byte		N05   , Bn1 , v048
	.byte	W06
	.byte		        Bn1 , v064
	.byte	W05
	.byte		VOICE , 9
	.byte		N05   
	.byte	W06
	.byte		VOICE , 60
	.byte		N05   , Bn1 , v048
	.byte	W06
	.byte		        Bn1 , v064
	.byte	W06
	.byte		VOICE , 9
	.byte		N05   
	.byte	W04
@ 001   ----------------------------------------
	.byte	W01
	.byte		VOICE , 60
	.byte		N05   , Bn1 , v048
	.byte	W06
	.byte		        Bn1 , v064
	.byte	W06
	.byte		VOICE , 9
	.byte		N05   
	.byte	W06
	.byte		VOICE , 60
	.byte		N05   , Bn1 , v048
	.byte	W05
	.byte		        Bn1 , v064
	.byte	W06
	.byte		VOICE , 9
	.byte		N05   
	.byte	W06
	.byte		VOICE , 60
	.byte		N05   , Bn1 , v048
	.byte	W06
	.byte		        Bn1 , v064
	.byte	W05
	.byte		VOICE , 9
	.byte		N05   
	.byte	W06
	.byte		VOICE , 60
	.byte		N05   , Bn1 , v048
	.byte	W06
	.byte		        Bn1 , v064
	.byte	W06
	.byte		VOICE , 9
	.byte		N05   
	.byte	W05
	.byte		VOICE , 60
	.byte		N05   , Bn1 , v048
	.byte	W06
	.byte		        Bn1 , v064
	.byte	W06
	.byte		VOICE , 9
	.byte		N05   
	.byte	W06
	.byte		VOICE , 60
	.byte		N05   , Bn1 , v048
	.byte	W05
	.byte		        Bn1 , v064
	.byte	W03
@ 002   ----------------------------------------
	.byte	W03
	.byte		VOICE , 9
	.byte		N05   
	.byte	W06
	.byte		VOICE , 60
	.byte		N05   , Bn1 , v048
	.byte	W06
	.byte		        Bn1 , v064
	.byte	W05
	.byte		VOICE , 9
	.byte		N05   
	.byte	W06
	.byte		VOICE , 60
	.byte		N05   , Bn1 , v048
	.byte	W06
	.byte		        Bn1 , v064
	.byte	W06
	.byte		VOICE , 9
	.byte		N05   
	.byte	W05
	.byte		VOICE , 60
	.byte		N05   , Bn1 , v048
	.byte	W06
	.byte		        Bn1 , v064
	.byte	W06
	.byte		VOICE , 9
	.byte		N05   
	.byte	W06
	.byte		VOICE , 60
	.byte		N05   , Bn1 , v048
	.byte	W05
	.byte		        Bn1 , v064
	.byte	W06
	.byte		VOICE , 9
	.byte		N05   
	.byte	W06
	.byte		VOICE , 60
	.byte		N05   , Bn1 , v048
	.byte	W18
	.byte	GOTO
	 .word	ch3b1_4_B1
ch3b1_4_B2:
@ 003   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

ch3b1:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	ch3b1_pri	@ Priority
	.byte	ch3b1_rev	@ Reverb.

	.word	ch3b1_grp

	.word	ch3b1_1
	.word	ch3b1_2
	.word	ch3b1_3
	.word	ch3b1_4

	.end
