	.include "MPlayDef.s"

	.equ	options_grp, voicegroup000
	.equ	options_pri, 128
	.equ	options_rev, reverb_set+50
	.equ	options_mvl, 127
	.equ	options_key, 0
	.equ	options_tbs, 1
	.equ	options_exg, 0
	.equ	options_cmp, 1

	.section .rodata
	.global	options
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

options_1:
	.byte		VOL   , 127*options_mvl/mxv
	.byte	KEYSH , options_key+0
options_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 109*options_tbs/2
	.byte		VOICE , 48
	.byte		N19   , Bn1 , v127
	.byte	W19
	.byte		VOICE , 49
	.byte		N19   
	.byte	W20
	.byte		VOICE , 46
	.byte		N13   
	.byte	W13
	.byte		VOICE , 48
	.byte		N19   
	.byte	W19
	.byte		VOICE , 49
	.byte		N19   
	.byte	W20
	.byte		VOICE , 50
	.byte		N13   
	.byte	W05
@ 001   ----------------------------------------
	.byte	W08
	.byte		VOICE , 48
	.byte		N19   
	.byte	W19
	.byte		VOICE , 49
	.byte		N19   
	.byte	W20
	.byte		VOICE , 46
	.byte		N13   
	.byte	W13
	.byte		VOICE , 48
	.byte		N19   
	.byte	W19
	.byte		VOICE , 49
	.byte		N19   
	.byte	W17
@ 002   ----------------------------------------
	.byte	W03
	.byte		VOICE , 50
	.byte		N13   
	.byte	W13
	.byte		VOICE , 48
	.byte		N19   
	.byte	W19
	.byte		VOICE , 49
	.byte		N19   
	.byte	W20
	.byte		VOICE , 46
	.byte		N13   
	.byte	W13
	.byte		VOICE , 48
	.byte		N19   
	.byte	W19
	.byte		VOICE , 49
	.byte		N19   
	.byte	W09
@ 003   ----------------------------------------
	.byte	W11
	.byte		VOICE , 50
	.byte		N13   
	.byte	W13
	.byte		VOICE , 48
	.byte		N19   
	.byte	W19
	.byte		VOICE , 49
	.byte		N19   
	.byte	W20
	.byte		VOICE , 46
	.byte		N13   
	.byte	W13
	.byte		VOICE , 48
	.byte		N19   
	.byte	W19
	.byte		VOICE , 49
	.byte		N19   
	.byte	W01
@ 004   ----------------------------------------
	.byte	W19
	.byte		VOICE , 50
	.byte		N13   
	.byte	W76
	.byte	W01
	.byte	GOTO
	 .word	options_1_B1
options_1_B2:
@ 005   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

options_2:
	.byte		VOL   , 127*options_mvl/mxv
	.byte	KEYSH , options_key+0
options_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 42
	.byte		N13   , Cn2 , v127
	.byte	W13
	.byte		VOICE , 102
	.byte		N06   
	.byte	W06
	.byte		VOICE , 22
	.byte		N06   , Gn1 
	.byte	W07
	.byte		VOICE , 53
	.byte		N13   
	.byte	W13
	.byte		VOICE , 102
	.byte		N06   
	.byte	W06
	.byte		VOICE , 101
	.byte		N06   , Cn2 
	.byte	W07
	.byte		VOICE , 53
	.byte		N06   
	.byte	W06
	.byte		VOICE , 101
	.byte		N06   
	.byte	W07
	.byte		VOICE , 102
	.byte		N06   
	.byte	W06
	.byte		VOICE , 22
	.byte		N06   , Gn1 
	.byte	W07
	.byte		VOICE , 53
	.byte		N13   
	.byte	W13
	.byte		VOICE , 102
	.byte		N06   
	.byte	W05
@ 001   ----------------------------------------
	.byte	W01
	.byte		VOICE , 22
	.byte		N06   , Cn2 
	.byte	W07
	.byte		VOICE , 42
	.byte		N13   
	.byte	W13
	.byte		VOICE , 102
	.byte		N06   
	.byte	W06
	.byte		VOICE , 22
	.byte		N06   , Gn1 
	.byte	W07
	.byte		VOICE , 53
	.byte		N13   
	.byte	W13
	.byte		VOICE , 102
	.byte		N06   
	.byte	W06
	.byte		VOICE , 101
	.byte		N06   , Cn2 
	.byte	W07
	.byte		VOICE , 53
	.byte		N06   
	.byte	W06
	.byte		VOICE , 101
	.byte		N06   
	.byte	W07
	.byte		VOICE , 102
	.byte		N06   
	.byte	W06
	.byte		VOICE , 22
	.byte		N06   , Gn1 
	.byte	W07
	.byte		VOICE , 53
	.byte		N13   
	.byte	W10
@ 002   ----------------------------------------
	.byte	W03
	.byte		VOICE , 102
	.byte		N06   
	.byte	W06
	.byte		VOICE , 22
	.byte		N06   , Cn2 
	.byte	W07
	.byte		VOICE , 42
	.byte		N13   
	.byte	W13
	.byte		VOICE , 102
	.byte		N06   
	.byte	W06
	.byte		VOICE , 22
	.byte		N06   
	.byte	W07
	.byte		VOICE , 53
	.byte		N13   
	.byte	W13
	.byte		VOICE , 102
	.byte		N06   
	.byte	W06
	.byte		VOICE , 101
	.byte		N06   
	.byte	W07
	.byte		VOICE , 53
	.byte		N06   , Fn2 
	.byte	W06
	.byte		VOICE , 101
	.byte		N06   
	.byte	W07
	.byte		VOICE , 102
	.byte		N06   
	.byte	W06
	.byte		VOICE , 22
	.byte		N06   
	.byte	W07
	.byte		VOICE , 53
	.byte		N13   
	.byte	W02
@ 003   ----------------------------------------
	.byte	W11
	.byte		VOICE , 102
	.byte		N06   
	.byte	W06
	.byte		VOICE , 22
	.byte		N06   
	.byte	W07
	.byte		VOICE , 42
	.byte		N13   , Gn2 
	.byte	W13
	.byte		VOICE , 102
	.byte		N06   
	.byte	W06
	.byte		VOICE , 22
	.byte		N06   
	.byte	W07
	.byte		VOICE , 53
	.byte		N13   
	.byte	W13
	.byte		VOICE , 102
	.byte		N06   
	.byte	W06
	.byte		VOICE , 101
	.byte		N06   
	.byte	W07
	.byte		VOICE , 53
	.byte		N06   , Cn2 
	.byte	W06
	.byte		VOICE , 101
	.byte		N06   
	.byte	W07
	.byte		VOICE , 102
	.byte		N06   
	.byte	W06
	.byte		VOICE , 22
	.byte		N06   
	.byte	W01
@ 004   ----------------------------------------
	.byte	W06
	.byte		VOICE , 53
	.byte		N13   
	.byte	W13
	.byte		VOICE , 102
	.byte		N06   
	.byte	W06
	.byte		VOICE , 22
	.byte		N06   
	.byte	W68
	.byte	W03
	.byte	GOTO
	 .word	options_2_B1
options_2_B2:
@ 005   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

options_3:
	.byte		VOL   , 127*options_mvl/mxv
	.byte	KEYSH , options_key+0
options_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 24
	.byte		N19   , Cn2 , v096
	.byte	W19
	.byte		N06   , Cn2 , v080
	.byte	W07
	.byte		N19   , Cn2 , v096
	.byte	W19
	.byte		N06   , Cn2 , v080
	.byte	W07
	.byte		N19   , Cn2 , v096
	.byte	W19
	.byte		N06   , Cn2 , v080
	.byte	W07
	.byte		N19   , Cn2 , v096
	.byte	W18
@ 001   ----------------------------------------
	.byte	W01
	.byte		N06   , Cn2 , v080
	.byte	W07
	.byte		N19   , Cn2 , v096
	.byte	W19
	.byte		N06   , Cn2 , v080
	.byte	W07
	.byte		N19   , Cn2 , v096
	.byte	W19
	.byte		N06   , Cn2 , v080
	.byte	W07
	.byte		N19   , Cn2 , v096
	.byte	W19
	.byte		N06   , Cn2 , v080
	.byte	W07
	.byte		N19   , Cn2 , v096
	.byte	W10
@ 002   ----------------------------------------
	.byte	W09
	.byte		N06   , Cn2 , v080
	.byte	W07
	.byte		N19   , Cn2 , v096
	.byte	W19
	.byte		N06   , Cn2 , v080
	.byte	W07
	.byte		N19   , Cn2 , v096
	.byte	W19
	.byte		N06   , Cn2 , v080
	.byte	W07
	.byte		N19   , Cn2 , v096
	.byte	W19
	.byte		N06   , Cn2 , v080
	.byte	W07
	.byte		N19   , Cn2 , v096
	.byte	W02
@ 003   ----------------------------------------
	.byte	W17
	.byte		N06   , Cn2 , v080
	.byte	W07
	.byte		N19   , Cn2 , v096
	.byte	W19
	.byte		N06   , Cn2 , v080
	.byte	W07
	.byte		N19   , Cn2 , v096
	.byte	W19
	.byte		N06   , Cn2 , v080
	.byte	W07
	.byte		N19   , Cn2 , v096
	.byte	W19
	.byte		N06   , Cn2 , v080
	.byte	W01
@ 004   ----------------------------------------
	.byte	W06
	.byte		N19   , Cn2 , v096
	.byte	W19
	.byte		N06   , Cn2 , v080
	.byte	W68
	.byte	W03
	.byte	GOTO
	 .word	options_3_B1
options_3_B2:
@ 005   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

options_4:
	.byte		VOL   , 127*options_mvl/mxv
	.byte	KEYSH , options_key+0
options_4_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 16
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		        Cn2 , v064
	.byte	W07
	.byte		VOICE , 73
	.byte		N13   , Cn2 , v127
	.byte	W13
	.byte		VOICE , 16
	.byte		N06   , Gn1 
	.byte	W06
	.byte		        Gn1 , v064
	.byte	W07
	.byte		VOICE , 73
	.byte		N13   , Cn2 , v127
	.byte	W13
	.byte		VOICE , 16
	.byte		N06   
	.byte	W06
	.byte		        Cn2 , v064
	.byte	W07
	.byte		VOICE , 73
	.byte		N13   , Cn2 , v127
	.byte	W13
	.byte		VOICE , 16
	.byte		N06   , Gn1 
	.byte	W06
	.byte		        Gn1 , v064
	.byte	W07
	.byte		VOICE , 73
	.byte		N13   , Cn2 , v127
	.byte	W05
@ 001   ----------------------------------------
	.byte	W08
	.byte		VOICE , 16
	.byte		N06   
	.byte	W06
	.byte		        Cn2 , v064
	.byte	W07
	.byte		VOICE , 73
	.byte		N13   , Cn2 , v127
	.byte	W13
	.byte		VOICE , 16
	.byte		N06   , Gn1 
	.byte	W06
	.byte		        Gn1 , v064
	.byte	W07
	.byte		VOICE , 73
	.byte		N13   , Cn2 , v127
	.byte	W13
	.byte		VOICE , 16
	.byte		N06   
	.byte	W06
	.byte		        Cn2 , v064
	.byte	W07
	.byte		VOICE , 73
	.byte		N13   , Cn2 , v127
	.byte	W13
	.byte		VOICE , 16
	.byte		N06   , Gn1 
	.byte	W06
	.byte		        Gn1 , v064
	.byte	W04
@ 002   ----------------------------------------
	.byte	W03
	.byte		VOICE , 73
	.byte		N13   , Cn2 , v127
	.byte	W13
	.byte		VOICE , 16
	.byte		N06   , An1 
	.byte	W06
	.byte		        An1 , v064
	.byte	W07
	.byte		VOICE , 73
	.byte		N13   , Cn2 , v127
	.byte	W13
	.byte		VOICE , 16
	.byte		N06   , En2 
	.byte	W06
	.byte		        En2 , v064
	.byte	W07
	.byte		VOICE , 73
	.byte		N13   , Cn2 , v127
	.byte	W13
	.byte		VOICE , 16
	.byte		N06   , Fn1 
	.byte	W06
	.byte		        Fn1 , v064
	.byte	W07
	.byte		VOICE , 73
	.byte		N13   , Cn2 , v127
	.byte	W13
	.byte		VOICE , 16
	.byte		N06   
	.byte	W02
@ 003   ----------------------------------------
	.byte	W04
	.byte		        Cn2 , v064
	.byte	W07
	.byte		VOICE , 73
	.byte		N13   , Cn2 , v127
	.byte	W13
	.byte		VOICE , 16
	.byte		N06   , Gn1 
	.byte	W06
	.byte		        Gn1 , v064
	.byte	W07
	.byte		VOICE , 73
	.byte		N13   , Cn2 , v127
	.byte	W13
	.byte		VOICE , 16
	.byte		N06   , Dn2 
	.byte	W06
	.byte		        Dn2 , v064
	.byte	W07
	.byte		VOICE , 73
	.byte		N13   , Cn2 , v127
	.byte	W13
	.byte		VOICE , 16
	.byte		N06   
	.byte	W06
	.byte		        Cn2 , v064
	.byte	W07
	.byte		VOICE , 73
	.byte		N13   , Cn2 , v127
	.byte	W07
@ 004   ----------------------------------------
	.byte	W06
	.byte		VOICE , 16
	.byte		N06   , Gn1 
	.byte	W06
	.byte		        Gn1 , v064
	.byte	W07
	.byte		VOICE , 73
	.byte		N13   , Cn2 , v127
	.byte	W76
	.byte	W01
	.byte	GOTO
	 .word	options_4_B1
options_4_B2:
@ 005   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

options:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	options_pri	@ Priority
	.byte	options_rev	@ Reverb.

	.word	options_grp

	.word	options_1
	.word	options_2
	.word	options_3
	.word	options_4

	.end
