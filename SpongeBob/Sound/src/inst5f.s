#TONE NAME     : inst5f
#FREQUENCY     : 8000
#BASE NOTE#    : 48
#START ADDRESS : 000000
#LOOP ADDRESS  : 000000
#END ADDRESS   : 000573
#LOOP MODE     : 1Shot
#FINE TUNE     : 0
#WAVE EXP/COMP : 1
#VOL EXP/COMP  : 1

	.section .rodata
	.global	inst5f
	.align	2

inst5f:
	.short	0x0000
	.short	0x0000
	.int	16384000
	.int	0
	.int	573

	.byte	0x02,0x03,0xFD,0x05,0xFE,0x02,0x01,0xFE
	.byte	0x04,0xFB,0x04,0xFD,0x01,0x02,0xFE,0x05
	.byte	0xFC,0x05,0xFE,0x03,0x01,0xFF,0x02,0xFF
	.byte	0x02,0x00,0x00,0x00,0x01,0xFE,0x05,0xFC
	.byte	0x06,0xFD,0x02,0x00,0x00,0x00,0x00,0x01
	.byte	0xFF,0x06,0xF8,0x0D,0xF3,0x0D,0xF9,0xFF
	.byte	0x0D,0xEA,0x1D,0xE1,0x1A,0xF2,0x00,0x10
	.byte	0xE5,0x26,0xDB,0x23,0xE9,0x0A,0x06,0xEE
	.byte	0x1D,0xDE,0x24,0xE0,0x19,0xF4,0xFF,0x11
	.byte	0xE3,0x27,0xD7,0x28,0xE3,0x0E,0x04,0xE9
	.byte	0x27,0xD1,0x31,0xD6,0x1D,0xF6,0xF8,0x1B
	.byte	0xD9,0x2F,0xD2,0x28,0xE5,0x0B,0x06,0xEA
	.byte	0x26,0xD3,0x32,0xD5,0x22,0xF0,0xFE,0x15
	.byte	0xDB,0x30,0xCC,0x2F,0xDB,0x14,0x00,0xEE
	.byte	0x24,0xD4,0x31,0xD3,0x24,0xEB,0x04,0x0F
	.byte	0xE3,0x2A,0xD3,0x2D,0xDD,0x19,0xF9,0xF8
	.byte	0x1A,0xDB,0x2E,0xD1,0x2A,0xE1,0x0E,0x05
	.byte	0xE8,0x28,0xD0,0x33,0xD4,0x21,0xF1,0xFC
	.byte	0x17,0xDB,0x2F,0xCF,0x2C,0xDE,0x14,0xFF
	.byte	0xF1,0x21,0xD6,0x32,0xD1,0x29,0xE5,0x0A
	.byte	0x0A,0xE4,0x2B,0xCE,0x34,0xD5,0x1F,0xF6
	.byte	0xF8,0x1C,0xD7,0x32,0xCE,0x2B,0xE3,0x0B
	.byte	0x08,0xE7,0x28,0xD2,0x31,0xD6,0x20,0xF1
	.byte	0xFF,0x14,0xDD,0x2E,0xCE,0x2F,0xDC,0x14
	.byte	0x01,0xEC,0x28,0xCE,0x37,0xCF,0x26,0xED
	.byte	0xFF,0x15,0xDB,0x30,0xCE,0x30,0xDC,0x17
	.byte	0xFD,0xF1,0x21,0xD4,0x33,0xCE,0x2A,0xE5
	.byte	0x07,0x0E,0xE0,0x2F,0xCC,0x34,0xD9,0x18
	.byte	0xFC,0xF0,0x21,0xD4,0x30,0xD4,0x22,0xED
	.byte	0x03,0x0F,0xE4,0x28,0xD5,0x29,0xE0,0x13
	.byte	0xFD,0xF3,0x1C,0xDB,0x2A,0xDA,0x1D,0xF3
	.byte	0xFE,0x13,0xE3,0x23,0xE0,0x1A,0xF1,0x04
	.byte	0x06,0xF3,0x11,0xEF,0x11,0xF3,0x0E,0xF5
	.byte	0x0B,0xFB,0x01,0x06,0xF4,0x11,0xEC,0x14
	.byte	0xF0,0x0B,0xFE,0xFD,0x0A,0xF4,0x0E,0xF3
	.byte	0x0C,0xF6,0x08,0xFC,0x02,0x04,0xFA,0x0D
	.byte	0xF2,0x10,0xF4,0x09,0xFF,0xFC,0x0B,0xF1
	.byte	0x10,0xF3,0x08,0xFD,0xFE,0x06,0xF9,0x09
	.byte	0xFA,0x06,0xFD,0x03,0xFF,0x01,0x01,0xFD
	.byte	0x06,0xF9,0x0A,0xF8,0x08,0xFD,0x00,0x07
	.byte	0xF6,0x0C,0xF6,0x08,0xFE,0xFF,0x06,0xF9
	.byte	0x09,0xFB,0x04,0x00,0xFF,0x02,0xFF,0x00
	.byte	0x01,0x00,0xFF,0x03,0xFC,0x06,0xFC,0x03
	.byte	0x01,0xFE,0x06,0xFB,0x05,0xFE,0x01,0x02
	.byte	0xFF,0x00,0x02,0xFF,0x03,0x00,0xFF,0x05
	.byte	0xFA,0x07,0xFB,0x02,0x02,0xFB,0x09,0xF8
	.byte	0x08,0xFD,0x01,0x04,0xFB,0x08,0xFA,0x06
	.byte	0xFC,0x02,0x00,0xFE,0x03,0xFC,0x06,0xFA
	.byte	0x08,0xFB,0x04,0xFF,0xFE,0x06,0xF8,0x0B
	.byte	0xF6,0x08,0xFC,0x01,0x05,0xF9,0x0B,0xF5
	.byte	0x0B,0xF9,0x03,0x01,0xFB,0x09,0xF7,0x0B
	.byte	0xF8,0x06,0xFE,0x00,0x05,0xFA,0x09,0xF8
	.byte	0x09,0xFA,0x04,0x00,0xFD,0x07,0xF8,0x0A
	.byte	0xF8,0x08,0xFD,0x01,0x05,0xF9,0x09,0xF8
	.byte	0x07,0xFC,0x02,0x00,0xFE,0x04,0xFC,0x06
	.byte	0xFB,0x05,0xFC,0x04,0xFE,0x00,0x04,0xFB
	.byte	0x0A,0xF8,0x09,0xFC,0x03,0x04,0xFA,0x0A
	.byte	0xF7,0x09,0xFB,0x03,0x01,0xFC,0x06,0xFA
	.byte	0x07,0xFA,0x06,0xFD,0x02,0x01,0xFD,0x06
	.byte	0xF9,0x09,0xF8,0x06,0xFE,0x00,0x06,0xF9
	.byte	0x0A,0xF8,0x08,0xFC,0x01,0x02,0xFC,0x07
	.byte	0xFA,0x08,0xFA,0x06,0xFE,0x01,0x03,0xFC
	.byte	0x07,0xF8,0x08,0xFA,0x04,0x00,0xFD,0x07
	.byte	0xF9,0x09,0xFA,0x05,0xFF,0x00,0x04,0xFC
	.byte	0x06,0xFB,0x05,0xFE,0x01,0x01,0x00,0x03
	.byte	0xFE,0x05,0xFC,0x04,0xFE,0x01,0x01,0xFD
	.byte	0x05,0xFB,0x05,0xFE,0x02,0x02,0xFE,0x04
	.byte	0xFD,0x03,0xFF,0x01,0x01,0xFF,0x01,0xFF
	.byte	0x01,0x00,0x01,0x00,0x01,0x00,0x01,0x01
	.byte	0x00,0x02,0xFF,0x02,0x00,0x01,0x01,0x00
	.byte	0x01,0x00,0x01,0x01,0x00,0x01,0x00,0x01
	.byte	0x01,0x00,0x01,0x00,0x01

	.byte	0x00

	.end