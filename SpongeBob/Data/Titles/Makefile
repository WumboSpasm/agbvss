.BMPFILES = Start_Copy.bmp Start_THQ.bmp Start_Nick.bmp Start_Climax.bmp libFontGame.bmp libFontMenu.bmp menuback.bmp PasswordIcons.bmp
.CFILES = Start_Copy_LZ.c Start_THQ_LZ.c Start_Nick_LZ.c Start_Climax_LZ.c libFontGame.c libFontMenu.c menuback.c PasswordIcons.c
.OFILES = Start_Copy_LZ.o Start_THQ_LZ.o Start_Nick_LZ.o Start_Climax_LZ.o libFontGame.o libFontMenu.o menuback.o PasswordIcons.o
_AGBDIR = ($AGBDIR)
CFLAGS	= -g -O2 -I$(AGBDIR)/include -mthumb-interwork -nostdlib
.SUFFIXES: .bmp .c .o


TARGET_ARC = libTitlesGFX.a

$(TARGET_ARC): $(.OFILES)
	@ar rcs $(TARGET_ARC) $(.OFILES)

Start_Copy_LZ.c:	Start_Copy.bmp
	@bmp2agb -bm -l 8 $<

Start_THQ_LZ.c:	Start_THQ.bmp
	@bmp2agb -bm -l 8 $<

Start_Nick_LZ.c:	Start_Nick.bmp
	@bmp2agb -bm -l 8 $<

Start_Climax_LZ.c:	Start_Climax.bmp
	@bmp2agb -bm -l 8 $<

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
