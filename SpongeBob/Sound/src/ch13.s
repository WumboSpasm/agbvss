	.include "MPlayDef.s"

	.equ	ch13_grp, voicegroup000
	.equ	ch13_pri, 128
	.equ	ch13_rev, reverb_set+50
	.equ	ch13_mvl, 127
	.equ	ch13_key, 0
	.equ	ch13_tbs, 1
	.equ	ch13_exg, 0
	.equ	ch13_cmp, 1

	.section .rodata
	.global	ch13
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

ch13_1:
	.byte		VOL   , 127*ch13_mvl/mxv
	.byte	KEYSH , ch13_key+0
ch13_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 100*ch13_tbs/2
	.byte		VOICE , 0
	.byte		N09   , Cn2 , v127
	.byte	W09
	.byte		VOICE , 3
	.byte		N04   
	.byte	W04
	.byte		VOICE , 0
	.byte		N09   , As1 
	.byte	W09
	.byte		VOICE , 3
	.byte		N09   
	.byte	W09
	.byte		VOICE , 0
	.byte		N09   , Cn2 
	.byte	W09
	.byte		VOICE , 3
	.byte		N09   
	.byte	W09
	.byte		VOICE , 4
	.byte		N04   , Gn1 , v092
	.byte	W05
	.byte		VOICE , 0
	.byte		N09   , As1 , v127
	.byte	W09
	.byte		VOICE , 3
	.byte		N09   
	.byte	W09
	.byte		VOICE , 0
	.byte		N09   , Cn2 
	.byte	W09
	.byte		VOICE , 3
	.byte		N04   
	.byte	W04
	.byte		VOICE , 0
	.byte		N09   , As1 
	.byte	W09
	.byte		VOICE , 3
	.byte		N09   
	.byte	W02
@ 001   ----------------------------------------
ch13_1_001:
	.byte	W07
	.byte		VOICE , 0
	.byte		N09   , Cn2 , v127
	.byte	W09
	.byte		VOICE , 3
	.byte		N09   
	.byte	W09
	.byte		VOICE , 4
	.byte		N04   , Gn1 , v092
	.byte	W05
	.byte		VOICE , 0
	.byte		N09   , As1 , v127
	.byte	W09
	.byte		VOICE , 3
	.byte		N09   
	.byte	W09
	.byte		VOICE , 0
	.byte		N09   , Cn2 
	.byte	W09
	.byte		VOICE , 3
	.byte		N04   
	.byte	W04
	.byte		VOICE , 0
	.byte		N09   , As1 
	.byte	W09
	.byte		VOICE , 3
	.byte		N09   
	.byte	W09
	.byte		VOICE , 0
	.byte		N09   , Cn2 
	.byte	W09
	.byte		VOICE , 3
	.byte		N09   
	.byte	W08
	.byte	PEND
@ 002   ----------------------------------------
ch13_1_002:
	.byte	W01
	.byte		VOICE , 4
	.byte		N04   , Gn1 , v092
	.byte	W05
	.byte		VOICE , 0
	.byte		N09   , As1 , v127
	.byte	W09
	.byte		VOICE , 3
	.byte		N09   
	.byte	W09
	.byte		VOICE , 0
	.byte		N09   , Cn2 
	.byte	W09
	.byte		VOICE , 3
	.byte		N04   
	.byte	W04
	.byte		VOICE , 0
	.byte		N09   , As1 
	.byte	W09
	.byte		VOICE , 3
	.byte		N09   
	.byte	W09
	.byte		VOICE , 0
	.byte		N09   , Cn2 
	.byte	W09
	.byte		VOICE , 3
	.byte		N09   
	.byte	W09
	.byte		VOICE , 4
	.byte		N04   , Gn1 , v092
	.byte	W05
	.byte		VOICE , 0
	.byte		N09   , As1 , v127
	.byte	W09
	.byte		VOICE , 3
	.byte		N09   
	.byte	W09
	.byte	PEND
@ 003   ----------------------------------------
	.byte		VOICE , 0
	.byte		N09   , Cn2 
	.byte	W09
	.byte		VOICE , 3
	.byte		N04   
	.byte	W04
	.byte		VOICE , 0
	.byte		N09   , As1 
	.byte	W09
	.byte		VOICE , 3
	.byte		N09   
	.byte	W09
	.byte		VOICE , 0
	.byte		N09   , Cn2 
	.byte	W09
	.byte		VOICE , 3
	.byte		N09   
	.byte	W09
	.byte		VOICE , 4
	.byte		N04   , Gn1 , v092
	.byte	W05
	.byte		VOICE , 0
	.byte		N09   , As1 , v127
	.byte	W09
	.byte		VOICE , 3
	.byte		N09   
	.byte	W09
	.byte		VOICE , 0
	.byte		N09   , Cn2 
	.byte	W09
	.byte		VOICE , 3
	.byte		N04   
	.byte	W04
	.byte		VOICE , 0
	.byte		N09   , As1 
	.byte	W09
	.byte		VOICE , 3
	.byte		N09   
	.byte	W02
@ 004   ----------------------------------------
	.byte	PATT
	 .word	ch13_1_001
@ 005   ----------------------------------------
	.byte	PATT
	 .word	ch13_1_002
@ 006   ----------------------------------------
	.byte		VOICE , 0
	.byte		N09   , Cn2 , v127
	.byte	W09
	.byte		VOICE , 3
	.byte		N04   
	.byte	W04
	.byte		VOICE , 0
	.byte		N09   , As1 
	.byte	W09
	.byte		VOICE , 3
	.byte		N09   
	.byte	W09
	.byte		VOICE , 0
	.byte		N09   , Fn1 
	.byte	W09
	.byte		VOICE , 3
	.byte		N09   , Fn2 
	.byte	W09
	.byte		VOICE , 4
	.byte		N04   , Fn1 , v092
	.byte	W05
	.byte		VOICE , 0
	.byte		N09   , Fn1 , v127
	.byte	W09
	.byte		VOICE , 3
	.byte		N09   , Fn2 
	.byte	W09
	.byte		VOICE , 0
	.byte		N09   , Cn2 
	.byte	W09
	.byte		VOICE , 3
	.byte		N04   
	.byte	W04
	.byte		VOICE , 0
	.byte		N09   , As1 
	.byte	W09
	.byte		VOICE , 3
	.byte		N09   
	.byte	W02
@ 007   ----------------------------------------
	.byte	W07
	.byte		VOICE , 0
	.byte		N04   , Cn2 
	.byte	W05
	.byte		VOICE , 3
	.byte		N13   
	.byte	W13
	.byte		VOICE , 0
	.byte		N13   , Gn1 
	.byte	W14
	.byte		N09   , Cn2 
	.byte	W09
	.byte		N06   , En1 
	.byte	W06
	.byte		        En1 , v064
	.byte	W07
	.byte		        Gn1 , v127
	.byte	W07
	.byte		        Gn1 , v064
	.byte	W07
	.byte		N09   , Bn1 , v127
	.byte	W09
	.byte		N06   , An1 
	.byte	W06
	.byte		        An1 , v064
	.byte	W06
@ 008   ----------------------------------------
	.byte	W01
	.byte		        Cn2 , v127
	.byte	W07
	.byte		        Cn2 , v064
	.byte	W07
	.byte		N09   , En2 , v127
	.byte	W09
	.byte		N06   , An1 
	.byte	W06
	.byte		        An1 , v064
	.byte	W07
	.byte		        Cs2 , v127
	.byte	W07
	.byte		        Cs2 , v064
	.byte	W07
	.byte		N09   , En2 , v127
	.byte	W09
	.byte		N06   , Fn1 
	.byte	W06
	.byte		        Fn1 , v064
	.byte	W07
	.byte		        An1 , v127
	.byte	W07
	.byte		        An1 , v064
	.byte	W07
	.byte		N09   , Dn2 , v127
	.byte	W09
@ 009   ----------------------------------------
	.byte		N06   , Gs1 
	.byte	W06
	.byte		        Gs1 , v064
	.byte	W07
	.byte		        Cn2 , v127
	.byte	W07
	.byte		        Cn2 , v064
	.byte	W07
	.byte		N09   , Ds2 , v127
	.byte	W09
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        Cn2 , v064
	.byte	W07
	.byte		        En2 , v127
	.byte	W07
	.byte		        En2 , v064
	.byte	W07
	.byte		N09   , Gn2 , v127
	.byte	W09
	.byte		N06   , Gn1 
	.byte	W06
	.byte		        Gn1 , v064
	.byte	W07
	.byte		        Bn1 , v127
	.byte	W07
	.byte		        Bn1 , v064
	.byte	W04
@ 010   ----------------------------------------
	.byte	W03
	.byte		N09   , Dn2 , v127
	.byte	W09
	.byte		        Cn2 
	.byte	W09
	.byte		VOICE , 3
	.byte		N04   
	.byte	W04
	.byte		VOICE , 0
	.byte		N09   , As1 
	.byte	W09
	.byte		VOICE , 3
	.byte		N09   
	.byte	W09
	.byte		VOICE , 0
	.byte		N09   , Cn2 
	.byte	W09
	.byte		VOICE , 3
	.byte		N09   
	.byte	W09
	.byte		VOICE , 4
	.byte		N04   , Gn1 , v092
	.byte	W05
	.byte		VOICE , 0
	.byte		N09   , As1 , v127
	.byte	W09
	.byte		VOICE , 3
	.byte		N09   
	.byte	W09
	.byte		VOICE , 0
	.byte		N09   , Cn2 
	.byte	W09
	.byte		VOICE , 3
	.byte		N04   
	.byte	W03
@ 011   ----------------------------------------
ch13_1_011:
	.byte	W01
	.byte		VOICE , 0
	.byte		N09   , As1 , v127
	.byte	W09
	.byte		VOICE , 3
	.byte		N09   
	.byte	W09
	.byte		VOICE , 0
	.byte		N09   , Cn2 
	.byte	W09
	.byte		VOICE , 3
	.byte		N09   
	.byte	W09
	.byte		VOICE , 4
	.byte		N04   , Gn1 , v092
	.byte	W05
	.byte		VOICE , 0
	.byte		N09   , As1 , v127
	.byte	W09
	.byte		VOICE , 3
	.byte		N09   
	.byte	W09
	.byte		VOICE , 0
	.byte		N09   , Cn2 
	.byte	W09
	.byte		VOICE , 3
	.byte		N04   
	.byte	W04
	.byte		VOICE , 0
	.byte		N09   , As1 
	.byte	W09
	.byte		VOICE , 3
	.byte		N09   
	.byte	W09
	.byte		VOICE , 0
	.byte		N09   , Cn2 
	.byte	W05
	.byte	PEND
@ 012   ----------------------------------------
ch13_1_012:
	.byte	W04
	.byte		VOICE , 3
	.byte		N09   , Cn2 , v127
	.byte	W09
	.byte		VOICE , 4
	.byte		N04   , Gn1 , v092
	.byte	W05
	.byte		VOICE , 0
	.byte		N09   , As1 , v127
	.byte	W09
	.byte		VOICE , 3
	.byte		N09   
	.byte	W09
	.byte		VOICE , 0
	.byte		N09   , Cn2 
	.byte	W09
	.byte		VOICE , 3
	.byte		N04   
	.byte	W04
	.byte		VOICE , 0
	.byte		N09   , As1 
	.byte	W09
	.byte		VOICE , 3
	.byte		N09   
	.byte	W09
	.byte		VOICE , 0
	.byte		N09   , Cn2 
	.byte	W09
	.byte		VOICE , 3
	.byte		N09   
	.byte	W09
	.byte		VOICE , 4
	.byte		N04   , Gn1 , v092
	.byte	W05
	.byte		VOICE , 0
	.byte		N09   , As1 , v127
	.byte	W06
	.byte	PEND
@ 013   ----------------------------------------
	.byte	W03
	.byte		VOICE , 3
	.byte		N09   
	.byte	W09
	.byte		VOICE , 0
	.byte		N09   , Cn2 
	.byte	W09
	.byte		VOICE , 3
	.byte		N04   
	.byte	W04
	.byte		VOICE , 0
	.byte		N09   , As1 
	.byte	W09
	.byte		VOICE , 3
	.byte		N09   
	.byte	W09
	.byte		VOICE , 0
	.byte		N09   , Cn2 
	.byte	W09
	.byte		VOICE , 3
	.byte		N09   
	.byte	W09
	.byte		VOICE , 4
	.byte		N04   , Gn1 , v092
	.byte	W05
	.byte		VOICE , 0
	.byte		N09   , As1 , v127
	.byte	W09
	.byte		VOICE , 3
	.byte		N09   
	.byte	W09
	.byte		VOICE , 0
	.byte		N09   , Cn2 
	.byte	W09
	.byte		VOICE , 3
	.byte		N04   
	.byte	W03
@ 014   ----------------------------------------
	.byte	PATT
	 .word	ch13_1_011
@ 015   ----------------------------------------
	.byte	PATT
	 .word	ch13_1_012
@ 016   ----------------------------------------
	.byte	W03
	.byte		VOICE , 3
	.byte		N09   , As1 , v127
	.byte	W09
	.byte		VOICE , 0
	.byte		N09   , Cn2 
	.byte	W09
	.byte		VOICE , 3
	.byte		N04   
	.byte	W04
	.byte		VOICE , 0
	.byte		N09   , As1 
	.byte	W09
	.byte		VOICE , 3
	.byte		N09   
	.byte	W09
	.byte		VOICE , 0
	.byte		N09   , Fn1 
	.byte	W09
	.byte		VOICE , 3
	.byte		N09   , Fn2 
	.byte	W09
	.byte		VOICE , 4
	.byte		N04   , Fn1 , v092
	.byte	W05
	.byte		VOICE , 0
	.byte		N09   , Fn1 , v127
	.byte	W09
	.byte		VOICE , 3
	.byte		N09   , Fn2 
	.byte	W09
	.byte		VOICE , 0
	.byte		N09   , Cn2 
	.byte	W09
	.byte		VOICE , 3
	.byte		N04   
	.byte	W03
@ 017   ----------------------------------------
	.byte	W01
	.byte		VOICE , 0
	.byte		N09   , As1 
	.byte	W09
	.byte		VOICE , 3
	.byte		N09   
	.byte	W09
	.byte		VOICE , 0
	.byte		N04   , Cn2 
	.byte	W05
	.byte		VOICE , 3
	.byte		N13   
	.byte	W13
	.byte		VOICE , 0
	.byte		N13   , Gn1 
	.byte	W14
	.byte		N09   , Cn2 
	.byte	W09
	.byte		N06   , En1 
	.byte	W06
	.byte		        En1 , v064
	.byte	W07
	.byte		        Gn1 , v127
	.byte	W07
	.byte		        Gn1 , v064
	.byte	W07
	.byte		N09   , Bn1 , v127
	.byte	W09
@ 018   ----------------------------------------
	.byte		N06   , An1 
	.byte	W06
	.byte		        An1 , v064
	.byte	W07
	.byte		        Cn2 , v127
	.byte	W07
	.byte		        Cn2 , v064
	.byte	W07
	.byte		N09   , En2 , v127
	.byte	W09
	.byte		N06   , An1 
	.byte	W06
	.byte		        An1 , v064
	.byte	W07
	.byte		        Cs2 , v127
	.byte	W07
	.byte		        Cs2 , v064
	.byte	W07
	.byte		N09   , En2 , v127
	.byte	W09
	.byte		N06   , Fn1 
	.byte	W06
	.byte		        Fn1 , v064
	.byte	W07
	.byte		        An1 , v127
	.byte	W07
	.byte		        An1 , v064
	.byte	W04
@ 019   ----------------------------------------
	.byte	W03
	.byte		N09   , Dn2 , v127
	.byte	W09
	.byte		N06   , Gs1 
	.byte	W06
	.byte		        Gs1 , v064
	.byte	W07
	.byte		        Cn2 , v127
	.byte	W07
	.byte		        Cn2 , v064
	.byte	W07
	.byte		N09   , Ds2 , v127
	.byte	W09
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        Cn2 , v064
	.byte	W07
	.byte		        En2 , v127
	.byte	W07
	.byte		        En2 , v064
	.byte	W07
	.byte		N09   , Gn2 , v127
	.byte	W09
	.byte		N06   , Gn1 
	.byte	W06
	.byte		        Gn1 , v064
	.byte	W06
@ 020   ----------------------------------------
	.byte	W01
	.byte		        Bn1 , v127
	.byte	W07
	.byte		        Bn1 , v064
	.byte	W07
	.byte		N09   , Dn2 , v127
	.byte	W09
	.byte		        Cn2 
	.byte	W09
	.byte		VOICE , 3
	.byte		N04   
	.byte	W04
	.byte		VOICE , 0
	.byte		N09   , As1 
	.byte	W09
	.byte		VOICE , 3
	.byte		N09   
	.byte	W09
	.byte		VOICE , 0
	.byte		N09   , Cn2 
	.byte	W09
	.byte		VOICE , 3
	.byte		N09   
	.byte	W09
	.byte		VOICE , 4
	.byte		N04   , Gn1 , v092
	.byte	W05
	.byte		VOICE , 0
	.byte		N09   , As1 , v127
	.byte	W09
	.byte		VOICE , 3
	.byte		N09   
	.byte	W09
@ 021   ----------------------------------------
	.byte		VOICE , 0
	.byte		N09   , Cn2 
	.byte	W09
	.byte		VOICE , 3
	.byte		N04   
	.byte	W04
	.byte		VOICE , 0
	.byte		N09   , As1 
	.byte	W09
	.byte		VOICE , 3
	.byte		N09   
	.byte	W09
	.byte		VOICE , 0
	.byte		N09   , Bn1 
	.byte	W09
	.byte		VOICE , 3
	.byte		N09   
	.byte	W09
	.byte		VOICE , 4
	.byte		N04   , Fs1 , v092
	.byte	W05
	.byte		VOICE , 0
	.byte		N09   , Fs1 , v127
	.byte	W09
	.byte		VOICE , 3
	.byte		N09   , Bn1 
	.byte	W09
	.byte		N06   , En2 
	.byte	W06
	.byte		N04   , En2 , v064
	.byte	W05
	.byte		VOICE , 2
	.byte		N04   , Gn1 
	.byte	W04
	.byte		        Gs1 
	.byte	W05
	.byte		        Bn1 
	.byte	W04
@ 022   ----------------------------------------
	.byte		        En2 
	.byte	W05
	.byte		N02   , Bn1 
	.byte	W02
	.byte		        Gs1 
	.byte	W02
	.byte		N04   , En1 
	.byte	W05
	.byte		        Dn2 
	.byte	W04
	.byte		N02   , An1 
	.byte	W03
	.byte		        Fs1 
	.byte	W02
	.byte		N04   , Dn1 
	.byte	W04
	.byte		        Bn0 
	.byte	W14
	.byte		N06   , Dn2 
	.byte	W07
	.byte		        En2 
	.byte	W06
	.byte		N02   , Fn2 
	.byte	W03
	.byte		N11   , Fs2 
	.byte	W11
	.byte		N02   , En2 
	.byte	W02
	.byte		        Dn2 
	.byte	W02
	.byte		N06   , En2 
	.byte	W07
	.byte		        Dn2 
	.byte	W07
	.byte		N04   , Bn1 
	.byte	W04
	.byte		        An1 
	.byte	W05
	.byte		        Gn1 
	.byte	W01
@ 023   ----------------------------------------
	.byte	W03
	.byte		        Fn1 
	.byte	W05
	.byte		N09   , Dn1 
	.byte	W18
	.byte		N02   , Bn1 
	.byte	W02
	.byte		        Cn2 
	.byte	W02
	.byte		N09   , Cs2 
	.byte	W09
	.byte		N04   , En2 
	.byte	W05
	.byte		N06   , An2 
	.byte	W07
	.byte		N04   , Bn2 
	.byte	W04
	.byte		VOICE , 6
	.byte		N24   , Cn2 , v096
	.byte	W24
	.byte	W01
	.byte		VOICE , 2
	.byte		N04   , Cs2 , v064
	.byte	W04
	.byte		        En2 
	.byte	W07
	.byte		        An2 
	.byte	W05
@ 024   ----------------------------------------
	.byte		VOICE , 6
	.byte		N15   , Cn2 , v096
	.byte	W15
	.byte		VOICE , 2
	.byte		N04   , En2 , v064
	.byte	W05
	.byte		N09   , An2 
	.byte	W09
	.byte		N04   , Bn2 
	.byte	W04
	.byte		        An2 
	.byte	W05
	.byte		N02   , Ds2 
	.byte	W02
	.byte		N11   , En2 
	.byte	W28
	.byte	W01
	.byte		N02   , Fn2 
	.byte	W03
	.byte		VOICE , 6
	.byte		N20   , Cn2 , v096
	.byte	W20
	.byte		VOICE , 2
	.byte		N04   , An2 , v064
	.byte	W04
@ 025   ----------------------------------------
	.byte		N09   , Fs2 
	.byte	W14
	.byte		N04   , Gs2 
	.byte	W04
	.byte		N09   , En2 
	.byte	W14
	.byte		N04   , Fs2 
	.byte	W04
	.byte		N09   , Dn2 
	.byte	W14
	.byte		N02   , Ds2 
	.byte	W02
	.byte		N06   , En2 
	.byte	W07
	.byte		N09   , En2 , v048
	.byte	W09
	.byte		N02   , Fn2 , v064
	.byte	W02
	.byte		        Gn2 
	.byte	W02
	.byte		N04   , Fn2 
	.byte	W05
	.byte		        En2 
	.byte	W04
	.byte		        Cn2 
	.byte	W05
	.byte		        An1 
	.byte	W04
	.byte		        As1 
	.byte	W05
	.byte		N13   , Bn1 
	.byte	W01
@ 026   ----------------------------------------
	.byte	W52
	.byte	W01
	.byte		N02   , Cs2 
	.byte	W02
	.byte		VOICE , 6
	.byte		N15   , Cn2 , v096
	.byte	W16
	.byte		VOICE , 2
	.byte		N02   , An1 , v064
	.byte	W04
	.byte		N04   , Bn1 
	.byte	W05
	.byte		N02   , En2 
	.byte	W04
	.byte		N04   , Gs1 
	.byte	W05
	.byte		N02   , Cs1 
	.byte	W04
	.byte		        En1 
	.byte	W03
@ 027   ----------------------------------------
	.byte		VOICE , 6
	.byte		N20   , Cn2 , v096
	.byte	W20
	.byte		VOICE , 2
	.byte		N02   , Fs1 , v064
	.byte	W02
	.byte		        Fn1 
	.byte	W02
	.byte		        En1 
	.byte	W03
	.byte		VOICE , 6
	.byte		N20   , Cn2 , v096
	.byte	W20
	.byte		VOICE , 2
	.byte		N02   , An1 , v064
	.byte	W02
	.byte		VOICE , 6
	.byte		N09   , Gn1 , v096
	.byte	W09
	.byte		VOICE , 0
	.byte		N13   , Fn1 , v127
	.byte	W14
	.byte		N06   , Gs1 
	.byte	W06
	.byte		        Gs1 , v064
	.byte	W07
	.byte		        Cn2 , v127
	.byte	W07
	.byte		        Cn2 , v064
	.byte	W04
@ 028   ----------------------------------------
ch13_1_028:
	.byte	W03
	.byte		N09   , Ds2 , v127
	.byte	W09
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        Cn2 , v064
	.byte	W07
	.byte		        En2 , v127
	.byte	W07
	.byte		        En2 , v064
	.byte	W07
	.byte		N09   , Gn2 , v127
	.byte	W09
	.byte		N06   , Gn1 
	.byte	W06
	.byte		        Gn1 , v064
	.byte	W07
	.byte		        Bn1 , v127
	.byte	W07
	.byte		        Bn1 , v064
	.byte	W07
	.byte		N09   , Dn2 , v127
	.byte	W09
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        Cn2 , v064
	.byte	W06
	.byte	PEND
@ 029   ----------------------------------------
ch13_1_029:
	.byte	W01
	.byte		N06   , En2 , v127
	.byte	W07
	.byte		        En2 , v064
	.byte	W07
	.byte		N09   , Cn2 , v127
	.byte	W09
	.byte		N06   , Gs1 
	.byte	W06
	.byte		        Gs1 , v064
	.byte	W07
	.byte		        Cn2 , v127
	.byte	W07
	.byte		        Cn2 , v064
	.byte	W07
	.byte		N09   , Ds2 , v127
	.byte	W09
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        Cn2 , v064
	.byte	W07
	.byte		        En2 , v127
	.byte	W07
	.byte		        En2 , v064
	.byte	W07
	.byte		N09   , Gn2 , v127
	.byte	W09
	.byte	PEND
@ 030   ----------------------------------------
	.byte		N06   , Gn1 
	.byte	W06
	.byte		        Gn1 , v064
	.byte	W07
	.byte		        Bn1 , v127
	.byte	W07
	.byte		        Bn1 , v064
	.byte	W07
	.byte		N09   , Dn2 , v127
	.byte	W09
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        Cn2 , v064
	.byte	W07
	.byte		        En2 , v127
	.byte	W07
	.byte		        En2 , v064
	.byte	W07
	.byte		N09   , Cn2 , v127
	.byte	W09
	.byte		N06   , Gs1 
	.byte	W06
	.byte		        Gs1 , v064
	.byte	W07
	.byte		        Cn2 , v127
	.byte	W07
	.byte		        Cn2 , v064
	.byte	W04
@ 031   ----------------------------------------
	.byte	PATT
	 .word	ch13_1_028
@ 032   ----------------------------------------
	.byte	PATT
	 .word	ch13_1_029
@ 033   ----------------------------------------
	.byte		N06   , Gn1 , v127
	.byte	W06
	.byte		        Gn1 , v064
	.byte	W07
	.byte		        Bn1 , v127
	.byte	W07
	.byte		        Bn1 , v064
	.byte	W07
	.byte		N09   , Dn2 , v127
	.byte	W09
	.byte		        Cn2 
	.byte	W09
	.byte		VOICE , 3
	.byte		N04   
	.byte	W04
	.byte		VOICE , 0
	.byte		N09   , As1 
	.byte	W09
	.byte		VOICE , 3
	.byte		N09   
	.byte	W09
	.byte		VOICE , 0
	.byte		N09   , Cn2 
	.byte	W09
	.byte		VOICE , 3
	.byte		N09   
	.byte	W09
	.byte		VOICE , 4
	.byte		N04   , Gn1 , v092
	.byte	W05
	.byte		VOICE , 0
	.byte		N09   , As1 , v127
	.byte	W06
@ 034   ----------------------------------------
	.byte	W03
	.byte		VOICE , 3
	.byte		N09   
	.byte	W09
	.byte		VOICE , 0
	.byte		N09   , Cn2 
	.byte	W09
	.byte		VOICE , 3
	.byte		N04   
	.byte	W04
	.byte		VOICE , 0
	.byte		N09   , As1 
	.byte	W09
	.byte		VOICE , 3
	.byte		N09   
	.byte	W09
	.byte		VOICE , 0
	.byte		N09   , Cn2 
	.byte	W09
	.byte		VOICE , 3
	.byte		N09   
	.byte	W09
	.byte		VOICE , 4
	.byte		N04   , Gn1 , v092
	.byte	W05
	.byte		VOICE , 0
	.byte		N09   , As1 , v127
	.byte	W09
	.byte		VOICE , 3
	.byte		N09   
	.byte	W21
	.byte	GOTO
	 .word	ch13_1_B1
ch13_1_B2:
@ 035   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

ch13_2:
	.byte		VOL   , 127*ch13_mvl/mxv
	.byte	KEYSH , ch13_key+0
ch13_2_B1:
@ 000   ----------------------------------------
ch13_2_000:
	.byte		VOICE , 16
	.byte		N09   , Cn2 , v104
	.byte	W09
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W04
	.byte		VOICE , 16
	.byte		N02   , As1 , v104
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W04
	.byte		VOICE , 16
	.byte		N09   , Cn2 , v104
	.byte	W09
	.byte		N04   
	.byte	W09
	.byte		N02   , As1 
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte		N04   , Gn1 
	.byte	W04
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W05
	.byte		VOICE , 16
	.byte		N09   , Cn2 , v104
	.byte	W09
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W04
	.byte		VOICE , 16
	.byte		N02   , As1 , v104
	.byte	W05
	.byte		N09   
	.byte	W06
	.byte	PEND
@ 001   ----------------------------------------
ch13_2_001:
	.byte	W03
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W04
	.byte		VOICE , 16
	.byte		N09   , Cn2 , v104
	.byte	W09
	.byte		N04   
	.byte	W09
	.byte		N02   , As1 
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte		N04   , Gn1 
	.byte	W04
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W05
	.byte		VOICE , 16
	.byte		N09   , Cn2 , v104
	.byte	W09
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W04
	.byte		VOICE , 16
	.byte		N02   , As1 , v104
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W04
	.byte		VOICE , 16
	.byte		N09   , Cn2 , v104
	.byte	W09
	.byte		N04   
	.byte	W08
	.byte	PEND
@ 002   ----------------------------------------
ch13_2_002:
	.byte	W01
	.byte		N02   , As1 , v104
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte		N04   , Gn1 
	.byte	W04
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W05
	.byte		VOICE , 16
	.byte		N09   , Cn2 , v104
	.byte	W09
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W04
	.byte		VOICE , 16
	.byte		N02   , As1 , v104
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W04
	.byte		VOICE , 16
	.byte		N09   , Cn2 , v104
	.byte	W09
	.byte		N04   
	.byte	W09
	.byte		N02   , As1 
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte		N04   , Gn1 
	.byte	W04
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W05
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	ch13_2_000
@ 004   ----------------------------------------
	.byte	PATT
	 .word	ch13_2_001
@ 005   ----------------------------------------
	.byte	PATT
	 .word	ch13_2_002
@ 006   ----------------------------------------
	.byte		VOICE , 16
	.byte		N09   , Cn2 , v104
	.byte	W09
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W04
	.byte		VOICE , 16
	.byte		N02   , As1 , v104
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W04
	.byte		VOICE , 16
	.byte		N09   , Fn1 , v104
	.byte	W09
	.byte		N04   
	.byte	W09
	.byte		N02   , Cn2 
	.byte	W05
	.byte		N09   , Fn2 
	.byte	W09
	.byte		N04   , Cn2 
	.byte	W04
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W05
	.byte		VOICE , 16
	.byte		N09   , Cn2 , v104
	.byte	W09
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W04
	.byte		VOICE , 16
	.byte		N02   , As1 , v104
	.byte	W05
	.byte		N09   
	.byte	W06
@ 007   ----------------------------------------
	.byte	W03
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W04
	.byte		VOICE , 16
	.byte		N04   , Cn2 , v104
	.byte	W05
	.byte		N09   , Cn1 
	.byte	W13
	.byte		N02   , Gn1 
	.byte	W05
	.byte		N09   , Cn2 
	.byte	W09
	.byte		        Dn2 
	.byte	W09
	.byte		        En1 
	.byte	W09
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W04
	.byte		VOICE , 16
	.byte		N02   , Gn1 , v104
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W04
	.byte		VOICE , 16
	.byte		N09   , An1 , v104
	.byte	W09
	.byte		N04   
	.byte	W08
@ 008   ----------------------------------------
	.byte	W01
	.byte		N02   , Cn2 
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte		N04   , En1 
	.byte	W04
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W05
	.byte		VOICE , 16
	.byte		N09   , An1 , v104
	.byte	W09
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W04
	.byte		VOICE , 16
	.byte		N02   , Cs2 , v104
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W04
	.byte		VOICE , 16
	.byte		N09   , Fn1 , v104
	.byte	W09
	.byte		N04   
	.byte	W09
	.byte		N02   , An1 
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte		N04   , Dn2 
	.byte	W04
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W05
@ 009   ----------------------------------------
	.byte		VOICE , 16
	.byte		N09   , Gs1 , v104
	.byte	W09
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W04
	.byte		VOICE , 16
	.byte		N02   , Cn2 , v104
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W04
	.byte		VOICE , 16
	.byte		N09   , Cn2 , v104
	.byte	W09
	.byte		N04   
	.byte	W09
	.byte		N02   , En2 
	.byte	W05
	.byte		N04   
	.byte	W09
	.byte		        Gn1 
	.byte	W04
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W05
	.byte		VOICE , 16
	.byte		N09   , Gn1 , v104
	.byte	W09
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W04
	.byte		VOICE , 16
	.byte		N02   , Bn1 , v104
	.byte	W05
	.byte		N09   
	.byte	W06
@ 010   ----------------------------------------
	.byte	W03
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W04
	.byte		VOICE , 16
	.byte		N04   , Cn2 , v104
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W04
	.byte		VOICE , 16
	.byte		N02   , As1 , v104
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W04
	.byte		VOICE , 16
	.byte		N09   , Cn2 , v104
	.byte	W09
	.byte		N04   
	.byte	W09
	.byte		N02   , As1 
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte		N04   , Gn1 
	.byte	W04
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W05
	.byte		VOICE , 16
	.byte		N09   , Cn2 , v104
	.byte	W09
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W03
@ 011   ----------------------------------------
ch13_2_011:
	.byte	W01
	.byte		VOICE , 16
	.byte		N02   , As1 , v104
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W04
	.byte		VOICE , 16
	.byte		N09   , Cn2 , v104
	.byte	W09
	.byte		N04   
	.byte	W09
	.byte		N02   , As1 
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte		N04   , Gn1 
	.byte	W04
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W05
	.byte		VOICE , 16
	.byte		N09   , Cn2 , v104
	.byte	W09
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W04
	.byte		VOICE , 16
	.byte		N02   , As1 , v104
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W04
	.byte		VOICE , 16
	.byte		N09   , Cn2 , v104
	.byte	W05
	.byte	PEND
@ 012   ----------------------------------------
ch13_2_012:
	.byte	W04
	.byte		N04   , Cn2 , v104
	.byte	W09
	.byte		N02   , As1 
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte		N04   , Gn1 
	.byte	W04
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W05
	.byte		VOICE , 16
	.byte		N09   , Cn2 , v104
	.byte	W09
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W04
	.byte		VOICE , 16
	.byte		N02   , As1 , v104
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W04
	.byte		VOICE , 16
	.byte		N09   , Cn2 , v104
	.byte	W09
	.byte		N04   
	.byte	W09
	.byte		N02   , As1 
	.byte	W05
	.byte		N09   
	.byte	W06
	.byte	PEND
@ 013   ----------------------------------------
	.byte	W03
	.byte		N04   , Gn1 
	.byte	W04
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W05
	.byte		VOICE , 16
	.byte		N09   , Cn2 , v104
	.byte	W09
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W04
	.byte		VOICE , 16
	.byte		N02   , As1 , v104
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W04
	.byte		VOICE , 16
	.byte		N09   , Cn2 , v104
	.byte	W09
	.byte		N04   
	.byte	W09
	.byte		N02   , As1 
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte		N04   , Gn1 
	.byte	W04
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W05
	.byte		VOICE , 16
	.byte		N09   , Cn2 , v104
	.byte	W09
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W03
@ 014   ----------------------------------------
	.byte	PATT
	 .word	ch13_2_011
@ 015   ----------------------------------------
	.byte	PATT
	 .word	ch13_2_012
@ 016   ----------------------------------------
	.byte	W03
	.byte		N04   , Gn1 , v104
	.byte	W04
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W05
	.byte		VOICE , 16
	.byte		N09   , Cn2 , v104
	.byte	W09
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W04
	.byte		VOICE , 16
	.byte		N02   , As1 , v104
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W04
	.byte		VOICE , 16
	.byte		N09   , Fn1 , v104
	.byte	W09
	.byte		N04   
	.byte	W09
	.byte		N02   , Cn2 
	.byte	W05
	.byte		N09   , Fn2 
	.byte	W09
	.byte		N04   , Cn2 
	.byte	W04
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W05
	.byte		VOICE , 16
	.byte		N09   , Cn2 , v104
	.byte	W09
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W03
@ 017   ----------------------------------------
	.byte	W01
	.byte		VOICE , 16
	.byte		N02   , As1 , v104
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W04
	.byte		VOICE , 16
	.byte		N04   , Cn2 , v104
	.byte	W05
	.byte		N09   , Cn1 
	.byte	W13
	.byte		N02   , Gn1 
	.byte	W05
	.byte		N09   , Cn2 
	.byte	W09
	.byte		        Dn2 
	.byte	W09
	.byte		        En1 
	.byte	W09
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W04
	.byte		VOICE , 16
	.byte		N02   , Gn1 , v104
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W04
	.byte		VOICE , 16
	.byte		N09   , An1 , v104
	.byte	W05
@ 018   ----------------------------------------
	.byte	W04
	.byte		N04   
	.byte	W09
	.byte		N02   , Cn2 
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte		N04   , En1 
	.byte	W04
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W05
	.byte		VOICE , 16
	.byte		N09   , An1 , v104
	.byte	W09
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W04
	.byte		VOICE , 16
	.byte		N02   , Cs2 , v104
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W04
	.byte		VOICE , 16
	.byte		N09   , Fn1 , v104
	.byte	W09
	.byte		N04   
	.byte	W09
	.byte		N02   , An1 
	.byte	W05
	.byte		N09   
	.byte	W06
@ 019   ----------------------------------------
	.byte	W03
	.byte		N04   , Dn2 
	.byte	W04
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W05
	.byte		VOICE , 16
	.byte		N09   , Gs1 , v104
	.byte	W09
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W04
	.byte		VOICE , 16
	.byte		N02   , Cn2 , v104
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W04
	.byte		VOICE , 16
	.byte		N09   , Cn2 , v104
	.byte	W09
	.byte		N04   
	.byte	W09
	.byte		N02   , En2 
	.byte	W05
	.byte		N04   
	.byte	W09
	.byte		        Gn1 
	.byte	W04
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W05
	.byte		VOICE , 16
	.byte		N09   , Gn1 , v104
	.byte	W09
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W03
@ 020   ----------------------------------------
	.byte	W01
	.byte		VOICE , 16
	.byte		N02   , Bn1 , v104
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W04
	.byte		VOICE , 16
	.byte		N04   , Cn2 , v104
	.byte	W05
	.byte		VOICE , 6
	.byte		N60   , Cn2 , v096
	.byte	W60
	.byte	W03
	.byte		VOICE , 16
	.byte		N04   , Cn3 , v104
	.byte	W04
	.byte		        Gn2 
	.byte	W05
@ 021   ----------------------------------------
	.byte		N09   , Cn2 
	.byte	W09
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W04
	.byte		VOICE , 16
	.byte		N02   , As1 , v104
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W04
	.byte		VOICE , 16
	.byte		N09   , Bn1 , v104
	.byte	W09
	.byte		N04   
	.byte	W09
	.byte		N02   , Fs1 
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte		N04   , Bn1 
	.byte	W04
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W05
	.byte		VOICE , 16
	.byte		N09   , En1 , v104
	.byte	W09
	.byte		        Gs1 
	.byte	W09
	.byte		        Bn1 
	.byte	W06
@ 022   ----------------------------------------
ch13_2_022:
	.byte	W03
	.byte		N09   , Cs2 , v104
	.byte	W09
	.byte		        En2 
	.byte	W09
	.byte		        Cs2 
	.byte	W09
	.byte		        Bn1 
	.byte	W09
	.byte		        Fs1 
	.byte	W09
	.byte		        Gn1 
	.byte	W09
	.byte		        Bn1 
	.byte	W09
	.byte		        Dn2 
	.byte	W09
	.byte		        En2 
	.byte	W09
	.byte		        Dn2 
	.byte	W09
	.byte		        Gn1 
	.byte	W03
	.byte	PEND
@ 023   ----------------------------------------
ch13_2_023:
	.byte	W06
	.byte		N06   , Dn1 , v104
	.byte	W06
	.byte		        Gn1 
	.byte	W07
	.byte		N04   , Gs1 
	.byte	W05
	.byte		N09   , An1 
	.byte	W09
	.byte		        Cs2 
	.byte	W09
	.byte		        En2 
	.byte	W09
	.byte		N06   , Cs2 
	.byte	W06
	.byte		N02   , En2 
	.byte	W03
	.byte		N09   , Bn2 
	.byte	W09
	.byte		        An2 
	.byte	W09
	.byte		        En2 
	.byte	W09
	.byte		N04   , Cn2 
	.byte	W04
	.byte		        An1 
	.byte	W05
	.byte	PEND
@ 024   ----------------------------------------
	.byte		N09   , Fn1 
	.byte	W09
	.byte		        An1 
	.byte	W09
	.byte		        Cn2 
	.byte	W09
	.byte		        Fn2 
	.byte	W09
	.byte		        Gn2 
	.byte	W09
	.byte		        Fn2 
	.byte	W09
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W07
	.byte		N04   , Dn2 
	.byte	W05
	.byte		N09   , En1 
	.byte	W09
	.byte		        Gs1 
	.byte	W09
	.byte		        Bn1 
	.byte	W06
@ 025   ----------------------------------------
	.byte	PATT
	 .word	ch13_2_022
@ 026   ----------------------------------------
	.byte	PATT
	 .word	ch13_2_023
@ 027   ----------------------------------------
	.byte		N09   , Fn1 , v104
	.byte	W09
	.byte		        An1 
	.byte	W09
	.byte		        Cn2 
	.byte	W09
	.byte		        Fn2 
	.byte	W09
	.byte		        Gn2 
	.byte	W09
	.byte		        Fn2 
	.byte	W09
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W07
	.byte		N04   , Dn2 
	.byte	W05
	.byte		N09   , Gs1 
	.byte	W09
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W04
	.byte		VOICE , 16
	.byte		N02   , Cn2 , v104
	.byte	W05
	.byte		N09   
	.byte	W06
@ 028   ----------------------------------------
ch13_2_028:
	.byte	W03
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W04
	.byte		VOICE , 16
	.byte		N09   , Cn2 , v104
	.byte	W09
	.byte		N04   
	.byte	W09
	.byte		N02   , En2 
	.byte	W05
	.byte		N04   
	.byte	W09
	.byte		        Gn1 
	.byte	W04
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W05
	.byte		VOICE , 16
	.byte		N09   , Gn1 , v104
	.byte	W09
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W04
	.byte		VOICE , 16
	.byte		N02   , Bn1 , v104
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W04
	.byte		VOICE , 16
	.byte		N09   , Cn2 , v104
	.byte	W09
	.byte		N04   
	.byte	W08
	.byte	PEND
@ 029   ----------------------------------------
	.byte	W01
	.byte		N02   , En2 
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte		N04   , Cn2 
	.byte	W04
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W05
	.byte		VOICE , 16
	.byte		N09   , Gs1 , v104
	.byte	W09
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W04
	.byte		VOICE , 16
	.byte		N02   , Cn2 , v104
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W04
	.byte		VOICE , 16
	.byte		N09   , Cn2 , v104
	.byte	W09
	.byte		N04   
	.byte	W09
	.byte		N02   , En2 
	.byte	W05
	.byte		N04   
	.byte	W09
	.byte		        Gn1 
	.byte	W04
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W05
@ 030   ----------------------------------------
	.byte		VOICE , 16
	.byte		N09   , Gn1 , v104
	.byte	W09
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W04
	.byte		VOICE , 16
	.byte		N02   , Bn1 , v104
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W04
	.byte		VOICE , 16
	.byte		N09   , Cn2 , v104
	.byte	W09
	.byte		N04   
	.byte	W09
	.byte		N02   , En2 
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte		N04   , Cn2 
	.byte	W04
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W05
	.byte		VOICE , 16
	.byte		N09   , Gs1 , v104
	.byte	W09
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W04
	.byte		VOICE , 16
	.byte		N02   , Cn2 , v104
	.byte	W05
	.byte		N09   
	.byte	W06
@ 031   ----------------------------------------
	.byte	PATT
	 .word	ch13_2_028
@ 032   ----------------------------------------
	.byte	W01
	.byte		N02   , En2 , v104
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte		N04   , Cn2 
	.byte	W04
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W05
	.byte		VOICE , 16
	.byte		N09   , Gs1 , v104
	.byte	W09
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W04
	.byte		VOICE , 16
	.byte		N02   , Cn2 , v104
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W04
	.byte		VOICE , 16
	.byte		N04   , Cn2 , v104
	.byte	W05
	.byte		VOICE , 6
	.byte		N09   , Cn2 , v096
	.byte	W09
	.byte		VOICE , 16
	.byte		N02   , Cn2 , v104
	.byte	W04
	.byte		        En2 
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte		N04   , Gn1 
	.byte	W04
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W05
@ 033   ----------------------------------------
	.byte		VOICE , 16
	.byte		N09   , Gn1 , v104
	.byte	W09
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W04
	.byte		VOICE , 16
	.byte		N02   , Bn1 , v104
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W04
	.byte		VOICE , 16
	.byte		N04   , Cn2 , v104
	.byte	W05
	.byte		VOICE , 6
	.byte		N60   , Cn2 , v096
	.byte	W60
@ 034   ----------------------------------------
	.byte	W03
	.byte		VOICE , 16
	.byte		N04   , Cn3 , v104
	.byte	W04
	.byte		        Gn2 
	.byte	W05
	.byte		N09   , Cn2 
	.byte	W09
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W04
	.byte		VOICE , 16
	.byte		N02   , As1 , v104
	.byte	W05
	.byte		N09   
	.byte	W09
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W04
	.byte		VOICE , 16
	.byte		N09   , Cn2 , v104
	.byte	W09
	.byte		N04   
	.byte	W09
	.byte		N02   , As1 
	.byte	W05
	.byte		N04   
	.byte	W09
	.byte		        Gn1 
	.byte	W04
	.byte		VOICE , 14
	.byte		N04   , Cn2 , v100
	.byte	W17
	.byte	GOTO
	 .word	ch13_2_B1
ch13_2_B2:
@ 035   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

ch13_3:
	.byte		VOL   , 127*ch13_mvl/mxv
	.byte	KEYSH , ch13_key+0
ch13_3_B1:
@ 000   ----------------------------------------
ch13_3_000:
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W04
	.byte		VOICE , 13
	.byte		N04   , Cn2 , v127
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 12
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		N02   , Cn2 , v080
	.byte	W02
	.byte		VOICE , 8
	.byte		N02   , Cn2 , v072
	.byte	W03
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W04
	.byte		VOICE , 13
	.byte		N04   , Cn2 , v127
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 12
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 8
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W04
	.byte		VOICE , 13
	.byte		N04   , Cn2 , v127
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W02
	.byte	PEND
@ 001   ----------------------------------------
ch13_3_001:
	.byte	W03
	.byte		VOICE , 12
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		N02   , Cn2 , v080
	.byte	W02
	.byte		VOICE , 8
	.byte		N02   , Cn2 , v072
	.byte	W03
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W04
	.byte		VOICE , 13
	.byte		N04   , Cn2 , v127
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 12
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 8
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W04
	.byte		VOICE , 13
	.byte		N04   , Cn2 , v127
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 12
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		N02   , Cn2 , v080
	.byte	W02
	.byte		VOICE , 8
	.byte		N02   , Cn2 , v072
	.byte	W03
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W03
	.byte	PEND
@ 002   ----------------------------------------
ch13_3_002:
	.byte	W01
	.byte		VOICE , 13
	.byte		N04   , Cn2 , v127
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 12
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 8
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W04
	.byte		VOICE , 13
	.byte		N04   , Cn2 , v127
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 12
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		N02   , Cn2 , v080
	.byte	W02
	.byte		VOICE , 8
	.byte		N02   , Cn2 , v072
	.byte	W03
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W04
	.byte		VOICE , 13
	.byte		N04   , Cn2 , v127
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 12
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 8
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	ch13_3_000
@ 004   ----------------------------------------
	.byte	PATT
	 .word	ch13_3_001
@ 005   ----------------------------------------
	.byte	PATT
	 .word	ch13_3_002
@ 006   ----------------------------------------
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W04
	.byte		VOICE , 8
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W04
	.byte		VOICE , 8
	.byte		N02   , Cn2 , v056
	.byte	W02
	.byte		        Cn2 , v072
	.byte	W03
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W04
	.byte		VOICE , 8
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W04
	.byte		VOICE , 8
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W04
	.byte		VOICE , 8
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W02
@ 007   ----------------------------------------
	.byte	W03
	.byte		        Cn2 , v052
	.byte	W04
	.byte		VOICE , 8
	.byte		N02   , Cn2 , v056
	.byte	W02
	.byte		        Cn2 , v072
	.byte	W03
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 9
	.byte		N02   , Cn2 , v096
	.byte	W02
	.byte		VOICE , 13
	.byte		N02   , Cn2 , v080
	.byte	W03
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 12
	.byte		N04   
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   
	.byte	W04
	.byte		VOICE , 12
	.byte		N04   
	.byte	W05
	.byte		VOICE , 13
	.byte		N04   
	.byte	W04
	.byte		VOICE , 8
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W04
	.byte		VOICE , 13
	.byte		N04   , Cn2 , v127
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 12
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		N02   , Cn2 , v080
	.byte	W02
	.byte		VOICE , 8
	.byte		N02   , Cn2 , v072
	.byte	W03
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W03
@ 008   ----------------------------------------
	.byte	PATT
	 .word	ch13_3_002
@ 009   ----------------------------------------
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W04
	.byte		VOICE , 13
	.byte		N04   , Cn2 , v127
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 12
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		N02   , Cn2 , v080
	.byte	W02
	.byte		VOICE , 8
	.byte		N02   , Cn2 , v072
	.byte	W03
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W04
	.byte		VOICE , 13
	.byte		N04   , Cn2 , v127
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 12
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 8
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W04
	.byte		VOICE , 13
	.byte		N04   , Cn2 , v127
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   
	.byte	W04
	.byte		VOICE , 12
	.byte		N04   
	.byte	W02
@ 010   ----------------------------------------
	.byte	W03
	.byte		        Gn1 
	.byte	W04
	.byte		N02   , Gn1 , v080
	.byte	W02
	.byte		VOICE , 8
	.byte		N02   , Cn2 , v072
	.byte	W03
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W04
	.byte		VOICE , 13
	.byte		N04   , Cn2 , v127
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 12
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		N02   , Cn2 , v080
	.byte	W02
	.byte		VOICE , 8
	.byte		N02   , Cn2 , v072
	.byte	W03
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W04
	.byte		VOICE , 13
	.byte		N04   , Cn2 , v127
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 12
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 8
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W03
@ 011   ----------------------------------------
ch13_3_011:
	.byte	W01
	.byte		VOICE , 13
	.byte		N04   , Cn2 , v127
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 12
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		N02   , Cn2 , v080
	.byte	W02
	.byte		VOICE , 8
	.byte		N02   , Cn2 , v072
	.byte	W03
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W04
	.byte		VOICE , 13
	.byte		N04   , Cn2 , v127
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 12
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 8
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W04
	.byte		VOICE , 13
	.byte		N04   , Cn2 , v127
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 12
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		N02   , Cn2 , v080
	.byte	W02
	.byte		VOICE , 8
	.byte		N02   , Cn2 , v072
	.byte	W03
	.byte	PEND
@ 012   ----------------------------------------
ch13_3_012:
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W04
	.byte		VOICE , 13
	.byte		N04   , Cn2 , v127
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 12
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 8
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W04
	.byte		VOICE , 13
	.byte		N04   , Cn2 , v127
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 12
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		N02   , Cn2 , v080
	.byte	W02
	.byte		VOICE , 8
	.byte		N02   , Cn2 , v072
	.byte	W03
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W04
	.byte		VOICE , 13
	.byte		N04   , Cn2 , v127
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W02
	.byte	PEND
@ 013   ----------------------------------------
ch13_3_013:
	.byte	W03
	.byte		VOICE , 12
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 8
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W04
	.byte		VOICE , 13
	.byte		N04   , Cn2 , v127
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 12
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		N02   , Cn2 , v080
	.byte	W02
	.byte		VOICE , 8
	.byte		N02   , Cn2 , v072
	.byte	W03
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W04
	.byte		VOICE , 13
	.byte		N04   , Cn2 , v127
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 12
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 8
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W03
	.byte	PEND
@ 014   ----------------------------------------
	.byte	PATT
	 .word	ch13_3_011
@ 015   ----------------------------------------
	.byte	PATT
	 .word	ch13_3_012
@ 016   ----------------------------------------
	.byte	W03
	.byte		VOICE , 12
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 8
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W04
	.byte		VOICE , 8
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W04
	.byte		VOICE , 8
	.byte		N02   , Cn2 , v056
	.byte	W02
	.byte		        Cn2 , v072
	.byte	W03
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W04
	.byte		VOICE , 8
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W04
	.byte		VOICE , 8
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W03
@ 017   ----------------------------------------
	.byte	W01
	.byte		VOICE , 8
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W04
	.byte		VOICE , 8
	.byte		N02   , Cn2 , v056
	.byte	W02
	.byte		        Cn2 , v072
	.byte	W03
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 9
	.byte		N02   , Cn2 , v096
	.byte	W02
	.byte		VOICE , 13
	.byte		N02   , Cn2 , v080
	.byte	W03
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 12
	.byte		N04   
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   
	.byte	W04
	.byte		VOICE , 12
	.byte		N04   
	.byte	W05
	.byte		VOICE , 13
	.byte		N04   
	.byte	W04
	.byte		VOICE , 8
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W04
	.byte		VOICE , 13
	.byte		N04   , Cn2 , v127
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 12
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		N02   , Cn2 , v080
	.byte	W02
	.byte		VOICE , 8
	.byte		N02   , Cn2 , v072
	.byte	W03
@ 018   ----------------------------------------
	.byte	PATT
	 .word	ch13_3_012
@ 019   ----------------------------------------
	.byte	PATT
	 .word	ch13_3_013
@ 020   ----------------------------------------
	.byte	W01
	.byte		VOICE , 13
	.byte		N04   , Cn2 , v127
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   
	.byte	W04
	.byte		VOICE , 12
	.byte		N04   
	.byte	W05
	.byte		        Gn1 
	.byte	W04
	.byte		N02   , Gn1 , v080
	.byte	W02
	.byte		VOICE , 8
	.byte		N02   , Cn2 , v072
	.byte	W03
	.byte		VOICE , 24
	.byte		N56   , Cn2 , v127
	.byte	W56
	.byte	W02
	.byte		N04   
	.byte	W05
	.byte		N04   
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v064
	.byte	W05
@ 021   ----------------------------------------
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W04
	.byte		VOICE , 8
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W04
	.byte		VOICE , 8
	.byte		N02   , Cn2 , v056
	.byte	W02
	.byte		        Cn2 , v072
	.byte	W03
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W04
	.byte		VOICE , 8
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W04
	.byte		VOICE , 8
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W04
	.byte		VOICE , 5
	.byte		N04   , Cn2 , v127
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W02
@ 022   ----------------------------------------
ch13_3_022:
	.byte	W03
	.byte		N04   , Cn2 , v052
	.byte	W04
	.byte		VOICE , 8
	.byte		N02   , Cn2 , v056
	.byte	W02
	.byte		        Cn2 , v072
	.byte	W03
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W04
	.byte		VOICE , 8
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 5
	.byte		N04   
	.byte	W05
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v052
	.byte	W04
	.byte		VOICE , 5
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W04
	.byte		VOICE , 8
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W04
	.byte		VOICE , 8
	.byte		N02   , Cn2 , v056
	.byte	W02
	.byte		        Cn2 , v072
	.byte	W03
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W03
	.byte	PEND
@ 023   ----------------------------------------
	.byte	W01
	.byte		VOICE , 5
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W04
	.byte		VOICE , 5
	.byte		N04   , Cn2 , v127
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W04
	.byte		VOICE , 8
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 5
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v127
	.byte	W04
	.byte		VOICE , 24
	.byte		N04   
	.byte	W05
	.byte		VOICE , 8
	.byte		N04   
	.byte	W04
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v052
	.byte	W04
	.byte		VOICE , 8
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W04
	.byte		VOICE , 5
	.byte		N04   , Cn2 , v096
	.byte	W05
@ 024   ----------------------------------------
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W04
	.byte		VOICE , 8
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W04
	.byte		VOICE , 8
	.byte		N02   , Cn2 , v056
	.byte	W02
	.byte		        Cn2 , v072
	.byte	W03
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W04
	.byte		VOICE , 5
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W04
	.byte		VOICE , 5
	.byte		N04   , Cn2 , v127
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W04
	.byte		VOICE , 5
	.byte		N04   , Cn2 , v127
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W02
@ 025   ----------------------------------------
	.byte	PATT
	 .word	ch13_3_022
@ 026   ----------------------------------------
	.byte	W01
	.byte		VOICE , 5
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 5
	.byte		N04   , Cn2 , v072
	.byte	W05
	.byte		        Cn2 , v127
	.byte	W04
	.byte		VOICE , 24
	.byte		N04   
	.byte	W05
	.byte		VOICE , 8
	.byte		N04   
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W04
	.byte		VOICE , 8
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 5
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v127
	.byte	W04
	.byte		VOICE , 24
	.byte		N04   
	.byte	W05
	.byte		VOICE , 8
	.byte		N04   
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W04
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v127
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W04
	.byte		VOICE , 5
	.byte		N04   , Cn2 , v096
	.byte	W05
@ 027   ----------------------------------------
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W04
	.byte		VOICE , 5
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 5
	.byte		N04   
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   
	.byte	W04
	.byte		VOICE , 8
	.byte		N02   , Cn2 , v056
	.byte	W02
	.byte		        Cn2 , v072
	.byte	W03
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 5
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v127
	.byte	W04
	.byte		VOICE , 24
	.byte		N04   
	.byte	W05
	.byte		VOICE , 8
	.byte		N04   
	.byte	W04
	.byte		VOICE , 5
	.byte		N02   , Cn2 , v072
	.byte	W02
	.byte		        Cn2 , v104
	.byte	W03
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		        Cn2 , v104
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W04
	.byte		VOICE , 13
	.byte		N04   , Cn2 , v127
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W02
@ 028   ----------------------------------------
	.byte	PATT
	 .word	ch13_3_001
@ 029   ----------------------------------------
	.byte	PATT
	 .word	ch13_3_002
@ 030   ----------------------------------------
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W04
	.byte		VOICE , 13
	.byte		N04   , Cn2 , v127
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 12
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		N02   , Cn2 , v080
	.byte	W02
	.byte		VOICE , 8
	.byte		N02   , Cn2 , v072
	.byte	W03
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W04
	.byte		VOICE , 13
	.byte		N04   , Cn2 , v127
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 5
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 8
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W04
	.byte		VOICE , 13
	.byte		N04   , Cn2 , v127
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W02
@ 031   ----------------------------------------
	.byte	W03
	.byte		VOICE , 12
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		N02   , Cn2 , v080
	.byte	W02
	.byte		VOICE , 8
	.byte		N02   , Cn2 , v072
	.byte	W03
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W04
	.byte		VOICE , 13
	.byte		N04   , Cn2 , v127
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 12
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 8
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W04
	.byte		VOICE , 13
	.byte		N04   , Cn2 , v127
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   
	.byte	W04
	.byte		VOICE , 5
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v127
	.byte	W04
	.byte		VOICE , 24
	.byte		N04   
	.byte	W05
	.byte		VOICE , 8
	.byte		N04   
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W03
@ 032   ----------------------------------------
	.byte	W01
	.byte		VOICE , 13
	.byte		N04   , Cn2 , v127
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 5
	.byte		N02   , Cn2 , v064
	.byte	W02
	.byte		        Cn2 , v104
	.byte	W02
	.byte		N04   , Cn2 , v127
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   
	.byte	W04
	.byte		VOICE , 5
	.byte		N04   , Cn2 , v072
	.byte	W05
	.byte		        Cn2 , v127
	.byte	W04
	.byte		VOICE , 24
	.byte		N04   
	.byte	W05
	.byte		VOICE , 8
	.byte		N04   
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 12
	.byte		N02   , Cn2 , v080
	.byte	W02
	.byte		VOICE , 8
	.byte		N02   , Cn2 , v072
	.byte	W03
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W04
	.byte		VOICE , 13
	.byte		N04   , Cn2 , v127
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 5
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 8
	.byte		N04   , Cn2 , v096
	.byte	W05
@ 033   ----------------------------------------
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W04
	.byte		VOICE , 13
	.byte		N04   , Cn2 , v127
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 5
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		N02   , Cn2 , v072
	.byte	W02
	.byte		VOICE , 8
	.byte		N02   
	.byte	W03
	.byte		VOICE , 24
	.byte		N56   , Cn2 , v127
	.byte	W56
	.byte	W02
	.byte		VOICE , 8
	.byte		N04   , Cn2 , v072
	.byte	W02
@ 034   ----------------------------------------
	.byte	W03
	.byte		        Cn2 , v127
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v064
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W04
	.byte		VOICE , 13
	.byte		N04   , Cn2 , v127
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 12
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		N02   , Cn2 , v080
	.byte	W02
	.byte		VOICE , 8
	.byte		N02   , Cn2 , v072
	.byte	W03
	.byte		VOICE , 24
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v052
	.byte	W04
	.byte		VOICE , 13
	.byte		N04   , Cn2 , v127
	.byte	W05
	.byte		VOICE , 24
	.byte		N04   
	.byte	W04
	.byte		VOICE , 9
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		VOICE , 12
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 8
	.byte		N04   , Cn2 , v096
	.byte	W17
	.byte	GOTO
	 .word	ch13_3_B1
ch13_3_B2:
@ 035   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

ch13_4:
	.byte		VOL   , 127*ch13_mvl/mxv
	.byte	KEYSH , ch13_key+0
ch13_4_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte	W30
	.byte	W01
	.byte		        18
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		        Cn2 , v127
	.byte	W04
	.byte		VOICE , 17
	.byte		N09   
	.byte	W09
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		N54   , Cn2 , v127
	.byte	W42
@ 001   ----------------------------------------
	.byte	W12
	.byte		N04   
	.byte	W04
	.byte		N09   , Cn2 , v096
	.byte	W09
	.byte		VOICE , 18
	.byte		N09   , Cn2 , v127
	.byte	W09
	.byte		N04   
	.byte	W05
	.byte		VOICE , 1
	.byte		N09   , An2 
	.byte	W09
	.byte		N04   , As2 
	.byte	W04
	.byte		        An2 
	.byte	W05
	.byte		N30   , As2 
	.byte	W30
	.byte	W01
	.byte		N04   , An2 
	.byte	W05
	.byte		        As2 
	.byte	W03
@ 002   ----------------------------------------
	.byte	W01
	.byte		        Cn3 
	.byte	W05
	.byte		N09   , Dn3 
	.byte	W09
	.byte		N04   , Cn3 
	.byte	W04
	.byte		        As2 
	.byte	W05
	.byte		        An2 
	.byte	W04
	.byte		        As2 
	.byte	W05
	.byte		        An2 
	.byte	W04
	.byte		N24   , Gn2 
	.byte	W24
	.byte	W03
	.byte		N09   , Fn2 
	.byte	W09
	.byte		N04   , Gn2 
	.byte	W05
	.byte		N09   , An2 
	.byte	W09
	.byte		        Fn2 
	.byte	W09
@ 003   ----------------------------------------
	.byte		N04   , En2 
	.byte	W04
	.byte		        Fn2 
	.byte	W05
	.byte		        En2 
	.byte	W04
	.byte		N24   , Dn2 
	.byte	W24
	.byte	W03
	.byte		N09   , Cn2 
	.byte	W09
	.byte		N04   , Dn2 , v096
	.byte	W05
	.byte		N09   , En2 , v127
	.byte	W09
	.byte		        Cn2 
	.byte	W09
	.byte		N13   , An1 
	.byte	W13
	.byte		N18   , Gn1 
	.byte	W11
@ 004   ----------------------------------------
	.byte	W07
	.byte		VOICE , 21
	.byte		N02   , En3 , v080
	.byte	W02
	.byte		        Fn3 , v104
	.byte	W03
	.byte		MOD   , 26
	.byte		N09   , Gn3 , v092
	.byte	W09
	.byte		VOICE , 0
	.byte		MOD   , 0
	.byte	W04
	.byte		VOICE , 21
	.byte		N02   , En3 , v064
	.byte	W02
	.byte		        Fn3 , v080
	.byte	W03
	.byte		MOD   , 26
	.byte		N04   , Gn3 , v100
	.byte	W04
	.byte		VOICE , 1
	.byte		MOD   , 0
	.byte		N09   , Gn2 , v127
	.byte	W09
	.byte		N04   , An2 
	.byte	W05
	.byte		        As2 
	.byte	W04
	.byte		        An2 
	.byte	W05
	.byte		N30   , As2 
	.byte	W30
	.byte	W01
	.byte		N04   , An2 
	.byte	W05
	.byte		        As2 
	.byte	W03
@ 005   ----------------------------------------
	.byte	W01
	.byte		        Cn3 , v096
	.byte	W05
	.byte		N09   , Dn3 , v127
	.byte	W09
	.byte		N04   , Cn3 
	.byte	W04
	.byte		        As2 
	.byte	W05
	.byte		        An2 
	.byte	W04
	.byte		        As2 
	.byte	W05
	.byte		        An2 
	.byte	W04
	.byte		N24   , Gn2 
	.byte	W24
	.byte	W03
	.byte		N06   
	.byte	W07
	.byte		N06   
	.byte	W07
	.byte		N06   
	.byte	W06
	.byte		        Fn2 
	.byte	W07
	.byte		N04   , En2 
	.byte	W05
@ 006   ----------------------------------------
	.byte		N13   , Cn2 
	.byte	W13
	.byte		N22   , As1 
	.byte	W23
	.byte		N13   , Fn2 
	.byte	W13
	.byte		N18   , En2 
	.byte	W18
	.byte		N02   , Fn2 
	.byte	W02
	.byte		        Fs2 
	.byte	W03
	.byte		N06   , Gn2 
	.byte	W06
	.byte		N06   
	.byte	W07
	.byte		N04   
	.byte	W05
	.byte		N06   
	.byte	W06
@ 007   ----------------------------------------
	.byte		        Fn2 
	.byte	W07
	.byte		        En2 
	.byte	W07
	.byte		N32   , Cn2 
	.byte	W32
	.byte	W02
	.byte		VOICE , 0
	.byte	W04
	.byte		        7
	.byte		N02   , En1 , v080
	.byte	W05
	.byte		        Gn1 
	.byte	W02
	.byte		        En1 , v064
	.byte	W02
	.byte		        Bn1 , v080
	.byte	W02
	.byte		        Gn1 , v064
	.byte	W03
	.byte		MOD   , 26
	.byte		N06   , En2 , v080
	.byte	W06
	.byte		MOD   , 0
	.byte		N06   , Dn2 
	.byte	W07
	.byte		N02   , Bn1 
	.byte	W02
	.byte		        Dn2 , v064
	.byte	W03
	.byte		MOD   , 26
	.byte		N06   , Dn2 , v080
	.byte	W06
	.byte		MOD   , 0
	.byte		N06   , Cn2 
	.byte	W06
@ 008   ----------------------------------------
	.byte	W01
	.byte		N02   , Bn1 
	.byte	W02
	.byte		        Cn2 , v064
	.byte	W03
	.byte		MOD   , 26
	.byte		N11   , Cn2 , v080
	.byte	W11
	.byte		MOD   , 0
	.byte		N06   
	.byte	W07
	.byte		        Cs2 
	.byte	W06
	.byte		        An1 
	.byte	W07
	.byte		N02   , Cs2 
	.byte	W02
	.byte		        An1 , v064
	.byte	W03
	.byte		N06   , An2 , v080
	.byte	W06
	.byte		        En2 
	.byte	W07
	.byte		N02   , An2 
	.byte	W02
	.byte		        En2 , v064
	.byte	W03
	.byte		N06   , Gn2 , v080
	.byte	W06
	.byte		        Fn2 
	.byte	W07
	.byte		N02   , En2 
	.byte	W02
	.byte		        Fn2 , v064
	.byte	W03
	.byte		MOD   , 26
	.byte		N18   , Fn2 , v080
	.byte	W18
@ 009   ----------------------------------------
	.byte		VOICE , 0
	.byte		MOD   , 0
	.byte	W04
	.byte		VOICE , 7
	.byte		N04   , Gs2 
	.byte	W05
	.byte		N02   , Gn2 
	.byte	W02
	.byte		        Gs2 , v064
	.byte	W02
	.byte		        Fn2 , v080
	.byte	W02
	.byte		        Gn2 , v064
	.byte	W03
	.byte		        Ds2 , v080
	.byte	W02
	.byte		        Fn2 , v064
	.byte	W02
	.byte		        Dn2 , v080
	.byte	W02
	.byte		        Ds2 , v064
	.byte	W03
	.byte		        Cn2 , v080
	.byte	W02
	.byte		        Dn2 , v064
	.byte	W02
	.byte		        Gs1 , v080
	.byte	W02
	.byte		        Cn2 , v064
	.byte	W03
	.byte		MOD   , 26
	.byte		N13   , Gn1 , v080
	.byte	W13
	.byte		VOICE , 0
	.byte		MOD   , 0
	.byte	W09
	.byte		VOICE , 7
	.byte		N04   
	.byte	W05
	.byte		N02   , Bn1 
	.byte	W02
	.byte		        Gn1 , v064
	.byte	W02
	.byte		        Dn2 , v080
	.byte	W02
	.byte		        Bn1 , v064
	.byte	W03
	.byte		        Fn2 , v080
	.byte	W02
	.byte		        Dn2 , v064
	.byte	W02
	.byte		MOD   , 26
	.byte		N09   , En2 , v080
	.byte	W09
	.byte		MOD   , 0
	.byte		N04   , Cn2 
	.byte	W05
	.byte		VOICE , 0
	.byte	W04
	.byte		        7
	.byte		N09   , An1 
	.byte	W02
@ 010   ----------------------------------------
	.byte	W07
	.byte		MOD   , 26
	.byte		N04   , Cn2 
	.byte	W05
	.byte		VOICE , 0
	.byte		MOD   , 26
	.byte	W09
	.byte		        0
	.byte	W40
	.byte		VOICE , 17
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		N48   , Cn2 , v127
	.byte	W30
@ 011   ----------------------------------------
	.byte	W19
	.byte		VOICE , 18
	.byte		N09   
	.byte	W09
	.byte		N09   
	.byte	W09
	.byte		VOICE , 17
	.byte		N04   , Cn2 , v096
	.byte	W05
	.byte		N09   , Cn2 , v127
	.byte	W09
	.byte		VOICE , 1
	.byte		N09   , An2 
	.byte	W09
	.byte		N04   , As2 
	.byte	W04
	.byte		        An2 
	.byte	W05
	.byte		N30   , As2 
	.byte	W24
	.byte	W03
@ 012   ----------------------------------------
	.byte	W04
	.byte		N04   , An2 
	.byte	W05
	.byte		        As2 
	.byte	W04
	.byte		        Cn3 
	.byte	W05
	.byte		N09   , Dn3 
	.byte	W09
	.byte		N04   , Cn3 
	.byte	W04
	.byte		        As2 
	.byte	W05
	.byte		        An2 
	.byte	W04
	.byte		        As2 
	.byte	W05
	.byte		        An2 
	.byte	W04
	.byte		N24   , Gn2 
	.byte	W24
	.byte	W03
	.byte		N09   , Fn2 
	.byte	W09
	.byte		N04   , Gn2 
	.byte	W05
	.byte		N09   , An2 
	.byte	W06
@ 013   ----------------------------------------
	.byte	W03
	.byte		        Fn2 
	.byte	W09
	.byte		N04   , En2 
	.byte	W04
	.byte		        Fn2 
	.byte	W05
	.byte		        En2 
	.byte	W04
	.byte		N24   , Dn2 
	.byte	W24
	.byte	W03
	.byte		N09   , Cn2 
	.byte	W09
	.byte		N04   , Dn2 , v096
	.byte	W05
	.byte		N09   , En2 , v127
	.byte	W09
	.byte		        Cn2 
	.byte	W09
	.byte		N13   , An1 
	.byte	W12
@ 014   ----------------------------------------
	.byte	W01
	.byte		N18   , Gn1 
	.byte	W18
	.byte		VOICE , 21
	.byte		N02   , En3 , v080
	.byte	W02
	.byte		        Fn3 , v104
	.byte	W03
	.byte		MOD   , 26
	.byte		N09   , Gn3 , v092
	.byte	W09
	.byte		VOICE , 0
	.byte		MOD   , 0
	.byte	W04
	.byte		VOICE , 21
	.byte		N02   , En3 , v064
	.byte	W02
	.byte		        Fn3 , v080
	.byte	W03
	.byte		MOD   , 26
	.byte		N04   , Gn3 , v100
	.byte	W04
	.byte		VOICE , 1
	.byte		MOD   , 0
	.byte		N09   , Gn2 , v127
	.byte	W09
	.byte		N04   , An2 
	.byte	W05
	.byte		        As2 
	.byte	W04
	.byte		        An2 
	.byte	W05
	.byte		N30   , As2 
	.byte	W24
	.byte	W03
@ 015   ----------------------------------------
	.byte	W04
	.byte		N04   , An2 
	.byte	W05
	.byte		        As2 
	.byte	W04
	.byte		        Cn3 , v096
	.byte	W05
	.byte		N09   , Dn3 , v127
	.byte	W09
	.byte		N04   , Cn3 
	.byte	W04
	.byte		        As2 
	.byte	W05
	.byte		        An2 
	.byte	W04
	.byte		        As2 
	.byte	W05
	.byte		        An2 
	.byte	W04
	.byte		N24   , Gn2 
	.byte	W24
	.byte	W03
	.byte		N06   
	.byte	W07
	.byte		N06   
	.byte	W07
	.byte		N06   
	.byte	W06
@ 016   ----------------------------------------
	.byte		        Fn2 
	.byte	W07
	.byte		N04   , En2 
	.byte	W05
	.byte		N13   , Cn2 
	.byte	W13
	.byte		N22   , As1 
	.byte	W23
	.byte		N13   , Fn2 
	.byte	W13
	.byte		N18   , En2 
	.byte	W18
	.byte		N02   , Fn2 
	.byte	W02
	.byte		        Fs2 
	.byte	W03
	.byte		N06   , Gn2 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 017   ----------------------------------------
	.byte	W01
	.byte		N04   
	.byte	W05
	.byte		N06   
	.byte	W06
	.byte		        Fn2 
	.byte	W07
	.byte		        En2 
	.byte	W07
	.byte		N32   , Cn2 
	.byte	W32
	.byte	W02
	.byte		VOICE , 0
	.byte	W04
	.byte		        7
	.byte		N02   , En1 , v080
	.byte	W05
	.byte		        Gn1 
	.byte	W02
	.byte		        En1 , v064
	.byte	W02
	.byte		        Bn1 , v080
	.byte	W02
	.byte		        Gn1 , v064
	.byte	W03
	.byte		MOD   , 26
	.byte		N06   , En2 , v080
	.byte	W06
	.byte		MOD   , 0
	.byte		N06   , Dn2 
	.byte	W07
	.byte		N02   , Bn1 
	.byte	W02
	.byte		        Dn2 , v064
	.byte	W03
@ 018   ----------------------------------------
	.byte		MOD   , 26
	.byte		N06   , Dn2 , v080
	.byte	W06
	.byte		MOD   , 0
	.byte		N06   , Cn2 
	.byte	W07
	.byte		N02   , Bn1 
	.byte	W02
	.byte		        Cn2 , v064
	.byte	W03
	.byte		MOD   , 26
	.byte		N11   , Cn2 , v080
	.byte	W11
	.byte		MOD   , 0
	.byte		N06   
	.byte	W07
	.byte		        Cs2 
	.byte	W06
	.byte		        An1 
	.byte	W07
	.byte		N02   , Cs2 
	.byte	W02
	.byte		        An1 , v064
	.byte	W03
	.byte		N06   , An2 , v080
	.byte	W06
	.byte		        En2 
	.byte	W07
	.byte		N02   , An2 
	.byte	W02
	.byte		        En2 , v064
	.byte	W03
	.byte		N06   , Gn2 , v080
	.byte	W06
	.byte		        Fn2 
	.byte	W07
	.byte		N02   , En2 
	.byte	W02
	.byte		        Fn2 , v064
	.byte	W03
	.byte		MOD   , 26
	.byte		N18   , Fn2 , v080
	.byte	W06
@ 019   ----------------------------------------
	.byte	W12
	.byte		VOICE , 0
	.byte		MOD   , 0
	.byte	W04
	.byte		VOICE , 7
	.byte		N04   , Gs2 
	.byte	W05
	.byte		N02   , Gn2 
	.byte	W02
	.byte		        Gs2 , v064
	.byte	W02
	.byte		        Fn2 , v080
	.byte	W02
	.byte		        Gn2 , v064
	.byte	W03
	.byte		        Ds2 , v080
	.byte	W02
	.byte		        Fn2 , v064
	.byte	W02
	.byte		        Dn2 , v080
	.byte	W02
	.byte		        Ds2 , v064
	.byte	W03
	.byte		        Cn2 , v080
	.byte	W02
	.byte		        Dn2 , v064
	.byte	W02
	.byte		        Gs1 , v080
	.byte	W02
	.byte		        Cn2 , v064
	.byte	W03
	.byte		MOD   , 26
	.byte		N13   , Gn1 , v080
	.byte	W13
	.byte		VOICE , 0
	.byte		MOD   , 0
	.byte	W09
	.byte		VOICE , 7
	.byte		N04   
	.byte	W05
	.byte		N02   , Bn1 
	.byte	W02
	.byte		        Gn1 , v064
	.byte	W02
	.byte		        Dn2 , v080
	.byte	W02
	.byte		        Bn1 , v064
	.byte	W03
	.byte		        Fn2 , v080
	.byte	W02
	.byte		        Dn2 , v064
	.byte	W02
	.byte		MOD   , 26
	.byte		N09   , En2 , v080
	.byte	W08
@ 020   ----------------------------------------
	.byte	W01
	.byte		MOD   , 0
	.byte		N04   , Cn2 
	.byte	W05
	.byte		VOICE , 0
	.byte	W04
	.byte		        7
	.byte		N09   , An1 
	.byte	W09
	.byte		MOD   , 26
	.byte		N04   , Cn2 
	.byte	W05
	.byte		VOICE , 0
	.byte		MOD   , 26
	.byte	W13
	.byte		        0
	.byte	W24
	.byte	W03
	.byte		VOICE , 15
	.byte		N02   , Cn2 , v088
	.byte	W02
	.byte		N02   
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte		VOICE , 18
	.byte		N04   , Cn3 , v096
	.byte	W05
	.byte		N06   , Cn3 , v127
	.byte	W06
	.byte		VOICE , 15
	.byte		N06   , Gn1 , v088
	.byte	W07
	.byte		VOICE , 13
	.byte		N04   , Cn2 , v127
	.byte	W05
@ 021   ----------------------------------------
	.byte		VOICE , 6
	.byte		N13   , Cn2 , v096
	.byte	W13
	.byte		VOICE , 13
	.byte		N09   , Cn2 , v127
	.byte	W09
	.byte		VOICE , 15
	.byte		N04   , Cn2 , v088
	.byte	W05
	.byte		VOICE , 12
	.byte		N04   , Cn2 , v127
	.byte	W04
	.byte		VOICE , 5
	.byte		N02   , Cn2 , v064
	.byte	W02
	.byte		N11   , Cn2 , v096
	.byte	W12
	.byte		VOICE , 15
	.byte		N04   , Cn2 , v088
	.byte	W04
	.byte		VOICE , 13
	.byte		N09   , Cn2 , v127
	.byte	W09
	.byte		VOICE , 15
	.byte		N04   , Cn2 , v088
	.byte	W05
	.byte		VOICE , 5
	.byte		N04   , Cn2 , v080
	.byte	W04
	.byte		        Cn2 , v127
	.byte	W05
	.byte		VOICE , 0
	.byte	W04
	.byte		        2
	.byte		N04   , Gn1 , v104
	.byte	W05
	.byte		        Gs1 
	.byte	W04
	.byte		        Bn1 
	.byte	W05
	.byte		        En2 
	.byte	W04
	.byte		N02   , Bn1 
	.byte	W02
@ 022   ----------------------------------------
	.byte		        Gs1 
	.byte	W03
	.byte		N04   , En1 
	.byte	W04
	.byte		        Dn2 
	.byte	W05
	.byte		N02   , An1 
	.byte	W02
	.byte		        Fs1 
	.byte	W02
	.byte		N04   , Dn1 
	.byte	W05
	.byte		        Bn0 
	.byte	W13
	.byte		N06   , Dn2 
	.byte	W07
	.byte		        En2 
	.byte	W07
	.byte		N02   , Fn2 
	.byte	W02
	.byte		N11   , Fs2 
	.byte	W11
	.byte		N02   , En2 
	.byte	W02
	.byte		        Dn2 
	.byte	W03
	.byte		N06   , En2 
	.byte	W06
	.byte		        Dn2 
	.byte	W07
	.byte		N04   , Bn1 
	.byte	W05
	.byte		        An1 
	.byte	W04
	.byte		        Gn1 
	.byte	W05
	.byte		        Fn1 
	.byte	W03
@ 023   ----------------------------------------
	.byte	W01
	.byte		N09   , Dn1 
	.byte	W18
	.byte		N02   , Bn1 
	.byte	W02
	.byte		        Cn2 
	.byte	W03
	.byte		N09   , Cs2 
	.byte	W09
	.byte		N04   , En2 
	.byte	W04
	.byte		N06   , An2 
	.byte	W07
	.byte		        Bn2 
	.byte	W07
	.byte		        An2 
	.byte	W22
	.byte		N04   , Cs2 
	.byte	W05
	.byte		        En2 
	.byte	W06
	.byte		        An2 
	.byte	W07
	.byte		        En2 
	.byte	W05
@ 024   ----------------------------------------
	.byte		N09   , Cn2 
	.byte	W09
	.byte		N04   , En2 
	.byte	W04
	.byte		N09   , An2 
	.byte	W09
	.byte		N04   , Bn2 
	.byte	W05
	.byte		        An2 
	.byte	W04
	.byte		N02   , Ds2 
	.byte	W02
	.byte		N11   , En2 
	.byte	W30
	.byte		N04   , Fn2 
	.byte	W04
	.byte		        Fs2 
	.byte	W05
	.byte		N09   , Gs2 
	.byte	W13
	.byte		N04   , An2 
	.byte	W05
	.byte		N09   , Fs2 
	.byte	W06
@ 025   ----------------------------------------
	.byte	W07
	.byte		N04   , Gs2 
	.byte	W05
	.byte		N09   , En2 
	.byte	W13
	.byte		N04   , Fs2 
	.byte	W05
	.byte		N09   , Dn2 
	.byte	W13
	.byte		N02   , Ds2 
	.byte	W02
	.byte		N06   , En2 
	.byte	W07
	.byte		N09   , En2 , v080
	.byte	W09
	.byte		N02   , Fn2 , v104
	.byte	W02
	.byte		        Gn2 
	.byte	W03
	.byte		N04   , Fn2 
	.byte	W04
	.byte		        En2 
	.byte	W05
	.byte		        Cn2 
	.byte	W04
	.byte		        An1 
	.byte	W05
	.byte		        As1 
	.byte	W04
	.byte		N13   , Bn1 
	.byte	W08
@ 026   ----------------------------------------
	.byte	W19
	.byte		VOICE , 6
	.byte		N24   , Cn2 , v096
	.byte	W24
	.byte	W03
	.byte		VOICE , 2
	.byte		N02   , Cs2 , v104
	.byte	W05
	.byte		N04   , Dn2 
	.byte	W04
	.byte		N02   , Gs2 
	.byte	W05
	.byte		        En2 
	.byte	W04
	.byte		        An1 
	.byte	W05
	.byte		N04   , Bn1 
	.byte	W04
	.byte		N02   , En2 
	.byte	W05
	.byte		N04   , Gs1 
	.byte	W04
	.byte		N02   , Cs1 
	.byte	W05
	.byte		N04   , En1 
	.byte	W04
	.byte		N02   , Gs1 
	.byte	W05
@ 027   ----------------------------------------
	.byte		N13   , Gn1 
	.byte	W13
	.byte		N02   , Fs1 
	.byte	W02
	.byte		        Fn1 
	.byte	W03
	.byte		N06   , En1 
	.byte	W13
	.byte		N09   , Cn2 
	.byte	W09
	.byte		N02   , An1 
	.byte	W02
	.byte		        Gs1 
	.byte	W03
	.byte		N09   , Gn1 
	.byte	W09
	.byte		        Fn1 
	.byte	W09
	.byte		N04   , Ds1 , v080
	.byte	W04
	.byte		        Cn1 , v064
	.byte	W05
	.byte		VOICE , 7
	.byte		N04   , Ds2 , v080
	.byte	W04
	.byte		N02   , Gs2 
	.byte	W05
	.byte		N04   , Gn2 
	.byte	W04
	.byte		N02   , Fn2 
	.byte	W05
	.byte		N04   , Ds2 
	.byte	W04
	.byte		N02   , Dn2 
	.byte	W02
@ 028   ----------------------------------------
	.byte	W03
	.byte		        Cn2 
	.byte	W04
	.byte		        Gs1 
	.byte	W05
	.byte		N13   , Gn1 
	.byte	W22
	.byte		N02   
	.byte	W02
	.byte		VOICE , 0
	.byte	W03
	.byte		        7
	.byte		N04   , Bn1 
	.byte	W04
	.byte		N02   , Dn2 
	.byte	W02
	.byte		VOICE , 0
	.byte	W03
	.byte		        7
	.byte		N02   , Fn2 
	.byte	W02
	.byte		VOICE , 0
	.byte	W02
	.byte		        7
	.byte		N04   , En2 
	.byte	W05
	.byte		        En2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W05
	.byte		        Cn2 , v064
	.byte	W04
	.byte		        An1 , v080
	.byte	W05
	.byte		        An1 , v064
	.byte	W04
	.byte		MOD   , 26
	.byte		N18   , Cn2 , v080
	.byte	W17
@ 029   ----------------------------------------
	.byte	W01
	.byte		MOD   , 0
	.byte	W24
	.byte	W03
	.byte		N02   , Gs2 
	.byte	W05
	.byte		N04   , Gn2 
	.byte	W04
	.byte		N02   , Fn2 
	.byte	W05
	.byte		N04   , Ds2 
	.byte	W04
	.byte		N02   , Dn2 
	.byte	W05
	.byte		        Cn2 
	.byte	W04
	.byte		        Gs1 
	.byte	W05
	.byte		N13   , Gn1 
	.byte	W22
	.byte		N04   , Dn2 
	.byte	W05
	.byte		        En2 
	.byte	W04
	.byte		        Gn1 
	.byte	W05
@ 030   ----------------------------------------
	.byte		MOD   , 26
	.byte		N18   , Bn1 
	.byte	W18
	.byte		MOD   , 0
	.byte		N04   , Gn1 
	.byte	W04
	.byte		        Gn1 , v064
	.byte	W05
	.byte		        Fn1 , v080
	.byte	W04
	.byte		N04   
	.byte	W05
	.byte		N02   , En1 
	.byte	W02
	.byte		VOICE , 0
	.byte	W02
	.byte		        7
	.byte		N02   , Fn1 
	.byte	W02
	.byte		        En1 
	.byte	W03
	.byte		MOD   , 26
	.byte		N15   , Cn1 
	.byte	W15
	.byte		MOD   , 0
	.byte	W12
	.byte		VOICE , 6
	.byte		N13   , Cn2 , v096
	.byte	W13
	.byte		VOICE , 7
	.byte		N02   , An2 , v080
	.byte	W02
	.byte		N06   , As2 
	.byte	W07
	.byte		N02   , Ds2 
	.byte	W02
@ 031   ----------------------------------------
	.byte	W03
	.byte		        Cn2 
	.byte	W04
	.byte		N09   , Gn2 
	.byte	W09
	.byte		N02   , An2 
	.byte	W05
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Gn2 , v064
	.byte	W07
	.byte		N02   , Gn1 , v080
	.byte	W05
	.byte		N04   , Bn1 
	.byte	W04
	.byte		N02   , Dn2 
	.byte	W05
	.byte		N04   , Fn2 
	.byte	W04
	.byte		        En2 
	.byte	W05
	.byte		        En2 , v064
	.byte	W04
	.byte		        Cn2 , v080
	.byte	W05
	.byte		        Cn2 , v064
	.byte	W04
	.byte		        An1 , v080
	.byte	W05
	.byte		        An1 , v064
	.byte	W04
	.byte		MOD   , 26
	.byte		N18   , Cn2 , v080
	.byte	W17
@ 032   ----------------------------------------
	.byte	W01
	.byte		MOD   , 0
	.byte	W05
	.byte		VOICE , 6
	.byte		N22   , Cn2 , v096
	.byte	W22
	.byte		VOICE , 7
	.byte		N02   , Gs2 , v080
	.byte	W05
	.byte		N04   , Gn2 
	.byte	W04
	.byte		N02   , Fn2 
	.byte	W05
	.byte		N04   , Ds2 
	.byte	W04
	.byte		N02   , Dn2 
	.byte	W05
	.byte		        Cn2 
	.byte	W04
	.byte		        Gs1 
	.byte	W05
	.byte		MOD   , 26
	.byte		N13   , Gn1 
	.byte	W13
	.byte		VOICE , 0
	.byte		MOD   , 0
	.byte	W09
	.byte		VOICE , 7
	.byte		N04   , Dn2 
	.byte	W05
	.byte		        En2 
	.byte	W04
	.byte		        Gn1 
	.byte	W05
@ 033   ----------------------------------------
	.byte		MOD   , 26
	.byte		N18   , Bn1 
	.byte	W18
	.byte		MOD   , 0
	.byte		N04   , Gn1 
	.byte	W04
	.byte		        Gn1 , v064
	.byte	W05
	.byte		        Fn1 , v080
	.byte	W04
	.byte		        Fn1 , v064
	.byte	W05
	.byte		N02   , En1 , v080
	.byte	W02
	.byte		VOICE , 0
	.byte	W02
	.byte		        7
	.byte		N02   , Fn1 
	.byte	W02
	.byte		        En1 
	.byte	W03
	.byte		N13   , Cn1 
	.byte	W13
	.byte		        Cn1 , v064
	.byte	W14
	.byte		N04   , Cn1 , v048
	.byte	W04
	.byte		VOICE , 15
	.byte		N02   , Cn2 , v088
	.byte	W02
	.byte		N02   
	.byte	W03
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W05
	.byte		N06   , Gn1 
	.byte	W06
@ 034   ----------------------------------------
	.byte		N06   
	.byte	W07
	.byte		VOICE , 13
	.byte		N04   , Cn2 , v127
	.byte	W05
	.byte		VOICE , 6
	.byte		N22   , Cn2 , v096
	.byte	W22
	.byte		VOICE , 15
	.byte		N22   , Cn2 , v088
	.byte	W23
	.byte		N13   
	.byte	W13
	.byte		N13   
	.byte	W24
	.byte	W02
	.byte	GOTO
	 .word	ch13_4_B1
ch13_4_B2:
@ 035   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

ch13:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	ch13_pri	@ Priority
	.byte	ch13_rev	@ Reverb.

	.word	ch13_grp

	.word	ch13_1
	.word	ch13_2
	.word	ch13_3
	.word	ch13_4

	.end
