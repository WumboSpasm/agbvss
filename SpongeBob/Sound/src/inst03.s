#TONE NAME     : inst03
#FREQUENCY     : 8000
#BASE NOTE#    : 48
#START ADDRESS : 000000
#LOOP ADDRESS  : 000000
#END ADDRESS   : 001718
#LOOP MODE     : 1Shot
#FINE TUNE     : 0
#WAVE EXP/COMP : 1
#VOL EXP/COMP  : 1

	.section .rodata
	.global	inst03
	.align	2

inst03:
	.short	0x0000
	.short	0x0000
	.int	16384000
	.int	0
	.int	1718

	.byte	0x03,0x03,0xFE,0xFC,0xFE,0x00,0x02,0x05
	.byte	0x06,0x02,0xFB,0xFB,0xFE,0x00,0x03,0x08
	.byte	0x07,0xFF,0xF8,0xFA,0xFE,0x01,0x07,0x0B
	.byte	0x06,0xFA,0xF6,0xFB,0x00,0x06,0x0C,0x0A
	.byte	0xFD,0xF4,0xF6,0xFD,0x04,0x0B,0x0F,0x05
	.byte	0xF7,0xF2,0xF7,0xFF,0x09,0x10,0x0E,0x00
	.byte	0xF3,0xF1,0xF7,0x03,0x0E,0x12,0x0B,0xF9
	.byte	0xEF,0xF0,0xFA,0x09,0x12,0x13,0x06,0xF2
	.byte	0xED,0xF1,0xFF,0x0E,0x15,0x12,0xFE,0xED
	.byte	0xEC,0xF3,0x06,0x12,0x18,0x0F,0xF4,0xEA
	.byte	0xEC,0xF9,0x0D,0x16,0x19,0x06,0xEC,0xE9
	.byte	0xEE,0x00,0x12,0x19,0x18,0xFA,0xE8,0xE9
	.byte	0xF1,0x09,0x16,0x1C,0x11,0xEF,0xE7,0xE9
	.byte	0xF8,0x11,0x18,0x1E,0x05,0xE7,0xE7,0xEB
	.byte	0x02,0x15,0x1C,0x1B,0xF8,0xE4,0xE7,0xEF
	.byte	0x0A,0x17,0x20,0x14,0xEC,0xE4,0xE8,0xF7
	.byte	0x11,0x1A,0x23,0x07,0xE3,0xE5,0xEB,0x01
	.byte	0x14,0x1E,0x21,0xF6,0xDF,0xE7,0xF0,0x0A
	.byte	0x17,0x25,0x16,0xE6,0xE1,0xE9,0xF9,0x10
	.byte	0x1B,0x28,0x05,0xDD,0xE4,0xEC,0x02,0x14
	.byte	0x22,0x24,0xF1,0xDB,0xE7,0xF1,0x0B,0x17
	.byte	0x29,0x16,0xE0,0xDF,0xEA,0xFA,0x10,0x1D
	.byte	0x2C,0x01,0xD8,0xE4,0xEE,0x03,0x13,0x25
	.byte	0x26,0xEC,0xD8,0xE9,0xF4,0x0A,0x17,0x2E
	.byte	0x15,0xDB,0xDE,0xED,0xFC,0x0E,0x1F,0x2F
	.byte	0xFD,0xD4,0xE5,0xF0,0x04,0x12,0x29,0x26
	.byte	0xE7,0xD7,0xEA,0xF6,0x0A,0x18,0x30,0x13
	.byte	0xD8,0xDE,0xED,0xFD,0x0E,0x20,0x31,0xFB
	.byte	0xD3,0xE5,0xF1,0x04,0x12,0x2B,0x26,0xE3
	.byte	0xD6,0xEB,0xF7,0x0A,0x19,0x33,0x10,0xD5
	.byte	0xDE,0xEF,0xFE,0x0E,0x23,0x32,0xF6,0xD1
	.byte	0xE6,0xF3,0x04,0x12,0x2F,0x25,0xDF,0xD6
	.byte	0xED,0xF9,0x09,0x1A,0x36,0x0D,0xD1,0xDF
	.byte	0xF1,0xFF,0x0C,0x26,0x33,0xF1,0xCF,0xE8
	.byte	0xF6,0x04,0x12,0x32,0x23,0xDA,0xD6,0xEF
	.byte	0xFB,0x08,0x1B,0x38,0x09,0xCE,0xE1,0xF4
	.byte	0x00,0x0B,0x28,0x33,0xEC,0xCE,0xEB,0xF8
	.byte	0x04,0x11,0x34,0x20,0xD6,0xD7,0xF2,0xFC
	.byte	0x07,0x1C,0x39,0x05,0xCC,0xE3,0xF5,0x00
	.byte	0x0B,0x29,0x32,0xE9,0xCF,0xEC,0xF9,0x04
	.byte	0x12,0x35,0x1D,0xD4,0xD9,0xF2,0xFC,0x07
	.byte	0x1E,0x39,0x01,0xCC,0xE4,0xF6,0x01,0x0C
	.byte	0x2B,0x2F,0xE5,0xD0,0xED,0xF9,0x05,0x13
	.byte	0x37,0x19,0xD2,0xDB,0xF3,0xFD,0x08,0x1F
	.byte	0x39,0xFC,0xCC,0xE7,0xF6,0x01,0x0C,0x2D
	.byte	0x2D,0xE1,0xD2,0xEF,0xFA,0x05,0x14,0x37
	.byte	0x15,0xD0,0xDE,0xF4,0xFE,0x08,0x21,0x38
	.byte	0xF7,0xCC,0xE9,0xF7,0x02,0x0C,0x2F,0x2A
	.byte	0xDD,0xD4,0xF1,0xFA,0x05,0x15,0x38,0x11
	.byte	0xCE,0xE0,0xF5,0xFE,0x08,0x22,0x36,0xF4
	.byte	0xCD,0xEB,0xF8,0x02,0x0D,0x30,0x27,0xDB
	.byte	0xD5,0xF2,0xFB,0x05,0x16,0x38,0x0D,0xCE
	.byte	0xE2,0xF6,0xFF,0x08,0x24,0x34,0xF0,0xCE
	.byte	0xED,0xF9,0x02,0x0D,0x31,0x23,0xD8,0xD7
	.byte	0xF4,0xFC,0x04,0x18,0x38,0x08,0xCD,0xE4
	.byte	0xF8,0xFF,0x07,0x27,0x33,0xEB,0xCE,0xEE
	.byte	0xFB,0x01,0x0E,0x34,0x1F,0xD6,0xD9,0xF5
	.byte	0xFD,0x04,0x1B,0x38,0x03,0xCD,0xE5,0xF9
	.byte	0xFF,0x08,0x29,0x2F,0xE7,0xD0,0xF0,0xFC
	.byte	0x01,0x10,0x35,0x1B,0xD4,0xDA,0xF6,0xFE
	.byte	0x04,0x1D,0x37,0x00,0xCD,0xE6,0xFA,0x00
	.byte	0x08,0x2B,0x2E,0xE5,0xD1,0xF0,0xFC,0x01
	.byte	0x11,0x35,0x18,0xD3,0xDB,0xF7,0xFE,0x04
	.byte	0x1E,0x37,0xFD,0xCD,0xE8,0xFA,0x00,0x09
	.byte	0x2C,0x2C,0xE3,0xD2,0xF1,0xFC,0x02,0x13
	.byte	0x36,0x15,0xD2,0xDD,0xF7,0xFE,0x05,0x20
	.byte	0x36,0xF9,0xCD,0xE9,0xFB,0x00,0x0A,0x2E
	.byte	0x29,0xE0,0xD3,0xF2,0xFD,0x02,0x14,0x37
	.byte	0x12,0xD0,0xDF,0xF8,0xFF,0x05,0x22,0x35
	.byte	0xF5,0xCD,0xEB,0xFB,0x00,0x0B,0x2F,0x27
	.byte	0xDD,0xD4,0xF3,0xFD,0x02,0x16,0x37,0x0F
	.byte	0xCF,0xE0,0xF8,0xFF,0x06,0x23,0x34,0xF3
	.byte	0xCD,0xEB,0xFB,0x00,0x0C,0x30,0x25,0xDC
	.byte	0xD5,0xF4,0xFD,0x02,0x17,0x37,0x0C,0xCF
	.byte	0xE1,0xF9,0xFF,0x06,0x24,0x33,0xF0,0xCE
	.byte	0xEC,0xFB,0x01,0x0D,0x31,0x23,0xDA,0xD6
	.byte	0xF5,0xFD,0x03,0x18,0x37,0x09,0xCE,0xE3
	.byte	0xF9,0xFF,0x07,0x26,0x32,0xED,0xCF,0xEE
	.byte	0xFC,0x01,0x0E,0x33,0x20,0xD8,0xD8,0xF5
	.byte	0xFE,0x03,0x1A,0x37,0x05,0xCE,0xE4,0xFA
	.byte	0xFF,0x07,0x28,0x30,0xEA,0xCF,0xEF,0xFC
	.byte	0x01,0x0F,0x34,0x1D,0xD6,0xD9,0xF6,0xFE
	.byte	0x03,0x1B,0x37,0x02,0xCD,0xE5,0xFA,0xFF
	.byte	0x08,0x29,0x2F,0xE8,0xD0,0xEF,0xFC,0x01
	.byte	0x10,0x34,0x1B,0xD5,0xDA,0xF6,0xFE,0x04
	.byte	0x1D,0x37,0x00,0xCD,0xE6,0xFA,0x00,0x09
	.byte	0x2B,0x2D,0xE5,0xD1,0xF0,0xFC,0x01,0x12
	.byte	0x35,0x18,0xD3,0xDC,0xF7,0xFE,0x04,0x1E
	.byte	0x36,0xFC,0xCD,0xE8,0xFA,0x00,0x0A,0x2C
	.byte	0x2B,0xE2,0xD2,0xF1,0xFD,0x02,0x13,0x36
	.byte	0x14,0xD2,0xDD,0xF7,0xFE,0x05,0x20,0x36
	.byte	0xF9,0xCD,0xE9,0xFB,0x00,0x0B,0x2E,0x29
	.byte	0xE0,0xD3,0xF2,0xFD,0x02,0x15,0x36,0x11
	.byte	0xD1,0xDF,0xF8,0xFF,0x05,0x22,0x35,0xF5
	.byte	0xCE,0xEB,0xFB,0x00,0x0C,0x2F,0x26,0xDD
	.byte	0xD5,0xF3,0xFD,0x02,0x16,0x37,0x0D,0xCF
	.byte	0xE0,0xF8,0xFF,0x06,0x24,0x33,0xF2,0xCE
	.byte	0xEC,0xFB,0x01,0x0D,0x31,0x23,0xDB,0xD6
	.byte	0xF4,0xFD,0x03,0x18,0x37,0x0A,0xCF,0xE2
	.byte	0xF9,0xFF,0x07,0x26,0x32,0xEE,0xCF,0xED
	.byte	0xFC,0x01,0x0E,0x32,0x20,0xD8,0xD7,0xF5
	.byte	0xFD,0x03,0x1A,0x37,0x06,0xCE,0xE4,0xF9
	.byte	0xFF,0x07,0x28,0x30,0xEB,0xCF,0xEE,0xFC
	.byte	0x01,0x0F,0x33,0x1D,0xD6,0xD9,0xF6,0xFE
	.byte	0x03,0x1B,0x37,0x03,0xCE,0xE5,0xFA,0xFF
	.byte	0x08,0x29,0x2F,0xE8,0xD0,0xF0,0xFC,0x01
	.byte	0x10,0x34,0x1A,0xD5,0xDA,0xF6,0xFE,0x04
	.byte	0x1D,0x37,0xFF,0xCD,0xE7,0xFA,0x00,0x09
	.byte	0x2B,0x2D,0xE5,0xD1,0xF1,0xFC,0x02,0x12
	.byte	0x35,0x17,0xD3,0xDC,0xF7,0xFE,0x04,0x1F
	.byte	0x36,0xFB,0xCD,0xE8,0xFA,0x00,0x0A,0x2D
	.byte	0x2A,0xE2,0xD2,0xF2,0xFD,0x02,0x13,0x36
	.byte	0x13,0xD2,0xDE,0xF8,0xFE,0x05,0x21,0x35
	.byte	0xF8,0xCD,0xEA,0xFB,0x00,0x0B,0x2E,0x28
	.byte	0xDF,0xD4,0xF3,0xFD,0x02,0x15,0x37,0x10
	.byte	0xD0,0xDF,0xF8,0xFF,0x05,0x23,0x34,0xF4
	.byte	0xCE,0xEB,0xFB,0x00,0x0C,0x30,0x25,0xDD
	.byte	0xD5,0xF4,0xFD,0x02,0x17,0x37,0x0D,0xCF
	.byte	0xE1,0xF9,0xFF,0x06,0x24,0x33,0xF1,0xCE
	.byte	0xEC,0xFB,0x01,0x0D,0x31,0x23,0xDA,0xD6
	.byte	0xF4,0xFD,0x03,0x18,0x37,0x09,0xCE,0xE2
	.byte	0xF9,0xFF,0x07,0x26,0x32,0xED,0xCF,0xEE
	.byte	0xFC,0x01,0x0E,0x32,0x20,0xD8,0xD8,0xF5
	.byte	0xFE,0x03,0x1A,0x37,0x05,0xCE,0xE4,0xF9
	.byte	0xFF,0x07,0x28,0x30,0xEA,0xD0,0xEF,0xFC
	.byte	0x01,0x0F,0x34,0x1D,0xD6,0xD9,0xF6,0xFE
	.byte	0x04,0x1C,0x37,0x02,0xCD,0xE6,0xFA,0x00
	.byte	0x08,0x2A,0x2E,0xE7,0xD0,0xF0,0xFC,0x01
	.byte	0x11,0x35,0x19,0xD4,0xDB,0xF7,0xFE,0x04
	.byte	0x1D,0x37,0xFE,0xCD,0xE7,0xFA,0x00,0x09
	.byte	0x2B,0x2C,0xE4,0xD1,0xF1,0xFC,0x02,0x12
	.byte	0x35,0x16,0xD3,0xDC,0xF7,0xFE,0x04,0x1F
	.byte	0x36,0xFA,0xCD,0xE8,0xFB,0x00,0x0A,0x2D
	.byte	0x2A,0xE1,0xD3,0xF2,0xFD,0x02,0x14,0x36
	.byte	0x13,0xD1,0xDE,0xF8,0xFE,0x05,0x21,0x35
	.byte	0xF7,0xCD,0xEA,0xFB,0x00,0x0B,0x2F,0x27
	.byte	0xDE,0xD4,0xF3,0xFD,0x02,0x15,0x37,0x0F
	.byte	0xD0,0xE0,0xF8,0xFF,0x06,0x23,0x34,0xF3
	.byte	0xCE,0xEB,0xFB,0x00,0x0C,0x30,0x25,0xDC
	.byte	0xD5,0xF4,0xFD,0x03,0x17,0x37,0x0C,0xCF
	.byte	0xE1,0xF9,0xFF,0x06,0x25,0x33,0xF0,0xCE
	.byte	0xED,0xFB,0x01,0x0D,0x31,0x22,0xDA,0xD7
	.byte	0xF5,0xFD,0x03,0x19,0x37,0x08,0xCE,0xE3
	.byte	0xF9,0xFF,0x07,0x27,0x31,0xED,0xCF,0xEE
	.byte	0xFC,0x01,0x0E,0x33,0x1F,0xD7,0xD8,0xF5
	.byte	0xFE,0x03,0x1A,0x37,0x04,0xCE,0xE4,0xFA
	.byte	0xFF,0x08,0x28,0x30,0xE9,0xD0,0xEF,0xFC
	.byte	0x01,0x10,0x34,0x1C,0xD6,0xDA,0xF6,0xFE
	.byte	0x04,0x1C,0x37,0x01,0xCD,0xE6,0xFA,0x00
	.byte	0x08,0x2A,0x2E,0xE6,0xD1,0xF0,0xFC,0x01
	.byte	0x11,0x35,0x19,0xD4,0xDB,0xF7,0xFE,0x04
	.byte	0x1E,0x36,0xFD,0xCD,0xE7,0xFA,0x00,0x09
	.byte	0x2C,0x2C,0xE3,0xD2,0xF1,0xFC,0x02,0x13
	.byte	0x36,0x15,0xD2,0xDD,0xF7,0xFE,0x05,0x20
	.byte	0x36,0xFA,0xCD,0xE9,0xFB,0x00,0x0A,0x2D
	.byte	0x29,0xE0,0xD3,0xF2,0xFD,0x02,0x14,0x36
	.byte	0x12,0xD1,0xDE,0xF8,0xFE,0x05,0x22,0x35
	.byte	0xF6,0xCD,0xEA,0xFB,0x00,0x0B,0x2F,0x27
	.byte	0xDE,0xD4,0xF3,0xFD,0x02,0x16,0x37,0x0E
	.byte	0xD0,0xE0,0xF8,0xFF,0x06,0x23,0x34,0xF3
	.byte	0xCE,0xEC,0xFB,0x00,0x0C,0x30,0x24,0xDB
	.byte	0xD6,0xF4,0xFD,0x03,0x17,0x37,0x0B,0xCF
	.byte	0xE2,0xF9,0xFF,0x06,0x25,0x32,0xEF,0xCE
	.byte	0xED,0xFB,0x01,0x0E,0x32,0x21,0xD9,0xD7
	.byte	0xF5,0xFD,0x03,0x19,0x37,0x07,0xCE,0xE3
	.byte	0xF9,0xFF,0x07,0x27,0x31,0xEC,0xCF,0xEE
	.byte	0xFC,0x01,0x0F,0x33,0x1E,0xD7,0xD8,0xF6
	.byte	0xFE,0x03,0x1B,0x37,0x04,0xCE,0xE5,0xFA
	.byte	0xFF,0x08,0x29,0x2F,0xE9,0xD0,0xEF,0xFC
	.byte	0x01,0x10,0x34,0x1B,0xD5,0xDA,0xF6,0xFE
	.byte	0x04,0x1D,0x37,0x00,0xCD,0xE6,0xFA,0x00
	.byte	0x09,0x2B,0x2D,0xE6,0xD1,0xF0,0xFC,0x01
	.byte	0x12,0x35,0x18,0xD3,0xDC,0xF7,0xFE,0x04
	.byte	0x1E,0x36,0xFC,0xCD,0xE8,0xFA,0x00,0x0A
	.byte	0x2C,0x2B,0xE3,0xD2,0xF1,0xFD,0x02,0x13
	.byte	0x36,0x14,0xD2,0xDD,0xF7,0xFE,0x05,0x20
	.byte	0x36,0xF9,0xCD,0xE9,0xFB,0x00,0x0B,0x2E
	.byte	0x29,0xE0,0xD3,0xF2,0xFD,0x02,0x14,0x36
	.byte	0x11,0xD1,0xDF,0xF8,0xFF,0x05,0x22,0x35
	.byte	0xF5,0xCE,0xEB,0xFB,0x00,0x0C,0x2F,0x26
	.byte	0xDD,0xD5,0xF3,0xFD,0x02,0x16,0x37,0x0E
	.byte	0xD0,0xE0,0xF8,0xFF,0x06,0x24,0x33,0xF2
	.byte	0xCE,0xEC,0xFB,0x01,0x0D,0x31,0x23,0xDB
	.byte	0xD6,0xF4,0xFD,0x03,0x18,0x37,0x0A,0xCF
	.byte	0xE2,0xF9,0xFF,0x07,0x26,0x32,0xEE,0xCF
	.byte	0xED,0xFC,0x01,0x0E,0x32,0x20,0xD9,0xD7
	.byte	0xF5,0xFD,0x03,0x19,0x37,0x06,0xCE,0xE4
	.byte	0xF9,0xFF,0x07,0x27,0x30,0xEB,0xCF,0xEE
	.byte	0xFC,0x01,0x0F,0x33,0x1D,0xD7,0xD9,0xF6
	.byte	0xFE,0x03,0x1B,0x37,0x03,0xCE,0xE5,0xFA
	.byte	0xFF,0x08,0x29,0x2F,0xE8,0xD0,0xF0,0xFC
	.byte	0x01,0x10,0x34,0x1A,0xD5,0xDA,0xF6,0xFE
	.byte	0x04,0x1D,0x37,0xFF,0xCD,0xE7,0xFA,0x00
	.byte	0x09,0x2B,0x2D,0xE5,0xD1,0xF1,0xFC,0x02
	.byte	0x12,0x35,0x17,0xD3,0xDC,0xF7,0xFE,0x04
	.byte	0x1F,0x36,0xFC,0xCE,0xE9,0xFB,0x00,0x09
	.byte	0x2B,0x28,0xE4,0xD5,0xF3,0xFD,0x02,0x12
	.byte	0x31,0x12,0xD7,0xE1,0xF9,0xFF,0x04,0x1C
	.byte	0x2E,0xF9,0xD5,0xED,0xFC,0x00,0x09,0x26
	.byte	0x20,0xE6,0xDD,0xF6,0xFE,0x02,0x10,0x2A
	.byte	0x0C,0xDD,0xE8,0xFA,0xFF,0x04,0x19,0x25
	.byte	0xF8,0xDD,0xF2,0xFD,0x00,0x08,0x20,0x19
	.byte	0xE9,0xE4,0xF8,0xFE,0x02,0x0E,0x22,0x08
	.byte	0xE3,0xEE,0xFC,0x00,0x04,0x15,0x1D,0xF8
	.byte	0xE5,0xF5,0xFE,0x01,0x07,0x1A,0x12,0xED
	.byte	0xEB,0xFA,0xFF,0x02,0x0C,0x1A,0x04,0xEA
	.byte	0xF3,0xFD,0x00,0x03,0x10,0x15,0xF9,0xEC
	.byte	0xF9,0xFF,0x01,0x06,0x13,0x0C,0xF2,0xF2
	.byte	0xFD,0xFF,0x01,0x09,0x12,0x02,0xF1,0xF8
	.byte	0xFE,0x00,0x02,0x0B,0x0D,0xFB,0xF4,0xFC
	.byte	0xFF,0x01,0x04,0x0C,0x07,0xF7,0xF8,0xFE
	.byte	0x00,0x01,0x05,0x0A,0x01,0xF8,0xFC,0xFF
	.byte	0x00,0x02,0x06,0x06,0xFD,0xFB,0xFF,0x00
	.byte	0x01,0x02,0x05,0x02,0xFD,0xFE,0x00,0x00
	.byte	0x01,0x02,0x02,0x01,0x00,0x00

	.byte	0x00

	.end
