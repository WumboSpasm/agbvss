#TONE NAME     : inst09
#FREQUENCY     : 8000
#BASE NOTE#    : 48
#START ADDRESS : 000000
#LOOP ADDRESS  : 000000
#END ADDRESS   : 000635
#LOOP MODE     : 1Shot
#FINE TUNE     : 0
#WAVE EXP/COMP : 1
#VOL EXP/COMP  : 1

	.section .rodata
	.global	inst09
	.align	2

inst09:
	.short	0x0000
	.short	0x0000
	.int	16384000
	.int	0
	.int	635

	.byte	0x01,0x01,0x00,0x01,0x01,0x01,0x01,0x01
	.byte	0x03,0x00,0x02,0x01,0x00,0x00,0x01,0x01
	.byte	0x02,0x02,0x03,0x00,0x03,0x02,0x01,0x03
	.byte	0x00,0x01,0x03,0x00,0x03,0x02,0x01,0x04
	.byte	0x02,0x02,0x03,0x03,0x03,0x01,0x01,0x04
	.byte	0x02,0x01,0x05,0x00,0x03,0xFD,0x03,0x00
	.byte	0x01,0x00,0xFF,0x03,0xFD,0x01,0x00,0xFF
	.byte	0x04,0x00,0x01,0x01,0x02,0x00,0x02,0x00
	.byte	0x02,0xFD,0x04,0xFD,0x02,0x00,0x01,0xFD
	.byte	0x03,0xFF,0x01,0x00,0x02,0x01,0x05,0xFD
	.byte	0x0A,0xFD,0x00,0xFD,0xFE,0x01,0xFB,0x03
	.byte	0x00,0x03,0x0C,0xFD,0x01,0x01,0xFF,0x06
	.byte	0x03,0x06,0x04,0x03,0x06,0x01,0x05,0xFC
	.byte	0x0D,0xFD,0x06,0xFF,0x05,0x01,0x07,0x01
	.byte	0x05,0x02,0xFD,0x04,0xFA,0x00,0xFF,0x03
	.byte	0xFB,0xFF,0x01,0xFC,0x04,0xFC,0xFC,0x07
	.byte	0xF8,0x03,0x05,0x03,0xFD,0x04,0xFE,0xFF
	.byte	0xFA,0x07,0x00,0x01,0xFC,0x06,0xFF,0x05
	.byte	0xFC,0x0C,0xF4,0x0B,0xF3,0x0F,0xF9,0x06
	.byte	0xFD,0xFC,0x00,0x05,0x03,0x04,0xFD,0x05
	.byte	0xFB,0xFA,0x05,0x04,0x01,0x04,0x07,0x00
	.byte	0x02,0x06,0xFC,0x01,0xFD,0x07,0xFB,0xFB
	.byte	0x01,0xFE,0xFA,0x0B,0x00,0xFD,0xF5,0x0B
	.byte	0xF6,0x03,0x05,0x07,0xF8,0xFA,0xFB,0x08
	.byte	0xF9,0x03,0x07,0xFE,0xFB,0xFE,0xFF,0x0F
	.byte	0xF9,0xFF,0x01,0x08,0xF9,0x07,0xFA,0x01
	.byte	0x00,0x05,0x02,0x09,0x02,0xFF,0xFB,0xFE
	.byte	0x00,0x00,0x01,0x05,0xF6,0x08,0xF9,0x0A
	.byte	0xFE,0xFD,0xFE,0xFD,0x06,0xF8,0x03,0x04
	.byte	0x00,0x04,0x07,0x00,0xFF,0xFF,0xFF,0x02
	.byte	0xFE,0x02,0x03,0xFD,0x00,0xFD,0xFA,0xF6
	.byte	0xFA,0x02,0xF8,0x04,0xFC,0x04,0xF8,0x01
	.byte	0x01,0xFD,0xFD,0x08,0xF4,0xFE,0xF3,0xF8
	.byte	0xF5,0xFD,0xFE,0xFC,0xFB,0x07,0xF7,0x02
	.byte	0xFC,0x04,0x02,0xFC,0xF4,0xFA,0x00,0xFD
	.byte	0xF3,0x01,0xF8,0x04,0xFC,0x00,0x01,0xF7
	.byte	0x00,0xFE,0x01,0xFD,0x06,0x00,0x02,0x03
	.byte	0x00,0x0A,0xFC,0xF6,0x0B,0x08,0x0A,0xF8
	.byte	0xFE,0x05,0xFD,0x09,0xFD,0xFF,0x08,0xF2
	.byte	0x0C,0xF6,0x01,0x00,0x02,0x02,0xFB,0x01
	.byte	0x04,0x02,0xFE,0x0A,0xFD,0x0E,0xFB,0x08
	.byte	0x00,0x06,0x02,0x00,0x08,0xFF,0xFB,0x03
	.byte	0x02,0xFE,0x07,0x08,0xFB,0x03,0xFF,0x03
	.byte	0x03,0xFF,0x02,0x07,0x00,0x04,0xFD,0x02
	.byte	0x00,0x02,0x05,0x03,0x02,0x01,0x03,0x04
	.byte	0x09,0x02,0x02,0x01,0x00,0x0A,0x00,0x04
	.byte	0x01,0xFE,0x08,0x03,0x01,0x06,0xFE,0x01
	.byte	0x02,0x04,0x01,0x04,0x03,0xFD,0x02,0x00
	.byte	0x03,0xFF,0xFE,0x00,0x00,0x00,0xFE,0x03
	.byte	0xFD,0x01,0x00,0xFE,0x02,0xFD,0x02,0xFF
	.byte	0xFF,0xFE,0x00,0x00,0xFF,0x02,0x02,0x00
	.byte	0x01,0x00,0xFE,0x03,0x00,0x02,0x01,0xFF
	.byte	0x02,0x00,0x04,0x00,0x02,0x01,0x02,0x01
	.byte	0x02,0x00,0x00,0x00,0x01,0xFF,0x04,0x00
	.byte	0x03,0x01,0x01,0x00,0x02,0x01,0x02,0x02
	.byte	0x01,0x00,0x02,0x01,0xFF,0x01,0x00,0x00
	.byte	0xFF,0x00,0xFF,0xFF,0x00,0x00,0x00,0x01
	.byte	0xFF,0x00,0x00,0x01,0x01,0x00,0x00,0x00
	.byte	0x00,0xFF,0x00,0x00,0x00,0x00,0x00,0x00
	.byte	0x00,0x00,0x00,0x00,0x00,0x01,0x01,0x00
	.byte	0x01,0x00,0x00,0x00,0x01,0x01,0x01,0x00
	.byte	0x01,0x01,0x00,0x01,0x00,0x00,0x01,0x01
	.byte	0x01,0x02,0x02,0x00,0x01,0x00,0x01,0x02
	.byte	0x02,0x00,0x01,0x01,0x00,0x00,0x01,0x00
	.byte	0x02,0x01,0x00,0xFF,0xFF,0x00,0xFF,0xFF
	.byte	0xFF,0x00,0xFF,0x01,0x01,0x01,0x01,0x01
	.byte	0x00,0x00,0x00,0x00,0x00,0xFF,0x01,0x00
	.byte	0x01,0x00,0x01,0x00,0x00,0x00,0x01,0x00
	.byte	0x00,0x00,0x01,0x00,0x00,0x00,0x00,0x01
	.byte	0x02,0x01,0x01,0x00,0x00,0x00,0x00,0x00
	.byte	0x00,0x00,0x00,0x01,0x01,0x01,0x01,0x01
	.byte	0x01,0x00,0x01,0x01,0x01,0x01,0x01,0x01
	.byte	0x00,0x01,0x00,0x00,0xFF,0x01,0x00,0x00
	.byte	0x01,0x00,0x00,0x01,0x00,0x01,0xFF,0x00
	.byte	0xFF,0x00,0xFF,0xFF,0x00,0xFF,0x00,0x00
	.byte	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01
	.byte	0xFF,0x00,0x00,0x00,0x00,0x00,0x00,0xFF
	.byte	0x00,0x00,0x01,0x00,0x00,0x00,0x00,0x00
	.byte	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte	0x00,0x01,0x00

	.byte	0x00

	.end