#TONE NAME     : inst41
#FREQUENCY     : 8000
#BASE NOTE#    : 48
#START ADDRESS : 000000
#LOOP ADDRESS  : 000000
#END ADDRESS   : 000541
#LOOP MODE     : 1Shot
#FINE TUNE     : 0
#WAVE EXP/COMP : 1
#VOL EXP/COMP  : 1

	.section .rodata
	.global	inst41
	.align	2

inst41:
	.short	0x0000
	.short	0x0000
	.int	16384000
	.int	0
	.int	541

	.byte	0x05,0xFD,0x05,0xFD,0x02,0xFD,0x10,0xFD
	.byte	0x1B,0xDF,0xE5,0x33,0x00,0xED,0x08,0x1B
	.byte	0xFA,0xFD,0xF7,0x0A,0xFD,0x02,0xFD,0x05
	.byte	0x05,0xFD,0xFD,0x08,0x00,0x02,0x05,0x00
	.byte	0xFA,0xFA,0x08,0x05,0x02,0xFA,0x00,0x0A
	.byte	0x08,0xF7,0x00,0x05,0x02,0x00,0x02,0xFA
	.byte	0x0D,0xF7,0x08,0xFD,0x00,0x05,0x00,0x00
	.byte	0x00,0x00,0x02,0x00,0x02,0x02,0x02,0x00
	.byte	0x02,0xFD,0x00,0x02,0x02,0xFD,0x02,0x00
	.byte	0x05,0xFA,0x02,0x00,0x05,0x00,0x02,0x00
	.byte	0x05,0xFA,0x08,0xFD,0x05,0xF5,0x15,0x08
	.byte	0xC7,0x36,0xF7,0xEF,0xFA,0x18,0x0D,0xF2
	.byte	0xE7,0x20,0xED,0x0D,0xF5,0x0D,0xFA,0xFD
	.byte	0x0D,0xEF,0x00,0x23,0x05,0xD4,0x0A,0x10
	.byte	0xEF,0xF7,0x08,0x3B,0xEF,0xC4,0xF7,0x0D
	.byte	0x18,0xEF,0x00,0x12,0x08,0x08,0x08,0xE7
	.byte	0xEF,0x0D,0x0A,0xEF,0xED,0xF2,0x30,0xF7
	.byte	0x40,0x00,0xC1,0xD7,0xCF,0x4E,0x2B,0xC7
	.byte	0xF5,0x33,0x1B,0xE5,0xCC,0x18,0x2B,0x08
	.byte	0xEA,0xFA,0x02,0xFA,0xFA,0x12,0x0A,0xFA
	.byte	0x00,0x10,0xF5,0xED,0xFA,0xF7,0x08,0xFA
	.byte	0x1D,0xFA,0xFA,0x00,0x02,0x10,0x05,0x02
	.byte	0xE2,0xF5,0x25,0xFD,0x00,0xFA,0xF5,0x1B
	.byte	0xF7,0x10,0xED,0x05,0x05,0x08,0x02,0xED
	.byte	0x15,0xF5,0x18,0xEF,0x10,0xED,0x20,0xDC
	.byte	0x23,0xE7,0xD7,0x53,0xD2,0xEA,0x08,0x48
	.byte	0xBF,0x2D,0xE7,0x05,0xF7,0x05,0xF5,0x0A
	.byte	0x05,0x00,0x05,0x00,0xF5,0x0A,0x00,0xF5
	.byte	0x0A,0xFA,0x05,0x0D,0xF2,0x02,0xFA,0x05
	.byte	0x02,0x02,0xF7,0x0A,0xFD,0x05,0xF7,0x0A
	.byte	0xF2,0x15,0xF7,0x00,0xF7,0x02,0x0A,0x02
	.byte	0xFA,0x08,0xFA,0x02,0xFD,0x05,0x02,0x00
	.byte	0x00,0x02,0x05,0x00,0x08,0x02,0xF7,0xFD
	.byte	0x00,0x05,0x05,0x08,0x00,0x08,0x00,0x02
	.byte	0xFA,0x08,0xF7,0x0D,0x05,0x02,0x08,0xFA
	.byte	0xFD,0x08,0x05,0xFD,0x02,0x05,0xFD,0x05
	.byte	0x02,0x05,0x00,0x02,0x00,0x00,0x02,0x02
	.byte	0xFA,0x0A,0xFD,0x02,0xFD,0x05,0x02,0x02
	.byte	0xFA,0x08,0x02,0x02,0xFD,0x08,0xFD,0xFA
	.byte	0x08,0x02,0x00,0x02,0xFA,0x08,0x00,0x02
	.byte	0x08,0x00,0xFD,0xFD,0x05,0x02,0x02,0xFD
	.byte	0x02,0x00,0x05,0x02,0x02,0x00,0xFD,0x08
	.byte	0x00,0x02,0x02,0x02,0xFA,0x05,0x02,0x00
	.byte	0x02,0x02,0xFA,0x00,0x05,0x08,0x00,0x00
	.byte	0xFD,0x05,0xFD,0x05,0x00,0x05,0x00,0x02
	.byte	0xFD,0x08,0x05,0xFD,0xFD,0xFD,0x05,0xFD
	.byte	0xFD,0x05,0x05,0x05,0xF7,0x00,0x05,0x02
	.byte	0xFD,0x00,0x02,0x00,0x05,0xFD,0x02,0xFD
	.byte	0x02,0x05,0x00,0x02,0x00,0x05,0x02,0x00
	.byte	0x00,0x02,0x00,0x08,0xFD,0x02,0x02,0x02
	.byte	0x00,0x02,0x02,0x00,0x02,0x02,0xFA,0x05
	.byte	0x00,0x02,0x00,0x00,0x02,0x00,0x00,0x00
	.byte	0x02,0x02,0x00,0x05,0xFD,0x00,0x02,0x02
	.byte	0x00,0x00,0x02,0x02,0x00,0x00,0x02,0x00
	.byte	0xFD,0x02,0x02,0x02,0xFD,0x02,0x02,0x02
	.byte	0xFD,0x05,0x00,0x02,0x00,0x02,0x00,0x02
	.byte	0x02,0x00,0x02,0x02,0x02,0x00,0x02,0x02
	.byte	0x00,0x00,0x00,0x02,0x00,0x02,0x02,0x05
	.byte	0xFD,0x00,0x02,0x02,0x00,0x02,0x02,0x00
	.byte	0x00,0x02,0x00,0x00,0x05,0xFD,0x02,0x00
	.byte	0x00,0x02,0x00,0x00,0x00,0x05,0x00,0xFD
	.byte	0x02,0x02,0x02,0x00,0x00,0x05,0x00,0x02
	.byte	0x00,0x00,0x02,0x02,0x00,0x02,0x00,0x02
	.byte	0x02,0x00,0x02,0x02,0x00,0x02,0x02,0x00
	.byte	0x00,0x02,0x02,0x02,0x00,0x00,0x02,0x00
	.byte	0x00,0x01,0x01,0x00,0x00,0x01,0x01,0x01
	.byte	0x00,0x00,0x02,0x00,0x00,0x00,0x00,0x00
	.byte	0x00,0x00,0x00,0x00,0x00

	.byte	0x00

	.end
