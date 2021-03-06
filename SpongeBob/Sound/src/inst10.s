#TONE NAME     : inst10
#FREQUENCY     : 8000
#BASE NOTE#    : 48
#START ADDRESS : 000000
#LOOP ADDRESS  : 000000
#END ADDRESS   : 000481
#LOOP MODE     : 1Shot
#FINE TUNE     : 0
#WAVE EXP/COMP : 1
#VOL EXP/COMP  : 1

	.section .rodata
	.global	inst10
	.align	2

inst10:
	.short	0x0000
	.short	0x0000
	.int	16384000
	.int	0
	.int	481

	.byte	0xFA,0x08,0xF9,0x08,0xFB,0x03,0x04,0xEA
	.byte	0x30,0xDE,0x22,0xE4,0x1B,0xE8,0x13,0xEF
	.byte	0x12,0xF1,0x14,0xEE,0x12,0xF1,0x0A,0xF8
	.byte	0x08,0xF8,0x0B,0xF5,0x0C,0xF6,0x06,0xFC
	.byte	0x03,0xFD,0x06,0xF8,0x0B,0xF9,0x05,0xFE
	.byte	0x00,0xFF,0x04,0xFB,0x07,0xFA,0x06,0xFE
	.byte	0x01,0xFF,0x02,0xFD,0x05,0xFC,0x05,0xFD
	.byte	0x04,0xFE,0x02,0xFE,0x04,0xFC,0x05,0xFD
	.byte	0x04,0xFF,0x02,0xFE,0x04,0xFB,0x06,0xFB
	.byte	0x05,0xFE,0x02,0xFE,0x03,0xFC,0x04,0xFD
	.byte	0x04,0xFE,0x02,0xFF,0x02,0xFE,0x04,0xFD
	.byte	0x04,0xFE,0x03,0xFF,0x02,0xFE,0x03,0xFD
	.byte	0x03,0xFE,0x02,0xFF,0x02,0xFF,0x02,0xFE
	.byte	0x03,0xFE,0x03,0xFF,0x02,0xFF,0x02,0xFF
	.byte	0x03,0xFE,0x02,0xFF,0x02,0xFF,0x02,0xFE
	.byte	0x03,0xFF,0x02,0xFF,0x01,0x00,0x01,0xFF
	.byte	0x02,0xFF,0x02,0xFE,0x04,0xFE,0x03,0xFE
	.byte	0x03,0xFE,0x03,0xFE,0x02,0xFF,0x02,0xFF
	.byte	0x02,0xFF,0x02,0xFF,0x02,0xFF,0x02,0xFF
	.byte	0x02,0xFF,0x01,0xFF,0x01,0x00,0x01,0x00
	.byte	0x01,0x00,0x01,0x00,0x01,0x00,0x01,0x00
	.byte	0x01,0xFF,0x03,0xFE,0x02,0xFF,0x02,0xFF
	.byte	0x02,0xFF,0x02,0xFF,0x01,0x00,0x01,0x00
	.byte	0x01,0x00,0x01,0x00,0x01,0xFF,0x01,0xFF
	.byte	0x01,0xFF,0x02,0xFE,0x02,0xFF,0x02,0xFF
	.byte	0x02,0xFF,0x01,0x00,0x01,0x00,0x01,0x00
	.byte	0x00,0x00,0x01,0x00,0x01,0xFF,0x02,0xFF
	.byte	0x02,0x00,0x01,0x00,0x01,0x00,0x02,0xFF
	.byte	0x01,0x00,0x01,0x00,0x01,0x00,0x02,0xFF
	.byte	0x02,0xFE,0x03,0xFF,0x02,0xFF,0x03,0xFE
	.byte	0x03,0xFE,0x03,0xFE,0x01,0x02,0xFF,0x01
	.byte	0x00,0x01,0x00,0x00,0x01,0x00,0x01,0x00
	.byte	0x01,0x00,0x00,0x00,0x01,0x00,0x01,0x01
	.byte	0x00,0x01,0x00,0x01,0x00,0x01,0x00,0x01
	.byte	0x00,0x01,0x00,0x01,0x01,0x00,0x01,0x00
	.byte	0x01,0x01,0x00,0x01,0x01,0xFF,0x02,0xFF
	.byte	0x02,0x00,0x01,0x00,0x02,0xFF,0x02,0xFF
	.byte	0x01,0xFF,0x02,0x00,0x02,0x00,0x02,0x00
	.byte	0x01,0x01,0x00,0x02,0xFE,0x03,0xFF,0x02
	.byte	0x00,0x01,0x00,0x01,0x00,0x01,0x00,0x01
	.byte	0x00,0x00,0x01,0xFF,0x01,0x00,0x01,0x00
	.byte	0x01,0x00,0x01,0x00,0x01,0x00,0x01,0x00
	.byte	0x00,0x01,0x00,0x00,0x00,0x01,0x00,0x01
	.byte	0xFF,0x02,0xFF,0x02,0x00,0x00,0x01,0x00
	.byte	0x01,0x01,0x00,0x01,0x00,0x01,0x00,0xFF
	.byte	0x02,0xFF,0x02,0xFF,0x02,0x00,0x01,0x00
	.byte	0x00,0x00,0x01,0xFF,0x02,0x00,0x01,0x00
	.byte	0x02,0xFF,0x02,0xFF,0x02,0xFF,0x02,0xFF
	.byte	0x02,0x00,0x02,0xFF,0x02,0xFF,0x02,0xFF
	.byte	0x02,0xFF,0x02,0xFF,0x02,0xFF,0x02,0xFF
	.byte	0x02,0xFF,0x02,0x00,0x01,0x00,0x01,0xFF
	.byte	0x02,0xFE,0x02,0x00,0x01,0x00,0x01,0x00
	.byte	0x01,0x00,0x01,0x00,0x02,0x00,0x01,0x00
	.byte	0x01,0x00,0x01,0x00,0x01,0x00,0x01,0xFF
	.byte	0x02,0xFF,0x02,0xFF,0x02,0xFF,0x01,0x00
	.byte	0x01,0x00,0x01,0x00,0x01,0x00,0x01,0x00
	.byte	0x01,0x00,0x01,0x00,0x01,0x00,0x01,0x00
	.byte	0x01,0x00,0x01,0x00,0x01,0x00,0x01,0x00
	.byte	0x01,0x00,0x01,0x00,0x01,0x00,0x01,0x00
	.byte	0x01,0x00,0x01,0x00,0x01,0x00,0x01,0x00
	.byte	0x01

	.byte	0x00

	.end
