	.section .rodata
	.align	2

	.equ	sc1dt12, 0
	.equ	sc1dt25, 1
	.equ	sc1dt50, 2
	.equ	sc1dt75, 3
	.equ	sc2dt12, 0
	.equ	sc2dt25, 1
	.equ	sc2dt50, 2
	.equ	sc2dt75, 3
	.equ	sc4st15, 0
	.equ	sc4st07, 1

	.global	__sound_mode_i
	.equ	__sound_mode_i, 0x0097D800

	.global	voicegroup000
voicegroup000:
	.byte	 0, 60,  0,0x00
	.word	gun
	.byte	255,  0,255,  0

	.byte	 0, 60,  0,0x00
	.word	se3
	.byte	255,  0,255,  0

	.byte	 0, 60,  0,0x00
	.word	se5
	.byte	255,  0,255,  0

	.byte	 0, 60,  0,0x00
	.word	se8
	.byte	255,  0,255,  0

	.byte	 0, 60,  0,0x00
	.word	se9b
	.byte	255,  0,255,  0

	.byte	 0, 60,  0,0x00
	.word	flutec4
	.byte	255,  0,255,  0

	.byte	10, 60,  0,0x00
	.word	sc2dt12
	.byte	 0, 0,15, 0

	.byte	 9, 60,  0,0x1C
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	10, 60,  0,0x00
	.word	sc2dt50
	.byte	 0, 0,15, 0

	.byte	 9, 60,  0,0x1C
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	12, 60,  0,0x00
	.word	sc4st15
	.byte	 0, 0,15, 0

	.byte	 0, 60,  0,0x00
	.word	suboscc3
	.byte	255,  0,255,  0

	.byte	 0, 60,  0,0x00
	.word	orgc3
	.byte	255,  0,255,  0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	10, 60,  0,0x00
	.word	sc2dt12
	.byte	 0, 4, 0, 0

	.byte	 0, 60,  0,0x00
	.word	synbsc2
	.byte	255,  0,255,165

	.byte	 0, 60,  0,0x00
	.word	brassc3
	.byte	255,  0,255,165

	.byte	 0, 60,  0,0x00
	.word	mutetpc4
	.byte	255,  0,255,165

	.byte	 0, 60,  0,0x00
	.word	cutgtg3
	.byte	255,  0,255,  0

	.byte	 0, 60,  0,0x00
	.word	sawg3
	.byte	255,  0,255,  0

	.byte	 0, 60,  0,0x00
	.word	sinec3
	.byte	255,  0,255,  0

	.byte	 0, 60,  0,0x00
	.word	revcym
	.byte	255,  0,255,  0

	.byte	0x40,0,0,0
	.word	voicegroup002
	.word	spltbl000 - 36

	.byte	0x40,0,0,0
	.word	voicegroup002
	.word	spltbl001 - 36

	.byte	 0, 60,  0,0x00
	.word	engin01a
	.byte	255,  0,255,  0

	.byte	11, 60,  0,0x00
	.word	sc3w001
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	 1, 60,  0,0x00
	.word	sc1dt50
	.byte	 0, 0,15, 0

	.byte	0x80,0,0,0
	.word	voicegroup001 - (36 * 12)
	.word	0

	.global	voicegroup001
voicegroup001:
	.byte	 8, 60,  0,0x00
	.word	housebd
	.byte	255,  0,255,  0

	.byte	 8, 60,  0,0x00
	.word	housesd
	.byte	255,  0,255,  0

	.byte	 8, 60,  0,0x00
	.word	housechh
	.byte	255,  0,255,  0

	.byte	 8, 60,  0,0x00
	.word	houseohh
	.byte	255,  0,255,  0

	.byte	 8, 60,  0,0x00
	.word	tamba
	.byte	255,  0,255,  0

	.byte	 8, 60,  0,0x00
	.word	vibra
	.byte	255,  0,255,  0

	.byte	 8, 60,  0,0x00
	.word	timbale
	.byte	255,  0,255,  0

	.byte	 8, 60,  0,0x00
	.word	se8
	.byte	255,  0,255,  0

	.global	voicegroup002
voicegroup002:
	.byte	 0, 60,  0,0x00
	.word	harpc3
	.byte	255,  0,255,226

	.byte	 0, 60,  0,0x00
	.word	harpc5
	.byte	255,  0,255,226

spltbl000:
	.byte	  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0
	.byte	  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0
	.byte	  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0
	.byte	  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1
	.byte	  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1
	.byte	  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1
spltbl001:
	.byte	  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0
	.byte	  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0
	.byte	  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0
	.byte	  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1
	.byte	  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1
	.byte	  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1
	.align	2

sc3w000:
sinewave:
	.byte	0x00,0x11,0x23,0x56,0x89,0xAC,0xDE,0xEF
	.byte	0xFF,0xEE,0xDC,0xA9,0x86,0x53,0x21,0x10
sc3w001:
triangle:
	.byte	0x01,0x23,0x45,0x67,0x89,0xAB,0xCD,0xEF
	.byte	0xFE,0xDC,0xBA,0x98,0x76,0x54,0x32,0x10
sc3w002:
fat_saw:
	.byte	0xFF,0xEE,0xDD,0xCC,0xBB,0xAA,0x99,0x88
	.byte	0x77,0x66,0x55,0x44,0x33,0x22,0x11,0x00
sc3w003:
thin_saw:
	.byte	0xFE,0xDC,0xBA,0x99,0x88,0x88,0x88,0x88
	.byte	0x77,0x77,0x77,0x77,0x66,0x54,0x32,0x10
sc3w004:
square12:
	.byte	0xFF,0xFF,0x00,0x00,0x00,0x00,0x00,0x00
	.byte	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
sc3w005:
square25:
	.byte	0xFF,0xFF,0xFF,0xFF,0x00,0x00,0x00,0x00
	.byte	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
sc3w006:
square37:
	.byte	0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0x00,0x00
	.byte	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
sc3w007:
square50:
	.byte	0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF
	.byte	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00

	.global	__total_mplay_n
	.equ	__total_mplay_n, 4

	.global	mplay_table
mplay_table:
	.comm	m4a_mplay000, 64
	.lcomm	m4a_track000, 80*8
	.word	m4a_mplay000, m4a_track000, 8

	.comm	m4a_mplay001, 64
	.lcomm	m4a_track001, 80*6
	.word	m4a_mplay001, m4a_track001, 6

	.comm	m4a_mplay002, 64
	.lcomm	m4a_track002, 80*2
	.word	m4a_mplay002, m4a_track002, 2

	.comm	m4a_mplay003, 64
	.lcomm	m4a_track003, 80*2
	.word	m4a_mplay003, m4a_track003, 2

	.global	__total_song_n
	.equ	__total_song_n, 16

	.global	song_table
song_table:
	.word	dmy_song
	.short	 0,  0
	.word	se_d01
	.short	 3,  3
	.word	se_dbend
	.short	 3,  3
	.word	se_dvib
	.short	 3,  3
	.word	se_gbend2
	.short	 3,  3
	.word	se_swep2
	.short	 3,  3
	.word	se_noise
	.short	 3,  3
	.word	sound3
	.short	 3,  3
	.word	se_dben2
	.short	 3,  3
	.word	se_gbend
	.short	 3,  3
	.word	se_sweep
	.short	 3,  3
	.word	se_dgmix
	.short	 3,  3
	.word	dmy_song
	.short	 0,  0
	.word	agb2000
	.short	 2,  2
	.word	wario
	.short	 0,  0
	.word	engin
	.short	 3,  3

dmy_song:
	.byte	0,0,0,0

	.comm	m4a_memacc_area, 16

	.global	__only_dma1
	.equ	__only_dma1, 0

	.global	__max_line
	.equ	__max_line, 0

	.end
