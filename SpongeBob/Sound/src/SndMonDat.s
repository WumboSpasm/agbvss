	.section .rodata
	.align	2

	.global	app_song_table
app_song_table:
	.short	 0, 127
	.short	 0, 127
	.short	 0, 127
	.short	 0, 127
	.short	 0, 127
	.short	 0, 127
	.short	 0, 127
	.short	 0, 127
	.short	 0, 127
	.short	 0, 127
	.short	 0, 127
	.short	 0, 127
	.short	 0, 127
	.short	 0, 127
	.short	 0, 127
	.short	 0, 127
	.short	 0, 127
	.short	 0, 127
	.short	 0, 127
	.short	 0, 127
	.short	 0, 127
	.short	 0, 127
	.short	 0, 127
	.short	 0, 127
	.short	 0, 127
	.short	 0, 127
	.short	 0, 127
	.short	 0, 127
	.short	 0, 127
	.short	 0, 127
	.short	 0, 127
	.short	 0, 127
	.short	 0, 127
	.short	 0, 127
	.short	 0, 127
	.short	 0, 127
	.short	 0, 127
	.short	 0, 127
	.short	 0, 127
	.short	 0, 127
	.short	 0, 127
	.short	 0, 127
	.short	 0, 127
	.short	 0, 127

	.global	__total_vgrp_n
	.equ	__total_vgrp_n, 1

	.global	app_vgrp_table
app_vgrp_table:
	.word	voicegroup000

	.global	pbymidi_swi
	.equ	pbymidi_swi, 0
	.global	pbymidi_vg
	.equ	pbymidi_vg, 0
	.global	pbymidi_mv
	.equ	pbymidi_mv, 127
	.global	pbymidi_pr
	.equ	pbymidi_pr, 255
	.global	pbymidi_tm
	.equ	pbymidi_tm, 150

	.global	seg_rodata_top
	.equ	seg_rodata_top,.

	.section .rodata.end
	.global	seg_rodata_end
	.equ	seg_rodata_end,.
	.word	0

	.end
