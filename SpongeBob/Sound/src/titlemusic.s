	.include "MPlayDef.s"

	.equ	titlemusic_grp, voicegroup000
	.equ	titlemusic_pri, 128
	.equ	titlemusic_rev, reverb_set+50
	.equ	titlemusic_mvl, 127
	.equ	titlemusic_key, 0
	.equ	titlemusic_tbs, 1
	.equ	titlemusic_exg, 0
	.equ	titlemusic_cmp, 1

	.section .rodata
	.global	titlemusic
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

titlemusic_1:
	.byte		VOL   , 127*titlemusic_mvl/mxv
	.byte	KEYSH , titlemusic_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 100*titlemusic_tbs/2
	.byte		VOICE , 0
	.byte	W06
	.byte		        97
	.byte		N13   , Cn2 , v096
	.byte	W13
	.byte		VOICE , 36
	.byte		N06   , Dn2 , v127
	.byte	W07
	.byte		        En2 
	.byte	W06
	.byte		        Dn2 
	.byte	W07
	.byte		        Bn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W07
	.byte		        Bn1 
	.byte	W06
	.byte		        Dn2 
	.byte	W07
	.byte		        En2 
	.byte	W06
	.byte		        Dn2 
	.byte	W07
	.byte		MOD   , 34
	.byte		N19   , Bn1 
	.byte	W18
@ 001   ----------------------------------------
	.byte	W01
	.byte		VOICE , 39
	.byte		MOD   , 0
	.byte		N36   , Gn1 
	.byte	W36
	.byte	W03
	.byte		N36   
	.byte	W36
	.byte	W03
	.byte		VOICE , 36
	.byte		N06   , Gn2 
	.byte	W07
	.byte		        An2 
	.byte	W06
	.byte		        Gn2 
	.byte	W04
@ 002   ----------------------------------------
	.byte	W03
	.byte		        En2 
	.byte	W06
	.byte		        Cn2 
	.byte	W07
	.byte		        En2 
	.byte	W06
	.byte		        Gn2 
	.byte	W07
	.byte		        An2 
	.byte	W06
	.byte		        Gn2 
	.byte	W07
	.byte		MOD   , 34
	.byte		N19   , En2 
	.byte	W19
	.byte		VOICE , 39
	.byte		MOD   , 0
	.byte		N19   , Cn2 
	.byte	W20
	.byte		N19   
	.byte	W15
@ 003   ----------------------------------------
	.byte	W04
	.byte		N19   
	.byte	W20
	.byte		N19   
	.byte	W19
	.byte		VOICE , 36
	.byte		N06   , Dn2 
	.byte	W07
	.byte		        En2 
	.byte	W06
	.byte		        Dn2 
	.byte	W07
	.byte		        Bn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W07
	.byte		        Bn1 
	.byte	W06
	.byte		        Dn2 
	.byte	W07
	.byte		        En2 
	.byte	W06
	.byte		        Dn2 
	.byte	W01
@ 004   ----------------------------------------
	.byte	W06
	.byte		MOD   , 34
	.byte		N19   , Bn1 
	.byte	W19
	.byte		VOICE , 39
	.byte		MOD   , 0
	.byte		N36   , Gn1 
	.byte	W36
	.byte	W03
	.byte		N36   
	.byte	W32
@ 005   ----------------------------------------
	.byte	W07
	.byte		VOICE , 36
	.byte		N06   , Gn2 
	.byte	W07
	.byte		        An2 
	.byte	W06
	.byte		        Gn2 
	.byte	W07
	.byte		        En2 
	.byte	W06
	.byte		        Cn2 
	.byte	W07
	.byte		        En2 
	.byte	W06
	.byte		        Gn2 
	.byte	W07
	.byte		        An2 
	.byte	W06
	.byte		        Gn2 
	.byte	W07
	.byte		MOD   , 34
	.byte		N19   , En2 
	.byte	W19
	.byte		VOICE , 39
	.byte		MOD   , 0
	.byte		N19   , Cn2 
	.byte	W11
@ 006   ----------------------------------------
	.byte	W09
	.byte		N19   
	.byte	W19
	.byte		N19   
	.byte	W20
	.byte		N19   
	.byte	W19
	.byte		VOICE , 36
	.byte		N19   , Gn2 
	.byte	W20
	.byte		        En2 
	.byte	W09
@ 007   ----------------------------------------
	.byte	W10
	.byte		        Dn2 
	.byte	W20
	.byte		        Bn1 
	.byte	W19
	.byte		        Gn2 
	.byte	W20
	.byte		        En2 
	.byte	W19
	.byte		        Dn2 
	.byte	W08
@ 008   ----------------------------------------
	.byte	W12
	.byte		        Bn1 
	.byte	W19
	.byte		        Gn2 
	.byte	W20
	.byte		        En2 
	.byte	W19
	.byte		        Dn2 
	.byte	W20
	.byte		        Bn1 
	.byte	W06
@ 009   ----------------------------------------
	.byte	W13
	.byte		        Dn2 
	.byte	W20
	.byte		N36   , En2 
	.byte	W36
	.byte	W03
	.byte		N19   , Fs2 
	.byte	W19
	.byte		N13   , Gn2 
	.byte	W05
@ 010   ----------------------------------------
	.byte	W08
	.byte		        Gn2 , v080
	.byte	W13
	.byte		N16   , Gn2 , v052
	.byte	W16
	.byte		VOICE , 98
	.byte		N06   , Gs1 , v064
	.byte	W07
	.byte		VOICE , 96
	.byte		N13   , Gn1 
	.byte	W13
	.byte		VOICE , 98
	.byte		N06   , Gs1 
	.byte	W06
	.byte		VOICE , 96
	.byte		N13   , Fn1 
	.byte	W13
	.byte		VOICE , 98
	.byte		N06   , Cn1 
	.byte	W07
	.byte		VOICE , 94
	.byte		N06   
	.byte	W06
	.byte		        Dn1 
	.byte	W07
@ 011   ----------------------------------------
	.byte		VOICE , 98
	.byte		N06   , As0 
	.byte	W06
	.byte		VOICE , 96
	.byte		N13   
	.byte	W13
	.byte		VOICE , 95
	.byte		N06   
	.byte	W07
	.byte		VOICE , 98
	.byte		N13   , Cn1 
	.byte	W13
	.byte		VOICE , 99
	.byte		N06   
	.byte	W06
	.byte		N19   
	.byte	W20
	.byte		VOICE , 93
	.byte		N06   , Cn2 
	.byte	W06
	.byte		VOICE , 94
	.byte		N06   
	.byte	W07
	.byte		VOICE , 95
	.byte		N06   
	.byte	W06
	.byte		VOICE , 96
	.byte		N13   
	.byte	W12
@ 012   ----------------------------------------
	.byte	W01
	.byte		VOICE , 98
	.byte		N06   
	.byte	W07
	.byte		VOICE , 99
	.byte		N13   
	.byte	W13
	.byte		VOICE , 100
	.byte		TIE   
	.byte	W72
	.byte	W03
@ 013   ----------------------------------------
	.byte	W68
	.byte	W03
	.byte		EOT   
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

titlemusic_2:
	.byte		VOL   , 127*titlemusic_mvl/mxv
	.byte	KEYSH , titlemusic_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte	W09
	.byte		        97
	.byte		N09   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 24
	.byte		N03   , Cn2 , v096
	.byte	W03
	.byte		VOICE , 16
	.byte		N06   , Gn2 , v127
	.byte	W07
	.byte		VOICE , 97
	.byte		N09   , Cn2 
	.byte	W10
	.byte		VOICE , 24
	.byte		N03   , Cn2 , v096
	.byte	W03
	.byte		VOICE , 16
	.byte		N06   , Dn2 , v127
	.byte	W06
	.byte		VOICE , 97
	.byte		N09   , Cn2 
	.byte	W10
	.byte		VOICE , 24
	.byte		N03   , Cn2 , v096
	.byte	W03
	.byte		VOICE , 16
	.byte		N06   , Gn2 , v127
	.byte	W07
	.byte		VOICE , 97
	.byte		N09   , Cn2 
	.byte	W10
	.byte		VOICE , 24
	.byte		N03   , Cn2 , v096
	.byte	W03
	.byte		VOICE , 16
	.byte		N06   , Dn2 , v127
	.byte	W06
	.byte		VOICE , 97
	.byte		N09   , Cn2 
	.byte	W09
@ 001   ----------------------------------------
	.byte	W01
	.byte		VOICE , 24
	.byte		N03   , Cn2 , v096
	.byte	W03
	.byte		VOICE , 16
	.byte		N06   , Gn2 , v127
	.byte	W07
	.byte		VOICE , 97
	.byte		N09   , Cn2 
	.byte	W10
	.byte		VOICE , 24
	.byte		N03   , Cn2 , v096
	.byte	W03
	.byte		VOICE , 16
	.byte		N06   , Dn2 , v127
	.byte	W06
	.byte		VOICE , 97
	.byte		N09   , Cn2 
	.byte	W10
	.byte		VOICE , 24
	.byte		N03   , Cn2 , v096
	.byte	W03
	.byte		VOICE , 16
	.byte		N06   , Gn2 , v127
	.byte	W07
	.byte		VOICE , 97
	.byte		N09   , Cn2 
	.byte	W10
	.byte		VOICE , 24
	.byte		N03   , Cn2 , v096
	.byte	W03
	.byte		VOICE , 16
	.byte		N06   , Dn2 , v127
	.byte	W06
	.byte		VOICE , 24
	.byte		N03   , Cn2 , v096
	.byte	W04
	.byte		VOICE , 16
	.byte		N06   , Gn2 , v127
	.byte	W06
	.byte		VOICE , 24
	.byte		N03   , Cn2 , v096
	.byte	W03
	.byte		VOICE , 16
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 97
	.byte		N09   
	.byte	W07
@ 002   ----------------------------------------
	.byte	W03
	.byte		VOICE , 24
	.byte		N03   , Cn2 , v096
	.byte	W03
	.byte		VOICE , 16
	.byte		N06   , Gn2 , v127
	.byte	W06
	.byte		VOICE , 97
	.byte		N09   , Cn2 
	.byte	W10
	.byte		VOICE , 24
	.byte		N03   , Cn2 , v096
	.byte	W03
	.byte		VOICE , 16
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 97
	.byte		N09   
	.byte	W10
	.byte		VOICE , 24
	.byte		N03   , Cn2 , v096
	.byte	W03
	.byte		VOICE , 16
	.byte		N06   , Gn2 , v127
	.byte	W06
	.byte		VOICE , 97
	.byte		N09   , Cn2 
	.byte	W10
	.byte		VOICE , 24
	.byte		N03   , Cn2 , v096
	.byte	W03
	.byte		VOICE , 16
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 97
	.byte		N09   
	.byte	W10
	.byte		VOICE , 24
	.byte		N03   , Cn2 , v096
	.byte	W03
	.byte		VOICE , 16
	.byte		N06   , Gn2 , v127
	.byte	W06
	.byte		VOICE , 97
	.byte		N09   , Cn2 
	.byte	W06
@ 003   ----------------------------------------
	.byte	W04
	.byte		VOICE , 24
	.byte		N03   , Cn2 , v096
	.byte	W03
	.byte		VOICE , 16
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 97
	.byte		N09   
	.byte	W10
	.byte		VOICE , 24
	.byte		N03   , Cn2 , v096
	.byte	W03
	.byte		VOICE , 16
	.byte		N06   , Gn2 , v127
	.byte	W06
	.byte		VOICE , 24
	.byte		N03   , Cn2 , v096
	.byte	W04
	.byte		VOICE , 16
	.byte		N06   , Dn2 , v127
	.byte	W06
	.byte		VOICE , 24
	.byte		N03   , Cn2 , v096
	.byte	W03
	.byte		VOICE , 16
	.byte		N06   , Gn2 , v127
	.byte	W07
	.byte		VOICE , 97
	.byte		N09   , Cn2 
	.byte	W10
	.byte		VOICE , 24
	.byte		N03   , Cn2 , v096
	.byte	W03
	.byte		VOICE , 16
	.byte		N06   , Dn2 , v127
	.byte	W06
	.byte		VOICE , 97
	.byte		N09   , Cn2 
	.byte	W10
	.byte		VOICE , 24
	.byte		N03   , Cn2 , v096
	.byte	W03
	.byte		VOICE , 16
	.byte		N06   , Gn2 , v127
	.byte	W07
	.byte		VOICE , 97
	.byte		N09   , Cn2 
	.byte	W04
@ 004   ----------------------------------------
	.byte	W06
	.byte		VOICE , 24
	.byte		N03   , Cn2 , v096
	.byte	W03
	.byte		VOICE , 16
	.byte		N06   , Dn2 , v127
	.byte	W06
	.byte		VOICE , 97
	.byte		N09   , Cn2 
	.byte	W10
	.byte		VOICE , 24
	.byte		N03   , Cn2 , v096
	.byte	W03
	.byte		VOICE , 16
	.byte		N06   , Gn2 , v127
	.byte	W07
	.byte		VOICE , 97
	.byte		N09   , Cn2 
	.byte	W10
	.byte		VOICE , 24
	.byte		N03   , Cn2 , v096
	.byte	W03
	.byte		VOICE , 16
	.byte		N06   , Dn2 , v127
	.byte	W06
	.byte		VOICE , 97
	.byte		N09   , Cn2 
	.byte	W10
	.byte		VOICE , 24
	.byte		N03   , Cn2 , v096
	.byte	W03
	.byte		VOICE , 16
	.byte		N06   , Gn2 , v127
	.byte	W07
	.byte		VOICE , 97
	.byte		N09   , Cn2 
	.byte	W10
	.byte		VOICE , 24
	.byte		N03   , Cn2 , v096
	.byte	W03
	.byte		VOICE , 16
	.byte		N06   , Dn2 , v127
	.byte	W06
	.byte		VOICE , 24
	.byte		N03   , Cn2 , v096
	.byte	W03
@ 005   ----------------------------------------
	.byte	W01
	.byte		VOICE , 16
	.byte		N06   , Gn2 , v127
	.byte	W06
	.byte		VOICE , 24
	.byte		N03   , Cn2 , v096
	.byte	W03
	.byte		VOICE , 16
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 97
	.byte		N09   
	.byte	W10
	.byte		VOICE , 24
	.byte		N03   , Cn2 , v096
	.byte	W03
	.byte		VOICE , 16
	.byte		N06   , Gn2 , v127
	.byte	W06
	.byte		VOICE , 97
	.byte		N09   , Cn2 
	.byte	W10
	.byte		VOICE , 24
	.byte		N03   , Cn2 , v096
	.byte	W03
	.byte		VOICE , 16
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 97
	.byte		N09   
	.byte	W10
	.byte		VOICE , 24
	.byte		N03   , Cn2 , v096
	.byte	W03
	.byte		VOICE , 16
	.byte		N06   , Gn2 , v127
	.byte	W06
	.byte		VOICE , 97
	.byte		N09   , Cn2 
	.byte	W10
	.byte		VOICE , 24
	.byte		N03   , Cn2 , v096
	.byte	W03
	.byte		VOICE , 16
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 97
	.byte		N09   
	.byte	W01
@ 006   ----------------------------------------
	.byte	W09
	.byte		VOICE , 24
	.byte		N03   , Cn2 , v096
	.byte	W03
	.byte		VOICE , 16
	.byte		N06   , Gn2 , v127
	.byte	W06
	.byte		VOICE , 97
	.byte		N09   , Cn2 
	.byte	W10
	.byte		VOICE , 24
	.byte		N03   , Cn2 , v096
	.byte	W03
	.byte		VOICE , 16
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 97
	.byte		N09   
	.byte	W10
	.byte		VOICE , 24
	.byte		N03   , Cn2 , v096
	.byte	W03
	.byte		VOICE , 16
	.byte		N06   , Gn2 , v127
	.byte	W06
	.byte		VOICE , 24
	.byte		N03   , Cn2 , v096
	.byte	W04
	.byte		VOICE , 16
	.byte		N06   , Dn2 , v127
	.byte	W06
	.byte		VOICE , 24
	.byte		N03   , Cn2 , v096
	.byte	W03
	.byte		VOICE , 16
	.byte		N16   , Gn2 , v127
	.byte	W17
	.byte		VOICE , 24
	.byte		N03   , Cn2 , v096
	.byte	W03
	.byte		VOICE , 16
	.byte		N16   , En2 , v127
	.byte	W06
@ 007   ----------------------------------------
	.byte	W10
	.byte		VOICE , 24
	.byte		N03   , Cn2 , v096
	.byte	W03
	.byte		VOICE , 16
	.byte		N16   , Dn2 , v127
	.byte	W17
	.byte		VOICE , 24
	.byte		N03   , Cn2 , v096
	.byte	W03
	.byte		VOICE , 16
	.byte		N16   , Bn1 , v127
	.byte	W16
	.byte		VOICE , 24
	.byte		N03   , Cn2 , v096
	.byte	W03
	.byte		VOICE , 16
	.byte		N16   , Gn1 , v127
	.byte	W17
	.byte		VOICE , 24
	.byte		N03   , Cn2 , v096
	.byte	W03
	.byte		VOICE , 16
	.byte		N16   , En2 , v127
	.byte	W16
	.byte		VOICE , 24
	.byte		N03   , Cn2 , v096
	.byte	W03
	.byte		VOICE , 16
	.byte		N16   , Dn2 , v127
	.byte	W05
@ 008   ----------------------------------------
	.byte	W12
	.byte		VOICE , 24
	.byte		N03   , Cn2 , v096
	.byte	W03
	.byte		VOICE , 16
	.byte		N16   , Bn1 , v127
	.byte	W16
	.byte		VOICE , 24
	.byte		N03   , Cn2 , v096
	.byte	W03
	.byte		VOICE , 16
	.byte		N16   , Gn1 , v127
	.byte	W17
	.byte		VOICE , 24
	.byte		N03   , Cn2 , v096
	.byte	W03
	.byte		VOICE , 16
	.byte		N16   , En2 , v127
	.byte	W16
	.byte		VOICE , 24
	.byte		N03   , Cn2 , v096
	.byte	W03
	.byte		VOICE , 16
	.byte		N16   , Dn2 , v127
	.byte	W17
	.byte		VOICE , 24
	.byte		N03   , Cn2 , v096
	.byte	W03
	.byte		VOICE , 16
	.byte		N16   , Bn1 , v127
	.byte	W03
@ 009   ----------------------------------------
	.byte	W13
	.byte		N19   , Dn2 
	.byte	W20
	.byte		N36   , En2 
	.byte	W36
	.byte	W03
	.byte		N19   , Fs2 
	.byte	W19
	.byte		VOICE , 24
	.byte		N03   , Cn2 , v096
	.byte	W03
	.byte		VOICE , 16
	.byte		N16   , Gn1 , v127
	.byte	W02
@ 010   ----------------------------------------
	.byte	W15
	.byte		N19   , Gn1 , v096
	.byte	W19
	.byte		        Gn2 , v127
	.byte	W20
	.byte		        Gn2 , v096
	.byte	W19
	.byte		        Gn1 , v127
	.byte	W20
	.byte		        Gn1 , v096
	.byte	W03
@ 011   ----------------------------------------
	.byte	W16
	.byte		        Gn2 , v127
	.byte	W20
	.byte		        Gn2 , v096
	.byte	W19
	.byte		N78   , Gn1 , v064
	.byte	W40
	.byte	W01
@ 012   ----------------------------------------
	.byte	W36
	.byte	W01
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

titlemusic_3:
	.byte		VOL   , 127*titlemusic_mvl/mxv
	.byte	KEYSH , titlemusic_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte	W19
	.byte		        22
	.byte		N06   , Gn2 , v127
	.byte	W07
	.byte		VOICE , 102
	.byte		N03   
	.byte	W03
	.byte		VOICE , 39
	.byte		N06   
	.byte	W06
	.byte		N03   , Gn2 , v064
	.byte	W04
	.byte		VOICE , 22
	.byte		N06   , Gn2 , v127
	.byte	W06
	.byte		VOICE , 102
	.byte		N03   
	.byte	W03
	.byte		VOICE , 39
	.byte		N06   
	.byte	W07
	.byte		N03   , Gn2 , v064
	.byte	W03
	.byte		VOICE , 22
	.byte		N06   , Gn2 , v127
	.byte	W07
	.byte		VOICE , 102
	.byte		N03   
	.byte	W03
	.byte		VOICE , 39
	.byte		N06   
	.byte	W06
	.byte		N03   , Gn2 , v064
	.byte	W04
	.byte		VOICE , 22
	.byte		N06   , Gn2 , v127
	.byte	W06
	.byte		VOICE , 102
	.byte		N03   
	.byte	W03
	.byte		VOICE , 39
	.byte		N06   
	.byte	W07
	.byte		N03   , Gn2 , v064
	.byte	W02
@ 001   ----------------------------------------
	.byte	W01
	.byte		VOICE , 22
	.byte		N06   , Gn2 , v127
	.byte	W07
	.byte		VOICE , 102
	.byte		N03   
	.byte	W03
	.byte		VOICE , 39
	.byte		N06   
	.byte	W06
	.byte		N03   , Gn2 , v064
	.byte	W04
	.byte		VOICE , 22
	.byte		N06   , Gn2 , v127
	.byte	W06
	.byte		VOICE , 102
	.byte		N03   
	.byte	W03
	.byte		VOICE , 39
	.byte		N06   
	.byte	W07
	.byte		N03   , Gn2 , v064
	.byte	W03
	.byte		VOICE , 22
	.byte		N06   , Gn2 , v127
	.byte	W07
	.byte		VOICE , 102
	.byte		N03   
	.byte	W03
	.byte		VOICE , 39
	.byte		N06   
	.byte	W06
	.byte		N03   , Gn2 , v064
	.byte	W04
	.byte		VOICE , 22
	.byte		N06   , Gn2 , v127
	.byte	W06
	.byte		VOICE , 102
	.byte		N03   
	.byte	W03
	.byte		VOICE , 101
	.byte		N06   
	.byte	W07
	.byte		VOICE , 102
	.byte		N03   
	.byte	W03
	.byte		VOICE , 22
	.byte		N06   , Cn2 
	.byte	W07
	.byte		VOICE , 102
	.byte		N03   
	.byte	W03
	.byte		VOICE , 39
	.byte		N06   , Cn3 
	.byte	W06
	.byte		N03   , Cn3 , v064
	.byte	W01
@ 002   ----------------------------------------
	.byte	W03
	.byte		VOICE , 22
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 102
	.byte		N03   
	.byte	W03
	.byte		VOICE , 39
	.byte		N06   , Cn3 
	.byte	W07
	.byte		N03   , Cn3 , v064
	.byte	W03
	.byte		VOICE , 22
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 102
	.byte		N03   
	.byte	W03
	.byte		VOICE , 39
	.byte		N06   , Cn3 
	.byte	W06
	.byte		N03   , Cn3 , v064
	.byte	W04
	.byte		VOICE , 22
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 102
	.byte		N03   
	.byte	W03
	.byte		VOICE , 39
	.byte		N06   , Cn3 
	.byte	W07
	.byte		N03   , Cn3 , v064
	.byte	W03
	.byte		VOICE , 22
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 102
	.byte		N03   
	.byte	W03
	.byte		VOICE , 39
	.byte		N06   , Cn3 
	.byte	W06
	.byte		N03   , Cn3 , v064
	.byte	W04
	.byte		VOICE , 22
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 102
	.byte		N03   
	.byte	W03
	.byte		VOICE , 39
	.byte		N06   , Cn3 
	.byte	W06
@ 003   ----------------------------------------
	.byte	W01
	.byte		N03   , Cn3 , v064
	.byte	W03
	.byte		VOICE , 22
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 102
	.byte		N03   
	.byte	W03
	.byte		VOICE , 39
	.byte		N06   , Cn3 
	.byte	W06
	.byte		N03   , Cn3 , v064
	.byte	W04
	.byte		VOICE , 22
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 102
	.byte		N03   
	.byte	W03
	.byte		VOICE , 101
	.byte		N06   
	.byte	W07
	.byte		VOICE , 102
	.byte		N03   
	.byte	W03
	.byte		VOICE , 22
	.byte		N06   , Gn2 
	.byte	W07
	.byte		VOICE , 102
	.byte		N03   
	.byte	W03
	.byte		VOICE , 39
	.byte		N06   
	.byte	W06
	.byte		N03   , Gn2 , v064
	.byte	W04
	.byte		VOICE , 22
	.byte		N06   , Gn2 , v127
	.byte	W06
	.byte		VOICE , 102
	.byte		N03   
	.byte	W03
	.byte		VOICE , 39
	.byte		N06   
	.byte	W07
	.byte		N03   , Gn2 , v064
	.byte	W03
	.byte		VOICE , 22
	.byte		N06   , Gn2 , v127
	.byte	W07
	.byte		VOICE , 102
	.byte		N03   
	.byte	W03
	.byte		VOICE , 39
	.byte		N06   
	.byte	W04
@ 004   ----------------------------------------
	.byte	W02
	.byte		N03   , Gn2 , v064
	.byte	W04
	.byte		VOICE , 22
	.byte		N06   , Gn2 , v127
	.byte	W06
	.byte		VOICE , 102
	.byte		N03   
	.byte	W03
	.byte		VOICE , 39
	.byte		N06   
	.byte	W07
	.byte		N03   , Gn2 , v064
	.byte	W03
	.byte		VOICE , 22
	.byte		N06   , Gn2 , v127
	.byte	W07
	.byte		VOICE , 102
	.byte		N03   
	.byte	W03
	.byte		VOICE , 39
	.byte		N06   
	.byte	W06
	.byte		N03   , Gn2 , v064
	.byte	W04
	.byte		VOICE , 22
	.byte		N06   , Gn2 , v127
	.byte	W06
	.byte		VOICE , 102
	.byte		N03   
	.byte	W03
	.byte		VOICE , 39
	.byte		N06   
	.byte	W07
	.byte		N03   , Gn2 , v064
	.byte	W03
	.byte		VOICE , 22
	.byte		N06   , Gn2 , v127
	.byte	W07
	.byte		VOICE , 102
	.byte		N03   
	.byte	W03
	.byte		VOICE , 39
	.byte		N06   
	.byte	W06
	.byte		N03   , Gn2 , v064
	.byte	W04
	.byte		VOICE , 22
	.byte		N06   , Gn2 , v127
	.byte	W06
	.byte		VOICE , 102
	.byte		N03   
	.byte	W03
	.byte		VOICE , 101
	.byte		N06   
	.byte	W03
@ 005   ----------------------------------------
	.byte	W04
	.byte		VOICE , 102
	.byte		N03   
	.byte	W03
	.byte		VOICE , 22
	.byte		N06   , Cn2 
	.byte	W07
	.byte		VOICE , 102
	.byte		N03   
	.byte	W03
	.byte		VOICE , 39
	.byte		N06   , Cn3 
	.byte	W06
	.byte		N03   , Cn3 , v064
	.byte	W04
	.byte		VOICE , 22
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 102
	.byte		N03   
	.byte	W03
	.byte		VOICE , 39
	.byte		N06   , Cn3 
	.byte	W07
	.byte		N03   , Cn3 , v064
	.byte	W03
	.byte		VOICE , 22
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 102
	.byte		N03   
	.byte	W03
	.byte		VOICE , 39
	.byte		N06   , Cn3 
	.byte	W06
	.byte		N03   , Cn3 , v064
	.byte	W04
	.byte		VOICE , 22
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 102
	.byte		N03   
	.byte	W03
	.byte		VOICE , 39
	.byte		N06   , Cn3 
	.byte	W07
	.byte		N03   , Cn3 , v064
	.byte	W03
	.byte		VOICE , 22
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 102
	.byte		N03   
	.byte	W03
	.byte		VOICE , 39
	.byte		N06   , Cn3 
	.byte	W01
@ 006   ----------------------------------------
	.byte	W05
	.byte		N03   , Cn3 , v064
	.byte	W04
	.byte		VOICE , 22
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 102
	.byte		N03   
	.byte	W03
	.byte		VOICE , 39
	.byte		N06   , Cn3 
	.byte	W07
	.byte		N03   , Cn3 , v064
	.byte	W03
	.byte		VOICE , 22
	.byte		N06   , Cn2 , v127
	.byte	W07
	.byte		VOICE , 102
	.byte		N03   
	.byte	W03
	.byte		VOICE , 39
	.byte		N06   , Cn3 
	.byte	W06
	.byte		N03   , Cn3 , v064
	.byte	W04
	.byte		VOICE , 22
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		VOICE , 102
	.byte		N03   
	.byte	W03
	.byte		VOICE , 101
	.byte		N06   
	.byte	W07
	.byte		VOICE , 102
	.byte		N03   
	.byte	W03
	.byte		VOICE , 22
	.byte		N06   , Gn2 
	.byte	W07
	.byte		VOICE , 102
	.byte		N03   
	.byte	W03
	.byte		VOICE , 39
	.byte		N06   
	.byte	W06
	.byte		N03   , Gn2 , v064
	.byte	W04
	.byte		VOICE , 22
	.byte		N06   , Gn2 , v127
	.byte	W06
	.byte		VOICE , 102
	.byte		N03   
	.byte	W03
@ 007   ----------------------------------------
	.byte		VOICE , 39
	.byte		N06   
	.byte	W07
	.byte		N03   , Gn2 , v064
	.byte	W03
	.byte		VOICE , 22
	.byte		N06   , Gn2 , v127
	.byte	W07
	.byte		VOICE , 102
	.byte		N03   
	.byte	W03
	.byte		VOICE , 39
	.byte		N06   
	.byte	W06
	.byte		N03   , Gn2 , v064
	.byte	W04
	.byte		VOICE , 22
	.byte		N06   , Gn2 , v127
	.byte	W06
	.byte		VOICE , 102
	.byte		N03   
	.byte	W03
	.byte		VOICE , 39
	.byte		N06   
	.byte	W07
	.byte		N03   , Gn2 , v064
	.byte	W03
	.byte		VOICE , 22
	.byte		N06   , Gn2 , v127
	.byte	W07
	.byte		VOICE , 102
	.byte		N03   
	.byte	W03
	.byte		VOICE , 39
	.byte		N06   
	.byte	W06
	.byte		N03   , Gn2 , v064
	.byte	W04
	.byte		VOICE , 22
	.byte		N06   , Gn2 , v127
	.byte	W06
	.byte		VOICE , 102
	.byte		N03   
	.byte	W03
	.byte		VOICE , 39
	.byte		N06   
	.byte	W07
	.byte		N03   , Gn2 , v064
	.byte	W03
	.byte		VOICE , 22
	.byte		N06   , Gn2 , v127
	.byte	W07
	.byte		VOICE , 102
	.byte		N03   
	.byte	W01
@ 008   ----------------------------------------
	.byte	W02
	.byte		VOICE , 39
	.byte		N06   
	.byte	W06
	.byte		N03   , Gn2 , v064
	.byte	W04
	.byte		VOICE , 22
	.byte		N06   , Gn2 , v127
	.byte	W06
	.byte		VOICE , 102
	.byte		N03   
	.byte	W03
	.byte		VOICE , 39
	.byte		N06   
	.byte	W07
	.byte		N03   , Gn2 , v064
	.byte	W03
	.byte		VOICE , 22
	.byte		N06   , Gn2 , v127
	.byte	W07
	.byte		VOICE , 102
	.byte		N03   
	.byte	W03
	.byte		VOICE , 39
	.byte		N06   
	.byte	W06
	.byte		N03   , Gn2 , v064
	.byte	W04
	.byte		VOICE , 22
	.byte		N06   , Gn2 , v127
	.byte	W06
	.byte		VOICE , 102
	.byte		N03   
	.byte	W03
	.byte		VOICE , 39
	.byte		N06   
	.byte	W07
	.byte		N03   , Gn2 , v064
	.byte	W03
	.byte		VOICE , 22
	.byte		N06   , Gn2 , v127
	.byte	W07
	.byte		VOICE , 102
	.byte		N03   
	.byte	W03
	.byte		VOICE , 39
	.byte		N06   
	.byte	W06
	.byte		N03   , Gn2 , v064
	.byte	W04
	.byte		VOICE , 22
	.byte		N06   , Gn2 , v127
	.byte	W06
@ 009   ----------------------------------------
	.byte		VOICE , 102
	.byte		N03   
	.byte	W03
	.byte		VOICE , 39
	.byte		N06   
	.byte	W07
	.byte		N03   , Gn2 , v064
	.byte	W03
	.byte		VOICE , 24
	.byte		N09   , Cn2 , v096
	.byte	W10
	.byte		VOICE , 97
	.byte		N09   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 24
	.byte		N19   , Cn2 , v096
	.byte	W19
	.byte		VOICE , 40
	.byte		N19   , An1 , v127
	.byte	W20
	.byte		N19   
	.byte	W19
	.byte		VOICE , 96
	.byte		N13   , As1 
	.byte	W05
@ 010   ----------------------------------------
	.byte	W08
	.byte		VOICE , 98
	.byte		N06   , Gs1 
	.byte	W07
	.byte		VOICE , 96
	.byte		N13   , An1 
	.byte	W13
	.byte		VOICE , 98
	.byte		N06   , Gs1 
	.byte	W06
	.byte		VOICE , 96
	.byte		N13   , Gn1 
	.byte	W13
	.byte		VOICE , 98
	.byte		N06   , Gs1 
	.byte	W07
	.byte		VOICE , 96
	.byte		N13   , Fn1 
	.byte	W13
	.byte		VOICE , 98
	.byte		N06   , Cn1 
	.byte	W06
	.byte		VOICE , 94
	.byte		N06   
	.byte	W07
	.byte		        Dn1 
	.byte	W06
	.byte		VOICE , 98
	.byte		N06   , As0 
	.byte	W07
	.byte		VOICE , 96
	.byte		N13   
	.byte	W03
@ 011   ----------------------------------------
	.byte	W10
	.byte		VOICE , 95
	.byte		N06   
	.byte	W06
	.byte		VOICE , 98
	.byte		N13   , Cn1 
	.byte	W13
	.byte		VOICE , 99
	.byte		N06   
	.byte	W07
	.byte		N16   
	.byte	W16
	.byte		VOICE , 0
	.byte	W03
	.byte		        93
	.byte		N06   , Cn2 
	.byte	W07
	.byte		VOICE , 94
	.byte		N06   
	.byte	W06
	.byte		VOICE , 95
	.byte		N06   
	.byte	W07
	.byte		VOICE , 96
	.byte		N13   
	.byte	W13
	.byte		VOICE , 98
	.byte		N06   
	.byte	W06
	.byte		VOICE , 99
	.byte		N13   
	.byte	W02
@ 012   ----------------------------------------
	.byte	W11
	.byte		VOICE , 100
	.byte		TIE   
	.byte	W84
	.byte	W01
@ 013   ----------------------------------------
	.byte	W68
	.byte	W03
	.byte		EOT   
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

titlemusic_4:
	.byte		VOL   , 127*titlemusic_mvl/mxv
	.byte	KEYSH , titlemusic_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte	W19
	.byte		        39
	.byte		N36   , Gn1 , v127
	.byte	W36
	.byte	W03
	.byte		N32   
	.byte	W32
	.byte	W01
	.byte		VOICE , 7
	.byte		N03   , En2 , v084
	.byte	W03
	.byte		        Fs2 
	.byte	W02
@ 001   ----------------------------------------
	.byte	W01
	.byte		N06   , Gn2 
	.byte	W07
	.byte		        Fs2 
	.byte	W06
	.byte		        Gn2 
	.byte	W07
	.byte		        En2 
	.byte	W06
	.byte		        Gn2 
	.byte	W07
	.byte		        En2 
	.byte	W06
	.byte		        Dn2 
	.byte	W07
	.byte		        Bn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W07
	.byte		MOD   , 34
	.byte		N09   
	.byte	W09
	.byte		VOICE , 6
	.byte		MOD   , 0
	.byte		N09   , Cn2 , v044
	.byte	W10
	.byte		VOICE , 39
	.byte		N19   , Cn2 , v127
	.byte	W17
@ 002   ----------------------------------------
	.byte	W03
	.byte		N19   
	.byte	W19
	.byte		N19   
	.byte	W20
	.byte		N19   
	.byte	W19
	.byte		VOICE , 7
	.byte		N06   , Cn2 , v084
	.byte	W07
	.byte		        En2 
	.byte	W06
	.byte		        Gn2 
	.byte	W07
	.byte		N06   
	.byte	W06
	.byte		        En2 
	.byte	W07
	.byte		        Cn2 
	.byte	W02
@ 003   ----------------------------------------
	.byte	W04
	.byte		N06   
	.byte	W07
	.byte		        En2 
	.byte	W06
	.byte		        Gn2 
	.byte	W07
	.byte		MOD   , 34
	.byte		N09   
	.byte	W09
	.byte		VOICE , 6
	.byte		MOD   , 0
	.byte		N09   , Cn2 , v044
	.byte	W10
	.byte		VOICE , 39
	.byte		N36   , Gn1 , v127
	.byte	W36
	.byte	W03
	.byte		N32   
	.byte	W14
@ 004   ----------------------------------------
	.byte	W19
	.byte		VOICE , 7
	.byte		N03   , En2 , v084
	.byte	W03
	.byte		        Fs2 
	.byte	W03
	.byte		N06   , Gn2 
	.byte	W07
	.byte		        Fs2 
	.byte	W06
	.byte		        En2 
	.byte	W07
	.byte		        Dn2 
	.byte	W06
	.byte		        Bn1 
	.byte	W07
	.byte		        Gn1 
	.byte	W06
	.byte		        An1 
	.byte	W07
	.byte		        Bn1 
	.byte	W06
	.byte		        An1 
	.byte	W07
	.byte		MOD   , 34
	.byte		N09   , Gn1 
	.byte	W09
	.byte		VOICE , 6
	.byte		MOD   , 0
	.byte		N09   , Cn2 , v044
	.byte	W03
@ 005   ----------------------------------------
	.byte	W07
	.byte		VOICE , 39
	.byte		N19   , Cn2 , v127
	.byte	W20
	.byte		N19   
	.byte	W19
	.byte		N19   
	.byte	W20
	.byte		N19   
	.byte	W19
	.byte		VOICE , 7
	.byte		N06   , Cn2 , v084
	.byte	W07
	.byte		        En2 
	.byte	W04
@ 006   ----------------------------------------
	.byte	W02
	.byte		        Gn2 
	.byte	W07
	.byte		N06   
	.byte	W06
	.byte		        En2 
	.byte	W07
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W07
	.byte		        En2 
	.byte	W06
	.byte		        Gn2 
	.byte	W07
	.byte		MOD   , 34
	.byte		N09   
	.byte	W09
	.byte		VOICE , 6
	.byte		MOD   , 0
	.byte		N19   , Cn2 , v044
	.byte	W20
	.byte		VOICE , 97
	.byte		N19   , Cn2 , v127
	.byte	W19
@ 007   ----------------------------------------
	.byte		N19   
	.byte	W20
	.byte		N16   
	.byte	W16
	.byte		N03   , Cn2 , v096
	.byte	W03
	.byte		N09   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 7
	.byte		N09   , Gn2 , v096
	.byte	W10
	.byte		VOICE , 97
	.byte		N09   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 7
	.byte		N09   , En2 , v096
	.byte	W09
	.byte		VOICE , 97
	.byte		N09   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 7
	.byte		N09   , Dn2 , v096
	.byte	W08
@ 008   ----------------------------------------
	.byte	W02
	.byte		VOICE , 97
	.byte		N09   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 7
	.byte		N06   , Bn1 , v096
	.byte	W06
	.byte		VOICE , 97
	.byte		N03   , Cn2 
	.byte	W03
	.byte		N09   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 7
	.byte		N09   , Gn2 , v096
	.byte	W10
	.byte		VOICE , 97
	.byte		N09   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 7
	.byte		N09   , En2 , v096
	.byte	W09
	.byte		VOICE , 97
	.byte		N09   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 7
	.byte		N09   , Dn2 , v096
	.byte	W10
	.byte		VOICE , 97
	.byte		N09   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 7
	.byte		N06   , Bn1 , v096
	.byte	W06
@ 009   ----------------------------------------
	.byte		VOICE , 97
	.byte		N03   , Cn2 
	.byte	W03
	.byte		N09   , Cn2 , v127
	.byte	W10
	.byte		VOICE , 39
	.byte		N19   , Gn1 
	.byte	W20
	.byte		VOICE , 40
	.byte		N19   , An1 
	.byte	W19
	.byte		VOICE , 97
	.byte		N03   , Cn2 
	.byte	W03
	.byte		        Cn2 , v072
	.byte	W04
	.byte		        Cn2 , v096
	.byte	W03
	.byte		        Cn2 , v112
	.byte	W03
	.byte		        Cn2 , v072
	.byte	W03
	.byte		        Cn2 , v096
	.byte	W04
	.byte		        Cn2 , v112
	.byte	W03
	.byte		        Cn2 , v072
	.byte	W03
	.byte		        Cn2 , v096
	.byte	W03
	.byte		        Cn2 , v112
	.byte	W04
	.byte		        Cn2 , v072
	.byte	W03
	.byte		        Cn2 , v096
	.byte	W03
	.byte		VOICE , 39
	.byte		N36   , Gn1 , v127
	.byte	W05
@ 010   ----------------------------------------
	.byte	W32
	.byte	W02
	.byte		        Gn1 , v112
	.byte	W36
	.byte	W03
	.byte		        Gn0 , v096
	.byte	W23
@ 011   ----------------------------------------
	.byte	W16
	.byte		        Gn0 , v080
	.byte	W36
	.byte	W03
	.byte		N78   , GnM1, v064
	.byte	W40
	.byte	W01
@ 012   ----------------------------------------
	.byte	W36
	.byte	W01
	.byte	FINE

@******************************************************@
	.align	2

titlemusic:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	titlemusic_pri	@ Priority
	.byte	titlemusic_rev	@ Reverb.

	.word	titlemusic_grp

	.word	titlemusic_1
	.word	titlemusic_2
	.word	titlemusic_3
	.word	titlemusic_4

	.end
