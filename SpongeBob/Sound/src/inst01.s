#TONE NAME     : inst01
#FREQUENCY     : 8000
#BASE NOTE#    : 48
#START ADDRESS : 000000
#LOOP ADDRESS  : 000000
#END ADDRESS   : 001719
#LOOP MODE     : 1Shot
#FINE TUNE     : 0
#WAVE EXP/COMP : 1
#VOL EXP/COMP  : 1

	.section .rodata
	.global	inst01
	.align	2

inst01:
	.short	0x0000
	.short	0x0000
	.int	16384000
	.int	0
	.int	1719

	.byte	0x02,0x00,0x02,0x01,0x01,0xFF,0xFE,0xFC
	.byte	0x00,0x06,0xFB,0xFE,0x03,0x06,0x06,0xFC
	.byte	0x07,0x01,0x04,0x02,0xF8,0xF6,0xFD,0x0B
	.byte	0x04,0xF9,0x02,0xFF,0x0E,0x01,0xED,0xE9
	.byte	0x0A,0x0B,0xF7,0xDF,0xF4,0x1D,0x35,0x29
	.byte	0x16,0x0C,0x19,0x19,0xFA,0xF3,0xE3,0xDE
	.byte	0xF0,0xF7,0xFB,0xF5,0xEB,0xE4,0xE3,0xF2
	.byte	0xEF,0xF8,0xFC,0x07,0x0C,0xFE,0x05,0x0D
	.byte	0x0A,0x15,0x11,0x06,0x04,0x0F,0x00,0x11
	.byte	0x18,0x15,0x14,0xFF,0x0C,0x05,0xEE,0xE8
	.byte	0xE4,0x01,0x10,0x00,0xFC,0xFE,0x1E,0x10
	.byte	0x02,0x04,0x05,0x01,0x1E,0x0E,0xEE,0xD2
	.byte	0xCB,0xE7,0x05,0x16,0x11,0xFE,0x05,0x05
	.byte	0xFA,0xF5,0xF9,0xD9,0xDD,0xFE,0x0F,0x13
	.byte	0xFA,0xE3,0xD9,0xFA,0xFD,0xFB,0xFD,0x0B
	.byte	0x24,0x21,0x0B,0x0B,0x08,0x1D,0x27,0x0B
	.byte	0xF7,0x07,0x0D,0x05,0xFE,0xFD,0x0E,0x0F
	.byte	0x12,0x11,0x03,0xFC,0xEF,0xEA,0xF7,0xF8
	.byte	0xFA,0xF3,0x00,0x06,0xFE,0xFE,0x18,0xED
	.byte	0x00,0x12,0x12,0x02,0xD2,0xC4,0xE3,0x03
	.byte	0x28,0x04,0xF9,0x06,0x0A,0x00,0x01,0xF4
	.byte	0xD6,0xEE,0x0A,0x16,0x16,0x0B,0xF1,0xED
	.byte	0xEE,0xF1,0xF3,0xF6,0x07,0x18,0x0D,0x12
	.byte	0x0D,0x08,0x15,0x16,0x03,0x09,0x03,0x07
	.byte	0xF9,0x05,0x13,0x0D,0x06,0x0C,0x0E,0x11
	.byte	0xFD,0xED,0xF3,0xF9,0x01,0xF1,0xEE,0xFE
	.byte	0x0A,0xF9,0x13,0x01,0xF9,0x0C,0x15,0x17
	.byte	0xFB,0xD6,0xD6,0xE4,0x0C,0x18,0x00,0xF8
	.byte	0xF8,0xEF,0xF7,0x03,0xEE,0xD3,0xE6,0x0A
	.byte	0x1B,0x25,0x03,0xF0,0xEF,0xFC,0xFD,0xF4
	.byte	0xEE,0x15,0x17,0x14,0x08,0x02,0x08,0x20
	.byte	0x0F,0x09,0x01,0x0E,0x0B,0xF6,0x02,0x0B
	.byte	0x08,0x0D,0x01,0x0B,0x09,0x00,0xFC,0xF5
	.byte	0x01,0x06,0xF6,0xF0,0x01,0xF3,0x0E,0x10
	.byte	0xFA,0xEF,0x02,0x1A,0x21,0xF4,0xD7,0xCF
	.byte	0xF3,0x19,0x1C,0xFB,0x06,0xF6,0xF1,0xF5
	.byte	0xF9,0xE3,0xD0,0xE5,0xF7,0x1A,0x1E,0x07
	.byte	0xF3,0xEC,0xF9,0xFE,0xEF,0x00,0x10,0x18
	.byte	0x19,0x13,0x03,0x0F,0x16,0x13,0x0A,0x05
	.byte	0x11,0x06,0xFA,0x0D,0xFC,0x07,0x05,0x09
	.byte	0x0D,0x03,0x01,0xFA,0xF4,0x03,0x00,0xE8
	.byte	0x04,0xF6,0xFE,0x0E,0x0D,0xFB,0xF3,0x00
	.byte	0x21,0x16,0x00,0xD7,0xD3,0xF1,0x1D,0x0C
	.byte	0x07,0x03,0xF1,0xEB,0xF8,0xF9,0xDF,0xD6
	.byte	0xDE,0xFA,0x1E,0x18,0x09,0xEF,0xED,0x02
	.byte	0xF4,0xF3,0xFD,0x12,0x17,0x1D,0x0C,0x08
	.byte	0x0C,0x18,0x10,0x08,0x08,0x16,0xFD,0x0A
	.byte	0x05,0x03,0x03,0x07,0x0D,0x09,0x02,0x08
	.byte	0xF6,0xF8,0x07,0xEB,0xF4,0xFA,0xEC,0xFC
	.byte	0x0D,0x0D,0xFF,0xEE,0x0A,0x1D,0x1D,0x01
	.byte	0xDA,0xCF,0x03,0x16,0x13,0x09,0x09,0xF0
	.byte	0xF5,0xFD,0xF4,0xE2,0xD4,0xD7,0xFC,0x11
	.byte	0x16,0x06,0xE6,0xF2,0xF6,0xEE,0xEA,0xF9
	.byte	0x08,0x1C,0x1A,0x16,0x0C,0x13,0x1D,0x11
	.byte	0x09,0x13,0x08,0x0A,0x07,0x0C,0xFF,0x01
	.byte	0x05,0x0F,0xFF,0x0A,0x04,0xF3,0x0B,0xFD
	.byte	0xF1,0xFB,0xF3,0xEE,0xFD,0x0B,0x13,0xF6
	.byte	0xF4,0x08,0x20,0x1C,0x08,0xCC,0xDC,0xFD
	.byte	0x15,0x0A,0x11,0x00,0xED,0xF8,0xF8,0xF1
	.byte	0xE3,0xC9,0xDD,0xF6,0x11,0x19,0xFF,0xEB
	.byte	0xF6,0xF4,0xEC,0xEE,0xF6,0x0F,0x1B,0x1D
	.byte	0x16,0x0A,0x1A,0x1D,0x0A,0x17,0x0A,0x13
	.byte	0x03,0x0D,0x09,0x03,0xFD,0x0F,0x04,0x03
	.byte	0x10,0xF6,0xFC,0x05,0xF1,0xF7,0xF8,0xF1
	.byte	0xED,0xF9,0x14,0x0F,0xF8,0xF5,0x0E,0x1D
	.byte	0x2C,0xFF,0xD2,0xDE,0x05,0x0A,0x0E,0x10
	.byte	0xFC,0xF2,0xFA,0xF2,0xF9,0xDA,0xD1,0xD7
	.byte	0xF0,0x15,0x1B,0xFF,0xF0,0xF7,0xF1,0xF1
	.byte	0xEA,0xF5,0x08,0x17,0x20,0x0E,0x06,0x1A
	.byte	0x0E,0x16,0x0E,0x0F,0x09,0x0A,0x0E,0x11
	.byte	0xF6,0x08,0x0C,0x03,0x0F,0x06,0xF7,0x0E
	.byte	0x00,0xF7,0xF6,0xFB,0xF6,0xEC,0xFD,0x12
	.byte	0x0C,0xF9,0xFE,0x03,0x23,0x29,0x00,0xCF
	.byte	0xE8,0xFA,0x0C,0x16,0x0E,0xF7,0xF9,0xF4
	.byte	0xFE,0xEF,0xD9,0xCF,0xD5,0xF0,0x13,0x0D
	.byte	0xFC,0xF5,0xF4,0xEF,0xEA,0xE9,0xF9,0x03
	.byte	0x1A,0x18,0x0D,0x14,0x13,0x13,0x11,0x15
	.byte	0x0D,0x0F,0x02,0x1B,0x07,0x00,0x0E,0x02
	.byte	0x09,0x12,0xFB,0x05,0x07,0x00,0xF7,0xFA
	.byte	0xFC,0xF1,0xEA,0x01,0x14,0x05,0x00,0xF6
	.byte	0x08,0x23,0x2A,0xF3,0xDA,0xEB,0xF5,0x0C
	.byte	0x17,0x0A,0x05,0xF2,0xFA,0xFA,0xF2,0xDE
	.byte	0xD0,0xCC,0xF4,0x0F,0x0C,0xFB,0xF3,0xF5
	.byte	0xF2,0xE7,0xED,0xEE,0x07,0x1C,0x12,0x12
	.byte	0x0D,0x16,0x10,0x18,0x0D,0x12,0x02,0x12
	.byte	0x16,0xFE,0x07,0x08,0xFF,0x13,0x00,0x01
	.byte	0x06,0x0E,0xFC,0xF7,0xF9,0x03,0xF0,0xEA
	.byte	0x04,0x0E,0x0E,0x03,0xF5,0x04,0x2D,0x28
	.byte	0xF5,0xE3,0xE6,0xF2,0x15,0x0E,0x13,0xFD
	.byte	0xF9,0xFE,0xFA,0xEF,0xE3,0xCB,0xD1,0xF1
	.byte	0x08,0x09,0xFD,0xF5,0xF6,0xE4,0xEC,0xE6
	.byte	0xEE,0x07,0x10,0x15,0x13,0x11,0x10,0x12
	.byte	0x11,0x1D,0x08,0x04,0x17,0x0F,0x08,0x0D
	.byte	0xF9,0x0C,0x0D,0x07,0xFE,0x0A,0x09,0x03
	.byte	0xF8,0x00,0xFF,0xEA,0xF2,0x03,0x0A,0x0C
	.byte	0x02,0xEF,0x0C,0x2D,0x1D,0xF9,0xE9,0xDE
	.byte	0xF8,0x07,0x16,0x13,0xFE,0xFA,0xFF,0xF9
	.byte	0xFB,0xE0,0xC9,0xCF,0xF4,0x09,0x0B,0xF7
	.byte	0x00,0xEE,0xEE,0xE7,0xDF,0xED,0x06,0x0E
	.byte	0x12,0x12,0x0D,0x17,0x08,0x1B,0x15,0x02
	.byte	0x12,0x15,0x08,0x11,0x04,0x03,0x0B,0x0E
	.byte	0xFF,0x08,0x0C,0x10,0xF9,0xF9,0x05,0xFA
	.byte	0xE8,0xEF,0xFD,0x0A,0x12,0xFB,0xE9,0x16
	.byte	0x2A,0x1E,0x00,0xE2,0xE5,0xF4,0x0B,0x15
	.byte	0x10,0xFF,0x03,0xFC,0xFE,0xFA,0xE2,0xCB
	.byte	0xD2,0xEF,0x09,0x00,0x06,0xF9,0xEF,0xED
	.byte	0xE6,0xE0,0xEF,0xFF,0x09,0x16,0x0E,0x16
	.byte	0x0A,0x0B,0x26,0x0D,0x06,0x16,0x0C,0x16
	.byte	0x0E,0x03,0xFF,0x14,0x09,0x04,0xFE,0x10
	.byte	0x0A,0xFA,0xFD,0x01,0xF2,0xEC,0xF1,0xF8
	.byte	0x07,0x14,0xF0,0xF5,0x17,0x22,0x23,0xFF
	.byte	0xEB,0xE2,0xF0,0x0B,0x19,0x0F,0x04,0x00
	.byte	0xFE,0x05,0xFD,0xDF,0xCA,0xCF,0xFA,0xFC
	.byte	0x06,0x01,0xFD,0xF4,0xEF,0xDF,0xE3,0xEF
	.byte	0xFC,0x09,0x0A,0x13,0x18,0x01,0x15,0x1D
	.byte	0x07,0x13,0x0F,0x0D,0x11,0x10,0x02,0x0A
	.byte	0x0C,0x0B,0xFF,0x08,0x13,0x05,0xF8,0x03
	.byte	0x01,0xF1,0xEC,0xEE,0xF3,0x14,0x09,0xEC
	.byte	0xFB,0x14,0x28,0x1E,0xFF,0xEE,0xE2,0xF2
	.byte	0x0B,0x13,0x10,0x09,0x00,0xFF,0x04,0xFB
	.byte	0xE6,0xC3,0xDA,0xED,0xFF,0x07,0x04,0xF9
	.byte	0xF8,0xEB,0xE3,0xE3,0xE6,0xFE,0x05,0x0C
	.byte	0x1C,0x08,0x06,0x1E,0x17,0x0C,0x0F,0x0E
	.byte	0x10,0x18,0x08,0x06,0x07,0x16,0x07,0xFD
	.byte	0x09,0x15,0x02,0xFD,0x03,0xFC,0xF1,0xF5
	.byte	0xDF,0xF8,0x0F,0x03,0xF0,0xF8,0x11,0x25
	.byte	0x1E,0x07,0xEF,0xDE,0xF3,0x0C,0x12,0x14
	.byte	0x04,0x02,0x04,0x06,0x04,0xDA,0xCE,0xDC
	.byte	0xED,0xFA,0x08,0x01,0x02,0xF7,0xE8,0xE7
	.byte	0xE1,0xEC,0xFE,0xF6,0x18,0x19,0x05,0x0B
	.byte	0x19,0x16,0x11,0x11,0x08,0x14,0x13,0x0E
	.byte	0x02,0x0A,0x11,0x05,0xFF,0x0E,0x0F,0xFD
	.byte	0x02,0x07,0xF4,0xFA,0xE8,0xE3,0x00,0x0A
	.byte	0xFF,0xEE,0xFB,0x15,0x21,0x1B,0x0A,0xF0
	.byte	0xDF,0xF5,0x03,0x17,0x14,0x08,0x04,0xFF
	.byte	0x14,0x00,0xDD,0xCE,0xDC,0xE8,0x00,0x01
	.byte	0x03,0x05,0xF6,0xEE,0xE4,0xDA,0xF6,0xEF
	.byte	0xFC,0x19,0x0F,0x07,0x0F,0x15,0x12,0x11
	.byte	0x0C,0x0E,0x13,0x14,0x0B,0x05,0x11,0x11
	.byte	0x00,0x01,0x13,0x0B,0xFC,0x09,0xFA,0xFF
	.byte	0xFB,0xE2,0xE6,0xFE,0x09,0x00,0xEB,0xFB
	.byte	0x11,0x1F,0x1D,0x0B,0xEA,0xE5,0xEE,0x06
	.byte	0x14,0x11,0x0E,0xFE,0x09,0x14,0xFE,0xE0
	.byte	0xD7,0xD8,0xEB,0xFC,0xFF,0x0B,0x01,0xF7
	.byte	0xF2,0xDD,0xE9,0xF0,0xE8,0x02,0x19,0x0B
	.byte	0x0A,0x0D,0x12,0x18,0x10,0x0C,0x0C,0x16
	.byte	0x15,0x09,0x06,0x10,0x0E,0xFD,0x06,0x13
	.byte	0x00,0x08,0x02,0xFC,0x03,0xF5,0xE2,0xE9
	.byte	0xFC,0x07,0xFA,0xEB,0xFD,0x0C,0x1B,0x22
	.byte	0x07,0xF3,0xE0,0xF0,0x06,0x10,0x18,0x08
	.byte	0xFE,0x10,0x17,0xFC,0xE6,0xD5,0xDC,0xEF
	.byte	0xF5,0x03,0x0B,0xFF,0x04,0xE9,0xE2,0xEC
	.byte	0xE9,0xE7,0x07,0x11,0x0B,0x0D,0x0A,0x13
	.byte	0x15,0x10,0x0A,0x0C,0x17,0x11,0x09,0x07
	.byte	0x15,0x06,0xFD,0x10,0x08,0x06,0x08,0xFE
	.byte	0x03,0x02,0xF2,0xE1,0xE9,0xFC,0x06,0xF3
	.byte	0xEE,0xFD,0x06,0x21,0x1A,0x0F,0xF1,0xE1
	.byte	0xF3,0xFF,0x13,0x18,0x03,0x00,0x17,0x14
	.byte	0x02,0xE9,0xD5,0xE3,0xE9,0xF4,0x07,0x02
	.byte	0x0C,0x02,0xE7,0xE9,0xED,0xE2,0xEB,0x05
	.byte	0x0A,0x0D,0x0C,0x0C,0x13,0x15,0x0F,0x09
	.byte	0x0F,0x15,0x10,0x04,0x0F,0x14,0xFD,0x07
	.byte	0x0B,0x07,0x0B,0x02,0xFF,0x06,0x02,0xF1
	.byte	0xE0,0xE9,0x00,0x01,0xF2,0xF2,0xF4,0x0B
	.byte	0x1A,0x1C,0x0F,0xEE,0xE7,0xF0,0xFD,0x17
	.byte	0x15,0xFF,0x07,0x16,0x14,0x09,0xE4,0xDD
	.byte	0xE2,0xE4,0xFC,0xFF,0x05,0x11,0xFD,0xE9
	.byte	0xF1,0xE6,0xDF,0xEE,0x02,0x0B,0x0B,0x0D
	.byte	0x0A,0x15,0x16,0x0B,0x09,0x0E,0x18,0x0A
	.byte	0x05,0x17,0x0A,0x01,0x0A,0x06,0x0B,0x09
	.byte	0x01,0x01,0x08,0x00,0xF2,0xDD,0xF0,0xFC
	.byte	0xFA,0xF7,0xEC,0xF8,0x07,0x18,0x20,0x0C
	.byte	0xF1,0xE9,0xEA,0xFE,0x1A,0x0C,0x01,0x0A
	.byte	0x13,0x1D,0x05,0xE8,0xE5,0xDC,0xEA,0xF8
	.byte	0xFB,0x0C,0x14,0xF7,0xF1,0xF2,0xE3,0xE2
	.byte	0xEC,0x01,0x08,0x0D,0x0B,0x0A,0x17,0x13
	.byte	0x0D,0x04,0x13,0x16,0x02,0x10,0x14,0x04
	.byte	0x05,0x06,0x08,0x0D,0x08,0x00,0x06,0x07
	.byte	0x06,0xEA,0xE0,0xF3,0xF6,0xFE,0xF1,0xEE
	.byte	0xF8,0x02,0x1B,0x1F,0x0B,0xF6,0xE9,0xE4
	.byte	0x04,0x15,0x09,0x05,0x03,0x1A,0x1D,0x01
	.byte	0xF1,0xE1,0xDE,0xEF,0xF2,0xFA,0x13,0x0F
	.byte	0xF9,0xF8,0xEE,0xE3,0xE1,0xEF,0xFD,0x07
	.byte	0x0C,0x09,0x0D,0x14,0x16,0x09,0x05,0x1A
	.byte	0x0A,0x05,0x15,0x10,0x06,0x04,0x05,0x0A
	.byte	0x0E,0x04,0x04,0x04,0x10,0x03,0xE7,0xE7
	.byte	0xEF,0xF9,0xFB,0xED,0xF2,0xF3,0x02,0x1C
	.byte	0x1A,0x0B,0xFC,0xE1,0xE7,0x06,0x0E,0x0E
	.byte	0xFE,0x04,0x1F,0x17,0x07,0xF3,0xE0,0xE4
	.byte	0xF0,0xEB,0xFE,0x12,0x0B,0xFE,0xFB,0xF0
	.byte	0xE0,0xE4,0xED,0xFD,0x06,0x07,0x0A,0x0B
	.byte	0x17,0x15,0x01,0x10,0x17,0x05,0x09,0x14
	.byte	0x0F,0x07,0x03,0x03,0x0E,0x09,0x09,0xFD
	.byte	0x09,0x13,0xFE,0xEB,0xE6,0xEF,0xFC,0xF6
	.byte	0xF1,0xF1,0xEF,0x06,0x1C,0x15,0x13,0xF8
	.byte	0xE0,0xED,0xFF,0x10,0x0B,0xF8,0x0C,0x1C
	.byte	0x17,0x0C,0xF3,0xE2,0xEB,0xE9,0xEA,0x03
	.byte	0x0F,0x0B,0xFF,0x00,0xED,0xE3,0xE3,0xEC
	.byte	0xFE,0x02,0x08,0x07,0x0A,0x1E,0x0C,0x04
	.byte	0x12,0x12,0x05,0x0E,0x12,0x10,0x07,0x00
	.byte	0x09,0x08,0x0D,0x04,0xFD,0x11,0x0F,0xFF
	.byte	0xEC,0xE6,0xF5,0xF7,0xF5,0xF4,0xED,0xED
	.byte	0x0B,0x13,0x1A,0x17,0xF3,0xE5,0xEA,0x00
	.byte	0x14,0x02,0xFA,0x0E,0x1A,0x1B,0x0E,0xEF
	.byte	0xE9,0xED,0xE3,0xEB,0x00,0x0F,0x09,0x07
	.byte	0xFF,0xED,0xE5,0xE1,0xED,0xF9,0xFF,0x09
	.byte	0x00,0x13,0x18,0x09,0x08,0x15,0x0B,0x08
	.byte	0x0D,0x14,0x12,0x01,0x04,0x04,0x0C,0x0E
	.byte	0xFD,0x02,0x13,0x0F,0x02,0xE7,0xEA,0xF6
	.byte	0xF6,0xF7,0xF5,0xE5,0xF5,0x07,0x0F,0x1F
	.byte	0x12,0xF6,0xE7,0xE5,0x05,0x0F,0xFF,0xFD
	.byte	0x0C,0x16,0x22,0x0A,0xF2,0xEE,0xEA,0xE3
	.byte	0xEB,0x03,0x09,0x0B,0x0A,0x00,0xF1,0xE7
	.byte	0xE8,0xF3,0xF9,0x01,0xFE,0x02,0x09,0x07
	.byte	0x01,0x03,0x03,0x02,0x00,0x00,0xFF

	.byte	0x00

	.end