	.include "MPlayDef.s"

	.equ	gameover_grp, voicegroup000
	.equ	gameover_pri, 128
	.equ	gameover_rev, reverb_set+50
	.equ	gameover_mvl, 127
	.equ	gameover_key, 0
	.equ	gameover_tbs, 1
	.equ	gameover_exg, 0
	.equ	gameover_cmp, 1

	.section .rodata
	.global	gameover
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

gameover_1:
	.byte		VOL   , 127*gameover_mvl/mxv
	.byte	KEYSH , gameover_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 100*gameover_tbs/2
	.byte		VOICE , 7
	.byte		N04   , Ds2 , v127
	.byte	W04
	.byte		        Ds2 , v064
	.byte	W04
	.byte		N08   , En2 , v127
	.byte	W08
	.byte		        En2 , v064
	.byte	W08
	.byte		N04   , Dn2 , v127
	.byte	W04
	.byte		        Dn2 , v064
	.byte	W04
	.byte		N08   , Bn1 , v127
	.byte	W08
	.byte		N04   , Dn2 
	.byte	W04
	.byte		        Dn2 , v064
	.byte	W04
	.byte		N08   , En2 , v127
	.byte	W08
	.byte		        En2 , v064
	.byte	W08
	.byte		N04   , Fn2 , v127
	.byte	W04
	.byte		        Fn2 , v064
	.byte	W04
	.byte		N08   , Fs2 , v127
	.byte	W08
	.byte		        Fs2 , v064
	.byte	W08
	.byte		        En2 , v127
	.byte	W08
@ 001   ----------------------------------------
	.byte		N04   , Cs2 
	.byte	W04
	.byte		        Cs2 , v064
	.byte	W04
	.byte		MOD   , 34
	.byte		N16   , En2 , v127
	.byte	W16
	.byte		MOD   , 34
	.byte		N16   , En2 , v064
	.byte	W16
	.byte		MOD   , 0
	.byte		N04   , Dn2 , v127
	.byte	W04
	.byte		        Gn2 
	.byte	W04
	.byte		        Dn2 
	.byte	W04
	.byte		        Cs2 
	.byte	W04
	.byte		        Cn2 
	.byte	W04
	.byte		        Gn2 
	.byte	W04
	.byte		        Cn2 
	.byte	W04
	.byte		        As1 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        Dn2 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		        Dn2 
	.byte	W04
	.byte		N16   , Fn2 
	.byte	W08
@ 002   ----------------------------------------
	.byte	W08
	.byte		N08   , Gn2 
	.byte	W08
	.byte		N04   , Dn2 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		        En2 , v064
	.byte	W04
	.byte		        Dn2 , v127
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		        En2 , v064
	.byte	W04
	.byte		N08   , Gn2 , v127
	.byte	W08
	.byte		        As1 
	.byte	W08
	.byte		N16   , Bn1 
	.byte	W16
	.byte		VOICE , 0
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

gameover_2:
	.byte		VOL   , 127*gameover_mvl/mxv
	.byte	KEYSH , gameover_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte	W08
	.byte		        50
	.byte		N08   , Gs1 , v127
	.byte	W08
	.byte		N04   , Gs1 , v080
	.byte	W04
	.byte		        Gs1 , v127
	.byte	W04
	.byte		N08   
	.byte	W08
	.byte		N04   , Gs1 , v080
	.byte	W04
	.byte		        Gs1 , v127
	.byte	W04
	.byte		N08   
	.byte	W08
	.byte		N04   , Gs1 , v080
	.byte	W04
	.byte		        Gs1 , v127
	.byte	W04
	.byte		N08   
	.byte	W08
	.byte		N04   , Gs1 , v080
	.byte	W04
	.byte		        Gs1 , v127
	.byte	W04
	.byte		N08   
	.byte	W08
	.byte		N04   , Gs1 , v080
	.byte	W04
	.byte		        Gs1 , v127
	.byte	W04
	.byte		N08   
	.byte	W08
@ 001   ----------------------------------------
	.byte		N04   , Gs1 , v080
	.byte	W04
	.byte		        Gs1 , v127
	.byte	W04
	.byte		N08   
	.byte	W08
	.byte		N04   , Gs1 , v080
	.byte	W04
	.byte		        Gs1 , v127
	.byte	W04
	.byte		VOICE , 49
	.byte		N08   
	.byte	W08
	.byte		VOICE , 46
	.byte		N08   
	.byte	W08
	.byte		N32   
	.byte	W32
	.byte		N32   
	.byte	W24
@ 002   ----------------------------------------
	.byte	W08
	.byte		VOICE , 50
	.byte		N08   
	.byte	W08
	.byte		N04   , Gs1 , v080
	.byte	W04
	.byte		        Gs1 , v127
	.byte	W04
	.byte		N08   
	.byte	W08
	.byte		N04   , Gs1 , v080
	.byte	W04
	.byte		        Gs1 , v127
	.byte	W04
	.byte		N08   
	.byte	W08
	.byte		VOICE , 46
	.byte		N08   
	.byte	W08
	.byte		N16   
	.byte	W16
	.byte		VOICE , 0
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

gameover_3:
	.byte		VOL   , 127*gameover_mvl/mxv
	.byte	KEYSH , gameover_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte	W08
	.byte		        16
	.byte		N08   , Gn1 , v127
	.byte	W08
	.byte		        Gn1 , v052
	.byte	W08
	.byte		        Dn2 , v127
	.byte	W08
	.byte		        Dn2 , v052
	.byte	W08
	.byte		        Gn1 , v127
	.byte	W08
	.byte		        Gn1 , v052
	.byte	W08
	.byte		        Dn2 , v127
	.byte	W08
	.byte		        Gs1 
	.byte	W08
	.byte		        An1 
	.byte	W08
	.byte		        An1 , v052
	.byte	W08
	.byte		        En2 , v127
	.byte	W08
@ 001   ----------------------------------------
	.byte		        En2 , v052
	.byte	W08
	.byte		        An1 , v127
	.byte	W08
	.byte		        An1 , v052
	.byte	W08
	.byte		        En2 , v127
	.byte	W08
	.byte		        Cs2 
	.byte	W08
	.byte		        Dn2 
	.byte	W08
	.byte		        Dn2 , v072
	.byte	W08
	.byte		        Dn2 , v056
	.byte	W08
	.byte		        Dn2 , v044
	.byte	W08
	.byte		        Dn1 , v127
	.byte	W08
	.byte		        Dn1 , v072
	.byte	W08
	.byte		        Dn1 , v056
	.byte	W08
@ 002   ----------------------------------------
	.byte		        Dn1 , v044
	.byte	W08
	.byte		        Cn2 , v127
	.byte	W08
	.byte		        Cn2 , v052
	.byte	W08
	.byte		        Dn2 , v127
	.byte	W08
	.byte		        Dn2 , v052
	.byte	W08
	.byte		        Gn1 , v127
	.byte	W08
	.byte		        Gn1 , v072
	.byte	W08
	.byte		N16   , Gn1 , v052
	.byte	W16
	.byte		VOICE , 0
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

gameover_4:
	.byte		VOL   , 127*gameover_mvl/mxv
	.byte	KEYSH , gameover_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte	W16
	.byte		        53
	.byte		N08   , Gn2 , v127
	.byte	W08
	.byte		VOICE , 22
	.byte		N08   
	.byte	W08
	.byte		VOICE , 53
	.byte		N08   
	.byte	W08
	.byte		VOICE , 102
	.byte		N08   
	.byte	W08
	.byte		VOICE , 53
	.byte		N08   
	.byte	W08
	.byte		VOICE , 101
	.byte		N08   
	.byte	W08
	.byte		VOICE , 53
	.byte		N08   
	.byte	W08
	.byte		VOICE , 102
	.byte		N08   , An2 
	.byte	W08
	.byte		VOICE , 53
	.byte		N08   
	.byte	W08
	.byte		VOICE , 22
	.byte		N08   
	.byte	W08
@ 001   ----------------------------------------
	.byte		VOICE , 53
	.byte		N08   
	.byte	W08
	.byte		VOICE , 102
	.byte		N08   
	.byte	W08
	.byte		VOICE , 53
	.byte		N08   
	.byte	W08
	.byte		VOICE , 101
	.byte		N08   
	.byte	W08
	.byte		VOICE , 53
	.byte		N08   
	.byte	W08
	.byte		VOICE , 42
	.byte		N32   , Dn2 
	.byte	W32
	.byte		N32   
	.byte	W24
@ 002   ----------------------------------------
	.byte	W08
	.byte		N16   , Cn2 
	.byte	W16
	.byte		        Dn2 
	.byte	W16
	.byte		N32   , Gn2 
	.byte	W32
	.byte		VOICE , 0
	.byte	FINE

@******************************************************@
	.align	2

gameover:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	gameover_pri	@ Priority
	.byte	gameover_rev	@ Reverb.

	.word	gameover_grp

	.word	gameover_1
	.word	gameover_2
	.word	gameover_3
	.word	gameover_4

	.end
