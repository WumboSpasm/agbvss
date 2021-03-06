#TONE NAME     : inst2b
#FREQUENCY     : 8000
#BASE NOTE#    : 48
#START ADDRESS : 000000
#LOOP ADDRESS  : 000000
#END ADDRESS   : 002314
#LOOP MODE     : 1Shot
#FINE TUNE     : 0
#WAVE EXP/COMP : 1
#VOL EXP/COMP  : 1

	.section .rodata
	.global	inst2b
	.align	2

inst2b:
	.short	0x0000
	.short	0x0000
	.int	16384000
	.int	0
	.int	2314

	.byte	0x06,0x09,0x09,0x08,0x07,0x06,0x03,0xFF
	.byte	0xFD,0xFB,0xFA,0xF8,0xFB,0xFC,0xFB,0xFC
	.byte	0xFD,0xFF,0xFF,0x01,0x03,0x05,0x05,0x04
	.byte	0x02,0x06,0x05,0x04,0x04,0x02,0xFF,0xFC
	.byte	0xF9,0xFB,0xF8,0xFA,0xF9,0xFC,0xFB,0xFA
	.byte	0xFD,0x01,0x02,0x08,0x06,0x09,0x09,0x09
	.byte	0x07,0x08,0x06,0x04,0x01,0x03,0xFC,0xFA
	.byte	0xF7,0xF7,0xF8,0xF6,0xF6,0xFF,0xFD,0x02
	.byte	0x03,0x05,0x0A,0x0E,0x0D,0x0C,0x0E,0x13
	.byte	0x10,0x0D,0x01,0x00,0x01,0xF8,0xF5,0xEB
	.byte	0xEE,0xF5,0xEC,0xEB,0xEF,0xFE,0xFB,0x01
	.byte	0xFF,0x13,0x12,0x10,0x0F,0x11,0x17,0x10
	.byte	0x11,0x0E,0x09,0x04,0xFC,0x02,0x02,0xF8
	.byte	0xF3,0xEF,0xF4,0xFA,0xF8,0xF8,0xFA,0x01
	.byte	0x00,0xFA,0xFE,0xFB,0xFD,0xF9,0xF3,0xF4
	.byte	0xED,0xF5,0xFC,0xFA,0xF3,0xF8,0xF6,0x00
	.byte	0xFF,0x02,0x08,0x0B,0x0E,0x0E,0x1D,0x1E
	.byte	0x20,0x22,0x16,0x1B,0x09,0x05,0x09,0xF8
	.byte	0xF3,0xF4,0xEB,0xE9,0xF4,0xEF,0xEE,0xF4
	.byte	0xF7,0xF6,0xF6,0x02,0x05,0x01,0x0B,0x14
	.byte	0x08,0x0D,0x10,0x0D,0x03,0xFC,0xF3,0xF3
	.byte	0xEE,0xE7,0xF4,0xF1,0xF6,0xFA,0x03,0x08
	.byte	0x06,0x12,0x13,0x1A,0x1A,0x1B,0x1F,0x1B
	.byte	0x12,0x12,0x07,0x03,0xF9,0xF2,0xE7,0xE1
	.byte	0xE2,0xDC,0xE7,0xEA,0xF4,0xFC,0xF7,0xF9
	.byte	0xFB,0xF2,0xF3,0xF8,0xEE,0xEB,0xF6,0xFF
	.byte	0xFC,0x0A,0x04,0x06,0x05,0xFE,0x0D,0x09
	.byte	0x1F,0x1B,0x1B,0x24,0x1E,0x37,0x2E,0x37
	.byte	0x29,0x2B,0x27,0x11,0x1E,0x06,0x07,0xF1
	.byte	0xDD,0xDC,0xC7,0xC9,0xBF,0xB9,0xBE,0xBF
	.byte	0xCD,0xD0,0xD8,0xE9,0xE8,0xF3,0x01,0x0C
	.byte	0x0D,0x15,0x24,0x1F,0x28,0x29,0x32,0x36
	.byte	0x37,0x38,0x36,0x2F,0x2A,0x26,0x19,0x0F
	.byte	0x10,0x01,0x03,0xF7,0xE8,0xDE,0xD4,0xC4
	.byte	0xBD,0xB5,0xB0,0xB3,0xB7,0xC7,0xD4,0xE8
	.byte	0xEC,0x00,0x0D,0x21,0x2D,0x28,0x31,0x2E
	.byte	0x38,0x2E,0x2F,0x23,0x1B,0x0D,0x05,0x06
	.byte	0x03,0x09,0x0B,0x0D,0x0F,0x1B,0x1A,0x1E
	.byte	0x14,0x0C,0x09,0x0E,0xFA,0xED,0xE8,0xE4
	.byte	0xDA,0xCA,0xC0,0xB7,0xBA,0xB6,0xC7,0xCF
	.byte	0xD8,0xE9,0x04,0x0E,0x1F,0x2C,0x32,0x3D
	.byte	0x3D,0x38,0x34,0x39,0x2B,0x28,0x1D,0x11
	.byte	0x0A,0x05,0xFB,0xF5,0xF8,0xED,0xF2,0xF3
	.byte	0xFA,0xFE,0xF9,0xFC,0xFF,0xF5,0xEC,0xEE
	.byte	0xF0,0xDC,0xD4,0xDF,0xE2,0xE3,0xE2,0xF2
	.byte	0xF7,0xF7,0xFF,0x02,0x05,0x04,0x05,0x10
	.byte	0x19,0x14,0x1B,0x27,0x2E,0x29,0x27,0x22
	.byte	0x23,0x1E,0x15,0x1A,0x17,0x0F,0x07,0x09
	.byte	0xFB,0xF6,0xED,0xDE,0xDE,0xD1,0xC4,0xC7
	.byte	0xD2,0xD1,0xD1,0xD7,0xDF,0xE8,0xF3,0xFA
	.byte	0x0D,0x17,0x18,0x2B,0x33,0x3B,0x39,0x36
	.byte	0x36,0x2E,0x20,0x10,0x0C,0x00,0xE9,0xE2
	.byte	0xE7,0xEA,0xEA,0xED,0xFD,0x01,0x05,0x0B
	.byte	0x0F,0x0C,0x06,0x01,0x04,0x03,0xF0,0xEC
	.byte	0xEF,0xED,0xE0,0xD8,0xD2,0xD1,0xCF,0xD4
	.byte	0xE5,0xF0,0xF7,0x08,0x20,0x22,0x33,0x3A
	.byte	0x3A,0x42,0x3B,0x34,0x30,0x32,0x22,0x0F
	.byte	0x03,0xF6,0xEC,0xE0,0xD4,0xD8,0xD1,0xCD
	.byte	0xDC,0xE3,0xEA,0xF0,0xF9,0x01,0x04,0x01
	.byte	0x00,0x09,0x05,0xF8,0xF9,0xFF,0xFF,0xFC
	.byte	0x01,0x0B,0x09,0x08,0x0C,0x0E,0x06,0x06
	.byte	0x09,0x10,0x12,0x0C,0x14,0x1A,0x1C,0x15
	.byte	0x11,0x0B,0x07,0x00,0xFD,0xFE,0xFD,0xF2
	.byte	0xF4,0xF7,0xE9,0xEB,0xE5,0xDF,0xDF,0xD8
	.byte	0xD9,0xE0,0xEC,0xEB,0xEF,0xF6,0xFB,0x05
	.byte	0x0C,0x11,0x21,0x23,0x28,0x36,0x38,0x35
	.byte	0x33,0x2E,0x26,0x1A,0x07,0xFA,0xF4,0xE6
	.byte	0xD5,0xD5,0xD8,0xD7,0xDA,0xE5,0xF0,0xF5
	.byte	0xFA,0x05,0x0A,0x04,0x0A,0x0A,0x0E,0x07
	.byte	0xFF,0x05,0x02,0x00,0xF7,0xF1,0xEB,0xE9
	.byte	0xEA,0xF0,0xF9,0x02,0x04,0x15,0x1E,0x1B
	.byte	0x29,0x2A,0x29,0x28,0x22,0x1D,0x1A,0x16
	.byte	0x05,0xFB,0xEE,0xE0,0xDB,0xD1,0xCA,0xD1
	.byte	0xCE,0xD4,0xE3,0xEB,0xEF,0xFE,0x06,0x0C
	.byte	0x10,0x10,0x13,0x19,0x16,0x0E,0x13,0x12
	.byte	0x0C,0x0E,0x10,0x0F,0x0B,0x07,0x08,0x02
	.byte	0xF7,0xFD,0xFB,0xFF,0xF8,0xFB,0x03,0x04
	.byte	0x08,0x05,0x04,0xFF,0xFC,0xFD,0xFD,0xFE
	.byte	0xFB,0xF7,0xFE,0xF8,0xEE,0xF6,0xF1,0xEC
	.byte	0xEB,0xEE,0xEE,0xF6,0xFD,0xFF,0x05,0x06
	.byte	0x09,0x13,0x14,0x18,0x23,0x23,0x27,0x2E
	.byte	0x27,0x1F,0x21,0x14,0x08,0xFC,0xED,0xE1
	.byte	0xDC,0xD5,0xCB,0xD1,0xD2,0xD5,0xE2,0xEC
	.byte	0xF6,0x01,0x06,0x13,0x14,0x11,0x1A,0x1B
	.byte	0x19,0x0D,0x12,0x0F,0x07,0x05,0xFE,0xF7
	.byte	0xEE,0xED,0xF1,0xF4,0xF9,0xFE,0x06,0x12
	.byte	0x10,0x12,0x1C,0x1B,0x17,0x14,0x12,0x0C
	.byte	0x08,0x01,0xFA,0xF1,0xE3,0xDC,0xDD,0xD4
	.byte	0xD3,0xDD,0xE2,0xE9,0xF9,0xFC,0x05,0x15
	.byte	0x15,0x1C,0x1D,0x1D,0x1C,0x1F,0x1B,0x14
	.byte	0x16,0x0D,0x0B,0x0D,0x07,0x03,0x02,0xF9
	.byte	0xF9,0xEF,0xEA,0xEF,0xF0,0xEE,0xEB,0xF7
	.byte	0xF7,0xFB,0x02,0x02,0x02,0xFE,0x01,0x05
	.byte	0x05,0x03,0x05,0x08,0x07,0xFF,0xFC,0xFF
	.byte	0xFA,0xF4,0xF6,0xF7,0xF8,0xFB,0x00,0x06
	.byte	0x04,0x03,0x08,0x0F,0x0C,0x0F,0x19,0x1A
	.byte	0x1A,0x1F,0x14,0x14,0x11,0x02,0xFB,0xEF
	.byte	0xE5,0xDA,0xDC,0xD6,0xD4,0xDB,0xDB,0xE7
	.byte	0xF3,0xF9,0x05,0x11,0x15,0x1E,0x1C,0x1E
	.byte	0x23,0x22,0x19,0x15,0x17,0x0B,0x07,0x03
	.byte	0xFA,0xF0,0xE8,0xE9,0xEC,0xEC,0xEE,0xF8
	.byte	0x01,0x04,0x05,0x0A,0x14,0x12,0x0E,0x11
	.byte	0x0E,0x0A,0x03,0x03,0xFE,0xF0,0xE7,0xE4
	.byte	0xE3,0xDA,0xDE,0xEA,0xEF,0xF7,0x03,0x05
	.byte	0x13,0x1A,0x19,0x1D,0x1C,0x1B,0x15,0x1A
	.byte	0x12,0x0D,0x09,0x01,0x03,0xFF,0xF7,0xF7
	.byte	0xF5,0xEF,0xEE,0xE9,0xE8,0xEE,0xF0,0xED
	.byte	0xF4,0xFD,0xFC,0x03,0x0B,0x0C,0x08,0x09
	.byte	0x0C,0x0F,0x0A,0x0A,0x11,0x0F,0x08,0x04
	.byte	0x01,0x01,0xFB,0xF6,0xF8,0xF7,0xF7,0xF7
	.byte	0x01,0x00,0xFD,0xFD,0x02,0x07,0x02,0x07
	.byte	0x13,0x12,0x12,0x14,0x0F,0x0F,0x07,0xFE
	.byte	0xF6,0xED,0xE4,0xDE,0xE4,0xDE,0xE2,0xE5
	.byte	0xEB,0xF6,0xFE,0x04,0x10,0x1A,0x1B,0x1F
	.byte	0x1E,0x1C,0x20,0x1A,0x11,0x10,0x0B,0x01
	.byte	0xFD,0xFA,0xF0,0xE7,0xE5,0xE5,0xE9,0xE7
	.byte	0xED,0xFA,0xFF,0x00,0x05,0x0B,0x12,0x0F
	.byte	0x10,0x12,0x10,0x0B,0x07,0x0B,0x00,0xF6
	.byte	0xEF,0xEE,0xEB,0xE4,0xEB,0xF6,0xFA,0xFF
	.byte	0x09,0x0D,0x14,0x17,0x17,0x17,0x16,0x10
	.byte	0x0F,0x12,0x09,0x06,0x01,0x00,0xFC,0xF8
	.byte	0xF1,0xF3,0xF1,0xEB,0xEB,0xE9,0xE8,0xF0
	.byte	0xF1,0xF2,0xFA,0x00,0x03,0x0A,0x13,0x10
	.byte	0x0F,0x11,0x12,0x12,0x0B,0x0E,0x12,0x0C
	.byte	0x03,0x00,0xFC,0xFB,0xF3,0xF3,0xF2,0xF2
	.byte	0xF0,0xF4,0xFD,0xF9,0xF8,0xFA,0x02,0x01
	.byte	0xFF,0x09,0x12,0x12,0x11,0x16,0x10,0x0E
	.byte	0x08,0xFF,0xF6,0xF0,0xE6,0xE7,0xE9,0xE7
	.byte	0xEB,0xF0,0xF7,0xFF,0x06,0x09,0x16,0x1D
	.byte	0x1A,0x1E,0x1B,0x18,0x19,0x12,0x0A,0x07
	.byte	0x02,0xF8,0xF5,0xF4,0xE9,0xE5,0xE4,0xE7
	.byte	0xE9,0xE9,0xF2,0xFE,0x01,0x02,0x0B,0x10
	.byte	0x14,0x13,0x15,0x13,0x11,0x0C,0x0C,0x0A
	.byte	0xFF,0xF7,0xF0,0xF0,0xE8,0xE5,0xEC,0xF7
	.byte	0xF9,0xFD,0x08,0x09,0x0E,0x11,0x11,0x10
	.byte	0x0D,0x09,0x0B,0x09,0x05,0x02,0x02,0xFE
	.byte	0xFC,0xF8,0xF1,0xF5,0xF4,0xED,0xF0,0xEE
	.byte	0xEF,0xF7,0xF7,0xF9,0x00,0x07,0x09,0x12
	.byte	0x18,0x12,0x14,0x13,0x14,0x0F,0x0B,0x0B
	.byte	0x0E,0x05,0xFB,0xFB,0xF6,0xF3,0xEF,0xEF
	.byte	0xEE,0xF0,0xF0,0xF7,0xFC,0xFB,0xFA,0xFF
	.byte	0x05,0x00,0x04,0x0B,0x14,0x13,0x14,0x16
	.byte	0x10,0x0D,0x07,0xFE,0xF7,0xEF,0xEA,0xEB
	.byte	0xEB,0xEB,0xEF,0xF5,0xF9,0x00,0x04,0x08
	.byte	0x14,0x17,0x15,0x17,0x14,0x10,0x13,0x0B
	.byte	0x04,0x01,0xFD,0xF4,0xF4,0xF1,0xE9,0xE8
	.byte	0xE8,0xEC,0xEB,0xEF,0xF7,0x04,0x04,0x07
	.byte	0x11,0x13,0x15,0x16,0x16,0x13,0x12,0x0E
	.byte	0x0D,0x09,0xFF,0xF5,0xF2,0xEE,0xE5,0xE7
	.byte	0xEC,0xF8,0xF9,0xFF,0x07,0x08,0x0C,0x10
	.byte	0x0F,0x0D,0x09,0x09,0x09,0x07,0x04,0x03
	.byte	0x02,0xFD,0xFC,0xF6,0xF2,0xF6,0xF4,0xF0
	.byte	0xF2,0xF2,0xF2,0xFB,0xFA,0xFC,0x03,0x09
	.byte	0x0A,0x12,0x13,0x11,0x11,0x11,0x0F,0x0B
	.byte	0x08,0x06,0x0A,0xFE,0xF8,0xF8,0xF1,0xEF
	.byte	0xEE,0xEF,0xED,0xF0,0xF3,0xF8,0xFC,0xFD
	.byte	0xFE,0x05,0x06,0x04,0x09,0x10,0x18,0x16
	.byte	0x17,0x16,0x10,0x0B,0x05,0xFE,0xF5,0xED
	.byte	0xED,0xEC,0xEC,0xED,0xF3,0xF8,0xFB,0x02
	.byte	0x04,0x0A,0x11,0x15,0x12,0x14,0x10,0x0D
	.byte	0x10,0x07,0x01,0xFE,0xFB,0xF4,0xF5,0xEF
	.byte	0xEC,0xEC,0xEE,0xEF,0xF2,0xF6,0xFC,0x0A
	.byte	0x07,0x0B,0x12,0x11,0x14,0x14,0x13,0x0F
	.byte	0x0E,0x0A,0x06,0x01,0xF8,0xF1,0xF0,0xE8
	.byte	0xE4,0xE7,0xEE,0xF6,0xFA,0x00,0x05,0x06
	.byte	0x0A,0x0E,0x0D,0x0A,0x08,0x0B,0x0A,0x08
	.byte	0x07,0x08,0x05,0x01,0xFE,0xF9,0xF7,0xF7
	.byte	0xF7,0xF2,0xF6,0xF2,0xF5,0xFD,0xFB,0xFD
	.byte	0x04,0x09,0x0B,0x10,0x10,0x10,0x10,0x10
	.byte	0x0C,0x0B,0x05,0x05,0x07,0xFB,0xF8,0xF6
	.byte	0xF1,0xF0,0xF1,0xEF,0xEE,0xF4,0xF7,0xFA
	.byte	0xFF,0x00,0x03,0x09,0x06,0x07,0x0C,0x13
	.byte	0x17,0x18,0x16,0x13,0x0B,0x06,0x01,0xF7
	.byte	0xED,0xE9,0xEC,0xE9,0xE9,0xEE,0xF6,0xF8
	.byte	0xFE,0x03,0x07,0x0A,0x10,0x13,0x10,0x13
	.byte	0x0C,0x0E,0x0D,0x04,0xFE,0xFC,0xFA,0xF5
	.byte	0xF3,0xF0,0xF0,0xF1,0xF1,0xF2,0xF8,0xF8
	.byte	0x01,0x0C,0x09,0x0E,0x12,0x11,0x13,0x15
	.byte	0x10,0x0C,0x0D,0x09,0x02,0xFE,0xF6,0xF3
	.byte	0xF0,0xE8,0xE7,0xEC,0xF1,0xF8,0xFF,0x01
	.byte	0x06,0x08,0x0C,0x0E,0x0B,0x07,0x08,0x0D
	.byte	0x08,0x06,0x09,0x0A,0x04,0x01,0xFC,0xF9
	.byte	0xF4,0xF5,0xF6,0xF2,0xF4,0xF0,0xF8,0xFC
	.byte	0xFA,0xFE,0x05,0x0B,0x0C,0x0F,0x0F,0x10
	.byte	0x10,0x0D,0x0A,0x09,0x01,0x02,0x03,0xF8
	.byte	0xF6,0xF4,0xF0,0xF2,0xF3,0xEF,0xF3,0xF9
	.byte	0xFB,0xFD,0x02,0x03,0x08,0x09,0x07,0x09
	.byte	0x0F,0x10,0x16,0x17,0x11,0x0E,0x07,0x04
	.byte	0xFD,0xF3,0xEB,0xEB,0xEF,0xE9,0xED,0xF4
	.byte	0xF9,0xFC,0x02,0x05,0x0A,0x09,0x10,0x13
	.byte	0x11,0x10,0x0B,0x10,0x0B,0x02,0xFE,0xFE
	.byte	0xFB,0xF4,0xF2,0xF1,0xF2,0xF1,0xF1,0xF5
	.byte	0xF8,0xF7,0x02,0x0A,0x09,0x0B,0x0F,0x0F
	.byte	0x13,0x11,0x0B,0x0B,0x0A,0x04,0xFD,0xFA
	.byte	0xF4,0xF0,0xEC,0xE7,0xEA,0xEE,0xF1,0xFE
	.byte	0x03,0x03,0x0A,0x0B,0x11,0x0F,0x0B,0x07
	.byte	0x0C,0x0E,0x06,0x08,0x0B,0x08,0x03,0x00
	.byte	0xFC,0xF8,0xF1,0xF5,0xF6,0xF2,0xF1,0xF3
	.byte	0xFB,0xFB,0xFC,0x00,0x09,0x0C,0x0B,0x0D
	.byte	0x11,0x11,0x0E,0x0D,0x0C,0x07,0x00,0x02
	.byte	0x02,0xF8,0xF4,0xF4,0xF2,0xF5,0xF2,0xF2
	.byte	0xF6,0xFB,0xFC,0xFE,0x04,0x05,0x07,0x07
	.byte	0x06,0x0A,0x0D,0x0D,0x17,0x14,0x0C,0x09
	.byte	0x03,0x00,0xF6,0xEE,0xE8,0xED,0xEB,0xE8
	.byte	0xEF,0xF7,0xFA,0xFF,0x05,0x08,0x09,0x08
	.byte	0x10,0x13,0x0E,0x0B,0x0D,0x0E,0x06,0xFF
	.byte	0xFD,0xFE,0xF8,0xF3,0xF3,0xF5,0xF3,0xF3
	.byte	0xF6,0xF9,0xF9,0xFB,0x06,0x0D,0x09,0x0B
	.byte	0x10,0x11,0x13,0x0D,0x0D,0x0B,0x09,0x01
	.byte	0xFD,0xFA,0xF4,0xF0,0xED,0xEB,0xED,0xF0
	.byte	0xF5,0x03,0x04,0x06,0x0A,0x0E,0x0F,0x0A
	.byte	0x08,0x06,0x0C,0x08,0x05,0x08,0x09,0x04
	.byte	0x01,0xFF,0xFA,0xF4,0xF0,0xF6,0xF6,0xF0
	.byte	0xF2,0xF8,0xFB,0xFB,0xFC,0x03,0x09,0x09
	.byte	0x09,0x0D,0x11,0x0E,0x0D,0x0D,0x0A,0x03
	.byte	0xFF,0x01,0x01,0xF4,0xF3,0xF5,0xF4,0xF4
	.byte	0xF1,0xF5,0xF7,0xFD,0xFC,0x01,0x05,0x04
	.byte	0x07,0x08,0x09,0x0B,0x0D,0x10,0x18,0x11
	.byte	0x0C,0x09,0x05,0xFC,0xF3,0xEE,0xEB,0xEE
	.byte	0xEB,0xED,0xF4,0xFB,0xFE,0x04,0x09,0x0A
	.byte	0x09,0x0A,0x12,0x13,0x0B,0x0C,0x0E,0x08
	.byte	0x01,0xFC,0xFC,0xF8,0xF4,0xF1,0xF3,0xF4
	.byte	0xF3,0xF6,0xF9,0xFA,0xFA,0xFF,0x08,0x0C
	.byte	0x05,0x0A,0x0F,0x0F,0x0D,0x0B,0x0B,0x07
	.byte	0x05,0xFE,0xFD,0xF7,0xF2,0xF0,0xEE,0xED
	.byte	0xEE,0xF3,0xFA,0x04,0x04,0x06,0x0C,0x0E
	.byte	0x0B,0x09,0x08,0x08,0x0A,0x07,0x07,0x08
	.byte	0x08,0x04,0x03,0xFF,0xF8,0xF3,0xF2,0xF6
	.byte	0xF5,0xF1,0xF6,0xFB,0xFC,0xFD,0x01,0x07
	.byte	0x09,0x0B,0x0C,0x10,0x10,0x0F,0x11,0x0E
	.byte	0x08,0x02,0x00,0x00,0xFC,0xF1,0xF4,0xF5
	.byte	0xF3,0xF2,0xF4,0xF6,0xF8,0xFE,0xFF,0x04
	.byte	0x03,0x05,0x07,0x09,0x07,0x09,0x0D,0x0F
	.byte	0x12,0x0C,0x07,0x06,0xFF,0xF6,0xF3,0xEE
	.byte	0xEC,0xEE,0xEF,0xF1,0xF7,0xFE,0x01,0x08
	.byte	0x08,0x06,0x08,0x0B,0x10,0x0F,0x0B,0x0D
	.byte	0x0C,0x07,0x01,0xFE,0xFB,0xF6,0xF6,0xF3
	.byte	0xF4,0xF3,0xF6,0xF9,0xFB,0xFB,0xFE,0x03
	.byte	0x09,0x09,0x07,0x0D,0x10,0x0F,0x0E,0x0E
	.byte	0x09,0x06,0x04,0x00,0xFC,0xF4,0xF3,0xF2
	.byte	0xF1,0xED,0xF2,0xF7,0xFC,0x05,0x06,0x08
	.byte	0x0D,0x0A,0x08,0x0A,0x07,0x06,0x09,0x09
	.byte	0x06,0x06,0x06,0x04,0x02,0xFA,0xF4,0xF2
	.byte	0xF1,0xF3,0xF3,0xF1,0xF7,0xFA,0xFC,0xFE
	.byte	0x03,0x04,0x06,0x0B,0x0C,0x0D,0x0D,0x10
	.byte	0x0E,0x0B,0x04,0x02,0x00,0xFC,0xF8,0xF3
	.byte	0xF5,0xF4,0xF3,0xF5,0xF7,0xF7,0xFB,0xFF
	.byte	0x03,0x03,0x02,0x08,0x0A,0x0A,0x07,0x0D
	.byte	0x0F,0x0E,0x11,0x0C,0x07,0x04,0xFB,0xF6
	.byte	0xF3,0xED,0xEC,0xF0,0xF3,0xF4,0xFB,0x01
	.byte	0x06,0x08,0x06,0x06,0x0A,0x0A,0x0D,0x0F
	.byte	0x0B,0x0C,0x09,0x06,0x00,0xFE,0xF8,0xF6
	.byte	0xF6,0xF3,0xF2,0xF4,0xF9,0xF9,0xFB,0xFB
	.byte	0x00,0x03,0x04,0x07,0x08,0x0D,0x0D,0x0D
	.byte	0x0E,0x0B,0x06,0x05,0x02,0xFD,0xF5,0xF1
	.byte	0xF3,0xF1,0xEE,0xEE,0xF7,0xFA,0xFF,0x07
	.byte	0x09,0x0B,0x0C,0x09,0x0A,0x0A,0x06,0x06
	.byte	0x0B,0x09,0x05,0x07,0x07,0x05,0xFF,0xF8
	.byte	0xF5,0xF5,0xF2,0xF4,0xF8,0xF7,0xFB,0xFE
	.byte	0x00,0x02,0x04,0x04,0x09,0x0C,0x0B,0x0B
	.byte	0x0E,0x0F,0x0A,0x08,0x03,0x02,0xFD,0xF9
	.byte	0xF8,0xF6,0xF6,0xF5,0xF6,0xF8,0xF8,0xF9
	.byte	0xFD,0x00,0x01,0xFF,0x02,0x07,0x07,0x06
	.byte	0x08,0x0C,0x0B,0x0A,0x0D,0x09,0x03,0xFF
	.byte	0xF9,0xF7,0xF3,0xEF,0xF1,0xF6,0xF6,0xF8
	.byte	0xFF,0x04,0x06,0x05,0x05,0x06,0x08,0x06
	.byte	0x0A,0x0B,0x07,0x07,0x05,0x02,0xFF,0xFC
	.byte	0xF9,0xFB,0xFA,0xF8,0xF8,0xFD,0xFE,0xFE
	.byte	0x00,0x00,0x03,0x02,0x03,0x06,0x07,0x08
	.byte	0x09,0x0A,0x09,0x06,0x04,0x03,0x01,0xFD
	.byte	0xF9,0xF9,0xF9,0xF8,0xF6,0xF9,0xFC,0xFD
	.byte	0x00,0x05,0x05,0x04,0x05,0x04,0x05,0x04
	.byte	0x02,0x04,0x06,0x03,0x03,0x04,0x04,0x01
	.byte	0xFE,0xFC,0xFA,0xFA,0xF7,0xFA,0xFC,0xFB
	.byte	0xFD,0xFF,0x00,0x00,0x01,0x02,0x05,0x06
	.byte	0x05,0x05,0x07,0x06,0x04,0x03,0x01,0x00
	.byte	0xFE,0xFD,0xFD,0xFC,0xFC,0xFD,0xFD,0xFD
	.byte	0xFD,0xFE,0x00,0x00,0x01,0x02,0x03,0x04
	.byte	0x04,0x04,0x04,0x04,0x03,0x03,0x04,0x02
	.byte	0x00,0x00,0xFF,0xFE,0xFD,0xFD,0xFE,0xFF
	.byte	0xFE,0xFF,0x01,0x02,0x02,0x03,0x02,0x02
	.byte	0x02,0x01,0x02,0x01,0xFF,0xFF,0xFF,0xFE
	.byte	0xFE,0xFE,0xFF,0x00,0x00,0x00,0x01,0x02
	.byte	0x01,0x02,0x02,0x01,0x02,0x02,0x02,0x02
	.byte	0x02,0x02,0x02,0x01,0x00,0x00,0xFF,0xFF
	.byte	0xFF,0xFF,0xFF,0xFF,0x00,0xFF,0x00,0x00
	.byte	0x01,0x01,0x01,0x02,0x01,0x01,0x01,0x01
	.byte	0x01,0x01,0x00,0x00,0x00,0x00,0x00,0x01
	.byte	0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01
	.byte	0x01,0x00

	.byte	0x00

	.end
