.BMPFILES = Title_Main.bmp Title_Main_2.bmp
.CFILES = $(.BMPFILES:.bmp=.c)
.OFILES = $(.BMPFILES:.bmp=.o)
_AGBDIR = ($AGBDIR)
CFLAGS	= -g -O2 -I$(AGBDIR)/include -mthumb-interwork -nostdlib

TARGET_ARC = libTitlesGFX.a

$(TARGET_ARC): $(.OFILES)
	ar rcs $(TARGET_ARC) $(.OFILES)

Title_Main.c: Title_Main.bmp
	bmp2agb -bm $<

Title_Main_2.c: Title_Main_2.bmp
	bmp2agb -bm $<

clean:
	-rm $(TARGET_ARC) $(.OFILES) $(.CFILES)
