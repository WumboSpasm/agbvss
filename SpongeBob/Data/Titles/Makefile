.BMPFILES = Start_Copy.bmp Start_THQ.bmp Start_Nick.bmp Start_Climax.bmp libFontGame.bmp libFontMenu.bmp menuback.bmp PasswordIcons.bmp
.CFILES = Start_Copy.c Start_THQ.c Start_Nick.c Start_Climax.c libFontGame.c libFontMenu.c menuback.c PasswordIcons.c
.OFILES = Start_Copy.o Start_THQ.o Start_Nick.o Start_Climax.o libFontGame.o libFontMenu.o menuback.o PasswordIcons.o
_AGBDIR = ($AGBDIR)
CFLAGS	= -g -O2 -I$(AGBDIR)/include -mthumb-interwork -nostdlib
.SUFFIXES: .bmp .c .o


TARGET_ARC = libTitlesGFX.a

$(TARGET_ARC): $(.OFILES)
	@ar rcs $(TARGET_ARC) $(.OFILES)

Start_Copy.c:	Start_Copy.bmp
	@bmp2agb -bm $<

Start_THQ.c:	Start_THQ.bmp
	@bmp2agb -bm $<

Start_Nick.c:	Start_Nick.bmp
	@bmp2agb -bm $<

Start_Climax.c:	Start_Climax.bmp
	@bmp2agb -bm $<

libFontGame.c: libFontGame.bmp
	@bmp2agb -c -np $<

libFontMenu.c: libFontMenu.bmp
	@bmp2agb -c -np $<

menuback.c: menuback.bmp
	@bmp2map -f -o $@ $<

PasswordIcons.c: PasswordIcons.bmp
	@bmp2agb -c -np $<

clean:
	-rm $(TARGET_ARC) $(.OFILES) $(.CFILES)
