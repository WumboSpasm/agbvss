#TONE NAME     : inst18
#FREQUENCY     : 8000
#BASE NOTE#    : 48
#START ADDRESS : 000000
#LOOP ADDRESS  : 000000
#END ADDRESS   : 001054
#LOOP MODE     : 1Shot
#FINE TUNE     : 0
#WAVE EXP/COMP : 1
#VOL EXP/COMP  : 1

	.section .rodata
	.global	inst18
	.align	2

inst18:
	.short	0x0000
	.short	0x0000
	.int	16384000
	.int	0
	.int	1054

	.byte	0x01,0x02,0x02,0x02,0x03,0x03,0x04,0x04
	.byte	0x05,0x05,0x05,0x05,0x04,0x04,0x03,0x02
	.byte	0x01,0x00,0xFF,0xFE,0xFE,0xFD,0xFC,0xFB
	.byte	0xFB,0xFB,0xFB,0xFC,0xFC,0xFD,0xFD,0xFE
	.byte	0xFF,0x00,0x01,0x01,0x02,0x02,0x03,0x03
	.byte	0x04,0x05,0x05,0x05,0x05,0x05,0x05,0x04
	.byte	0x04,0x04,0x04,0x03,0x03,0x02,0x02,0x00
	.byte	0xFF,0xFF,0xFF,0x01,0x00,0xFD,0xF9,0xF7
	.byte	0xF8,0xF6,0xF7,0xF7,0xF6,0xF7,0xF9,0xFB
	.byte	0xFE,0x03,0x06,0x09,0x08,0x0E,0x0F,0x10
	.byte	0x0D,0x0D,0x0B,0x08,0x08,0x08,0x06,0x01
	.byte	0x00,0xFD,0xFB,0xFA,0xFA,0xF8,0xF7,0xFA
	.byte	0xF9,0xF6,0xF7,0xF8,0xFA,0xFA,0xFB,0xFB
	.byte	0xFD,0xFD,0xFD,0xFC,0xFC,0x00,0x01,0x03
	.byte	0x03,0x07,0x08,0x07,0x09,0x0A,0x0A,0x0C
	.byte	0x0C,0x0B,0x09,0x08,0x07,0x06,0x02,0xFF
	.byte	0xFF,0xFE,0xFC,0xF7,0xF7,0xF5,0xF6,0xF8
	.byte	0xF5,0xF6,0xF6,0xFA,0xFC,0xFA,0xFC,0xFC
	.byte	0x02,0x04,0x01,0x00,0x04,0x06,0x03,0x07
	.byte	0x04,0x07,0x08,0x03,0x02,0x02,0x03,0x00
	.byte	0x02,0xFE,0x00,0x00,0x01,0x05,0xFF,0xFF
	.byte	0xFE,0x03,0x01,0xFF,0xFE,0xFE,0x04,0xFC
	.byte	0xFA,0xFC,0x03,0x05,0x03,0x00,0x08,0x0A
	.byte	0x07,0x08,0x09,0x0D,0x09,0x07,0x04,0x03
	.byte	0xFF,0xFE,0xFB,0xFC,0xF8,0xF7,0xF3,0xF5
	.byte	0xF7,0xF7,0xFA,0xFB,0xFE,0x02,0x00,0x03
	.byte	0x05,0x06,0x07,0x06,0x09,0x09,0x09,0x07
	.byte	0x06,0x04,0x05,0x03,0x01,0xFE,0xFF,0xFF
	.byte	0xFB,0xF9,0xF8,0xFC,0xFB,0xFB,0xFB,0xFC
	.byte	0xFC,0xFC,0xFC,0xFE,0x01,0x00,0x02,0x02
	.byte	0x05,0x04,0x03,0x05,0x06,0x07,0x06,0x05
	.byte	0x05,0x04,0x03,0x02,0x02,0x00,0xFF,0x00
	.byte	0xFF,0xFD,0xFC,0xFC,0xFC,0xFD,0xFC,0xFE
	.byte	0xFE,0xFE,0xFE,0xFF,0x01,0x00,0x02,0x04
	.byte	0x05,0x06,0x06,0x07,0x08,0x07,0x06,0x05
	.byte	0x05,0x04,0x00,0x00,0xFF,0xFD,0xFB,0xFA
	.byte	0xFB,0xFB,0xF9,0xFA,0xFB,0xFC,0xFC,0xFD
	.byte	0x00,0x00,0x01,0x01,0x02,0x05,0x04,0x04
	.byte	0x07,0x08,0x07,0x05,0x05,0x05,0x02,0x01
	.byte	0x00,0x00,0xFE,0xFC,0xFB,0xFB,0xFA,0xF9
	.byte	0xF8,0xFB,0xFC,0xFC,0xFD,0xFE,0x00,0x00
	.byte	0x01,0x03,0x03,0x04,0x05,0x06,0x07,0x06
	.byte	0x07,0x07,0x06,0x05,0x03,0x03,0x02,0x00
	.byte	0x00,0x00,0xFF,0xFD,0xFC,0xFE,0xFD,0xFC
	.byte	0xFC,0xFD,0xFE,0xFD,0xFD,0xFF,0xFF,0xFF
	.byte	0xFF,0x01,0x03,0x03,0x04,0x07,0x08,0x08
	.byte	0x07,0x08,0x08,0x06,0x04,0x02,0x02,0xFF
	.byte	0xFC,0xFB,0xFA,0xF9,0xF8,0xF8,0xF9,0xF9
	.byte	0xFA,0xFB,0xFE,0xFF,0xFF,0x02,0x03,0x04
	.byte	0x04,0x05,0x06,0x06,0x06,0x06,0x05,0x05
	.byte	0x03,0x02,0x02,0x00,0xFE,0xFE,0xFE,0xFE
	.byte	0xFC,0xFC,0xFD,0xFD,0xFC,0xFC,0xFE,0xFE
	.byte	0xFD,0xFE,0xFF,0x00,0xFF,0xFF,0x02,0x03
	.byte	0x03,0x04,0x06,0x08,0x08,0x07,0x08,0x08
	.byte	0x06,0x04,0x03,0x02,0x00,0xFD,0xFC,0xFB
	.byte	0xFA,0xF9,0xF9,0xFA,0xFA,0xFA,0xFC,0xFE
	.byte	0xFF,0xFF,0x01,0x02,0x03,0x04,0x05,0x06
	.byte	0x06,0x06,0x07,0x06,0x06,0x04,0x02,0x02
	.byte	0x00,0xFE,0xFD,0xFD,0xFC,0xFA,0xFA,0xFB
	.byte	0xFB,0xFB,0xFC,0xFD,0xFE,0xFE,0xFF,0x00
	.byte	0x01,0x00,0x00,0x02,0x03,0x03,0x04,0x06
	.byte	0x07,0x06,0x06,0x07,0x07,0x05,0x03,0x03
	.byte	0x02,0x00,0xFE,0xFD,0xFC,0xFB,0xF9,0xFA
	.byte	0xFA,0xFB,0xFA,0xFC,0xFE,0xFF,0xFF,0x01
	.byte	0x02,0x04,0x04,0x06,0x07,0x07,0x08,0x08
	.byte	0x08,0x07,0x05,0x04,0x03,0x01,0xFF,0xFE
	.byte	0xFE,0xFD,0xFB,0xFB,0xFC,0xFC,0xFB,0xFC
	.byte	0xFD,0xFD,0xFD,0xFE,0xFF,0x00,0xFF,0x00
	.byte	0x01,0x02,0x03,0x03,0x06,0x07,0x06,0x06
	.byte	0x07,0x07,0x05,0x03,0x02,0x01,0xFF,0xFD
	.byte	0xFC,0xFC,0xFB,0xFA,0xFA,0xFB,0xFB,0xFB
	.byte	0xFD,0xFF,0xFF,0x00,0x01,0x03,0x03,0x04
	.byte	0x05,0x06,0x06,0x06,0x06,0x07,0x06,0x05
	.byte	0x04,0x03,0x02,0x00,0xFF,0xFF,0xFE,0xFD
	.byte	0xFC,0xFD,0xFC,0xFC,0xFD,0xFD,0xFD,0xFD
	.byte	0xFE,0xFF,0x00,0xFF,0x00,0x02,0x03,0x03
	.byte	0x04,0x07,0x08,0x07,0x07,0x07,0x07,0x04
	.byte	0x02,0x02,0x00,0xFE,0xFC,0xFB,0xFB,0xFA
	.byte	0xF9,0xF9,0xFA,0xFA,0xFA,0xFC,0xFE,0xFF
	.byte	0xFF,0x00,0x02,0x03,0x03,0x04,0x05,0x06
	.byte	0x06,0x06,0x07,0x06,0x05,0x04,0x03,0x01
	.byte	0xFF,0xFF,0xFE,0xFD,0xFC,0xFB,0xFC,0xFC
	.byte	0xFB,0xFC,0xFD,0xFE,0xFE,0xFE,0xFF,0x00
	.byte	0x00,0x01,0x02,0x03,0x03,0x04,0x07,0x08
	.byte	0x07,0x07,0x08,0x08,0x05,0x04,0x03,0x02
	.byte	0xFF,0xFD,0xFC,0xFC,0xFB,0xF9,0xFA,0xFB
	.byte	0xFA,0xFB,0xFC,0xFE,0xFF,0xFF,0x00,0x02
	.byte	0x03,0x03,0x04,0x05,0x06,0x06,0x06,0x06
	.byte	0x06,0x04,0x03,0x03,0x01,0xFF,0xFE,0xFE
	.byte	0xFD,0xFB,0xFB,0xFC,0xFB,0xFB,0xFC,0xFD
	.byte	0xFD,0xFD,0xFE,0xFF,0x00,0x00,0x00,0x02
	.byte	0x03,0x03,0x04,0x07,0x07,0x07,0x07,0x07
	.byte	0x07,0x05,0x03,0x02,0x01,0xFF,0xFD,0xFC
	.byte	0xFC,0xFB,0xFA,0xFB,0xFC,0xFC,0xFC,0xFE
	.byte	0xFF,0x00,0x00,0x01,0x03,0x03,0x03,0x04
	.byte	0x05,0x06,0x06,0x06,0x06,0x06,0x05,0x04
	.byte	0x03,0x02,0x00,0xFF,0xFF,0xFD,0xFC,0xFB
	.byte	0xFC,0xFB,0xFB,0xFB,0xFC,0xFD,0xFC,0xFD
	.byte	0xFF,0xFF,0xFF,0x00,0x02,0x03,0x03,0x05
	.byte	0x07,0x07,0x07,0x06,0x07,0x06,0x04,0x02
	.byte	0x01,0x01,0xFE,0xFD,0xFC,0xFC,0xFB,0xF9
	.byte	0xFA,0xFB,0xFB,0xFB,0xFD,0xFF,0xFF,0xFF
	.byte	0x01,0x02,0x03,0x03,0x04,0x06,0x06,0x06
	.byte	0x07,0x07,0x07,0x05,0x04,0x04,0x02,0x00
	.byte	0x00,0xFF,0xFE,0xFC,0xFC,0xFC,0xFC,0xFB
	.byte	0xFB,0xFC,0xFD,0xFD,0xFE,0xFF,0xFF,0x00
	.byte	0x01,0x02,0x03,0x03,0x04,0x06,0x07,0x06
	.byte	0x06,0x06,0x06,0x04,0x02,0x01,0x00,0xFE
	.byte	0xFD,0xFC,0xFC,0xFA,0xF9,0xFA,0xFB,0xFB
	.byte	0xFB,0xFD,0xFF,0xFF,0xFF,0x01,0x02,0x03
	.byte	0x03,0x04,0x06,0x06,0x06,0x06,0x07,0x06
	.byte	0x05,0x04,0x04,0x02,0x00,0xFF,0xFF,0xFE
	.byte	0xFC,0xFC,0xFC,0xFC,0xFB,0xFC,0xFD,0xFD
	.byte	0xFD,0xFE,0xFF,0x00,0x00,0x02,0x03,0x04
	.byte	0x04,0x05,0x07,0x08,0x07,0x07,0x07,0x06
	.byte	0x04,0x02,0x01,0x00,0xFE,0xFD,0xFC,0xFC
	.byte	0xFA,0xFA,0xFA,0xFB,0xFB,0xFB,0xFD,0xFE
	.byte	0xFF,0xFF,0x00,0x02,0x02,0x02,0x03,0x05
	.byte	0x05,0x05,0x05,0x05,0x05,0x04,0x03,0x03
	.byte	0x01,0x00,0xFF,0xFF,0xFE,0xFD,0xFC,0xFC
	.byte	0xFC,0xFC,0xFC,0xFD,0xFD,0xFD,0xFE,0xFF
	.byte	0x00,0x00,0x01,0x03,0x03,0x03,0x04,0x05
	.byte	0x06,0x05,0x05,0x05,0x04,0x03,0x02,0x01
	.byte	0x01,0xFF,0xFF,0xFE,0xFE,0xFD,0xFD,0xFE
	.byte	0xFE,0xFE,0xFE,0xFF,0x00,0x00,0x00,0x01
	.byte	0x02,0x02,0x02,0x02,0x03,0x03,0x03,0x03
	.byte	0x03,0x03,0x02,0x02,0x01,0x01,0x00,0x00
	.byte	0x00,0x00,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF
	.byte	0xFF,0xFF,0xFF,0xFF,0x00,0x00,0x00,0x00
	.byte	0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01
	.byte	0x01,0x01,0x01,0x01,0x01,0x01,0x00,0x00
	.byte	0x00,0x00,0x00,0x00,0x00,0x00

	.byte	0x00

	.end
