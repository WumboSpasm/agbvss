	.include "MPlayDef.s"

	.equ	wario_grp, voicegroup000
	.equ	wario_pri, 0
	.equ	wario_rev, reverb_set+50
	.equ	wario_mvl, 100
	.equ	wario_key, 0
	.equ	wario_tbs, 1
	.equ	wario_exg, 0
	.equ	wario_cmp, 1

	.section .rodata
	.global	wario
	.align	2

@**************** Track 1 (Midi-Chn.10) ****************@

wario_1:
	.byte	KEYSH , wario_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 130*wario_tbs/2
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte		VOICE , 127
	.byte		VOL   , 80*wario_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte		N06   , Cs1 , v092
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
wario_1_B1:
@ 008   ----------------------------------------
	.byte		VOL   , 120*wario_mvl/mxv
	.byte		N12   , Cn1 , v088
	.byte		N06   , Dn1 , v024
	.byte	W12
	.byte		N12   , Ds1 
	.byte		N06   , En1 , v020
	.byte	W12
	.byte		N12   , Cs1 , v088
	.byte		N12   , Dn1 , v024
	.byte	W12
	.byte		        Ds1 
	.byte		N06   , En1 , v020
	.byte	W12
	.byte		N12   , Cn1 , v088
	.byte		N12   , Dn1 , v028
	.byte	W12
	.byte		        Ds1 , v012
	.byte		N06   , En1 , v020
	.byte	W12
	.byte		N12   , Cs1 , v088
	.byte		N12   , Dn1 , v020
	.byte	W12
	.byte		        Ds1 , v008
	.byte		N06   , En1 , v020
	.byte	W12
@ 009   ----------------------------------------
wario_1_009:
	.byte		N12   , Cn1 , v088
	.byte		N12   , Dn1 , v020
	.byte	W12
	.byte		        Ds1 , v016
	.byte		N06   , En1 , v020
	.byte	W12
	.byte		N12   , Cs1 , v088
	.byte		N12   , Dn1 , v028
	.byte	W12
	.byte		        Ds1 , v024
	.byte		N06   , En1 , v020
	.byte	W12
	.byte		N12   , Cn1 , v088
	.byte		N12   , Dn1 , v024
	.byte	W12
	.byte		        Ds1 
	.byte		N06   , En1 , v020
	.byte	W12
	.byte		N12   , Cs1 , v088
	.byte		N12   , Dn1 , v028
	.byte	W12
	.byte		        Ds1 , v024
	.byte		N06   , En1 , v020
	.byte	W12
	.byte	PEND
@ 010   ----------------------------------------
wario_1_010:
	.byte		N12   , Cn1 , v088
	.byte		N12   , Dn1 , v028
	.byte	W12
	.byte		        Ds1 , v024
	.byte		N06   , En1 , v020
	.byte	W12
	.byte		N12   , Cs1 , v088
	.byte		N12   , Dn1 , v028
	.byte	W12
	.byte		        Ds1 , v024
	.byte		N06   , En1 , v020
	.byte	W12
	.byte		N12   , Cn1 , v088
	.byte		N12   , Dn1 , v024
	.byte	W12
	.byte		        Ds1 , v020
	.byte		N06   , En1 
	.byte	W12
	.byte		N12   , Cs1 , v088
	.byte		N12   , Dn1 , v024
	.byte	W12
	.byte		        Ds1 
	.byte		N06   , En1 , v020
	.byte	W12
	.byte	PEND
@ 011   ----------------------------------------
wario_1_011:
	.byte		N12   , Cn1 , v088
	.byte		N12   , Dn1 , v028
	.byte	W12
	.byte		        Ds1 , v024
	.byte		N06   , En1 , v020
	.byte	W12
	.byte		N12   , Cs1 , v088
	.byte		N12   , Dn1 , v024
	.byte	W12
	.byte		        Ds1 , v020
	.byte		N06   , En1 
	.byte	W12
	.byte		N12   , Cn1 , v088
	.byte		N12   , Dn1 , v024
	.byte	W12
	.byte		        Ds1 
	.byte		N06   , En1 , v020
	.byte	W12
	.byte		N12   , Cs1 , v088
	.byte		N12   , Dn1 , v024
	.byte	W12
	.byte		        Ds1 , v020
	.byte		N06   , En1 
	.byte	W12
	.byte	PEND
@ 012   ----------------------------------------
wario_1_012:
	.byte		N12   , Cn1 , v088
	.byte		N12   , Dn1 , v024
	.byte	W12
	.byte		        Ds1 , v020
	.byte		N06   , En1 
	.byte	W12
	.byte		N12   , Cs1 , v088
	.byte		N12   , Dn1 , v028
	.byte	W12
	.byte		        Ds1 , v024
	.byte		N06   , En1 , v020
	.byte	W12
	.byte		N12   , Cn1 , v088
	.byte		N12   , Dn1 , v024
	.byte	W12
	.byte		        Ds1 
	.byte		N06   , En1 , v020
	.byte	W12
	.byte		N12   , Cs1 , v088
	.byte		N12   , Dn1 , v024
	.byte	W12
	.byte		        Ds1 
	.byte		N06   , En1 , v020
	.byte	W12
	.byte	PEND
@ 013   ----------------------------------------
wario_1_013:
	.byte		N12   , Cn1 , v088
	.byte		N12   , Dn1 , v032
	.byte	W12
	.byte		        Ds1 , v024
	.byte		N06   , En1 , v020
	.byte	W12
	.byte		N12   , Cs1 , v088
	.byte		N12   , Dn1 , v024
	.byte	W12
	.byte		        Ds1 
	.byte		N06   , En1 , v020
	.byte	W12
	.byte		N12   , Cn1 , v088
	.byte		N12   , Dn1 , v024
	.byte	W12
	.byte		        Ds1 
	.byte		N06   , En1 , v020
	.byte	W12
	.byte		N12   , Cs1 , v088
	.byte		N12   , Dn1 , v032
	.byte	W12
	.byte		        Ds1 , v024
	.byte		N06   , En1 , v020
	.byte	W12
	.byte	PEND
@ 014   ----------------------------------------
wario_1_014:
	.byte		N12   , Cn1 , v088
	.byte		N12   , Dn1 , v028
	.byte	W12
	.byte		        Ds1 , v020
	.byte		N06   , En1 
	.byte	W12
	.byte		N12   , Cs1 , v088
	.byte		N12   , Dn1 , v032
	.byte	W12
	.byte		        Ds1 , v020
	.byte		N06   , En1 
	.byte	W12
	.byte		N12   , Cn1 , v088
	.byte		N12   , Dn1 , v032
	.byte	W12
	.byte		        Ds1 , v024
	.byte		N06   , En1 , v020
	.byte	W12
	.byte		N12   , Cs1 , v088
	.byte		N12   , Dn1 , v032
	.byte	W12
	.byte		        Ds1 , v020
	.byte		N06   , En1 
	.byte	W12
	.byte	PEND
@ 015   ----------------------------------------
	.byte	PATT
	 .word	wario_1_014
@ 016   ----------------------------------------
	.byte		N12   , Cn1 , v088
	.byte		N06   , Dn1 , v024
	.byte	W12
	.byte		N12   , Ds1 
	.byte		N06   , En1 , v020
	.byte	W12
	.byte		N12   , Cs1 , v088
	.byte		N12   , Dn1 , v024
	.byte	W12
	.byte		        Ds1 
	.byte		N06   , En1 , v020
	.byte	W12
	.byte		N12   , Cn1 , v088
	.byte		N12   , Dn1 , v028
	.byte	W12
	.byte		        Ds1 , v012
	.byte		N06   , En1 , v020
	.byte	W12
	.byte		N12   , Cs1 , v088
	.byte		N12   , Dn1 , v020
	.byte	W12
	.byte		        Ds1 , v008
	.byte		N06   , En1 , v020
	.byte	W12
@ 017   ----------------------------------------
	.byte	PATT
	 .word	wario_1_009
@ 018   ----------------------------------------
	.byte	PATT
	 .word	wario_1_010
@ 019   ----------------------------------------
	.byte	PATT
	 .word	wario_1_011
@ 020   ----------------------------------------
	.byte	PATT
	 .word	wario_1_012
@ 021   ----------------------------------------
	.byte	PATT
	 .word	wario_1_013
@ 022   ----------------------------------------
	.byte	PATT
	 .word	wario_1_014
@ 023   ----------------------------------------
	.byte		N06   , Fs1 , v060
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Gn1 , v080
	.byte	W24
	.byte		N24   , Fn1 
	.byte	W24
	.byte	GOTO
	 .word	wario_1_B1
wario_1_B2:
@ 024   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.1) ****************@

wario_2:
	.byte	KEYSH , wario_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 17
	.byte		VOL   , 127*wario_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N06   , Cn2 , v127
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Dn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Gn1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
@ 001   ----------------------------------------
wario_2_001:
	.byte		N06   , Cn2 , v127
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Dn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Gn1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
	.byte	PATT
	 .word	wario_2_001
@ 003   ----------------------------------------
	.byte	PATT
	 .word	wario_2_001
@ 004   ----------------------------------------
wario_2_004:
	.byte		N06   , Cn2 , v092
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Dn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Gn1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	wario_2_004
@ 006   ----------------------------------------
wario_2_006:
	.byte		N06   , Cn2 , v080
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Dn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Gn1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte	PEND
@ 007   ----------------------------------------
	.byte	PATT
	 .word	wario_2_006
wario_2_B1:
@ 008   ----------------------------------------
wario_2_008:
	.byte		N06   , Cn2 , v088
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Dn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Gn1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte	PEND
@ 009   ----------------------------------------
wario_2_009:
	.byte		N06   , Cn2 , v088
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Dn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte	PEND
@ 010   ----------------------------------------
wario_2_010:
	.byte		N06   , Fn2 , v088
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Gn2 
	.byte	W06
	.byte		        Fn2 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Cn2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte	PEND
@ 011   ----------------------------------------
wario_2_011:
	.byte		N06   , Fn2 , v088
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Gn2 
	.byte	W06
	.byte		        Fn2 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte	PEND
@ 012   ----------------------------------------
	.byte	PATT
	 .word	wario_2_008
@ 013   ----------------------------------------
	.byte	PATT
	 .word	wario_2_009
@ 014   ----------------------------------------
	.byte	PATT
	 .word	wario_2_010
@ 015   ----------------------------------------
	.byte	PATT
	 .word	wario_2_010
@ 016   ----------------------------------------
	.byte	PATT
	 .word	wario_2_008
@ 017   ----------------------------------------
	.byte	PATT
	 .word	wario_2_009
@ 018   ----------------------------------------
	.byte	PATT
	 .word	wario_2_010
@ 019   ----------------------------------------
	.byte	PATT
	 .word	wario_2_011
@ 020   ----------------------------------------
	.byte	PATT
	 .word	wario_2_008
@ 021   ----------------------------------------
	.byte	PATT
	 .word	wario_2_009
@ 022   ----------------------------------------
	.byte	PATT
	 .word	wario_2_010
@ 023   ----------------------------------------
	.byte		N12   , Dn2 , v088
	.byte	W12
	.byte		N04   , Ds2 , v024
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		        Fn2 
	.byte	W04
	.byte		N12   , Fs2 , v088
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W36
	.byte		        Gn1 
	.byte	W12
	.byte	GOTO
	 .word	wario_2_B1
wario_2_B2:
@ 024   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

wario_3:
	.byte	KEYSH , wario_key+0
@ 000   ----------------------------------------
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte		VOICE , 18
	.byte		VOL   , 110*wario_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
@ 004   ----------------------------------------
wario_3_004:
	.byte		N06   , Cn3 , v080
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	wario_3_004
@ 006   ----------------------------------------
	.byte	PATT
	 .word	wario_3_004
@ 007   ----------------------------------------
	.byte	PATT
	 .word	wario_3_004
wario_3_B1:
@ 008   ----------------------------------------
	.byte		N08   , Ds3 , v060
	.byte		N08   , An3 
	.byte	W08
	.byte		N04   , En3 
	.byte		N04   , As3 
	.byte	W04
	.byte		N06   , Ds3 
	.byte		N06   , An3 
	.byte	W08
	.byte		N04   , En3 
	.byte		N04   , As3 
	.byte	W76
@ 009   ----------------------------------------
wario_3_009:
	.byte	W84
	.byte		N04   , Dn3 , v060
	.byte		N04   , Gs3 
	.byte	W12
	.byte	PEND
@ 010   ----------------------------------------
wario_3_010:
	.byte		N08   , Dn3 , v060
	.byte		N08   , Gs3 
	.byte	W08
	.byte		N04   , Ds3 
	.byte		N04   , An3 
	.byte	W04
	.byte		N08   , Dn3 
	.byte		N08   , Gs3 
	.byte	W08
	.byte		N04   , Ds3 
	.byte		N04   , An3 
	.byte	W76
	.byte	PEND
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
wario_3_012:
	.byte		N08   , Ds3 , v060
	.byte		N08   , An3 
	.byte	W08
	.byte		N04   , En3 
	.byte		N04   , As3 
	.byte	W04
	.byte		N08   , Ds3 
	.byte		N08   , An3 
	.byte	W08
	.byte		N04   , En3 
	.byte		N04   , As3 
	.byte	W76
	.byte	PEND
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	PATT
	 .word	wario_3_010
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte		N08   , Ds3 , v060
	.byte		N08   , An3 
	.byte	W08
	.byte		N04   , En3 
	.byte		N04   , As3 
	.byte	W04
	.byte		N06   , Ds3 
	.byte		N06   , An3 
	.byte	W08
	.byte		N04   , En3 
	.byte		N04   , As3 
	.byte	W76
@ 017   ----------------------------------------
	.byte	PATT
	 .word	wario_3_009
@ 018   ----------------------------------------
	.byte	PATT
	 .word	wario_3_010
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	PATT
	 .word	wario_3_012
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	PATT
	 .word	wario_3_010
@ 023   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 .word	wario_3_B1
wario_3_B2:
@ 024   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.7) ****************@

wario_4:
	.byte	KEYSH , wario_key+0
@ 000   ----------------------------------------
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte		VOICE , 19
	.byte		VOL   , 100*wario_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	W96
wario_4_B1:
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
wario_4_009:
	.byte		N07   , Ds4 , v040
	.byte		N07   , An4 
	.byte	W08
	.byte		N03   , En4 
	.byte		N03   , As4 
	.byte	W04
	.byte		N07   , Ds4 
	.byte		N07   , An4 
	.byte	W08
	.byte		N03   , En4 
	.byte		N03   , As4 
	.byte	W76
	.byte	PEND
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
wario_4_011:
	.byte		N07   , Dn4 , v040
	.byte		N07   , Gs4 
	.byte	W08
	.byte		N03   , Ds4 
	.byte		N03   , An4 
	.byte	W04
	.byte		N07   , Dn4 
	.byte		N07   , Gs4 
	.byte	W08
	.byte		N03   , Ds4 
	.byte		N03   , An4 
	.byte	W76
	.byte	PEND
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	PATT
	 .word	wario_4_009
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	PATT
	 .word	wario_4_011
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	PATT
	 .word	wario_4_009
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	PATT
	 .word	wario_4_011
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	PATT
	 .word	wario_4_009
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W60
	.byte		N04   , Bn3 , v040
	.byte		N04   , Cs4 
	.byte	W12
	.byte		N12   , Fn4 
	.byte		N12   , Gn4 
	.byte	W24
	.byte	GOTO
	 .word	wario_4_B1
wario_4_B2:
@ 024   ----------------------------------------
	.byte	FINE

@**************** Track 5 (Midi-Chn.4) ****************@

wario_5:
	.byte	KEYSH , wario_key+0
@ 000   ----------------------------------------
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	W96
wario_5_B1:
@ 008   ----------------------------------------
	.byte		VOICE , 20
	.byte		VOL   , 100*wario_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W36
	.byte		N04   , As2 , v040
	.byte		N04   , Dn3 
	.byte		N04   , An3 
	.byte	W12
	.byte		N16   , As2 
	.byte		N16   , Dn3 
	.byte		N16   , An3 
	.byte	W20
	.byte		N04   , As2 
	.byte		N04   , Dn3 
	.byte		N04   , Gn3 
	.byte	W28
@ 009   ----------------------------------------
wario_5_009:
	.byte	W36
	.byte		N04   , As2 , v040
	.byte		N04   , Dn3 
	.byte		N04   , An3 
	.byte	W12
	.byte		N16   , As2 
	.byte		N16   , Dn3 
	.byte		N12   , An3 
	.byte	W20
	.byte		N04   , As2 
	.byte		N04   , Dn3 
	.byte		N04   , Gn3 
	.byte	W28
	.byte	PEND
@ 010   ----------------------------------------
wario_5_010:
	.byte	W36
	.byte		N04   , Ds3 , v040
	.byte		N04   , Gn3 
	.byte		N04   , Dn4 
	.byte	W12
	.byte		N16   , Ds3 
	.byte		N16   , Gn3 
	.byte		N16   , Dn4 
	.byte	W20
	.byte		N04   , Ds3 
	.byte		N04   , Gn3 
	.byte		N04   , Cn4 
	.byte	W28
	.byte	PEND
@ 011   ----------------------------------------
wario_5_011:
	.byte	W36
	.byte		N04   , Ds3 , v040
	.byte		N04   , Gn3 
	.byte		N04   , Dn4 
	.byte	W12
	.byte		N16   , Ds3 
	.byte		N12   , Gn3 
	.byte		N12   , Dn4 
	.byte	W20
	.byte		N04   , Ds3 
	.byte		N04   , Gn3 
	.byte		N04   , Cn4 
	.byte	W28
	.byte	PEND
@ 012   ----------------------------------------
wario_5_012:
	.byte	W36
	.byte		N04   , As2 , v040
	.byte		N04   , Dn3 
	.byte		N04   , An3 
	.byte	W12
	.byte		N16   , As2 
	.byte		N16   , Dn3 
	.byte		N16   , An3 
	.byte	W20
	.byte		N04   , As2 
	.byte		N04   , Dn3 
	.byte		N04   , Gn3 
	.byte	W28
	.byte	PEND
@ 013   ----------------------------------------
	.byte	PATT
	 .word	wario_5_012
@ 014   ----------------------------------------
	.byte	PATT
	 .word	wario_5_010
@ 015   ----------------------------------------
	.byte	PATT
	 .word	wario_5_010
@ 016   ----------------------------------------
	.byte	PATT
	 .word	wario_5_012
@ 017   ----------------------------------------
	.byte	PATT
	 .word	wario_5_009
@ 018   ----------------------------------------
	.byte	PATT
	 .word	wario_5_010
@ 019   ----------------------------------------
	.byte	PATT
	 .word	wario_5_011
@ 020   ----------------------------------------
	.byte	PATT
	 .word	wario_5_012
@ 021   ----------------------------------------
	.byte	PATT
	 .word	wario_5_012
@ 022   ----------------------------------------
	.byte	W36
	.byte		N04   , Ds3 , v040
	.byte		N04   , Gn3 
	.byte		N04   , Dn4 
	.byte	W12
	.byte		N16   , Ds3 
	.byte		N16   , Gn3 
	.byte		N16   , Dn4 
	.byte	W20
	.byte		N04   , Ds3 
	.byte		N04   , Gn3 
	.byte		N04   , Cn4 
	.byte	W16
	.byte		        Ds3 
	.byte		N04   , Gn3 
	.byte		N04   , Dn4 
	.byte	W12
@ 023   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 .word	wario_5_B1
wario_5_B2:
@ 024   ----------------------------------------
	.byte	FINE

@**************** Track 6 (Midi-Chn.5) ****************@

wario_6:
	.byte	KEYSH , wario_key+0
@ 000   ----------------------------------------
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte		VOICE , 21
	.byte		BEND  , c_v+0
	.byte	W96
@ 005   ----------------------------------------
	.byte		BENDR , 12
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte		VOL   , 60*wario_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N04   , As2 , v032
	.byte		N04   , Dn3 
	.byte		N04   , Gn3 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		VOL   , 81*wario_mvl/mxv
	.byte		BEND  , c_v+1
	.byte	W01
	.byte		        c_v+1
	.byte	W01
	.byte		VOL   , 82*wario_mvl/mxv
	.byte		BEND  , c_v+2
	.byte	W01
	.byte		        c_v+3
	.byte	W01
	.byte		VOL   , 83*wario_mvl/mxv
	.byte		BEND  , c_v+3
	.byte	W01
	.byte		        c_v+4
	.byte	W01
	.byte		VOL   , 84*wario_mvl/mxv
	.byte		BEND  , c_v+5
	.byte	W01
	.byte		        c_v+5
	.byte	W01
	.byte		VOL   , 85*wario_mvl/mxv
	.byte		BEND  , c_v+6
	.byte	W01
	.byte		        c_v+7
	.byte	W01
	.byte		VOL   , 86*wario_mvl/mxv
	.byte		BEND  , c_v+7
	.byte		N04   , As2 
	.byte		N04   , Dn3 
	.byte		N04   , Gn3 
	.byte	W01
	.byte		BEND  , c_v+8
	.byte	W01
	.byte		VOL   , 87*wario_mvl/mxv
	.byte		BEND  , c_v+9
	.byte	W01
	.byte		        c_v+9
	.byte	W01
	.byte		VOL   , 88*wario_mvl/mxv
	.byte		BEND  , c_v+10
	.byte	W01
	.byte		        c_v+11
	.byte	W01
	.byte		VOL   , 89*wario_mvl/mxv
	.byte		BEND  , c_v+11
	.byte	W01
	.byte		        c_v+12
	.byte	W01
	.byte		VOL   , 90*wario_mvl/mxv
	.byte		BEND  , c_v+13
	.byte	W01
	.byte		        c_v+13
	.byte	W01
	.byte		VOL   , 91*wario_mvl/mxv
	.byte		BEND  , c_v+14
	.byte	W01
	.byte		        c_v+15
	.byte	W01
	.byte		VOL   , 92*wario_mvl/mxv
	.byte		BEND  , c_v+15
	.byte		N04   , As2 
	.byte		N04   , Dn3 
	.byte		N04   , Gn3 
	.byte	W01
	.byte		BEND  , c_v+16
	.byte	W01
	.byte		VOL   , 93*wario_mvl/mxv
	.byte		BEND  , c_v+17
	.byte	W01
	.byte		        c_v+17
	.byte	W01
	.byte		VOL   , 94*wario_mvl/mxv
	.byte		BEND  , c_v+18
	.byte	W01
	.byte		        c_v+19
	.byte	W01
	.byte		VOL   , 95*wario_mvl/mxv
	.byte		BEND  , c_v+19
	.byte		N04   , As2 
	.byte		N04   , Dn3 
	.byte		N04   , Gn3 
	.byte	W01
	.byte		BEND  , c_v+20
	.byte	W01
	.byte		VOL   , 96*wario_mvl/mxv
	.byte		BEND  , c_v+21
	.byte	W01
	.byte		        c_v+21
	.byte	W01
	.byte		VOL   , 97*wario_mvl/mxv
	.byte		BEND  , c_v+22
	.byte	W01
	.byte		        c_v+23
	.byte	W01
	.byte		VOL   , 98*wario_mvl/mxv
	.byte		BEND  , c_v+23
	.byte	W01
	.byte		        c_v+24
	.byte	W01
	.byte		VOL   , 99*wario_mvl/mxv
	.byte		BEND  , c_v+25
	.byte	W01
	.byte		        c_v+25
	.byte	W01
	.byte		VOL   , 100*wario_mvl/mxv
	.byte		BEND  , c_v+26
	.byte	W01
	.byte		        c_v+27
	.byte	W01
	.byte		VOL   , 101*wario_mvl/mxv
	.byte		BEND  , c_v+27
	.byte		N04   , As2 
	.byte		N04   , Dn3 
	.byte		N04   , Gn3 
	.byte	W01
	.byte		BEND  , c_v+28
	.byte	W01
	.byte		VOL   , 102*wario_mvl/mxv
	.byte		BEND  , c_v+29
	.byte	W01
	.byte		        c_v+29
	.byte	W01
	.byte		        c_v+30
	.byte	W01
	.byte		VOL   , 103*wario_mvl/mxv
	.byte		BEND  , c_v+31
	.byte	W01
	.byte		        c_v+31
	.byte	W01
	.byte		VOL   , 104*wario_mvl/mxv
	.byte		BEND  , c_v+32
	.byte	W01
	.byte		        c_v+33
	.byte	W01
	.byte		VOL   , 105*wario_mvl/mxv
	.byte		BEND  , c_v+33
	.byte	W01
	.byte		        c_v+34
	.byte	W01
	.byte		VOL   , 106*wario_mvl/mxv
	.byte		BEND  , c_v+35
	.byte	W01
	.byte		        c_v+35
	.byte	W01
	.byte		VOL   , 107*wario_mvl/mxv
	.byte		BEND  , c_v+36
	.byte	W01
	.byte		        c_v+37
	.byte	W01
	.byte		VOL   , 108*wario_mvl/mxv
	.byte		BEND  , c_v+37
	.byte	W01
	.byte		        c_v+38
	.byte	W01
	.byte		VOL   , 109*wario_mvl/mxv
	.byte		BEND  , c_v+39
	.byte	W01
	.byte		        c_v+39
	.byte		N04   , As2 
	.byte		N04   , Dn3 
	.byte		N04   , Gn3 
	.byte	W01
	.byte		VOL   , 110*wario_mvl/mxv
	.byte		BEND  , c_v+40
	.byte	W01
	.byte		        c_v+41
	.byte	W01
	.byte		VOL   , 111*wario_mvl/mxv
	.byte		BEND  , c_v+41
	.byte	W01
	.byte		        c_v+42
	.byte	W01
	.byte		VOL   , 112*wario_mvl/mxv
	.byte		BEND  , c_v+43
	.byte	W01
	.byte		        c_v+43
	.byte		N04   , As2 
	.byte		N04   , Dn3 
	.byte		N04   , Gn3 
	.byte	W01
	.byte		VOL   , 113*wario_mvl/mxv
	.byte		BEND  , c_v+44
	.byte	W01
	.byte		        c_v+45
	.byte	W01
	.byte		VOL   , 114*wario_mvl/mxv
	.byte		BEND  , c_v+45
	.byte	W01
	.byte		        c_v+46
	.byte	W01
	.byte		VOL   , 115*wario_mvl/mxv
	.byte		BEND  , c_v+47
	.byte	W01
	.byte		        c_v+47
	.byte		N04   , As2 
	.byte		N04   , Dn3 
	.byte		N04   , Gn3 
	.byte	W01
	.byte		VOL   , 116*wario_mvl/mxv
	.byte		BEND  , c_v+48
	.byte	W01
	.byte		        c_v+49
	.byte	W01
	.byte		VOL   , 117*wario_mvl/mxv
	.byte		BEND  , c_v+49
	.byte	W01
	.byte		        c_v+50
	.byte	W01
	.byte		VOL   , 118*wario_mvl/mxv
	.byte		BEND  , c_v+51
	.byte	W01
	.byte		        c_v+51
	.byte	W01
	.byte		VOL   , 119*wario_mvl/mxv
	.byte		BEND  , c_v+52
	.byte	W01
	.byte		        c_v+53
	.byte	W01
	.byte		VOL   , 120*wario_mvl/mxv
	.byte		BEND  , c_v+53
	.byte	W01
	.byte		        c_v+54
	.byte	W01
	.byte		VOL   , 121*wario_mvl/mxv
	.byte		BEND  , c_v+55
	.byte	W01
	.byte		        c_v+55
	.byte		N04   , As2 
	.byte		N04   , Dn3 
	.byte		N04   , Gn3 
	.byte	W01
	.byte		VOL   , 122*wario_mvl/mxv
	.byte		BEND  , c_v+56
	.byte	W01
	.byte		        c_v+57
	.byte	W01
	.byte		VOL   , 123*wario_mvl/mxv
	.byte		BEND  , c_v+57
	.byte	W01
	.byte		        c_v+58
	.byte	W01
	.byte		VOL   , 124*wario_mvl/mxv
	.byte		BEND  , c_v+59
	.byte	W01
	.byte		        c_v+59
	.byte		N04   , As2 
	.byte		N04   , Dn3 
	.byte		N04   , Gn3 
	.byte	W01
	.byte		BEND  , c_v+60
	.byte	W01
	.byte		VOL   , 125*wario_mvl/mxv
	.byte		BEND  , c_v+61
	.byte	W01
	.byte		        c_v+61
	.byte	W01
	.byte		VOL   , 126*wario_mvl/mxv
	.byte		BEND  , c_v+62
	.byte	W01
	.byte		        c_v+63
	.byte	W01
wario_6_B1:
@ 008   ----------------------------------------
	.byte		VOL   , 127*wario_mvl/mxv
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 .word	wario_6_B1
wario_6_B2:
@ 024   ----------------------------------------
	.byte	FINE

@**************** Track 7 (Midi-Chn.6) ****************@

wario_7:
	.byte	KEYSH , wario_key+0
@ 000   ----------------------------------------
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte		VOICE , 22
	.byte	W96
@ 005   ----------------------------------------
	.byte		VOL   , 64*wario_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 2
	.byte	W96
@ 006   ----------------------------------------
	.byte		BEND  , c_v+0
	.byte		N96   , As2 , v052
	.byte		N96   , Dn3 
	.byte		N96   , Gn3 
	.byte	W48
	.byte	W02
	.byte		BEND  , c_v+2
	.byte	W02
	.byte		        c_v+5
	.byte	W02
	.byte		        c_v+8
	.byte	W02
	.byte		        c_v+10
	.byte	W02
	.byte		        c_v+13
	.byte	W02
	.byte		        c_v+16
	.byte	W02
	.byte		        c_v+19
	.byte	W02
	.byte		        c_v+21
	.byte	W02
	.byte		        c_v+24
	.byte	W02
	.byte		        c_v+27
	.byte	W02
	.byte		        c_v+29
	.byte	W02
	.byte		        c_v+32
	.byte	W02
	.byte		        c_v+35
	.byte	W02
	.byte		        c_v+38
	.byte	W02
	.byte		        c_v+40
	.byte	W02
	.byte		        c_v+43
	.byte	W02
	.byte		        c_v+46
	.byte	W02
	.byte		        c_v+48
	.byte	W02
	.byte		        c_v+51
	.byte	W02
	.byte		        c_v+54
	.byte	W02
	.byte		        c_v+57
	.byte	W02
	.byte		        c_v+59
	.byte	W02
	.byte		        c_v+63
	.byte	W02
@ 007   ----------------------------------------
	.byte		VOICE , 23
	.byte		VOL   , 120*wario_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte	W54
	.byte		N48   , Cn3 , v100
	.byte	W42
wario_7_B1:
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 .word	wario_7_B1
wario_7_B2:
@ 024   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

wario:
	.byte	7	@ NumTrks
	.byte	0	@ NumBlks
	.byte	wario_pri	@ Priority
	.byte	wario_rev	@ Reverb.

	.word	wario_grp

	.word	wario_1
	.word	wario_2
	.word	wario_3
	.word	wario_4
	.word	wario_5
	.word	wario_6
	.word	wario_7

	.end
