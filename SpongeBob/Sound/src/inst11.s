#TONE NAME     : inst11
#FREQUENCY     : 8000
#BASE NOTE#    : 48
#START ADDRESS : 000000
#LOOP ADDRESS  : 000000
#END ADDRESS   : 001251
#LOOP MODE     : 1Shot
#FINE TUNE     : 0
#WAVE EXP/COMP : 1
#VOL EXP/COMP  : 1

	.section .rodata
	.global	inst11
	.align	2

inst11:
	.short	0x0000
	.short	0x0000
	.int	16384000
	.int	0
	.int	1251

	.byte	0x02,0x01,0x00,0x00,0xFD,0xFF,0xFE,0xFA
	.byte	0xFE,0x07,0x0E,0x05,0xFB,0xFF,0x04,0x0B
	.byte	0x0D,0x07,0x02,0x09,0x0C,0x0E,0x12,0x15
	.byte	0x19,0x21,0x30,0x39,0x39,0x39,0x3C,0x3A
	.byte	0x2E,0x1B,0x0A,0x03,0xF9,0xEC,0xE6,0xE2
	.byte	0xE1,0xE1,0xE1,0xDC,0xD1,0xCD,0xD1,0xD1
	.byte	0xCD,0xCC,0xC5,0xBB,0xB9,0xB9,0xB6,0xB0
	.byte	0xAA,0xAB,0xAB,0xA8,0xA8,0xB2,0xB6,0xBA
	.byte	0xCA,0xDB,0xE5,0xE9,0xF0,0xF9,0x02,0x0D
	.byte	0x0D,0x0A,0x0D,0x19,0x25,0x32,0x3F,0x4D
	.byte	0x5C,0x64,0x6F,0x77,0x72,0x6C,0x69,0x63
	.byte	0x5D,0x59,0x56,0x56,0x53,0x4B,0x40,0x38
	.byte	0x32,0x2F,0x2A,0x2B,0x2C,0x2B,0x2B,0x29
	.byte	0x21,0x16,0x0C,0x03,0xFF,0x00,0xFB,0xF4
	.byte	0xF0,0xF0,0xED,0xE5,0xDC,0xD3,0xC5,0xB3
	.byte	0xA4,0xA0,0x9C,0x99,0x9B,0xA5,0xAD,0xB0
	.byte	0xB3,0xB7,0xB8,0xB9,0xBA,0xBA,0xBC,0xC2
	.byte	0xC9,0xD3,0xE0,0xEF,0xFE,0x0B,0x1A,0x27
	.byte	0x2F,0x35,0x3B,0x44,0x4B,0x51,0x55,0x5C
	.byte	0x62,0x61,0x5C,0x56,0x4F,0x47,0x3C,0x32
	.byte	0x28,0x1F,0x17,0x13,0x12,0x0E,0x0A,0x06
	.byte	0x04,0x04,0x00,0xF8,0xEE,0xE6,0xDE,0xD1
	.byte	0xC4,0xBB,0xB3,0xAB,0xA1,0x9C,0x9B,0x9A
	.byte	0x9B,0xA0,0xA7,0xAE,0xB5,0xBE,0xC9,0xD2
	.byte	0xD8,0xDC,0xE1,0xE7,0xF0,0xFA,0x05,0x12
	.byte	0x21,0x2D,0x37,0x42,0x49,0x4B,0x4C,0x50
	.byte	0x52,0x50,0x4E,0x4F,0x52,0x52,0x4E,0x48
	.byte	0x43,0x3E,0x38,0x33,0x2E,0x29,0x24,0x21
	.byte	0x1E,0x19,0x11,0x09,0x03,0x00,0xFE,0xF9
	.byte	0xF1,0xEB,0xE7,0xE1,0xD8,0xD0,0xCA,0xC3
	.byte	0xBA,0xB2,0xAE,0xAC,0xAA,0xAA,0xAA,0xA9
	.byte	0xA7,0xA5,0xA7,0xAD,0xB3,0xB9,0xC1,0xCA
	.byte	0xD5,0xE1,0xED,0xFA,0x06,0x11,0x1B,0x26
	.byte	0x2F,0x36,0x3A,0x41,0x49,0x4F,0x52,0x54
	.byte	0x58,0x5A,0x5A,0x56,0x51,0x4C,0x46,0x41
	.byte	0x3A,0x34,0x2F,0x2C,0x2B,0x2C,0x2A,0x26
	.byte	0x22,0x20,0x1E,0x1A,0x12,0x07,0xFF,0xF8
	.byte	0xEF,0xE5,0xDC,0xD2,0xC6,0xBA,0xAF,0xA8
	.byte	0xA4,0xA2,0xA3,0xA6,0xA9,0xAC,0xAE,0xB2
	.byte	0xB7,0xB9,0xBA,0xBB,0xBD,0xC4,0xCC,0xD8
	.byte	0xE8,0xF8,0x09,0x19,0x28,0x34,0x3C,0x42
	.byte	0x48,0x50,0x54,0x56,0x57,0x57,0x57,0x53
	.byte	0x4D,0x46,0x3F,0x3A,0x35,0x31,0x2E,0x2B
	.byte	0x2A,0x2A,0x28,0x22,0x1A,0x15,0x10,0x0C
	.byte	0x08,0x02,0xFB,0xF6,0xF1,0xEC,0xE5,0xDE
	.byte	0xD6,0xCC,0xC2,0xB9,0xB4,0xB3,0xB3,0xB4
	.byte	0xB6,0xB8,0xB9,0xBA,0xBD,0xBF,0xC0,0xC1
	.byte	0xC3,0xC8,0xCF,0xD7,0xE2,0xEF,0xFD,0x09
	.byte	0x15,0x1F,0x27,0x2C,0x31,0x39,0x40,0x46
	.byte	0x49,0x4C,0x50,0x51,0x4F,0x4B,0x45,0x40
	.byte	0x3B,0x36,0x30,0x2A,0x26,0x25,0x23,0x20
	.byte	0x1B,0x15,0x11,0x0F,0x0D,0x0A,0x04,0xFE
	.byte	0xF8,0xF0,0xE8,0xDF,0xD6,0xCD,0xC3,0xB8
	.byte	0xB0,0xAD,0xAD,0xAE,0xB1,0xB4,0xB7,0xB9
	.byte	0xBD,0xC0,0xC1,0xC1,0xC2,0xC6,0xCC,0xD3
	.byte	0xDD,0xEA,0xF9,0x08,0x16,0x22,0x2D,0x33
	.byte	0x37,0x3C,0x43,0x4A,0x4D,0x4F,0x51,0x52
	.byte	0x50,0x4C,0x46,0x41,0x3C,0x37,0x31,0x2B
	.byte	0x27,0x25,0x23,0x22,0x1E,0x17,0x11,0x0C
	.byte	0x09,0x07,0x02,0xFC,0xF6,0xF1,0xEB,0xE4
	.byte	0xDD,0xD6,0xCD,0xC3,0xBA,0xB4,0xB1,0xB0
	.byte	0xB0,0xB2,0xB3,0xB5,0xB7,0xBB,0xBF,0xC1
	.byte	0xC2,0xC5,0xCA,0xD2,0xDB,0xE6,0xF3,0x02
	.byte	0x0F,0x1C,0x26,0x2D,0x32,0x36,0x3C,0x43
	.byte	0x48,0x4C,0x4E,0x50,0x52,0x51,0x4D,0x49
	.byte	0x45,0x40,0x3B,0x35,0x30,0x2B,0x28,0x25
	.byte	0x21,0x1C,0x15,0x0E,0x09,0x06,0x02,0xFD
	.byte	0xF7,0xF2,0xEC,0xE6,0xE0,0xDA,0xD3,0xCA
	.byte	0xC0,0xB7,0xB1,0xAE,0xAD,0xAD,0xAD,0xAF
	.byte	0xB0,0xB3,0xB8,0xBC,0xBE,0xC0,0xC3,0xC9
	.byte	0xD1,0xDA,0xE7,0xF6,0x05,0x14,0x22,0x2D
	.byte	0x35,0x3A,0x3F,0x45,0x4C,0x51,0x55,0x57
	.byte	0x59,0x5A,0x57,0x53,0x4E,0x4A,0x44,0x3E
	.byte	0x37,0x31,0x2D,0x29,0x26,0x22,0x1C,0x15
	.byte	0x0E,0x08,0x03,0xFE,0xF7,0xF0,0xE9,0xE2
	.byte	0xDC,0xD6,0xD0,0xC9,0xC0,0xB6,0xAE,0xA9
	.byte	0xA6,0xA6,0xA6,0xA8,0xAA,0xAD,0xB1,0xB7
	.byte	0xBB,0xBD,0xBF,0xC4,0xCA,0xD2,0xDD,0xEC
	.byte	0xFC,0x0C,0x1B,0x29,0x33,0x3A,0x3E,0x43
	.byte	0x49,0x4E,0x52,0x56,0x59,0x5B,0x5A,0x57
	.byte	0x53,0x4F,0x4A,0x44,0x3D,0x36,0x30,0x2B
	.byte	0x27,0x24,0x20,0x1B,0x14,0x0F,0x0A,0x05
	.byte	0x00,0xFB,0xF5,0xEE,0xE7,0xE1,0xDC,0xD7
	.byte	0xCF,0xC6,0xBB,0xB3,0xAD,0xA9,0xA7,0xA7
	.byte	0xA6,0xA7,0xAA,0xAE,0xB3,0xB5,0xB7,0xB9
	.byte	0xBE,0xC4,0xCC,0xD8,0xE7,0xF8,0x09,0x19
	.byte	0x27,0x30,0x37,0x3C,0x42,0x48,0x4E,0x53
	.byte	0x57,0x5A,0x5C,0x5B,0x59,0x56,0x51,0x4C
	.byte	0x45,0x3E,0x37,0x31,0x2C,0x29,0x26,0x21
	.byte	0x1B,0x15,0x0F,0x09,0x04,0xFE,0xF8,0xF1
	.byte	0xEA,0xE3,0xDD,0xD9,0xD3,0xCB,0xC2,0xB9
	.byte	0xB2,0xAD,0xAB,0xAA,0xAA,0xAA,0xAC,0xAF
	.byte	0xB3,0xB7,0xB8,0xBA,0xBC,0xC0,0xC5,0xCD
	.byte	0xDA,0xEA,0xFB,0x0C,0x1C,0x28,0x32,0x38
	.byte	0x3D,0x43,0x49,0x4E,0x54,0x58,0x5B,0x5C
	.byte	0x5B,0x58,0x53,0x4E,0x49,0x42,0x3C,0x35
	.byte	0x2F,0x2A,0x27,0x24,0x1F,0x19,0x13,0x0D
	.byte	0x07,0x02,0xFC,0xF6,0xF0,0xE8,0xE2,0xDD
	.byte	0xD8,0xD2,0xCA,0xC2,0xB9,0xB3,0xAF,0xAE
	.byte	0xAE,0xAE,0xAE,0xB0,0xB4,0xB8,0xBB,0xBC
	.byte	0xBE,0xC0,0xC3,0xC8,0xD1,0xDD,0xED,0xFE
	.byte	0x0E,0x1C,0x27,0x2F,0x34,0x39,0x3F,0x45
	.byte	0x4B,0x50,0x54,0x56,0x57,0x55,0x52,0x4D
	.byte	0x49,0x44,0x3E,0x38,0x31,0x2C,0x28,0x24
	.byte	0x21,0x1D,0x17,0x11,0x0B,0x05,0x01,0xFC
	.byte	0xF6,0xEF,0xE9,0xE4,0xDF,0xDA,0xD4,0xCD
	.byte	0xC4,0xBC,0xB7,0xB3,0xB2,0xB2,0xB2,0xB3
	.byte	0xB5,0xB7,0xBB,0xBD,0xBE,0xBF,0xC0,0xC3
	.byte	0xC9,0xD2,0xE0,0xF0,0x01,0x11,0x1E,0x29
	.byte	0x30,0x35,0x3A,0x3F,0x45,0x4B,0x50,0x54
	.byte	0x57,0x57,0x55,0x50,0x4C,0x47,0x42,0x3D
	.byte	0x37,0x31,0x2B,0x26,0x22,0x1F,0x1A,0x14
	.byte	0x0D,0x06,0x00,0xFB,0xF6,0xF0,0xEA,0xE4
	.byte	0xDF,0xDB,0xD7,0xD2,0xCB,0xC4,0xBD,0xB8
	.byte	0xB6,0xB5,0xB4,0xB5,0xB6,0xB8,0xBB,0xBE
	.byte	0xC0,0xC1,0xC2,0xC4,0xC7,0xCC,0xD6,0xE4
	.byte	0xF5,0x06,0x15,0x22,0x2B,0x32,0x37,0x3C
	.byte	0x41,0x46,0x4B,0x50,0x54,0x57,0x57,0x54
	.byte	0x4F,0x4B,0x46,0x41,0x3B,0x35,0x2F,0x29
	.byte	0x25,0x21,0x1E,0x19,0x14,0x0D,0x06,0x01
	.byte	0xFB,0xF5,0xEF,0xE8,0xE2,0xDD,0xD9,0xD4
	.byte	0xCF,0xC8,0xC1,0xBB,0xB7,0xB4,0xB3,0xB3
	.byte	0xB4,0xB5,0xB7,0xBA,0xBE,0xC0,0xC2,0xC3
	.byte	0xC5,0xC8,0xCE,0xD9,0xE8,0xF9,0x0A,0x19
	.byte	0x25,0x2F,0x36,0x3A,0x3F,0x43,0x48,0x4C
	.byte	0x51,0x55,0x57,0x56,0x53,0x4E,0x4A,0x45
	.byte	0x40,0x3A,0x33,0x2D,0x27,0x22,0x1F,0x1C
	.byte	0x18,0x12,0x0C,0x06,0x00,0xFB,0xF5,0xEF
	.byte	0xE8,0xE2,0xDD,0xD9,0xD5,0xCF,0xC8,0xC0
	.byte	0xBA,0xB6,0xB3,0xB1,0xB1,0xB2,0xB3,0xB5
	.byte	0xB8,0xBC,0xBF,0xC1,0xC3,0xC6,0xCA,0xD1
	.byte	0xDD,0xED,0xFE,0x0E,0x1D,0x29,0x32,0x37
	.byte	0x3C,0x40,0x44,0x47,0x4B,0x50,0x54,0x55
	.byte	0x54,0x51,0x4D,0x48,0x44,0x3F,0x39,0x33
	.byte	0x2C,0x27,0x23,0x20,0x1D,0x19,0x13,0x0D
	.byte	0x07,0x01,0xFB,0xF5,0xEE,0xE7,0xE2,0xDD
	.byte	0xD8,0xD3,0xCC,0xC5,0xBE,0xB8,0xB4,0xB1
	.byte	0xB0,0xB1,0xB2,0xB3,0xB5,0xB8,0xBC,0xBF
	.byte	0xC1,0xC3,0xC6,0xCA,0xD2,0xDF,0xEF,0x00
	.byte	0x10,0x1E,0x29,0x32,0x38,0x3C,0x40,0x43
	.byte	0x46,0x4A,0x4F,0x52,0x54,0x52,0x4F,0x4B
	.byte	0x46,0x42,0x3D,0x38,0x32,0x2C,0x27,0x23
	.byte	0x20,0x1D,0x19,0x13,0x0D,0x07,0x02,0xFC
	.byte	0xF5,0xEE,0xE7,0xE1,0xDD,0xD7,0xD1,0xCB
	.byte	0xC4,0xBD,0xB8,0xB4,0xB2,0xB2,0xB2,0xB3
	.byte	0xB5,0xB7,0xBB,0xBF,0xC2,0xC5,0xC7,0xC9
	.byte	0xCE,0xD6,0xE3,0xF3,0x03,0x12,0x20,0x2B
	.byte	0x33,0x38,0x3C,0x3F,0x42,0x45,0x48,0x4C
	.byte	0x50,0x51,0x50,0x4C,0x48,0x43,0x3F,0x3A
	.byte	0x35,0x2F,0x29,0x24,0x20,0x1D,0x1B,0x17
	.byte	0x12,0x0C,0x06,0x00,0xFB,0xF4,0xED,0xE6
	.byte	0xE1,0xDB,0xD6,0xD0,0xCA,0xC3,0xBD,0xBA
	.byte	0xB8,0xB8,0xBB,0xBD,0xC1,0xC5,0xC9,0xCD
	.byte	0xD3,0xD7,0xDA,0xDD,0xE0,0xE4,0xEA,0xF2
	.byte	0xFB,0x02,0x09,0x0D,0x11,0x12,0x13,0x12
	.byte	0x11,0x10,0x0F,0x0D,0x0C,0x0A,0x08,0x06
	.byte	0x04,0x01,0xFF

	.byte	0x00

	.end
