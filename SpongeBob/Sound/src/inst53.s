#TONE NAME     : inst53
#FREQUENCY     : 8000
#BASE NOTE#    : 48
#START ADDRESS : 000000
#LOOP ADDRESS  : 000000
#END ADDRESS   : 003178
#LOOP MODE     : 1Shot
#FINE TUNE     : 0
#WAVE EXP/COMP : 1
#VOL EXP/COMP  : 1

	.section .rodata
	.global	inst53
	.align	2

inst53:
	.short	0x0000
	.short	0x0000
	.int	16384000
	.int	0
	.int	3178

	.byte	0x01,0x00,0x01,0x02,0x05,0x01,0xFB,0xFC
	.byte	0xF6,0xF8,0xFD,0x08,0x04,0x0E,0x06,0x03
	.byte	0x06,0x0E,0x07,0x07,0x07,0xFC,0xEB,0xE4
	.byte	0xE3,0xE9,0x02,0xF7,0x04,0x02,0x06,0x08
	.byte	0x14,0x14,0x13,0x11,0x09,0xF6,0xEF,0xE9
	.byte	0xED,0x07,0x00,0x02,0x01,0xFD,0x07,0x0F
	.byte	0x13,0x11,0x14,0x08,0xF8,0xE9,0xE6,0xE8
	.byte	0x08,0x08,0x02,0xFD,0xF5,0xFD,0x06,0x0F
	.byte	0x0E,0x0F,0x06,0xF6,0xE6,0xE5,0xE6,0x03
	.byte	0x11,0x0A,0x07,0xFB,0x05,0x0C,0x14,0x12
	.byte	0x14,0x0C,0xFD,0xE8,0xE5,0xE4,0xF9,0x11
	.byte	0x09,0x08,0xFA,0xFF,0x09,0x14,0x15,0x14
	.byte	0x0D,0xFE,0xE8,0xDF,0xE2,0xED,0x0B,0x06
	.byte	0x03,0xF7,0xF8,0x05,0x12,0x19,0x16,0x14
	.byte	0x07,0xF4,0xE4,0xE8,0xED,0x0B,0x0D,0x07
	.byte	0xFD,0xF8,0x04,0x10,0x1A,0x17,0x17,0x0A
	.byte	0xF8,0xE3,0xE6,0xE9,0x02,0x0E,0x03,0xFE
	.byte	0xF4,0x00,0x0A,0x16,0x14,0x13,0x09,0xF9
	.byte	0xE3,0xE3,0xE6,0xF9,0x0E,0x05,0x03,0xF8
	.byte	0x02,0x0C,0x1A,0x1A,0x19,0x12,0x02,0xEC
	.byte	0xE4,0xE8,0xF2,0x0D,0x06,0x04,0xF9,0xFE
	.byte	0x09,0x17,0x1A,0x16,0x13,0x04,0xF0,0xE0
	.byte	0xE5,0xE9,0x04,0x04,0x00,0xF8,0xF7,0x04
	.byte	0x10,0x1A,0x15,0x15,0x09,0xF9,0xE5,0xE8
	.byte	0xEA,0x02,0x0A,0x03,0xFE,0xF7,0x04,0x0E
	.byte	0x1B,0x16,0x17,0x0D,0x00,0xE9,0xE7,0xE8
	.byte	0xF9,0x0A,0x02,0x00,0xF5,0xFF,0x08,0x15
	.byte	0x13,0x12,0x0C,0x00,0xEB,0xE2,0xE5,0xEF
	.byte	0x08,0x02,0x02,0xF6,0xFD,0x08,0x15,0x17
	.byte	0x15,0x13,0x08,0xF5,0xE5,0xE8,0xEB,0x05
	.byte	0x04,0x03,0xFA,0xFB,0x06,0x12,0x19,0x14
	.byte	0x15,0x0B,0xFB,0xE5,0xE6,0xE4,0xFC,0x02
	.byte	0xFF,0xFA,0xF4,0x00,0x09,0x16,0x12,0x14
	.byte	0x0D,0x02,0xEA,0xE7,0xE6,0xF7,0x07,0x02
	.byte	0x00,0xF6,0xFF,0x07,0x15,0x13,0x15,0x10
	.byte	0x07,0xF1,0xE7,0xE7,0xF1,0x08,0x03,0x03
	.byte	0xF7,0xFC,0x03,0x10,0x11,0x11,0x0F,0x07
	.byte	0xF4,0xE3,0xE4,0xE7,0x02,0x02,0x03,0xF9
	.byte	0xFA,0x02,0x0E,0x14,0x12,0x14,0x0B,0xFE
	.byte	0xE7,0xE7,0xE6,0xFF,0x05,0x05,0xFE,0xF9
	.byte	0x02,0x0B,0x16,0x12,0x15,0x0E,0x04,0xEB
	.byte	0xE7,0xE4,0xF6,0x05,0x01,0xFF,0xF4,0xFD
	.byte	0x03,0x12,0x0F,0x13,0x0E,0x08,0xF0,0xE6
	.byte	0xE5,0xF0,0x06,0x03,0x04,0xF7,0xFC,0x03
	.byte	0x11,0x12,0x14,0x12,0x0C,0xFA,0xE8,0xE8
	.byte	0xEB,0x05,0x05,0x06,0xFB,0xFA,0x01,0x0D
	.byte	0x13,0x11,0x12,0x0C,0xFF,0xE8,0xE7,0xE5
	.byte	0xFE,0x04,0x04,0xFD,0xF7,0xFE,0x08,0x13
	.byte	0x10,0x14,0x0E,0x07,0xEE,0xEA,0xE6,0xF9
	.byte	0x07,0x06,0x03,0xF8,0xFF,0x06,0x14,0x11
	.byte	0x15,0x10,0x0B,0xF4,0xEA,0xE6,0xF1,0x06
	.byte	0x04,0x05,0xF7,0xFC,0x01,0x10,0x10,0x12
	.byte	0x10,0x0C,0xFA,0xE9,0xE8,0xEA,0x03,0x03
	.byte	0x06,0xFB,0xFB,0x01,0x0E,0x14,0x12,0x14
	.byte	0x0F,0x04,0xEE,0xEC,0xE9,0x00,0x05,0x06
	.byte	0xFF,0xF9,0xFF,0x08,0x13,0x10,0x14,0x0E
	.byte	0x08,0xF1,0xEC,0xE7,0xF8,0x04,0x04,0x01
	.byte	0xF7,0xFD,0x03,0x11,0x0E,0x12,0x0E,0x0B
	.byte	0xF7,0xED,0xE9,0xF2,0x05,0x04,0x06,0xFA
	.byte	0xFE,0x02,0x10,0x11,0x12,0x11,0x0E,0xFF
	.byte	0xEE,0xEB,0xED,0x03,0x03,0x06,0xFB,0xFB
	.byte	0xFF,0x0B,0x10,0x0F,0x10,0x0C,0x04,0xEF
	.byte	0xEB,0xE8,0xFD,0x02,0x05,0xFE,0xF9,0xFE
	.byte	0x07,0x11,0x0E,0x12,0x0E,0x0A,0xF4,0xEE
	.byte	0xE8,0xF8,0x04,0x05,0x03,0xFA,0xFF,0x04
	.byte	0x11,0x0E,0x12,0x0E,0x0C,0xF9,0xEE,0xE7
	.byte	0xEF,0x01,0x01,0x04,0xF8,0xFC,0xFF,0x0E
	.byte	0x0E,0x10,0x0F,0x0E,0x00,0xEF,0xEA,0xEA
	.byte	0xFF,0x00,0x05,0xFB,0xFB,0xFE,0x0B,0x10
	.byte	0x10,0x11,0x0F,0x07,0xF3,0xED,0xE8,0xFB
	.byte	0x00,0x04,0xFE,0xF9,0xFC,0x05,0x0F,0x0C
	.byte	0x10,0x0D,0x0A,0xF6,0xEE,0xE6,0xF4,0xFF
	.byte	0x02,0x01,0xF8,0xFC,0x00,0x0E,0x0C,0x10
	.byte	0x0D,0x0D,0xFC,0xF0,0xE8,0xEF,0xFF,0x01
	.byte	0x05,0xFB,0xFD,0xFF,0x0D,0x0D,0x10,0x0F
	.byte	0x0F,0x02,0xF1,0xE9,0xE8,0xFA,0xFD,0x03
	.byte	0xFA,0xFA,0xFC,0x08,0x0E,0x0E,0x10,0x0E
	.byte	0x08,0xF5,0xED,0xE6,0xF7,0xFC,0x02,0xFD
	.byte	0xF9,0xFB,0x04,0x0E,0x0D,0x11,0x0F,0x0E
	.byte	0xFB,0xF1,0xE7,0xF3,0xFD,0x01,0x00,0xF9
	.byte	0xFB,0xFF,0x0C,0x0B,0x0F,0x0E,0x0F,0xFF
	.byte	0xF2,0xE8,0xED,0xFC,0xFF,0x02,0xFA,0xFB
	.byte	0xFC,0x0A,0x0C,0x0E,0x0E,0x10,0x04,0xF5
	.byte	0xEC,0xE9,0xFA,0xFE,0x04,0xFC,0xFC,0xFC
	.byte	0x08,0x0E,0x0E,0x10,0x10,0x0B,0xF8,0xEF
	.byte	0xE6,0xF6,0xFC,0x02,0xFD,0xFA,0xFB,0x02
	.byte	0x0D,0x0B,0x0F,0x0E,0x0E,0xFB,0xF2,0xE7
	.byte	0xF2,0xFC,0x01,0x01,0xFB,0xFD,0xFF,0x0D
	.byte	0x0C,0x0F,0x0F,0x10,0x01,0xF5,0xEA,0xED
	.byte	0xFC,0xFF,0x03,0xFC,0xFE,0xFD,0x0B,0x0D
	.byte	0x0F,0x0F,0x11,0x07,0xF7,0xED,0xE9,0xF9
	.byte	0xFD,0x03,0xFC,0xFC,0xFB,0x06,0x0D,0x0D
	.byte	0x0F,0x10,0x0C,0xFB,0xF2,0xE8,0xF7,0xFD
	.byte	0x03,0xFF,0xFC,0xFC,0x02,0x0D,0x0C,0x0F
	.byte	0x10,0x10,0xFF,0xF6,0xEA,0xF4,0xFD,0x02
	.byte	0x02,0xFC,0xFD,0xFE,0x0B,0x0B,0x0E,0x0E
	.byte	0x11,0x02,0xF7,0xEB,0xEE,0xFC,0x00,0x03
	.byte	0xFC,0xFE,0xFD,0x0A,0x0C,0x0E,0x0F,0x12
	.byte	0x09,0xFA,0xEF,0xEB,0xFB,0xFF,0x05,0xFE
	.byte	0xFE,0xFD,0x07,0x0D,0x0D,0x0F,0x11,0x0D
	.byte	0xFC,0xF2,0xE8,0xF6,0xFD,0x03,0xFF,0xFC
	.byte	0xFC,0x01,0x0C,0x0C,0x0F,0x0F,0x11,0x00
	.byte	0xF6,0xE9,0xF3,0xFD,0x02,0x01,0xFC,0xFD
	.byte	0xFE,0x0B,0x0C,0x0F,0x0F,0x13,0x05,0xF9
	.byte	0xED,0xEF,0xFC,0x00,0x03,0xFC,0xFD,0xFB
	.byte	0x08,0x0B,0x0D,0x0E,0x12,0x09,0xFB,0xF0
	.byte	0xEB,0xFA,0xFE,0x04,0xFC,0xFC,0xFA,0x03
	.byte	0x0B,0x0C,0x0E,0x10,0x0E,0xFE,0xF5,0xEA
	.byte	0xF8,0xFE,0x04,0xFF,0xFC,0xFB,0x00,0x0B
	.byte	0x0B,0x0E,0x0F,0x10,0x00,0xF7,0xEA,0xF3
	.byte	0xFD,0x01,0x01,0xFB,0xFC,0xFC,0x09,0x0B
	.byte	0x0E,0x0E,0x11,0x04,0xF9,0xED,0xEE,0xFB
	.byte	0xFF,0x02,0xFA,0xFC,0xFA,0x07,0x0B,0x0D
	.byte	0x0E,0x12,0x0A,0xFC,0xF2,0xEC,0xFA,0xFD
	.byte	0x02,0xFB,0xFC,0xFA,0x02,0x0A,0x0C,0x0D
	.byte	0x10,0x0E,0xFE,0xF5,0xEA,0xF6,0xFC,0x01
	.byte	0xFC,0xFA,0xFA,0xFE,0x09,0x09,0x0C,0x0D
	.byte	0x10,0x01,0xF9,0xEC,0xF3,0xFC,0x01,0x00
	.byte	0xFA,0xFD,0xFC,0x08,0x0A,0x0C,0x0C,0x11
	.byte	0x05,0xFB,0xEF,0xEF,0xFB,0xFE,0x01,0xF9
	.byte	0xFC,0xFA,0x04,0x08,0x0A,0x0A,0x0F,0x09
	.byte	0xFC,0xF2,0xEB,0xF9,0xFD,0x02,0xFB,0xFC
	.byte	0xFA,0x01,0x09,0x0A,0x0A,0x0E,0x0E,0xFF
	.byte	0xF7,0xEB,0xF6,0xFC,0x01,0xFD,0xFB,0xFB
	.byte	0xFE,0x08,0x09,0x0A,0x0C,0x10,0x02,0xF9
	.byte	0xEB,0xF1,0xFA,0xFF,0xFE,0xF9,0xFB,0xFB
	.byte	0x06,0x09,0x0A,0x0B,0x11,0x07,0xFC,0xEF
	.byte	0xEE,0xFA,0xFD,0x01,0xF9,0xFC,0xFA,0x04
	.byte	0x09,0x0A,0x0A,0x11,0x0C,0xFF,0xF5,0xEC
	.byte	0xF9,0xFD,0x02,0xFB,0xFB,0xFA,0x00,0x08
	.byte	0x09,0x09,0x0D,0x0E,0x00,0xF8,0xEB,0xF5
	.byte	0xFC,0x02,0xFE,0xFB,0xFC,0xFE,0x08,0x09
	.byte	0x09,0x0B,0x11,0x04,0xFB,0xED,0xF2,0xFB
	.byte	0x01,0x01,0xFB,0xFE,0xFD,0x07,0x09,0x0A
	.byte	0x0A,0x11,0x08,0xFD,0xF0,0xED,0xF9,0xFD
	.byte	0x02,0xFA,0xFD,0xFB,0x04,0x0A,0x0B,0x0A
	.byte	0x10,0x0D,0x00,0xF5,0xEC,0xF8,0xFC,0x02
	.byte	0xFC,0xFC,0xFC,0x00,0x09,0x0A,0x0A,0x0E
	.byte	0x10,0x03,0xFA,0xED,0xF5,0xFC,0x02,0xFF
	.byte	0xFB,0xFD,0xFD,0x07,0x0A,0x0A,0x0B,0x11
	.byte	0x06,0xFD,0xEF,0xF1,0xFA,0x00,0x01,0xFB
	.byte	0xFE,0xFC,0x06,0x0A,0x0B,0x0A,0x12,0x0A
	.byte	0x00,0xF3,0xEF,0xFA,0xFE,0x03,0xFB,0xFE
	.byte	0xFC,0x03,0x09,0x0B,0x09,0x10,0x0E,0x02
	.byte	0xF8,0xED,0xF7,0xFC,0x04,0xFD,0xFD,0xFD
	.byte	0x00,0x08,0x0A,0x09,0x0D,0x10,0x05,0xFC
	.byte	0xEE,0xF4,0xFB,0x03,0x00,0xFC,0xFE,0xFE
	.byte	0x07,0x0A,0x0A,0x0B,0x12,0x08,0xFF,0xF0
	.byte	0xF1,0xFA,0x00,0x02,0xFB,0xFE,0xFC,0x05
	.byte	0x09,0x0A,0x09,0x11,0x0C,0x02,0xF4,0xEE
	.byte	0xF8,0xFD,0x03,0xFB,0xFD,0xFC,0x01,0x08
	.byte	0x0A,0x08,0x0F,0x0F,0x04,0xF9,0xEE,0xF7
	.byte	0xFC,0x04,0xFD,0xFC,0xFC,0xFE,0x06,0x09
	.byte	0x08,0x0C,0x11,0x07,0xFE,0xEF,0xF4,0xFB
	.byte	0x03,0x00,0xFB,0xFD,0xFC,0x04,0x08,0x08
	.byte	0x09,0x11,0x09,0x00,0xF1,0xF1,0xF9,0x00
	.byte	0x03,0xFB,0xFD,0xFB,0x02,0x07,0x09,0x07
	.byte	0x10,0x0C,0x03,0xF5,0xEE,0xF7,0xFD,0x04
	.byte	0xFC,0xFC,0xFB,0x00,0x06,0x09,0x07,0x0E
	.byte	0x0F,0x05,0xFA,0xED,0xF6,0xFB,0x04,0xFE
	.byte	0xFC,0xFB,0xFD,0x04,0x08,0x07,0x0B,0x10
	.byte	0x07,0xFE,0xEE,0xF2,0xF9,0x02,0x00,0xFB
	.byte	0xFB,0xFB,0x02,0x07,0x08,0x09,0x11,0x0A
	.byte	0x02,0xF2,0xF0,0xF8,0xFF,0x03,0xFB,0xFC
	.byte	0xFA,0x00,0x06,0x08,0x07,0x0F,0x0C,0x04
	.byte	0xF6,0xEE,0xF7,0xFD,0x04,0xFC,0xFB,0xFA
	.byte	0xFD,0x04,0x08,0x06,0x0D,0x0F,0x06,0xFB
	.byte	0xEE,0xF6,0xFB,0x04,0xFF,0xFC,0xFB,0xFC
	.byte	0x03,0x07,0x07,0x0A,0x10,0x07,0xFF,0xEF
	.byte	0xF3,0xF9,0x02,0x02,0xFC,0xFC,0xFB,0x02
	.byte	0x07,0x08,0x08,0x10,0x0A,0x02,0xF3,0xF0
	.byte	0xF8,0xFF,0x03,0xFC,0xFC,0xFA,0x00,0x06
	.byte	0x09,0x08,0x10,0x0D,0x06,0xF9,0xF0,0xF7
	.byte	0xFD,0x05,0xFD,0xFC,0xFA,0xFE,0x04,0x09
	.byte	0x08,0x0D,0x10,0x08,0xFE,0xF0,0xF6,0xFA
	.byte	0x03,0xFF,0xFB,0xFA,0xFB,0x02,0x07,0x08
	.byte	0x0A,0x11,0x0A,0x02,0xF2,0xF4,0xFA,0x02
	.byte	0x02,0xFC,0xFC,0xFB,0x01,0x07,0x09,0x08
	.byte	0x10,0x0C,0x05,0xF6,0xF2,0xF8,0xFF,0x04
	.byte	0xFC,0xFC,0xFA,0xFF,0x05,0x09,0x07,0x0E
	.byte	0x0D,0x07,0xFA,0xF0,0xF7,0xFC,0x04,0xFE
	.byte	0xFC,0xFA,0xFE,0x03,0x09,0x07,0x0C,0x0F
	.byte	0x09,0xFF,0xF1,0xF5,0xFA,0x04,0x00,0xFC
	.byte	0xFB,0xFC,0x02,0x08,0x08,0x09,0x10,0x0A
	.byte	0x03,0xF2,0xF3,0xF8,0x01,0x02,0xFC,0xFB
	.byte	0xFB,0x00,0x05,0x09,0x07,0x0F,0x0C,0x06
	.byte	0xF7,0xF2,0xF7,0xFE,0x04,0xFD,0xFC,0xFA
	.byte	0xFF,0x04,0x09,0x07,0x0E,0x0E,0x08,0xFC
	.byte	0xF1,0xF7,0xFB,0x04,0xFE,0xFC,0xFA,0xFC
	.byte	0x01,0x07,0x06,0x0A,0x0E,0x09,0x00,0xF2
	.byte	0xF5,0xF9,0x03,0x01,0xFC,0xFB,0xFC,0x00
	.byte	0x06,0x07,0x08,0x0F,0x0A,0x04,0xF4,0xF3
	.byte	0xF7,0x00,0x03,0xFC,0xFC,0xFB,0xFF,0x04
	.byte	0x08,0x07,0x0E,0x0C,0x06,0xF8,0xF2,0xF6
	.byte	0xFC,0x03,0xFD,0xFC,0xFA,0xFE,0x02,0x08
	.byte	0x06,0x0C,0x0D,0x08,0xFD,0xF2,0xF5,0xFA
	.byte	0x03,0xFE,0xFC,0xFB,0xFC,0x01,0x07,0x07
	.byte	0x0A,0x0E,0x09,0x01,0xF3,0xF5,0xF8,0x02
	.byte	0x00,0xFC,0xFB,0xFB,0xFF,0x05,0x07,0x07
	.byte	0x0E,0x0A,0x04,0xF6,0xF4,0xF7,0xFF,0x03
	.byte	0xFD,0xFC,0xFB,0xFE,0x03,0x08,0x06,0x0D
	.byte	0x0C,0x07,0xFA,0xF3,0xF6,0xFC,0x03,0xFE
	.byte	0xFD,0xFA,0xFD,0x00,0x07,0x05,0x0B,0x0C
	.byte	0x08,0xFE,0xF3,0xF6,0xFA,0x04,0x00,0xFE
	.byte	0xFB,0xFC,0xFF,0x06,0x05,0x08,0x0D,0x09
	.byte	0x02,0xF4,0xF5,0xF7,0x01,0x01,0xFE,0xFC
	.byte	0xFC,0xFF,0x04,0x07,0x06,0x0D,0x0A,0x05
	.byte	0xF7,0xF3,0xF6,0xFE,0x02,0xFE,0xFD,0xFB
	.byte	0xFE,0x02,0x07,0x06,0x0D,0x0C,0x08,0xFB
	.byte	0xF3,0xF5,0xFA,0x03,0xFE,0xFD,0xFB,0xFD
	.byte	0x00,0x06,0x05,0x0B,0x0D,0x09,0x00,0xF4
	.byte	0xF5,0xF8,0x02,0x00,0xFE,0xFB,0xFC,0xFE
	.byte	0x04,0x05,0x08,0x0E,0x0A,0x04,0xF5,0xF5
	.byte	0xF7,0x01,0x02,0xFF,0xFD,0xFC,0xFE,0x03
	.byte	0x06,0x06,0x0E,0x0B,0x07,0xF8,0xF4,0xF5
	.byte	0xFD,0x03,0xFF,0xFE,0xFB,0xFE,0x01,0x06
	.byte	0x05,0x0C,0x0C,0x08,0xFC,0xF4,0xF5,0xFA
	.byte	0x03,0x00,0xFF,0xFC,0xFD,0xFF,0x06,0x05
	.byte	0x0B,0x0E,0x0A,0x01,0xF5,0xF5,0xF8,0x02
	.byte	0x01,0xFF,0xFC,0xFC,0xFE,0x04,0x05,0x08
	.byte	0x0E,0x0B,0x05,0xF7,0xF5,0xF6,0x00,0x02
	.byte	0xFF,0xFE,0xFC,0xFE,0x01,0x05,0x06,0x0E
	.byte	0x0C,0x08,0xFA,0xF5,0xF5,0xFD,0x03,0x00
	.byte	0xFF,0xFC,0xFE,0x00,0x06,0x05,0x0C,0x0D
	.byte	0x0A,0xFF,0xF5,0xF5,0xFA,0x03,0x00,0x00
	.byte	0xFC,0xFD,0xFE,0x04,0x04,0x0A,0x0D,0x0A
	.byte	0x02,0xF6,0xF5,0xF7,0x02,0x02,0x00,0xFE
	.byte	0xFD,0xFE,0x03,0x05,0x08,0x0E,0x0C,0x06
	.byte	0xF8,0xF6,0xF6,0x00,0x03,0x01,0xFF,0xFD
	.byte	0xFE,0x01,0x05,0x06,0x0D,0x0C,0x08,0xFB
	.byte	0xF5,0xF4,0xFC,0x03,0x01,0x00,0xFD,0xFE
	.byte	0x00,0x05,0x05,0x0C,0x0D,0x0B,0x00,0xF6
	.byte	0xF5,0xF9,0x03,0x01,0x01,0xFD,0xFE,0xFE
	.byte	0x04,0x05,0x0A,0x0E,0x0C,0x04,0xF7,0xF5
	.byte	0xF7,0x01,0x02,0x01,0xFE,0xFD,0xFE,0x02
	.byte	0x04,0x07,0x0E,0x0C,0x07,0xF9,0xF5,0xF5
	.byte	0xFF,0x03,0x01,0xFF,0xFD,0xFE,0x00,0x05
	.byte	0x05,0x0D,0x0D,0x0A,0xFD,0xF6,0xF5,0xFC
	.byte	0x03,0x01,0x00,0xFD,0xFE,0xFF,0x04,0x04
	.byte	0x0B,0x0D,0x0B,0x00,0xF6,0xF4,0xF8,0x02
	.byte	0x01,0x01,0xFD,0xFD,0xFD,0x03,0x03,0x08
	.byte	0x0D,0x0B,0x04,0xF7,0xF4,0xF5,0x00,0x02
	.byte	0x02,0xFE,0xFD,0xFE,0x01,0x04,0x06,0x0D
	.byte	0x0C,0x08,0xF9,0xF4,0xF4,0xFD,0x02,0x01
	.byte	0xFF,0xFD,0xFD,0xFF,0x04,0x04,0x0C,0x0C
	.byte	0x0A,0xFD,0xF5,0xF3,0xF9,0x02,0x01,0x00
	.byte	0xFC,0xFD,0xFE,0x03,0x03,0x0A,0x0D,0x0B
	.byte	0x01,0xF6,0xF4,0xF7,0x01,0x01,0x01,0xFD
	.byte	0xFD,0xFD,0x02,0x03,0x07,0x0C,0x0B,0x05
	.byte	0xF8,0xF5,0xF5,0xFF,0x02,0x02,0xFF,0xFD
	.byte	0xFD,0x00,0x02,0x04,0x0B,0x0B,0x08,0xFA
	.byte	0xF5,0xF3,0xFC,0x02,0x02,0x00,0xFD,0xFD
	.byte	0xFF,0x03,0x03,0x0B,0x0C,0x0A,0xFE,0xF6
	.byte	0xF3,0xF8,0x01,0x01,0x01,0xFD,0xFD,0xFD
	.byte	0x03,0x03,0x09,0x0C,0x0C,0x03,0xF7,0xF4
	.byte	0xF6,0x00,0x01,0x02,0xFE,0xFD,0xFD,0x01
	.byte	0x02,0x06,0x0C,0x0C,0x07,0xF9,0xF5,0xF4
	.byte	0xFE,0x01,0x02,0xFF,0xFE,0xFD,0x00,0x03
	.byte	0x04,0x0B,0x0C,0x0A,0xFD,0xF6,0xF3,0xFB
	.byte	0x01,0x02,0x01,0xFE,0xFD,0xFE,0x03,0x02
	.byte	0x0A,0x0C,0x0C,0x00,0xF7,0xF3,0xF7,0x00
	.byte	0x01,0x01,0xFE,0xFE,0xFD,0x02,0x01,0x07
	.byte	0x0C,0x0D,0x05,0xF9,0xF5,0xF5,0xFF,0x02
	.byte	0x03,0xFF,0xFF,0xFD,0x01,0x01,0x05,0x0B
	.byte	0x0C,0x08,0xFB,0xF6,0xF3,0xFD,0x01,0x03
	.byte	0x00,0xFF,0xFE,0xFF,0x02,0x02,0x0A,0x0C
	.byte	0x0B,0xFE,0xF6,0xF2,0xF9,0x00,0x02,0x01
	.byte	0xFF,0xFE,0xFE,0x02,0x01,0x09,0x0C,0x0D
	.byte	0x02,0xF9,0xF4,0xF6,0x00,0x01,0x02,0xFF
	.byte	0xFE,0xFD,0x01,0x01,0x07,0x0C,0x0E,0x07
	.byte	0xFA,0xF5,0xF4,0xFE,0x01,0x02,0xFF,0xFE
	.byte	0xFC,0xFF,0x00,0x03,0x0A,0x0D,0x0A,0xFD
	.byte	0xF7,0xF3,0xFC,0x01,0x03,0x01,0xFF,0xFE
	.byte	0xFF,0x01,0x02,0x0A,0x0C,0x0C,0x00,0xF8
	.byte	0xF3,0xF8,0x00,0x02,0x02,0xFF,0xFE,0xFE
	.byte	0x01,0x01,0x08,0x0B,0x0D,0x03,0xF9,0xF3
	.byte	0xF5,0xFE,0x01,0x03,0x00,0xFF,0xFD,0x01
	.byte	0x01,0x06,0x0B,0x0E,0x08,0xFC,0xF5,0xF3
	.byte	0xFD,0x01,0x03,0x01,0x00,0xFD,0x00,0x01
	.byte	0x03,0x0A,0x0D,0x0B,0xFE,0xF7,0xF2,0xF9
	.byte	0x00,0x02,0x01,0xFF,0xFD,0xFE,0x01,0x01
	.byte	0x08,0x0C,0x0D,0x01,0xF9,0xF2,0xF7,0xFF
	.byte	0x02,0x03,0x00,0xFF,0xFE,0x01,0x00,0x07
	.byte	0x0B,0x0F,0x06,0xFB,0xF4,0xF4,0xFD,0x01
	.byte	0x03,0x00,0xFF,0xFC,0x00,0xFF,0x04,0x0A
	.byte	0x0E,0x09,0xFD,0xF6,0xF2,0xFB,0x00,0x03
	.byte	0x01,0x00,0xFD,0xFF,0x00,0x02,0x09,0x0D
	.byte	0x0C,0x00,0xF9,0xF2,0xF9,0xFF,0x03,0x02
	.byte	0x01,0xFF,0xFF,0x01,0x01,0x08,0x0C,0x0E
	.byte	0x03,0xFA,0xF3,0xF5,0xFE,0x01,0x03,0x01
	.byte	0xFF,0xFE,0x01,0x00,0x06,0x0B,0x0F,0x07
	.byte	0xFD,0xF5,0xF3,0xFC,0x00,0x03,0x01,0x01
	.byte	0xFE,0x01,0x01,0x04,0x0A,0x0F,0x0C,0x00
	.byte	0xF8,0xF3,0xFA,0x00,0x03,0x02,0x01,0xFF
	.byte	0x00,0x01,0x02,0x08,0x0D,0x0E,0x02,0xFA
	.byte	0xF3,0xF7,0xFE,0x03,0x03,0x02,0x00,0xFF
	.byte	0x01,0x01,0x07,0x0C,0x10,0x06,0xFD,0xF4
	.byte	0xF5,0xFD,0x02,0x04,0x02,0x01,0xFE,0x01
	.byte	0x00,0x05,0x0A,0x10,0x09,0xFF,0xF7,0xF3
	.byte	0xFB,0x00,0x04,0x02,0x02,0xFE,0x01,0x00
	.byte	0x03,0x08,0x0E,0x0D,0x01,0xF9,0xF2,0xF8
	.byte	0xFF,0x03,0x02,0x02,0xFF,0xFF,0x00,0x01
	.byte	0x07,0x0C,0x0F,0x04,0xFB,0xF3,0xF6,0xFD
	.byte	0x02,0x03,0x02,0x00,0xFF,0x01,0x00,0x06
	.byte	0x0B,0x10,0x07,0xFD,0xF4,0xF3,0xFB,0x00
	.byte	0x02,0x01,0x00,0xFD,0x00,0xFF,0x04,0x09
	.byte	0x0F,0x0A,0x00,0xF7,0xF2,0xF9,0xFE,0x02
	.byte	0x01,0x01,0xFE,0xFF,0xFF,0x01,0x06,0x0D
	.byte	0x0D,0x01,0xF9,0xF2,0xF7,0xFD,0x02,0x02
	.byte	0x02,0xFF,0xFF,0xFF,0x00,0x05,0x0A,0x0E
	.byte	0x04,0xFC,0xF2,0xF4,0xFB,0x00,0x02,0x01
	.byte	0xFF,0xFE,0x00,0xFF,0x03,0x08,0x0E,0x07
	.byte	0xFD,0xF4,0xF2,0xF9,0xFE,0x02,0x01,0x00
	.byte	0xFE,0x00,0xFF,0x02,0x07,0x0E,0x0B,0x00
	.byte	0xF8,0xF1,0xF7,0xFD,0x01,0x01,0x01,0xFD
	.byte	0xFF,0xFE,0x00,0x04,0x0C,0x0D,0x02,0xFA
	.byte	0xF1,0xF4,0xFB,0x00,0x01,0x01,0xFE,0xFE
	.byte	0xFF,0xFF,0x03,0x09,0x0F,0x06,0xFD,0xF3
	.byte	0xF3,0xF9,0xFF,0x01,0x01,0xFF,0xFD,0xFF
	.byte	0xFE,0x02,0x07,0x0F,0x09,0xFF,0xF6,0xF1
	.byte	0xF7,0xFD,0x01,0x01,0x00,0xFD,0xFE,0xFD
	.byte	0x00,0x05,0x0D,0x0B,0x01,0xF8,0xF1,0xF5
	.byte	0xFB,0x00,0x01,0x01,0xFE,0xFF,0xFE,0xFF
	.byte	0x03,0x0B,0x0E,0x04,0xFC,0xF2,0xF4,0xFA
	.byte	0x00,0x01,0x02,0xFF,0xFF,0xFF,0xFE,0x02
	.byte	0x08,0x0E,0x06,0xFE,0xF3,0xF2,0xF8,0xFE
	.byte	0x01,0x01,0x00,0xFE,0xFF,0xFE,0x01,0x06
	.byte	0x0F,0x0A,0x01,0xF8,0xF2,0xF7,0xFD,0x01
	.byte	0x02,0x02,0xFF,0x00,0xFE,0x01,0x05,0x0D
	.byte	0x0D,0x04,0xFB,0xF3,0xF6,0xFB,0x01,0x02
	.byte	0x03,0x00,0x00,0xFF,0x00,0x03,0x0B,0x0F
	.byte	0x07,0xFE,0xF5,0xF5,0xFA,0x01,0x03,0x04
	.byte	0x02,0x00,0x00,0xFF,0x03,0x08,0x10,0x0A
	.byte	0x02,0xF8,0xF5,0xFA,0x00,0x03,0x04,0x03
	.byte	0x01,0x01,0x00,0x03,0x06,0x10,0x0D,0x04
	.byte	0xFB,0xF4,0xF8,0xFE,0x03,0x04,0x04,0x01
	.byte	0x02,0x00,0x02,0x05,0x0E,0x10,0x08,0xFF
	.byte	0xF6,0xF7,0xFD,0x03,0x04,0x05,0x03,0x03
	.byte	0x02,0x02,0x05,0x0C,0x12,0x0A,0x02,0xF7
	.byte	0xF6,0xFB,0x01,0x04,0x05,0x04,0x02,0x02
	.byte	0x01,0x04,0x09,0x11,0x0D,0x05,0xFA,0xF6
	.byte	0xF9,0xFF,0x03,0x05,0x05,0x02,0x02,0x01
	.byte	0x02,0x06,0x10,0x0F,0x07,0xFD,0xF5,0xF8
	.byte	0xFD,0x02,0x04,0x05,0x02,0x02,0x00,0x01
	.byte	0x04,0x0C,0x10,0x09,0x00,0xF6,0xF6,0xFB
	.byte	0x01,0x04,0x05,0x03,0x02,0x01,0x00,0x02
	.byte	0x09,0x10,0x0B,0x02,0xF8,0xF5,0xF9,0x00
	.byte	0x03,0x04,0x03,0x01,0x01,0xFF,0x01,0x06
	.byte	0x0F,0x0D,0x04,0xFA,0xF4,0xF7,0xFD,0x01
	.byte	0x03,0x03,0x01,0x01,0xFF,0x00,0x04,0x0D
	.byte	0x0F,0x06,0xFD,0xF4,0xF5,0xFA,0x00,0x02
	.byte	0x03,0x01,0x00,0xFF,0xFF,0x02,0x09,0x0F
	.byte	0x08,0xFF,0xF5,0xF3,0xF7,0xFD,0x00,0x02
	.byte	0x01,0xFF,0xFF,0xFE,0x00,0x06,0x0E,0x0A
	.byte	0x02,0xF7,0xF2,0xF6,0xFC,0x00,0x01,0x01
	.byte	0xFF,0xFF,0xFD,0xFF,0x02,0x0C,0x0C,0x03
	.byte	0xF9,0xF1,0xF4,0xF9,0xFF,0x00,0x01,0xFE
	.byte	0xFE,0xFD,0xFD,0x00,0x08,0x0D,0x05,0xFC
	.byte	0xF3,0xF2,0xF7,0xFE,0x00,0x01,0xFF,0xFE
	.byte	0xFD,0xFC,0xFF,0x05,0x0D,0x08,0xFF,0xF5
	.byte	0xF1,0xF6,0xFC,0x00,0x01,0x00,0xFE,0xFD
	.byte	0xFC,0xFE,0x02,0x0B,0x0A,0x02,0xF7,0xF1
	.byte	0xF4,0xF9,0xFF,0x00,0x00,0xFE,0xFE,0xFD
	.byte	0xFE,0x01,0x0A,0x0C,0x04,0xFB,0xF3,0xF3
	.byte	0xF8,0xFE,0x00,0x01,0xFF,0xFF,0xFE,0xFE
	.byte	0x00,0x07,0x0D,0x07,0xFE,0xF5,0xF3,0xF7
	.byte	0xFD,0xFF,0x01,0x00,0xFF,0xFF,0xFE,0x00
	.byte	0x04,0x0C,0x09,0x02,0xF9,0xF4,0xF7,0xFC
	.byte	0x00,0x01,0x01,0xFF,0x00,0xFF,0x00,0x03
	.byte	0x0A,0x0B,0x04,0xFC,0xF6,0xF7,0xFC,0x00
	.byte	0x01,0x02,0x00,0x00,0xFF,0xFF,0x02,0x08
	.byte	0x0B,0x06,0xFF,0xF8,0xF8,0xFB,0x00,0x02
	.byte	0x03,0x01,0x01,0x00,0x00,0x01,0x06,0x0B
	.byte	0x08,0x02,0xFB,0xF8,0xFB,0xFF,0x02,0x03
	.byte	0x02,0x01,0x01,0x00,0x01,0x04,0x0A,0x09
	.byte	0x04,0xFD,0xF9,0xFA,0xFE,0x01,0x02,0x03
	.byte	0x01,0x01,0x00,0x01,0x03,0x08,0x0A,0x05
	.byte	0x00,0xFA,0xFB,0xFE,0x01,0x02,0x03,0x02
	.byte	0x02,0x01,0x01,0x03,0x06,0x0A,0x06,0x02
	.byte	0xFC,0xFB,0xFD,0x00,0x02,0x02,0x02,0x01
	.byte	0x01,0x01,0x02,0x04,0x09,0x07,0x03,0xFE
	.byte	0xFB,0xFD,0x00,0x02,0x02,0x02,0x01,0x01
	.byte	0x01,0x01,0x03,0x07,0x07,0x04,0xFF,0xFC
	.byte	0xFD,0xFF,0x01,0x02,0x02,0x01,0x01,0x01
	.byte	0x01,0x02,0x05,0x07,0x04,0x01,0xFD,0xFD
	.byte	0xFE,0x01,0x01,0x02,0x01,0x01,0x01,0x00
	.byte	0x01,0x03,0x06,0x04,0x01,0xFE,0xFD,0xFE
	.byte	0x00,0x01,0x01,0x01,0x01,0x01,0x00,0x01
	.byte	0x02,0x04,0x04,0x02,0xFF,0xFD,0xFE,0xFF
	.byte	0x01,0x01,0x01,0x00,0x01,0x00,0x00,0x01
	.byte	0x03,0x04,0x02,0x00,0xFE,0xFE,0xFF,0x00
	.byte	0x01,0x01,0x01,0x00,0x00,0x00,0x01,0x02
	.byte	0x03,0x02,0x00,0xFF,0xFF,0xFF,0x00,0x00
	.byte	0x01,0x01,0x00,0x00,0x00,0x01,0x01,0x02
	.byte	0x02,0x01,0x00,0xFF,0x00,0x00,0x00,0x01
	.byte	0x01,0x00,0x00,0x00,0x00,0x01,0x01,0x01
	.byte	0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte	0x00,0x00

	.byte	0x00

	.end