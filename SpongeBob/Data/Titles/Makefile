.BMPFILES = Start_Copy.bmp Start_THQ.bmp Start_Nick.bmp Start_Climax.bmp libFontGame.bmp libFontMenu.bmp menuback.bmp icons.bmp HubMap.bmp menul2.bmp menuback2.bmp menuback3.bmp menuback4.bmp menuback5.bmp menuback6.bmp
.CFILES = Start_Copy.c Start_THQ.c Start_Nick.c Start_Climax.c libFontGame.c libFontMenu.c menuback.c icons.c HubMap.c menul2.c menuback2.c menuback3.c menuback4.c menuback5.c menuback6.c
.OFILES = Start_Copy.o Start_THQ.o Start_Nick.o Start_Climax.o libFontGame.o libFontMenu.o menuback.o icons.o HubMap.o menul2.o menuback2.o menuback3.o menuback4.o menuback5.o menuback6.o
_AGBDIR = ($AGBDIR)
CFLAGS	= -g -O2 -I$(AGBDIR)/include -mthumb-interwork -nostdlib
.SUFFIXES: .bmp .c .o


TARGET_ARC = libTitlesGFX.a

$(TARGET_ARC): $(.OFILES)
	@ar rcs $(TARGET_ARC) $(.OFILES)

Start_Copy.c:	Start_Copy.bmp
	@bmp2map -f -o $@ $<

Start_THQ.c:	Start_THQ.bmp
	@bmp2map -f -o $@ $<

Start_Nick.c:	Start_Nick.bmp
	@bmp2map -f -o $@ $<

Start_Climax.c:	Start_Climax.bmp
	@bmp2map -f -o $@ $<

libFontGame.c: libFontGame.bmp
	@bmp2agb -c -np $<

libFontMenu.c: libFontMenu.bmp
	@bmp2agb -c -np $<

menuback.c: menuback.bmp
	@bmp2map -f -o $@ $<

menuback2.c: menuback2.bmp
	@bmp2map -f -o $@ $<

menuback3.c: menuback3.bmp
	@bmp2map -f -o $@ $<

menuback4.c: menuback4.bmp
	@bmp2map -f -o $@ $<

menuback5.c: menuback5.bmp
	@bmp2map -f -o $@ $<

menuback6.c: menuback6.bmp
	@bmp2map -f -o $@ $<

menul2.c: menul2.bmp
	@bmp2map -f -o $@ $<

icons.c: icons.bmp
	@bmp2agb -c -np $<

HubMap.c:	HubMap.bmp
	@bmp2map -f -o $@ $<


clean:
	-rm $(TARGET_ARC) $(.OFILES) $(.CFILES)
