#TONE NAME     : sfx6lau
#FREQUENCY     : 8000
#BASE NOTE#    : 48
#START ADDRESS : 000000
#LOOP ADDRESS  : 000000
#END ADDRESS   : 005713
#LOOP MODE     : 1Shot
#FINE TUNE     : 0
#WAVE EXP/COMP : 1
#VOL EXP/COMP  : 1

	.section .rodata
	.global	sfx6lau
	.align	2

sfx6lau:
	.short	0x0000
	.short	0x0000
	.int	16384000
	.int	0
	.int	5713

	.byte	0x00,0x01,0x00,0x00,0x01,0x00,0x00,0x04
	.byte	0xFF,0xFB,0x00,0x03,0x02,0x06,0x07,0x01
	.byte	0x0B,0x0C,0x06,0x00,0xFA,0x03,0x08,0xF2
	.byte	0xF0,0x00,0xF5,0xEF,0x03,0xF5,0x19,0x08
	.byte	0xFA,0xFC,0x2D,0x2D,0xF6,0x36,0x1F,0xFE
	.byte	0xF3,0x1D,0x20,0x07,0xDF,0xB2,0x06,0xE9
	.byte	0xDA,0xE6,0x34,0xD2,0xE8,0x4B,0xD9,0x69
	.byte	0x15,0xBC,0x32,0x07,0x81,0xB5,0x1A,0xA5
	.byte	0xE5,0x3F,0xEB,0xE6,0xFB,0xDE,0x7B,0x5B
	.byte	0xC3,0x6B,0x10,0x00,0x7F,0xC0,0xB8,0x46
	.byte	0xA0,0x9B,0x12,0xDF,0xEE,0x16,0x33,0x7F
	.byte	0x62,0x65,0x55,0x29,0x16,0x04,0xF6,0xEB
	.byte	0xE2,0xE0,0xE2,0xE8,0xE6,0xE8,0xDD,0xAD
	.byte	0xB6,0xEA,0x9C,0x88,0x9A,0xA8,0xAC,0xBE
	.byte	0xD4,0xE2,0xF4,0xF5,0xFC,0xFA,0xFF,0xFB
	.byte	0xFE,0x08,0x0B,0x0B,0x0F,0x25,0x27,0x3E
	.byte	0x32,0x37,0x50,0x2D,0x2B,0x28,0x28,0x2D
	.byte	0x06,0x33,0x2B,0xF7,0x34,0x1D,0x1B,0x17
	.byte	0x19,0x18,0x2D,0x11,0x1D,0x09,0x1B,0x2D
	.byte	0x0C,0x2D,0x2C,0x37,0x40,0x3C,0x46,0x30
	.byte	0x32,0x38,0x22,0x16,0x2D,0x02,0x12,0x31
	.byte	0xEA,0x25,0xF5,0x0C,0x0A,0x0B,0xE8,0xFA
	.byte	0x06,0xD5,0xFA,0xD3,0xFD,0xBC,0xF5,0xDA
	.byte	0xC7,0x08,0xB5,0xDC,0x0F,0xD8,0xC0,0xF1
	.byte	0xC3,0xD1,0xC9,0xAB,0xBF,0xAF,0xB0,0xA7
	.byte	0x9E,0xB2,0xC0,0x9C,0xA7,0xB2,0xBC,0xA4
	.byte	0xA8,0xD4,0xB3,0xC6,0xC9,0xC0,0xCF,0xD5
	.byte	0xD0,0xCE,0xD1,0xD0,0xD5,0xD2,0xDF,0xD7
	.byte	0xDD,0xE3,0xDF,0xF1,0xEB,0xEE,0xF8,0xED
	.byte	0xFC,0xEF,0xF0,0xF1,0xEE,0xF9,0xF2,0xF8
	.byte	0xF7,0xFA,0x00,0x07,0x0C,0x06,0x13,0x15
	.byte	0x14,0x20,0x1B,0x17,0x25,0x2A,0x22,0x33
	.byte	0x38,0x33,0x39,0x23,0x35,0x2F,0x3F,0x41
	.byte	0x4A,0x55,0x3F,0x5A,0x4E,0x4F,0x5E,0x4A
	.byte	0x4B,0x57,0x4D,0x63,0x46,0x5C,0x4B,0x63
	.byte	0x41,0x27,0x3E,0x22,0x35,0x2A,0x1D,0x1C
	.byte	0x26,0x32,0x24,0x49,0x40,0x56,0x26,0x5C
	.byte	0x22,0x39,0x52,0x2C,0x4F,0x37,0x3A,0x0F
	.byte	0x41,0x27,0x36,0x28,0x41,0x27,0x28,0x39
	.byte	0x16,0x2A,0x12,0x1C,0x1F,0x07,0x0F,0x13
	.byte	0xFA,0x09,0x01,0xF8,0xF7,0xE4,0xF5,0xE3
	.byte	0xDE,0xDE,0xD4,0xD1,0xCB,0xC3,0xB2,0xBA
	.byte	0xB0,0xBA,0xB3,0xB1,0xCB,0xC3,0xDB,0xC0
	.byte	0xE3,0xDB,0xE0,0xE2,0xCD,0xE9,0xE8,0xF4
	.byte	0xE2,0xD5,0x01,0xE7,0xF7,0xED,0xDC,0xEC
	.byte	0xEF,0xD3,0xF6,0xEC,0xD0,0xF2,0xBC,0xF2
	.byte	0xCC,0xEB,0xDF,0xD0,0xEE,0xD1,0xDE,0xD5
	.byte	0xCA,0xDB,0xE1,0xBF,0xD8,0xBA,0xC0,0xD3
	.byte	0xB4,0xBA,0xC0,0xC5,0xAA,0xBC,0xAE,0xCD
	.byte	0xCB,0xC3,0xAF,0xC8,0xF3,0xB3,0xD9,0xFA
	.byte	0xDE,0xF4,0x07,0x05,0x0A,0xF5,0xF7,0x13
	.byte	0x0F,0x00,0x1B,0x0E,0x18,0x0B,0x0A,0x1D
	.byte	0xFF,0x06,0x26,0x09,0x18,0x02,0xFC,0x11
	.byte	0x04,0xF9,0xFE,0x00,0xF2,0xFD,0xFA,0xFA
	.byte	0x0C,0x0F,0x11,0xFE,0x1E,0x00,0x1A,0x12
	.byte	0x17,0x03,0x1E,0x19,0x19,0x0A,0x22,0xFF
	.byte	0x21,0x1C,0xFA,0x0B,0xF1,0x1C,0x06,0xFE
	.byte	0x32,0xF9,0x26,0x1A,0xFF,0x17,0x0F,0x11
	.byte	0x01,0x03,0x09,0x1E,0x12,0x14,0x1E,0x12
	.byte	0x2E,0x39,0x2D,0x1E,0x21,0x28,0x16,0x26
	.byte	0x1C,0x20,0x17,0x1E,0x1F,0x28,0x16,0x13
	.byte	0x2A,0x11,0x1E,0x0F,0x09,0x16,0x15,0x0A
	.byte	0x09,0xFD,0x15,0x0C,0x02,0x09,0x09,0x06
	.byte	0x08,0x00,0x14,0x04,0x06,0x11,0x0A,0x02
	.byte	0x03,0xF6,0xF7,0xF8,0xED,0xF0,0xF8,0xEF
	.byte	0xEE,0xFE,0xFB,0x02,0x1B,0x03,0x15,0x21
	.byte	0x0D,0x1E,0x2A,0x19,0x1E,0x21,0x28,0x1E
	.byte	0x15,0x24,0x0F,0x2E,0x16,0x0F,0x2B,0x10
	.byte	0x11,0x14,0x09,0x0F,0xFC,0x16,0x05,0x09
	.byte	0xFB,0xF0,0x0E,0x1D,0xF4,0x1B,0x05,0xE8
	.byte	0x1B,0xFC,0xFA,0xF7,0xF4,0xDB,0xE8,0xC9
	.byte	0xE2,0xED,0xC6,0xCF,0xC2,0xD3,0xC6,0xE5
	.byte	0xEB,0xDA,0xE9,0xDB,0xEE,0x06,0x07,0x07
	.byte	0x02,0x18,0xFB,0x17,0xF7,0x00,0x28,0x0A
	.byte	0x03,0x23,0x07,0x25,0x0A,0x12,0xFE,0x17
	.byte	0x11,0x0A,0x07,0x01,0xFA,0xFE,0x04,0xD9
	.byte	0xF8,0xFF,0xD1,0xF1,0xD9,0x0C,0x06,0xDD
	.byte	0xE5,0xFA,0xEA,0xE1,0xF5,0xEF,0xEE,0xEB
	.byte	0x01,0xF3,0xEB,0xEB,0xFC,0xE6,0xF3,0xDC
	.byte	0xD7,0xF4,0xE9,0xFE,0xBC,0xC6,0xEF,0xDB
	.byte	0xD3,0xED,0xDE,0x1C,0xEB,0x0F,0x0A,0x1A
	.byte	0xFE,0x14,0xF4,0x42,0x14,0x27,0x26,0xEB
	.byte	0x22,0x1C,0x16,0x25,0x0D,0x1A,0x11,0x08
	.byte	0x16,0x0B,0x1A,0xEF,0x14,0xEE,0x16,0xF9
	.byte	0x0E,0xF0,0x07,0xE0,0x04,0xEA,0xF1,0xEC
	.byte	0xFD,0xDA,0x02,0x0A,0xDC,0xDF,0x0F,0xF2
	.byte	0xEB,0x05,0xFF,0xE3,0x06,0xE6,0xE8,0x06
	.byte	0xF9,0x0B,0xF8,0xFF,0x03,0xF4,0xDB,0x02
	.byte	0xF8,0xE0,0xDF,0xEC,0xD3,0x02,0xDB,0xF8
	.byte	0xFE,0xF8,0xEB,0x2B,0xF9,0x0B,0x14,0x1F
	.byte	0x0B,0x1E,0x0E,0x03,0x20,0x2B,0xF6,0x1D
	.byte	0x1F,0x22,0x02,0x1E,0x1E,0x27,0x0C,0x19
	.byte	0xFB,0xFB,0x0B,0xED,0xFD,0xFF,0x0A,0x08
	.byte	0xF2,0xF9,0x07,0xF6,0x04,0xF0,0xF7,0xFC
	.byte	0xF9,0xE8,0x09,0xF7,0xF1,0xF3,0xE9,0xFC
	.byte	0xF3,0xF7,0xE8,0x04,0xE1,0xEE,0xF4,0xDB
	.byte	0xEB,0xFB,0xF7,0xF7,0xEE,0x13,0x0C,0x01
	.byte	0x14,0x10,0x15,0x15,0x2C,0x22,0x31,0x16
	.byte	0x25,0x24,0x32,0x38,0x22,0x0A,0x33,0x32
	.byte	0x22,0x10,0x15,0x1A,0x28,0x0D,0x0B,0x27
	.byte	0x1C,0xF5,0xFA,0x0C,0xF4,0xF5,0xE1,0xF2
	.byte	0xEF,0xD7,0xDD,0xEB,0xE1,0xFC,0xE8,0xE9
	.byte	0xE5,0xE7,0x01,0xDF,0xF0,0xE9,0xF0,0xFA
	.byte	0xD4,0xE4,0xF0,0xDC,0x03,0x00,0xE2,0x0A
	.byte	0xFC,0xFE,0x17,0xF1,0x2F,0x08,0x11,0x38
	.byte	0xFC,0x2C,0x28,0x0A,0x1D,0x2F,0x0D,0x24
	.byte	0x20,0x19,0x01,0x26,0x12,0x04,0x11,0x09
	.byte	0xFB,0xFA,0x02,0xF0,0xFE,0xEE,0xFB,0xEF
	.byte	0xE0,0xF3,0xE7,0xFE,0xF7,0xF7,0x04,0xED
	.byte	0xE2,0xF7,0x05,0xEC,0x05,0xE6,0xFD,0xFF
	.byte	0xF7,0xF2,0xEE,0xEE,0xFF,0xF4,0xEF,0x09
	.byte	0xF8,0x0F,0x1D,0x0E,0x0D,0xE8,0xF9,0xFB
	.byte	0xF9,0xF3,0xE7,0xE2,0x00,0xFB,0xFA,0x07
	.byte	0x16,0x0D,0x08,0x18,0x14,0x17,0x1E,0x23
	.byte	0x2B,0x1B,0x12,0x1F,0x1D,0x0E,0x04,0x26
	.byte	0x04,0xF4,0x16,0x15,0xE7,0x0E,0xF6,0xF7
	.byte	0x04,0xF0,0x00,0xF5,0xEC,0xF5,0xFA,0xDC
	.byte	0xFA,0xEA,0xE8,0xDB,0xDD,0xED,0xE3,0xF6
	.byte	0xFB,0xEF,0xFA,0xE6,0x06,0x04,0xF6,0x00
	.byte	0xFF,0x0D,0x0D,0x0C,0xF7,0x0F,0x07,0xF4
	.byte	0xFB,0x10,0xFE,0x08,0xFE,0xFF,0x10,0x1D
	.byte	0x0D,0x19,0x23,0x1C,0x2D,0x19,0x1C,0x21
	.byte	0x0D,0x02,0x0D,0x02,0xF4,0xDA,0xEE,0xDC
	.byte	0xDD,0xDA,0xCB,0xD6,0xDC,0xD6,0xE7,0xCD
	.byte	0xE3,0xEB,0xF0,0xE4,0xFC,0x0A,0x15,0xF4
	.byte	0x19,0x09,0x00,0x1C,0x10,0x15,0x2B,0x14
	.byte	0x1A,0x1D,0x14,0x2B,0x2C,0x21,0x25,0x14
	.byte	0x15,0x10,0x10,0x1B,0x01,0xFF,0x04,0xE6
	.byte	0xF1,0xF3,0xE6,0xE8,0xD7,0xEE,0xF7,0xDE
	.byte	0x03,0xE4,0xF7,0xF3,0xEA,0xF9,0xF6,0x03
	.byte	0x06,0xF4,0xEA,0xFF,0xFB,0xF2,0x03,0xFC
	.byte	0x05,0xF5,0xF3,0xFD,0xF0,0x01,0xE9,0xF7
	.byte	0xE8,0xFB,0xEE,0xF8,0xFD,0x04,0xF2,0x0F
	.byte	0x13,0xF3,0x38,0x2F,0xFD,0x51,0x2E,0x11
	.byte	0x29,0x21,0x1D,0x22,0x16,0x21,0x1A,0x0B
	.byte	0x10,0x16,0xF9,0x12,0x0E,0x06,0x01,0xED
	.byte	0xF2,0x08,0xE4,0xF5,0xFE,0xD3,0x03,0xD5
	.byte	0xEC,0xE1,0xF7,0xE4,0xE7,0xDF,0xF7,0xEA
	.byte	0xEF,0xEB,0xF7,0xF8,0x02,0xF2,0x05,0x0C
	.byte	0xF9,0x04,0x0F,0x02,0x09,0x17,0x08,0x05
	.byte	0x09,0x11,0x09,0x0D,0x09,0x11,0xF9,0x0C
	.byte	0x1B,0xFF,0x08,0x19,0x07,0x1A,0x1A,0xFE
	.byte	0x10,0xFC,0xEB,0xE8,0xEF,0xDE,0xE7,0xF6
	.byte	0xD3,0xF3,0xFC,0xE2,0xFC,0x00,0xF2,0xEB
	.byte	0x0B,0xF9,0x05,0x1C,0x24,0x0E,0x13,0x14
	.byte	0x13,0x12,0xFC,0x17,0x20,0x18,0x06,0x08
	.byte	0x1A,0x13,0xFF,0xEB,0x1C,0x1B,0xED,0x0A
	.byte	0xFC,0xFF,0xF4,0xF4,0xF8,0xFC,0xD2,0xDF
	.byte	0xE9,0xE3,0xE3,0xE5,0x0D,0xED,0x0B,0xF2
	.byte	0xEF,0xF8,0xFC,0x04,0x04,0x09,0x16,0x10
	.byte	0x05,0x09,0xDB,0xF1,0xF4,0xD1,0xF2,0xF8
	.byte	0xDC,0xE5,0xD5,0xE0,0xEF,0xE0,0xEE,0xFB
	.byte	0x00,0xFE,0x09,0x15,0x23,0x16,0x19,0x1A
	.byte	0x2B,0x25,0x25,0x15,0x27,0x26,0x2F,0x28
	.byte	0x09,0x2D,0x05,0x08,0x15,0x13,0xF9,0x12
	.byte	0xFF,0xFF,0x07,0xF7,0xFF,0xE5,0xEC,0xFD
	.byte	0xDF,0xEE,0xE3,0xF1,0xF8,0xFB,0xE4,0xEC
	.byte	0xEC,0xF8,0xEA,0xFE,0xE4,0xFF,0x06,0xFE
	.byte	0x02,0x08,0x00,0x06,0x0E,0xF9,0xFF,0xF4
	.byte	0x0B,0x11,0x10,0xFB,0xF9,0x0A,0x0C,0xE6
	.byte	0xE9,0xF0,0x11,0xF1,0x05,0x0B,0x21,0x25
	.byte	0x0C,0x42,0x05,0x18,0x39,0x1B,0x24,0x1E
	.byte	0x3C,0x2B,0x08,0x1A,0x1B,0x07,0x15,0xFF
	.byte	0xFE,0x10,0x00,0xFD,0xE8,0xFA,0xF7,0xD4
	.byte	0xEC,0xDF,0xEB,0xEE,0xDF,0xDE,0xD5,0xD6
	.byte	0xDE,0xEC,0xEA,0xCC,0xEB,0xEB,0xEC,0xEE
	.byte	0xF6,0xEB,0x03,0x12,0xFC,0x16,0x0F,0xEE
	.byte	0x20,0x04,0x18,0x0A,0x12,0x24,0x11,0x11
	.byte	0xFB,0x13,0x03,0x09,0x0E,0x17,0x07,0x01
	.byte	0x11,0x15,0x12,0x0C,0xFF,0xFD,0xF8,0xED
	.byte	0xE1,0xE2,0xD7,0xEC,0xFA,0xC5,0xD6,0xE8
	.byte	0xEC,0xF4,0xEB,0xF7,0x09,0x0A,0x15,0x11
	.byte	0xFB,0x1B,0x17,0x0A,0x17,0x19,0x19,0x0B
	.byte	0x19,0x02,0x11,0xEB,0x21,0x12,0x08,0x12
	.byte	0x08,0xFE,0x04,0x13,0xEF,0xEB,0x10,0x01
	.byte	0xEA,0xFA,0xF7,0xDA,0xF1,0xF3,0xF0,0xD7
	.byte	0xFB,0xF0,0xEC,0xF8,0xF4,0xFC,0xFC,0x07
	.byte	0x04,0xFE,0x16,0x09,0xF4,0x18,0x14,0xF7
	.byte	0x06,0x19,0x04,0x0F,0x13,0x15,0x07,0x1A
	.byte	0x1B,0x1F,0xFB,0x0E,0x04,0xF7,0xF8,0xFC
	.byte	0xED,0xF3,0xDF,0xF2,0xEA,0xE7,0x00,0xDA
	.byte	0xDA,0xEA,0x08,0xF9,0xEA,0x0E,0x06,0x0D
	.byte	0x1D,0x11,0x17,0x17,0x20,0x34,0x1F,0x28
	.byte	0x16,0x22,0x22,0x0B,0x0F,0x18,0xFA,0x09
	.byte	0x19,0xFF,0x0B,0xF8,0x05,0xF6,0x02,0xF6
	.byte	0xFC,0xDE,0x11,0xF8,0xDB,0xF3,0xE1,0xF6
	.byte	0xF5,0xDB,0xE2,0xED,0xE0,0xF9,0xF5,0xFC
	.byte	0xF5,0x04,0x13,0x0D,0x05,0x04,0xF8,0x03
	.byte	0xFA,0xF5,0x09,0x0D,0x0F,0x0C,0x07,0x07
	.byte	0xF5,0x1F,0x05,0x04,0x0C,0x18,0x07,0x0D
	.byte	0xFC,0x06,0x13,0xFB,0xFA,0x10,0xF3,0xF9
	.byte	0xF8,0xFB,0xDA,0xE8,0xEF,0xFD,0xFC,0xD1
	.byte	0xE1,0xF2,0x02,0xEC,0x0A,0x01,0xF2,0x02
	.byte	0x08,0x18,0x0E,0x15,0x09,0x24,0x25,0x11
	.byte	0x22,0x14,0x0C,0x15,0x1B,0x06,0x20,0x0B
	.byte	0x0C,0xFF,0x00,0xFD,0xEE,0xF9,0xE8,0xF0
	.byte	0xE7,0xF5,0xE9,0xE8,0xEF,0xF0,0xF5,0xD8
	.byte	0xE3,0x08,0xD6,0xF9,0xD6,0xF6,0xFC,0xF3
	.byte	0xEF,0x0B,0x12,0xEC,0x0F,0x10,0xE9,0xFF
	.byte	0x0A,0x03,0x07,0x12,0x09,0x10,0x10,0xFF
	.byte	0x1B,0x12,0x04,0x23,0x0C,0x12,0x0A,0x18
	.byte	0x01,0xFE,0x08,0xF3,0x03,0x12,0xEC,0xF3
	.byte	0x07,0xF0,0x0D,0x0C,0xEF,0x11,0xEE,0xF7
	.byte	0xDF,0xE9,0xCD,0xD2,0xF6,0xE2,0xD8,0xFB
	.byte	0xEB,0xF7,0xFD,0xFC,0x16,0xFE,0x1C,0x17
	.byte	0x3A,0x2F,0x1B,0x25,0x37,0x20,0x21,0x28
	.byte	0x12,0x19,0x19,0x11,0x1C,0x07,0xF9,0xFE
	.byte	0xED,0x19,0xED,0xE7,0x10,0xE4,0xEC,0x00
	.byte	0xF2,0xEC,0xE6,0xD3,0xEE,0xDB,0xD5,0xF5
	.byte	0xE7,0xEB,0xE3,0xFB,0x0C,0xFE,0x05,0xF6
	.byte	0x20,0x0B,0x1B,0x19,0x1F,0x1D,0x09,0x21
	.byte	0x1C,0x17,0xFF,0x0E,0x14,0x0C,0x12,0x1A
	.byte	0x0F,0x1A,0xF8,0x1D,0x08,0xEA,0xEC,0xD9
	.byte	0xF6,0xD9,0xC6,0xF0,0xEC,0xC4,0xD8,0xCF
	.byte	0xE2,0xFE,0xE6,0xEF,0xFD,0xFB,0x15,0x2A
	.byte	0x1B,0x1B,0x16,0x1F,0x28,0x1D,0x28,0x27
	.byte	0x0D,0x1A,0x15,0x17,0x12,0x12,0x00,0x16
	.byte	0x05,0x04,0xF7,0x08,0x00,0xFB,0xF1,0xEC
	.byte	0xDD,0xEF,0xE9,0xCA,0xE6,0xDD,0xF8,0xD8
	.byte	0xEE,0xDE,0xF3,0xF7,0xEE,0xF7,0x01,0xF9
	.byte	0xFF,0x13,0xF8,0x0B,0x01,0x12,0x06,0x17
	.byte	0xFD,0x0C,0x29,0x0E,0x0D,0x17,0x24,0x05
	.byte	0x10,0x16,0x02,0x15,0x08,0xFF,0xFB,0x0E
	.byte	0x0B,0xF4,0xE8,0x04,0xFD,0xDF,0xF9,0xFA
	.byte	0xE8,0xF4,0xE6,0xEE,0xE4,0xF2,0xE4,0xE6
	.byte	0xDC,0xF0,0xEB,0xEE,0x02,0xF1,0x04,0x08
	.byte	0x06,0x20,0x1D,0x24,0x16,0x22,0x21,0x2C
	.byte	0x2D,0x1D,0x25,0x1E,0x0F,0x19,0x15,0x11
	.byte	0x04,0x05,0x0E,0xFE,0xEC,0xF6,0xFE,0xED
	.byte	0xF2,0xF2,0xEA,0xE9,0xF3,0xEE,0xE3,0xEB
	.byte	0xEB,0xF7,0xED,0xE3,0xF5,0xE9,0xF3,0xEB
	.byte	0xF9,0xFA,0x0F,0xFC,0x18,0x12,0x0B,0xFF
	.byte	0x2E,0x0E,0x08,0x13,0x02,0x13,0x10,0x0A
	.byte	0x08,0xF9,0x04,0x21,0x0F,0xF8,0x19,0x13
	.byte	0xFF,0x06,0x16,0xF6,0x09,0x08,0xF8,0xFE
	.byte	0xF8,0x05,0x02,0xF1,0xEA,0xFA,0xFA,0xEA
	.byte	0xFB,0xEB,0xF2,0xFA,0xE7,0xF0,0xFA,0xFB
	.byte	0x03,0xE9,0x13,0x04,0x0C,0x06,0xFB,0xF0
	.byte	0x0A,0xE3,0x02,0xED,0xFA,0xDE,0xF3,0xF8
	.byte	0xF4,0x01,0x04,0xF9,0x14,0x19,0x0C,0x29
	.byte	0x02,0x2E,0x23,0xFB,0x13,0x1B,0x0D,0x13
	.byte	0x12,0x08,0x0B,0x1B,0x00,0x0A,0x08,0xF1
	.byte	0xF8,0xF6,0xF0,0xE9,0xE1,0x06,0xDB,0xDC
	.byte	0xEC,0xF2,0x04,0xE5,0xED,0xF4,0x0A,0xE7
	.byte	0x05,0xF9,0x06,0x0C,0x05,0x00,0x12,0x02
	.byte	0x10,0x1F,0x0D,0x08,0x22,0x0E,0x07,0x0F
	.byte	0x14,0x06,0x08,0x0C,0xE9,0x02,0xF0,0xFD
	.byte	0xF3,0xF0,0xFB,0xE5,0xFE,0xDB,0xF0,0x0A
	.byte	0xEB,0xEB,0x04,0x08,0x13,0x0F,0x01,0x24
	.byte	0x16,0x22,0x0F,0x10,0x0E,0x12,0x1C,0x02
	.byte	0xF4,0xF8,0x07,0xF5,0x04,0xF8,0xEF,0xF7
	.byte	0x01,0xF2,0x05,0xFF,0xF5,0xFC,0xF0,0xF2
	.byte	0xF7,0xF6,0xF6,0xE9,0xFD,0x16,0xE4,0xFA
	.byte	0xF5,0xE5,0x0D,0xFB,0x05,0x00,0x0E,0xEE
	.byte	0x07,0xF6,0xEA,0xFE,0xF6,0xFE,0xFE,0xF9
	.byte	0x00,0x05,0x0A,0x1D,0x15,0xF2,0x20,0x0C
	.byte	0x0A,0x15,0x11,0x17,0x1F,0x0D,0x1D,0x11
	.byte	0x21,0x0E,0x17,0x1B,0xF7,0x0B,0xEF,0x11
	.byte	0xE9,0xDA,0xEC,0xE6,0xF4,0xF5,0xEB,0xEF
	.byte	0xE0,0x06,0xE6,0xFA,0xF9,0xF3,0x00,0xE7
	.byte	0xF5,0xE5,0xF3,0x0B,0xF0,0x06,0x09,0xF0
	.byte	0x14,0x26,0x0B,0x15,0x21,0x20,0x12,0x13
	.byte	0x1A,0x1B,0x21,0x19,0xF8,0x14,0x04,0x08
	.byte	0xF8,0x09,0xFA,0x05,0xF0,0xCE,0xF8,0x07
	.byte	0xE9,0xF1,0xFD,0xE7,0xF4,0xE9,0xE2,0xED
	.byte	0xF8,0xE9,0x03,0xFE,0xE6,0x14,0xD9,0xEE
	.byte	0x17,0xF8,0x19,0x0A,0x07,0x13,0x04,0x12
	.byte	0x0F,0x0C,0x00,0x10,0x0C,0xFF,0x03,0x17
	.byte	0xE8,0xFD,0xF3,0xF8,0xFF,0xEC,0xFC,0xE1
	.byte	0xD2,0xFB,0x0B,0xF0,0x01,0x10,0x01,0x19
	.byte	0x12,0x02,0x31,0x14,0xFC,0x22,0x0C,0x03
	.byte	0x13,0xFE,0x0C,0x14,0xF7,0xF5,0xF9,0xFE
	.byte	0xF2,0x02,0xEE,0xFB,0xF7,0xEE,0xF0,0xF9
	.byte	0xFB,0xE6,0x05,0xFE,0xE8,0x15,0xF6,0xF7
	.byte	0x0C,0xEA,0xF8,0x03,0x13,0xF5,0x0D,0x0C
	.byte	0xF8,0x17,0x18,0x06,0x01,0x25,0x05,0x07
	.byte	0x05,0x07,0x05,0x09,0xFC,0x1C,0xF6,0xFD
	.byte	0xFD,0x08,0x01,0xF7,0x0C,0x0F,0xFF,0xF1
	.byte	0x0A,0xF3,0x03,0x04,0xE9,0x03,0xFA,0xFF
	.byte	0x09,0xD1,0xF3,0xEA,0x0C,0xF3,0xCD,0xFE
	.byte	0x0F,0xFB,0x13,0x14,0x08,0x1E,0x26,0x0A
	.byte	0x1D,0x18,0x1E,0x18,0x17,0x22,0x11,0x1B
	.byte	0xF4,0x09,0x0D,0xFD,0xEC,0x07,0xE6,0xFA
	.byte	0xED,0xFB,0xF0,0xE8,0xED,0x00,0xF1,0xDC
	.byte	0xFD,0xEF,0x01,0xFD,0xE1,0x0A,0x14,0xF9
	.byte	0xE7,0x04,0x1A,0x02,0x06,0x09,0x12,0x0B
	.byte	0x02,0x17,0x05,0x0D,0xFB,0x06,0xF9,0x08
	.byte	0xED,0x0B,0x02,0xD9,0xF1,0xF7,0xD1,0xFA
	.byte	0xF0,0xE1,0x02,0xE6,0x05,0x0B,0x1C,0xE0
	.byte	0x12,0x1B,0xFC,0x1D,0x07,0x11,0xF2,0x1C
	.byte	0x22,0xDE,0x08,0x1F,0xF1,0xF2,0xF3,0xF0
	.byte	0x0C,0xF6,0xF1,0xF2,0xF4,0xEA,0xF8,0xF2
	.byte	0xF2,0x02,0xE4,0xFF,0x08,0x0A,0xFD,0x23
	.byte	0x16,0xEF,0x0E,0x18,0x00,0x0B,0x16,0xEA
	.byte	0x1A,0x0D,0x00,0x00,0x0C,0xED,0x04,0xFB
	.byte	0xF7,0x06,0xE3,0xEF,0x0E,0xE0,0x15,0xEF
	.byte	0xD9,0x1E,0xFD,0xED,0x07,0x01,0xF2,0x05
	.byte	0x06,0x07,0xFE,0x0A,0x0B,0xFB,0x02,0x0D
	.byte	0x13,0x10,0x26,0x08,0xEC,0x22,0x1C,0x01
	.byte	0x0E,0xEF,0x0B,0xF8,0xFC,0x04,0xF1,0x07
	.byte	0x01,0xEA,0x07,0xF6,0x0A,0x0E,0x03,0x02
	.byte	0x09,0x0C,0x0C,0xF6,0x01,0x00,0x00,0xF3
	.byte	0xFF,0x0F,0xEA,0xE8,0x1C,0xF6,0x09,0xFA
	.byte	0x0F,0xFE,0x03,0xEA,0xF3,0xF3,0x0D,0xE5
	.byte	0xFE,0xFA,0x24,0x18,0x0B,0x14,0x11,0x11
	.byte	0x16,0x14,0x01,0x05,0x12,0xFB,0x08,0x06
	.byte	0xFA,0x09,0xF7,0xFF,0xFD,0xF2,0x04,0xE5
	.byte	0xF2,0xFC,0xED,0x07,0xE4,0xF8,0xF5,0xF7
	.byte	0xDA,0x17,0xF6,0xED,0x03,0x0E,0x02,0xEE
	.byte	0x08,0x0F,0x0A,0x08,0x0D,0x0F,0x17,0x02
	.byte	0x0C,0x03,0xFC,0xF6,0x06,0xFA,0xF8,0xF2
	.byte	0x12,0xFB,0xF0,0xFB,0xF9,0xF0,0x01,0xF4
	.byte	0xFF,0xE9,0x10,0x08,0xEA,0x05,0xFE,0xF2
	.byte	0x10,0x03,0xF6,0x0C,0x11,0xEF,0x2D,0xEC
	.byte	0xFF,0x2E,0xF2,0xCB,0xE1,0xEB,0xFD,0xF0
	.byte	0xEC,0xF2,0xF5,0x0A,0x08,0x15,0x0B,0x0A
	.byte	0x1B,0x0B,0x1C,0x18,0x1C,0xEA,0x16,0x1F
	.byte	0x09,0xE2,0x18,0x12,0xDE,0xF7,0xFB,0xFE
	.byte	0x02,0xF6,0xF2,0xFA,0xF5,0xF4,0xEE,0xFE
	.byte	0x05,0xF7,0xEF,0x11,0x07,0xED,0x06,0x05
	.byte	0x00,0xEC,0xF0,0x0E,0xFC,0x02,0x15,0x12
	.byte	0xF1,0x17,0x09,0x04,0x1E,0xF6,0xFE,0x0E
	.byte	0x09,0x03,0x14,0xF6,0xEB,0x08,0x09,0xEA
	.byte	0x0D,0xF8,0xF8,0xEC,0x05,0xFF,0x0A,0xEC
	.byte	0x06,0x16,0x03,0x07,0x09,0xF8,0x1F,0xFF
	.byte	0x07,0xFC,0xFD,0x07,0xFD,0x14,0xFF,0x0F
	.byte	0x08,0xF8,0xD8,0xF3,0xFF,0xD7,0xFD,0xFC
	.byte	0xF6,0x18,0xF8,0x09,0x23,0x0E,0x1D,0x13
	.byte	0x07,0x11,0x12,0xFB,0x23,0x0D,0xFD,0x1F
	.byte	0xFE,0x07,0xFE,0x02,0xE3,0xEF,0x0F,0xF5
	.byte	0xDE,0xF2,0xFE,0xFD,0xF5,0xFC,0xF3,0x00
	.byte	0xFC,0x08,0x00,0x0C,0xF7,0x02,0xFD,0x05
	.byte	0x03,0x05,0xF7,0x01,0xF6,0x1E,0xF0,0x0A
	.byte	0x11,0xF3,0x01,0xF3,0x05,0xE8,0x06,0x13
	.byte	0x02,0x02,0xFC,0xF4,0x04,0xFE,0x03,0xF9
	.byte	0xE7,0x02,0xF7,0xF3,0x14,0x05,0xF6,0xEC
	.byte	0x00,0x0C,0xE9,0xF5,0xF9,0x06,0xFA,0x1A
	.byte	0x04,0xEF,0x03,0xE6,0xF1,0x08,0xF2,0xFB
	.byte	0xF3,0xEE,0x0D,0x25,0xF7,0x11,0x13,0x1E
	.byte	0x06,0xFD,0x1D,0x03,0xF7,0x03,0x0A,0x0A
	.byte	0xFB,0xF9,0xF0,0x0B,0x0C,0xF9,0xFE,0x02
	.byte	0xFA,0x0B,0xEE,0xF0,0xFA,0x11,0xEB,0x07
	.byte	0xF7,0x03,0x06,0xFE,0xE8,0x11,0xFB,0xFC
	.byte	0x19,0xEF,0xFD,0x0B,0x14,0x03,0x0D,0x06
	.byte	0x07,0xF9,0x0C,0x0C,0xF0,0xFA,0x22,0xF7
	.byte	0xF7,0x0B,0x05,0xF6,0x04,0x01,0x03,0x0C
	.byte	0x08,0xF0,0xF2,0x07,0x06,0xFC,0x18,0x0F
	.byte	0xED,0x0C,0x0A,0xFF,0xF5,0xEA,0xED,0xEC
	.byte	0xFF,0xEE,0xF2,0x02,0xF8,0xFD,0x1C,0xF2
	.byte	0x16,0xFE,0x08,0x0A,0x01,0x0A,0x1F,0x0B
	.byte	0x0A,0xF9,0x19,0x01,0xFB,0x06,0xFF,0xFA
	.byte	0x15,0xFE,0xF9,0xFB,0xEE,0xF9,0xEE,0xFE
	.byte	0xFC,0xF8,0xEE,0x00,0xFE,0xE8,0x0F,0xF8
	.byte	0x00,0x02,0xFA,0x04,0xF9,0x1C,0x01,0x06
	.byte	0x0E,0x09,0xFC,0x1B,0x04,0xFD,0xFC,0x0A
	.byte	0x0F,0xFD,0x02,0x01,0x06,0xE4,0x08,0xFD
	.byte	0xF1,0x04,0xF1,0x02,0x04,0xFE,0x0A,0x01
	.byte	0x17,0xFD,0x02,0x07,0xFD,0x0B,0x0B,0x06
	.byte	0x03,0xF7,0x18,0xF7,0xD8,0x03,0xFB,0xEE
	.byte	0x09,0xF5,0xE8,0x1C,0x05,0xE5,0x13,0x0D
	.byte	0xFE,0x0F,0x06,0x00,0x1B,0xFC,0xFB,0x17
	.byte	0xFF,0xF8,0x0A,0xFB,0xF5,0xFD,0x13,0xF4
	.byte	0xF7,0x08,0xF2,0x02,0xEA,0x08,0x07,0xED
	.byte	0xF7,0x05,0xFB,0xFB,0xFB,0x01,0xF8,0xFB
	.byte	0x0B,0xFD,0x05,0x0B,0xF4,0xF5,0x0F,0x09
	.byte	0xF5,0x0D,0xFC,0x10,0x01,0xFA,0x04,0x00
	.byte	0x09,0xFC,0xF0,0x02,0xFD,0xF9,0xF5,0xF5
	.byte	0xFB,0x01,0x0B,0xFA,0x09,0xFF,0x10,0xFE
	.byte	0xF6,0x09,0x12,0xFE,0x1F,0xF7,0x11,0x03
	.byte	0x03,0x12,0x02,0x01,0x06,0x08,0x07,0xF6
	.byte	0xFD,0xF2,0xEA,0xF8,0xF1,0xEF,0xEB,0xFD
	.byte	0xF0,0x08,0x03,0x13,0x0F,0x13,0xF9,0x11
	.byte	0xFD,0x1B,0xFE,0x03,0x00,0x02,0x10,0x06
	.byte	0xFD,0x00,0xF6,0xFF,0xF7,0x01,0xFA,0xEF
	.byte	0x0C,0xEF,0xFA,0x06,0xF8,0x06,0xF3,0x00
	.byte	0x02,0xFA,0x07,0xF9,0x05,0x01,0x06,0xFD
	.byte	0xF5,0x1D,0xEE,0x08,0xFA,0x09,0x1C,0xF2
	.byte	0x04,0xF8,0xF7,0x0A,0x07,0x03,0x04,0xF6
	.byte	0x00,0xFB,0x05,0xF6,0xF4,0x00,0xFF,0x02
	.byte	0xFD,0xFD,0x13,0xFA,0xFC,0x15,0x00,0x05
	.byte	0x00,0x0E,0x03,0x06,0xFF,0x06,0x04,0x11
	.byte	0xEF,0xF9,0x0F,0x0F,0xEF,0x06,0xFD,0xF2
	.byte	0xF6,0xF2,0xFD,0xF7,0xF2,0xFA,0x02,0x04
	.byte	0x0E,0x10,0x09,0x04,0x03,0x10,0x01,0x02
	.byte	0x0C,0xFE,0x05,0x0C,0xFB,0x03,0x02,0x05
	.byte	0xFB,0x0B,0xF0,0xF9,0x00,0xFD,0xFD,0x05
	.byte	0xFA,0x01,0xFD,0x00,0x0A,0xF6,0x04,0x00
	.byte	0x04,0x03,0xF2,0x09,0xFA,0xED,0xFC,0x03
	.byte	0xFD,0xF4,0x0C,0x03,0x03,0xEF,0x08,0x04
	.byte	0x04,0xFF,0x03,0xF7,0x03,0x0C,0xF8,0x0B
	.byte	0x00,0x0A,0x04,0xFC,0x05,0xF7,0x00,0xFD
	.byte	0x10,0xF5,0x0B,0x05,0xEF,0xFE,0x0F,0x0D
	.byte	0xEE,0x0A,0xFC,0x01,0x02,0x0D,0x02,0xFB
	.byte	0x0E,0x00,0xF0,0xFE,0xFB,0x04,0xFD,0xF3
	.byte	0x01,0x0A,0xEF,0x0E,0x00,0x02,0x05,0x01
	.byte	0x13,0x0E,0x02,0xFB,0xFE,0x00,0x06,0x06
	.byte	0xE8,0x11,0x08,0xF7,0xF5,0x03,0x02,0x00
	.byte	0xFC,0x08,0xF8,0xFE,0x00,0xFD,0x0D,0x06
	.byte	0x03,0x01,0xFF,0x0C,0xF8,0x13,0xF4,0xF8
	.byte	0x04,0xF7,0x05,0xF7,0x01,0xF9,0x01,0xED
	.byte	0x11,0x06,0xF2,0xFA,0x09,0x06,0x00,0x00
	.byte	0x0D,0xFF,0xFF,0x0B,0x02,0xF8,0x0D,0xF1
	.byte	0xF5,0x05,0xF6,0xF5,0x00,0xFB,0x0C,0xF1
	.byte	0x03,0x18,0xF9,0x07,0x12,0xF4,0xFD,0x04
	.byte	0xF2,0x02,0xFF,0x0A,0x03,0xFA,0xFB,0xFF
	.byte	0xFE,0x03,0xFC,0x01,0xFB,0x01,0x06,0xFD
	.byte	0xEF,0x04,0x09,0xFD,0x00,0xFC,0xF9,0x09
	.byte	0xF8,0xFD,0x03,0x02,0x00,0x07,0x09,0xF4
	.byte	0xFD,0x06,0x01,0xFD,0x05,0xFC,0x00,0x00
	.byte	0xF6,0xFA,0x00,0xF8,0xFE,0x05,0x0C,0xF9
	.byte	0x05,0x03,0x09,0x00,0x00,0xFE,0x01,0x1A
	.byte	0x01,0xEF,0x06,0xFE,0xFD,0xF4,0x03,0xFF
	.byte	0x08,0x0A,0xF3,0xFB,0x02,0x05,0x03,0xFE
	.byte	0x0E,0xFF,0x04,0x01,0x0C,0x02,0xF6,0x05
	.byte	0x0D,0xFD,0xF6,0xFC,0x04,0x0E,0xF2,0xF5
	.byte	0x09,0x0F,0x01,0x07,0x00,0xFE,0x0E,0x13
	.byte	0x09,0xF0,0x05,0x0A,0xFE,0x06,0x00,0x02
	.byte	0x03,0x09,0xFC,0x06,0xFA,0x02,0x06,0x02
	.byte	0xFD,0xFD,0x02,0x02,0x01,0xFF,0x01,0x0D
	.byte	0x06,0xF5,0x04,0x00,0xFD,0x06,0x03,0xFF
	.byte	0xF8,0x02,0xFD,0x0A,0xFE,0xFF,0x05,0xFF
	.byte	0x04,0xFF,0x02,0x01,0xFC,0x05,0x0A,0x02
	.byte	0x02,0xFB,0x01,0xFB,0x02,0x05,0x03,0xFA
	.byte	0x00,0x07,0xFB,0x07,0x00,0x0A,0xF7,0x00
	.byte	0x0B,0xF9,0xF7,0xFC,0xFA,0x04,0x00,0xFF
	.byte	0xFF,0x01,0x07,0x04,0x02,0x07,0x04,0xFA
	.byte	0x00,0x0E,0x00,0xF8,0x00,0xFD,0xFC,0xFC
	.byte	0xFC,0x03,0x00,0xEF,0x01,0xF6,0xFB,0x05
	.byte	0x02,0xFA,0xF4,0xF6,0x02,0xFE,0xF5,0x01
	.byte	0x02,0x02,0x00,0x01,0xFE,0xF8,0xF9,0x02
	.byte	0xFD,0xFF,0x08,0xFD,0xF8,0x04,0xFE,0x02
	.byte	0xFC,0x02,0xFF,0x07,0xFF,0xF4,0x02,0x09
	.byte	0xF9,0xFF,0x03,0xF9,0xF7,0xED,0xFE,0x09
	.byte	0xEE,0x01,0x0D,0xFC,0xFF,0xFC,0x06,0x06
	.byte	0xFF,0x07,0x05,0xFD,0xFD,0x04,0x07,0xFB
	.byte	0xF9,0x0D,0xFB,0x03,0xF7,0x1B,0x07,0xED
	.byte	0x05,0x03,0xFC,0xFF,0xFD,0x04,0xFE,0xFC
	.byte	0x04,0x05,0xFE,0xFE,0x02,0x01,0xFD,0x01
	.byte	0x02,0x03,0x01,0x00,0x08,0x04,0xFE,0x11
	.byte	0xF9,0x05,0x0E,0xFE,0x03,0xFA,0x09,0x16
	.byte	0xF0,0xFD,0x03,0x0A,0x06,0xFE,0x06,0x04
	.byte	0x04,0x06,0x0F,0xFF,0xF9,0x05,0x09,0xF8
	.byte	0xFF,0x08,0xF8,0x08,0x04,0x09,0x08,0xFB
	.byte	0x04,0x0A,0x0B,0xFF,0x09,0x09,0x02,0xFF
	.byte	0x07,0x07,0x02,0x06,0x02,0x07,0xFD,0x05
	.byte	0x06,0xFA,0x02,0x03,0x03,0x00,0xF8,0x01
	.byte	0x04,0xFA,0xFF,0x08,0xF9,0x02,0x03,0x00
	.byte	0xF7,0x04,0x03,0x03,0xFD,0xFD,0x01,0x03
	.byte	0xFF,0x03,0x04,0xFE,0x07,0xFE,0xF9,0x0D
	.byte	0xFE,0xFA,0x00,0xFD,0x03,0xF7,0x01,0xF9
	.byte	0xFC,0xFE,0xFF,0x00,0xFF,0xFE,0xF9,0xF9
	.byte	0xFC,0x01,0xF4,0xF8,0xF9,0xF6,0x01,0xF4
	.byte	0xF8,0xFC,0xFC,0xFE,0xFF,0x01,0xFB,0x0A
	.byte	0xFC,0x06,0xF7,0x07,0x04,0xFE,0xF8,0xFE
	.byte	0x04,0xFC,0x02,0xF4,0xF9,0x06,0xFC,0x00
	.byte	0xF9,0xF7,0xF7,0xFB,0xFE,0x05,0xFD,0xFC
	.byte	0x07,0xFA,0x02,0xFF,0x06,0xFA,0x00,0xF9
	.byte	0x07,0xFE,0x09,0xFF,0x0A,0xFB,0x09,0x02
	.byte	0xFC,0x05,0x01,0x02,0xFD,0x01,0x05,0xFD
	.byte	0x05,0x00,0xFC,0x00,0x09,0xFD,0x03,0xFF
	.byte	0x05,0xFF,0x05,0x02,0x05,0x0B,0x00,0x09
	.byte	0x0B,0x08,0xFD,0xFE,0xF8,0x06,0x03,0x00
	.byte	0xF9,0x02,0x09,0xFC,0x0B,0x03,0x02,0x10
	.byte	0x03,0x06,0x09,0x09,0x01,0x07,0xFF,0x03
	.byte	0x12,0xFB,0xFF,0x07,0x00,0x04,0x01,0xFD
	.byte	0x01,0x04,0x05,0xFE,0x06,0xFF,0xFD,0x07
	.byte	0x01,0xFE,0x01,0x04,0xFD,0x03,0x03,0xF9
	.byte	0x03,0x06,0x01,0x02,0x04,0x00,0x03,0x03
	.byte	0x03,0x03,0xF8,0xFE,0x00,0x09,0x00,0xFB
	.byte	0x04,0xFB,0x00,0xFC,0xFE,0xFA,0xFD,0x03
	.byte	0xFC,0xFC,0xFC,0x00,0x02,0xFE,0xFC,0xFE
	.byte	0xFE,0x01,0x00,0x02,0xFE,0x02,0xFD,0xFA
	.byte	0xF5,0xFB,0xF7,0xFB,0xF5,0xFC,0xFF,0xFC
	.byte	0xF7,0xFE,0x01,0x01,0x00,0x02,0x05,0x03
	.byte	0x00,0xFD,0x03,0x00,0x04,0xFC,0x00,0xFE
	.byte	0xF9,0x04,0xF8,0xFD,0xFF,0xF9,0xFB,0x02
	.byte	0xFE,0xFF,0x01,0xFE,0xFC,0x02,0x02,0x00
	.byte	0x03,0x02,0xFF,0x01,0x01,0xFE,0x00,0x03
	.byte	0x03,0x03,0xFC,0x05,0x00,0x02,0x03,0x0E
	.byte	0x03,0xFC,0x03,0x04,0x09,0x02,0x07,0x00
	.byte	0x06,0x04,0x05,0x01,0x02,0x02,0x04,0x03
	.byte	0x08,0x03,0x05,0x01,0x08,0x02,0xFF,0x03
	.byte	0x00,0x05,0x03,0x00,0x04,0x00,0xFF,0x07
	.byte	0x01,0x01,0x03,0x02,0x02,0x05,0x00,0x00
	.byte	0x02,0x07,0x00,0x02,0x00,0x00,0x02,0x07
	.byte	0xFF,0xFD,0x00,0x00,0xFE,0x01,0xFB,0xFA
	.byte	0x01,0xFE,0xFF,0x01,0x02,0x01,0x03,0xFC
	.byte	0x04,0x03,0x00,0x03,0xFD,0xFE,0x02,0xFE
	.byte	0x02,0x03,0x04,0xFD,0xFF,0xFE,0xFB,0xFB
	.byte	0x01,0xFE,0x01,0x00,0xFE,0xFE,0x01,0xFF
	.byte	0x04,0xF9,0x03,0xFC,0x05,0xFB,0xFF,0xFF
	.byte	0x03,0x00,0xFB,0x04,0x05,0xFB,0x00,0x03
	.byte	0x00,0x02,0xFE,0x01,0x03,0xFE,0xFD,0x04
	.byte	0xFC,0x01,0xFB,0xFF,0x03,0xFD,0xFC,0x00
	.byte	0x04,0xFC,0xFF,0x00,0x01,0x04,0xFF,0x02
	.byte	0x07,0xFD,0xF3,0x01,0xFE,0xF9,0xFE,0xFA
	.byte	0xFE,0xFA,0x02,0xFD,0xFF,0xFF,0xFF,0xFB
	.byte	0x04,0x01,0xFF,0x02,0x01,0x02,0xFB,0x01
	.byte	0x00,0xFD,0x09,0x01,0xFE,0x02,0x00,0xFD
	.byte	0x05,0x00,0xFF,0x03,0x01,0x00,0x05,0x05
	.byte	0xFE,0x05,0x02,0xFE,0x04,0x00,0x06,0x02
	.byte	0x01,0x02,0x05,0x01,0x01,0x05,0x04,0x06
	.byte	0x01,0xFF,0x05,0x05,0xFE,0x06,0x02,0x02
	.byte	0x02,0xFE,0x06,0xFF,0x03,0x00,0x04,0x04
	.byte	0x02,0x03,0x07,0xFE,0x04,0x08,0x07,0x05
	.byte	0x07,0x09,0x02,0x01,0xFF,0xFE,0x00,0xFF
	.byte	0xFF,0xFF,0xFE,0xFF,0x00,0x07,0x03,0x00
	.byte	0x00,0x08,0x04,0x02,0x06,0x00,0xFE,0x04
	.byte	0x00,0x00,0x01,0x00,0xFD,0xFE,0x00,0xFD
	.byte	0xFD,0x01,0xFD,0xFF,0xFB,0x00,0xFC,0xFC
	.byte	0xFE,0x00,0x00,0xFC,0x03,0xFE,0x00,0xFE
	.byte	0xFB,0x01,0xFE,0x04,0xFE,0xFE,0x00,0x01
	.byte	0x00,0xFE,0xFF,0xFC,0xFC,0x00,0xFF,0xFB
	.byte	0x01,0xFF,0xFF,0xFB,0xFD,0xFB,0xFE,0x00
	.byte	0xFF,0x00,0x00,0x02,0xFE,0x04,0x02,0xFA
	.byte	0xFC,0x01,0xFB,0xFD,0xFE,0xF7,0x00,0xFE
	.byte	0x00,0xFD,0x03,0x01,0x05,0x03,0x04,0x04
	.byte	0x00,0x02,0x02,0x03,0x01,0x03,0xFE,0x00
	.byte	0xFF,0x03,0xFC,0x00,0xFE,0xFF,0x02,0x02
	.byte	0xFE,0x04,0x02,0xFF,0x05,0x02,0xFE,0xFF
	.byte	0x03,0x03,0x00,0x01,0x01,0x00,0x00,0xFF
	.byte	0x02,0x03,0x03,0x01,0x04,0x00,0x02,0x03
	.byte	0x04,0xFD,0x03,0x01,0x00,0x05,0x03,0x00
	.byte	0x01,0x01,0x01,0x06,0x02,0x03,0x08,0x06
	.byte	0xFE,0xFC,0xFE,0x01,0xFB,0xFD,0xFD,0xFE
	.byte	0x00,0xFF,0x05,0x02,0x01,0x06,0x05,0x03
	.byte	0x05,0x05,0x02,0x01,0x03,0x06,0x01,0x01
	.byte	0x04,0x01,0xFE,0x02,0xFF,0x01,0x01,0xFE
	.byte	0xFF,0x00,0xFF,0xFD,0x01,0x01,0xFC,0xFF
	.byte	0x02,0xFF,0x00,0x06,0xFD,0x01,0x01,0xFB
	.byte	0x01,0x00,0x03,0x02,0x01,0x00,0x01,0x01
	.byte	0x00,0x01,0xFF,0xFF,0x01,0x00,0xFE,0x03
	.byte	0x04,0xFF,0xFE,0x01,0x01,0x02,0x01,0x00
	.byte	0x05,0x07,0x00,0xF6,0xFD,0x01,0xFF,0xFC
	.byte	0xFA,0xFA,0x03,0x00,0xFD,0x01,0x00,0x00
	.byte	0x03,0x00,0xFF,0x05,0x03,0xFD,0x01,0x02
	.byte	0x01,0x00,0x01,0xFC,0x02,0xFE,0xFE,0x01
	.byte	0xFF,0xFF,0xFF,0xFD,0xFE,0xFD,0xFF,0x00
	.byte	0x00,0xFF,0x02,0x01,0x02,0x03,0xFF,0xFF
	.byte	0xFF,0x02,0x00,0x02,0x00,0x04,0x05,0xFD
	.byte	0xFF,0x04,0x00,0x00,0xFE,0xFF,0x00,0x04
	.byte	0x01,0xFD,0xFF,0x06,0x03,0xFE,0x04,0x09
	.byte	0x03,0xFA,0xFF,0xFD,0xFE,0x01,0xF9,0xFB
	.byte	0x02,0xFF,0x03,0x03,0x02,0x04,0x04,0x03
	.byte	0x04,0x03,0x03,0x03,0x05,0x03,0x03,0x01
	.byte	0x04,0x03,0x02,0x00,0xFF,0x02,0x01,0x00
	.byte	0x00,0x00,0xFE,0x01,0x01,0xFF,0x01,0xFF
	.byte	0x02,0xFC,0x01,0x02,0x01,0x02,0xFD,0x02
	.byte	0x00,0xFE,0x03,0x03,0x01,0x03,0x04,0x02
	.byte	0x01,0xFF,0x00,0xFF,0xFF,0x01,0x03,0x03
	.byte	0x04,0x07,0x02,0xFC,0xF7,0xFD,0x01,0xFB
	.byte	0xFC,0xFB,0xFD,0xFD,0x02,0x00,0x01,0x02
	.byte	0x00,0x01,0x05,0x03,0x02,0x02,0x00,0x02
	.byte	0x02,0xFF,0x01,0xFF,0xFE,0xFF,0xFE,0x00
	.byte	0x02,0xFD,0x01,0x02,0xFF,0x00,0xFE,0xFF
	.byte	0xFE,0x01,0x00,0x00,0x00,0x02,0x01,0x00
	.byte	0x02,0xFE,0xFD,0x00,0xFF,0xFF,0x02,0x00
	.byte	0x01,0xFF,0xFF,0x02,0x01,0x01,0x03,0x04
	.byte	0x04,0x06,0xFD,0xF9,0xFE,0xFF,0xFA,0xFC
	.byte	0xFC,0x00,0x00,0xFE,0x00,0x01,0x00,0x01
	.byte	0x05,0x03,0x02,0x03,0x02,0x02,0x03,0x01
	.byte	0x01,0x00,0x00,0x01,0x01,0x02,0x02,0xFF
	.byte	0x01,0x02,0x00,0xFF,0x00,0x02,0x00,0x00
	.byte	0x01,0x02,0x03,0x02,0x02,0x02,0x02,0x02
	.byte	0x01,0x01,0x01,0x02,0x01,0x02,0x04,0x03
	.byte	0x05,0x04,0x07,0x04,0xFB,0xFC,0x03,0x01
	.byte	0xFE,0xFC,0xFF,0x02,0xFF,0x02,0x00,0x00
	.byte	0x04,0x03,0x02,0x05,0x02,0x01,0x04,0x02
	.byte	0x01,0x00,0x03,0x02,0x01,0x02,0x01,0x00
	.byte	0xFE,0x02,0xFE,0xFD,0x01,0xFF,0xFD,0x04
	.byte	0xFF,0x00,0x02,0x01,0x00,0x01,0x02,0x00
	.byte	0xFF,0xFF,0x00,0xFF,0xFD,0xFF,0x01,0xFF
	.byte	0x00,0x02,0x00,0xFF,0xFF,0xFE,0x00,0xFD
	.byte	0xFE,0xFF,0xFE,0xFE,0xFF,0xFF,0x00,0xFD
	.byte	0x00,0xFF,0xFD,0x01,0x00,0xFE,0x04,0x04
	.byte	0x03,0x05,0xFF,0xF8,0xFE,0x02,0xFD,0xF9
	.byte	0xFE,0xFD,0xFD,0x01,0x01,0x00,0xFF,0x01
	.byte	0x01,0x01,0x03,0x02,0x02,0x01,0x01,0x02
	.byte	0x01,0x00,0x01,0xFE,0x03,0x00,0xFF,0x02
	.byte	0x00,0x01,0x02,0x00,0x01,0x01,0xFF,0x01
	.byte	0x01,0xFF,0x02,0x02,0x03,0x00,0x01,0x00
	.byte	0x01,0x03,0x01,0x03,0x01,0xFD,0x00,0x03
	.byte	0x01,0xFF,0xFF,0xFF,0x01,0x01,0x03,0x02
	.byte	0x02,0x04,0x03,0x01,0x02,0x01,0x01,0x03
	.byte	0x00,0x02,0x04,0x01,0x01,0x02,0x02,0x02
	.byte	0x01,0x02,0x01,0x00,0x02,0x01,0x01,0x01
	.byte	0x01,0x00,0x01,0x02,0x01,0x01,0x03,0x03
	.byte	0x01,0x02,0x01,0xFF,0xFE,0xFE,0x01,0x00
	.byte	0xFF,0x00,0x02,0x01,0x01,0x01,0x02,0x01
	.byte	0x02,0x02,0x03,0x03,0x04,0x05,0x06,0x05
	.byte	0xFF,0xFD,0xFD,0xFF,0xFE,0xFB,0xFD,0xFE
	.byte	0xFE,0xFE,0x00,0x01,0xFF,0x03,0x01,0x01
	.byte	0x01,0x02,0x02,0x00,0x01,0x01,0x01,0x00
	.byte	0xFF,0x01,0xFF,0xFF,0xFF,0x00,0x00,0x00
	.byte	0x01,0xFF,0xFF,0x00,0xFF,0xFF,0x00,0x00
	.byte	0x00,0xFF,0x00,0x01,0x00,0xFE,0xFE,0x00
	.byte	0x00,0xFF,0x00,0x01,0x01,0x01,0xFF,0x00
	.byte	0x00,0x00,0xFF,0x00,0xFF,0x00,0x01,0xFF
	.byte	0x01,0x00,0x00,0x00,0xFD,0x01,0x00,0xFE
	.byte	0xFF,0x01,0x01,0x03,0x03,0xFF,0xFE,0x00
	.byte	0x00,0x00,0xFE,0xFF,0xFF,0x01,0x00,0x01
	.byte	0x00,0x02,0x03,0x02,0x02,0x02,0x01,0x02
	.byte	0x01,0x01,0x03,0x00,0x01,0x02,0x01,0x01
	.byte	0x01,0x01,0x01,0x00,0x00,0x00,0x01,0x01
	.byte	0x01,0x00,0x01,0x01,0x01,0x01,0x01,0x01
	.byte	0x02,0x01,0x01,0x01,0x01,0x01,0x00,0x00
	.byte	0xFF,0x01,0x00,0x00,0x02,0x00,0x01,0x01
	.byte	0x02,0x00,0x02,0x02,0x02,0x01,0x02,0x00
	.byte	0x00,0x00,0x00,0x00,0xFF,0xFF,0x00,0x01
	.byte	0x01,0x00,0x02,0x02,0x01,0x01,0x01,0x00
	.byte	0x02,0x02,0x01,0x03,0x00,0xFD,0xFF,0x01
	.byte	0xFF,0xFE,0xFE,0xFF,0x00,0x01,0x00,0x01
	.byte	0x01,0x01,0x01,0x01,0x01,0xFF,0x01,0x00
	.byte	0x00,0x02,0x00,0x00,0x00,0xFF,0x00,0x00
	.byte	0xFF,0x01,0x01,0x00,0x01,0x00,0x01,0x00
	.byte	0x00,0x01,0x00,0x00,0x00,0x00,0x01,0x01
	.byte	0x00,0x01,0x00,0x00,0x00,0xFF,0x00,0x01
	.byte	0x00,0x02,0x02,0x00,0x01,0x01,0x01,0x01
	.byte	0x00,0x00,0x00,0x00,0x00,0x00,0x01,0x01
	.byte	0x00,0x01,0x01,0x00,0x01,0x01,0x01,0x01
	.byte	0x01,0x00,0x02,0x02,0x03,0x01,0x00,0x00
	.byte	0x00,0x00,0xFF,0xFF,0xFF,0x00,0x01,0x01
	.byte	0x00,0x01,0x01,0x01,0x02,0x02,0x01,0x01
	.byte	0x01,0x00,0x01,0x01,0x00,0x01,0x01,0x00
	.byte	0x01,0x01,0x00,0x01,0x01,0x00,0x01,0x02
	.byte	0x01,0x01,0x00,0x00,0x01,0x00,0xFF,0xFF
	.byte	0x00,0x00,0x01,0x00,0x00,0x00,0x01,0x02
	.byte	0x01,0x01,0x01,0x01,0x01,0x00,0x01,0x00
	.byte	0x01,0x02,0x01,0x00,0xFE,0x00,0x00,0x00
	.byte	0xFF,0xFF,0x00,0x00,0x00,0x01,0x01,0x01
	.byte	0x00,0x01,0x01,0x01,0x01,0x00,0x01,0x01
	.byte	0x00,0x00,0x00,0x00,0x00,0x00,0x01,0x00
	.byte	0xFF,0xFF,0x00,0x00,0xFF,0x00,0x00,0x00
	.byte	0x01,0x00,0x01,0x01,0x01,0x01,0x02,0x01
	.byte	0x01,0x01,0x01,0x00,0x00,0x01,0x01,0x02
	.byte	0x02,0x00,0x00,0x00,0x01,0x00,0xFF,0xFF
	.byte	0x00,0x00,0x00,0x00,0x01,0x01,0x01,0x01
	.byte	0x01,0x01,0x01,0x01,0x01,0x01,0x00,0x00
	.byte	0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01
	.byte	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01
	.byte	0x01,0x00,0x01,0x01,0x01,0x01,0x01,0x01
	.byte	0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01
	.byte	0x01,0x01,0x01,0x00,0x00,0x00,0x00,0x00
	.byte	0x00,0x00,0x00,0x01,0x00,0x00,0x01,0x00
	.byte	0x00,0x01,0x01,0x00,0x01,0x01,0x01,0x01
	.byte	0x00,0x01,0x01,0x00,0x00,0x01,0x00,0x01
	.byte	0x00,0x01,0x01,0x00,0x01,0x00,0x00,0x00
	.byte	0x00,0x01,0x01,0x00,0x00,0x01,0x00,0x01
	.byte	0x01,0x00,0x00,0x01,0x00,0x01,0x00,0x00
	.byte	0x01,0x01,0x00,0x00,0x00,0x00,0x00,0x00
	.byte	0x00,0x00,0x00,0x00,0x00,0x01,0x00,0x00
	.byte	0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01
	.byte	0x01,0x01,0x00,0x01,0x01,0x00,0x00,0x01
	.byte	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01
	.byte	0x00,0x00,0x01,0x00,0x01,0x00,0x00,0x00
	.byte	0x00,0x00,0x00,0x00,0x00,0x01,0x00,0x00
	.byte	0x01,0x01,0x01,0x00,0x00,0xFF,0x00,0x00
	.byte	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte	0x00,0x00,0x00,0x01,0x00,0x00,0x01,0x01
	.byte	0x01,0x01,0x01,0x01,0x00,0x00,0x00,0x00
	.byte	0x00,0x00,0x00,0x00,0x00,0x01,0x01,0x01
	.byte	0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01
	.byte	0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01
	.byte	0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01
	.byte	0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x00
	.byte	0x00,0x00,0x00,0x00,0x00,0x01,0x01,0x01
	.byte	0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01
	.byte	0x01,0x01,0x01,0x01,0x01,0x00,0x00,0x01
	.byte	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte	0x00,0x01,0x01,0x01,0x01,0x01,0x00,0x00
	.byte	0x00,0x00,0x00,0x00,0x00,0x01,0x01,0x01
	.byte	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01
	.byte	0x00,0x00,0x00,0x00,0x00,0x00,0x01,0x01
	.byte	0x01,0x01,0x01,0x01,0x01,0x00,0x00,0x00
	.byte	0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01
	.byte	0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01
	.byte	0x00,0x00,0x00,0x01,0x00,0x00,0x00,0x00
	.byte	0x00,0x00,0x00,0x00,0x00,0x01,0x01,0x01
	.byte	0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01
	.byte	0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01
	.byte	0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01
	.byte	0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01
	.byte	0x00,0x00,0x01,0x01,0x01,0x01,0x01,0x01
	.byte	0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01
	.byte	0x01,0x01,0x01,0x00,0x01,0x01,0x01,0x00
	.byte	0x00,0x00,0x00,0x00,0x00,0x00,0x01,0x01
	.byte	0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01
	.byte	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte	0x00,0x00,0x00,0x00,0x00,0x01,0x00,0x00
	.byte	0x00,0x00,0x00,0x01,0x00,0x01,0x00,0x00
	.byte	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01
	.byte	0x00,0x00,0x00,0x00,0x00,0x01,0x00,0x01
	.byte	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte	0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x01
	.byte	0x00,0x00,0x00,0x00,0x01,0x00,0x01,0x00
	.byte	0x00,0x00,0x00,0x01,0x00,0x01,0x00,0x00
	.byte	0x00,0x00,0x00,0x01,0x00,0x00,0x00,0x00
	.byte	0x00,0x00,0x00,0x01,0x00,0x00,0x00,0x01
	.byte	0x00,0x00,0x00,0x01,0x00,0x00,0x00,0x00
	.byte	0x00

	.byte	0x00

	.end
