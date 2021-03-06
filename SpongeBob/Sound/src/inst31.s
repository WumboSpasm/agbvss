#TONE NAME     : inst31
#FREQUENCY     : 8000
#BASE NOTE#    : 48
#START ADDRESS : 000000
#LOOP ADDRESS  : 000000
#END ADDRESS   : 001552
#LOOP MODE     : 1Shot
#FINE TUNE     : 0
#WAVE EXP/COMP : 1
#VOL EXP/COMP  : 1

	.section .rodata
	.global	inst31
	.align	2

inst31:
	.short	0x0000
	.short	0x0000
	.int	16384000
	.int	0
	.int	1552

	.byte	0x02,0xFF,0x03,0x03,0x0F,0xF5,0xEF,0xEB
	.byte	0x09,0x20,0x1D,0xFC,0xD3,0x12,0x13,0xE5
	.byte	0x07,0x01,0xE9,0xF3,0x07,0x40,0xE5,0x06
	.byte	0xFE,0xE6,0x1D,0x23,0xE8,0xE2,0xE6,0x04
	.byte	0xF0,0xDA,0x11,0x02,0x11,0x2B,0x01,0x01
	.byte	0x0B,0x20,0x18,0xFB,0x14,0x0C,0xE5,0xF3
	.byte	0xDF,0xDF,0xE7,0xF8,0x03,0xF9,0x05,0x19
	.byte	0xF6,0xF5,0x15,0x16,0x29,0x10,0x04,0xF7
	.byte	0xF8,0x01,0xED,0xDE,0xEB,0xFE,0x03,0xF4
	.byte	0xE9,0x05,0x11,0x22,0x22,0x0C,0x0D,0x0B
	.byte	0xFF,0xF4,0xE2,0xF9,0x00,0xF9,0xF4,0xED
	.byte	0xF1,0x02,0x05,0xFF,0x07,0x17,0x23,0x11
	.byte	0x00,0xFA,0xFB,0xFE,0xF8,0xF1,0xF0,0xF1
	.byte	0xFB,0xF0,0xF6,0x05,0x0B,0x13,0x16,0x12
	.byte	0x0C,0x0C,0x0B,0x00,0xF6,0xF8,0xF3,0xF2
	.byte	0xED,0xEB,0xED,0xF9,0x08,0x0C,0x08,0x14
	.byte	0x15,0x13,0x0B,0x03,0x01,0x01,0xFD,0xF5
	.byte	0xEC,0xED,0xF4,0xF5,0xF5,0xFD,0x05,0x0D
	.byte	0x10,0x0F,0x0A,0x0E,0x11,0x07,0x00,0xFD
	.byte	0xF8,0xF4,0xEE,0xEC,0xEE,0xF5,0xFD,0xFF
	.byte	0x04,0x0F,0x12,0x13,0x0E,0x0B,0x07,0x09
	.byte	0xFF,0xF7,0xF0,0xF2,0xF3,0xF7,0xF8,0xFB
	.byte	0xFC,0x06,0x0C,0x0B,0x09,0x0E,0x15,0x0E
	.byte	0xF3,0xED,0xF0,0x14,0x15,0x0A,0xCD,0xE5
	.byte	0x1C,0xF7,0xF0,0x16,0xF3,0xFD,0xF5,0x37
	.byte	0x16,0xE6,0x0E,0xE2,0xFA,0x2F,0x06,0xE3
	.byte	0xE6,0xF4,0x0E,0xDD,0x01,0x18,0x01,0x26
	.byte	0x16,0xF4,0xFE,0x01,0x14,0xF0,0xF6,0x16
	.byte	0xF1,0xED,0xF8,0xEB,0xFC,0x00,0x10,0x0A
	.byte	0x03,0x16,0x0A,0xE6,0x03,0x07,0x15,0x0E
	.byte	0xF5,0xF3,0xEB,0xF9,0xFD,0xEE,0xF5,0x0A
	.byte	0x14,0x0C,0xF3,0xFA,0x0A,0x0E,0x1D,0x0A
	.byte	0xFA,0x03,0xF8,0xF2,0xE5,0xEE,0x05,0xFE
	.byte	0x00,0xFD,0xFF,0x09,0x0F,0x03,0xFF,0x0A
	.byte	0x1B,0x0E,0xFA,0xEE,0xEF,0xFB,0xFE,0xF7
	.byte	0xF7,0xFA,0x05,0xFF,0xF8,0x05,0x08,0x0D
	.byte	0x0F,0x0A,0x02,0x02,0x04,0xFD,0xF0,0xF6
	.byte	0xFA,0xFC,0xFB,0xF6,0xF5,0xFB,0x07,0x11
	.byte	0x07,0x0C,0x11,0x0A,0x03,0xFB,0xF9,0xFD
	.byte	0xFC,0xFB,0xF1,0xF0,0xFD,0x01,0xFE,0xFE
	.byte	0x01,0x0C,0x0F,0x0D,0x07,0xFF,0x0A,0x05
	.byte	0xF9,0xF9,0xFB,0xFB,0xF6,0xF0,0xF5,0xF9
	.byte	0x04,0x07,0x02,0x07,0x0D,0x0E,0x09,0x04
	.byte	0x01,0x02,0x04,0xFE,0xF7,0xF5,0xF7,0xFA
	.byte	0xF9,0xF8,0xF9,0x02,0x0D,0x0B,0x08,0x05
	.byte	0x07,0x08,0x04,0x01,0xFE,0xFC,0xFD,0xFA
	.byte	0xF7,0xFA,0xFA,0xFE,0xFE,0x03,0x07,0x07
	.byte	0x07,0x03,0x03,0x09,0x07,0x01,0xFD,0xFA
	.byte	0xFA,0xF8,0xFD,0xF9,0xFC,0xFF,0x01,0x06
	.byte	0x08,0x07,0x03,0x03,0x0A,0x06,0x02,0x00
	.byte	0xFB,0xFD,0xFA,0xF9,0xF9,0xF9,0x01,0x05
	.byte	0x01,0x01,0x03,0x06,0x04,0x07,0x07,0x05
	.byte	0x03,0x00,0xFB,0xFB,0xFE,0xFB,0xFA,0xFE
	.byte	0x01,0x01,0xFE,0x01,0x01,0x02,0x06,0x03
	.byte	0x03,0x02,0x03,0x04,0x00,0xFC,0xFD,0x01
	.byte	0x00,0xFC,0xFC,0xFE,0x03,0x06,0x03,0x00
	.byte	0x00,0x06,0x06,0x00,0xFC,0xFF,0xFD,0x00
	.byte	0xFF,0x00,0x00,0x01,0x00,0xFC,0xFF,0x03
	.byte	0x01,0x02,0x02,0x03,0x02,0x02,0x05,0x01
	.byte	0xFC,0xFF,0xFF,0xFE,0x03,0xFF,0xFD,0xFD
	.byte	0xFF,0x02,0x03,0x06,0x06,0x02,0x00,0xFF
	.byte	0x01,0x03,0xFF,0xFD,0xFD,0xFB,0x00,0x00
	.byte	0x00,0x00,0xFE,0x02,0x04,0x03,0x07,0x00
	.byte	0x03,0x02,0xFF,0xFE,0xFF,0x02,0xFF,0xFB
	.byte	0xFE,0xFC,0xFE,0x02,0x02,0x04,0x04,0x04
	.byte	0x04,0x02,0x05,0x04,0xFE,0xFD,0xFD,0xFE
	.byte	0xFF,0xFC,0xFC,0xF9,0xFE,0x04,0x08,0x04
	.byte	0x04,0x04,0x03,0x04,0x05,0xFF,0x01,0xFE
	.byte	0xF4,0xF1,0xF2,0x02,0x09,0x06,0x0A,0x0E
	.byte	0x01,0x05,0x12,0x17,0x11,0x0A,0xFB,0xE8
	.byte	0xE5,0xEB,0x03,0x05,0x05,0xF8,0xF7,0xFB
	.byte	0x06,0x19,0x19,0x12,0x01,0xF2,0xE6,0xEF
	.byte	0x05,0x0A,0x02,0xF3,0xE7,0xE2,0xE8,0xEF
	.byte	0xF0,0xFC,0x0E,0x11,0x11,0x19,0x17,0x1A
	.byte	0x1E,0x16,0x0D,0x02,0xEE,0xED,0xF4,0xFC
	.byte	0xF8,0xF9,0x01,0x00,0xF5,0xF2,0xF7,0x0B
	.byte	0x16,0x12,0x0C,0x08,0x02,0x06,0x07,0x03
	.byte	0x02,0xFC,0xF3,0xEC,0xE8,0xE6,0xEE,0xF3
	.byte	0x00,0x0C,0x0B,0x02,0x08,0x0E,0x0A,0x06
	.byte	0x01,0x02,0x04,0x03,0x05,0x00,0xF5,0xE7
	.byte	0xE5,0xF1,0xFB,0xFD,0x04,0x0A,0x0D,0x0E
	.byte	0x0A,0x02,0x05,0x0D,0x0A,0xFF,0xFB,0xFA
	.byte	0xFC,0xF9,0xF5,0xFB,0x06,0x08,0x0A,0x10
	.byte	0x09,0xFE,0xF8,0xFB,0x00,0x03,0x00,0xFD
	.byte	0xFB,0xFC,0xFB,0xF6,0xF1,0xF9,0x08,0x0C
	.byte	0x08,0x08,0x02,0xFE,0x01,0x03,0x02,0xFF
	.byte	0x02,0x07,0x05,0xFF,0xF8,0xFA,0x05,0x0E
	.byte	0x0D,0x05,0x01,0x02,0x05,0xFF,0xF8,0xF9
	.byte	0xFF,0xFF,0xF9,0xF4,0xF3,0xF7,0xFC,0x03
	.byte	0x09,0x0C,0x0D,0x0B,0x0B,0x07,0x03,0x00
	.byte	0xFC,0x00,0x03,0x00,0xFF,0xFC,0xF8,0xF5
	.byte	0xF5,0xF7,0xFB,0x01,0x07,0x09,0x08,0x04
	.byte	0x03,0x08,0x09,0x06,0x02,0xFE,0xFC,0xFB
	.byte	0xFA,0xFA,0xFE,0x05,0x0A,0x0C,0x0A,0x08
	.byte	0x06,0x03,0x01,0x01,0x04,0x04,0xFF,0xFB
	.byte	0xFA,0xFB,0xFC,0xFE,0xFD,0xFB,0xFC,0x00
	.byte	0x01,0x00,0x03,0x04,0x00,0xFD,0xFD,0xFE
	.byte	0x01,0x02,0x02,0x02,0x00,0x01,0x03,0x04
	.byte	0x06,0x07,0x05,0x01,0xFC,0xFA,0xFB,0xFE
	.byte	0x01,0x01,0xFE,0xFB,0xFC,0xFE,0xFF,0x01
	.byte	0x05,0x08,0x07,0x04,0x02,0x02,0x02,0x01
	.byte	0x00,0x00,0x00,0xFF,0xFF,0x00,0x00,0x01
	.byte	0x02,0x02,0x00,0xFF,0xFF,0x00,0x03,0x06
	.byte	0x06,0x05,0x02,0x01,0xFF,0xFE,0xFC,0xFB
	.byte	0xFA,0xF9,0xFB,0xFD,0x00,0x02,0x03,0x06
	.byte	0x07,0x06,0x04,0x02,0x02,0x02,0x02,0x00
	.byte	0xFF,0xFF,0xFF,0xFF,0xFE,0xFD,0xFE,0x00
	.byte	0x01,0x01,0x01,0x02,0x04,0x06,0x03,0x00
	.byte	0xFF,0xFE,0xFD,0xFB,0xFB,0xFC,0xFD,0xFE
	.byte	0xFF,0x00,0x02,0x04,0x05,0x05,0x05,0x04
	.byte	0x02,0x00,0x00,0x00,0xFF,0xFF,0xFF,0xFF
	.byte	0xFF,0x00,0x01,0x02,0x01,0x01,0x00,0x00
	.byte	0x00,0x00,0x00,0x00,0x00,0x00,0x01,0x02
	.byte	0x02,0x02,0x01,0x00,0x01,0x02,0x02,0x01
	.byte	0x01,0x02,0x00,0xFF,0xFF,0xFF,0xFF,0xFE
	.byte	0xFE,0xFE,0xFE,0xFF,0xFF,0x00,0x01,0x03
	.byte	0x02,0x02,0x01,0x01,0x01,0x01,0x00,0x00
	.byte	0x00,0x00,0xFF,0x00,0x00,0x00,0x00,0x01
	.byte	0x01,0x01,0x02,0x03,0x03,0x03,0x02,0x01
	.byte	0x00,0x00,0x00,0xFF,0xFF,0xFF,0xFF,0x00
	.byte	0x00,0xFF,0x01,0x01,0x02,0x01,0x01,0x01
	.byte	0x01,0x01,0x02,0x02,0x02,0x02,0x01,0x00
	.byte	0x00,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0x00
	.byte	0x00,0x01,0x02,0x01,0x01,0x01,0x01,0x01
	.byte	0x01,0x00,0x01,0x01,0x01,0x00,0xFF,0xFF
	.byte	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte	0x01,0x01,0x01,0x01,0x00,0x00,0x00,0x00
	.byte	0x00,0x01,0x01,0x00,0x00,0x00,0x01,0x00
	.byte	0x00,0x01,0x01,0x01,0x00,0x00,0x00,0x01
	.byte	0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01
	.byte	0x01,0x01,0x01,0x00,0x00,0x00,0x01,0x00
	.byte	0x00,0x01,0x01,0x01,0x00,0x00,0x00,0x01
	.byte	0x01,0x01,0x00,0x01,0x01,0x00,0x00,0x00
	.byte	0x00,0x01,0x01,0x00,0x00,0x00,0x01,0x01
	.byte	0x01,0x03,0x04,0x01,0xFF,0x02,0x09,0xF6
	.byte	0xEA,0xE5,0xF9,0x17,0x15,0x0F,0x15,0x08
	.byte	0x01,0x1A,0x1E,0x14,0x0E,0x0D,0xDF,0xD0
	.byte	0xCE,0xF0,0x12,0x0B,0x00,0xEC,0xFE,0x06
	.byte	0x26,0x31,0x27,0x13,0xF8,0xDC,0xCD,0xED
	.byte	0x0A,0x0A,0xF5,0xD9,0xCA,0xCB,0xDE,0xE2
	.byte	0xEC,0x09,0x20,0x1B,0x29,0x2F,0x2B,0x2F
	.byte	0x2E,0x1F,0x14,0xEE,0xD8,0xE4,0xF6,0xF9
	.byte	0xED,0xF9,0x09,0xFC,0xE9,0xE8,0xFD,0x23
	.byte	0x23,0x17,0x0C,0x03,0x02,0x0E,0x05,0x06
	.byte	0xFE,0xF2,0xE1,0xDD,0xD4,0xDB,0xE5,0xF0
	.byte	0x0A,0x16,0x0A,0x03,0x13,0x14,0x0E,0x06
	.byte	0xFE,0x04,0x06,0x0C,0x0A,0xF7,0xDE,0xCF
	.byte	0xDB,0xF1,0xF6,0xF9,0x0F,0x16,0x16,0x11
	.byte	0x05,0x03,0x12,0x1A,0x08,0xFA,0xF7,0xF7
	.byte	0xF9,0xED,0xF0,0x00,0x0E,0x0C,0x18,0x16
	.byte	0x02,0xF1,0xF1,0xFB,0x06,0x04,0xFD,0xF6
	.byte	0xF9,0xFC,0xF5,0xE7,0xE7,0x01,0x15,0x10
	.byte	0x0C,0x09,0xFD,0xFB,0x01,0x05,0x03,0xFE
	.byte	0x08,0x0E,0x07,0xFA,0xF2,0xFD,0x12,0x1D
	.byte	0x10,0x01,0xFD,0x06,0x04,0xF3,0xEF,0xF8
	.byte	0x01,0xFA,0xED,0xE8,0xEC,0xF3,0xFE,0x0B
	.byte	0x14,0x18,0x17,0x14,0x11,0x07,0x02,0xF8
	.byte	0xF8,0x04,0x03,0xFF,0xFD,0xF6,0xED,0xE8
	.byte	0xEA,0xF1,0xFC,0x07,0x0E,0x10,0x0A,0x01
	.byte	0x08,0x12,0x12,0x08,0xFE,0xF9,0xF7,0xF4
	.byte	0xF2,0xF7,0x03,0x11,0x16,0x16,0x12,0x0D
	.byte	0x06,0x02,0x01,0x06,0x0A,0x03,0xF9,0xF6
	.byte	0xF4,0xF5,0xFB,0xFC,0xF8,0xF5,0xFA,0x00
	.byte	0xFF,0x01,0x08,0x04,0xFA,0xF7,0xF8,0x00
	.byte	0x03,0x04,0x06,0x05,0x03,0x05,0x07,0x0A
	.byte	0x0D,0x0C,0x04,0xFA,0xF1,0xF2,0xF7,0xFD
	.byte	0x02,0xFF,0xF8,0xF6,0xFA,0xFD,0x00,0x07
	.byte	0x0F,0x11,0x0B,0x03,0x01,0x02,0x01,0xFE
	.byte	0xFE,0x01,0xFF,0xFD,0x00,0x01,0x02,0x04
	.byte	0x06,0x02,0xFF,0xFC,0xFD,0x00,0x0A,0x0E
	.byte	0x0C,0x07,0x02,0x00,0xFC,0xFA,0xF6,0xF2
	.byte	0xEE,0xF2,0xF6,0xFB,0x02,0x04,0x09,0x0E
	.byte	0x0E,0x0B,0x06,0x03,0x05,0x07,0x04,0xFF
	.byte	0xFE,0xFE,0xFE,0xFD,0xF8,0xF6,0xFA,0x00
	.byte	0x02,0x01,0x02,0x06,0x0D,0x0D,0x02,0xFB
	.byte	0xFC,0xFB,0xF7,0xF1,0xF3,0xF7,0xFA,0xFC
	.byte	0xFD,0xFF,0x06,0x0B,0x0C,0x0B,0x09,0x06
	.byte	0x00,0xFF,0x00,0xFF,0xFD,0xFC,0xFD,0xFD
	.byte	0xFE,0x00,0x04,0x04,0x01,0x00,0xFF,0xFF
	.byte	0xFF,0xFF,0xFE,0xFE,0xFE,0x02,0x05,0x06
	.byte	0x06,0x04,0x02,0x02,0x05,0x06,0x04,0x02
	.byte	0x03,0x03,0xFD,0xFC,0xFC,0xFD,0xFB,0xF9
	.byte	0xF8,0xF9,0xFB,0xFC,0xFD,0x00,0x06,0x07
	.byte	0x06,0x02,0xFF,0x01,0x03,0x01,0xFE,0xFE
	.byte	0xFE,0xFE,0xFE,0xFF,0xFD,0xFE,0x00,0x01
	.byte	0x01,0x05,0x08,0x08,0x09,0x07,0x03,0x01
	.byte	0x00,0xFF,0xFB,0xF9,0xF8,0xFB,0xFD,0xFE
	.byte	0xFC,0xFE,0x03,0x05,0x05,0x01,0x00,0x02
	.byte	0x03,0x06,0x06,0x06,0x06,0x07,0x03,0xFE
	.byte	0xFC,0xFB,0xFA,0xFB,0xFB,0xFB,0xFB,0xFD
	.byte	0x01,0x07,0x07,0x05,0x06,0x05,0x05,0x04
	.byte	0x02,0x01,0x05,0x05,0x01,0xFB,0xF8,0xFA
	.byte	0xFE,0xFE,0xFE,0xFF,0x00,0x00,0x01,0x01
	.byte	0x01,0x01,0x01,0x01,0x00,0x00,0x00,0x00

	.byte	0x00

	.end
