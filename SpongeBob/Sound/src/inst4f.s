#TONE NAME     : inst4f
#FREQUENCY     : 8000
#BASE NOTE#    : 48
#START ADDRESS : 000000
#LOOP ADDRESS  : 000000
#END ADDRESS   : 001787
#LOOP MODE     : 1Shot
#FINE TUNE     : 0
#WAVE EXP/COMP : 1
#VOL EXP/COMP  : 1

	.section .rodata
	.global	inst4f
	.align	2

inst4f:
	.short	0x0000
	.short	0x0000
	.int	16384000
	.int	0
	.int	1787

	.byte	0x0C,0x17,0x0F,0x04,0x08,0x03,0xFE,0x04
	.byte	0xF5,0xF7,0xF5,0xF2,0xF6,0xF6,0xF0,0xF0
	.byte	0xF7,0xF5,0xF8,0x00,0x05,0x0B,0x16,0x0D
	.byte	0x10,0x11,0x08,0x10,0x04,0xFD,0xFC,0xFB
	.byte	0xFC,0xFB,0xFA,0xFD,0x01,0x00,0x02,0x04
	.byte	0x09,0x00,0x06,0x07,0x0B,0x07,0x01,0x0C
	.byte	0x0D,0x01,0xFC,0xF7,0xFA,0xFA,0xF0,0xEC
	.byte	0xF5,0xFE,0xF9,0xF7,0xFD,0xFB,0x0C,0x08
	.byte	0x03,0x08,0x0F,0x07,0x09,0x09,0x01,0x02
	.byte	0x00,0xF7,0x02,0xF5,0xF3,0xFA,0xF9,0xF5
	.byte	0xFA,0xF9,0x07,0x0C,0x08,0x11,0x0D,0x0B
	.byte	0x0E,0x03,0xF7,0xFC,0xFB,0xF4,0xF6,0xEF
	.byte	0xF5,0xF8,0xFE,0xF4,0x00,0x03,0x07,0x0B
	.byte	0x0A,0x10,0x0F,0x12,0x0E,0x10,0x0A,0x05
	.byte	0x03,0xFA,0xFA,0xF5,0xEF,0xF8,0xFF,0xFB
	.byte	0x05,0x06,0x05,0x05,0x01,0xFF,0x09,0x00
	.byte	0xFC,0xF9,0xF3,0xF1,0xF3,0xEC,0xEE,0xF2
	.byte	0xF2,0xF6,0xFC,0xFD,0x07,0x0E,0x13,0x1E
	.byte	0x1A,0x15,0x1F,0x0E,0x0F,0x0D,0xFF,0xFD
	.byte	0xFB,0xF3,0xED,0xF1,0xFB,0xFC,0xFA,0xFA
	.byte	0x05,0x12,0x03,0x02,0x06,0x05,0x04,0x02
	.byte	0x08,0x03,0xF4,0xF0,0xF9,0xF9,0xE8,0xE1
	.byte	0xEC,0xF4,0xEA,0xF5,0xFF,0x0D,0x0A,0x16
	.byte	0x0C,0x15,0x21,0x1E,0x12,0x17,0x06,0x09
	.byte	0x07,0xFC,0xF7,0xFB,0xF4,0xF1,0xF4,0xF6
	.byte	0xF0,0xFB,0x03,0xFE,0x04,0xF8,0x04,0x0E
	.byte	0x03,0x05,0x02,0xFB,0x03,0xFE,0xFA,0xF9
	.byte	0xF8,0xFA,0x04,0xF7,0xEE,0xFF,0x07,0xFB
	.byte	0x04,0x00,0x01,0x11,0x10,0x0F,0x19,0x19
	.byte	0x0C,0x17,0x10,0xFC,0xFE,0x01,0xF0,0xF6
	.byte	0xEE,0xE9,0xF6,0xF4,0xE6,0xF2,0xF5,0xF8
	.byte	0x01,0x04,0xFC,0x00,0x0B,0x0C,0x0B,0x0D
	.byte	0x03,0x0D,0x10,0x00,0x00,0x05,0x01,0x02
	.byte	0x01,0xF8,0xF5,0xFC,0xF6,0xF7,0x02,0xFC
	.byte	0xFE,0x0E,0x0D,0x08,0x0F,0x13,0x14,0x1A
	.byte	0x0B,0x04,0x0C,0x01,0xF3,0xF7,0xE7,0xE7
	.byte	0xF0,0xE9,0xE7,0xF1,0xE7,0xEE,0xFD,0xFA
	.byte	0xF4,0x07,0x09,0x09,0x14,0x16,0x14,0x24
	.byte	0x1C,0x18,0x1A,0x0B,0x0A,0x11,0xFD,0xF4
	.byte	0xF4,0xEF,0xEE,0xF0,0xE1,0xE4,0xF5,0xF3
	.byte	0xF2,0x01,0x01,0x04,0x0E,0x10,0x0A,0x0C
	.byte	0x09,0x09,0x0A,0xFE,0xF4,0xFC,0xFA,0xF7
	.byte	0xF8,0xF2,0xF9,0x07,0xFE,0xFB,0x05,0x09
	.byte	0x07,0x0F,0x0C,0x05,0x0C,0x16,0x0E,0x12
	.byte	0x0D,0x04,0x0B,0x06,0xF5,0xF6,0xF2,0xEE
	.byte	0xF3,0xEF,0xEA,0xF8,0xF9,0xF5,0x00,0x00
	.byte	0xF7,0x0C,0x10,0x00,0x04,0x0A,0x03,0x0D
	.byte	0x08,0xFB,0x06,0x09,0xFC,0x05,0x05,0xFB
	.byte	0x06,0x08,0xFC,0x03,0xF9,0xF2,0x01,0x00
	.byte	0xF0,0xFA,0x00,0xFC,0x01,0x06,0xFE,0x0D
	.byte	0x13,0x05,0x0A,0x09,0xFC,0x04,0x01,0xF3
	.byte	0xF4,0xF6,0xF4,0xF9,0xF6,0xEC,0xF4,0xFF
	.byte	0xF8,0xFB,0x01,0xFB,0x03,0x0F,0x0B,0x0F
	.byte	0x1B,0x17,0x1B,0x1E,0x0C,0x0A,0x17,0x07
	.byte	0xFD,0xFC,0xEE,0xF0,0xF3,0xE2,0xE2,0xEF
	.byte	0xEC,0xEF,0xFE,0xFA,0xFB,0x0F,0x11,0x0E
	.byte	0x19,0x08,0x0D,0x1B,0x07,0xFD,0x07,0xFB
	.byte	0xFA,0x00,0xF4,0xF2,0x02,0xF9,0xF5,0x02
	.byte	0xFA,0xFB,0x0E,0x05,0xFF,0x07,0x09,0x0C
	.byte	0x16,0x09,0x05,0x0C,0x02,0xF9,0xFE,0xEF
	.byte	0xE9,0xF5,0xEE,0xEA,0xF5,0xF1,0xF5,0x04
	.byte	0x03,0xFB,0x0A,0x14,0x0B,0x0D,0x0F,0x07
	.byte	0x12,0x0C,0x01,0x07,0x02,0xFB,0x04,0x00
	.byte	0xF7,0xFC,0x01,0xFD,0x03,0xFB,0xEC,0xFC
	.byte	0x04,0xF3,0xFA,0x01,0xF9,0x01,0x0B,0x01
	.byte	0x0A,0x11,0x09,0x0F,0x0D,0xFC,0x06,0x08
	.byte	0xF8,0xFA,0xF8,0xF1,0x00,0xFC,0xEF,0xF7
	.byte	0xFF,0xF7,0xFF,0x05,0xF7,0xFC,0x0E,0x06
	.byte	0x0C,0x10,0x0A,0x18,0x19,0x07,0x08,0x0A
	.byte	0x04,0x02,0xFB,0xEE,0xF4,0xF2,0xE6,0xE8
	.byte	0xEF,0xE8,0xF3,0xFE,0xFB,0xFA,0x08,0x0D
	.byte	0x13,0x17,0x0B,0x0A,0x15,0x0B,0x04,0x05
	.byte	0xFE,0xFC,0x01,0xF9,0xFA,0xFD,0xFA,0xFB
	.byte	0x03,0xFA,0xF8,0x06,0x05,0xFA,0x04,0x01
	.byte	0x03,0x12,0x09,0x04,0x0D,0x03,0xFF,0x05
	.byte	0xFA,0xEF,0xF7,0xF5,0xF4,0xF9,0xF0,0xF2
	.byte	0x05,0x00,0xFC,0x07,0x08,0x08,0x11,0x0B
	.byte	0x07,0x12,0x0A,0x05,0x0D,0x00,0xFB,0x06
	.byte	0x00,0xF9,0xFC,0xF7,0xFC,0x03,0xF7,0xEE
	.byte	0xF5,0xF8,0xF6,0xFB,0xF9,0xF6,0xFF,0x06
	.byte	0x03,0x0D,0x0A,0x0D,0x17,0x0F,0x03,0x09
	.byte	0x07,0x01,0xFE,0xF8,0xF3,0xFC,0xFB,0xF3
	.byte	0xF7,0xFA,0xF5,0xFE,0x03,0xF9,0xF8,0x05
	.byte	0x05,0x0E,0x0B,0x05,0x13,0x17,0x0A,0x0C
	.byte	0x0A,0x01,0x07,0x03,0xF4,0xF9,0xF6,0xE9
	.byte	0xEF,0xF3,0xE8,0xF2,0xFE,0xFA,0xFD,0x06
	.byte	0x05,0x15,0x19,0x0D,0x11,0x10,0x07,0x0E
	.byte	0x07,0xF9,0xFD,0xFD,0xF5,0xFC,0xF9,0xEF
	.byte	0xFA,0x02,0xF6,0xF8,0x00,0xFE,0xFE,0x03
	.byte	0xFF,0x05,0x0B,0x08,0x0C,0x0C,0x01,0x04
	.byte	0x07,0xFD,0xF8,0xF6,0xF2,0xFB,0xFC,0xEF
	.byte	0xF2,0x02,0x00,0x00,0x08,0x06,0x02,0x10
	.byte	0x0E,0x09,0x10,0x08,0x06,0x0E,0x00,0xFC
	.byte	0x02,0xFE,0xFB,0xFD,0xF4,0xF8,0x04,0xFB
	.byte	0xF2,0xFB,0xF4,0xF5,0x04,0xFD,0xF3,0x03
	.byte	0x04,0x05,0x11,0x0A,0x09,0x1A,0x11,0x07
	.byte	0x0B,0x04,0xFF,0x05,0xF8,0xF6,0xFD,0xF4
	.byte	0xF3,0xFE,0xF6,0xF2,0xFE,0x00,0xF7,0xFB
	.byte	0xFC,0xFF,0x0E,0x08,0x01,0x0F,0x0F,0x0A
	.byte	0x0F,0x09,0x01,0x05,0x02,0xFD,0xFD,0xF6
	.byte	0xED,0xF4,0xF4,0xEB,0xF2,0xFA,0xF7,0xFE
	.byte	0x03,0x01,0x0E,0x16,0x0E,0x12,0x11,0x04
	.byte	0x0C,0x0E,0xFE,0xFD,0xFF,0xF8,0xFE,0xFC
	.byte	0xEF,0xF6,0x01,0xF8,0xF9,0x00,0xF8,0xFC
	.byte	0x07,0xFE,0x07,0x0C,0x03,0x11,0x15,0x01
	.byte	0x06,0x0A,0x00,0xFE,0xF9,0xEF,0xF9,0xFE
	.byte	0xF0,0xF1,0xFD,0xF9,0x00,0x08,0x02,0x01
	.byte	0x0B,0x0A,0x10,0x10,0x05,0x08,0x0E,0x00
	.byte	0xFE,0x01,0xFA,0xFD,0xFF,0xF5,0xF8,0xFE
	.byte	0xFA,0xF8,0xFC,0xF5,0xF2,0xFF,0x01,0xF5
	.byte	0xFD,0x01,0x06,0x0F,0x0A,0x09,0x14,0x10
	.byte	0x0B,0x0E,0x05,0x00,0x03,0xFD,0xF9,0xFD
	.byte	0xF4,0xEF,0xFF,0xFA,0xF0,0xFB,0x00,0xF7
	.byte	0xFD,0xFC,0xFD,0x0B,0x09,0x04,0x0E,0x0C
	.byte	0x08,0x13,0x0C,0x06,0x09,0x01,0x01,0x07
	.byte	0xFB,0xF1,0xFA,0xF5,0xEE,0xF5,0xF8,0xF2
	.byte	0xFC,0x00,0xFF,0x0B,0x0B,0x0C,0x14,0x0E
	.byte	0x08,0x08,0x06,0x02,0x00,0xF7,0xF7,0xFC
	.byte	0xF8,0xF0,0xF8,0xFA,0xF5,0xFB,0x00,0xFB
	.byte	0xFD,0x01,0x01,0x09,0x0A,0x02,0x09,0x0F
	.byte	0x07,0x07,0x09,0x01,0x00,0xFC,0xF8,0xFB
	.byte	0xFA,0xF1,0xF4,0xFA,0xF2,0xF8,0x03,0xFE
	.byte	0x02,0x09,0x05,0x12,0x15,0x0C,0x15,0x18
	.byte	0x0A,0x0B,0x10,0x08,0x01,0xFB,0xF7,0xFD
	.byte	0xFA,0xF1,0xE9,0xF6,0xF5,0xEC,0xF1,0xF2
	.byte	0xFA,0xFA,0xFD,0x00,0x0D,0x10,0x0A,0x15
	.byte	0x16,0x13,0x18,0x15,0x0E,0x0A,0x07,0x03
	.byte	0x08,0xFF,0xF1,0xF4,0xF8,0xF7,0xFA,0xF7
	.byte	0xF2,0xF6,0xFA,0xF7,0xF8,0xF8,0xF8,0xFE
	.byte	0xFA,0xF5,0xF7,0xF8,0xF8,0xFA,0xF8,0xF8
	.byte	0x00,0xFD,0xFA,0xFF,0x05,0x06,0x08,0x08
	.byte	0x08,0x0F,0x12,0x11,0x0F,0x0E,0x10,0x0D
	.byte	0x0A,0x09,0x05,0x04,0x00,0xFB,0xF7,0xF7
	.byte	0xF7,0xF5,0xF4,0xF4,0xF5,0xF9,0xF9,0xF8
	.byte	0xFA,0xFB,0xFC,0xFD,0xFC,0xFA,0xFE,0xFE
	.byte	0xFF,0x00,0x00,0x01,0x04,0x04,0x04,0x09
	.byte	0x0A,0x09,0x09,0x09,0x0A,0x0B,0x0A,0x07
	.byte	0x06,0x06,0x06,0x04,0x00,0xFD,0xFD,0xFB
	.byte	0xF9,0xF7,0xF5,0xF4,0xF5,0xF5,0xF7,0xF9
	.byte	0xF9,0xFA,0xFB,0xFE,0xFF,0x01,0x01,0x02
	.byte	0x03,0x04,0x05,0x05,0x04,0x05,0x07,0x07
	.byte	0x07,0x07,0x07,0x08,0x07,0x06,0x07,0x06
	.byte	0x05,0x03,0x01,0x01,0x00,0xFF,0xFE,0xFD
	.byte	0xFC,0xFC,0xFC,0xFC,0xFB,0xFB,0xFB,0xFA
	.byte	0xFB,0xFC,0xFD,0xFE,0xFE,0xFF,0x01,0x02
	.byte	0x06,0x05,0x05,0x06,0x07,0x08,0x07,0x07
	.byte	0x06,0x07,0x06,0x06,0x04,0x04,0x04,0x03
	.byte	0x04,0x02,0x02,0x01,0x00,0xFF,0xFE,0xFD
	.byte	0xFC,0xFC,0xFA,0xF9,0xFA,0xFA,0xFB,0xFB
	.byte	0xFC,0xFD,0xFF,0xFF,0xFF,0x01,0x01,0x03
	.byte	0x03,0x03,0x04,0x05,0x05,0x05,0x06,0x07
	.byte	0x07,0x07,0x06,0x05,0x04,0x04,0x03,0x03
	.byte	0x01,0x00,0x00,0xFF,0xFF,0xFE,0xFE,0xFD
	.byte	0xFD,0xFD,0xFD,0xFD,0xFD,0xFD,0xFD,0xFE
	.byte	0xFE,0xFF,0xFF,0x00,0x01,0x01,0x02,0x03
	.byte	0x03,0x04,0x05,0x05,0x05,0x05,0x05,0x05
	.byte	0x04,0x04,0x04,0x03,0x03,0x02,0x02,0x01
	.byte	0x01,0x00,0xFF,0xFE,0xFE,0xFD,0xFC,0xFC
	.byte	0xFC,0xFB,0xFC,0xFC,0xFC,0xFC,0xFD,0xFD
	.byte	0xFE,0xFE,0xFE,0xFF,0x00,0x00,0x01,0x01
	.byte	0x02,0x03,0x03,0x03,0x03,0x04,0x04,0x04
	.byte	0x04,0x04,0x04,0x03,0x03,0x02,0x01,0x01
	.byte	0x00,0x00,0xFF,0xFF,0xFE,0xFE,0xFE,0xFE
	.byte	0xFE,0xFE,0xFD,0xFD,0xFE,0xFE,0xFE,0xFF
	.byte	0xFF,0x00,0x00,0x01,0x02,0x02,0x03,0x03
	.byte	0x03,0x04,0x04,0x04,0x03,0x03,0x03,0x03
	.byte	0x03,0x03,0x02,0x02,0x01,0x01,0x00,0xFF
	.byte	0xFF,0xFE,0xFE,0xFE,0xFD,0xFD,0xFD,0xFC
	.byte	0xFC,0xFC,0xFC,0xFD,0xFD,0xFD,0xFE,0xFE
	.byte	0xFF,0xFF,0xFF,0x00,0x00,0x01,0x01,0x02
	.byte	0x02,0x02,0x03,0x03,0x03,0x03,0x02,0x02
	.byte	0x02,0x02,0x02,0x01,0x01,0x00,0xFF,0xFF
	.byte	0xFF,0xFF,0xFF,0xFF,0xFE,0xFE,0xFE,0xFE
	.byte	0xFE,0xFE,0xFE,0xFE,0xFF,0xFF,0x00,0x00
	.byte	0x01,0x01,0x02,0x02,0x02,0x03,0x03,0x03
	.byte	0x03,0x03,0x03,0x03,0x03,0x02,0x02,0x02
	.byte	0x01,0x01,0x01,0x01,0x00,0x00,0xFF,0xFE
	.byte	0xFE,0xFE,0xFE,0xFE,0xFE,0xFE,0xFE,0xFF
	.byte	0xFF,0xFF,0xFF,0xFF,0x00,0x00,0x00,0x01
	.byte	0x01,0x01,0x01,0x01,0x01,0x02,0x02,0x02
	.byte	0x02,0x02,0x02,0x02,0x02,0x02,0x01,0x01
	.byte	0x01,0x01,0x01,0x00,0x00,0x00,0x00,0xFF
	.byte	0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF
	.byte	0xFF,0xFF,0xFF,0xFF,0x00,0x00,0x01,0x01
	.byte	0x02,0x02,0x02,0x02,0x02,0x02,0x03,0x03
	.byte	0x03,0x03,0x03,0x02,0x02,0x02,0x01,0x01
	.byte	0x01,0x01,0x00,0x00,0x00,0xFF,0xFF,0xFF
	.byte	0xFF,0xFE,0xFE,0xFF,0xFF,0xFF,0xFF,0xFF
	.byte	0xFF,0xFF,0x00,0x00,0x00,0x00,0x00,0x01
	.byte	0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01
	.byte	0x01,0x02,0x01,0x01,0x01,0x01,0x01,0x01
	.byte	0x01,0x01,0x01,0x01,0x01,0x00,0x00,0x00
	.byte	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte	0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01
	.byte	0x02,0x02,0x02,0x02,0x02,0x02,0x02,0x02
	.byte	0x02,0x02,0x02,0x02,0x02,0x02,0x01,0x01
	.byte	0x01,0x01,0x00,0x00,0x00,0x00,0x00,0x00
	.byte	0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF
	.byte	0xFF,0xFF,0xFF,0xFF,0xFF,0x00,0x00,0x00
	.byte	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte	0x00,0x00,0x00,0x00,0x00,0x01,0x01,0x01
	.byte	0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01
	.byte	0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01
	.byte	0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01
	.byte	0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01
	.byte	0x01,0x01,0x00,0x00,0x00,0x00,0x00,0x00
	.byte	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte	0x00,0x00,0x00,0x00,0x01,0x01,0x01,0x01
	.byte	0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01
	.byte	0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01
	.byte	0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01
	.byte	0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x00
	.byte	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte	0x00,0x00,0x00,0x00,0x00,0x00,0x01,0x01
	.byte	0x01,0x01,0x00,0x01,0x01,0x01,0x01,0x00
	.byte	0x00,0x01,0x01,0x01,0x01,0x01,0x01,0x01
	.byte	0x01,0x01,0x01

	.byte	0x00

	.end