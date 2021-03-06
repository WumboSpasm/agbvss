#TONE NAME     : sfxaspl
#FREQUENCY     : 8000
#BASE NOTE#    : 48
#START ADDRESS : 000000
#LOOP ADDRESS  : 000000
#END ADDRESS   : 003779
#LOOP MODE     : 1Shot
#FINE TUNE     : 0
#WAVE EXP/COMP : 1
#VOL EXP/COMP  : 1

	.section .rodata
	.global	sfxaspl
	.align	2

sfxaspl:
	.short	0x0000
	.short	0x0000
	.int	16384000
	.int	0
	.int	3779

	.byte	0x01,0x00,0x01,0x00,0x01,0x00,0x01,0x00
	.byte	0x01,0x00,0x01,0x00,0x01,0x00,0x01,0x01
	.byte	0x00,0x00,0x00,0x00,0x01,0x00,0x01,0x01
	.byte	0x01,0x00,0x01,0x00,0x00,0x00,0x01,0x01
	.byte	0x00,0x01,0x01,0x00,0x00,0x01,0x01,0x00
	.byte	0x01,0x00,0x00,0x00,0x01,0x01,0x00,0xFF
	.byte	0x01,0x00,0x01,0x00,0x00,0x00,0x01,0x00
	.byte	0x00,0x01,0x00,0x00,0x01,0x01,0x00,0x01
	.byte	0x00,0x00,0x01,0x00,0x00,0x01,0xFD,0xFF
	.byte	0x01,0x04,0xFF,0x01,0xFC,0x01,0x02,0x00
	.byte	0x03,0x00,0x00,0x00,0xFF,0x04,0x03,0x02
	.byte	0xFF,0xFC,0xFE,0x02,0x05,0xFE,0x01,0x01
	.byte	0xFE,0x01,0x00,0xFF,0xFF,0x00,0xFE,0x05
	.byte	0xF7,0x06,0x0C,0x00,0xFF,0xFC,0x05,0x00
	.byte	0xFF,0x00,0x02,0x0D,0xFF,0xF6,0xF6,0x0B
	.byte	0x0A,0x0A,0xFF,0xF7,0x02,0xF8,0xFF,0xFD
	.byte	0x04,0xFF,0xFC,0xFD,0x00,0x04,0x03,0x00
	.byte	0xFD,0xFE,0x02,0x03,0x03,0x02,0x02,0x01
	.byte	0x02,0xFD,0x02,0x00,0xFB,0x01,0x05,0x03
	.byte	0xFF,0xFE,0xFD,0x04,0x04,0x01,0x00,0xFD
	.byte	0xFA,0xF9,0x09,0x0C,0xFC,0xFC,0x0C,0x0A
	.byte	0x12,0x20,0x1B,0xF4,0xDD,0xDE,0xD9,0xEF
	.byte	0x15,0x11,0xF4,0xEC,0x01,0x0B,0x19,0x1E
	.byte	0x06,0xE6,0xDA,0xE3,0x02,0x1C,0x15,0xFD
	.byte	0xF3,0x00,0x19,0x1F,0x1B,0x0F,0x03,0xF3
	.byte	0xF0,0xF1,0xFF,0x04,0xFE,0xF2,0xE2,0xEB
	.byte	0x02,0x12,0x1D,0x16,0x0A,0xFC,0xF9,0xF7
	.byte	0xFE,0x02,0x06,0xF5,0xF4,0xFA,0xEE,0xFC
	.byte	0x0C,0x10,0x0D,0x07,0x06,0xF4,0x03,0x01
	.byte	0x05,0x0E,0xF9,0xEE,0xF0,0xDD,0xFC,0x22
	.byte	0x0C,0xE2,0xDD,0xFE,0x27,0x1A,0x00,0xEF
	.byte	0x14,0x1B,0x17,0xEA,0xF8,0x42,0x29,0xED
	.byte	0xF0,0x03,0x1E,0xED,0xB7,0xD7,0x01,0x18
	.byte	0xC8,0xD7,0x3C,0x06,0x05,0x2A,0x31,0x39
	.byte	0xEC,0xCB,0xF2,0x39,0x35,0x0E,0xC2,0xB6
	.byte	0xE7,0xF0,0x1F,0x03,0xD2,0xED,0x1D,0xDC
	.byte	0x1E,0x51,0x27,0x07,0x08,0x23,0xCD,0xE3
	.byte	0xF0,0xD6,0x3C,0x1A,0xC3,0xB7,0xEF,0x2E
	.byte	0x03,0x45,0x1A,0xCD,0xBC,0xD3,0xC7,0x16
	.byte	0x78,0x0A,0xAE,0xD0,0xF6,0x3F,0x49,0x32
	.byte	0xEC,0xDB,0x26,0x5C,0x45,0x0A,0xF5,0xFF
	.byte	0x56,0x35,0x38,0x09,0xC5,0xF9,0x0D,0xB3
	.byte	0xE9,0xBD,0xAB,0xCD,0xB4,0xC3,0xBD,0x35
	.byte	0x3F,0xE2,0x47,0xE3,0x07,0xBC,0x5E,0x54
	.byte	0x63,0x3C,0xF6,0x8E,0x07,0xF9,0xCC,0x4E
	.byte	0x5D,0x39,0x53,0xE3,0x08,0x11,0xC4,0x10
	.byte	0xC0,0xA5,0xC5,0xB9,0xCD,0xAA,0xE1,0xEF
	.byte	0x2F,0x2A,0x1E,0xFA,0x25,0xE8,0x31,0x57
	.byte	0xFA,0x61,0x3E,0xE0,0x0C,0x0D,0x2C,0x21
	.byte	0xB3,0xAD,0xDF,0xD4,0xF3,0xC4,0xF1,0xC5
	.byte	0x5E,0x0A,0x18,0x31,0xFE,0x3E,0x30,0x29
	.byte	0x1D,0xB3,0xD5,0x08,0xD1,0x11,0xB9,0x28
	.byte	0xB5,0x27,0xEA,0x41,0xAF,0x5C,0x11,0x29
	.byte	0x39,0xFC,0xD4,0x3A,0xC9,0xC1,0xB1,0xCC
	.byte	0xE5,0xE4,0x27,0xFE,0x24,0x0F,0x5F,0x2F
	.byte	0x2A,0x01,0x3A,0x13,0xCA,0x11,0x3F,0x13
	.byte	0xD0,0x41,0xD4,0xBF,0xBD,0xBB,0xC2,0xBF
	.byte	0xEF,0x3A,0x4E,0x2B,0x42,0xFE,0xBC,0xC2
	.byte	0x16,0xD9,0xD3,0xE0,0xD0,0xDF,0xE8,0x13
	.byte	0x55,0x2B,0x27,0x3B,0x1D,0x03,0xF9,0x0A
	.byte	0xDD,0x12,0x1C,0x1A,0x25,0xFF,0xD4,0xE4
	.byte	0xD4,0x04,0xD1,0x0C,0xE6,0xE2,0xF3,0x05
	.byte	0x14,0xED,0x09,0x21,0x28,0x19,0xFE,0xF5
	.byte	0xEB,0xFD,0x0B,0xF7,0x0A,0x0B,0xD6,0xC8
	.byte	0xC5,0xD5,0x35,0x07,0x20,0x38,0x18,0x39
	.byte	0x24,0xFB,0xE9,0x0E,0x19,0xEA,0xF5,0xCF
	.byte	0xE5,0xEE,0xE2,0xFF,0xFA,0xDB,0xEA,0x2F
	.byte	0x0D,0x24,0x06,0xE9,0xD9,0xD9,0xCD,0x0E
	.byte	0x38,0x13,0xDA,0x1D,0x06,0xEF,0x10,0x1F
	.byte	0x1D,0xF7,0xE3,0xF8,0x0B,0x03,0xE4,0x57
	.byte	0x20,0x0A,0xEC,0xF8,0xF4,0xF4,0xEF,0xFB
	.byte	0xB5,0xE2,0xE9,0x29,0x1D,0xFC,0x10,0x25
	.byte	0x10,0x24,0xF3,0xDE,0xDE,0x0D,0xFF,0x26
	.byte	0x0B,0xF5,0xCF,0xE2,0xF7,0x02,0x20,0x17
	.byte	0xE2,0x07,0xFC,0x09,0x2F,0x20,0x01,0xE5
	.byte	0xFC,0x07,0xFE,0xF9,0x09,0xD8,0x12,0x36
	.byte	0xC8,0xE0,0xC3,0xDF,0xFD,0xD6,0xDF,0x23
	.byte	0x42,0x0C,0xE9,0x3A,0x4A,0xD4,0xFF,0x54
	.byte	0x37,0xE7,0xC7,0x03,0x13,0xF2,0xFF,0x1F
	.byte	0xFE,0xEE,0xBD,0xDB,0xE9,0xFF,0x0C,0xFE
	.byte	0xF4,0xEB,0xE8,0x1A,0x08,0xED,0xFC,0x40
	.byte	0x23,0xEE,0x29,0xD9,0xC4,0xF1,0x04,0x41
	.byte	0x30,0x02,0x0E,0x43,0x13,0xDC,0xFA,0xF9
	.byte	0xFC,0xD8,0xDA,0xCF,0xE0,0x04,0x28,0x32
	.byte	0x0B,0xE9,0xF0,0xF5,0x00,0x1A,0x06,0x2B
	.byte	0x23,0xF3,0xEA,0xF0,0xF7,0xF8,0xEC,0xE0
	.byte	0x07,0x09,0x02,0x0C,0xEC,0xE2,0xF2,0x12
	.byte	0x08,0x37,0x06,0xA3,0xC3,0x20,0x51,0x35
	.byte	0xE2,0xB8,0xD3,0xFA,0x37,0x34,0x25,0xEA
	.byte	0xF9,0xF3,0x2E,0x28,0xFD,0xBC,0xF3,0x34
	.byte	0x18,0xFB,0xE2,0xCD,0xF5,0x25,0x00,0xE2
	.byte	0xD1,0xF3,0x07,0x13,0x25,0x1F,0xF8,0xDD
	.byte	0xFB,0x37,0x20,0xDC,0xBE,0xDD,0x0B,0x2E
	.byte	0x0E,0xE1,0xCF,0xF1,0x12,0x26,0x1E,0xFB
	.byte	0x01,0xF7,0xE1,0x18,0xF3,0xD9,0x07,0x15
	.byte	0x1C,0x20,0x0C,0xFB,0xD8,0x16,0x3B,0x09
	.byte	0xF8,0xE7,0xBC,0x16,0x26,0xCC,0xDB,0x10
	.byte	0x03,0x07,0x0D,0xEE,0xEA,0x1C,0xF4,0xE2
	.byte	0x1B,0x0A,0xEE,0xF3,0x09,0x06,0x22,0x06
	.byte	0xE5,0xF9,0x22,0x16,0x01,0xF1,0xEC,0x23
	.byte	0xFE,0xFA,0x22,0xF6,0xC9,0xFA,0x00,0x17
	.byte	0xFE,0xE5,0xE7,0x0A,0x1F,0x07,0x04,0x09
	.byte	0xF8,0xF8,0x0C,0xED,0xF6,0x1F,0x07,0xFB
	.byte	0xFB,0xF9,0xF6,0xF3,0xE3,0xFE,0x0F,0x13
	.byte	0x04,0xF0,0x16,0x0C,0xE8,0xFA,0x0F,0x14
	.byte	0x0F,0x1A,0xFC,0x07,0x1A,0xFE,0xE7,0xE3
	.byte	0xF7,0xE2,0xD5,0xFF,0x1A,0x1F,0x13,0x16
	.byte	0xF7,0xEA,0xE4,0xF5,0x10,0x2C,0x19,0x12
	.byte	0x24,0x04,0xE2,0xDD,0xF5,0xFA,0x0F,0x21
	.byte	0x07,0x01,0xFB,0xFF,0xE6,0xF3,0x14,0xF5
	.byte	0xFA,0xF4,0xE2,0xFA,0xE5,0xF9,0x09,0x00
	.byte	0xF4,0xF7,0x0F,0xEA,0x06,0x12,0x18,0x15
	.byte	0x0E,0x16,0x1A,0x18,0xF2,0x04,0xEA,0xF0
	.byte	0x17,0x04,0x13,0x12,0x11,0x1B,0x1F,0xFF
	.byte	0xF8,0xDB,0xEE,0xFD,0x03,0x10,0x02,0xF3
	.byte	0x01,0x06,0x0A,0xE8,0xE1,0xFE,0xFE,0x1C
	.byte	0xEC,0x0B,0x08,0x00,0xE2,0xF6,0xFC,0xDF
	.byte	0xFB,0xF0,0x09,0x02,0xF2,0x0D,0xE9,0x06
	.byte	0x11,0xFB,0x10,0x12,0x18,0x2D,0x0F,0x09
	.byte	0x2D,0x0B,0xFD,0xFE,0xFD,0x10,0xEC,0xDF
	.byte	0xE3,0xE4,0xDD,0xE9,0xFE,0x04,0xFC,0x22
	.byte	0x10,0x23,0x15,0x17,0x19,0x14,0x17,0x0E
	.byte	0x12,0xFF,0xF7,0xF5,0xF2,0xF5,0x0C,0xF2
	.byte	0xF3,0xFF,0xDC,0xE3,0xF6,0x08,0xF9,0xFB
	.byte	0xF2,0xE3,0x05,0xF3,0x04,0x2D,0x19,0x00
	.byte	0x18,0x01,0xE6,0xF9,0xFE,0x0B,0x2B,0xFF
	.byte	0xFF,0x12,0xEA,0xDD,0x20,0x04,0x06,0xFE
	.byte	0x0B,0x0F,0x0F,0x15,0x0A,0x04,0x0B,0xE4
	.byte	0x08,0x01,0xF5,0x1A,0x04,0x01,0x01,0xF0
	.byte	0xF0,0x02,0xF8,0xE9,0xE6,0xF5,0xF9,0xF3
	.byte	0xFC,0xEE,0x06,0x1B,0x0C,0x24,0x08,0x07
	.byte	0x07,0xFB,0xF7,0x07,0x1D,0x11,0x04,0x05
	.byte	0x08,0xEC,0xE9,0x06,0x05,0xDE,0xF2,0x01
	.byte	0x0A,0x48,0xE8,0x22,0xFC,0xB2,0x24,0x0E
	.byte	0xFE,0x00,0xEC,0xFE,0x0D,0x0F,0x1B,0xF5
	.byte	0xFD,0xE8,0xE2,0x10,0x19,0x05,0x0F,0x0E
	.byte	0xFE,0xEB,0xF6,0x07,0x17,0x06,0x05,0x3F
	.byte	0xF2,0xCE,0x03,0xF8,0xE0,0x09,0x18,0xF9
	.byte	0xF3,0xFC,0x12,0x16,0xF8,0xEB,0xF0,0x10
	.byte	0x12,0xF2,0x18,0xFA,0xFA,0xF5,0xFC,0xF9
	.byte	0x0A,0x0D,0x17,0x0E,0x04,0x02,0x03,0xF9
	.byte	0xE9,0x07,0x02,0x04,0xEB,0x00,0x2D,0xF2
	.byte	0x08,0x02,0xF6,0xFB,0xE9,0xF6,0x09,0x19
	.byte	0x1A,0xFF,0x06,0xEA,0x00,0x16,0xF0,0xE7
	.byte	0x18,0x13,0x35,0x0A,0xEC,0xD1,0xEB,0xED
	.byte	0x09,0x35,0x08,0x0E,0x03,0xE8,0xEE,0xF2
	.byte	0x1A,0xFF,0xF8,0x02,0xF9,0xF8,0xF0,0x04
	.byte	0x1B,0x0C,0x03,0xF7,0x01,0x21,0x02,0xE7
	.byte	0x14,0xF4,0xFF,0x0F,0xFB,0xF4,0x00,0x14
	.byte	0x1D,0xF2,0xFB,0xF8,0xFC,0x05,0x0D,0xF2
	.byte	0xF6,0x0E,0x09,0xF9,0xFA,0x0B,0x10,0xF9
	.byte	0x00,0x06,0x0D,0xFA,0x01,0xFB,0xF7,0xFE
	.byte	0xF3,0xFB,0x14,0x0B,0xF0,0xF6,0x11,0xF4
	.byte	0x09,0x11,0xFE,0xFE,0x0D,0xFE,0xEB,0xFC
	.byte	0xEA,0xFE,0x1C,0x30,0x1A,0x00,0xF5,0x12
	.byte	0xE3,0x0D,0xFA,0xE2,0xFD,0x03,0xF2,0x0C
	.byte	0x27,0x1E,0x05,0xFF,0xE5,0xD8,0xD3,0xE8
	.byte	0x0D,0x2F,0x08,0x16,0x18,0xFB,0x02,0xFB
	.byte	0x14,0xFB,0xCB,0x04,0x2A,0x1C,0x0C,0x12
	.byte	0xEB,0xDE,0xED,0x0E,0x1B,0xED,0x01,0xED
	.byte	0xED,0x17,0xFB,0xFB,0xFF,0xF6,0xF5,0x02
	.byte	0x07,0x0B,0x1A,0x17,0x10,0x15,0x1E,0xF4
	.byte	0xDB,0x09,0xFF,0xE6,0xF8,0x0E,0x1C,0x03
	.byte	0xFC,0xEF,0xFA,0xF2,0xF3,0x02,0x09,0x06
	.byte	0x04,0xF7,0xFA,0xFE,0xF3,0xFB,0x09,0x17
	.byte	0x08,0x11,0x0D,0x0A,0x01,0xF4,0xEA,0xF1
	.byte	0xFE,0x0B,0x0D,0x27,0x1D,0xFB,0xE5,0x30
	.byte	0xE0,0xDC,0xED,0xF2,0x04,0x22,0x08,0xD9
	.byte	0x19,0xEF,0x10,0xFA,0xEE,0x01,0x2A,0x11
	.byte	0x10,0xFE,0x0D,0xDE,0xF0,0x08,0x10,0xFD
	.byte	0xFE,0x21,0x05,0x11,0xFB,0x04,0xDC,0xD5
	.byte	0x14,0x0F,0xE0,0xF1,0xF5,0xD8,0x1D,0x54
	.byte	0x43,0x2A,0xD7,0xAE,0xB7,0xC9,0xF8,0x20
	.byte	0x39,0x1F,0x12,0x1B,0xF0,0xFF,0xEE,0x09
	.byte	0x08,0xE0,0xDE,0xDD,0x44,0x34,0x39,0x05
	.byte	0x09,0xD4,0xE4,0xD4,0xE2,0xFB,0x09,0x37
	.byte	0x40,0x2B,0x05,0x03,0x01,0xDB,0xD0,0xDA
	.byte	0xF2,0xF2,0x0A,0x24,0x1D,0x0A,0xF3,0xF9
	.byte	0xEC,0xF0,0xFA,0xF4,0x13,0x1F,0x17,0x10
	.byte	0xFA,0xE9,0xEE,0xDC,0xDE,0x00,0x14,0x1F
	.byte	0x1A,0xF6,0xF5,0xF9,0xF1,0xF8,0x08,0x0C
	.byte	0x14,0x06,0x0C,0xFA,0x01,0xF6,0xFD,0x09
	.byte	0x12,0x21,0x03,0xF8,0x07,0x04,0xFB,0xF8
	.byte	0xFC,0x04,0x09,0x01,0xF8,0xEE,0xF6,0xF3
	.byte	0xFE,0x10,0x0C,0x00,0xF6,0x08,0x05,0xF7
	.byte	0xF8,0xFB,0x01,0x0D,0x04,0xFF,0x09,0xF6
	.byte	0xF5,0x02,0x0F,0x01,0xFD,0x06,0xFD,0xFD
	.byte	0xFB,0xF4,0x00,0xFA,0x00,0x03,0x0A,0x05
	.byte	0xFD,0x0B,0x04,0xFF,0xFA,0x07,0x0C,0x00
	.byte	0x07,0x0B,0xF2,0xF8,0x00,0xFE,0xF0,0x0A
	.byte	0xF5,0xFF,0x0B,0xFA,0x03,0xFB,0x13,0xF4
	.byte	0x0C,0x0A,0xF9,0xF9,0x0D,0xF6,0xFE,0x19
	.byte	0x00,0xF5,0x06,0x11,0xF7,0xFB,0x08,0xEE
	.byte	0x03,0x05,0xF5,0xF2,0x0D,0x09,0x04,0xFD
	.byte	0x06,0xF0,0x00,0x03,0xF9,0xF9,0x17,0x10
	.byte	0x06,0xF2,0xF2,0xFC,0xF2,0x04,0xFB,0x0C
	.byte	0x0A,0x0C,0x00,0xFB,0xF8,0xF8,0x00,0x01
	.byte	0x04,0x05,0x04,0x07,0x0B,0x08,0xEB,0xF9
	.byte	0x09,0x01,0x05,0xFF,0x07,0x01,0x01,0xF3
	.byte	0x07,0x06,0x00,0x03,0x04,0x06,0xFF,0xF9
	.byte	0xF4,0xFD,0x02,0xFE,0xFD,0xF8,0x02,0x07
	.byte	0x0F,0x07,0x03,0x0B,0xF8,0xFF,0xFE,0xFA
	.byte	0xF5,0x04,0x05,0x00,0x05,0x04,0x01,0xFE
	.byte	0x07,0xF8,0xF4,0xFB,0xFE,0xFF,0xFB,0x0D
	.byte	0x03,0xFD,0x06,0x00,0xFB,0x01,0xF2,0xF2
	.byte	0x06,0x0A,0x04,0x02,0x07,0x06,0x05,0x08
	.byte	0x01,0xFE,0x0B,0x02,0xF8,0xF2,0xFF,0x06
	.byte	0x05,0x05,0x02,0xFC,0xF4,0x13,0x0A,0xF5
	.byte	0xE8,0xF5,0x0B,0x0F,0x07,0x06,0xFD,0x00
	.byte	0x11,0xFB,0xE7,0xEB,0x0D,0x02,0xF8,0x01
	.byte	0x16,0x01,0xF9,0xFD,0x0C,0x00,0xFA,0xF4
	.byte	0x02,0xFB,0xF7,0xF5,0x19,0x04,0xF6,0x02
	.byte	0x16,0xF8,0xFA,0x01,0x00,0xF8,0x09,0x02
	.byte	0xFA,0x04,0x07,0x0F,0xF9,0xFC,0x0E,0x05
	.byte	0xF9,0xF7,0x07,0x04,0xF9,0xF7,0xFD,0xFF
	.byte	0xFC,0x00,0x08,0x0C,0x03,0xFE,0xFF,0xFF
	.byte	0xFE,0xFE,0x00,0x01,0xFB,0xFC,0xFE,0x09
	.byte	0x09,0x04,0x04,0x03,0xFD,0xF9,0xF1,0xF5
	.byte	0xFD,0x06,0x0A,0x05,0x05,0x03,0x01,0xFF
	.byte	0xFA,0xF8,0xFE,0x03,0x06,0x05,0x04,0x00
	.byte	0xFB,0xFD,0xFF,0xFE,0xFE,0x01,0x00,0x00
	.byte	0x02,0x04,0x03,0xFF,0xFE,0xFE,0x00,0xFF
	.byte	0x00,0x02,0x04,0x03,0x04,0x03,0xFA,0xF9
	.byte	0x00,0x00,0xFE,0x04,0x00,0xFD,0xFF,0x02
	.byte	0x03,0x04,0x00,0xFF,0xFD,0x01,0xFD,0x00
	.byte	0x00,0x03,0x01,0x03,0xFF,0x04,0x01,0x01
	.byte	0x00,0x04,0x00,0x00,0xFC,0xFD,0xFF,0x04
	.byte	0x02,0xFC,0x07,0x04,0x00,0xFD,0x01,0xF9
	.byte	0x00,0xFA,0xF9,0xFD,0x05,0x01,0x04,0x09
	.byte	0x02,0x00,0x01,0xFF,0x01,0xFE,0x02,0xFC
	.byte	0xFF,0x03,0x05,0x02,0x05,0x06,0x02,0xFC
	.byte	0xFD,0xFE,0xFB,0xFD,0xFF,0x02,0x01,0x03
	.byte	0x01,0x00,0xFD,0x05,0xFD,0xFD,0xFC,0x03
	.byte	0xFF,0x05,0xFF,0x04,0x01,0x03,0xFD,0x00
	.byte	0xFF,0xFE,0xFE,0x07,0x01,0x00,0xFA,0xFA
	.byte	0x01,0x04,0x00,0x00,0xFE,0x05,0x06,0xF8
	.byte	0xF4,0x08,0x04,0xFA,0x0D,0xEF,0x12,0x05
	.byte	0x12,0xEF,0x03,0x05,0xF5,0x0A,0x11,0xF5
	.byte	0xED,0xFE,0x0B,0x07,0xFF,0xF8,0xF0,0x01
	.byte	0x06,0x02,0xFC,0xFE,0xFF,0x04,0x08,0x0D
	.byte	0x01,0x02,0xFA,0xFF,0xF8,0x01,0xFC,0x01
	.byte	0x03,0x04,0xFF,0x03,0x03,0xF9,0xF5,0x04
	.byte	0x00,0xF7,0xFF,0x0E,0x02,0x01,0x07,0x01
	.byte	0xF6,0x01,0x06,0xFE,0x00,0x06,0xFC,0x02
	.byte	0x04,0x00,0xF7,0x06,0x03,0xF8,0xFB,0x08
	.byte	0xF9,0x05,0x10,0x01,0xF7,0x06,0x06,0xF4
	.byte	0xFB,0x01,0xFA,0xFF,0x05,0x06,0xFF,0x06
	.byte	0x02,0xFD,0xFF,0x06,0xFE,0xF9,0xFA,0x03
	.byte	0x03,0xFD,0x03,0x03,0x01,0xFF,0x07,0x01
	.byte	0xFE,0xFC,0x05,0xFD,0x01,0xFA,0x00,0xFE
	.byte	0x07,0x00,0x03,0xFF,0x05,0xFF,0x02,0xFC
	.byte	0xF6,0xFB,0x04,0xF9,0xFE,0x08,0x0A,0x01
	.byte	0x08,0x0E,0x00,0xF9,0xFD,0x05,0xF9,0xFD
	.byte	0x00,0xFE,0xFB,0x0A,0x06,0xFE,0xFC,0x07
	.byte	0x01,0xFC,0x01,0xFF,0xFF,0xF8,0xFC,0x00
	.byte	0xFF,0x01,0x00,0x09,0x05,0x04,0x03,0x05
	.byte	0xFC,0xF6,0xF8,0xFD,0xFD,0x00,0x06,0x06
	.byte	0x0A,0x08,0x02,0xF8,0xFE,0x02,0xFF,0xFA
	.byte	0xFD,0x01,0x01,0x03,0x05,0xFF,0xFF,0x03
	.byte	0xFF,0xFC,0x01,0x01,0xFC,0xFD,0x06,0x05
	.byte	0x03,0xFF,0x04,0x03,0x03,0x00,0xFF,0xFF
	.byte	0xFC,0xFB,0xFF,0x01,0x05,0x03,0xFD,0xFE
	.byte	0x02,0x04,0xFD,0xFB,0xF8,0xFE,0x00,0x07
	.byte	0x07,0x00,0x05,0x0C,0x08,0xF5,0xFB,0x01
	.byte	0xFD,0x01,0x07,0x01,0xF7,0x01,0xFE,0xFF
	.byte	0xFF,0x05,0x03,0x04,0x03,0x05,0xFC,0xF3
	.byte	0xF4,0xF5,0xFC,0x02,0x0F,0x0A,0xF3,0x0C
	.byte	0x1B,0xFF,0xEF,0x06,0x05,0xFE,0x05,0x02
	.byte	0xFC,0x02,0x01,0xEF,0xFD,0x02,0xFB,0xFC
	.byte	0x0A,0xFE,0xFB,0x01,0x00,0xFF,0x04,0x05
	.byte	0xFF,0x00,0x04,0xFE,0xFD,0x0E,0x0D,0x01
	.byte	0x05,0x05,0xF5,0xF0,0x01,0xFB,0xFD,0x00
	.byte	0x04,0xF8,0x09,0xFF,0xFA,0xF5,0xFE,0x01
	.byte	0x01,0x0C,0x0B,0x08,0x0C,0x07,0xFF,0xF8
	.byte	0xF5,0xF4,0xF9,0x01,0x02,0x06,0x01,0x09
	.byte	0x02,0x02,0xF8,0xF9,0xF9,0x02,0x08,0x0F
	.byte	0x07,0xFC,0xFA,0xFC,0xFD,0xFC,0xFF,0xFD
	.byte	0x00,0x05,0x00,0xFD,0x00,0x04,0x06,0x07
	.byte	0xFD,0xF9,0xFA,0x01,0x01,0x03,0x02,0x08
	.byte	0x09,0x07,0x00,0x02,0xF7,0xF3,0xF2,0xF7
	.byte	0xF9,0xFD,0x06,0x0C,0x11,0x15,0x0F,0x04
	.byte	0xFD,0xF5,0xF3,0xF4,0xF4,0xF7,0x01,0x03
	.byte	0x04,0x02,0xFF,0xFC,0x00,0x05,0x06,0x06
	.byte	0x04,0x06,0x03,0x01,0x00,0xFE,0xFA,0xF8
	.byte	0xF9,0xFD,0x02,0x05,0xF7,0x02,0x02,0x06
	.byte	0x08,0x06,0x0D,0x08,0x08,0xF9,0xF3,0xED
	.byte	0xF0,0xF5,0xFA,0x02,0x03,0x09,0x06,0x09
	.byte	0x05,0x02,0x03,0x04,0x09,0x08,0x03,0xF9
	.byte	0xF5,0xF3,0xF2,0xF7,0xFB,0x01,0x07,0x0E
	.byte	0x13,0x12,0x08,0xFE,0xF6,0xF4,0xF7,0xFD
	.byte	0xFD,0xFB,0x01,0x07,0x00,0xFF,0xFD,0x02
	.byte	0x0A,0x09,0x03,0x01,0x03,0xFF,0xF8,0xF7
	.byte	0xFA,0xFA,0x00,0x01,0xFF,0x01,0x00,0xFE
	.byte	0xFF,0x03,0x07,0x07,0x06,0x03,0xFE,0xFA
	.byte	0xFD,0xFB,0xFD,0xFF,0x06,0x0B,0x06,0x00
	.byte	0xFB,0x02,0x00,0xFC,0xFD,0xFC,0xFF,0x05
	.byte	0x03,0x01,0xFC,0xFA,0xFF,0x06,0x01,0xFC
	.byte	0xF9,0xFA,0xFF,0x06,0x09,0x09,0x06,0x06
	.byte	0x06,0xFD,0xFE,0xF6,0xF2,0xF3,0xF5,0xF9
	.byte	0x05,0x0F,0x16,0x16,0x0D,0x05,0xF8,0xF2
	.byte	0xEC,0xF1,0xF5,0xFE,0x09,0x0D,0x0B,0x00
	.byte	0x00,0xFB,0xFA,0xF6,0xF7,0xFA,0xFB,0x09
	.byte	0x0F,0x14,0x11,0x04,0xFF,0x00,0xFD,0xFF
	.byte	0xFD,0xFA,0xF8,0xFB,0x03,0x02,0x01,0xF6
	.byte	0xFA,0x04,0x09,0x06,0x04,0x00,0xFA,0xF7
	.byte	0xFA,0xFC,0xFC,0x00,0x07,0x0D,0x06,0xFE
	.byte	0xFF,0x01,0x00,0xFD,0xFD,0xFA,0xFC,0x0A
	.byte	0x0C,0x08,0xFE,0xFD,0xFD,0xFD,0xFC,0xFB
	.byte	0xFD,0xFE,0xFF,0x01,0x03,0x01,0x03,0x02
	.byte	0x00,0xFC,0xFE,0x01,0x03,0x06,0x06,0x00
	.byte	0xFC,0xFF,0x02,0xFF,0xFF,0xFC,0xFC,0xFE
	.byte	0x01,0xFF,0x01,0x02,0x04,0x04,0x03,0x03
	.byte	0x00,0xFF,0x01,0xFF,0xFF,0xFB,0xFB,0x00
	.byte	0x04,0x03,0x03,0x00,0xFD,0xFA,0xFD,0xFD
	.byte	0xFE,0x00,0x05,0x03,0x00,0x00,0x02,0x00
	.byte	0x02,0x03,0x02,0x00,0x00,0x00,0xFF,0x01
	.byte	0xFE,0x02,0x05,0x02,0x06,0x01,0xFA,0xF9
	.byte	0xF9,0xF8,0xFE,0x01,0x05,0x09,0x06,0x08
	.byte	0x03,0xFD,0xFA,0xF7,0xF8,0x05,0x07,0x09
	.byte	0x04,0x00,0xFF,0x01,0x01,0xFA,0xF7,0xFA
	.byte	0x03,0x06,0x01,0xFD,0xFB,0x02,0x02,0x06
	.byte	0x01,0xFD,0xFB,0xF8,0xFE,0xFC,0x03,0x09
	.byte	0x0C,0x0D,0x03,0xFA,0xF6,0xF8,0x04,0x0A
	.byte	0x03,0x00,0xFE,0xF8,0xFA,0xF9,0xFC,0xFF
	.byte	0x08,0x10,0x08,0xFF,0xFC,0xFB,0xFF,0xFE
	.byte	0xFC,0xF9,0xF8,0xFF,0x08,0x0D,0x0D,0x06
	.byte	0x02,0xFA,0xF5,0xF7,0xFA,0x02,0x07,0x09
	.byte	0x07,0x08,0x03,0xFB,0xF7,0xF3,0xF4,0xFD
	.byte	0x06,0x0A,0x04,0xFE,0xF9,0xFB,0x00,0x06
	.byte	0x09,0x06,0x05,0xFF,0xFB,0xF9,0xFA,0xFF
	.byte	0x02,0x09,0x06,0x02,0x00,0xFF,0xFF,0xFD
	.byte	0xFE,0xFE,0x00,0x01,0x00,0x01,0x00,0xFE
	.byte	0x01,0x04,0x03,0xFF,0xFE,0xFF,0x02,0x03
	.byte	0xFE,0xFF,0xFD,0xFD,0xFE,0x01,0x03,0x03
	.byte	0x04,0x03,0x02,0xFD,0xFC,0xFD,0xFF,0x00
	.byte	0x02,0x05,0x02,0xFF,0xFF,0xFF,0xFE,0xFF
	.byte	0x01,0x02,0x02,0x04,0x04,0x00,0xFC,0xFE
	.byte	0xFE,0xFF,0xFF,0x03,0x03,0x04,0x00,0x00
	.byte	0xFF,0x00,0xFE,0xFE,0x00,0x01,0x00,0xFF
	.byte	0xFE,0xFD,0x01,0x03,0x01,0xFF,0xFE,0x03
	.byte	0x05,0x02,0x01,0x00,0xFE,0x00,0xFF,0x00
	.byte	0x00,0xFE,0x01,0x05,0x03,0xFE,0xFD,0xFE
	.byte	0x00,0x00,0x02,0x02,0x00,0x00,0x04,0x03
	.byte	0x02,0xFF,0x00,0x01,0x00,0x00,0x00,0x00
	.byte	0x01,0xFD,0xFA,0xFD,0xFF,0x03,0x02,0x03
	.byte	0x00,0x01,0x00,0xFE,0xFE,0x01,0x03,0x05
	.byte	0x01,0x03,0x03,0x05,0x04,0xFF,0xF9,0xFA
	.byte	0xFD,0x02,0x04,0x01,0xFF,0xFE,0xFE,0xFE
	.byte	0xFC,0x00,0x05,0x04,0x02,0x02,0x01,0xFF
	.byte	0x00,0x02,0x01,0x01,0x03,0x02,0xFD,0xFB
	.byte	0xFD,0x02,0x01,0x04,0x03,0x01,0xFF,0xFD
	.byte	0xFC,0xFF,0x01,0x04,0x06,0x06,0x01,0xFC
	.byte	0xFB,0xFC,0x01,0x02,0x03,0x06,0x03,0xFE
	.byte	0xFD,0xFF,0x01,0x02,0x03,0x00,0xFF,0xFC
	.byte	0xFC,0x00,0x05,0x06,0x02,0xFD,0x00,0xFF
	.byte	0x00,0xFD,0xFD,0x01,0xFF,0x03,0x05,0x02
	.byte	0xFE,0xFF,0x01,0x01,0xFE,0xFF,0x03,0x04
	.byte	0x04,0x03,0x00,0xFE,0xFC,0xFD,0x01,0x01
	.byte	0xFE,0xFD,0x03,0x06,0x03,0xFF,0x00,0xFF
	.byte	0x00,0xFF,0xFF,0xFF,0x00,0x02,0x05,0x06
	.byte	0x03,0xFF,0xFF,0x00,0x02,0x00,0xFF,0xFB
	.byte	0x00,0x02,0xFF,0xFE,0x01,0x03,0x01,0xFE
	.byte	0xFE,0x02,0x05,0x00,0x00,0xFE,0x00,0x05
	.byte	0xFF,0x03,0xFF,0xFE,0x00,0xFF,0x01,0xFE
	.byte	0x04,0x02,0xFD,0xFE,0xFE,0x01,0x03,0x02
	.byte	0x05,0x03,0xFF,0xFD,0xFD,0x01,0x00,0x03
	.byte	0xFF,0x01,0x06,0x03,0x01,0x00,0xFE,0x00
	.byte	0xFE,0x00,0x00,0x01,0x04,0x04,0x00,0xFE
	.byte	0xFB,0xFD,0xFD,0xFF,0x03,0x06,0x07,0x05
	.byte	0xFE,0x00,0xFC,0xFF,0x01,0xFF,0x06,0x02
	.byte	0x06,0xFB,0xFE,0xFC,0xFE,0x00,0x00,0x03
	.byte	0x00,0x03,0x01,0x00,0x01,0x00,0x02,0xFF
	.byte	0xFF,0x00,0x02,0x03,0x02,0x00,0xFF,0x02
	.byte	0x00,0x00,0xFF,0x02,0x01,0x00,0x01,0xFF
	.byte	0xFE,0xFE,0xFD,0xFF,0x01,0x04,0x03,0x02
	.byte	0x00,0x00,0x01,0xFF,0xFD,0xFE,0x01,0x03
	.byte	0x03,0x03,0x03,0x05,0xFF,0xFF,0xFE,0x00
	.byte	0x02,0x01,0x03,0xFF,0xFD,0xFF,0x02,0x04
	.byte	0x07,0xFF,0x03,0xFB,0x01,0xFF,0x01,0xFF
	.byte	0x02,0x01,0x01,0x02,0xFC,0x02,0xF9,0x04
	.byte	0xFC,0x07,0xFF,0x03,0xFE,0x01,0xFE,0xFE
	.byte	0xFE,0x01,0x04,0x05,0x04,0x03,0x00,0xFF
	.byte	0xFE,0xFD,0xFF,0xFF,0x03,0x02,0x03,0x02
	.byte	0x01,0x00,0x00,0x00,0x02,0x01,0x01,0xFF
	.byte	0x00,0x02,0x01,0x01,0xFF,0xFF,0x01,0x01
	.byte	0x01,0x00,0x00,0xFF,0xFF,0xFE,0xFE,0x00
	.byte	0x02,0x01,0x03,0x02,0x01,0x00,0x01,0xFF
	.byte	0x00,0x00,0x02,0x03,0x03,0x03,0x03,0x01
	.byte	0x00,0xFD,0xFE,0x00,0x01,0x02,0x01,0x00
	.byte	0x00,0xFF,0xFF,0x01,0x00,0x00,0x00,0xFE
	.byte	0xFF,0x02,0x02,0x02,0x02,0x00,0xFF,0x01
	.byte	0xFF,0xFF,0x00,0x01,0x03,0x03,0x01,0x01
	.byte	0x00,0x00,0x01,0x02,0x01,0x01,0xFF,0xFE
	.byte	0x00,0xFF,0x00,0x03,0x02,0x01,0x01,0x00
	.byte	0x01,0x01,0x00,0x02,0x02,0xFF,0xFF,0x00
	.byte	0xFE,0x00,0x02,0x02,0x01,0x02,0x01,0x00
	.byte	0x01,0x02,0xFF,0x00,0x01,0x02,0x02,0x00
	.byte	0x01,0xFE,0x04,0x01,0x00,0xFF,0xFF,0x00
	.byte	0xFF,0x01,0xFE,0x03,0x06,0x00,0x05,0xFB
	.byte	0xFF,0xF8,0x03,0x03,0x04,0x00,0xF9,0x02
	.byte	0x04,0x0B,0x00,0xF9,0xFD,0x00,0x06,0x01
	.byte	0xFF,0xFD,0x00,0x06,0x01,0x03,0xFF,0xFE
	.byte	0x00,0x01,0x03,0xFE,0x00,0xFF,0x04,0x03
	.byte	0x05,0x02,0xFE,0xFD,0xFC,0xFE,0x00,0x02
	.byte	0x02,0x00,0x02,0x00,0x02,0x00,0x01,0x00
	.byte	0x00,0x02,0x00,0x01,0xFE,0xFE,0x00,0x02
	.byte	0x04,0x00,0x00,0xFE,0x02,0x02,0x00,0x01
	.byte	0xFE,0x03,0x03,0xFF,0x00,0xFF,0x01,0x00
	.byte	0x01,0x02,0x00,0x01,0x01,0x02,0x00,0x00
	.byte	0x01,0x02,0x02,0x00,0x00,0x00,0xFF,0xFF
	.byte	0x00,0x01,0x01,0x02,0x01,0x03,0x01,0x00
	.byte	0x00,0xFF,0x00,0xFF,0x01,0x01,0x01,0x01
	.byte	0x00,0x00,0x01,0x00,0x00,0x00,0x01,0x00
	.byte	0x01,0x01,0x01,0x02,0x01,0x00,0x00,0x00
	.byte	0xFF,0x00,0x00,0x01,0x02,0x01,0x01,0x01
	.byte	0x01,0x00,0x00,0x00,0x01,0x00,0x00,0x01
	.byte	0x01,0x00,0x00,0x00,0x02,0x01,0x02,0x00
	.byte	0x00,0x00,0x00,0x01,0x01,0x01,0x01,0x01
	.byte	0x01,0x00,0x00,0x00,0x01,0x01,0x01,0x01
	.byte	0x00,0x00,0x00,0x01,0x01,0x00,0x01,0x00
	.byte	0x01,0x01,0x00,0x00,0x01,0x01,0x01,0x00
	.byte	0x01,0x00,0x01,0x00,0x01,0x00,0x01,0x00
	.byte	0x01,0x00,0x01,0x00,0x01,0x00,0x01,0x00
	.byte	0x01,0x00,0x01,0x00,0x01,0x00,0x01,0x00
	.byte	0x01,0x00,0x01,0x00,0x01,0x00,0x01,0x00
	.byte	0x01,0x00,0x01,0x00,0x01,0x00,0x01,0x00
	.byte	0x01,0x00,0x01,0x00,0x01,0x00,0x01,0x00
	.byte	0x01,0x00,0x01,0x00,0x01,0x00,0x01,0x00
	.byte	0x01,0x00,0x01,0x00,0x01,0x00,0x01,0x00
	.byte	0x01,0x00,0x01,0x00,0x01,0x00,0x01,0x00
	.byte	0x01,0x00,0x01,0x00,0x01,0x00,0x01,0x00
	.byte	0x01,0x00,0x01,0x00,0x01,0x00,0x01,0x00
	.byte	0x01,0x00,0x01,0x00,0x01,0x00,0x01,0x00
	.byte	0x01,0x00,0x01,0x00,0x01,0x00,0x01,0x00
	.byte	0x01,0x00,0x01,0x00,0x01,0x00,0x01,0x00
	.byte	0x01,0x00,0x01,0x00,0x01,0x00,0x01,0x00
	.byte	0x01,0x00,0x01,0x00,0x01,0x00,0x01,0x00
	.byte	0x01,0x00,0x01,0x00,0x01,0x00,0x01,0x00
	.byte	0x01,0x00,0x01,0x00,0x01,0x00,0x01,0x00
	.byte	0x01,0x00,0x01,0x00,0x01,0x00,0x01,0x00
	.byte	0x01,0x00,0x01,0x00,0x01,0x00,0x01,0x00
	.byte	0x01,0x00,0x01,0x00,0x01,0x00,0x01,0x00
	.byte	0x01,0x00,0x01,0x00,0x01,0x00,0x01,0x00
	.byte	0x01,0x00,0x01,0x00,0x01,0x00,0x01,0x00
	.byte	0x01,0x00,0x01,0x00,0x01,0x00,0x01,0x00
	.byte	0x01,0x00,0x01,0x00,0x01,0x00,0x01,0x00
	.byte	0x01,0x00,0x01,0x00,0x01,0x00,0x01,0x00
	.byte	0x01,0x00,0x00,0x00,0x01,0x00,0x01,0x00
	.byte	0x01,0x00,0x01,0x00,0x01,0x00,0x01,0x00
	.byte	0x01,0x00,0x01,0x00,0x01,0x00,0x01,0x00
	.byte	0x01,0x00,0x01,0x00,0x01,0x00,0x01,0x00
	.byte	0x01,0x00,0x00,0x00,0x01,0x00,0x01,0x00
	.byte	0x01,0x00,0x01,0x00,0x01,0x00,0x01,0x00
	.byte	0x01,0x00,0x01,0x00,0x01,0x00,0x01,0x00
	.byte	0x01,0x00,0x01,0x00,0x00,0x00,0x01,0x00
	.byte	0x00,0x00,0x01,0x00,0x01,0x00,0x01,0x00
	.byte	0x01,0x00,0x01,0x00,0x01,0x00,0x01,0x00
	.byte	0x00,0x00,0x01,0x00,0x00,0x00,0x01,0x00
	.byte	0x01,0x00,0x01,0x00,0x01,0x00,0x00,0x00
	.byte	0x01,0x00,0x00,0x00,0x00,0x00,0x01,0x00
	.byte	0x00,0x00,0x01,0x00,0x00,0x00,0x01,0x00
	.byte	0x01,0x00,0x01,0x00,0x00,0x00,0x01,0x00
	.byte	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte	0x01,0x00,0x00,0x00,0x01,0x00,0x01,0x00
	.byte	0x01,0x00,0x01,0x00,0x00,0x00,0x00,0x00
	.byte	0x01,0x00,0x00,0x00,0x01,0x00,0x00,0x00
	.byte	0x00,0x00,0x01,0x00,0x01,0x00,0x01,0x00
	.byte	0x00,0x00,0x00,0x00,0x01,0x00,0x01,0x00
	.byte	0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte	0x00,0x00,0x01,0x00,0x00,0x00,0x00,0x00
	.byte	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte	0x00,0x00,0x00

	.byte	0x00

	.end
